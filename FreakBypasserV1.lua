local TweenService = game:GetService("TweenService")
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- 🔒 Prevent duplicate UI
if PlayerGui:FindFirstChild("FreakUI") then return end

-- Setup
local FreakUI = Instance.new("ScreenGui")
FreakUI.Name = "FreakUI"
FreakUI.IgnoreGuiInset = true
FreakUI.ResetOnSpawn = false
FreakUI.Parent = PlayerGui

-- Base Text
local baseText = "Loading Freaky Bypasser V1"

-- Measure text for perfect size
local tempLabel = Instance.new("TextLabel")
tempLabel.Size = UDim2.new(0, 0, 0, 0)
tempLabel.Font = Enum.Font.SourceSansBold
tempLabel.TextSize = 28
tempLabel.Text = baseText .. "..."
tempLabel.Parent = FreakUI
local textSize = tempLabel.TextBounds
tempLabel:Destroy()

-- Frame
local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0)
Frame.Position = UDim2.new(0.5, 0, -0.2, 0)
Frame.Size = UDim2.new(0, textSize.X + 40, 0, textSize.Y + 20)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.2
Frame.BorderSizePixel = 0
Frame.Parent = FreakUI

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Frame

-- TextLabel
local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, 0, 1, 0)
Label.BackgroundTransparency = 1
Label.Font = Enum.Font.Oswald
Label.TextSize = 32
Label.TextWrapped = true
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.Text = baseText
Label.Parent = Frame

-- Tween In
TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, 0, 0.05, 0)
}):Play()

-- Dot animation (3 seconds)
for i = 1, 3 do
	Label.Text = baseText .. string.rep(".", i)
	wait(1)
end

-- Tween Out
TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
	Position = UDim2.new(0.5, 0, -0.2, 0)
}):Play()

wait(0.35)
FreakUI:Destroy()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

function makeMessage(message)
    msg = tostring(message)
    if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
        game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
    else
        game:GetService("StarterGui"):SetCore(
            "ChatMakeSystemMessage",
            {
                Text = msg,
                Color = Color3.fromRGB(255, 89, 98),
                Font = Enum.Font.Oswald,
                FontSize = 16
            }
        )
    end
end

local guiName = "FreakyUI"
local coreUI = game:GetService("CoreGui")

if not coreUI:FindFirstChild(guiName) then
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = guiName  
    screenGui.Parent = coreUI
    makeMessage("•   Freaky bypass loaded.")
else
    makeMessage("•   Freaky bypass is already executed..")
    return
end

local TweenService = game:GetService("TweenService")

local gui = Instance.new("ScreenGui")
local FreakMain = Instance.new("Frame")
local FreakTitle = Instance.new("TextLabel")
local FreakTitle2 = Instance.new("TextLabel")
local TextBax = Instance.new("TextBox")
local chat = Instance.new("TextButton")
local UICornerMain = Instance.new("UICorner")
local UICornerTitle = Instance.new("UICorner")
local UICornerTextBax = Instance.new("UICorner")
local UICornerChat = Instance.new("UICorner")
local FreakIcon = Instance.new("ImageLabel") 
local toggleScrollFrameBtn = Instance.new("TextButton") 
local scrollFrame = Instance.new("ScrollingFrame") 
local UICornerToggleBtn = Instance.new("UICorner")
local UICorn = Instance.new("UICorner")

UICorn.Parent = FreakMain
gui.Name = "FreakGui"
gui.Parent = cloneref(game:GetService("CoreGui")) or game:GetService("CoreGui") 

FreakMain.Size = UDim2.new(0.5, 0, 0.5, 0)
FreakMain.Position = UDim2.new(0.25, 0, 0.25, 0)
FreakMain.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FreakMain.BorderColor3 = Color3.fromRGB(60, 60, 60)
FreakMain.BorderSizePixel = 1
FreakMain.Active = true
FreakMain.Draggable = true
FreakMain.Parent = gui

FreakTitle.Size = UDim2.new(0.85, 0, 0.2, 0)
FreakTitle.Position = UDim2.new(0, 0, 0, 0)
FreakTitle.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FreakTitle.BorderColor3 = Color3.fromRGB(60, 60, 60)
FreakTitle.BorderSizePixel = 1
FreakTitle.Text = "Freaky Bypass"
FreakTitle.TextSize = 20
FreakTitle.TextColor3 = Color3.new(1, 1, 1)
FreakTitle.Font = Enum.Font.Bodoni
FreakTitle.Parent = FreakMain

FreakTitle2.Size = UDim2.new(0.5, 0, 0.1, 0)
FreakTitle2.Position = UDim2.new(1.1, 0, 0, 0)
FreakTitle2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FreakTitle2.BorderColor3 = Color3.fromRGB(60, 60, 60)
FreakTitle2.BorderSizePixel = 1
FreakTitle2.Text = "Examples"
FreakTitle2.TextSize = 20
FreakTitle2.TextColor3 = Color3.new(1, 1, 1)
FreakTitle2.Font = Enum.Font.Bodoni
FreakTitle2.Parent = FreakMain

UICornerTitle.CornerRadius = UDim.new(0, 10)
UICornerTitle.Parent = FreakTitle

FreakIcon.Size = UDim2.new(0.15, 0, 0.25, 0)
FreakIcon.Position = UDim2.new(0.85, 0, 0, 0)
FreakIcon.Image = "rbxassetid://116352088573889"
FreakIcon.BackgroundTransparency = 1
FreakIcon.Parent = FreakMain

TextBax.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBax.Position = UDim2.new(0.1, 0, 0.3, 0)
TextBax.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBax.BorderColor3 = Color3.fromRGB(70, 70, 70)
TextBax.BorderSizePixel = 1
TextBax.PlaceholderText = "(Chat)"
TextBax.TextColor3 = Color3.new(1, 1, 1)
TextBax.Font = Enum.Font.Code
TextBax.ClearTextOnFocus = true
TextBax.Text = ""
TextBax.TextSize = 18
TextBax.Parent = FreakMain

toggleScrollFrameBtn.Size = UDim2.new(0.2, 0, 0.2, 0)
toggleScrollFrameBtn.Position = UDim2.new(0.70, 0, 0.5, 0)
toggleScrollFrameBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleScrollFrameBtn.BorderColor3 = Color3.fromRGB(70, 70, 70)
toggleScrollFrameBtn.Text = "Examples"
toggleScrollFrameBtn.TextSize = 18
toggleScrollFrameBtn.TextColor3 = Color3.new(1, 1, 1)
toggleScrollFrameBtn.Font = Enum.Font.Code
toggleScrollFrameBtn.Parent = FreakMain

UICornerToggleBtn.CornerRadius = UDim.new(0, 10)
UICornerToggleBtn.Parent = toggleScrollFrameBtn

scrollFrame.Size = UDim2.new(0.5, 0, 0.9, 0)
scrollFrame.Position = UDim2.new(1.1, 0, 0.1, 0)
scrollFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
scrollFrame.BorderColor3 = Color3.fromRGB(60, 60, 60)
scrollFrame.BorderSizePixel = 1
scrollFrame.Visible = true
scrollFrame.Parent = FreakMain

scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
scrollFrame.ScrollBarThickness = 8

toggleScrollFrameBtn.MouseButton1Click:Connect(function()
    scrollFrame.Visible = not scrollFrame.Visible
    FreakTitle2.Visible = not FreakTitle2.Visible
end)

local buttonCount = 0
local function addTextButtonToScrollFrame(text)
    task.wait()
    buttonCount += 1
    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.new(1, -10, 0, 40)
    textButton.Position = UDim2.new(0, 5, 0, (buttonCount - 1) * 45)
    textButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    textButton.BorderColor3 = Color3.fromRGB(70, 70, 70)
    textButton.Text = text
    textButton.TextScaled = true
    textButton.TextWrapped = true
    textButton.TextSize = 18
    textButton.TextColor3 = Color3.new(1, 1, 1)
    textButton.Font = Enum.Font.Code
    textButton.Parent = scrollFrame

    textButton.MouseButton1Click:Connect(function()
        print(TextBax.Text)
        TextBax.Text = textButton.Text
    end)

    scrollFrame.CanvasSize = UDim2.new(0, 0, 0, buttonCount * 45)
end

local buttonLabels = {
    "Freaky Bypass V1, Is What Im Using Right Now",
    "sybau negro💔🥀",
    "credit to my man notuser_mmlv1 { xcode_dev } & tiwa_amgh { zenzer } & darkness_v38",	
    "awh.. damn. 💀",
    "I Know it, Hitler common W",
    "You have no bitches fr bro?",
    "I thought You Were Fucking Joking!",
    "No Way This Shit Is Actually Working",
    "Just Testing My Shits Rn",
    "do you know what nigga n mean?",
    "Who Let The Black Slaves Escape 😭",
    "selling both of my kidneys for only 2 $",
    "(Abcde) do You learning Alphabets Asshole?",
    (identifyexecutor() or "My Executor") .. " Is Fucking Great",
    "Alright.. How About Porn?",
    "ahah. you know what Funny?, Lgbbq",
    "MegaFurryGaySex Was A Real Thing?",
    "Bro, fuck Yourself. not me",
    "is that a huge penis on the sky?",
    "im not gay but, well. 20$",
    "What the fuck, did i just saw?",
}

for _, label in ipairs(buttonLabels) do
    addTextButtonToScrollFrame(label)
    task.wait()
end
    local time = os.date("*t") 
local hour = time.hour 
local minute = time.min 


    addTextButtonToScrollFrame("Executed At = " .. string.format("%02d:%02d", hour, minute))
local LocalizationS = game:GetService("LocalizationService")
local Player = game.Players.LocalPlayer

local countryMap = {
 ["BD"] = "Bangladesh",
 ["BE"] = "Belgium",
 ["BF"] = "Burkina Faso",
 ["BG"] = "Bulgaria",
 ["BA"] = "Bosnia and Herzegovina",
 ["BB"] = "Barbados",
 ["WF"] = "Wallis and Futuna",
 ["BL"] = "Saint Barthelemy",
 ["BM"] = "Bermuda",
 ["BN"] = "Brunei",
 ["BO"] = "Bolivia",
 ["BH"] = "Bahrain",
 ["BI"] = "Burundi",
 ["BJ"] = "Benin",
 ["BT"] = "Bhutan",
 ["JM"] = "Jamaica",
 ["BV"] = "Bouvet Island",
 ["BW"] = "Botswana",
 ["WS"] = "Samoa",
 ["BQ"] = "Bonaire, Saint Eustatius and Saba",
 ["BR"] = "Brazil",
 ["BS"] = "Bahamas",
 ["JE"] = "Jersey",
 ["BY"] = "Belarus",
 ["BZ"] = "Belize",
 ["RU"] = "Russia",
 ["RW"] = "Rwanda",
 ["RS"] = "Serbia",
 ["TL"] = "East Timor",
 ["RE"] = "Reunion",
 ["TM"] = "Turkmenistan",
 ["TJ"] = "Tajikistan",
 ["RO"] = "Romania",
 ["TK"] = "Tokelau",
 ["GW"] = "Guinea-Bissau",
 ["GU"] = "Guam",
 ["GT"] = "Guatemala",
 ["GS"] = "South Georgia and the South Sandwich Islands",
 ["GR"] = "Greece",
 ["GQ"] = "Equatorial Guinea",
 ["GP"] = "Guadeloupe",
 ["JP"] = "Japan",
 ["GY"] = "Guyana",
 ["GG"] = "Guernsey",
 ["GF"] = "French Guiana",
 ["GE"] = "Georgia",
 ["GD"] = "Grenada",
 ["GB"] = "United Kingdom",
 ["GA"] = "Gabon",
 ["SV"] = "El Salvador",
 ["GN"] = "Guinea",
 ["GM"] = "Gambia",
 ["GL"] = "Greenland",
 ["GI"] = "Gibraltar",
 ["GH"] = "Ghana",
 ["OM"] = "Oman",
 ["TN"] = "Tunisia",
 ["JO"] = "Jordan",
 ["HR"] = "Croatia",
 ["HT"] = "Haiti",
 ["HU"] = "Hungary",
 ["HK"] = "Hong Kong",
 ["HN"] = "Honduras",
 ["HM"] = "Heard Island and McDonald Islands",
 ["VE"] = "Venezuela",
 ["PR"] = "Puerto Rico",
 ["PS"] = "Palestinian Territory",
 ["PW"] = "Palau",
 ["PT"] = "Portugal",
 ["SJ"] = "Svalbard and Jan Mayen",
 ["PY"] = "Paraguay",
 ["IQ"] = "Iraq",
 ["PA"] = "Panama",
 ["PF"] = "French Polynesia",
 ["PG"] = "Papua New Guinea",
 ["PE"] = "Peru",
 ["PK"] = "Pakistan",
 ["PH"] = "Philippines",
 ["PN"] = "Pitcairn",
 ["PL"] = "Poland",
 ["PM"] = "Saint Pierre and Miquelon",
 ["ZM"] = "Zambia",
 ["EH"] = "Western Sahara",
 ["EE"] = "Estonia",
 ["EG"] = "Egypt",
 ["ZA"] = "South Africa",
 ["EC"] = "Ecuador",
 ["IT"] = "Italy",
 ["VN"] = "Vietnam",
 ["SB"] = "Solomon Islands",
 ["ET"] = "Ethiopia",
 ["SO"] = "Somalia",
 ["ZW"] = "Zimbabwe",
 ["SA"] = "Saudi Arabia",
 ["ES"] = "Spain",
 ["ER"] = "Eritrea",
 ["ME"] = "Montenegro",
 ["MD"] = "Moldova",
 ["MG"] = "Madagascar",
 ["MF"] = "Saint Martin",
 ["MA"] = "Morocco",
 ["MC"] = "Monaco",
 ["UZ"] = "Uzbekistan",
 ["MM"] = "Myanmar",
 ["ML"] = "Mali",
 ["MO"] = "Macao",
 ["MN"] = "Mongolia",
 ["MH"] = "Marshall Islands",
 ["MK"] = "Macedonia",
 ["MU"] = "Mauritius",
 ["MT"] = "Malta",
 ["MW"] = "Malawi",
 ["MV"] = "Maldives",
 ["MQ"] = "Martinique",
 ["MP"] = "Northern Mariana Islands",
 ["MS"] = "Montserrat",
 ["MR"] = "Mauritania",
 ["IM"] = "Isle of Man",
 ["UG"] = "Uganda",
 ["TZ"] = "Tanzania",
 ["MY"] = "Malaysia",
 ["MX"] = "Mexico",
 ["IL"] = "Israel",
 ["FR"] = "France",
 ["IO"] = "British Indian Ocean Territory",
 ["SH"] = "Saint Helena",
 ["FI"] = "Finland",
 ["FJ"] = "Fiji",
 ["FK"] = "Falkland Islands",
 ["FM"] = "Micronesia",
 ["FO"] = "Faroe Islands",
 ["NI"] = "Nicaragua",
 ["NL"] = "Netherlands",
 ["NO"] = "Norway",
 ["NA"] = "Namibia",
 ["VU"] = "Vanuatu",
 ["NC"] = "New Caledonia",
 ["NE"] = "Niger",
 ["NF"] = "Norfolk Island",
 ["NG"] = "Nigeria",
 ["NZ"] = "New Zealand",
 ["NP"] = "Nepal",
 ["NR"] = "Nauru",
 ["NU"] = "Niue",
 ["CK"] = "Cook Islands",
 ["XK"] = "Kosovo",
 ["CI"] = "Ivory Coast",
 ["CH"] = "Switzerland",
 ["CO"] = "Colombia",
 ["CN"] = "China",
 ["CM"] = "Cameroon",
 ["CL"] = "Chile",
 ["CC"] = "Cocos Islands",
 ["CA"] = "Canada",
 ["CG"] = "Republic of the Congo",
 ["CF"] = "Central African Republic",
 ["CD"] = "Democratic Republic of the Congo",
 ["CZ"] = "Czech Republic",
 ["CY"] = "Cyprus",
 ["CX"] = "Christmas Island",
 ["CR"] = "Costa Rica",
 ["CW"] = "Curacao",
 ["CV"] = "Cape Verde",
 ["CU"] = "Cuba",
 ["SZ"] = "Swaziland",
 ["SY"] = "Syria",
 ["SX"] = "Sint Maarten",
 ["KG"] = "Kyrgyzstan",
 ["KE"] = "Kenya",
 ["SS"] = "South Sudan",
 ["SR"] = "Suriname",
 ["KI"] = "Kiribati",
 ["KH"] = "Cambodia",
 ["KN"] = "Saint Kitts and Nevis",
 ["KM"] = "Comoros",
 ["ST"] = "Sao Tome and Principe",
 ["SK"] = "Slovakia",
 ["KR"] = "South Korea",
 ["SI"] = "Slovenia",
 ["KP"] = "North Korea",
 ["KW"] = "Kuwait",
 ["SN"] = "Senegal",
 ["SM"] = "San Marino",
 ["SL"] = "Sierra Leone",
 ["SC"] = "Seychelles",
 ["KZ"] = "Kazakhstan",
 ["KY"] = "Cayman Islands",
 ["SG"] = "Singapore",
 ["SE"] = "Sweden",
 ["SD"] = "Sudan",
 ["DO"] = "Dominican Republic",
 ["DM"] = "Dominica",
 ["DJ"] = "Djibouti",
 ["DK"] = "Denmark",
 ["VG"] = "British Virgin Islands",
 ["DE"] = "Germany",
 ["YE"] = "Yemen",
 ["DZ"] = "Algeria",
 ["US"] = "United States",
 ["UY"] = "Uruguay",
 ["YT"] = "Mayotte",
 ["UM"] = "United States Minor Outlying Islands",
 ["LB"] = "Lebanon",
 ["LC"] = "Saint Lucia",
 ["LA"] = "Laos",
 ["TV"] = "Tuvalu",
 ["TW"] = "Taiwan",
 ["TT"] = "Trinidad and Tobago",
 ["TR"] = "Turkey",
 ["LK"] = "Sri Lanka",
 ["LI"] = "Liechtenstein",
 ["LV"] = "Latvia",
 ["TO"] = "Tonga",
 ["LT"] = "Lithuania",
 ["LU"] = "Luxembourg",
 ["LR"] = "Liberia",
 ["LS"] = "Lesotho",
 ["TH"] = "Thailand",
 ["TF"] = "French Southern Territories",
 ["TG"] = "Togo",
 ["TD"] = "Chad",
 ["TC"] = "Turks and Caicos Islands",
 ["LY"] = "Libya",
 ["VA"] = "Vatican",
 ["VC"] = "Saint Vincent and the Grenadines",
 ["AE"] = "United Arab Emirates",
 ["AD"] = "Andorra",
 ["AG"] = "Antigua and Barbuda",
 ["AF"] = "Afghanistan",
 ["AI"] = "Anguilla",
 ["VI"] = "U.S. Virgin Islands",
 ["IS"] = "Iceland",
 ["IR"] = "Iran",
 ["AM"] = "Armenia",
 ["AL"] = "Albania",
 ["AO"] = "Angola",
 ["AQ"] = "Antarctica",
 ["AS"] = "American Samoa",
 ["AR"] = "Argentina",
 ["AU"] = "Australia",
 ["AT"] = "Austria",
 ["AW"] = "Aruba",
 ["IN"] = "India",
 ["AX"] = "Aland Islands",
 ["AZ"] = "Azerbaijan",
 ["IE"] = "Ireland",
 ["ID"] = "Indonesia",
 ["UA"] = "Ukraine",
 ["QA"] = "Qatar",
 ["MZ"] = "Mozambique"
}


local success, countryCode = pcall(function()
    return LocalizationS:GetCountryRegionForPlayerAsync(Player)
end)

if success then
    local country = countryMap[countryCode] or "a safe country"
    addTextButtonToScrollFrame("Hello, im fucking from " .. country .. " to here!")
else
    print("Failed to retrieve the player's country/region: " .. tostring(countryCode))
end

addTextButtonToScrollFrame("Not Enough Examples?? just ask me if you find me anywhere I think.")



chat.Size = UDim2.new(0.3, 0, 0.2, 0)
chat.Position = UDim2.new(0.35, 0, 0.7, 0)
chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chat.BorderColor3 = Color3.fromRGB(70, 70, 70)
chat.BorderSizePixel = 1
chat.Text = "Chat"
chat.TextSize = 18
chat.TextColor3 = Color3.new(1, 1, 1)
chat.Font = Enum.Font.Code
chat.Parent = FreakMain


UICornerChat.CornerRadius = UDim.new(0, 10)
UICornerChat.Parent = chat


local function createButtonTween(button)
    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {BackgroundColor3 = Color3.fromRGB(100, 100, 100)} -- Change color when clicked

    local tween = TweenService:Create(button, tweenInfo, goal)
    return tween
end

local function isEmoji(c)
    local code = utf8.codepoint(c)  

    
    if (code >= 0x1F600 and code <= 0x1F64F) or  
       (code >= 0x1F300 and code <= 0x1F5FF) or  
       (code >= 0x1F680 and code <= 0x1F6FF) or  
       (code >= 0x1F700 and code <= 0x1F77F) or  
       (code >= 0x1F900 and code <= 0x1F9FF) or  
       (code >= 0x2600 and code <= 0x26FF) or    
       (code >= 0x2700 and code <= 0x27BF) or    
       (code >= 0x1F1E6 and code <= 0x1F1FF) then 
        return true  
    end
    return false  
end




local function modifyText(input)
    local replacements = {
        ass = "a\xD8\x9As\xD8\x9A\xD8\x9A\xD8\x9As\xD8\x9A\xD8\x9A\xD8\x9A",
        fuck = "f\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9Au\xD8\x9Ac\xD8\x9Ak\xD8\x9A\xD8\x9A\xD8\x9A",
        damn = "d\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9Aa\xD8\x9A\xD8\x9Am\xD8\x9A\xD8\x9An",
        shit = "s\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9Ah\xD8\x9Ai\xD8\x9At\xD8\x9A\xD8\x9A\xD8\x9A",
        porn = "p\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9Ao\xD8\x9Ar\xD8\x9An\xD8\x9A\xD8\x9A\xD8\x9A",
        bitch = "b\xD8\x9Ai\xD8\x9At\xD8\x9A\xD8\x9A\xD8\x9Ac\xD8\x9Ah\xD8\x9A",
        nigg = "n\xD8\x9Ai\xD8\x9Ag\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9A\xD8\x9Ag\xD8\x9A\xD8\x9A\xD8\x9A",
        dick = "d\xD8\x9Ai\xD8\x9A\xD8\x9Ac\xD8\x9Ak\xD8\x9A\xD8\x9A\xD8\x9A",
        gay = "g\xD8\x9Aa\xD8\x9A\xD8\x9Ay\xD8\x9A\xD8\x9A\xD8\x9A",
        sex = "s\xD8\x9Ae\xD8\x9A\xD8\x9Ax\xD8\x9A\xD8\x9A\xD8\x9A",
        ["0"] = "０\xD8\x9A",
        ["1"] = "１\xD8\x9A",
        ["2"] = "２\xD8\x9A",
        ["3"] = "３\xD8\x9A",
        ["4"] = "４\xD8\x9A",
        ["5"] = "５\xD8\x9A",
        ["6"] = "６\xD8\x9A",
        ["7"] = "７\xD8\x9A",
        ["8"] = "８\xD8\x9A",
        ["9"] = "９\xD8\x9A",
    }

    local lowerInput = input:lower()

    -- Count non-brace characters
    local count = 0
    for i = 1, #input do
        local char = input:sub(i, i)
        if char ~= "{" and char ~= "}" then
            count = count + 1
        end
    end

    -- Adjust space insertion based on count
    local small, medium, high = false, false, false
    if count < 10 then
        small = true
    elseif count >= 10 and count < 15 then
        medium = true
    elseif count >= 15 then
        high = true
    end

    -- Replace specific words
    for word, replacement in pairs(replacements) do
        lowerInput = lowerInput:gsub(word, "{" .. replacement .. "}")
    end

    -- Handle emojis (assuming isEmoji function is defined elsewhere)
    local emojiPattern = "[%z\1-\127\194-\244][\128-\191]*"
    local modifiedInput = lowerInput:gsub(emojiPattern, function(c)
        if isEmoji(c) then
            return "{" .. c .. "}"
        end
        return c
    end)

    -- Process characters for the final result
    local result = ""
    local insideReplacedWord = false

    for i = 1, #modifiedInput do
        local char = modifiedInput:sub(i, i)

        if char == "{" then
            insideReplacedWord = true
        elseif char == "}" then
            insideReplacedWord = false
        elseif insideReplacedWord then
            result = result .. char
        elseif char == " " then
            result = result .. "\xD8\x9A\b\xD8\x9A"
        else
            result = result .. char
            
            if i < #modifiedInput and modifiedInput:sub(i + 1, i + 1) ~= " " then
                    result = result .. "\xD8\x9A"
                end
            end
        end

    
    result = result:gsub("{", ""):gsub("}", "")

    
    local A_1 = result
    local A_2 = "All"

    if game:GetService("TextChatService"):FindFirstChild("TextChannels") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(A_1)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(A_1, A_2)
    end
end
    

    
    
    


chat.MouseButton1Click:Connect(function()
    local inputString = TextBax.Text
    modifyText(inputString)

    
    local tween = createButtonTween(chat)
    tween:Play()

    
    tween.Completed:Connect(function()
        chat.BackgroundColor3 = Color3.fromRGB(50, 50, 50) 
    end)
end)

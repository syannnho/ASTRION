-- ============================================================
-- ASTRIONHUB V3.0 - ROUTES DATABASE
-- localgame.lua - Free Routes Database
-- ============================================================

return {
    -- ========================================
    -- FORMAT EXAMPLES - ALL SUPPORTED
    -- ========================================
    
    -- Example 1: Legacy JSON Format (CF Array)
    ["92382543907394"] = {
        name = "Example Legacy JSON",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/refs/heads/main/JSONS/ANJIR2.json",
        url2 = "", -- Leave empty if no second route
        description = "Legacy JSON format with CF arrays",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Example 2: New JSON Format (Checkpoints & Frames)
    ["0987654321"] = {
        name = "Example New JSON",
        url = "https://raw.githubusercontent.com/yourrepo/routes/main/new_format.json",
        url2 = "https://raw.githubusercontent.com/yourrepo/routes/main/new_format_v2.json", -- Alternative route
        description = "New JSON format with detailed checkpoints",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Example 3: CFrame Lua Format
    ["1122334455"] = {
        name = "Example CFrame Lua",
        url = "https://raw.githubusercontent.com/yourrepo/routes/main/cframe_format.lua",
        url2 = "",
        description = "Pure CFrame Lua format",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Example 4: Advanced JSON Format (with velocity, hipHeight, etc)
    ["5544332211"] = {
        name = "Example Advanced JSON",
        url = "https://raw.githubusercontent.com/yourrepo/routes/main/advanced_format.json",
        url2 = "",
        description = "Advanced JSON with full player data",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- ========================================
    -- REAL GAME ROUTES
    -- ========================================
    
    -- Tower of Hell
    ["1962086868"] = {
        name = "Tower of Hell - Auto Climb",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/toh_main.json",
        url2 = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/toh_alt.json",
        description = "Auto climb for Tower of Hell with dual routes",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Example: Your Custom Game
    ["92382543907394"] = {
        name = "MOUNT NAGIH",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/refs/heads/main/JSONS/mount_nagih_v1.json",
        url2 = "https://raw.githubusercontent.com/syannnho/ASTRION/refs/heads/main/JSONS/mount_nagih_v2.json",
        description = "Auto route untuk Mount Nagih dengan 2 jalur berbeda",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Obby Creator
    ["2041312716"] = {
        name = "Obby Creator - Auto Complete",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/obby_creator.json",
        url2 = "",
        description = "Auto complete for Obby Creator",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Speed Run 4
    ["183364845"] = {
        name = "Speed Run 4 - Fast Route",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/speedrun4_main.lua",
        url2 = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/speedrun4_safe.json",
        description = "Main route (fast) & safe route",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- Mega Easy Obby
    ["2436362386"] = {
        name = "Mega Easy Obby",
        url = "https://raw.githubusercontent.com/syannnho/ASTRION/main/JSONS/mega_easy_obby.json",
        url2 = "",
        description = "Auto route for Mega Easy Obby",
        lastUpdated = "2025-01-26",
        author = "Astrion Team"
    },
    
    -- ========================================
    -- TEMPLATE - ADD YOUR ROUTES HERE
    -- ========================================
    
    --[[
    ["YOUR_PLACE_ID"] = {
        name = "Game Name - Route Description",
        url = "https://raw.githubusercontent.com/youruser/yourrepo/main/route1.json",
        url2 = "https://raw.githubusercontent.com/youruser/yourrepo/main/route2.json", -- Optional
        description = "Detailed description of the route",
        lastUpdated = "2025-01-26",
        author = "Your Name"
    },
    ]]
    
    -- ========================================
    -- HOW TO ADD NEW ROUTES:
    -- ========================================
    --[[
    
    1. Find your game's PlaceId:
       - Play the game
       - Press F9 to open Developer Console
       - Look for "game.PlaceId" or check URL
    
    2. Upload your JSON/Lua route file to GitHub:
       - Go to your GitHub repository
       - Create a new file or upload
       - Copy the raw URL
    
    3. Add entry to this database:
       ["YOUR_PLACE_ID"] = {
           name = "Game Name",
           url = "https://raw.githubusercontent.com/.../route.json",
           url2 = "", -- Optional second route
           description = "Route description",
           lastUpdated = "2025-01-26",
           author = "Your Name"
       }
    
    4. Supported Formats:
       ✓ Legacy JSON (CF arrays)
       ✓ New JSON (Checkpoints & Frames)
       ✓ CFrame Lua (return table)
       ✓ Advanced JSON (velocity, hipHeight, etc)
       ✓ Wrapped JSON (Name & Data array)
    
    5. Dual Routes (url2):
       - Use url2 for alternative/backup routes
       - Button "START (V2)" will appear automatically
       - Leave empty ("") if not needed
    
    ]]
    
}

-- ============================================================
-- SUPPORTED JSON FORMATS EXAMPLES
-- ============================================================

--[[

FORMAT 1: LEGACY JSON (CF Array)
================================
[
    {
        "MD": [0, 0, 0],
        "WS": 28,
        "J": false,
        "CF": [264.4, 64.0, -51.3, 0, 0, -1, 0, 1, 0, 1, 0, 0],
        "DT": 0.05
    }
]

FORMAT 2: NEW JSON (Checkpoints)
================================
{
    "CheckpointNames": {"recording_1": "checkpoint_1"},
    "Checkpoints": [
        {
            "Frames": [
                {
                    "UpVector": [0, 1, 0],
                    "MoveState": "Grounded",
                    "Velocity": [0, 0, 0],
                    "LookVector": [0, 0, 1],
                    "Position": [100, 50, 200],
                    "Timestamp": 0,
                    "WalkSpeed": 16
                }
            ]
        }
    ]
}

FORMAT 3: CFRAME LUA
================================
return {
    CFrame.new(-957, 171.18, 876) * CFrame.Angles(0, -1.57, 0),
    CFrame.new(-957, 171.18, 876) * CFrame.Angles(0, -1.57, 0),
}

FORMAT 4: ADVANCED JSON (Full Data)
================================
[
    {
        "forwardDot": 0,
        "velocity": {"y": 0.0002, "x": 0, "z": 0},
        "velocityY": 0.0002,
        "hipHeight": 5.331,
        "rotation": -0.143,
        "moveDirection": {"y": 0, "x": 0, "z": 0},
        "time": 0.014,
        "position": {"y": 40.38, "x": 179.54, "z": -133.69},
        "rightDot": 0,
        "state": "Running",
        "movementType": "idle",
        "isJump": false
    }
]

FORMAT 5: WRAPPED JSON (Name & Data)
================================
[
    {
        "Name": "ROUTE_NAME",
        "Data": [
            {
                "MD": [0, 0, 0],
                "J": false,
                "CF": [264.4, 64.0, -51.3, ...],
                "DT": 0.05
            }
        ]
    }
]

]]

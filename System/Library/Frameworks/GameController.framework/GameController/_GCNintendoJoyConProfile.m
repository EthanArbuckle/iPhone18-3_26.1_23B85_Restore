@interface _GCNintendoJoyConProfile
+ (_GCPhysicalDeviceManager)deviceManager;
+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)a3;
+ (void)physicalDevice:(id)a3 getBatteryWithReply:(id)a4;
+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4;
@end

@implementation _GCNintendoJoyConProfile

+ (_GCPhysicalDeviceManager)deviceManager
{
  if (deviceManager_onceToken_0 != -1)
  {
    +[_GCNintendoJoyConProfile deviceManager];
  }

  v3 = deviceManager_deviceManager_0;

  return v3;
}

+ (int64_t)physicalDeviceGetIndicatedPlayerIndex:(id)a3
{
  v3 = [a3 serviceInfo];
  v4 = IOHIDServiceClientCopyProperty([v3 service], @"JoyConPlayerLights");

  v15 = 0;
  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 objectForKey:@"LED"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v8 isEqualToString:@"OFF"])
          {
            v9 = 0;
          }

          else if ([v8 isEqualToString:@"ON-SOLID"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ON"))
          {
            v9 = 1;
          }

          else
          {
            if (![v8 isEqualToString:@"ON-FLASH"])
            {
              goto LABEL_12;
            }

            v9 = 2;
          }

          *(&v15 + v7) = v9;
        }

LABEL_12:

        ++v7;
        v10 = [v6 count];
        if (v10 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v10;
        }
      }

      while (v11 > v7);
    }
  }

  v12 = 0;
  v13 = &PlayerLightsConfig;
  while (v15 != *v13)
  {
    ++v12;
    ++v13;
    if (v12 == 9)
    {
      v12 = -1;
      break;
    }
  }

  return v12;
}

+ (void)physicalDevice:(id)a3 setIndicatedPlayerIndex:(int64_t)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a4 + 1;
  if ((a4 + 1) <= 8)
  {
    v5 = [a3 serviceInfo];
    v6 = [v5 service];
    v7 = PlayerLightsConfig[v4];
    v8 = PlayerLightsConfig[v4];
    v23 = @"LED";
    if (v8 >= 3)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v7];
      v9 = [v10 description];
    }

    else
    {
      v9 = off_1E8419DE8[v7 & 3];
    }

    v22[0] = v9;
    if (BYTE1(v7) >= 3u)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:BYTE1(v7)];
      v11 = [v12 description];
    }

    else
    {
      v11 = off_1E8419DE8[(v7 >> 8) & 3];
    }

    v22[1] = v11;
    if (BYTE2(v7) >= 3u)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:BYTE2(v7)];
      v13 = [v14 description];
    }

    else
    {
      v13 = off_1E8419DE8[WORD1(v7) & 3];
    }

    v15 = v7 >> 24;
    v22[2] = v13;
    if (BYTE3(v7) >= 3u)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v15];
      v16 = [v17 description];
    }

    else
    {
      v16 = off_1E8419DE8[v15];
    }

    v22[3] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];

    v20 = v19;
    IOHIDServiceClientSetProperty(v6, @"JoyConPlayerLights", v19);
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)physicalDevice:(id)a3 getBatteryWithReply:(id)a4
{
  v5 = a4;
  v6 = [a3 batteryServiceServer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___GCNintendoJoyConProfile_physicalDevice_getBatteryWithReply___block_invoke;
  v8[3] = &unk_1E8419578;
  v9 = v5;
  v7 = v5;
  [v6 readBatteryWithReply:v8];
}

@end
@interface BCBatteryDevice(BatteryCenterUI)
+ (double)batteryWidgetGlyphLargestSize;
+ (id)_internalBatteryDeviceGlyphName;
- (__CFString)batteryWidgetGlyphName:()BatteryCenterUI;
- (id)batteryWidgetGlyph;
@end

@implementation BCBatteryDevice(BatteryCenterUI)

+ (id)_internalBatteryDeviceGlyphName
{
  v0 = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  v1 = MEMORY[0x1E69A8A40];
  v2 = [v0 identifier];
  v3 = [v1 symbolForTypeIdentifier:v2 withResolutionStrategy:1 variantOptions:1 error:0];

  v4 = [v3 name];

  return v4;
}

+ (double)batteryWidgetGlyphLargestSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BCBatteryDevice_BatteryCenterUI__batteryWidgetGlyphLargestSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (batteryWidgetGlyphLargestSize_onceToken[0] != -1)
  {
    dispatch_once(batteryWidgetGlyphLargestSize_onceToken, block);
  }

  return *&batteryWidgetGlyphLargestSize___largestBatteryDeviceGlyphSize_0;
}

- (__CFString)batteryWidgetGlyphName:()BatteryCenterUI
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [a1 vendor];
  v3 = [a1 accessoryCategory];
  v4 = [a1 transportType];
  if ([a1 isInternal])
  {
    v5 = [objc_opt_class() _internalBatteryDeviceGlyphName];
    v6 = [a1 parts];
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = [a1 parts];
  }

  v7 = v6;
  if (v2 == 2)
  {
    v5 = @"beatslogo";
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    if (v3 > 5)
    {
      if (v3 > 8)
      {
LABEL_43:
        if (v3 == 9)
        {
          v5 = @"computermouse.fill";
          goto LABEL_15;
        }

        if (v3 == 10)
        {
          v5 = @"hearingdevice.ear";
          goto LABEL_15;
        }

        goto LABEL_62;
      }

      if (v3 == 6)
      {
        goto LABEL_61;
      }

      if (v3 == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (v3 == 1)
    {
LABEL_52:
      v5 = @"hifispeaker.fill";
      goto LABEL_15;
    }

    if (v3 == 2)
    {
LABEL_49:
      if (!BCCombinedLeftRightBatteryStatus() || (v17 = v7 - 1, (v7 - 1) >= 4))
      {
        v5 = @"headphones";
        goto LABEL_15;
      }

      v18 = off_1E814EEF8;
      goto LABEL_64;
    }

LABEL_57:
    if (v3 == 5)
    {
      v5 = @"keyboard.fill";
      goto LABEL_15;
    }

    goto LABEL_62;
  }

  v8 = [a1 productIdentifier];
  v9 = v8;
  switch(v4)
  {
    case 2:
      if (v8 == *MEMORY[0x1E698E858])
      {
        v5 = @"iphone.smartbatterycase.gen1";
        goto LABEL_15;
      }

      if (v8 == *MEMORY[0x1E698E860])
      {
        v5 = @"iphone.smartbatterycase.gen2";
        goto LABEL_15;
      }

      break;
    case 4:
      if (v8 == *MEMORY[0x1E698E848])
      {
        v5 = @"magsafe.batterypack.fill";
        goto LABEL_15;
      }

      if (v8 == *MEMORY[0x1E698E850])
      {
        v5 = @"0828E54B965E418AB42353CA91BFBBEE.fill";
        goto LABEL_15;
      }

      break;
    case 3:
      switch(v7)
      {
        case 1:
          v10 = 0x40000;
          break;
        case 4:
          v10 = 0x100000;
          break;
        case 2:
          v10 = 0x80000;
          break;
        default:
          BCCombinedLeftRightBatteryStatus();
          v10 = 1;
          break;
      }

      v13 = [MEMORY[0x1E6982C40] _typeWithBluetoothProductID:v9 vendorID:76];
      v14 = MEMORY[0x1E69A8A40];
      v15 = [v13 identifier];
      v16 = [v14 symbolForTypeIdentifier:v15 withResolutionStrategy:1 variantOptions:v10 error:0];

      v5 = [v16 name];

      if (v5)
      {
        goto LABEL_15;
      }

      break;
  }

  if (v3 > 5)
  {
    if (v3 > 7)
    {
      if (v3 != 8)
      {
        goto LABEL_43;
      }

LABEL_53:
      v5 = @"gamecontroller.fill";
      goto LABEL_15;
    }

    if (v3 != 6)
    {
      v5 = @"applepencil";
      goto LABEL_15;
    }

LABEL_61:
    v5 = @"rectangle.filled.and.hand.point.up.left";
    goto LABEL_15;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = @"applewatch";
      goto LABEL_15;
    }

    goto LABEL_57;
  }

  if (v3 == 1)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    goto LABEL_49;
  }

LABEL_62:
  v17 = v4 - 2;
  if ((v4 - 2) < 3)
  {
    v18 = off_1E814EF18;
LABEL_64:
    v5 = v18[v17];
    goto LABEL_15;
  }

  v5 = 0;
LABEL_15:
  v11 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = a1;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1C1C4A000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) Glyph name: %@", &v19, 0x16u);
  }

  return v5;
}

- (id)batteryWidgetGlyph
{
  v6 = 0;
  v1 = [a1 batteryWidgetGlyphName:&v6];
  v2 = MEMORY[0x1E69DCAB8];
  if (v6)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v2 imageNamed:v1 inBundle:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v1];
  }

  return v4;
}

@end
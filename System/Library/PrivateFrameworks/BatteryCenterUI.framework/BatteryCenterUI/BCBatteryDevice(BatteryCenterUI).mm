@interface BCBatteryDevice(BatteryCenterUI)
+ (double)batteryWidgetGlyphLargestSize;
+ (id)_internalBatteryDeviceGlyphName;
- (__CFString)batteryWidgetGlyphName:()BatteryCenterUI;
- (id)batteryWidgetGlyph;
@end

@implementation BCBatteryDevice(BatteryCenterUI)

+ (id)_internalBatteryDeviceGlyphName
{
  _typeOfCurrentDevice = [MEMORY[0x1E6982C40] _typeOfCurrentDevice];
  v1 = MEMORY[0x1E69A8A40];
  identifier = [_typeOfCurrentDevice identifier];
  v3 = [v1 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:1 error:0];

  name = [v3 name];

  return name;
}

+ (double)batteryWidgetGlyphLargestSize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__BCBatteryDevice_BatteryCenterUI__batteryWidgetGlyphLargestSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (batteryWidgetGlyphLargestSize_onceToken[0] != -1)
  {
    dispatch_once(batteryWidgetGlyphLargestSize_onceToken, block);
  }

  return *&batteryWidgetGlyphLargestSize___largestBatteryDeviceGlyphSize_0;
}

- (__CFString)batteryWidgetGlyphName:()BatteryCenterUI
{
  v23 = *MEMORY[0x1E69E9840];
  vendor = [self vendor];
  accessoryCategory = [self accessoryCategory];
  transportType = [self transportType];
  if ([self isInternal])
  {
    _internalBatteryDeviceGlyphName = [objc_opt_class() _internalBatteryDeviceGlyphName];
    parts = [self parts];
    if (_internalBatteryDeviceGlyphName)
    {
      goto LABEL_15;
    }
  }

  else
  {
    parts = [self parts];
  }

  v7 = parts;
  if (vendor == 2)
  {
    _internalBatteryDeviceGlyphName = @"beatslogo";
    goto LABEL_15;
  }

  if (vendor != 1)
  {
    if (accessoryCategory > 5)
    {
      if (accessoryCategory > 8)
      {
LABEL_43:
        if (accessoryCategory == 9)
        {
          _internalBatteryDeviceGlyphName = @"computermouse.fill";
          goto LABEL_15;
        }

        if (accessoryCategory == 10)
        {
          _internalBatteryDeviceGlyphName = @"hearingdevice.ear";
          goto LABEL_15;
        }

        goto LABEL_62;
      }

      if (accessoryCategory == 6)
      {
        goto LABEL_61;
      }

      if (accessoryCategory == 8)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }

    if (accessoryCategory == 1)
    {
LABEL_52:
      _internalBatteryDeviceGlyphName = @"hifispeaker.fill";
      goto LABEL_15;
    }

    if (accessoryCategory == 2)
    {
LABEL_49:
      if (!BCCombinedLeftRightBatteryStatus() || (v17 = v7 - 1, (v7 - 1) >= 4))
      {
        _internalBatteryDeviceGlyphName = @"headphones";
        goto LABEL_15;
      }

      v18 = off_1E814EEF8;
      goto LABEL_64;
    }

LABEL_57:
    if (accessoryCategory == 5)
    {
      _internalBatteryDeviceGlyphName = @"keyboard.fill";
      goto LABEL_15;
    }

    goto LABEL_62;
  }

  productIdentifier = [self productIdentifier];
  v9 = productIdentifier;
  switch(transportType)
  {
    case 2:
      if (productIdentifier == *MEMORY[0x1E698E858])
      {
        _internalBatteryDeviceGlyphName = @"iphone.smartbatterycase.gen1";
        goto LABEL_15;
      }

      if (productIdentifier == *MEMORY[0x1E698E860])
      {
        _internalBatteryDeviceGlyphName = @"iphone.smartbatterycase.gen2";
        goto LABEL_15;
      }

      break;
    case 4:
      if (productIdentifier == *MEMORY[0x1E698E848])
      {
        _internalBatteryDeviceGlyphName = @"magsafe.batterypack.fill";
        goto LABEL_15;
      }

      if (productIdentifier == *MEMORY[0x1E698E850])
      {
        _internalBatteryDeviceGlyphName = @"0828E54B965E418AB42353CA91BFBBEE.fill";
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
      identifier = [v13 identifier];
      v16 = [v14 symbolForTypeIdentifier:identifier withResolutionStrategy:1 variantOptions:v10 error:0];

      _internalBatteryDeviceGlyphName = [v16 name];

      if (_internalBatteryDeviceGlyphName)
      {
        goto LABEL_15;
      }

      break;
  }

  if (accessoryCategory > 5)
  {
    if (accessoryCategory > 7)
    {
      if (accessoryCategory != 8)
      {
        goto LABEL_43;
      }

LABEL_53:
      _internalBatteryDeviceGlyphName = @"gamecontroller.fill";
      goto LABEL_15;
    }

    if (accessoryCategory != 6)
    {
      _internalBatteryDeviceGlyphName = @"applepencil";
      goto LABEL_15;
    }

LABEL_61:
    _internalBatteryDeviceGlyphName = @"rectangle.filled.and.hand.point.up.left";
    goto LABEL_15;
  }

  if (accessoryCategory > 2)
  {
    if (accessoryCategory == 3)
    {
      _internalBatteryDeviceGlyphName = @"applewatch";
      goto LABEL_15;
    }

    goto LABEL_57;
  }

  if (accessoryCategory == 1)
  {
    goto LABEL_52;
  }

  if (accessoryCategory == 2)
  {
    goto LABEL_49;
  }

LABEL_62:
  v17 = transportType - 2;
  if ((transportType - 2) < 3)
  {
    v18 = off_1E814EF18;
LABEL_64:
    _internalBatteryDeviceGlyphName = v18[v17];
    goto LABEL_15;
  }

  _internalBatteryDeviceGlyphName = 0;
LABEL_15:
  v11 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    selfCopy = self;
    v21 = 2112;
    v22 = _internalBatteryDeviceGlyphName;
    _os_log_impl(&dword_1C1C4A000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) Glyph name: %@", &v19, 0x16u);
  }

  return _internalBatteryDeviceGlyphName;
}

- (id)batteryWidgetGlyph
{
  v6 = 0;
  v1 = [self batteryWidgetGlyphName:&v6];
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
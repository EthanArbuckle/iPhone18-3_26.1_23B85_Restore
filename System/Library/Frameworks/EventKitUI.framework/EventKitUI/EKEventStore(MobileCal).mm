@interface EKEventStore(MobileCal)
- (id)_uicolorFromString:()MobileCal;
- (id)colorNamesInRainbowOrder;
- (id)defaultCalendarColorsInRainbowOrder;
- (id)localizedStringForSymbolicColorName:()MobileCal;
- (id)stringForColor:()MobileCal;
- (id)symbolicNameForColor:()MobileCal;
- (id)symbolicNameToUIColors;
@end

@implementation EKEventStore(MobileCal)

- (id)colorNamesInRainbowOrder
{
  if (colorNamesInRainbowOrder_onceToken != -1)
  {
    [EKEventStore(MobileCal) colorNamesInRainbowOrder];
  }

  v1 = colorNamesInRainbowOrder___colorNames;

  return v1;
}

- (id)_uicolorFromString:()MobileCal
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 0;
  sscanf([a3 UTF8String], "#%02X%02X%02X", &v8 + 4, &v8, &v7);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(__PAIR64__(v8, HIDWORD(v8))), vdup_n_s32(0x437F0000u)));
  v10 = (v7 / 255.0);
  v11 = 0x3FF0000000000000;
  v4 = CGColorCreate(DeviceRGB, components);
  v5 = [MEMORY[0x1E69DC888] colorWithCGColor:v4];
  CFRelease(DeviceRGB);
  CFRelease(v4);

  return v5;
}

- (id)symbolicNameToUIColors
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKEventStore_MobileCal__symbolicNameToUIColors__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  if (symbolicNameToUIColors_onceToken != -1)
  {
    dispatch_once(&symbolicNameToUIColors_onceToken, block);
  }

  return symbolicNameToUIColors___symbolicColorMapping;
}

- (id)defaultCalendarColorsInRainbowOrder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__EKEventStore_MobileCal__defaultCalendarColorsInRainbowOrder__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  if (defaultCalendarColorsInRainbowOrder_onceToken != -1)
  {
    dispatch_once(&defaultCalendarColorsInRainbowOrder_onceToken, block);
  }

  return defaultCalendarColorsInRainbowOrder___orderedUIColors;
}

- (id)localizedStringForSymbolicColorName:()MobileCal
{
  v3 = a3;
  if (localizedStringForSymbolicColorName__onceToken != -1)
  {
    [EKEventStore(MobileCal) localizedStringForSymbolicColorName:];
  }

  v4 = [localizedStringForSymbolicColorName____localizedStringMapping objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [localizedStringForSymbolicColorName____localizedStringMapping objectForKeyedSubscript:v3];
  }

  else
  {
    v6 = EventKitUIBundle();
    v5 = [v6 localizedStringForKey:@"Custom" value:&stru_1F4EF6790 table:0];
  }

  return v5;
}

- (id)stringForColor:()MobileCal
{
  v2 = [self symbolicNameForColor:?];
  v3 = [self localizedStringForSymbolicColorName:v2];

  return v3;
}

- (id)symbolicNameForColor:()MobileCal
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  symbolicNameToUIColors = [self symbolicNameToUIColors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__EKEventStore_MobileCal__symbolicNameForColor___block_invoke;
  v9[3] = &unk_1E843F728;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [symbolicNameToUIColors enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end
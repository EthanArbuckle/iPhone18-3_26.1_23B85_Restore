@interface VKMapView(MapKitAdditions)
- (uint64_t)_mapkit_configureFromDefaults;
- (void)_mapkit_configureLabelSizesForContentSizeCategory:()MapKitAdditions;
@end

@implementation VKMapView(MapKitAdditions)

- (uint64_t)_mapkit_configureFromDefaults
{
  BOOL = GEOConfigGetBOOL();

  return [self setLocalizeLabels:BOOL];
}

- (void)_mapkit_configureLabelSizesForContentSizeCategory:()MapKitAdditions
{
  v4 = a3;
  [self setLabelScaleFactor:labelScaleFactorForContentSizeCategory(v4)];
  v6 = v4;
  if ([v6 isEqualToString:*MEMORY[0x1E69DDC60]] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC58]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC50]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC40]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC38]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC30]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v5 = 5;
  }

  else if ([v6 isEqualToString:*MEMORY[0x1E69DDC20]])
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  [self setShieldSize:v5];
}

@end
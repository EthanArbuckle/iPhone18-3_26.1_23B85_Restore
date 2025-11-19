@interface HUMosaicCameraCellAccessibility
- (id)accessibilityLabel;
@end

@implementation HUMosaicCameraCellAccessibility

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(HUMosaicCameraCellAccessibility *)self safeValueForKey:@"item"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 latestResults];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5328]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x29EDC5308]];
    v8 = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUMosaicCameraCellAccessibility;
    v8 = [(HUMosaicCameraCellAccessibility *)&v11 accessibilityLabel];
  }

  return v8;
}

@end
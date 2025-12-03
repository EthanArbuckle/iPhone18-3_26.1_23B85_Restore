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

  latestResults = [v4 latestResults];
  v6 = latestResults;
  if (latestResults)
  {
    v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x29EDC5328]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x29EDC5308]];
    accessibilityLabel = __UIAXStringForVariables();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HUMosaicCameraCellAccessibility;
    accessibilityLabel = [(HUMosaicCameraCellAccessibility *)&v11 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end
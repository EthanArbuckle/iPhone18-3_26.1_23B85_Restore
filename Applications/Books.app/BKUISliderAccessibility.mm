@interface BKUISliderAccessibility
- (BOOL)_accessibilityServesAsFirstElement;
- (id)accessibilityLabel;
@end

@implementation BKUISliderAccessibility

- (BOOL)_accessibilityServesAsFirstElement
{
  imaxIdentification = [(BKUISliderAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"BrightnessSlider"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = BKUISliderAccessibility;
  return [(BKUISliderAccessibility *)&v6 _accessibilityServesAsFirstElement];
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(BKUISliderAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"BrightnessSlider"];

  if (v4)
  {
    accessibilityUserDefinedLabel = [(BKUISliderAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKUISliderAccessibility;
    accessibilityUserDefinedLabel = [(BKUISliderAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityUserDefinedLabel;
}

@end
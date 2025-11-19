@interface BKUISliderAccessibility
- (BOOL)_accessibilityServesAsFirstElement;
- (id)accessibilityLabel;
@end

@implementation BKUISliderAccessibility

- (BOOL)_accessibilityServesAsFirstElement
{
  v3 = [(BKUISliderAccessibility *)self imaxIdentification];
  v4 = [v3 isEqualToString:@"BrightnessSlider"];

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
  v3 = [(BKUISliderAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"BrightnessSlider"];

  if (v4)
  {
    v5 = [(BKUISliderAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKUISliderAccessibility;
    v5 = [(BKUISliderAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

@end
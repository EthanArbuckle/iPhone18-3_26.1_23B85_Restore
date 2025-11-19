@interface PLSegmentedLabelSliderCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PLSegmentedLabelSliderCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PLSegmentedLabelSliderCellAccessibility;
  [(PLSegmentedLabelSliderCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLSegmentedLabelSliderCellAccessibility *)self safeValueForKey:@"slider"];
  [v3 setIsAccessibilityElement:0];
}

@end
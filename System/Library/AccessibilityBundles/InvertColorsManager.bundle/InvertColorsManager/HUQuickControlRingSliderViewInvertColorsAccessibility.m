@interface HUQuickControlRingSliderViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation HUQuickControlRingSliderViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(HUQuickControlRingSliderViewInvertColorsAccessibility *)self safeUIViewForKey:@"_selectedRangeImageView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(HUQuickControlRingSliderViewInvertColorsAccessibility *)self safeUIViewForKey:@"selectedRangeImageViewForEdges"];
  [v4 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUQuickControlRingSliderViewInvertColorsAccessibility;
  [(HUQuickControlRingSliderViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(HUQuickControlRingSliderViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
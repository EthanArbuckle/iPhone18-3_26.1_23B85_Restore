@interface UIShareGroupActivityCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation UIShareGroupActivityCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIShareGroupActivityCellInvertColorsAccessibility;
  [(UIShareGroupActivityCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(UIShareGroupActivityCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(UIShareGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageSlotView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(UIShareGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"activityImageView"];
  [v4 setAccessibilityIgnoresInvertColors:1];

  v5 = [(UIShareGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"badgeSlotView"];
  [v5 setAccessibilityIgnoresInvertColors:1];
}

@end
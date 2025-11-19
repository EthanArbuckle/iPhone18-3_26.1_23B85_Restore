@interface RemoteUITableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation RemoteUITableViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(RemoteUITableViewCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RemoteUITableViewCellInvertColorsAccessibility;
  [(RemoteUITableViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(RemoteUITableViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
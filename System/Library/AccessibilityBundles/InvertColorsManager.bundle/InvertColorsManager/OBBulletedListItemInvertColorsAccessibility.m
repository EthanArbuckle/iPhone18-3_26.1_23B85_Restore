@interface OBBulletedListItemInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation OBBulletedListItemInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(OBBulletedListItemInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBBulletedListItemInvertColorsAccessibility;
  [(OBBulletedListItemInvertColorsAccessibility *)&v3 layoutSubviews];
  [(OBBulletedListItemInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
@interface PRXCardBottomTrayInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setImageView:(id)a3;
@end

@implementation PRXCardBottomTrayInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PRXCardBottomTrayInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setImageView:(id)a3
{
  v4.receiver = self;
  v4.super_class = PRXCardBottomTrayInvertColorsAccessibility;
  [(PRXCardBottomTrayInvertColorsAccessibility *)&v4 setImageView:a3];
  [(PRXCardBottomTrayInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
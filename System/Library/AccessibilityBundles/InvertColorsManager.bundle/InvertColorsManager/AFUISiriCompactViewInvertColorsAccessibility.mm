@interface AFUISiriCompactViewInvertColorsAccessibility
- (void)layoutSubviews;
@end

@implementation AFUISiriCompactViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AFUISiriCompactViewInvertColorsAccessibility;
  [(AFUISiriCompactViewInvertColorsAccessibility *)&v4 layoutSubviews];
  v3 = [(AFUISiriCompactViewInvertColorsAccessibility *)self safeUIViewForKey:@"_orbViewContainer"];
  [v3 setAccessibilityIgnoresInvertColors:1];
}

@end
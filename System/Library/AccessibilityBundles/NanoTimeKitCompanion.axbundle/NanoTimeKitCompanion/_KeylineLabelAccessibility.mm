@interface _KeylineLabelAccessibility
- (_KeylineLabelAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _KeylineLabelAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(_KeylineLabelAccessibility *)self safeValueForKey:@"_label"];
  [v3 setIsAccessibilityElement:0];

  v4.receiver = self;
  v4.super_class = _KeylineLabelAccessibility;
  [(_KeylineLabelAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
}

- (_KeylineLabelAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _KeylineLabelAccessibility;
  v3 = [(_KeylineLabelAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_KeylineLabelAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end
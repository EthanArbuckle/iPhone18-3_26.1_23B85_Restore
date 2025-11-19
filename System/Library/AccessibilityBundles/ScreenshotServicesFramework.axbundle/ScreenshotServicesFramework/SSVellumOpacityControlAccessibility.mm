@interface SSVellumOpacityControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SSVellumOpacityControlAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SSVellumOpacityControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SSVellumOpacityControl" hasInstanceVariable:@"_slider" withType:"UISlider"];
  [v3 validateClass:@"SSVellumOpacityControl" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SSVellumOpacityControlAccessibility;
  [(SSVellumOpacityControlAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SSVellumOpacityControlAccessibility *)self safeValueForKey:@"_slider"];
  v4 = accessibilityLocalizedString(@"opacity.slider");
  [v3 setAccessibilityLabel:v4];
}

- (SSVellumOpacityControlAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SSVellumOpacityControlAccessibility;
  v3 = [(SSVellumOpacityControlAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SSVellumOpacityControlAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
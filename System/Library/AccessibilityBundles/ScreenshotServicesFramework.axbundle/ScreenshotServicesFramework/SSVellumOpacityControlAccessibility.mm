@interface SSVellumOpacityControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SSVellumOpacityControlAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SSVellumOpacityControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSVellumOpacityControl" hasInstanceVariable:@"_slider" withType:"UISlider"];
  [validationsCopy validateClass:@"SSVellumOpacityControl" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
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

- (SSVellumOpacityControlAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SSVellumOpacityControlAccessibility;
  v3 = [(SSVellumOpacityControlAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SSVellumOpacityControlAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
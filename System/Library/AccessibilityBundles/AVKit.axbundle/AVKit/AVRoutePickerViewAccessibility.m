@interface AVRoutePickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AVRoutePickerViewAccessibility)initWithCoder:(id)a3;
- (AVRoutePickerViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVRoutePickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVRoutePickerView" hasInstanceVariable:@"_routePickerButton" withType:"UIButton"];
  [v3 validateClass:@"AVRoutePickerView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"AVRoutePickerView" hasInstanceMethod:@"initWithCoder:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"AVRoutePickerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AVRoutePickerViewAccessibility;
  [(AVRoutePickerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVRoutePickerViewAccessibility *)self safeValueForKey:@"_routePickerButton"];
  v4 = accessibilityLocalizedString(@"route.picker.button.label");
  [v3 setAccessibilityLabel:v4];
}

- (AVRoutePickerViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AVRoutePickerViewAccessibility;
  v3 = [(AVRoutePickerViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AVRoutePickerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (AVRoutePickerViewAccessibility)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVRoutePickerViewAccessibility;
  v3 = [(AVRoutePickerViewAccessibility *)&v5 initWithCoder:a3];
  [(AVRoutePickerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
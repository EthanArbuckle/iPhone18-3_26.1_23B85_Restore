@interface AVRoutePickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AVRoutePickerViewAccessibility)initWithCoder:(id)coder;
- (AVRoutePickerViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVRoutePickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVRoutePickerView" hasInstanceVariable:@"_routePickerButton" withType:"UIButton"];
  [validationsCopy validateClass:@"AVRoutePickerView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"AVRoutePickerView" hasInstanceMethod:@"initWithCoder:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"AVRoutePickerView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
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

- (AVRoutePickerViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AVRoutePickerViewAccessibility;
  v3 = [(AVRoutePickerViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AVRoutePickerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (AVRoutePickerViewAccessibility)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AVRoutePickerViewAccessibility;
  v3 = [(AVRoutePickerViewAccessibility *)&v5 initWithCoder:coder];
  [(AVRoutePickerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
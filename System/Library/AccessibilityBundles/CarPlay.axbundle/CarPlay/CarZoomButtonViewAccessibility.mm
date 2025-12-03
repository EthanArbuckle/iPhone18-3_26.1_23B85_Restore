@interface CarZoomButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CarZoomButtonViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CarZoomButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CarZoomButtonView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"CarZoomButtonView" hasInstanceVariable:@"_zoomInButton" withType:"CarFocusableImageButton"];
  [validationsCopy validateClass:@"CarZoomButtonView" hasInstanceVariable:@"_zoomOutButton" withType:"CarFocusableImageButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CarZoomButtonViewAccessibility;
  [(CarZoomButtonViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CarZoomButtonViewAccessibility *)self safeUIViewForKey:@"_zoomInButton"];
  [v3 setAccessibilityIdentifier:@"CarZoomButton-In"];

  v4 = [(CarZoomButtonViewAccessibility *)self safeUIViewForKey:@"_zoomOutButton"];
  [v4 setAccessibilityIdentifier:@"CarZoomButton-In"];
}

- (CarZoomButtonViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CarZoomButtonViewAccessibility;
  v3 = [(CarZoomButtonViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CarZoomButtonViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
@interface CarZoomButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CarZoomButtonViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CarZoomButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CarZoomButtonView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"CarZoomButtonView" hasInstanceVariable:@"_zoomInButton" withType:"CarFocusableImageButton"];
  [v3 validateClass:@"CarZoomButtonView" hasInstanceVariable:@"_zoomOutButton" withType:"CarFocusableImageButton"];
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

- (CarZoomButtonViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CarZoomButtonViewAccessibility;
  v3 = [(CarZoomButtonViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CarZoomButtonViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
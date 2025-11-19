@interface VTUISiriEducationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityHideVideoPlayer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VTUISiriEducationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VTUISiriEducationViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"VTUISiriEducationViewController" hasInstanceVariable:@"_playerViewController" withType:"AVPlayerViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VTUISiriEducationViewControllerAccessibility;
  [(VTUISiriEducationViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VTUISiriEducationViewControllerAccessibility *)self _accessibilityHideVideoPlayer];
}

- (void)_accessibilityHideVideoPlayer
{
  objc_opt_class();
  v3 = [(VTUISiriEducationViewControllerAccessibility *)self safeValueForKey:@"_playerViewController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 view];
  [v5 setAccessibilityElementsHidden:1];

  v6 = [v4 view];
  [v6 setIsAccessibilityElement:0];
}

@end
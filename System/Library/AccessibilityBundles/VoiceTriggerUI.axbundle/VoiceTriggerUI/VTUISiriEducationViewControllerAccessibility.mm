@interface VTUISiriEducationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityHideVideoPlayer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VTUISiriEducationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VTUISiriEducationViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"VTUISiriEducationViewController" hasInstanceVariable:@"_playerViewController" withType:"AVPlayerViewController"];
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

  view = [v4 view];
  [view setAccessibilityElementsHidden:1];

  view2 = [v4 view];
  [view2 setIsAccessibilityElement:0];
}

@end
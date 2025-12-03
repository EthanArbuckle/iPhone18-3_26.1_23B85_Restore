@interface CCUIPagingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)controlsGalleryViewControllerWillDismiss:(id)dismiss;
- (void)controlsGalleryViewControllerWillPresent:(id)present;
@end

@implementation CCUIPagingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"controlsGalleryViewControllerWillPresent:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"controlsGalleryViewControllerWillDismiss:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CCUIPagingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CCUISControlsGalleryViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CCUIPagingViewControllerAccessibility;
  [(CCUIPagingViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"presentedViewController"];
  MEMORY[0x29C2D22C0](@"CCUISControlsGalleryViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"view"];
    [v5 setAccessibilityElementsHidden:1];
  }
}

- (void)controlsGalleryViewControllerWillPresent:(id)present
{
  v5.receiver = self;
  v5.super_class = CCUIPagingViewControllerAccessibility;
  [(CCUIPagingViewControllerAccessibility *)&v5 controlsGalleryViewControllerWillPresent:present];
  v4 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityElementsHidden:1];
}

- (void)controlsGalleryViewControllerWillDismiss:(id)dismiss
{
  v5.receiver = self;
  v5.super_class = CCUIPagingViewControllerAccessibility;
  [(CCUIPagingViewControllerAccessibility *)&v5 controlsGalleryViewControllerWillDismiss:dismiss];
  v4 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityElementsHidden:0];
}

@end
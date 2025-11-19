@interface CCUIPagingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)controlsGalleryViewControllerWillDismiss:(id)a3;
- (void)controlsGalleryViewControllerWillPresent:(id)a3;
@end

@implementation CCUIPagingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"controlsGalleryViewControllerWillPresent:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CCUIPagingViewController" hasInstanceMethod:@"controlsGalleryViewControllerWillDismiss:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CCUIPagingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUISControlsGalleryViewController"];
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

- (void)controlsGalleryViewControllerWillPresent:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUIPagingViewControllerAccessibility;
  [(CCUIPagingViewControllerAccessibility *)&v5 controlsGalleryViewControllerWillPresent:a3];
  v4 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityElementsHidden:1];
}

- (void)controlsGalleryViewControllerWillDismiss:(id)a3
{
  v5.receiver = self;
  v5.super_class = CCUIPagingViewControllerAccessibility;
  [(CCUIPagingViewControllerAccessibility *)&v5 controlsGalleryViewControllerWillDismiss:a3];
  v4 = [(CCUIPagingViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 setAccessibilityElementsHidden:0];
}

@end
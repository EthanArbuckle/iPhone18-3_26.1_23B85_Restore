@interface CKFunCameraViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKFunCameraViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKFunCameraViewController" hasInstanceMethod:@"dismiss" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKFunCameraViewController" hasInstanceMethod:@"funCameraAppViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKFunCameraViewControllerAccessibility;
  [(CKFunCameraViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKFunCameraViewControllerAccessibility *)self safeValueForKey:@"funCameraAppViewController"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"AXFunCamBrowserDrawer"];
}

- (BOOL)accessibilityPerformEscape
{
  if (objc_opt_respondsToSelector())
  {
    [(CKFunCameraViewControllerAccessibility *)self dismiss];
    return 1;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CKFunCameraViewControllerAccessibility;
    return [(CKFunCameraViewControllerAccessibility *)&v4 accessibilityPerformEscape];
  }
}

@end
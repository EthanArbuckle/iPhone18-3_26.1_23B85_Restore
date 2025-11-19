@interface CAMImagePickerCameraViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)cropOverlayWasCancelled:(id)a3;
@end

@implementation CAMImagePickerCameraViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMImagePickerCameraViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CAMImagePickerCameraViewController" hasInstanceMethod:@"cropOverlayWasCancelled:" withFullSignature:{"v", "@", 0}];
}

- (void)cropOverlayWasCancelled:(id)a3
{
  v5.receiver = self;
  v5.super_class = CAMImagePickerCameraViewControllerAccessibility;
  [(CAMImagePickerCameraViewControllerAccessibility *)&v5 cropOverlayWasCancelled:a3];
  v4 = [(CAMImagePickerCameraViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
@interface CAMImagePickerCameraViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)cropOverlayWasCancelled:(id)cancelled;
@end

@implementation CAMImagePickerCameraViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMImagePickerCameraViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CAMImagePickerCameraViewController" hasInstanceMethod:@"cropOverlayWasCancelled:" withFullSignature:{"v", "@", 0}];
}

- (void)cropOverlayWasCancelled:(id)cancelled
{
  v5.receiver = self;
  v5.super_class = CAMImagePickerCameraViewControllerAccessibility;
  [(CAMImagePickerCameraViewControllerAccessibility *)&v5 cropOverlayWasCancelled:cancelled];
  v4 = [(CAMImagePickerCameraViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v4 _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
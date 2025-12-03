@interface CKGlassSendMenuButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation CKGlassSendMenuButtonAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityContainer = [(CKGlassSendMenuButtonAccessibility *)self accessibilityContainer];
  v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];

  v4 = [v2AccessibilityContainer safeValueForKey:@"cancelAudioRecordingButton"];
  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible ^ 1;
}

@end
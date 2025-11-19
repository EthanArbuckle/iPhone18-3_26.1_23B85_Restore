@interface CKGlassSendMenuButtonAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation CKGlassSendMenuButtonAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(CKGlassSendMenuButtonAccessibility *)self accessibilityContainer];
  v3 = [v2 accessibilityContainer];

  v4 = [v3 safeValueForKey:@"cancelAudioRecordingButton"];
  v5 = [v4 _accessibilityViewIsVisible];

  return v5 ^ 1;
}

@end
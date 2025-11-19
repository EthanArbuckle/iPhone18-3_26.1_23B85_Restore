@interface CKAudioMessageRecordingViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKAudioMessageRecordingViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKAudioMessageRecordingViewAccessibility;
  [(CKAudioMessageRecordingViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKAudioMessageRecordingViewAccessibility *)self safeSwiftValueForKey:@"sendButton"];
  [v3 setAccessibilityIdentifier:@"sendButton"];
  v4 = accessibilityLocalizedString(@"send.button.text");
  [v3 setAccessibilityLabel:v4];

  v5 = accessibilityLocalizedString(@"send.message.button.hint.imessage");
  [v3 _accessibilitySetElementHelp:v5];
}

@end
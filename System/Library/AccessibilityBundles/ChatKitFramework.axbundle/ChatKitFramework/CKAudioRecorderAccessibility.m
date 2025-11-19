@interface CKAudioRecorderAccessibility
- (void)startRecordingForRaiseGesture:(BOOL)a3 shouldPlaySound:(BOOL)a4;
@end

@implementation CKAudioRecorderAccessibility

- (void)startRecordingForRaiseGesture:(BOOL)a3 shouldPlaySound:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], &stru_2A21515E8);
  v7.receiver = self;
  v7.super_class = CKAudioRecorderAccessibility;
  [(CKAudioRecorderAccessibility *)&v7 startRecordingForRaiseGesture:v5 shouldPlaySound:v4];
}

@end
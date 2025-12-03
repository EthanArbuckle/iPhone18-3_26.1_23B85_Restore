@interface CKAudioRecorderAccessibility
- (void)startRecordingForRaiseGesture:(BOOL)gesture shouldPlaySound:(BOOL)sound;
@end

@implementation CKAudioRecorderAccessibility

- (void)startRecordingForRaiseGesture:(BOOL)gesture shouldPlaySound:(BOOL)sound
{
  soundCopy = sound;
  gestureCopy = gesture;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], &stru_2A21515E8);
  v7.receiver = self;
  v7.super_class = CKAudioRecorderAccessibility;
  [(CKAudioRecorderAccessibility *)&v7 startRecordingForRaiseGesture:gestureCopy shouldPlaySound:soundCopy];
}

@end
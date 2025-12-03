@interface AssistantVoiceControllerVoiceSettings
+ (id)settingsWithInProgressVoice:(id)voice currentVoice:(id)currentVoice;
@end

@implementation AssistantVoiceControllerVoiceSettings

+ (id)settingsWithInProgressVoice:(id)voice currentVoice:(id)currentVoice
{
  currentVoiceCopy = currentVoice;
  voiceCopy = voice;
  v7 = objc_opt_new();
  [v7 setInProgressVoice:voiceCopy];

  [v7 setCurrentVoice:currentVoiceCopy];

  return v7;
}

@end
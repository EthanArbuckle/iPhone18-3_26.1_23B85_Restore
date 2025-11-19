@interface AssistantVoiceControllerVoiceSettings
+ (id)settingsWithInProgressVoice:(id)a3 currentVoice:(id)a4;
@end

@implementation AssistantVoiceControllerVoiceSettings

+ (id)settingsWithInProgressVoice:(id)a3 currentVoice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setInProgressVoice:v6];

  [v7 setCurrentVoice:v5];

  return v7;
}

@end
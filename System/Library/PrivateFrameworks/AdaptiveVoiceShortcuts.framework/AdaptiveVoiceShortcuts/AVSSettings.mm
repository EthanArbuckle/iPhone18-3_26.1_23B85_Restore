@interface AVSSettings
+ (BOOL)avsFeatureEnabled;
+ (BOOL)shouldHideAudioDonationPrompt;
- (AVSSettings)init;
@end

@implementation AVSSettings

+ (BOOL)avsFeatureEnabled
{
  sharedInstance = [objc_opt_self() sharedInstance];
  isAdaptiveVoiceShortcutsEnabled = [sharedInstance isAdaptiveVoiceShortcutsEnabled];

  return isAdaptiveVoiceShortcutsEnabled;
}

+ (BOOL)shouldHideAudioDonationPrompt
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_23E82EA5C();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (AVSSettings)init
{
  v3.receiver = self;
  v3.super_class = AVSSettings;
  return [(AVSSettings *)&v3 init];
}

@end
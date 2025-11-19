@interface AVSSettings
+ (BOOL)avsFeatureEnabled;
+ (BOOL)shouldHideAudioDonationPrompt;
- (AVSSettings)init;
@end

@implementation AVSSettings

+ (BOOL)avsFeatureEnabled
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isAdaptiveVoiceShortcutsEnabled];

  return v3;
}

+ (BOOL)shouldHideAudioDonationPrompt
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_23E82EA5C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (AVSSettings)init
{
  v3.receiver = self;
  v3.super_class = AVSSettings;
  return [(AVSSettings *)&v3 init];
}

@end
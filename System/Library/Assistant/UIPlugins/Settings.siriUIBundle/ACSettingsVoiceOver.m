@interface ACSettingsVoiceOver
- (ACSettingsVoiceOver)init;
@end

@implementation ACSettingsVoiceOver

- (ACSettingsVoiceOver)init
{
  v6.receiver = self;
  v6.super_class = ACSettingsVoiceOver;
  v2 = [(ACSettingsVoiceOver *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_VOICEOVER");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = objc_opt_class();
  }

  return v2;
}

@end
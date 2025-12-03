@interface ACSettingsGuidedAccess
- (ACSettingsGuidedAccess)init;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation ACSettingsGuidedAccess

- (ACSettingsGuidedAccess)init
{
  v6.receiver = self;
  v6.super_class = ACSettingsGuidedAccess;
  v2 = [(ACSettingsGuidedAccess *)&v6 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_GUIDED_ACCESS");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v2->super._settingsDetailClass = 0;
  }

  return v2;
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    +[PSGuidedAccessSettingsDetail enterGuidedAccessMode];
  }
}

@end
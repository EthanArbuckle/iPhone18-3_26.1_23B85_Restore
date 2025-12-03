@interface CalDAVSettingsDataclassConfigurationViewController
- (id)accountDescriptionForFirstTimeSetup;
@end

@implementation CalDAVSettingsDataclassConfigurationViewController

- (id)accountDescriptionForFirstTimeSetup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  settingsPlistName = [(CalDAVSettingsDataclassConfigurationViewController *)self settingsPlistName];
  v5 = [v3 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_8298 table:settingsPlistName];

  return v5;
}

@end
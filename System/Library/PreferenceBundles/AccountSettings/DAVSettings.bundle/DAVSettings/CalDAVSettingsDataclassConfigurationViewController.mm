@interface CalDAVSettingsDataclassConfigurationViewController
- (id)accountDescriptionForFirstTimeSetup;
@end

@implementation CalDAVSettingsDataclassConfigurationViewController

- (id)accountDescriptionForFirstTimeSetup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(CalDAVSettingsDataclassConfigurationViewController *)self settingsPlistName];
  v5 = [v3 localizedStringForKey:@"NEW_ACCOUNT_SETTINGS" value:&stru_8298 table:v4];

  return v5;
}

@end
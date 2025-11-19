@interface MapsSettingsTransitController
- (BOOL)_isModeDisabled:(unint64_t)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_configureCell:(id)a3 forTransitSpecifier:(id)a4;
- (void)_toggleMode:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MapsSettingsTransitController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MapsSettingsTransitController;
  [(MapsSettingsTransitController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v4 = [v3 localizedStringForKey:@"Transit Label [Settings]" value:@"localized string not found" table:0];

  [(MapsSettingsTransitController *)self setTitle:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MapsSettingsTransitController;
  [(MapsSettingsTransitController *)&v9 viewDidAppear:a3];
  v4 = MapsSettingsTransitTitle();
  v5 = AppsSettingsTitle();
  v10[0] = v5;
  v6 = MapsSettingsRootTitle();
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Maps/TransitLinkPreferenceID"];
  [(MapsSettingsTransitController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Maps" title:v4 localizedNavigationComponents:v7 deepLink:v8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = MapsSettingsTransitController;
  v6 = a4;
  [(MapsSettingsTransitController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(MapsSettingsTransitController *)self indexForIndexPath:v6, v11.receiver, v11.super_class];

  v8 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndexedSubscript:v7];
  v9 = [v8 propertyForKey:PSValueKey];
  v10 = v9;
  if (v9)
  {
    -[MapsSettingsTransitController _toggleMode:](self, "_toggleMode:", [v9 integerValue]);
    [(MapsSettingsTransitController *)self reloadSpecifiers];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = MapsSettingsTransitController;
  v6 = a4;
  v7 = [(MapsSettingsTransitController *)&v11 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(MapsSettingsTransitController *)self indexForIndexPath:v6, v11.receiver, v11.super_class];

  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndexedSubscript:v8];
  [(MapsSettingsTransitController *)self _configureCell:v7 forTransitSpecifier:v9];

  return v7;
}

- (void)_configureCell:(id)a3 forTransitSpecifier:(id)a4
{
  v5 = PSValueKey;
  v6 = a3;
  v13 = [a4 propertyForKey:v5];
  v7 = [v13 integerValue];
  v8 = [MapsSettings valueForDefaultsKey:@"DefaultDisabledTransitModesKey"];
  v9 = [v8 integerValue] & 0xF;

  if (v13)
  {
    v10 = (v9 ^ v7) == 15;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  if (v10)
  {
    v12 = +[UIColor grayColor];
    [v6 setTintColor:v12];
  }

  else
  {
    [v6 setTintColor:0];
  }

  [v6 setUserInteractionEnabled:v11];
}

- (BOOL)_isModeDisabled:(unint64_t)a3
{
  v4 = [MapsSettings valueForDefaultsKey:@"DefaultDisabledTransitModesKey"];
  v5 = [v4 integerValue];

  return [TransitPreferences isModeDisabled:a3 inModes:v5 & 0xF];
}

- (void)_toggleMode:(unint64_t)a3
{
  v4 = [MapsSettings valueForDefaultsKey:@"DefaultDisabledTransitModesKey"];
  v5 = [v4 integerValue];

  v6 = [NSNumber numberWithUnsignedInteger:[TransitPreferences disabledModesByTogglingMode:a3 inModes:v5 & 0xF]];
  [MapsSettings setValue:v6 forDefaultsKey:@"DefaultDisabledTransitModesKey" bundleID:0 syncToNano:1];
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[TransitPreferencesText headerTextForDisabledModes];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:0 edit:0];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v6 = +[TransitPreferencesText footerTextForDisabledModes];
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v5];
  if (qword_96CC8 != -1)
  {
    sub_3B570();
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = qword_96CC0;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = v5;
    v9 = 0;
    v28 = *v30;
    v27 = PSIconImageKey;
    v26 = PSValueKey;
    v10 = PSAccessoryKey;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v29 + 1) + 8 * v11) integerValue];
        v14 = v13;
        if ((v13 - 1) > 7)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_7FDD0[(v13 - 1)];
        }

        v16 = [NSBundle bundleForClass:objc_opt_class()];
        v17 = [UIImage imageNamed:v15 inBundle:v16];

        v18 = MapsTransitModesLocalizedLongNameForIndividualMode(v14);
        v9 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:0 cell:3 edit:0];

        [v9 setProperty:v17 forKey:v27];
        v19 = [NSNumber numberWithUnsignedInteger:v14];
        [v9 setProperty:v19 forKey:v26];

        if ([(MapsSettingsTransitController *)self _isModeDisabled:v14])
        {
          v20 = &off_8B578;
        }

        else
        {
          v20 = &off_8B590;
        }

        [v9 setProperty:v20 forKey:v10];
        [v3 addObject:v9];

        v11 = v11 + 1;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);

    v5 = v24;
  }

  v21 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
  v22 = [v21 localizedStringForKey:@"Transit" value:@"localized string not found" table:0];

  [(MapsSettingsTransitController *)self setSpecifiers:v3];

  return v3;
}

@end
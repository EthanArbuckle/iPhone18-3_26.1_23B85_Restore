@interface AMAlwaysOnDisplaySettingsViewController
- (BOOL)_isMotionToWakeAllowed;
- (BOOL)_isNightModeRequired;
- (id)_ambientDefaults;
- (id)_ambientFeatureName;
- (id)_motionToWakeSpecifierGroup;
- (id)_nightModeEnabled:(id)enabled;
- (id)specifiers;
- (void)_updateSpecifiersFromPreferences;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AMAlwaysOnDisplaySettingsViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AMAlwaysOnDisplaySettingsViewController;
  [(AMAlwaysOnDisplaySettingsViewController *)&v5 viewDidLoad];
  v3 = AMAmbientSettingsBundle();
  v4 = [v3 localizedStringForKey:@"ALWAYS_ON_DISPLAY_OPTIONS" value:&stru_86A0 table:@"AmbientSettings"];
  [(AMAlwaysOnDisplaySettingsViewController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v39 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    v5 = AMAmbientSettingsBundle();
    v6 = [v5 localizedStringForKey:@"TURN_DISPLAY_OFF_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    v7 = [PSSpecifier groupSpecifierWithID:@"ALWAYS_ON_DISPLAY_MODE" name:v6];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    objc_storeStrong(&self->_modeGroupSpecifier, v7);
    v38 = v7;
    [v4 addObject:v7];
    v8 = AMAmbientSettingsBundle();
    v9 = [v8 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_AUTOMATICALLY" value:&stru_86A0 table:@"AmbientSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v11 = PSIDKey;
    [v10 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_AUTOMATICALLY" forKey:PSIDKey];
    objc_storeStrong(&self->_modeAutomaticallySpecifier, v10);
    v37 = v10;
    [v4 addObject:v10];
    v12 = AMAmbientSettingsBundle();
    v13 = [v12 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_AFTER_IDLE" value:&stru_86A0 table:@"AmbientSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_AFTER_IDLE" forKey:v11];
    objc_storeStrong(&self->_modeAfterIdleSpecifier, v14);
    v36 = v14;
    [v4 addObject:v14];
    v15 = AMAmbientSettingsBundle();
    v16 = [v15 localizedStringForKey:@"ALWAYS_ON_DISPLAY_TURN_OFF_NEVER" value:&stru_86A0 table:@"AmbientSettings"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setProperty:@"ALWAYS_ON_DISPLAY_TURN_OFF_NEVER" forKey:v11];
    objc_storeStrong(&self->_modeNeverSpecifier, v17);
    [v4 addObject:v17];
    v18 = AMAmbientSettingsBundle();
    v19 = [v18 localizedStringForKey:@"AT_NIGHT_GROUP_HEADER" value:&stru_86A0 table:@"AmbientSettings"];
    v20 = [PSSpecifier groupSpecifierWithID:@"AT_NIGHT" name:v19];

    v21 = AMAmbientSettingsBundle();
    v22 = [v21 localizedStringForKey:@"NIGHT_MODE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
    _ambientFeatureName = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientFeatureName];
    v24 = [NSString stringWithFormat:v22, _ambientFeatureName];
    [v20 setProperty:v24 forKey:PSFooterTextGroupKey];

    v35 = v20;
    [v4 addObject:v20];
    v25 = AMAmbientSettingsBundle();
    v26 = [v25 localizedStringForKey:@"NIGHT_MODE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setPreferenceValue:specifier:" get:"_nightModeEnabled:" detail:0 cell:6 edit:0];

    [v27 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v27 setProperty:@"NIGHT_MODE_ENABLED" forKey:v11];
    [v27 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
    [v27 setProperty:@"AMNightModeEnabled" forKey:PSKeyNameKey];
    [v27 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
    objc_storeStrong(&self->_nightModeEnabledSpecifier, v27);
    [v4 addObject:v27];
    if ([(AMAlwaysOnDisplaySettingsViewController *)self _isMotionToWakeAllowed])
    {
      _motionToWakeSpecifierGroup = [(AMAlwaysOnDisplaySettingsViewController *)self _motionToWakeSpecifierGroup];
      [v4 addObjectsFromArray:_motionToWakeSpecifierGroup];
    }

    objc_storeStrong(&self->PSListController_opaque[v39], v4);
    [(AMAlwaysOnDisplaySettingsViewController *)self _updateSpecifiersFromPreferences];
    [(BSDefaultObserver *)self->_observerToken invalidate];
    _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
    objc_initWeak(&location, self);
    v30 = [NSString stringWithUTF8String:"alwaysOnMode"];
    v31 = &_dispatch_main_q;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1EFC;
    v40[3] = &unk_84F0;
    objc_copyWeak(&v41, &location);
    v32 = [_ambientDefaults observeDefault:v30 onQueue:&_dispatch_main_q withBlock:v40];
    observerToken = self->_observerToken;
    self->_observerToken = v32;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);

    v3 = *&self->PSListController_opaque[v39];
  }

  return v3;
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_observerToken invalidate];
  v3.receiver = self;
  v3.super_class = AMAlwaysOnDisplaySettingsViewController;
  [(AMAlwaysOnDisplaySettingsViewController *)&v3 dealloc];
}

- (id)_motionToWakeSpecifierGroup
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"MOTION_TO_WAKE_GROUP"];
  v5 = AMAmbientSettingsBundle();
  v6 = [v5 localizedStringForKey:@"MOTION_TO_WAKE_ENABLED_FOOTER" value:&stru_86A0 table:@"AmbientSettings"];
  _ambientFeatureName = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientFeatureName];
  v8 = [NSString stringWithFormat:v6, _ambientFeatureName];
  [v4 setProperty:v8 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  v9 = AMAmbientSettingsBundle();
  v10 = [v9 localizedStringForKey:@"MOTION_TO_WAKE_ENABLED" value:&stru_86A0 table:@"AmbientSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  [v11 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v11 setProperty:@"MOTION_TO_WAKE_ENABLED" forKey:PSIDKey];
  [v11 setProperty:@"com.apple.ambient" forKey:PSDefaultsKey];
  [v11 setProperty:@"AMMotionToWakeEnabled" forKey:PSKeyNameKey];
  [v11 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
  [v3 addObject:v11];

  return v3;
}

- (void)_updateSpecifiersFromPreferences
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  alwaysOnMode = [_ambientDefaults alwaysOnMode];

  if (alwaysOnMode > 2)
  {
    v7 = 0;
    v6 = &stru_86A0;
  }

  else
  {
    v5 = off_8530[alwaysOnMode];
    v6 = off_8548[alwaysOnMode];
    v7 = *&self->PSListController_opaque[*v5];
  }

  v14 = v7;
  [(PSSpecifier *)self->_modeGroupSpecifier setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
  modeGroupSpecifier = self->_modeGroupSpecifier;
  v9 = AMAmbientSettingsBundle();
  v10 = [@"ALWAYS_ON_DISPLAY_TURN_OFF_FOOTER" stringByAppendingString:v6];
  v11 = [v9 localizedStringForKey:v10 value:&stru_86A0 table:@"AmbientSettings"];
  [(PSSpecifier *)modeGroupSpecifier setProperty:v11 forKey:PSFooterTextGroupKey];

  v12 = [(AMAlwaysOnDisplaySettingsViewController *)self specifierForID:@"NIGHT_MODE_ENABLED"];
  v13 = [NSNumber numberWithInt:[(AMAlwaysOnDisplaySettingsViewController *)self _isNightModeRequired]^ 1];
  [v12 setProperty:v13 forKey:PSEnabledKey];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = AMAlwaysOnDisplaySettingsViewController;
  pathCopy = path;
  [(AMAlwaysOnDisplaySettingsViewController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AMAlwaysOnDisplaySettingsViewController *)self indexForIndexPath:pathCopy, v12.receiver, v12.super_class];

  v8 = [(AMAlwaysOnDisplaySettingsViewController *)self specifierAtIndex:v7];
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v10 = _ambientDefaults;
  if (v8 == self->_modeNeverSpecifier)
  {
    v11 = 2;
    goto LABEL_7;
  }

  if (v8 == self->_modeAfterIdleSpecifier)
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (v8 == self->_modeAutomaticallySpecifier)
  {
    v11 = 1;
LABEL_7:
    [_ambientDefaults setAlwaysOnMode:v11];
  }
}

- (id)_ambientFeatureName
{
  v2 = AMAmbientSettingsBundle();
  v3 = [v2 localizedStringForKey:@"AMBIENT_FEATURE_NAME" value:&stru_86A0 table:@"AmbientSettings"];

  return v3;
}

- (id)_ambientDefaults
{
  if (qword_C7D8[0] != -1)
  {
    sub_51C4();
  }

  v3 = qword_C7D0;

  return v3;
}

- (BOOL)_isNightModeRequired
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v3 = [_ambientDefaults alwaysOnMode] == &dword_0 + 2;

  return v3;
}

- (BOOL)_isMotionToWakeAllowed
{
  _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
  v3 = [_ambientDefaults alwaysOnMode] == &dword_0 + 1 && _AXSAttentionAwarenessFeaturesEnabled() != 0;

  return v3;
}

- (id)_nightModeEnabled:(id)enabled
{
  if ([(AMAlwaysOnDisplaySettingsViewController *)self _isNightModeRequired])
  {
    v4 = [NSNumber numberWithInt:1];
  }

  else
  {
    _ambientDefaults = [(AMAlwaysOnDisplaySettingsViewController *)self _ambientDefaults];
    v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [_ambientDefaults nightModeEnabled]);
  }

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.StandBy/ALWAYS_ON_DISPLAY_OPTIONS"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"ALWAYS_ON_DISPLAY_OPTIONS" table:@"AmbientSettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"AMBIENT_FEATURE_NAME" table:@"AmbientSettings" locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(AMAlwaysOnDisplaySettingsViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.standby" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end
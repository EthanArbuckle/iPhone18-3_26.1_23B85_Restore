@interface FitnessSettingsController
- (id)specifiers;
- (void)_fitnessFocusModeActionForSpecifier:(id)a3;
- (void)_fitnessPlusActionForSpecifier:(id)a3;
- (void)_fitnessPrivacyActionForSpecifier:(id)a3;
- (void)_moreControlsWatchAppActionForSpecifier:(id)a3;
- (void)_workoutControlsActionForSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation FitnessSettingsController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FitnessSettingsController;
  [(FitnessSettingsController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(CHSeymourContentAvailabilityProvider);
  seymourContentAvailabilityProvider = self->_seymourContentAvailabilityProvider;
  self->_seymourContentAvailabilityProvider = v3;

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"FITNESS" value:&stru_2A080 table:@"Localizable"];
  [(FitnessSettingsController *)self setTitle:v6];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_19;
  }

  v47 = OBJC_IVAR___PSListController__specifiers;
  v4 = +[NSMutableArray array];
  v5 = [(FitnessSettingsController *)self appPolicy];

  if (!v5)
  {
    v6 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.Fitness"];
    [(FitnessSettingsController *)self setAppPolicy:v6];

    v7 = [(FitnessSettingsController *)self appPolicy];
    [v7 setDelegate:self];
  }

  v8 = [(FitnessSettingsController *)self appPolicy];
  v9 = [v8 specifiersForPolicyOptions:0x10000818001 force:0];

  v46 = v9;
  [v4 addObjectsFromArray:v9];
  v10 = [PSSpecifier groupSpecifierWithName:&stru_2A080];
  if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (!v12)
    {
      [v4 addObject:v10];
      v13 = [PSSpecifier alloc];
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"WORKOUT_CONTROLS" value:&stru_2A080 table:@"Localizable-Kahana"];
      v16 = [v13 initWithName:v15 target:self set:0 get:0 detail:0 cell:1 edit:0];

      [v16 setButtonAction:"_workoutControlsActionForSpecifier:"];
      [v16 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
      [v4 addObject:v16];

      if (!self->_isFitnessPlusStorefrontContentAvailable)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!self->_isFitnessPlusStorefrontContentAvailable)
    {
      goto LABEL_13;
    }

LABEL_10:
    [v4 addObject:v10];
LABEL_12:
    v17 = [PSSpecifier alloc];
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FITNESS_PLUS_WORKOUTS" value:&stru_2A080 table:@"Localizable-Dubbing"];
    v20 = [v17 initWithName:v19 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v20 setButtonAction:"_fitnessPlusActionForSpecifier:"];
    [v20 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v4 addObject:v20];

    goto LABEL_13;
  }

  if (self->_isFitnessPlusStorefrontContentAvailable)
  {
    goto LABEL_10;
  }

LABEL_13:
  v45 = v10;
  v44 = [PSSpecifier groupSpecifierWithName:&stru_2A080];
  [v4 addObject:?];
  v21 = [PSSpecifier alloc];
  v22 = [NSBundle bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"FITNESS_FOCUS_MODE" value:&stru_2A080 table:@"Localizable"];
  v24 = [v21 initWithName:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v24 setButtonAction:"_fitnessFocusModeActionForSpecifier:"];
  v25 = PSEnabledKey;
  [v24 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  v43 = v24;
  [v4 addObject:v24];
  if ((_os_feature_enabled_impl() & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v26 = FIGetActivePairedDevice();
    if (v26)
    {
      v27 = [PSSpecifier groupSpecifierWithName:&stru_2A080];
      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"MORE_CONTROLS_WATCH_WORKOUT_SETTINGS_FOOTER" value:&stru_2A080 table:@"Localizable-Kahana"];
      [v27 setProperty:v29 forKey:PSFooterTextGroupKey];

      [v4 addObject:v27];
      v30 = [PSSpecifier alloc];
      v31 = [NSBundle bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"MORE_CONTROLS_WATCH_WORKOUT_SETTINGS" value:&stru_2A080 table:@"Localizable-Kahana"];
      v33 = [v30 initWithName:v32 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v33 setButtonAction:"_moreControlsWatchAppActionForSpecifier:"];
      [v33 setProperty:&__kCFBooleanTrue forKey:v25];
      [v4 addObject:v33];
    }
  }

  v34 = [NSBundle bundleForClass:objc_opt_class()];
  v35 = [v34 localizedStringForKey:@"FITNESS_PRIVACY_TITLE" value:&stru_2A080 table:@"Localizable"];
  v36 = [PSSpecifier groupSpecifierWithName:v35];

  [v4 addObject:v36];
  v37 = [PSSpecifier alloc];
  v38 = [NSBundle bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"APPLE_FITNESS_PRIVACY" value:&stru_2A080 table:@"Localizable"];
  v40 = [v37 initWithName:v39 target:self set:0 get:0 detail:0 cell:1 edit:0];

  [v40 setButtonAction:"_fitnessPrivacyActionForSpecifier:"];
  [v40 setProperty:&__kCFBooleanTrue forKey:v25];
  [v4 addObject:v40];
  v41 = *&self->PSListController_opaque[v47];
  *&self->PSListController_opaque[v47] = v4;

  v3 = *&self->PSListController_opaque[v47];
LABEL_19:

  return v3;
}

- (void)_workoutControlsActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(FitnessSettingsController *)self traitCollection];
  [(FitnessSettingsController *)self pushWorkoutControlsWithTraitCollection:v5 specifier:v4];
}

- (void)_fitnessPlusActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(FitnessSettingsController *)self traitCollection];
  [(FitnessSettingsController *)self pushFitnessPlusWithTraitCollection:v5 specifier:v4];
}

- (void)_fitnessPrivacyActionForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(FitnessSettingsController *)self traitCollection];
  [(FitnessSettingsController *)self pushFitnessPrivacyWithTraitCollection:v5 specifier:v4];
}

- (void)_fitnessFocusModeActionForSpecifier:(id)a3
{
  v3 = objc_alloc_init(NSURLComponents);
  [v3 setScheme:@"settings-navigation"];
  [v3 setHost:@"com.apple.Settings.Focus"];
  [v3 setPath:@"/com.apple.donotdisturb.mode.workout"];
  v4 = [v3 URL];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Opening deeplink to fitness focus mode. url=%@", &v6, 0xCu);
  }

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  [v5 openSensitiveURL:v4 withOptions:0];
}

- (void)_moreControlsWatchAppActionForSpecifier:(id)a3
{
  v3 = [NSURL URLWithString:@"bridge:root=com.apple.SessionTrackerAppSettings"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Opening deeplink to Watch > Workout. url=%@", &v5, 0xCu);
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:v3 withOptions:0];
}

@end
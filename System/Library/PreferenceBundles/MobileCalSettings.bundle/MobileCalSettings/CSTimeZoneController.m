@interface CSTimeZoneController
- (BOOL)_timeZoneSupportEnabled;
- (id)calendarTimeZone:(id)a3;
- (id)specifiers;
- (id)timeZoneSupportEnabled:(id)a3;
- (void)loadTimeZoneController:(id)a3;
- (void)setCalendarTimeZone:(id)a3 specifier:(id)a4;
- (void)setTimeZoneSupportEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CSTimeZoneController

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = CSTimeZoneController;
  [(CSTimeZoneController *)&v16 viewDidAppear:a3];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/timeZoneOverride"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Time Zone Override" table:@"MobileCalSettings" locale:v6 bundleURL:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:v13];

  v17 = v14;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [(CSTimeZoneController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];
}

- (BOOL)_timeZoneSupportEnabled
{
  v2 = CalCopyDefaultTimeZoneSetting();
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (void)setTimeZoneSupportEnabled:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  self->_timeZoneSupportEnabled = v5;
  if (v5)
  {
    v6 = PSCityForSpecifier();
    if (v6)
    {
      [(CSTimeZoneController *)self setCalendarTimeZone:v6 specifier:self->_calendarTimeZoneSpecifier];
    }

    else
    {
      v8 = +[NSTimeZone systemTimeZone];
      [(CSTimeZoneController *)self setCalendarTimeZone:v8 specifier:self->_calendarTimeZoneSpecifier];
    }

    calendarTimeZoneSpecifier = self->_calendarTimeZoneSpecifier;
    v10 = [NSNumber numberWithBool:1];
    [(PSSpecifier *)calendarTimeZoneSpecifier setProperty:v10 forKey:PSEnabledKey];
  }

  else
  {
    CalSetDefaultTimeZone();
    v7 = self->_calendarTimeZoneSpecifier;
    v6 = [NSNumber numberWithBool:0];
    [(PSSpecifier *)v7 setProperty:v6 forKey:PSEnabledKey];
  }

  [(CSTimeZoneController *)self reloadSpecifier:self->_calendarTimeZoneSpecifier];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (id)timeZoneSupportEnabled:(id)a3
{
  v4 = [(CSTimeZoneController *)self _timeZoneSupportEnabled];
  self->_timeZoneSupportEnabled = v4;

  return [NSNumber numberWithBool:v4];
}

- (id)calendarTimeZone:(id)a3
{
  v3 = a3;
  v4 = CalCopyDefaultTimeZoneSetting();
  if (v4)
  {
    v5 = v4;
    v6 = PSCityForSpecifier();
    if (v6 || (PSCityForTimeZone(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [v6 name];
    }

    else
    {
      v8 = CFTimeZoneGetName(v5);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"Time Zone Region Off" value:@"Off" table:@"MobileCalSettings"];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_210B8;
  }

  v11 = v10;

  return v10;
}

- (void)setCalendarTimeZone:(id)a3 specifier:(id)a4
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_14;
  }

  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v12;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = [[ALCity alloc] initWithProperties:v12];
  }

  v7 = v6;
LABEL_8:
  v8 = [v7 timeZone];

  if (v8)
  {
    v9 = [v7 timeZone];
    v10 = CFTimeZoneCreateWithName(0, v9, 0);

    if (v10)
    {
      CalSetDefaultTimeZone();
      CFRelease(v10);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CalSetDefaultTimeZone();
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];

  v5 = v12;
LABEL_14:
}

- (void)loadTimeZoneController:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setSpecifier:v4];

  [v5 setParentController:self];
  [(CSTimeZoneController *)self showController:v5 animate:1];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v30 = objc_alloc_init(NSMutableArray);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = @"Time Zone Override Cell Title (iPad)";
    }

    else
    {
      v8 = @"Time Zone Override Cell Title";
    }

    v27 = v5;
    v29 = [v5 localizedStringForKey:v8 value:@"Time Zone Override" table:@"MobileCalSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:"setTimeZoneSupportEnabled:specifier:" get:"timeZoneSupportEnabled:" detail:0 cell:6 edit:0];
    timeZoneSupportSpecifier = self->_timeZoneSupportSpecifier;
    self->_timeZoneSupportSpecifier = v9;

    v28 = PSKeyNameKey;
    [(PSSpecifier *)self->_timeZoneSupportSpecifier setProperty:@"ViewedTimeZoneAutomatic" forKey:?];
    v11 = PSDefaultsKey;
    [(PSSpecifier *)self->_timeZoneSupportSpecifier setProperty:@"com.apple.mobilecal" forKey:PSDefaultsKey];
    v12 = self->_timeZoneSupportSpecifier;
    v13 = [NSNumber numberWithBool:0];
    [(PSSpecifier *)v12 setProperty:v13 forKey:PSDefaultValueKey];

    [v30 addObject:self->_timeZoneSupportSpecifier];
    v14 = +[PSSpecifier emptyGroupSpecifier];
    [v30 addObject:v14];
    v15 = +[UIDevice currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v17 = @"Calendar Time Zone (iPad)";
    }

    else
    {
      v17 = @"Calendar Time Zone";
    }

    v18 = [v5 localizedStringForKey:v17 value:@"Time Zone" table:@"MobileCalSettings"];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setCalendarTimeZone:specifier:" get:"calendarTimeZone:" detail:objc_opt_class() cell:2 edit:0];
    calendarTimeZoneSpecifier = self->_calendarTimeZoneSpecifier;
    self->_calendarTimeZoneSpecifier = v19;

    [(PSSpecifier *)self->_calendarTimeZoneSpecifier setProperty:kCalTimeZoneCityArrayPrefKey forKey:v28];
    [(PSSpecifier *)self->_calendarTimeZoneSpecifier setProperty:@"com.apple.mobilecal" forKey:v11];
    v21 = self->_calendarTimeZoneSpecifier;
    v22 = [NSNumber numberWithBool:[(CSTimeZoneController *)self _timeZoneSupportEnabled]];
    [(PSSpecifier *)v21 setProperty:v22 forKey:PSEnabledKey];

    [(PSSpecifier *)self->_calendarTimeZoneSpecifier setControllerLoadAction:"loadTimeZoneController:"];
    [v30 addObject:self->_calendarTimeZoneSpecifier];
    v23 = [v27 localizedStringForKey:@"Time Zone Override Text" value:@"The Time Zone Override always shows event dates and times in the selected time zone.\n\nWhen off table:{events will display according to the time zone of your current location.", @"MobileCalSettings"}];
    [v14 setProperty:v23 forKey:PSFooterTextGroupKey];

    v24 = [(CSTimeZoneController *)self timeZoneSupportEnabled:self->_timeZoneSupportSpecifier];
    v25 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v30;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end
@interface CSWeekStartController
- (id)specifiers;
- (void)showLanguageAndRegionSettings:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CSWeekStartController

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = CSWeekStartController;
  [(CSWeekStartController *)&v17 viewDidAppear:a3];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilecal/startWeekOn"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Start Week On" table:@"MobileCalSettings" locale:v6 bundleURL:v8];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Calendar" table:@"MobileCalSettings" locale:v11 bundleURL:v13];

  v18 = v14;
  v15 = [NSArray arrayWithObjects:&v18 count:1];
  [(CSWeekStartController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilecal" title:v9 localizedNavigationComponents:v15 deepLink:v4];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_weekStartChanged" name:CUIKPreferencesNotification_WeekStart object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CSWeekStartController;
  [(CSWeekStartController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CUIKPreferencesNotification_WeekStart object:0];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v46 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[CUIKPreferences sharedPreferences];
    v5 = [v4 weekStart];
    v47 = [v5 integerValue];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = objc_alloc_init(NSMutableArray);
    v8 = [v6 localizedStringForKey:@"Mirror System Setting" value:&stru_210B8 table:@"MobileCalSettings"];
    v9 = [PSSpecifier groupSpecifierWithName:v8];
    systemWeekStartGroup = self->_systemWeekStartGroup;
    self->_systemWeekStartGroup = v9;

    v45 = PSIsRadioGroupKey;
    [(PSSpecifier *)self->_systemWeekStartGroup setProperty:&__kCFBooleanTrue forKey:?];
    v11 = self->_systemWeekStartGroup;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(PSSpecifier *)v11 setProperty:v13 forKey:PSFooterCellClassGroupKey];

    v14 = [v6 localizedStringForKey:@"When selected value:Calendar will use the setting from %@." table:{&stru_210B8, @"MobileCalSettings"}];
    v15 = [v6 localizedStringForKey:@"Language & Region" value:&stru_210B8 table:@"MobileCalSettings"];
    v44 = v14;
    v16 = [NSString localizedStringWithFormat:v14, v15];
    [(PSSpecifier *)self->_systemWeekStartGroup setProperty:v16 forKey:PSFooterHyperlinkViewTitleKey];
    v42 = v16;
    v43 = v15;
    v49.location = [v16 rangeOfString:v15];
    v17 = self->_systemWeekStartGroup;
    v18 = NSStringFromRange(v49);
    [(PSSpecifier *)v17 setProperty:v18 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v19 = self->_systemWeekStartGroup;
    v20 = [NSValue valueWithNonretainedObject:self];
    [(PSSpecifier *)v19 setProperty:v20 forKey:PSFooterHyperlinkViewTargetKey];

    [(PSSpecifier *)self->_systemWeekStartGroup setProperty:@"showLanguageAndRegionSettings:" forKey:PSFooterHyperlinkViewActionKey];
    [v7 addObject:self->_systemWeekStartGroup];
    v21 = +[NSCalendar currentCalendar];
    v22 = [v6 localizedStringForKey:@"System Setting (%@)" value:&stru_210B8 table:@"MobileCalSettings"];
    v41 = v21;
    [v21 firstWeekday];
    v23 = CUIKStringForDayOfWeek();
    v40 = v22;
    v24 = [NSString localizedStringWithFormat:v22, v23];

    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    systemWeekStartItem = self->_systemWeekStartItem;
    self->_systemWeekStartItem = v25;

    v27 = PSRadioGroupCheckedSpecifierKey;
    if (!v47)
    {
      [(PSSpecifier *)self->_systemWeekStartGroup setProperty:self->_systemWeekStartItem forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [v7 addObject:self->_systemWeekStartItem];
    v28 = [v6 localizedStringForKey:@"Calendar App Only" value:&stru_210B8 table:@"MobileCalSettings"];
    v29 = [PSSpecifier groupSpecifierWithName:v28];
    customWeekStartGroup = self->_customWeekStartGroup;
    self->_customWeekStartGroup = v29;

    [(PSSpecifier *)self->_customWeekStartGroup setProperty:&__kCFBooleanTrue forKey:v45];
    v31 = self->_customWeekStartGroup;
    v32 = [v6 localizedStringForKey:@"This setting will apply in Calendar only. Other apps will use the system setting." value:&stru_210B8 table:@"MobileCalSettings"];
    [(PSSpecifier *)v31 setProperty:v32 forKey:PSFooterTextGroupKey];

    [v7 addObject:self->_customWeekStartGroup];
    v33 = [NSMutableArray arrayWithCapacity:7];
    customWeekStartItems = self->_customWeekStartItems;
    self->_customWeekStartItems = v33;

    v35 = 0;
    do
    {
      v36 = CUIKStringForDayOfWeek();
      v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:0 set:0 get:0 detail:0 cell:3 edit:0];

      if (v47 - 1 == v35)
      {
        [(PSSpecifier *)self->_customWeekStartGroup setProperty:v37 forKey:v27];
      }

      ++v35;
      [v7 addObject:v37];
      [(NSMutableArray *)self->_customWeekStartItems addObject:v37];
    }

    while (v35 != &dword_4 + 3);
    v38 = *&self->PSListController_opaque[v46];
    *&self->PSListController_opaque[v46] = v7;

    v3 = *&self->PSListController_opaque[v46];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = CSWeekStartController;
  [(CSWeekStartController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(CSWeekStartController *)self indexPathForSpecifier:self->_systemWeekStartItem];
  v8 = [v7 section];

  v9 = [(NSMutableArray *)self->_customWeekStartItems firstObject];
  v10 = [(CSWeekStartController *)self indexPathForSpecifier:v9];
  v11 = [v10 section];

  if ([v6 section] == v8)
  {
    v12 = +[CUIKPreferences sharedPreferences];
    v13 = [v6 row];
LABEL_5:
    v14 = [NSNumber numberWithInteger:v13];
    [v12 setWeekStart:v14];

    goto LABEL_6;
  }

  if ([v6 section] == v11)
  {
    v12 = +[CUIKPreferences sharedPreferences];
    v13 = [v6 row] + 1;
    goto LABEL_5;
  }

LABEL_6:
  [(CSWeekStartController *)self reloadSpecifiers];
}

- (void)showLanguageAndRegionSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=General&path=INTERNATIONAL"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

@end
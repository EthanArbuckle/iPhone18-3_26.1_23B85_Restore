@interface ICBSettingsController
+ (id)localizedDescriptionForStyle:(BOOL)a3;
+ (id)localizedStringForKey:(id)a3;
+ (id)shortTextForCurrentSelection;
- (id)specifiers;
- (int64_t)controllerParent;
- (void)emitNavigationEvent;
- (void)loadDataSource;
- (void)refreshGroupForSpecifier:(id)a3;
- (void)setGroupAliasLabelText;
- (void)setGroupFooterText;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ICBSettingsController

+ (id)shortTextForCurrentSelection
{
  v3 = +[ICSPreferences sharedPreferences];
  v4 = [a1 localizedDescriptionForStyle:{objc_msgSend(v3, "hasBannersEnabled")}];

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v21 = [v3 initWithKey:@"Apps" table:0 locale:v4 bundleURL:v6];

  v7 = [[NSMutableArray alloc] initWithObjects:{v21, 0}];
  if ([(ICBSettingsController *)self controllerParent])
  {
    if ([(ICBSettingsController *)self controllerParent]!= &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v8 = [_NSLocalizedStringResource alloc];
    v9 = +[NSLocale currentLocale];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 bundleURL];
    v12 = [v8 initWithKey:@"FaceTime" table:0 locale:v9 bundleURL:v11];
    [v7 addObject:v12];

    v13 = @"com.apple.facetime";
  }

  else
  {
    v9 = TUResolvedPhoneResource();
    [v7 addObject:v9];
    v13 = @"com.apple.mobilephone";
  }

  v14 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/%@/%@", v13, @"INCOMING_CALL_STYLE"];
  v15 = [NSURL URLWithString:v14];
  v16 = [_NSLocalizedStringResource alloc];
  v17 = +[NSLocale currentLocale];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 bundleURL];
  v20 = [v16 initWithKey:@"Incoming Calls" table:0 locale:v17 bundleURL:v19];

  [(ICBSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v13 title:v20 localizedNavigationComponents:v7 deepLink:v15];
LABEL_6:
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ICBSettingsController *)self loadSpecifiersFromPlistName:@"ICBSettingsBundle" target:self];
    if ([v5 count])
    {
      v6 = [v5 copy];
      v7 = *&self->PSListController_opaque[v3];
      *&self->PSListController_opaque[v3] = v6;

      v8 = [*&self->PSListController_opaque[v3] specifierForID:@"INCOMING_CALL_STYLE_GROUP_ID"];
      [(ICBSettingsController *)self setGroupSpecifier:v8];

      v9 = [*&self->PSListController_opaque[v3] specifierForID:@"INCOMING_CALL_STYLE_LIST_ITEM_ID_BANNER"];
      [(ICBSettingsController *)self setBannerSpecifier:v9];

      v10 = [*&self->PSListController_opaque[v3] specifierForID:@"INCOMING_CALL_STYLE_LIST_ITEM_ID_FULL_SCREEN"];
      [(ICBSettingsController *)self setFullScreenSpecifier:v10];

      [(ICBSettingsController *)self setGroupAliasLabelText];
      [(ICBSettingsController *)self setGroupFooterText];
      [(ICBSettingsController *)self loadDataSource];
    }

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = ICBSettingsController;
  v6 = a4;
  [(ICBSettingsController *)&v9 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ICBSettingsController *)self indexForIndexPath:v6, v9.receiver, v9.super_class];

  v8 = [(ICBSettingsController *)self specifierAtIndex:v7];
  [(ICBSettingsController *)self refreshGroupForSpecifier:v8];
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_8758 table:v6];

  return v7;
}

+ (id)localizedDescriptionForStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = @"INCOMING_CALL_STYLE_LIST_BANNER";
  }

  else
  {
    v3 = @"INCOMING_CALL_STYLE_LIST_FULL_SCREEN";
  }

  v4 = [a1 localizedStringForKey:v3];

  return v4;
}

- (void)loadDataSource
{
  v3 = +[ICSPreferences sharedPreferences];
  v4 = [v3 hasBannersEnabled];

  if (v4)
  {
    [(ICBSettingsController *)self bannerSpecifier];
  }

  else
  {
    [(ICBSettingsController *)self fullScreenSpecifier];
  }
  v6 = ;
  v5 = [(ICBSettingsController *)self groupSpecifier];
  [v5 setProperty:v6 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)setGroupAliasLabelText
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 deviceType];

  if (v4 == &dword_0 + 3)
  {
    v5 = objc_opt_class();
    v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPOD";
  }

  else
  {
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = [v7 deviceType];

    v5 = objc_opt_class();
    if (v8 == &dword_4)
    {
      v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPAD";
    }

    else
    {
      v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPHONE";
    }
  }

  v11 = [v5 localizedStringForKey:v6];
  v9 = [(ICBSettingsController *)self groupSpecifier];
  [v9 setProperty:v11 forKey:PSTitleKey];

  v10 = [(ICBSettingsController *)self groupSpecifier];
  [v10 setName:v11];
}

- (void)setGroupFooterText
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 deviceType];

  if (v4 == &dword_0 + 2)
  {
    v5 = [(ICBSettingsController *)self controllerParent];
    v6 = objc_opt_class();
    if (v5 == 1)
    {
      v7 = @"INCOMING_CALL_STYLE_FACETIME_FOOTER_IPHONE";
    }

    else
    {
      v7 = @"INCOMING_CALL_STYLE_PHONE_FOOTER_IPHONE";
    }
  }

  else
  {
    v6 = objc_opt_class();
    v7 = @"INCOMING_CALL_STYLE_FACETIME_FOOTER_OTHER";
  }

  v9 = [v6 localizedStringForKey:v7];
  v8 = [(ICBSettingsController *)self groupSpecifier];
  [v8 setProperty:v9 forKey:PSFooterTextGroupKey];
}

- (void)refreshGroupForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(ICBSettingsController *)self bannerSpecifier];

  v6 = [(ICBSettingsController *)self groupSpecifier];
  [(ICBSettingsController *)self reloadSpecifier:v6];

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v5 == v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "setting hasBannersEnabled to %d", v9, 8u);
  }

  v8 = +[ICSPreferences sharedPreferences];
  [v8 setHasBannersEnabled:v5 == v4];
}

- (int64_t)controllerParent
{
  v2 = [(ICBSettingsController *)self specifier];
  v3 = [v2 target];
  v4 = [v3 parentListController];
  v5 = [v4 specifierID];
  v6 = [v5 isEqualToString:@"com.apple.preferences.facetime"];

  return v6;
}

@end
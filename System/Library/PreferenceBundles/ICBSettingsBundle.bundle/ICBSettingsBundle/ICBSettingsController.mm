@interface ICBSettingsController
+ (id)localizedDescriptionForStyle:(BOOL)style;
+ (id)localizedStringForKey:(id)key;
+ (id)shortTextForCurrentSelection;
- (id)specifiers;
- (int64_t)controllerParent;
- (void)emitNavigationEvent;
- (void)loadDataSource;
- (void)refreshGroupForSpecifier:(id)specifier;
- (void)setGroupAliasLabelText;
- (void)setGroupFooterText;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ICBSettingsController

+ (id)shortTextForCurrentSelection
{
  v3 = +[ICSPreferences sharedPreferences];
  v4 = [self localizedDescriptionForStyle:{objc_msgSend(v3, "hasBannersEnabled")}];

  return v4;
}

- (void)emitNavigationEvent
{
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v5 bundleURL];
  v21 = [v3 initWithKey:@"Apps" table:0 locale:v4 bundleURL:bundleURL];

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
    bundleURL2 = [v10 bundleURL];
    v12 = [v8 initWithKey:@"FaceTime" table:0 locale:v9 bundleURL:bundleURL2];
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
  bundleURL3 = [v18 bundleURL];
  v20 = [v16 initWithKey:@"Incoming Calls" table:0 locale:v17 bundleURL:bundleURL3];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = ICBSettingsController;
  pathCopy = path;
  [(ICBSettingsController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ICBSettingsController *)self indexForIndexPath:pathCopy, v9.receiver, v9.super_class];

  v8 = [(ICBSettingsController *)self specifierAtIndex:v7];
  [(ICBSettingsController *)self refreshGroupForSpecifier:v8];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_8758 table:localizationTableName];

  return v7;
}

+ (id)localizedDescriptionForStyle:(BOOL)style
{
  if (style)
  {
    v3 = @"INCOMING_CALL_STYLE_LIST_BANNER";
  }

  else
  {
    v3 = @"INCOMING_CALL_STYLE_LIST_FULL_SCREEN";
  }

  v4 = [self localizedStringForKey:v3];

  return v4;
}

- (void)loadDataSource
{
  v3 = +[ICSPreferences sharedPreferences];
  hasBannersEnabled = [v3 hasBannersEnabled];

  if (hasBannersEnabled)
  {
    [(ICBSettingsController *)self bannerSpecifier];
  }

  else
  {
    [(ICBSettingsController *)self fullScreenSpecifier];
  }
  v6 = ;
  groupSpecifier = [(ICBSettingsController *)self groupSpecifier];
  [groupSpecifier setProperty:v6 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)setGroupAliasLabelText
{
  v3 = +[FTDeviceSupport sharedInstance];
  deviceType = [v3 deviceType];

  if (deviceType == &dword_0 + 3)
  {
    v5 = objc_opt_class();
    v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPOD";
  }

  else
  {
    v7 = +[FTDeviceSupport sharedInstance];
    deviceType2 = [v7 deviceType];

    v5 = objc_opt_class();
    if (deviceType2 == &dword_4)
    {
      v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPAD";
    }

    else
    {
      v6 = @"INCOMING_CALL_STYLE_ALIAS_LABEL_IPHONE";
    }
  }

  v11 = [v5 localizedStringForKey:v6];
  groupSpecifier = [(ICBSettingsController *)self groupSpecifier];
  [groupSpecifier setProperty:v11 forKey:PSTitleKey];

  groupSpecifier2 = [(ICBSettingsController *)self groupSpecifier];
  [groupSpecifier2 setName:v11];
}

- (void)setGroupFooterText
{
  v3 = +[FTDeviceSupport sharedInstance];
  deviceType = [v3 deviceType];

  if (deviceType == &dword_0 + 2)
  {
    controllerParent = [(ICBSettingsController *)self controllerParent];
    v6 = objc_opt_class();
    if (controllerParent == 1)
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
  groupSpecifier = [(ICBSettingsController *)self groupSpecifier];
  [groupSpecifier setProperty:v9 forKey:PSFooterTextGroupKey];
}

- (void)refreshGroupForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bannerSpecifier = [(ICBSettingsController *)self bannerSpecifier];

  groupSpecifier = [(ICBSettingsController *)self groupSpecifier];
  [(ICBSettingsController *)self reloadSpecifier:groupSpecifier];

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = bannerSpecifier == specifierCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "setting hasBannersEnabled to %d", v9, 8u);
  }

  v8 = +[ICSPreferences sharedPreferences];
  [v8 setHasBannersEnabled:bannerSpecifier == specifierCopy];
}

- (int64_t)controllerParent
{
  specifier = [(ICBSettingsController *)self specifier];
  target = [specifier target];
  parentListController = [target parentListController];
  specifierID = [parentListController specifierID];
  v6 = [specifierID isEqualToString:@"com.apple.preferences.facetime"];

  return v6;
}

@end
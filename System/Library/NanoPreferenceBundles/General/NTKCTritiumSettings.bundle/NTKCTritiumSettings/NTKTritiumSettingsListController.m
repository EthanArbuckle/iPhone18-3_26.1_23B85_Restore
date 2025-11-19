@interface NTKTritiumSettingsListController
- (NTKTritiumSettingsListController)init;
- (id)createAppGroupSpecifier;
- (id)createHeaderSpecifiers:(BOOL)a3;
- (id)getAllComplicationsPrivate:(id)a3;
- (id)getSpecificComplicationPrivate:(id)a3;
- (id)specifiers;
- (void)dealloc;
- (void)reloadSpecifiers;
- (void)setAllComplicationsPrivate:(id)a3 specifier:(id)a4;
- (void)setSpecificComplicationPrivate:(id)a3 specifier:(id)a4;
- (void)specifiersUpdated:(id)a3;
@end

@implementation NTKTritiumSettingsListController

- (NTKTritiumSettingsListController)init
{
  v10.receiver = self;
  v10.super_class = NTKTritiumSettingsListController;
  v2 = [(NTKTritiumSettingsListController *)&v10 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TRITIUM_SETTINGS_SHOW_COMPLICATION_DATA" value:&stru_84C0 table:@"NTKTritiumSettings"];
    [(NTKTritiumSettingsListController *)v2 setTitle:v4];

    v5 = objc_alloc_init(NTKTritiumComplicationSpecifierProvider);
    specifierProvider = v2->_specifierProvider;
    v2->_specifierProvider = v5;

    [(NTKTritiumComplicationSpecifierProvider *)v2->_specifierProvider setDelegate:v2];
    loadedAppSpecifiers = v2->_loadedAppSpecifiers;
    v2->_loadedAppSpecifiers = 0;

    [(NTKTritiumComplicationSpecifierProvider *)v2->_specifierProvider updateSpecifiers];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_2904, NTKTritiumSettingsDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(NTKTritiumSettingsListController *)v2 reloadSpecifiers];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = NTKTritiumSettingsListController;
  [(NTKTritiumSettingsListController *)&v4 dealloc];
}

- (void)specifiersUpdated:(id)a3
{
  v4 = [a3 copy];
  loadedAppSpecifiers = self->_loadedAppSpecifiers;
  self->_loadedAppSpecifiers = v4;

  [(NTKTritiumSettingsListController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v4 = +[NTKTritiumDefaults sharedInstance];
  v5 = [v4 allBundleIDsPrivateInTritium];

  v6 = [(NTKTritiumSettingsListController *)self createHeaderSpecifiers:v5];
  [v3 addObjectsFromArray:v6];

  if ((v5 & 1) == 0)
  {
    v7 = [(NTKTritiumSettingsListController *)self createAppGroupSpecifier];
    [v3 addObject:v7];

    if (self->_loadedAppSpecifiers)
    {
      [v3 addObjectsFromArray:?];
    }

    else
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"TRITIUM_SETTINGS_LOADING" value:&stru_84C0 table:@"NTKTritiumSettings"];

      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:15 edit:0];
      [v3 addObject:v10];
    }
  }

  v11 = [v3 copy];
  v12 = OBJC_IVAR___PSListController__specifiers;
  v13 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v11;

  v14 = *&self->PSListController_opaque[v12];
  v15 = v14;

  return v14;
}

- (void)reloadSpecifiers
{
  v3 = +[NTKTritiumDefaults sharedInstance];
  [v3 reload];

  v4 = [(NTKTritiumSettingsListController *)self specifiers];
  v5.receiver = self;
  v5.super_class = NTKTritiumSettingsListController;
  [(NTKTritiumSettingsListController *)&v5 reloadSpecifiers];
}

- (id)createHeaderSpecifiers:(BOOL)a3
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TRITIUM_SETTINGS_SHOW_COMPLICATION_DATA" value:&stru_84C0 table:@"NTKTritiumSettings"];

  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setAllComplicationsPrivate:specifier:" get:"getAllComplicationsPrivate:" detail:0 cell:6 edit:0];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  v8 = [PSSpecifier groupSpecifierWithName:&stru_84C0];
  if (!a3)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"TRITIUM_SETTINGS_DESCRIPTION" value:&stru_84C0 table:@"NTKTritiumSettings"];

    [v8 setProperty:v10 forKey:PSFooterTextGroupKey];
  }

  v11 = objc_opt_new();
  [v11 addObject:v8];
  [v11 addObject:v7];

  return v11;
}

- (id)createAppGroupSpecifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TRITIUM_SETTINGS_APPS" value:&stru_84C0 table:@"NTKTritiumSettings"];

  v4 = [PSSpecifier groupSpecifierWithName:v3];

  return v4;
}

- (void)setAllComplicationsPrivate:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[NTKTritiumDefaults sharedInstance];
  v7 = [v5 BOOLValue];

  [v6 setAllBundleIDsPrivateInTritium:v7 ^ 1];

  [(NTKTritiumSettingsListController *)self reloadSpecifiers];
}

- (id)getAllComplicationsPrivate:(id)a3
{
  v3 = +[NTKTritiumDefaults sharedInstance];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 allBundleIDsPrivateInTritium] ^ 1);

  return v4;
}

- (void)setSpecificComplicationPrivate:(id)a3 specifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = +[NTKTritiumDefaults sharedInstance];
  v7 = [v5 userInfo];

  v8 = [NSSet setWithObject:v7];
  LODWORD(v5) = [v6 BOOLValue];

  [v9 setBundleIDs:v8 privateInTritium:v5 ^ 1];
}

- (id)getSpecificComplicationPrivate:(id)a3
{
  v3 = [a3 userInfo];
  v4 = +[NTKTritiumDefaults sharedInstance];
  v5 = [v4 isBundleIdPrivateInTritium:v3];

  if (v5)
  {
    v6 = &__kCFBooleanFalse;
  }

  else
  {
    v6 = &__kCFBooleanTrue;
  }

  return v6;
}

@end
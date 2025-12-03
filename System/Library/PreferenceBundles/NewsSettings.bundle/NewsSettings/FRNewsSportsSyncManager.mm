@interface FRNewsSportsSyncManager
- (BOOL)isEnabled;
- (FRNewsSportsSyncManager)init;
- (id)isSpecifierEnabled;
- (void)prepareUserDefaultsWithCompletion:(id)completion;
- (void)prepareUserDefaultsWithWatchlistService:(id)service completion:(id)completion;
- (void)prepareWithCompletion:(id)completion;
- (void)setSpecifierEnabled:(id)enabled specifier:(id)specifier;
- (void)sportsFavoritesService:(id)service;
@end

@implementation FRNewsSportsSyncManager

- (FRNewsSportsSyncManager)init
{
  v9.receiver = self;
  v9.super_class = FRNewsSportsSyncManager;
  v2 = [(FRNewsSportsSyncManager *)&v9 init];
  if (v2)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"SPORTS_SETTINGS_SYNC_SWITCH_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:v2 set:"setSpecifierEnabled:specifier:" get:"isSpecifierEnabled" detail:0 cell:6 edit:0];

    [v5 setObject:FCSportsFavoritesSyncSettingPreferenceKey forKeyedSubscript:PSKeyNameKey];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:PSDefaultValueKey];
    v6 = FCDefaultsSuiteName;
    [v5 setObject:FCDefaultsSuiteName forKeyedSubscript:PSDefaultsKey];
    [v5 setObject:v6 forKeyedSubscript:PSContainerBundleIDKey];
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSControlIsLoadingKey];
    specifier = v2->_specifier;
    v2->_specifier = v5;
  }

  return v2;
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = FRNewsSettingsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch preparing...", buf, 2u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1E9C;
  v7[3] = &unk_10780;
  objc_copyWeak(&v9, buf);
  v6 = completionCopy;
  v8 = v6;
  [(FRNewsSportsSyncManager *)self prepareUserDefaultsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (id)isSpecifierEnabled
{
  isEnabled = [(FRNewsSportsSyncManager *)self isEnabled];

  return [NSNumber numberWithBool:isEnabled];
}

- (void)setSpecifierEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = [FRNewsSportsSyncSetting alloc];
  bOOLValue = [enabledCopy BOOLValue];

  v8 = +[NSDate now];
  v9 = [(FRNewsSportsSyncSetting *)v6 initWithSource:0 enabled:bOOLValue dateModified:v8];

  v10 = FRNewsSettingsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch toggled to %{public}@", buf, 0xCu);
  }

  [FRNewsSportsSyncSetting updateUserDefaultsSyncSetting:v9];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2170;
  v12[3] = &unk_107D0;
  v13 = v9;
  v11 = v9;
  [(FRNewsSportsSyncManager *)self sportsFavoritesService:v12];
}

- (BOOL)isEnabled
{
  v2 = +[FRNewsSportsSyncSetting userDefaultSyncSetting];
  isEnabled = [v2 isEnabled];

  return isEnabled;
}

- (void)sportsFavoritesService:(id)service
{
  serviceCopy = service;
  v4 = +[FCAppleAccount sharedAccount];
  [v4 reloadiTunesAccount];

  v5 = +[FCAppleAccount sharedAccount];
  isUserSignedIntoiTunes = [v5 isUserSignedIntoiTunes];

  v7 = FRNewsSettingsLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isUserSignedIntoiTunes)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings sports sync has access to watchlist", buf, 2u);
    }

    v9 = objc_alloc_init(FRSportsSyncFavoritesService);
    serviceCopy[2](serviceCopy, v9);

    serviceCopy = v9;
  }

  else
  {
    if (v8)
    {
      v10[0] = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings sports sync has no access to watchlist, ignoring propagating", v10, 2u);
    }

    serviceCopy[2](serviceCopy, 0);
  }
}

- (void)prepareUserDefaultsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_25E0;
  v6[3] = &unk_107F8;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(FRNewsSportsSyncManager *)self sportsFavoritesService:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)prepareUserDefaultsWithWatchlistService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  v7 = FRNewsSettingsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Settings sports sync switch will check onboarded state with watchlist", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_27B8;
  v9[3] = &unk_10848;
  v10 = completionCopy;
  v8 = completionCopy;
  [serviceCopy fetchSyncSettingWithCompletionHandler:v9];
}

@end
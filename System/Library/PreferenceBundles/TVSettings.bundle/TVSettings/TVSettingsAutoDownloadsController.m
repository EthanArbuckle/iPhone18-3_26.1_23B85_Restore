@interface TVSettingsAutoDownloadsController
- (id)episodeCount:(id)a3;
- (id)featureEnabled:(id)a3;
- (id)specifiers;
- (id)storageLimit:(id)a3;
- (void)setEpisodeCount:(id)a3 withSpecifier:(id)a4;
- (void)setFeatureEnabled:(id)a3 specifier:(id)a4;
- (void)setStorageLimit:(id)a3 withSpecifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation TVSettingsAutoDownloadsController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TVSettingsAutoDownloadsController;
  [(TVSettingsAutoDownloadsController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"AUTO_DOWNLOADS" value:&stru_21328 table:@"TVSettings"];
  [(TVSettingsAutoDownloadsController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v29 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"AUTO_DOWNLOADS_SWITCH_TEXT" value:? table:?];
    v36 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setFeatureEnabled:specifier:" get:"featureEnabled:" detail:0 cell:6 edit:0];

    [v4 addObject:v36];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUTO_DOWNLOADS_EPISODE_COUNT_TITLE" value:&stru_21328 table:@"TVSettings"];
    v9 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos::autoDownloadsEpisodeCountGroup" name:v8];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AUTO_DOWNLOADS_EPISODE_COUNT_FOOTER" value:&stru_21328 table:@"TVSettings"];
    v35 = PSFooterTextGroupKey;
    [v9 setProperty:v11 forKey:?];

    [v4 addObject:v9];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"AUTO_DOWNLOADS_EPISODE_COUNT_TITLE" value:&stru_21328 table:@"TVSettings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"setEpisodeCount:withSpecifier:" get:"episodeCount:" detail:0 cell:5 edit:0];

    v32 = PSControlMinimumKey;
    v31 = PSControlMaximumKey;
    v39[0] = PSControlMinimumKey;
    v39[1] = PSControlMaximumKey;
    v40[0] = &off_23720;
    v40[1] = &off_23738;
    v30 = PSSliderSegmentCount;
    v39[2] = PSDefaultValueKey;
    v39[3] = PSSliderSegmentCount;
    v40[2] = &off_23720;
    v40[3] = &off_23750;
    v27 = PSSliderShowValueKey;
    v28 = PSSliderIsContinuous;
    v39[4] = PSSliderShowValueKey;
    v39[5] = PSSliderIsContinuous;
    v40[4] = &__kCFBooleanTrue;
    v40[5] = &__kCFBooleanFalse;
    v25 = PSSliderIsSegmented;
    v26 = PSSliderLocksToSegment;
    v39[6] = PSSliderIsSegmented;
    v39[7] = PSSliderLocksToSegment;
    v40[6] = &__kCFBooleanTrue;
    v40[7] = &__kCFBooleanTrue;
    v15 = PSSliderSnapsToSegment;
    v39[8] = PSSliderSnapsToSegment;
    v40[8] = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:9];
    v34 = v33 = v14;
    [v14 setProperties:v34];
    [v4 addObject:v14];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"AUTO_DOWNLOADS_STORAGE_LIMIT_TITLE" value:&stru_21328 table:@"TVSettings"];
    v18 = [PSSpecifier groupSpecifierWithID:@"com.apple.videos::autoDownloadGroupStorageGroup" name:v17];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"AUTO_DOWNLOADS_STORAGE_LIMIT_FOOTER" value:&stru_21328 table:@"TVSettings"];
    [v18 setProperty:v20 forKey:v35];

    [v4 addObject:v18];
    v21 = [PSSpecifier preferenceSpecifierNamed:@"AUTO_DOWNLOADS_STORAGE_LIMIT_TITLE" target:self set:"setStorageLimit:withSpecifier:" get:"storageLimit:" detail:0 cell:5 edit:0];
    v37[0] = v32;
    v37[1] = v31;
    v38[0] = &off_23738;
    v38[1] = &off_23768;
    v37[2] = v30;
    v37[3] = v27;
    v38[2] = &off_23780;
    v38[3] = &__kCFBooleanTrue;
    v37[4] = v28;
    v37[5] = v25;
    v38[4] = &__kCFBooleanFalse;
    v38[5] = &__kCFBooleanTrue;
    v37[6] = v26;
    v37[7] = v15;
    v38[6] = &__kCFBooleanTrue;
    v38[7] = &__kCFBooleanTrue;
    v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:8];
    [v21 setProperties:v22];
    [v4 addObject:v21];
    v23 = *&self->PSListController_opaque[v29];
    *&self->PSListController_opaque[v29] = v4;

    v3 = *&self->PSListController_opaque[v29];
  }

  return v3;
}

- (void)setEpisodeCount:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setAutoDownloadsEpisodeCount:v4];
}

- (id)episodeCount:(id)a3
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = [v3 autoDownloadsEpisodeCount];

  return v4;
}

- (void)setStorageLimit:(id)a3 withSpecifier:(id)a4
{
  v4 = a3;
  v5 = +[WLKSystemPreferencesStore sharedPreferences];
  [v5 setAutoDownloadsStorageLimit:v4];
}

- (id)storageLimit:(id)a3
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = [v3 autoDownloadsStorageLimit];

  return v4;
}

- (void)setFeatureEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[WLKSystemPreferencesStore sharedPreferences];
  v5 = [v4 BOOLValue];

  [v6 setUseAutomaticDownloads:v5];
}

- (id)featureEnabled:(id)a3
{
  v3 = +[WLKSystemPreferencesStore sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 useAutomaticDownloads]);

  return v4;
}

@end
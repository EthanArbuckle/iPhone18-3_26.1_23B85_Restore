@interface FRNewsDownloadsSettingsController
- (FRNewsDownloadsSettingsController)init;
- (id)localizedStringResourceWithKey:(id)key;
- (id)optimizeStorageDescription;
- (id)specifiers;
- (void)prepUndoAndSetPreferenceValue:(id)value specifier:(id)specifier;
- (void)setOptimizedStorageEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setValue:(id)value forSpecifier:(id)specifier;
@end

@implementation FRNewsDownloadsSettingsController

- (FRNewsDownloadsSettingsController)init
{
  v17.receiver = self;
  v17.super_class = FRNewsDownloadsSettingsController;
  v2 = [(FRNewsDownloadsSettingsController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    specifiers = [(FRNewsDownloadsSettingsController *)v2 specifiers];
    v5 = [specifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = PSKeyNameKey;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(specifiers);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) propertyForKey:v8];
          if (v10)
          {
            v11 = NewsCoreUserDefaults();
            [v11 addObserver:v3 forKeyPath:v10 options:3 context:0];
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [specifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v70 = OBJC_IVAR___PSListController__specifiers;
    v4 = FRNewsSettingsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Refreshing News Download settings items...", buf, 2u);
    }

    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_39B0;
    v78[3] = &unk_10870;
    v78[4] = self;
    v5 = objc_retainBlock(v78);
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_SETTINGS_L2_TITLE" value:&stru_10EF0 table:@"Localizable"];
    [(FRNewsDownloadsSettingsController *)self setTitle:v7];

    v60 = +[NSMutableArray array];
    v8 = NewsCoreUserDefaults();
    v64 = [v8 BOOLForKey:FCAudioFeatureFlagEnabledKey];
    v61 = [v8 BOOLForKey:FCPuzzlesFeatureFlagEnabledKey];
    v63 = [v8 BOOLForKey:FCFoodFeatureFlagEnabledKey];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ALLOW_AUTOMATIC_DOWNLOADS_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v11 = FCAutomaticDownloadsEnabledKey;
    v67 = v5;
    v12 = (v5[2])(v5, v10, 6, FCAutomaticDownloadsEnabledKey, &__kCFBooleanTrue);

    v77.receiver = self;
    v77.super_class = FRNewsDownloadsSettingsController;
    v13 = [(FRNewsDownloadsSettingsController *)&v77 readPreferenceValue:v12];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v16 = [(FRNewsDownloadsSettingsController *)self localizedStringResourceWithKey:v15];
    v17 = [NSURL URLWithString:@"prefs://root=News"];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_3AD4;
    v74[3] = &unk_10898;
    v74[4] = self;
    v66 = v13;
    v75 = v66;
    v18 = v12;
    v76 = v18;
    selfCopy = self;
    [(FRNewsDownloadsSettingsController *)self pe_registerUndoActionName:v16 associatedDeepLink:v17 undoAction:v74];

    *&v18[OBJC_IVAR___PSSpecifier_setter] = "setValue:forSpecifier:";
    v19 = FCDefaultsSuiteName;
    v73 = PSDefaultsKey;
    [v18 setObject:FCDefaultsSuiteName forKeyedSubscript:?];
    v72 = v19;
    [v18 setObject:v19 forKeyedSubscript:PSContainerBundleIDKey];
    [v18 setIdentifier:v11];
    v65 = v18;
    [v60 addObject:v18];
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"AUTOMATIC_DOWNLOADS_CONTENT_TYPES_GROUP_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v22 = [PSSpecifier groupSpecifierWithID:@"Content Types" name:v21];

    [v60 addObject:v22];
    v23 = [v8 objectForKey:v11];

    v69 = v8;
    if (v23)
    {
      v24 = &__kCFBooleanTrue;
      if (![v8 BOOLForKey:v11])
      {
        v24 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v24 = &__kCFBooleanTrue;
    }

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"DOWNLOAD_RECENT_STORIES_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v27 = FCAutomaticFeedStoriesDownloadsEnabledKey;
    v28 = v67;
    v29 = (v67)[2](v67, v26, 6, FCAutomaticFeedStoriesDownloadsEnabledKey, &__kCFBooleanTrue);

    [v29 setObject:v72 forKeyedSubscript:v73];
    *&v29[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
    v59 = PSEnabledKey;
    [v29 setObject:v24 forKeyedSubscript:?];
    [v29 setIdentifier:v27];
    v62 = v29;
    [v60 addObject:v29];
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"DOWNLOAD_SAVED_STORIES_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v32 = FCAutomaticSavedStoriesDownloadsEnabledKey;
    v33 = (v28)[2](v28, v31, 6, FCAutomaticSavedStoriesDownloadsEnabledKey, &__kCFBooleanTrue);

    [v33 setObject:v72 forKeyedSubscript:v73];
    *&v33[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
    [v33 setObject:v24 forKeyedSubscript:v59];
    [v33 setIdentifier:v32];
    [v60 addObject:v33];
    v34 = [NSBundle bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"DOWNLOAD_MAGAZINE_ISSUES_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v36 = FCAutomaticIssueDownloadsEnabledKey;
    v37 = (v28)[2](v28, v35, 6, FCAutomaticIssueDownloadsEnabledKey, &__kCFBooleanTrue);

    [v37 setObject:v72 forKeyedSubscript:v73];
    *&v37[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
    v71 = v24;
    [v37 setObject:v24 forKeyedSubscript:v59];
    [v37 setIdentifier:v36];
    [v60 addObject:v37];
    if (v61)
    {
      v38 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"DOWNLOAD_PUZZLES_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v40 = FCAutomaticPuzzlesDownloadsEnabledKey;
      v41 = (v67)[2](v67, v39, 6, FCAutomaticPuzzlesDownloadsEnabledKey, &__kCFBooleanTrue);

      [v41 setObject:v72 forKeyedSubscript:v73];
      *&v41[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
      [v41 setObject:v71 forKeyedSubscript:v59];
      [v41 setIdentifier:v40];
      [v60 addObject:v41];
    }

    if (v63)
    {
      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"DOWNLOAD_RECIPES_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v44 = FCAutomaticRecipesDownloadsEnabledKey;
      v45 = (v67)[2](v67, v43, 6, FCAutomaticRecipesDownloadsEnabledKey, &__kCFBooleanTrue);

      [v45 setObject:v72 forKeyedSubscript:v73];
      *&v45[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
      [v45 setObject:v71 forKeyedSubscript:v59];
      [v45 setIdentifier:v44];
      [v60 addObject:v45];
    }

    if (v64)
    {
      v46 = [NSBundle bundleForClass:objc_opt_class()];
      v47 = [v46 localizedStringForKey:@"DOWNLOAD_AUDIO_STORIES_TITLE" value:&stru_10EF0 table:@"Localizable"];
      v48 = FCAutomaticAudioDownloadsEnabledKey;
      v49 = (v67)[2](v67, v47, 6, FCAutomaticAudioDownloadsEnabledKey, &__kCFBooleanTrue);

      [v49 setObject:v72 forKeyedSubscript:v73];
      *&v49[OBJC_IVAR___PSSpecifier_setter] = "prepUndoAndSetPreferenceValue:specifier:";
      [v49 setObject:v71 forKeyedSubscript:v59];
      [v49 setIdentifier:v48];
      [v60 addObject:v49];
    }

    v50 = [PSSpecifier groupSpecifierWithID:@"Optimize Storage Group"];
    optimizeStorageDescription = [(FRNewsDownloadsSettingsController *)selfCopy optimizeStorageDescription];
    [v50 setProperty:optimizeStorageDescription forKey:PSFooterTextGroupKey];

    [v60 addObject:v50];
    v52 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"OPTIMIZE_STORAGE_TITLE" value:&stru_10EF0 table:@"Localizable"];
    v54 = FCOptimizedStorageEnabledKey;
    v55 = (v67)[2](v67, v53, 6, FCOptimizedStorageEnabledKey, &__kCFBooleanFalse);

    *&v55[OBJC_IVAR___PSSpecifier_setter] = "setOptimizedStorageEnabled:forSpecifier:";
    [v55 setObject:v72 forKeyedSubscript:v73];
    [v55 setObject:v71 forKeyedSubscript:v59];
    [v55 setIdentifier:v54];
    [v60 addObject:v55];
    v56 = *&selfCopy->PSListController_opaque[v70];
    *&selfCopy->PSListController_opaque[v70] = v60;
    v57 = v60;

    v3 = *&selfCopy->PSListController_opaque[v70];
  }

  return v3;
}

- (void)setValue:(id)value forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  [(FRNewsDownloadsSettingsController *)self setPreferenceValue:valueCopy specifier:specifierCopy];
  [specifierCopy setObject:valueCopy forKeyedSubscript:PSValueKey];

  [(FRNewsDownloadsSettingsController *)self reloadSpecifiers];
}

- (void)setOptimizedStorageEnabled:(id)enabled forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v20.receiver = self;
  v20.super_class = FRNewsDownloadsSettingsController;
  enabledCopy = enabled;
  v8 = [(FRNewsDownloadsSettingsController *)&v20 readPreferenceValue:specifierCopy];
  name = [specifierCopy name];
  v10 = [(FRNewsDownloadsSettingsController *)self localizedStringResourceWithKey:name];
  v11 = [NSURL URLWithString:@"prefs://root=NEWS"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_3D88;
  v17[3] = &unk_10898;
  v17[4] = self;
  v18 = v8;
  v19 = specifierCopy;
  v12 = specifierCopy;
  v13 = v8;
  [(FRNewsDownloadsSettingsController *)self pe_registerUndoActionName:v10 associatedDeepLink:v11 undoAction:v17];
  [(FRNewsDownloadsSettingsController *)self setPreferenceValue:enabledCopy specifier:v12];
  [v12 setObject:enabledCopy forKeyedSubscript:PSValueKey];
  [(FRNewsDownloadsSettingsController *)self reloadSpecifier:v12 animated:1];
  v14 = NewsCoreUserDefaults();
  [v14 setValue:enabledCopy forKey:FCOptimizedStorageEnabledKey];

  v15 = NewsCoreUserDefaults();
  v16 = +[NSDate date];
  [v15 setValue:v16 forKey:FCOptimizedStorageLastUserInteractionKey];
}

- (id)optimizeStorageDescription
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_4 + 2)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"OPTIMIZE_STORAGE_DESCRIPTION_VISION";
    goto LABEL_7;
  }

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"OPTIMIZE_STORAGE_DESCRIPTION_IPAD";
    goto LABEL_7;
  }

  if (!userInterfaceIdiom)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"OPTIMIZE_STORAGE_DESCRIPTION_IPHONE";
LABEL_7:
    v7 = [v4 localizedStringForKey:v6 value:&stru_10EF0 table:@"Localizable"];

    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_A594();
  }

  v7 = @"UNKNOWN";
LABEL_11:

  return v7;
}

- (void)prepUndoAndSetPreferenceValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = FRNewsDownloadsSettingsController;
  valueCopy = value;
  v8 = [(FRNewsDownloadsSettingsController *)&v18 readPreferenceValue:specifierCopy];
  name = [specifierCopy name];
  v10 = [(FRNewsDownloadsSettingsController *)self localizedStringResourceWithKey:name];
  v11 = [NSURL URLWithString:@"prefs://root=NEWS"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_40AC;
  v15[3] = &unk_10898;
  v15[4] = self;
  v16 = v8;
  v17 = specifierCopy;
  v12 = specifierCopy;
  v13 = v8;
  [(FRNewsDownloadsSettingsController *)self pe_registerUndoActionName:v10 associatedDeepLink:v11 undoAction:v15];
  v14.receiver = self;
  v14.super_class = FRNewsDownloadsSettingsController;
  [(FRNewsDownloadsSettingsController *)&v14 setPreferenceValue:valueCopy specifier:v12];
  [v12 setObject:valueCopy forKeyedSubscript:PSValueKey];

  [(FRNewsDownloadsSettingsController *)self reloadSpecifier:v12 animated:1];
}

- (id)localizedStringResourceWithKey:(id)key
{
  keyCopy = key;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v8 bundleURL];
  v10 = [v6 initWithKey:keyCopy table:0 locale:v7 bundleURL:bundleURL2];

  return v10;
}

@end
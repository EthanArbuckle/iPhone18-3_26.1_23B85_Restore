@interface RCVoiceMemosSettingsController
- (id)specifiers;
- (void)_reloadAfterSettingPreferenceValue:(id)a3 specifier:(id)a4;
- (void)dealloc;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation RCVoiceMemosSettingsController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v63 = OBJC_IVAR___PSListController__specifiers;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_21D0;
    v68[3] = &unk_83E0;
    v68[4] = self;
    v4 = objc_retainBlock(v68);
    v5 = RCLocalizedFrameworkString();
    [(RCVoiceMemosSettingsController *)self setTitle:v5];

    v6 = [PSSystemPolicyForApp alloc];
    v7 = RCVoiceMemosBundleID;
    v8 = [v6 initWithBundleIdentifier:RCVoiceMemosBundleID];
    [(RCVoiceMemosSettingsController *)self setAppPolicy:v8];

    v9 = [(RCVoiceMemosSettingsController *)self appPolicy];
    v10 = [v9 specifiers];
    v11 = [v10 mutableCopy];

    v12 = RCLocalizedFrameworkString();
    v13 = [PSSpecifier groupSpecifierWithID:@"RecordingOptions" name:v12];

    [v11 addObject:v13];
    v14 = RCLocalizedFrameworkString();
    v67 = RCLocalizedFrameworkString();
    v66 = RCLocalizedFrameworkString();
    v65 = RCLocalizedFrameworkString();
    v64 = v14;
    if (RCStereoRecordingIsAvailable() && (RCSpatialAudioCaptureAvailable() & 1) == 0)
    {
      v16 = objc_opt_class();
      v17 = [NSNumber numberWithBool:0];
      v18 = (v4[2])(v4, v14, 2, v16, @"RCVoiceMemosStereoRecordingKey", v17);

      v19 = [NSNumber numberWithBool:0];
      v74[0] = v19;
      v20 = [NSNumber numberWithBool:1];
      v74[1] = v20;
      v21 = [NSArray arrayWithObjects:v74 count:2];

      v73[0] = v67;
      v73[1] = v66;
      v22 = [NSArray arrayWithObjects:v73 count:2];
      [v18 setValues:v21 titles:v22];
      [v11 addObject:v18];
      v15 = [(RCVoiceMemosSettingsController *)self readPreferenceValue:v18];

      v14 = v64;
    }

    else
    {
      v15 = 0;
    }

    if (RCSpatialAudioCaptureAvailable())
    {
      v23 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"_reloadAfterSettingPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];
      [v23 setObject:@"RCVoiceMemosChannelConfigurationKey" forKeyedSubscript:PSKeyNameKey];
      [v23 setObject:&off_8B70 forKeyedSubscript:PSDefaultValueKey];
      [v23 setObject:v7 forKeyedSubscript:PSDefaultsKey];
      v72[0] = v67;
      v72[1] = v66;
      v72[2] = v65;
      v24 = [NSArray arrayWithObjects:v72 count:3];
      [v23 setValues:&off_8C58 titles:v24];
      v25 = RCLocalizedFrameworkString();
      [v23 setProperty:v25 forKey:PSStaticTextMessageKey];

      [v11 addObject:v23];
      v26 = [(RCVoiceMemosSettingsController *)self readPreferenceValue:v23];

      v15 = v26;
    }

    v61 = v15;
    v62 = v13;
    if (v15 && [v15 isEqual:&off_8B70])
    {
      v27 = RCLocalizedFrameworkString();
      v28 = objc_opt_class();
      v29 = (v4[2])(v4, v27, 4, v28, @"RCVoiceMemosAudioQualityKey", &off_8B88);

      v30 = RCLocalizedFrameworkString();
      v71 = v30;
      v31 = [NSArray arrayWithObjects:&v71 count:1];
      [v29 setValues:&off_8C70 titles:v31];

      [(RCVoiceMemosSettingsController *)self setPreferenceValue:&off_8B88 specifier:v29];
      v32 = RCLocalizedFrameworkString();
      v59 = PSFooterTextGroupKey;
      [v13 setProperty:v32 forKey:?];
    }

    else
    {
      v33 = RCLocalizedFrameworkString();
      v34 = objc_opt_class();
      v29 = (v4[2])(v4, v33, 2, v34, @"RCVoiceMemosAudioQualityKey", &off_8B88);

      v35 = RCLocalizedFrameworkString();
      v70[0] = v35;
      v36 = RCLocalizedFrameworkString();
      v70[1] = v36;
      v37 = [NSArray arrayWithObjects:v70 count:2];

      [v29 setValues:&off_8C88 titles:v37];
      v59 = PSFooterTextGroupKey;
    }

    v58 = v29;
    [v11 addObject:v29];
    v38 = RCLocalizedFrameworkString();
    v60 = [PSSpecifier groupSpecifierWithID:@"Voice Memos Settings" name:v38];

    [v11 addObject:v60];
    v39 = RCLocalizedFrameworkString();
    v40 = objc_opt_class();
    v41 = (v4[2])(v4, v39, 2, v40, @"RCVoiceMemosRecentlyDeletedWindowKey", &off_8BB8);

    v42 = RCLocalizedFrameworkString();
    v69[0] = v42;
    RCLocalizedFrameworkString();
    v44 = v43 = v4;
    v69[1] = v44;
    v45 = RCLocalizedFrameworkString();
    v69[2] = v45;
    v46 = RCLocalizedFrameworkString();
    v69[3] = v46;
    v47 = RCLocalizedFrameworkString();
    v69[4] = v47;
    v48 = [NSArray arrayWithObjects:v69 count:5];

    [v41 setValues:&off_8CA0 titles:v48];
    [v11 addObject:v41];
    v49 = RCLocalizedFrameworkString();
    v50 = (v43)[2](v43, v49, 6, 0, @"RCVoiceMemosUseLocationBasedNaming", &__kCFBooleanTrue);

    [v50 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v11 addObject:v50];
    v51 = RCLocalizedFrameworkString();
    v52 = [PSSpecifier groupSpecifierWithID:@"Privacy" name:v51];

    v53 = RCLocalizedFrameworkString();
    [v52 setProperty:v53 forKey:v59];

    [v11 addObject:v52];
    v54 = RCLocalizedFrameworkString();
    v55 = (v43)[2](v43, v54, 6, 0, @"RCAppAnalyticsUserIDResetKey", &__kCFBooleanFalse);

    [v11 addObject:v55];
    v56 = *&self->PSListController_opaque[v63];
    *&self->PSListController_opaque[v63] = v11;

    v3 = *&self->PSListController_opaque[v63];
  }

  return v3;
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = RCVoiceMemosSettingsController;
  v6 = a4;
  [(RCVoiceMemosSettingsController *)&v7 setPreferenceValue:a3 specifier:v6];
  [(RCVoiceMemosSettingsController *)self reloadSpecifier:v6, v7.receiver, v7.super_class];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RCVoiceMemosSettingsController;
  [(RCVoiceMemosSettingsController *)&v8 viewDidLoad];
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateSettingsPage" name:RCVoiceMemosSettingsDidChangeNotification object:0];

  objc_initWeak(&location, self);
  v4 = +[NSUserDefaults sharedSettingsUserDefaults];
  objc_copyWeak(&v6, &location);
  v5 = RCObserveChangesToKeyPath();
  [(RCVoiceMemosSettingsController *)self setAnalyticsKeyObserver:v5, _NSConcreteStackBlock, 3221225472, sub_2698, &unk_8408];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:RCVoiceMemosSettingsDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = RCVoiceMemosSettingsController;
  [(RCVoiceMemosSettingsController *)&v4 dealloc];
}

- (void)_reloadAfterSettingPreferenceValue:(id)a3 specifier:(id)a4
{
  [(RCVoiceMemosSettingsController *)self setPreferenceValue:a3 specifier:a4];

  [(RCVoiceMemosSettingsController *)self reloadSpecifiers];
}

@end
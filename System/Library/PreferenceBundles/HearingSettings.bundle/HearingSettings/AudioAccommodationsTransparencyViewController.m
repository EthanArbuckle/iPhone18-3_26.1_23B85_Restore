@interface AudioAccommodationsTransparencyViewController
- (AudioAccommodationsTransparencyViewController)init;
- (id)beamformingEnabled:(id)a3;
- (id)customTransparencyEnabled:(id)a3;
- (id)specifiers;
- (id)transparencyAmplification:(id)a3;
- (id)transparencyBalance:(id)a3;
- (id)transparencyDeviceAddress;
- (id)transparencyNoiseSuppression:(id)a3;
- (id)transparencyTone:(id)a3;
- (id)transparencyVoiceAmplification:(id)a3;
- (void)mediaServerDied;
- (void)registerNotifications;
- (void)setBeamformingEnabled:(id)a3 specifier:(id)a4;
- (void)setCustomTransparencyEnabled:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)setTransparencyAmplification:(id)a3 specifier:(id)a4;
- (void)setTransparencyBalance:(id)a3 specifier:(id)a4;
- (void)setTransparencyNoiseSuppression:(id)a3 specifier:(id)a4;
- (void)setTransparencyTone:(id)a3 specifier:(id)a4;
- (void)setTransparencyVoiceAmplification:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
- (void)willBecomeActive;
@end

@implementation AudioAccommodationsTransparencyViewController

- (AudioAccommodationsTransparencyViewController)init
{
  v11.receiver = self;
  v11.super_class = AudioAccommodationsTransparencyViewController;
  v2 = [(AudioAccommodationsTransparencyViewController *)&v11 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[PASettings sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_99C8;
    v8 = &unk_48918;
    objc_copyWeak(&v9, &location);
    [v3 registerUpdateBlock:&v5 forRetrieveSelector:"transparencyCustomized" withListener:v2];

    [(AudioAccommodationsTransparencyViewController *)v2 registerNotifications:v5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)registerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v14[0] = AVSystemController_HeadphoneJackIsConnectedDidChangeNotification;
  v14[1] = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v14[2] = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"headphoneStateChangedNotification:" name:AVSystemController_HeadphoneJackIsConnectedDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = +[AVAudioSession sharedInstance];
  [v6 addObserver:self selector:"headphoneStateChangedNotification:" name:AVAudioSessionRouteChangeNotification object:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v10 = +[AVSystemController sharedAVSystemController];
  [v8 addObserver:self selector:"headphoneStateChangedNotification:" name:v9 object:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = AVSystemController_ServerConnectionDiedNotification;
  v13 = +[AVSystemController sharedAVSystemController];
  [v11 addObserver:self selector:"mediaServerDied" name:v12 object:v13];
}

- (void)mediaServerDied
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(AudioAccommodationsTransparencyViewController *)self performSelector:"registerNotifications" withObject:0 afterDelay:2.0];

  [(AudioAccommodationsTransparencyViewController *)self headphoneStateChangedNotification:0];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AudioAccommodationsTransparencyViewController;
  [(AudioAccommodationsTransparencyViewController *)&v3 willBecomeActive];
  [(AudioAccommodationsTransparencyViewController *)self reloadSpecifiers];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = AudioAccommodationsTransparencyViewController;
  [(AudioAccommodationsTransparencyViewController *)&v21 viewDidLoad];
  v3 = [(AudioAccommodationsTransparencyViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[AAStrengthSliderCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(AudioAccommodationsTransparencyViewController *)self table];
  v7 = objc_opt_class();
  v8 = +[AABalanceSliderCell cellReuseIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [(AudioAccommodationsTransparencyViewController *)self table];
  v10 = objc_opt_class();
  v11 = +[AAToneSliderCell cellReuseIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [(AudioAccommodationsTransparencyViewController *)self table];
  v13 = objc_opt_class();
  v14 = +[AANoiseSuppressorSliderCell cellReuseIdentifier];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = [(AudioAccommodationsTransparencyViewController *)self table];
  v16 = objc_opt_class();
  v17 = +[AAVoiceAmplificationSliderCell cellReuseIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = [(AudioAccommodationsTransparencyViewController *)self table];
  v19 = objc_opt_class();
  v20 = +[AAAmplificationCell cellReuseIdentifier];
  [v18 registerClass:v19 forCellReuseIdentifier:v20];
}

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = AudioAccommodationsTransparencyViewController;
  [(AudioAccommodationsTransparencyViewController *)&v7 setSpecifier:a3];
  v4 = +[HUAccessoryManager sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_A0FC;
  v6[3] = &unk_48B20;
  v6[4] = self;
  [v4 getPSEVersionForAddress:v5 withCompletion:v6];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    if (self->_displayingInEnrollment)
    {
      v5 = [(AudioAccommodationsTransparencyViewController *)self table];
      v6 = +[UIColor clearColor];
      [v5 setBackgroundColor:v6];

      v7 = [(AudioAccommodationsTransparencyViewController *)self view];
      v8 = +[UIColor clearColor];
      [v7 setBackgroundColor:v8];
    }

    v9 = [objc_allocWithZone(NSMutableArray) init];
    v10 = +[PASettings sharedInstance];
    v11 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
    v12 = [v10 transparencyCustomizedForAddress:v11];

    if (self->_displayingInEnrollment)
    {
      v13 = 0;
      v14 = 0;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = +[PSSpecifier emptyGroupSpecifier];
      v15 = paLocString();
      [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

      [v9 addObject:v14];
      v16 = paLocString();
      v13 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"setCustomTransparencyEnabled:specifier:" get:"customTransparencyEnabled:" detail:0 cell:6 edit:0];

      [v9 addObject:v13];
      if (!v12)
      {
LABEL_17:
        v49 = [v9 copy];
        v50 = *&self->PSListController_opaque[v3];
        *&self->PSListController_opaque[v3] = v49;

        v4 = *&self->PSListController_opaque[v3];
        goto LABEL_18;
      }
    }

    v56 = v14;
    v17 = paLocString();
    v18 = [PSSpecifier groupSpecifierWithName:v17];

    [v9 addObject:v18];
    v19 = +[UIColor systemGrayColor];
    v20 = [UIImage _systemImageNamed:@"speaker.fill"];
    v21 = [v20 imageWithTintColor:v19 renderingMode:1];

    v22 = [UIImage _systemImageNamed:@"speaker.wave.3.fill"];
    v55 = v19;
    v23 = [v22 imageWithTintColor:v19 renderingMode:1];

    v24 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"setTransparencyAmplification:specifier:" get:"transparencyAmplification:" detail:0 cell:5 edit:0];

    v25 = objc_opt_class();
    v26 = PSCellClassKey;
    [v24 setProperty:v25 forKey:PSCellClassKey];
    v27 = [NSNumber numberWithFloat:0.0];
    [v24 setProperty:v27 forKey:PSControlMinimumKey];

    LODWORD(v28) = 1.0;
    v29 = [NSNumber numberWithFloat:v28];
    [v24 setProperty:v29 forKey:PSControlMaximumKey];

    v53 = v23;
    [v24 setProperty:v23 forKey:PSSliderRightImageKey];
    v54 = v21;
    [v24 setProperty:v21 forKey:PSSliderLeftImageKey];
    v30 = PSEnabledKey;
    [v24 setProperty:? forKey:?];
    [v24 setIdentifier:@"AAAmplificationSpecID"];
    [v9 addObject:v24];
    v31 = paLocString();
    v32 = [PSSpecifier groupSpecifierWithName:v31];

    [v9 addObject:v32];
    v33 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"setTransparencyBalance:specifier:" get:"transparencyBalance:" detail:0 cell:5 edit:0];

    v34 = PSSliderIsContinuous;
    [v33 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    [v33 setProperty:objc_opt_class() forKey:v26];
    [v33 setProperty:&__kCFBooleanTrue forKey:v30];
    [v33 setUserInfo:self];
    [v33 setIdentifier:@"AABalanceSpecID"];
    [v9 addObject:v33];
    v35 = paLocString();
    v36 = [PSSpecifier groupSpecifierWithName:v35];

    [v9 addObject:v36];
    v13 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"setTransparencyTone:specifier:" get:"transparencyTone:" detail:0 cell:5 edit:0];

    [v13 setProperty:&__kCFBooleanTrue forKey:v34];
    v52 = v26;
    [v13 setProperty:objc_opt_class() forKey:v26];
    [v13 setProperty:&__kCFBooleanTrue forKey:v30];
    [v13 setUserInfo:self];
    [v13 setIdentifier:@"AAToneSpecID"];
    [v9 addObject:v13];
    v37 = [(AudioAccommodationsTransparencyViewController *)self currentDevicePSEVersion];
    v38 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v58 = v37;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Found PSE device with version %lu", buf, 0xCu);
    }

    if (_os_feature_enabled_impl() && v37 >= 2)
    {
      v39 = paLocString();
      v40 = [PSSpecifier groupSpecifierWithName:v39];

      v41 = paLocString();
      v42 = PSFooterTextGroupKey;
      [v40 setProperty:v41 forKey:PSFooterTextGroupKey];

      [v9 addObject:v40];
      v43 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"setTransparencyNoiseSuppression:specifier:" get:"transparencyNoiseSuppression:" detail:0 cell:5 edit:0];

      [v43 setProperty:&__kCFBooleanTrue forKey:v34];
      [v43 setProperty:objc_opt_class() forKey:v52];
      [v43 setProperty:&__kCFBooleanTrue forKey:v30];
      [v43 setUserInfo:self];
      [v9 addObject:v43];
      if (v37 >= 4)
      {
        v44 = paLocString();
        v45 = [PSSpecifier groupSpecifierWithName:v44];

        [v9 addObject:v45];
        v43 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"setTransparencyVoiceAmplification:specifier:" get:"transparencyVoiceAmplification:" detail:0 cell:5 edit:0];

        [v43 setProperty:&__kCFBooleanTrue forKey:v34];
        [v43 setProperty:objc_opt_class() forKey:v52];
        [v43 setProperty:&__kCFBooleanTrue forKey:v30];
        [v43 setUserInfo:self];
        [v43 setIdentifier:@"AABalanceSpecID"];
        [v9 addObject:v43];
      }

      v14 = v56;
      v46 = +[PSSpecifier emptyGroupSpecifier];

      v47 = paLocString();
      [v46 setProperty:v47 forKey:v42];

      [v9 addObject:v46];
      v48 = paLocString();
      v13 = [PSSpecifier preferenceSpecifierNamed:v48 target:self set:"setBeamformingEnabled:specifier:" get:"beamformingEnabled:" detail:0 cell:6 edit:0];

      [v9 addObject:v13];
    }

    else
    {
      v14 = v56;
    }

    goto LABEL_17;
  }

LABEL_18:

  return v4;
}

- (void)setBeamformingEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[PASettings sharedInstance];
  v6 = [v5 BOOLValue];

  v7 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v8 setTransparencyBeamforming:v6 forAddress:v7];
}

- (id)beamformingEnabled:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 transparencyBeamformingForAddress:v5]);

  return v6;
}

- (void)setTransparencyNoiseSuppression:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = +[PASettings sharedInstance];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v9 setTransparencyNoiseSupressor:v8 forAddress:v7];
}

- (id)transparencyNoiseSuppression:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v4 transparencyNoiseSupressorForAddress:v5];
  v6 = [NSNumber numberWithDouble:?];

  return v6;
}

- (void)setCustomTransparencyEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v8 = +[PASettings sharedInstance];
  v6 = [v5 BOOLValue];

  v7 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v8 setTransparencyCustomized:v6 forAddress:v7];
}

- (id)customTransparencyEnabled:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 transparencyCustomizedForAddress:v5]);

  return v6;
}

- (id)transparencyDeviceAddress
{
  v2 = [(AudioAccommodationsTransparencyViewController *)self specifier];
  v3 = [v2 userInfo];

  return v3;
}

- (void)setTransparencyAmplification:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = +[PASettings sharedInstance];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v9 setTransparencyAmplification:v8 forAddress:v7];
}

- (id)transparencyAmplification:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v4 transparencyAmplificationForAddress:v5];
  v6 = [NSNumber numberWithDouble:?];

  return v6;
}

- (void)setTransparencyBalance:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = +[PASettings sharedInstance];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v9 setTransparencyBalance:v8 forAddress:v7];
}

- (id)transparencyBalance:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v4 transparencyBalanceForAddress:v5];
  v6 = [NSNumber numberWithDouble:?];

  return v6;
}

- (void)setTransparencyTone:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = +[PASettings sharedInstance];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v9 setTransparencyTone:v8 forAddress:v7];
}

- (id)transparencyTone:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v4 transparencyToneForAddress:v5];
  v6 = [NSNumber numberWithDouble:?];

  return v6;
}

- (void)setTransparencyVoiceAmplification:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v9 = +[PASettings sharedInstance];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v9 setTransparencyOwnVoice:v8 forAddress:v7];
}

- (id)transparencyVoiceAmplification:(id)a3
{
  v4 = +[PASettings sharedInstance];
  v5 = [(AudioAccommodationsTransparencyViewController *)self transparencyDeviceAddress];
  [v4 transparencyOwnVoiceForAddress:v5];
  v6 = [NSNumber numberWithDouble:?];

  return v6;
}

@end
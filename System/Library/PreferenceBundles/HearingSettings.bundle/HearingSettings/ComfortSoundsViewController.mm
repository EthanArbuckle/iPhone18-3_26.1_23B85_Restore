@interface ComfortSoundsViewController
- (ComfortSoundsViewController)init;
- (id)comfortSoundLevel:(id)a3;
- (id)comfortSoundMixingLevel:(id)a3;
- (id)comfortSoundsEnabled:(id)a3;
- (id)mediaMixingEnabled:(id)a3;
- (id)selectedComfortSound:(id)a3;
- (id)selectedTimer:(id)a3;
- (id)selectedTinnitusFilterMode:(id)a3;
- (id)soundGroupValue:(id)a3;
- (id)specifiers;
- (id)stopOnLockEnabled:(id)a3;
- (void)_updateComfortSoundsButtonForOneness;
- (void)dealloc;
- (void)setComfortSoundLevel:(id)a3 specifier:(id)a4;
- (void)setComfortSoundMixingLevel:(id)a3 specifier:(id)a4;
- (void)setComfortSoundsEnabled:(id)a3 specifier:(id)a4;
- (void)setMediaMixingEnabled:(id)a3 specifier:(id)a4;
- (void)setStopOnLockEnabled:(id)a3 specifier:(id)a4;
- (void)stopPlayingSample;
- (void)toggleSample:(id)a3;
- (void)viewDidLoad;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation ComfortSoundsViewController

- (ComfortSoundsViewController)init
{
  v43.receiver = self;
  v43.super_class = ComfortSoundsViewController;
  v2 = [(ComfortSoundsViewController *)&v43 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[HUComfortSoundsSettings sharedInstance];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_3F20;
    v40[3] = &unk_48918;
    objc_copyWeak(&v41, &location);
    [v3 registerUpdateBlock:v40 forRetrieveSelector:"selectedComfortSound" withListener:v2];

    v4 = +[HUComfortSoundsSettings sharedInstance];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_4000;
    v38[3] = &unk_48918;
    objc_copyWeak(&v39, &location);
    [v4 registerUpdateBlock:v38 forRetrieveSelector:"comfortSoundsEnabled" withListener:v2];

    v5 = +[HUComfortSoundsSettings sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_412C;
    v36[3] = &unk_48918;
    objc_copyWeak(&v37, &location);
    [v5 registerUpdateBlock:v36 forRetrieveSelector:"relativeVolume" withListener:v2];

    v6 = +[HUComfortSoundsSettings sharedInstance];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_4214;
    v34[3] = &unk_48918;
    objc_copyWeak(&v35, &location);
    [v6 registerUpdateBlock:v34 forRetrieveSelector:"mediaVolume" withListener:v2];

    v7 = +[HUComfortSoundsSettings sharedInstance];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_42FC;
    v32[3] = &unk_48918;
    objc_copyWeak(&v33, &location);
    [v7 registerUpdateBlock:v32 forRetrieveSelector:"timerEnabled" withListener:v2];

    v8 = +[HUComfortSoundsSettings sharedInstance];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_4428;
    v30[3] = &unk_48918;
    objc_copyWeak(&v31, &location);
    [v8 registerUpdateBlock:v30 forRetrieveSelector:"timerOption" withListener:v2];

    v9 = +[HUComfortSoundsSettings sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_455C;
    v28[3] = &unk_48918;
    objc_copyWeak(&v29, &location);
    [v9 registerUpdateBlock:v28 forRetrieveSelector:"timerEndInterval" withListener:v2];

    v10 = +[HUComfortSoundsSettings sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_4690;
    v26[3] = &unk_48918;
    objc_copyWeak(&v27, &location);
    [v10 registerUpdateBlock:v26 forRetrieveSelector:"timerDurationInSeconds" withListener:v2];

    v11 = +[HUComfortSoundsSettings sharedInstance];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_47C4;
    v24[3] = &unk_48918;
    objc_copyWeak(&v25, &location);
    [v11 registerUpdateBlock:v24 forRetrieveSelector:"activeTimerEndTimeStamp" withListener:v2];

    v12 = +[HUComfortSoundsSettings sharedInstance];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_48F8;
    v22[3] = &unk_48918;
    objc_copyWeak(&v23, &location);
    [v12 registerUpdateBlock:v22 forRetrieveSelector:"tinnitusFilterEnabled" withListener:v2];

    v13 = +[HUComfortSoundsSettings sharedInstance];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_49E0;
    v20[3] = &unk_48918;
    objc_copyWeak(&v21, &location);
    [v13 registerUpdateBlock:v20 forRetrieveSelector:"tinnitusFilterMode" withListener:v2];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_4B14, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = [AXDispatchTimer alloc];
    v16 = &_dispatch_main_q;
    v17 = [v15 initWithTargetSerialQueue:&_dispatch_main_q];
    [(ComfortSoundsViewController *)v2 setCountdownTimer:v17];

    v18 = [(ComfortSoundsViewController *)v2 countdownTimer];
    [v18 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[AXHAServer sharedInstance];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = ComfortSoundsViewController;
  [(ComfortSoundsViewController *)&v5 dealloc];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = ComfortSoundsViewController;
  [(ComfortSoundsViewController *)&v3 willBecomeActive];
  [(ComfortSoundsViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v50 = OBJC_IVAR___PSListController__specifiers;
    v4 = [objc_allocWithZone(NSMutableArray) init];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    v6 = hearingLocString();
    v48 = PSFooterTextGroupKey;
    [v5 setProperty:v6 forKey:?];

    v49 = v5;
    [v4 addObject:v5];
    v7 = hearingLocString();
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setComfortSoundsEnabled:specifier:" get:"comfortSoundsEnabled:" detail:0 cell:6 edit:0];

    [v8 setIdentifier:@"CSFeatureToggleSpecID"];
    v9 = [sub_5484() server];
    LODWORD(v7) = [v9 isContinuitySessionActive];

    v10 = [NSNumber numberWithBool:v7 ^ 1];
    [v8 setProperty:v10 forKey:PSEnabledKey];

    [v4 addObject:v8];
    v47 = +[PSSpecifier emptyGroupSpecifier];
    [v4 addObject:?];
    v11 = hearingLocString();
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"selectedComfortSound:" detail:objc_opt_class() cell:2 edit:0];

    v46 = PSIDKey;
    [v12 setProperty:@"ComfortSoundSoundLabel" forKey:?];
    [v4 addObject:v12];
    v13 = +[PSSpecifier emptyGroupSpecifier];

    [v4 addObject:v13];
    v14 = hearingLocString();
    v15 = +[HUComfortSoundsSettings sharedInstance];
    v16 = [v15 selectedComfortSound];
    v17 = [v16 localizedName];
    v18 = [NSString stringWithFormat:v14, v17];
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setComfortSoundLevel:specifier:" get:"comfortSoundLevel:" detail:0 cell:5 edit:0];

    v20 = PSSliderIsContinuous;
    [v19 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
    v21 = objc_opt_class();
    v22 = PSCellClassKey;
    [v19 setProperty:v21 forKey:PSCellClassKey];
    [v19 setIdentifier:@"CSRelativeVolumeSpecID"];
    [v19 setUserInfo:self];
    [v4 addObject:v19];
    v23 = +[PSSpecifier emptyGroupSpecifier];

    [v4 addObject:v23];
    v24 = hearingLocString();
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setMediaMixingEnabled:specifier:" get:"mediaMixingEnabled:" detail:0 cell:6 edit:0];

    v51 = PSAllowMultilineTitleKey;
    [v25 setProperty:&__kCFBooleanTrue forKey:?];
    [v25 setIdentifier:@"CSComfortSoundsMixingEnabled"];
    [v4 addObject:v25];
    v26 = hearingLocString();
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setComfortSoundMixingLevel:specifier:" get:"comfortSoundMixingLevel:" detail:0 cell:5 edit:0];

    [v27 setProperty:&__kCFBooleanTrue forKey:v20];
    [v27 setProperty:objc_opt_class() forKey:v22];
    [v27 setIdentifier:@"CSMediaVolumeSpecID"];
    [v27 setUserInfo:self];
    [v4 addObject:v27];
    v28 = +[PAStimulus musicStimulus];
    if (([v28 isPlaying] & 1) == 0)
    {
      [(ComfortSoundsViewController *)self playingSample];
    }

    v29 = paLocString();
    v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v30 setButtonAction:"toggleSample:"];
    [v30 setIdentifier:@"CSMediaToggleSpecID"];
    [v4 addObject:v30];
    v31 = +[PSSpecifier emptyGroupSpecifier];

    v32 = comfortSoundsLocString();
    [v31 setProperty:v32 forKey:v48];

    [v4 addObject:v31];
    v33 = comfortSoundsLocString();
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:"selectedTinnitusFilterMode:" detail:objc_opt_class() cell:2 edit:0];

    [v34 setProperty:&__kCFBooleanTrue forKey:v51];
    [v34 setIdentifier:@"CSTinnitusFilterID"];
    [v4 addObject:v34];
    v35 = +[PSSpecifier emptyGroupSpecifier];

    [v4 addObject:v35];
    v36 = comfortSoundsLocString();
    v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:"selectedTimer:" detail:objc_opt_class() cell:2 edit:0];

    [v37 setProperty:@"ComfortSoundTimerLabel" forKey:v46];
    [v37 setIdentifier:@"CSTimerSpecID"];
    [v37 setProperty:objc_opt_class() forKey:v22];
    [v4 addObject:v37];
    v38 = hearingLocString();
    if ((+[HCUtilities deviceIsPad](HCUtilities, "deviceIsPad") & 1) != 0 || +[HCUtilities deviceIsPod])
    {
      v39 = hearingLocString();

      v38 = v39;
    }

    v40 = +[PSSpecifier emptyGroupSpecifier];

    [v40 setProperty:v38 forKey:v48];
    [v40 setIdentifier:@"CSMediaToggleSpecFooterID"];
    [v4 addObject:v40];
    v41 = hearingLocString();
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"setStopOnLockEnabled:specifier:" get:"stopOnLockEnabled:" detail:0 cell:6 edit:0];

    [v42 setProperty:&__kCFBooleanTrue forKey:v51];
    [v42 setIdentifier:@"CSComfortSoundsStopOnLockEnabled"];
    [v4 addObject:v42];
    v43 = [v4 copy];
    v44 = *&self->PSListController_opaque[v50];
    *&self->PSListController_opaque[v50] = v43;

    v3 = *&self->PSListController_opaque[v50];
  }

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = ComfortSoundsViewController;
  [(ComfortSoundsViewController *)&v9 viewDidLoad];
  v3 = [(ComfortSoundsViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[HearingSettingsTitleValueSliderCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(ComfortSoundsViewController *)self table];
  v7 = objc_opt_class();
  v8 = +[HearingSettingsCountdownCell cellReuseIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = ComfortSoundsViewController;
  [(ComfortSoundsViewController *)&v3 willResignActive];
  [(ComfortSoundsViewController *)self stopPlayingSample];
}

- (void)stopPlayingSample
{
  v3 = HCLogComfortSounds();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [(ComfortSoundsViewController *)self playingSample];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Stopping sample %d", v9, 8u);
  }

  if ([(ComfortSoundsViewController *)self playingSample])
  {
    [(ComfortSoundsViewController *)self setPlayingSample:0];
    v4 = +[AXHAServer sharedInstance];
    [v4 stopComfortSoundsPreview];

    v5 = +[HUComfortSoundsSettings sharedInstance];
    [v5 setForceMixingBehavior:0];

    v6 = +[PAStimulus musicStimulus];
    [v6 stop];

    v7 = [(ComfortSoundsViewController *)self specifierForID:@"CSMediaToggleSpecID"];
    v8 = paLocString();
    [v7 setName:v8];

    [(ComfortSoundsViewController *)self reloadSpecifier:v7];
    UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanFalse);
  }
}

- (void)toggleSample:(id)a3
{
  v8 = a3;
  if ([(ComfortSoundsViewController *)self playingSample])
  {
    [(ComfortSoundsViewController *)self stopPlayingSample];
  }

  else
  {
    [(ComfortSoundsViewController *)self setPlayingSample:1];
    v4 = +[AXHAServer sharedInstance];
    [v4 startComfortSoundsPreview];

    v5 = +[HUComfortSoundsSettings sharedInstance];
    [v5 setForceMixingBehavior:1];

    v6 = +[PAStimulus musicStimulus];
    [v6 play];

    UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanTrue);
    v7 = paLocString();
    [v8 setName:v7];

    [(ComfortSoundsViewController *)self reloadSpecifier:v8];
  }
}

- (void)setComfortSoundsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  [v6 setComfortSoundsEnabled:{objc_msgSend(v5, "BOOLValue")}];

  LOBYTE(v6) = [v5 BOOLValue];
  if ((v6 & 1) == 0)
  {

    [(ComfortSoundsViewController *)self stopPlayingSample];
  }
}

- (id)comfortSoundsEnabled:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 comfortSoundsEnabled]);

  return v4;
}

- (void)_updateComfortSoundsButtonForOneness
{
  v6 = [(ComfortSoundsViewController *)self specifierForID:@"CSFeatureToggleSpecID"];
  v3 = [sub_5484() server];
  v4 = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:v4 ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(ComfortSoundsViewController *)self reloadSpecifier:v6];
}

- (void)setMediaMixingEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setMixesWithMedia:v5];
}

- (id)mediaMixingEnabled:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 mixesWithMedia]);

  return v4;
}

- (void)setStopOnLockEnabled:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setStopsOnLock:v5];
}

- (id)stopOnLockEnabled:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 stopsOnLock]);

  return v4;
}

- (void)setComfortSoundLevel:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v7 = +[HUComfortSoundsSettings sharedInstance];
  [v4 doubleValue];
  v6 = v5;

  [v7 setRelativeVolume:v6];
}

- (id)comfortSoundLevel:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 relativeVolume];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (id)soundGroupValue:(id)a3
{
  v3 = a3;
  v4 = +[HUComfortSoundsSettings sharedInstance];
  v5 = [v4 selectedComfortSound];

  v6 = [v3 userInfo];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 soundGroup], v7 == objc_msgSend(v5, "soundGroup")))
  {
    v8 = +[HUComfortSound defaultComfortSoundForGroup:](HUComfortSound, "defaultComfortSoundForGroup:", [v5 soundGroup]);
    if ([v8 isEqual:v5] || (objc_msgSend(v8, "localizedName"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedName"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12))
    {
      v13 = hearingLocString();
    }

    else
    {
      v13 = [v5 localizedName];
    }

    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setComfortSoundMixingLevel:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v7 = +[HUComfortSoundsSettings sharedInstance];
  [v4 doubleValue];
  v6 = v5;

  [v7 setMediaVolume:v6];
}

- (id)comfortSoundMixingLevel:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  [v3 mediaVolume];
  v4 = [NSNumber numberWithDouble:?];

  return v4;
}

- (id)selectedComfortSound:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 selectedComfortSound];
  v5 = [v4 localizedName];

  return v5;
}

- (id)selectedTimer:(id)a3
{
  v4 = a3;
  v5 = +[HUComfortSoundsSettings sharedInstance];
  v6 = [v5 timerEnabled];

  if (!v6)
  {
    v15 = comfortSoundsLocString();
    goto LABEL_12;
  }

  v7 = +[HUComfortSoundsSettings sharedInstance];
  [v7 activeTimerEndTimeStamp];
  v9 = v8;
  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = +[HUComfortSoundsSettings sharedInstance];
  v13 = [v12 comfortSoundsEnabled];

  if (v13)
  {
    v14 = v9 - v11;
    if (v9 - v11 > 0.0)
    {
      v15 = comfortSoundsCountdownString();
      v16 = [(ComfortSoundsViewController *)self countdownTimer];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_62D4;
      v22[3] = &unk_489F8;
      v22[4] = self;
      v23 = v4;
      [v16 afterDelay:v22 processBlock:1.0];

      goto LABEL_12;
    }
  }

  v17 = +[HUComfortSoundsSettings sharedInstance];
  v18 = [v17 timerOption];

  if (v18 == &dword_0 + 1)
  {
    v19 = +[HUComfortSoundsSettings sharedInstance];
    [v19 timerDurationInSeconds];
    v20 = comfortSoundsDurationString();
    goto LABEL_10;
  }

  if (!v18)
  {
    v19 = +[HUComfortSoundsSettings sharedInstance];
    [v19 timerEndInterval];
    v20 = comfortSoundsTimeString();
LABEL_10:
    v15 = v20;

    goto LABEL_12;
  }

  v15 = &stru_49868;
LABEL_12:

  return v15;
}

- (id)selectedTinnitusFilterMode:(id)a3
{
  v3 = +[HUComfortSoundsSettings sharedInstance];
  v4 = [v3 tinnitusFilterEnabled];

  if (v4 && (+[HUComfortSoundsSettings sharedInstance](HUComfortSoundsSettings, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 tinnitusFilterMode], v5, v6 > 1))
  {
    v7 = &stru_49868;
  }

  else
  {
    v7 = comfortSoundsLocString();
  }

  return v7;
}

@end
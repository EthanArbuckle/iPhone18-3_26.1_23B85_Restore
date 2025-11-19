@interface LiveListenViewController
- (LiveListenViewController)init;
- (id)_subtitleForStartDate:(id)a3 endDate:(id)a4;
- (id)liveListenRemoteControlEnabled;
- (id)specifiers;
- (void)_setupListeners;
- (void)_updateLiveListenButtonEnabled;
- (void)dealloc;
- (void)liveListenToggle:(id)a3;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)setLiveListenRemoteControlEnabled:(id)a3;
- (void)updateLiveListenCell:(id)a3;
- (void)updateLiveListenWithState:(int64_t)a3 andLevel:(double)a4;
- (void)viewDidLoad;
@end

@implementation LiveListenViewController

- (LiveListenViewController)init
{
  v6.receiver = self;
  v6.super_class = LiveListenViewController;
  v2 = [(LiveListenViewController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_21A00, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"reloadSpecifiers" name:AXHearingAidAudioRoutesChangedNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = LiveListenViewController;
  [(LiveListenViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = LiveListenViewController;
  [(LiveListenViewController *)&v6 viewDidLoad];
  v3 = [(LiveListenViewController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXHearingLiveListenMeterCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)_setupListeners
{
  objc_initWeak(&location, self);
  v5[1] = _NSConcreteStackBlock;
  v5[2] = 3221225472;
  v5[3] = sub_21D34;
  v5[4] = &unk_48918;
  objc_copyWeak(&v6, &location);
  AXPerformBlockOnMainThreadAfterDelay();
  v3 = +[AXHAServer sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_21D74;
  v4[3] = &unk_49018;
  objc_copyWeak(v5, &location);
  [v3 registerListener:self forLiveListenHandler:v4];

  objc_destroyWeak(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    if (self->_liveListenRouteSelected)
    {
      v6 = [sub_223DC() server];
      v7 = [v6 hasActiveOrPendingCallOrFaceTime];

      if ((v7 & 1) == 0)
      {
        v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
        +[HCUtilities deviceIsPad];
        v32 = hearingLocString();
        [v8 setProperty:? forKey:?];
        [v5 addObject:v8];
        v9 = hearingLocString();
        if (self->_isLiveListening)
        {
          v10 = hearingLocString();

          v9 = v10;
        }

        v11 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v11 setButtonAction:"liveListenToggle:"];
        [v11 setProperty:@"LLStartButtonSpecID" forKey:PSKeyNameKey];
        v12 = [sub_223DC() server];
        v13 = [v12 isContinuitySessionActive];

        v14 = [NSNumber numberWithBool:v13 ^ 1];
        [v11 setProperty:v14 forKey:PSEnabledKey];

        [v5 addObject:v11];
        [(LiveListenViewController *)self pauseSoundRecognitionIfNecessary];
        if (self->_isLiveListening)
        {
          v15 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
          [v15 setProperty:objc_opt_class() forKey:PSCellClassKey];
          [v15 setIdentifier:@"LLMeterCellSpecID"];
          [v5 addObject:v15];
        }
      }
    }

    v16 = +[PSSpecifier emptyGroupSpecifier];
    v17 = hearingLocString();
    v18 = +[NRPairedDeviceRegistry sharedInstance];
    v19 = [v18 isPaired];

    if (v19)
    {
      v20 = hearingLocString();
      v21 = [NSString stringWithFormat:@"%@%@", v17, v20];

      v17 = v21;
    }

    [v16 setProperty:v17 forKey:PSFooterTextGroupKey];
    [v5 addObject:v16];
    v22 = hearingLocString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setLiveListenRemoteControlEnabled:" get:"liveListenRemoteControlEnabled" detail:0 cell:6 edit:0];

    [v23 setIdentifier:@"LLRemoteControlSpecID"];
    [v5 addObject:v23];
    v24 = +[HUHearingSettings sharedInstance];
    v25 = [v24 liveListenRemoteStartHistory];

    v26 = [v25 allKeys];
    v27 = [v26 count];

    if (v27)
    {
      v28 = +[PSSpecifier emptyGroupSpecifier];

      [v5 addObject:v28];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_224BC;
      v33[3] = &unk_49040;
      v33[4] = self;
      v34 = v5;
      [v25 enumerateKeysAndObjectsUsingBlock:v33];

      v16 = v28;
    }

    v29 = [v5 copy];
    v30 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v29;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setLiveListenRemoteControlEnabled:(id)a3
{
  v3 = a3;
  v5 = +[HUHearingSettings sharedInstance];
  v4 = [v3 BOOLValue];

  [v5 setLiveListenRemoteControlEnabled:v4];
}

- (id)liveListenRemoteControlEnabled
{
  v2 = +[HUHearingSettings sharedInstance];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 liveListenRemoteControlEnabled]);

  return v3;
}

- (void)_updateLiveListenButtonEnabled
{
  v6 = [(LiveListenViewController *)self specifierForID:@"LLStartButtonSpecID"];
  v3 = [sub_223DC() server];
  v4 = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:v4 ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(LiveListenViewController *)self reloadSpecifier:v6];
}

- (void)updateLiveListenWithState:(int64_t)a3 andLevel:(double)a4
{
  if (self->_isLiveListening != isLiveListenEnabledForState())
  {
    AXPerformBlockOnMainThread();
  }
}

- (void)updateLiveListenCell:(id)a3
{
  v10 = a3;
  isLiveListening = self->_isLiveListening;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isLiveListening)
  {
    if (isKindOfClass)
    {
      v6 = hearingLocString();
      [v10 setName:v6];

      [(LiveListenViewController *)self reloadSpecifier:v10];
      v7 = [(LiveListenViewController *)self specifierForID:@"LLMeterCellSpecID"];

      if (!v7)
      {
        v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
        [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v8 setIdentifier:@"LLMeterCellSpecID"];
        [(LiveListenViewController *)self insertSpecifier:v8 afterSpecifier:v10 animated:0];
      }
    }
  }

  else if (isKindOfClass)
  {
    v9 = hearingLocString();
    [v10 setName:v9];

    [(LiveListenViewController *)self reloadSpecifier:v10];
    [(LiveListenViewController *)self removeSpecifierID:@"LLMeterCellSpecID" animated:0];
  }

  _objc_release_x1();
}

- (void)liveListenToggle:(id)a3
{
  isLiveListening = self->_isLiveListening;
  v4 = +[AXHAServer sharedInstance];
  v5 = v4;
  if (isLiveListening)
  {
    [v4 stopLiveListen];
  }

  else
  {
    [v4 startLiveListen];
  }
}

- (id)_subtitleForStartDate:(id)a3 endDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSCalendar currentCalendar];
  v8 = +[NSDate now];
  v9 = [v7 startOfDayForDate:v8];
  v10 = [v7 startOfDayForDate:v5];
  v11 = [v7 components:16 fromDate:v9 toDate:v10 options:0];
  v12 = [v11 day];

  if (v5)
  {
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    if (v13 > 1)
    {
      v14 = objc_opt_new();
      [v14 setDateStyle:3];
      [v14 setTimeStyle:1];
      [v14 stringFromDate:v5];
    }

    else
    {
      v14 = objc_opt_new();
      [v14 setDateTimeStyle:0];
      [v14 setUnitsStyle:0];
      [v14 localizedStringForDate:v5 relativeToDate:v8];
    }
    v15 = ;

    if (v6)
    {
      v17 = objc_opt_new();
      [v17 setAllowedUnits:112];
      [v17 setUnitsStyle:3];
      v18 = [v17 stringFromDate:v5 toDate:v6];
      hearingLocString();
      v25 = v5;
      v19 = v8;
      v20 = v10;
      v21 = v9;
      v23 = v22 = v6;
      v16 = AXCFormattedString();

      v6 = v22;
      v9 = v21;
      v10 = v20;
      v8 = v19;
      v5 = v25;
    }

    else
    {
      v17 = hearingLocString();
      v16 = AXCFormattedString();
    }
  }

  else
  {
    v15 = &stru_49868;
    v16 = &stru_49868;
  }

  return v16;
}

- (void)pauseSoundRecognitionIfNecessary
{
  v3 = +[AXSDSettings sharedInstance];
  v4 = [v3 soundDetectionState];

  if (v4 == &dword_0 + 2)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Pausing Sound Recognition for Live Listen UI", v7, 2u);
    }

    v6 = +[AXSDSettings sharedInstance];
    [v6 setSoundDetectionState:1 source:AXSDSettingsEventSourceControlCenterHearingDevices];

    self->_pausedSoundRecognition = 1;
  }
}

- (void)restartSoundRecognitionIfNecessary
{
  if (self->_pausedSoundRecognition)
  {
    v3 = +[AXSDSettings sharedInstance];
    v4 = [v3 soundDetectionState];

    if (v4 == &dword_0 + 1)
    {
      v5 = AXLogUltron();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Resuming Sound Recognition for Live Listen UI", v7, 2u);
      }

      v6 = +[AXSDSettings sharedInstance];
      [v6 setSoundDetectionState:2 source:AXSDSettingsEventSourceControlCenterHearingDevices];

      self->_pausedSoundRecognition = 0;
    }
  }
}

@end
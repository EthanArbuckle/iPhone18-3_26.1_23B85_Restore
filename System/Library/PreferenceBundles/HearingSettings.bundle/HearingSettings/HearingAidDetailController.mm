@interface HearingAidDetailController
- (BOOL)shouldShowCombinedMicVolume;
- (BOOL)shouldShowCombinedMixedVolume;
- (BOOL)shouldShowCombinedSensitivityVolume;
- (BOOL)shouldShowCombinedStreamingVolume;
- (HearingAidDetailController)init;
- (_NSRange)programRangeForPresetId:(id)a3;
- (_NSRange)programsRange;
- (id)_combinedProgramSpecifiers;
- (id)_leftProgramSpecifiers;
- (id)_programSpecifiers;
- (id)_rightProgramSpecifiers;
- (id)_volumeSpecifiers;
- (id)deviceSpecifiers;
- (id)independentAids:(id)a3;
- (id)programSpecsFromAvailablePrograms:(id)a3 withGroupSpec:(id)a4 forEar:(int)a5;
- (id)shouldStream:(id)a3;
- (id)specifierForKey:(id)a3;
- (id)specifiers;
- (void)_reloadProgramSpecifiers;
- (void)_setupListeners;
- (void)_updateLiveListenButtonForOneness;
- (void)_updatePrograms:(id)a3;
- (void)applyAdjustIndependentlyChangesForVolume;
- (void)applyAverageVolume;
- (void)applyCachedVolumeProperties;
- (void)cacheVolumeProperties;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)dealloc;
- (void)forgetAid:(id)a3;
- (void)handleResignActive;
- (void)liveListenToggle:(id)a3;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)selectCommonProgramsForLeftAndRightDevices;
- (void)setBluetoothAvailability:(BOOL)a3;
- (void)setIndependentAids:(id)a3 specifier:(id)a4;
- (void)setShouldStream:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateAvailability;
- (void)updateLiveListenCell:(id)a3;
- (void)updateLiveListenWithState:(BOOL)a3 andLevel:(double)a4;
- (void)updateView;
- (void)viewDidLoad;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation HearingAidDetailController

- (HearingAidDetailController)init
{
  v9.receiver = self;
  v9.super_class = HearingAidDetailController;
  v2 = [(HearingAidDetailController *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"updateAvailability" name:HUNearbyDevicesDidChangeNotification object:0];

    objc_initWeak(&location, v2);
    v4 = +[HUAccessoryManager sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_FF24;
    v6[3] = &unk_48C28;
    objc_copyWeak(&v7, &location);
    [v4 registerBluetoothStateBlock:v6 withListener:v2];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HearingAidDetailController *)self device];
  [v4 setKeepInSync:0];

  v5 = +[AXHAServer sharedInstance];
  [v5 unregisterUpdateListener:self];

  [(HearingAidDetailController *)self setDevice:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v7 = HCLogHearingAids();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Deallocating", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v17 viewDidLoad];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10244, kAXSContinuityDisplayStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = [(HearingAidDetailController *)self table];
  v5 = objc_opt_class();
  v6 = +[AXHearingAidDetailCell cellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [(HearingAidDetailController *)self table];
  v8 = objc_opt_class();
  v9 = +[AXHearingSliderValueCell cellReuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(HearingAidDetailController *)self table];
  v11 = objc_opt_class();
  v12 = +[AXHearingProgramCell cellReuseIdentifier];
  [v10 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = [(HearingAidDetailController *)self table];
  v14 = objc_opt_class();
  v15 = +[AXHearingLiveListenMeterCell cellReuseIdentifier];
  [v13 registerClass:v14 forCellReuseIdentifier:v15];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"handleResignActive" name:UIApplicationWillResignActiveNotification object:0];
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v5 willBecomeActive];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Will become active", v4, 2u);
  }

  [(HearingAidDetailController *)self _setupListeners];
}

- (void)willResignActive
{
  v7.receiver = self;
  v7.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v7 willResignActive];
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Will resign active", v6, 2u);
  }

  v4 = +[AXHAServer sharedInstance];
  [v4 unregisterUpdateListener:self];

  v5 = [(HearingAidDetailController *)self device];
  [v5 setKeepInSync:0];
}

- (void)handleResignActive
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Will handle resign active notification", v6, 2u);
  }

  v4 = +[AXHAServer sharedInstance];
  [v4 unregisterUpdateListener:self];

  v5 = [(HearingAidDetailController *)self device];
  [v5 setKeepInSync:0];
}

- (void)_setupListeners
{
  location[1] = _NSConcreteStackBlock;
  location[2] = 3221225472;
  location[3] = sub_107B8;
  location[4] = &unk_48A20;
  location[5] = self;
  AXPerformBlockOnMainThreadAfterDelay();
  v3 = [(HearingAidDetailController *)self device];
  [v3 setKeepInSync:1];
  objc_initWeak(location, self);
  v4 = +[AXHAServer sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_107C0;
  v11[3] = &unk_48C50;
  objc_copyWeak(&v12, location);
  [v4 registerListener:self forLiveListenLevelsHandler:v11];

  v5 = +[AXHAServer sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10820;
  v7[3] = &unk_48CF0;
  v6 = v3;
  v8 = v6;
  v9 = self;
  objc_copyWeak(&v10, location);
  [v5 registerListener:self forPropertyUpdateHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)setBluetoothAvailability:(BOOL)a3
{
  if (self->_bluetoothAvailable != a3)
  {
    self->_bluetoothAvailable = a3;
    AXPerformBlockOnMainThread();
  }
}

- (void)updateAvailability
{
  v2 = HCLogHearingAids();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Updating availability", buf, 2u);
  }

  AXPerformBlockOnMainThread();
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v14 setSpecifier:v4];
  if (v4)
  {
    v5 = [v4 userInfo];
    [(HearingAidDetailController *)self setDevice:v5];

    v6 = [(HearingAidDetailController *)self device];
    [v6 setKeepInSync:1];

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_112E0;
    v12[4] = sub_112F0;
    v7 = self;
    v13 = v7;
    v8 = +[HUHearingAidSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_112F8;
    v11[3] = &unk_48A48;
    v11[4] = v12;
    [v8 registerUpdateBlock:v11 forRetrieveSelector:"shouldStreamToLeftAid" withListener:v7];

    v9 = +[HUHearingAidSettings sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11310;
    v10[3] = &unk_48A48;
    v10[4] = v12;
    [v9 registerUpdateBlock:v10 forRetrieveSelector:"shouldStreamToRightAid" withListener:v7];

    _Block_object_dispose(v12, 8);
  }
}

- (id)deviceSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(HearingAidDetailController *)self device];
  v5 = [v4 name];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v7 = [(HearingAidDetailController *)self device];
  [AXHearingAidDetailCell heightRequiredForDevice:v7];
  *&v8 = v8;
  v9 = [NSNumber numberWithFloat:v8];
  [v6 setProperty:v9 forKey:PSTableCellHeightKey];

  [v6 setIdentifier:@"DetailCell"];
  v10 = [(HearingAidDetailController *)self device];
  [v6 setUserInfo:v10];

  [v3 addObject:v6];

  return v3;
}

- (id)_programSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(HearingAidDetailController *)self device];
  v5 = [v4 showCombinedPrograms];

  if (v5)
  {
    [(HearingAidDetailController *)self _combinedProgramSpecifiers];
  }

  else
  {
    v6 = [(HearingAidDetailController *)self _leftProgramSpecifiers];
    [v3 addObjectsFromArray:v6];

    [(HearingAidDetailController *)self _rightProgramSpecifiers];
  }
  v7 = ;
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (id)_volumeSpecifiers
{
  v146 = +[NSMutableArray array];
  v147 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v145 = +[NSMutableArray array];
  v4 = [(HearingAidDetailController *)self device];
  v5 = [v4 propertyIsAvailable:0x4000000000 forEar:2];

  v6 = [(HearingAidDetailController *)self device];
  v7 = [v6 propertyIsAvailable:0x4000000000 forEar:4];

  v8 = [(HearingAidDetailController *)self device];
  v9 = [v8 propertyIsAvailable:64 forEar:2];

  v10 = [(HearingAidDetailController *)self device];
  v11 = [v10 propertyIsAvailable:64 forEar:4];

  v12 = [(HearingAidDetailController *)self device];
  if ([v12 propertyIsAvailable:0x2000000000 forEar:2])
  {
    v13 = 1;
  }

  else
  {
    v14 = [(HearingAidDetailController *)self device];
    v13 = [v14 propertyIsAvailable:0x2000000000 forEar:4];
  }

  v15 = [(HearingAidDetailController *)self device];
  if ([v15 propertyIsAvailable:0x1000000000 forEar:2])
  {
    v16 = 1;
  }

  else
  {
    v17 = [(HearingAidDetailController *)self device];
    v16 = [v17 propertyIsAvailable:0x1000000000 forEar:4];
  }

  v18 = [(HearingAidDetailController *)self device];
  v140 = [v18 propertyIsAvailable:128 forEar:2];

  v19 = [(HearingAidDetailController *)self device];
  v139 = [v19 propertyIsAvailable:128 forEar:4];

  v20 = [(HearingAidDetailController *)self device];
  v141 = [v20 propertyIsAvailable:0x80000000 forEar:2];

  v21 = [(HearingAidDetailController *)self device];
  v143 = [v21 propertyIsAvailable:0x80000000 forEar:4];

  if ([(HearingAidDetailController *)self shouldShowCombinedMixedVolume])
  {
    v22 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];
    [v22 setProperty:@"MasterMixedVolume" forKey:PSIDKey];
LABEL_9:
    v23 = v146;
    v24 = [NSNumber numberWithFloat:0.0];
    [v22 setProperty:v24 forKey:PSControlMinimumKey];

    LODWORD(v25) = 1.0;
    v26 = [NSNumber numberWithFloat:v25];
    [v22 setProperty:v26 forKey:PSControlMaximumKey];

    [v22 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v22 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v27 = [(HearingAidDetailController *)self device];
    [v22 setUserInfo:v27];

    [v146 addObject:v22];
    goto LABEL_18;
  }

  if (v5 && (-[HearingAidDetailController device](self, "device"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isLeftConnected], v28, v29))
  {
    v22 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];
    [v22 setProperty:@"LeftMixedVolume" forKey:PSIDKey];
    v30 = [NSNumber numberWithFloat:0.0];
    [v22 setProperty:v30 forKey:PSControlMinimumKey];

    LODWORD(v31) = 1.0;
    v32 = [NSNumber numberWithFloat:v31];
    [v22 setProperty:v32 forKey:PSControlMaximumKey];

    [v22 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v22 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v33 = [(HearingAidDetailController *)self device];
    [v22 setUserInfo:v33];

    [v146 addObject:v22];
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v34 = [(HearingAidDetailController *)self device];
  v35 = [v34 isRightConnected];

  if (v35)
  {
    v36 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v36 setProperty:@"RightMixedVolume" forKey:PSIDKey];
    v22 = v36;
    goto LABEL_9;
  }

LABEL_17:
  v23 = v146;
LABEL_18:
  if ([v23 count])
  {
    v37 = hearingLocString();
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v38 setIdentifier:@"MixedVolumesHeading"];
    [v23 insertObject:v38 atIndex:0];
    v22 = v38;
  }

  if ([(HearingAidDetailController *)self shouldShowCombinedMicVolume])
  {
    v39 = @"MasterVolume";
LABEL_22:
    v40 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v40 setProperty:v39 forKey:PSIDKey];
    v41 = [NSNumber numberWithFloat:0.0];
    [v40 setProperty:v41 forKey:PSControlMinimumKey];

    LODWORD(v42) = 1.0;
    v43 = [NSNumber numberWithFloat:v42];
    [v40 setProperty:v43 forKey:PSControlMaximumKey];

    [v40 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v40 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v44 = [(HearingAidDetailController *)self device];
    [v40 setUserInfo:v44];

    v45 = v147;
    [v147 addObject:v40];
    v22 = v40;
    goto LABEL_30;
  }

  if (v9 && (-[HearingAidDetailController device](self, "device"), v46 = objc_claimAutoreleasedReturnValue(), v47 = [v46 isLeftConnected], v46, v47))
  {
    v48 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v48 setProperty:@"LeftVolume" forKey:PSIDKey];
    v49 = [NSNumber numberWithFloat:0.0];
    [v48 setProperty:v49 forKey:PSControlMinimumKey];

    LODWORD(v50) = 1.0;
    v51 = [NSNumber numberWithFloat:v50];
    [v48 setProperty:v51 forKey:PSControlMaximumKey];

    [v48 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v48 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v52 = [(HearingAidDetailController *)self device];
    [v48 setUserInfo:v52];

    v45 = v147;
    [v147 addObject:v48];
    v22 = v48;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v45 = v147;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  v53 = [(HearingAidDetailController *)self device];
  v54 = [v53 isRightConnected];

  if (v54)
  {
    v39 = @"RightVolume";
    goto LABEL_22;
  }

LABEL_30:
  if ([v45 count])
  {
    v55 = hearingLocString();
    v56 = [PSSpecifier preferenceSpecifierNamed:v55 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v56 setIdentifier:@"VolumesHeading"];
    [v45 insertObject:v56 atIndex:0];
    [v23 addObjectsFromArray:v45];
    v22 = v56;
  }

  if ([(HearingAidDetailController *)self shouldShowCombinedSensitivityVolume])
  {
    v57 = @"MasterSensitivity";
LABEL_34:
    v58 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v58 setProperty:v57 forKey:PSIDKey];
    v59 = [NSNumber numberWithFloat:0.0];
    [v58 setProperty:v59 forKey:PSControlMinimumKey];

    LODWORD(v60) = 1.0;
    v61 = [NSNumber numberWithFloat:v60];
    [v58 setProperty:v61 forKey:PSControlMaximumKey];

    [v58 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v58 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v62 = [(HearingAidDetailController *)self device];
    [v58 setUserInfo:v62];

    [v3 addObject:v58];
    v22 = v58;
    goto LABEL_41;
  }

  if (v141)
  {
    v63 = [(HearingAidDetailController *)self device];
    v64 = [v63 isLeftConnected];

    if (v64)
    {
      v65 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

      [v65 setProperty:@"LeftSensitivity" forKey:PSIDKey];
      v66 = [NSNumber numberWithFloat:0.0];
      [v65 setProperty:v66 forKey:PSControlMinimumKey];

      LODWORD(v67) = 1.0;
      v68 = [NSNumber numberWithFloat:v67];
      [v65 setProperty:v68 forKey:PSControlMaximumKey];

      [v65 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
      [v65 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v69 = [(HearingAidDetailController *)self device];
      [v65 setUserInfo:v69];

      [v3 addObject:v65];
      v22 = v65;
    }
  }

  if (v143)
  {
    v70 = [(HearingAidDetailController *)self device];
    v71 = [v70 isRightConnected];

    if (v71)
    {
      v57 = @"RightSensitivity";
      goto LABEL_34;
    }
  }

LABEL_41:
  if ([v3 count])
  {
    v72 = hearingLocString();
    v73 = [PSSpecifier preferenceSpecifierNamed:v72 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v73 setIdentifier:@"SensitivityHeading"];
    [v23 addObject:v73];
    [v23 addObjectsFromArray:v3];
    v22 = v73;
  }

  if ((v13 | v16))
  {
    v74 = +[PSSpecifier emptyGroupSpecifier];
    [v23 addObject:v74];

    if (v13)
    {
      v75 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

      [v75 setProperty:@"Treble" forKey:PSIDKey];
      v76 = [NSNumber numberWithFloat:0.0];
      [v75 setProperty:v76 forKey:PSControlMinimumKey];

      LODWORD(v77) = 1.0;
      v78 = [NSNumber numberWithFloat:v77];
      [v75 setProperty:v78 forKey:PSControlMaximumKey];

      [v75 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
      [v75 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v79 = [(HearingAidDetailController *)self device];
      [v75 setUserInfo:v79];

      [v23 addObject:v75];
      v22 = v75;
    }

    v80 = v145;
    if (v16)
    {
      v81 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

      [v81 setProperty:@"Bass" forKey:PSIDKey];
      v82 = [NSNumber numberWithFloat:0.0];
      [v81 setProperty:v82 forKey:PSControlMinimumKey];

      LODWORD(v83) = 1.0;
      v84 = [NSNumber numberWithFloat:v83];
      [v81 setProperty:v84 forKey:PSControlMaximumKey];

      [v81 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
      [v81 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v85 = [(HearingAidDetailController *)self device];
      [v81 setUserInfo:v85];

      [v23 addObject:v81];
      v22 = v81;
    }
  }

  else
  {
    v80 = v145;
  }

  v86 = [(HearingAidDetailController *)self device];
  v87 = [v86 leftAvailable];
  v88 = [(HearingAidDetailController *)self device];
  if (v87 == [v88 rightAvailable])
  {
    v92 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];

    if ((v92 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_56:
    v93 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v93 setProperty:@"MasterStreamVolume" forKey:PSIDKey];
    v94 = [NSNumber numberWithFloat:0.0];
    [v93 setProperty:v94 forKey:PSControlMinimumKey];

    LODWORD(v95) = 1.0;
    v96 = [NSNumber numberWithFloat:v95];
    [v93 setProperty:v96 forKey:PSControlMaximumKey];

    [v93 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v93 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v97 = [(HearingAidDetailController *)self device];
    [v93 setUserInfo:v97];

    [v80 addObject:v93];
    v98 = [(HearingAidDetailController *)self device];
    v99 = [v98 rightSelectedStreamingProgram];
    v100 = [v99 name];

    if ([(__CFString *)v100 length])
    {
      v22 = v93;
      goto LABEL_91;
    }

    v101 = [(HearingAidDetailController *)self device];
    v102 = [v101 leftSelectedStreamingProgram];
    goto LABEL_88;
  }

  v89 = [(HearingAidDetailController *)self device];
  v90 = [v89 rightSelectedStreamingProgram];
  v91 = [v90 isSelected];
  v142 = v90;
  if (v91)
  {
    v137 = [(HearingAidDetailController *)self device];
    v136 = [v137 rightSelectedStreamingProgram];
    if ([v136 isStreamOrMixingStream])
    {
      v134 = [(HearingAidDetailController *)self device];
      if ([v134 rightAvailable] && v139)
      {

        v144 = 1;
LABEL_74:

        goto LABEL_75;
      }

      v138 = 1;
    }

    else
    {
      v138 = 0;
    }
  }

  else
  {
    v138 = 0;
  }

  v103 = [(HearingAidDetailController *)self device];
  v104 = [v103 leftSelectedStreamingProgram];
  if ([v104 isSelected])
  {
    v135 = v3;
    v105 = [(HearingAidDetailController *)self device];
    v106 = [v105 leftSelectedStreamingProgram];
    if ([v106 isStreamOrMixingStream])
    {
      v133 = v89;
      v107 = [(HearingAidDetailController *)self device];
      if ([v107 leftAvailable] & v140)
      {
        v144 = 1;
      }

      else
      {
        v144 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];
      }

      v89 = v133;
    }

    else
    {
      v144 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];
    }

    v23 = v146;
    v3 = v135;
    if ((v138 & 1) == 0)
    {
LABEL_73:
      v80 = v145;
      v90 = v142;
      if (!v91)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else
  {
    v144 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];

    if (!v138)
    {
      goto LABEL_73;
    }
  }

  v80 = v145;
  v90 = v142;
  if (v91)
  {
    goto LABEL_74;
  }

LABEL_75:

  if (v144)
  {
    goto LABEL_56;
  }

LABEL_76:
  v108 = [(HearingAidDetailController *)self device];
  if (![v108 isLeftConnected])
  {
    v100 = 0;
LABEL_83:

    goto LABEL_84;
  }

  v109 = [(HearingAidDetailController *)self device];
  v110 = [v109 leftSelectedStreamingProgram];
  if (([v110 isStreamOrMixingStream] & 1) == 0)
  {

    v100 = 0;
    goto LABEL_82;
  }

  v111 = v3;
  v112 = [(HearingAidDetailController *)self device];
  v113 = [v112 leftSelectedStreamingProgram];
  v114 = [v113 isSelected] & v140;

  if (v114 == 1)
  {
    v115 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v115 setProperty:@"LeftStreamVolume" forKey:PSIDKey];
    v116 = [NSNumber numberWithFloat:0.0];
    [v115 setProperty:v116 forKey:PSControlMinimumKey];

    LODWORD(v117) = 1.0;
    v118 = [NSNumber numberWithFloat:v117];
    [v115 setProperty:v118 forKey:PSControlMaximumKey];

    [v115 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v115 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v119 = [(HearingAidDetailController *)self device];
    [v115 setUserInfo:v119];

    [v80 addObject:v115];
    v108 = [(HearingAidDetailController *)self device];
    v109 = [v108 leftSelectedStreamingProgram];
    v100 = [v109 name];
    v22 = v115;
    v23 = v146;
    v3 = v111;
LABEL_82:

    goto LABEL_83;
  }

  v100 = 0;
  v23 = v146;
  v3 = v111;
LABEL_84:
  v101 = [(HearingAidDetailController *)self device];
  if (![v101 isRightConnected])
  {
LABEL_90:

    goto LABEL_91;
  }

  v102 = [(HearingAidDetailController *)self device];
  v120 = [v102 rightSelectedStreamingProgram];
  if (![v120 isStreamOrMixingStream])
  {
LABEL_89:

    v23 = v146;
    goto LABEL_90;
  }

  v121 = v3;
  v122 = [(HearingAidDetailController *)self device];
  v123 = [v122 rightSelectedStreamingProgram];
  v124 = [v123 isSelected] & v139;

  if (v124 == 1)
  {
    v93 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:0 get:0 detail:0 cell:5 edit:0];

    [v93 setProperty:@"RightStreamVolume" forKey:PSIDKey];
    v125 = [NSNumber numberWithFloat:0.0];
    [v93 setProperty:v125 forKey:PSControlMinimumKey];

    LODWORD(v126) = 1.0;
    v127 = [NSNumber numberWithFloat:v126];
    [v93 setProperty:v127 forKey:PSControlMaximumKey];

    [v93 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
    [v93 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v128 = [(HearingAidDetailController *)self device];
    [v93 setUserInfo:v128];

    [v145 addObject:v93];
    v101 = [(HearingAidDetailController *)self device];
    v102 = [v101 rightSelectedStreamingProgram];
    v3 = v121;
    v80 = v145;
LABEL_88:
    [v102 name];
    v100 = v120 = v100;
    v22 = v93;
    goto LABEL_89;
  }

  v3 = v121;
  v80 = v145;
  v23 = v146;
LABEL_91:
  if ([v80 count])
  {
    if (![(__CFString *)v100 length])
    {

      v100 = &stru_49868;
    }

    v129 = hearingLocString();
    v130 = [NSString stringWithFormat:v129, v100];

    v131 = [PSSpecifier preferenceSpecifierNamed:v130 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v131 setIdentifier:@"StreamHeading"];
    [v23 addObject:v131];
    [v23 addObjectsFromArray:v80];

    v22 = v131;
  }

  return v23;
}

- (BOOL)shouldShowCombinedStreamingVolume
{
  v5 = [(HearingAidDetailController *)self device];
  v29 = [v5 propertyIsAvailable:128 forEar:2];

  v6 = [(HearingAidDetailController *)self device];
  v27 = [v6 propertyIsAvailable:128 forEar:4];

  v7 = [(HearingAidDetailController *)self device];
  v8 = [v7 rightSelectedStreamingProgram];
  v9 = [v8 ear];
  if (v9 == 6 && (-[HearingAidDetailController device](self, "device"), v2 = objc_claimAutoreleasedReturnValue(), [v2 leftSelectedStreamingProgram], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "ear") == 6))
  {
    v26 = 1;
  }

  else
  {
    v10 = [(HearingAidDetailController *)self device];
    v11 = [v10 rightSelectedStreamingProgram];
    v12 = [(HearingAidDetailController *)self device];
    v13 = [v12 leftSelectedStreamingProgram];
    v26 = [v11 isEqual:v13];

    if (v9 != 6)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  v14 = +[HUHearingAidSettings sharedInstance];
  if ([v14 independentHearingAidSettings])
  {
    v15 = 0;
  }

  else
  {
    v16 = [(HearingAidDetailController *)self device];
    if ([v16 showCombinedPrograms])
    {
      v17 = [(HearingAidDetailController *)self device];
      if (([v17 supportsCombinedVolumesForProperty:128] & v29 & v27 & v26) == 1)
      {
        v18 = [(HearingAidDetailController *)self device];
        v19 = [v18 leftSelectedStreamingProgram];
        if ([v19 isStreamOrMixingStream])
        {
          v20 = [(HearingAidDetailController *)self device];
          v21 = [v20 rightSelectedStreamingProgram];
          if ([v21 isStreamOrMixingStream])
          {
            v22 = [(HearingAidDetailController *)self device];
            v23 = [v22 leftSelectedStreamingProgram];
            if ([v23 isSelected])
            {
              v28 = [(HearingAidDetailController *)self device];
              [v28 rightSelectedStreamingProgram];
              v24 = v30 = v22;
              v15 = [v24 isSelected];

              v22 = v30;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_leftProgramSpecifiers
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 isLeftConnected];

  if (v4)
  {
    v5 = [(HearingAidDetailController *)self device];
    v6 = [v5 leftPrograms];

    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        [v8 setEar:2];

        ++v7;
      }

      while ([v6 count] > v7);
    }

    v9 = hearingLocString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setIdentifier:@"LeftProgramsHeader"];
    [v10 setProperty:@"LeftProgramsHeader" forKey:PSIDKey];
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  v11 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:v6 withGroupSpec:v10 forEar:2];

  return v11;
}

- (id)_rightProgramSpecifiers
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 isRightConnected];

  if (v4)
  {
    v5 = [(HearingAidDetailController *)self device];
    v6 = [v5 rightPrograms];

    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        [v8 setEar:4];

        ++v7;
      }

      while ([v6 count] > v7);
    }

    v9 = hearingLocString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setIdentifier:@"RightProgramsHeader"];
    [v10 setProperty:@"RightProgramsHeader" forKey:PSIDKey];
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  v11 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:v6 withGroupSpec:v10 forEar:4];

  return v11;
}

- (id)_combinedProgramSpecifiers
{
  v3 = hearingLocString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v4 setIdentifier:@"ProgramsHeader"];
  [v4 setProperty:@"ProgramsHeader" forKey:PSIDKey];
  v5 = [(HearingAidDetailController *)self device];
  v6 = [v5 combinedPrograms];

  v7 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:v6 withGroupSpec:v4 forEar:6];

  return v7;
}

- (id)programSpecsFromAvailablePrograms:(id)a3 withGroupSpec:(id)a4 forEar:(int)a5
{
  v6 = a3;
  v20 = a4;
  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = PSCellClassKey;
    v12 = PSEnabledKey;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (![v7 count])
        {
          [v7 addObject:v20];
        }

        v15 = [v14 name];
        v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:4 edit:0];

        [v16 setProperty:objc_opt_class() forKey:v11];
        v17 = [NSNumber numberWithBool:1];
        [v16 setProperty:v17 forKey:v12];

        v18 = [NSNumber numberWithUnsignedInt:a5];
        [v16 setProperty:v18 forKey:@"AXHAPresetEar"];

        [v16 setUserInfo:v14];
        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_43;
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[AXHAServer sharedInstance];
  v7 = [v6 hearingAidReachable];

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HearingAidDetailController *)self device];
    v10 = [v9 didLoadRequiredProperties];
    v11 = [(HearingAidDetailController *)self device];
    *buf = 67109632;
    v67 = v10;
    v68 = 1024;
    v69 = [v11 isPaired];
    v70 = 1024;
    v71 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Preparing specifiers, HearingDevice is (Loaded=%d, Paired=%d, Reachable=%d)", buf, 0x14u);
  }

  v12 = [(HearingAidDetailController *)self device];
  v13 = &__AXStringForVariables_ptr;
  if (![v12 didLoadRequiredProperties])
  {
    goto LABEL_9;
  }

  v14 = [(HearingAidDetailController *)self device];
  if (![v14 isPaired])
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v7)
  {
    v34 = [(HearingAidDetailController *)self device];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_26;
    }

LABEL_10:
    v15 = [(HearingAidDetailController *)self disconnectedSpecifiers];
    [v5 addObjectsFromArray:v15];
LABEL_11:

    goto LABEL_12;
  }

LABEL_26:
  v36 = [(HearingAidDetailController *)self deviceSpecifiers];
  [v5 addObjectsFromArray:v36];

  v37 = [(HearingAidDetailController *)self _volumeSpecifiers];
  [v5 addObjectsFromArray:v37];

  v38 = [(HearingAidDetailController *)self _programSpecifiers];
  [v5 addObjectsFromArray:v38];

  if (self->_hearingAidStreamAvailable)
  {
    v39 = [sub_13F9C() server];
    v40 = [v39 hasActiveOrPendingCallOrFaceTime];

    if ((v40 & 1) == 0)
    {
      v15 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      +[HCUtilities deviceIsPad];
      v65 = hearingLocString();
      [v15 setProperty:? forKey:?];
      [v5 addObject:v15];
      v41 = hearingLocString();
      if (self->_isLiveListening)
      {
        v42 = hearingLocString();

        v41 = v42;
      }

      v43 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:13 edit:0];
      [v43 setButtonAction:"liveListenToggle:"];
      [v43 setProperty:@"LiveListenButtonCell" forKey:PSKeyNameKey];
      v44 = [sub_13F9C() server];
      v45 = [v44 isContinuitySessionActive];

      v46 = [NSNumber numberWithBool:v45 ^ 1];
      [v43 setProperty:v46 forKey:PSEnabledKey];

      [v5 addObject:v43];
      [(HearingAidDetailController *)self pauseSoundRecognitionIfNecessary];
      if (self->_isLiveListening)
      {
        v47 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
        [v47 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v47 setIdentifier:@"LiveListeningCell"];
        [v5 addObject:v47];
      }

      v13 = &__AXStringForVariables_ptr;
      goto LABEL_11;
    }
  }

LABEL_12:
  v16 = [(HearingAidDetailController *)self device];
  v17 = [v16 isPaired];
  if (v7 & 1 | ((v17 & 1) == 0))
  {
    v18 = v17;

    if (!v18)
    {
      goto LABEL_37;
    }

LABEL_16:
    v64 = +[PSSpecifier emptyGroupSpecifier];
    [v5 insertObject:? atIndex:?];
    v21 = [(HearingAidDetailController *)self device];
    v22 = [v21 rightAvailable];

    if (v22)
    {
      v23 = hearingSettingsLocString(@"HearingAidStreamToggleRight", @"HearingAidDetailSettings");
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:"setShouldStream:specifier:" get:"shouldStream:" detail:0 cell:6 edit:0];

      [v24 setProperty:&off_4C698 forKey:@"ear"];
      [v24 setProperty:@"RightStream" forKey:PSIDKey];
      [v5 insertObject:v24 atIndex:2];

      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v26 = [(HearingAidDetailController *)self device];
    v27 = [v26 leftAvailable];

    if (v27)
    {
      v28 = hearingSettingsLocString(@"HearingAidStreamToggleLeft", @"HearingAidDetailSettings");
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setShouldStream:specifier:" get:"shouldStream:" detail:0 cell:6 edit:0];

      [v29 setProperty:&off_4C6B0 forKey:@"ear"];
      [v29 setProperty:@"LeftStream" forKey:PSIDKey];
      [v5 insertObject:v29 atIndex:v25];

      ++v25;
    }

    v30 = [(HearingAidDetailController *)self device];
    if (![v30 leftAvailable])
    {
      goto LABEL_35;
    }

    v31 = [(HearingAidDetailController *)self device];
    v32 = [v31 rightAvailable];

    if (v32)
    {
      v33 = [(HearingAidDetailController *)self device];
      if ([v33 supportsCombinedPresets])
      {

LABEL_34:
        v50 = hearingSettingsLocString(@"HearingAidIndependenceTitle", @"HearingAidDetailSettings");
        v30 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setIndependentAids:specifier:" get:"independentAids:" detail:0 cell:6 edit:0];

        [v30 setIdentifier:@"Independence"];
        [v5 insertObject:v30 atIndex:v25];
LABEL_35:

        goto LABEL_36;
      }

      v48 = [(HearingAidDetailController *)self device];
      v49 = [v48 supportsCombinedVolumes];

      if (v49)
      {
        goto LABEL_34;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = [(HearingAidDetailController *)self device];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_37:
  if ([v13[143] isInternalInstall])
  {
    v51 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v51];
    v52 = hearingSettingsLocString(@"AdvancedSettingsTitle", @"HearingAidDetailSettings");
    v53 = [PSSpecifier preferenceSpecifierNamed:v52 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v53 setIdentifier:@"AdvancedSettings"];
    v54 = [(HearingAidDetailController *)self device];
    [v53 setUserInfo:v54];

    [v5 addObject:v53];
  }

  if (self->_bluetoothAvailable)
  {
    v55 = [(HearingAidDetailController *)self device];
    v56 = [v55 isPaired];

    if (v56)
    {
      v57 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v57];
      v58 = hearingSettingsLocString(@"ForgetHearingAidTitle", @"HearingAidDetailSettings");
      v59 = [PSSpecifier preferenceSpecifierNamed:v58 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v59 setButtonAction:"forgetAid:"];
      [v5 addObject:v59];
    }
  }

  v60 = *&self->PSListController_opaque[v3];
  *&self->PSListController_opaque[v3] = v5;

  v61 = [(HearingAidDetailController *)self device];
  v62 = [v61 name];
  [(HearingAidDetailController *)self setTitle:v62];

  v4 = *&self->PSListController_opaque[v3];
LABEL_43:

  return v4;
}

- (void)_updateLiveListenButtonForOneness
{
  v6 = [(HearingAidDetailController *)self specifierForID:@"LiveListenButtonCell"];
  v3 = [sub_13F9C() server];
  v4 = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:v4 ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(HearingAidDetailController *)self reloadSpecifier:v6];
}

- (void)selectCommonProgramsForLeftAndRightDevices
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 showCombinedPrograms];

  if (v4)
  {
    v5 = [(HearingAidDetailController *)self device];
    v6 = [v5 leftSelectedProgram];

    v7 = [(HearingAidDetailController *)self device];
    v8 = [v7 rightSelectedProgram];

    v9 = [(HearingAidDetailController *)self device];
    v10 = [v9 leftSelectedStreamingProgram];

    v11 = [(HearingAidDetailController *)self device];
    v12 = [v11 rightSelectedStreamingProgram];

    LODWORD(v11) = [v6 index];
    if (v11 != [v8 index] || (v13 = objc_msgSend(v10, "index"), v13 != objc_msgSend(v12, "index")))
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v14 = [(HearingAidDetailController *)self device];
      v15 = [v14 rightPrograms];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_14474;
      v31[3] = &unk_48D18;
      v37 = &v39;
      v16 = v6;
      v32 = v16;
      v17 = v8;
      v33 = v17;
      v34 = self;
      v38 = &v43;
      v18 = v22;
      v35 = v18;
      v19 = v12;
      v36 = v19;
      [v15 enumerateObjectsUsingBlock:v31];

      *(v44 + 24) = 0;
      *(v40 + 24) = 0;
      v20 = [(HearingAidDetailController *)self device];
      v21 = [v20 leftPrograms];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_145E4;
      v23[3] = &unk_48D18;
      v29 = &v39;
      v24 = v17;
      v25 = v16;
      v26 = self;
      v30 = &v43;
      v27 = v19;
      v28 = v18;
      [v21 enumerateObjectsUsingBlock:v23];

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
      v10 = v22;
    }
  }
}

- (void)updateView
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 didLoadRequiredProperties];

  if (v4)
  {
    v5 = [(HearingAidDetailController *)self device];
    [v5 setKeepInSync:1];

    v6 = OBJC_IVAR___PSListController__specifiers;
    v7 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count];
    v8 = [(HearingAidDetailController *)self device];
    v9 = [v8 availableEars];
    v10 = 3;
    if (v9 == 6)
    {
      v10 = 6;
    }

    if (v7 <= v10)
    {
    }

    else
    {
      v11 = +[AXHAServer sharedInstance];
      v12 = [v11 hearingAidReachable];

      if (v12)
      {
        v13 = [(HearingAidDetailController *)self indexOfSpecifierID:@"ProgramsHeader"];
        v14 = [(HearingAidDetailController *)self indexOfSpecifierID:@"RightProgramsHeader"];
        v15 = [(HearingAidDetailController *)self indexOfSpecifierID:@"LeftProgramsHeader"];
        v16 = [(HearingAidDetailController *)self device];
        v17 = [v16 showCombinedPrograms];

        if (v17 && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [(HearingAidDetailController *)self _combinedProgramSpecifiers];
LABEL_9:
          [(HearingAidDetailController *)self _updatePrograms:v18];
LABEL_10:

LABEL_25:
          [(HearingAidDetailController *)self reloadSpecifierID:@"DetailCell"];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = *&self->PSListController_opaque[v6];
          v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v34;
            v26 = PSTableCellKey;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v34 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v33 + 1) + 8 * i);
                if (v28)
                {
                  v29 = [*(*(&v33 + 1) + 8 * i) propertyForKey:v26];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v31 = [v28 propertyForKey:v26];
                    [v31 updateValue];
                  }
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
            }

            while (v24);
          }

          return;
        }

        v19 = [(HearingAidDetailController *)self device];
        if (([v19 showCombinedPrograms] & 1) != 0 || v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = +[NSMutableArray array];
            v20 = [(HearingAidDetailController *)self _leftProgramSpecifiers];
            [v18 addObjectsFromArray:v20];

            v21 = [(HearingAidDetailController *)self _rightProgramSpecifiers];
            [v18 addObjectsFromArray:v21];

            if (![v18 count])
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }
        }

        [(HearingAidDetailController *)self reloadSpecifiers];
        goto LABEL_25;
      }
    }

    [(HearingAidDetailController *)self reloadSpecifiers];
  }

  else
  {
    [(HearingAidDetailController *)self reloadSpecifiers];
    v32 = [(HearingAidDetailController *)self device];
    [v32 loadRequiredProperties];
  }
}

- (void)_updatePrograms:(id)a3
{
  v4 = a3;
  v5 = [(HearingAidDetailController *)self programsRange];
  v7 = v6;
  if ([v4 count] == v6)
  {
    v8 = [(HearingAidDetailController *)self device];
    v9 = [v8 selectedPrograms];

    v10 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] subarrayWithRange:{v5, v7}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_14C74;
    v12[3] = &unk_48D40;
    v13 = v9;
    v14 = self;
    v11 = v9;
    [v10 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    [(HearingAidDetailController *)self updateSpecifiersInRange:v5 withSpecifiers:v7, v4];
  }
}

- (_NSRange)programRangeForPresetId:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(HearingAidDetailController *)self specifierForID:v4];

  if (v6)
  {
    v23 = -1;
    [(HearingAidDetailController *)self getGroup:&v23 row:0 ofSpecifier:v6];
    if (v23 != -1)
    {
      v7 = [(HearingAidDetailController *)self specifiersInGroup:?];
      [v5 addObjectsFromArray:v7];
    }
  }

  v8 = [(HearingAidDetailController *)self specifiers];
  v9 = [v8 count] - 2;

  if ([v5 count] < 2)
  {
    v20 = 0;
  }

  else
  {
    v10 = OBJC_IVAR___PSListController__specifiers;
    v11 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    v12 = [v5 objectAtIndex:0];
    v13 = [v11 indexOfObject:v12];

    v14 = *&self->PSListController_opaque[v10];
    v15 = [v5 lastObject];
    v16 = [v14 indexOfObject:v15];

    v18 = v13 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0x7FFFFFFFFFFFFFFFLL;
    v19 = v16 > v13;
    if (v18 && v19)
    {
      v20 = v16 - v13;
    }

    else
    {
      v20 = 0;
    }

    if (v18 && v19)
    {
      v9 = v13;
    }
  }

  v21 = v9;
  v22 = v20;
  result.length = v22;
  result.location = v21;
  return result;
}

- (_NSRange)programsRange
{
  v3 = [(HearingAidDetailController *)self specifierForID:@"AdvancedSettings"];

  if (v3)
  {
    v4 = -6;
  }

  else
  {
    v4 = -4;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v21 = 0;
  v22 = 0;
  v20 = "";
  v5 = OBJC_IVAR___PSListController__specifiers;
  v21 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count] + v4;
  v22 = 0;
  v6 = [NSArray arrayWithObjects:@"ProgramsHeader", @"LeftProgramsHeader", @"RightProgramsHeader", 0];
  v7 = [[PSSpecifierGroupIndex alloc] initWithSpecifiers:*&self->PSListController_opaque[v5]];
  v8 = [(HearingAidDetailController *)self specifiersForIDs:v6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_15080;
  v14[3] = &unk_48D68;
  v14[4] = self;
  v9 = v7;
  v15 = v9;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v14];
  v10 = v18[4];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = HearingAidDetailController;
  v6 = a4;
  [(HearingAidDetailController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(HearingAidDetailController *)self indexForIndexPath:v6, v14.receiver, v14.super_class];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v7];
    v9 = [v8 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v8 userInfo];
      [v11 setIsSelected:{objc_msgSend(v11, "isSelected") ^ 1}];
      v12 = [(HearingAidDetailController *)self device];
      v13 = [v8 propertyForKey:@"AXHAPresetEar"];
      [v12 selectProgram:v11 forEar:{objc_msgSend(v13, "intValue")}];

      [(HearingAidDetailController *)self _reloadProgramSpecifiers];
    }
  }
}

- (void)_reloadProgramSpecifiers
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 showCombinedPrograms];

  if (v4)
  {
    v5 = [(HearingAidDetailController *)self programsRange];
    v7 = v6;
    v8 = [(HearingAidDetailController *)self specifiers];
    v9 = [v8 subarrayWithRange:{v5, v7}];
    v10 = v9;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_15498;
    v22[3] = &unk_48D90;
    v22[4] = self;
    v11 = v22;
  }

  else
  {
    v12 = [(HearingAidDetailController *)self programRangeForPresetId:@"LeftProgramsHeader"];
    v14 = v13;
    v15 = [(HearingAidDetailController *)self specifiers];
    v16 = [v15 subarrayWithRange:{v12, v14}];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_154A4;
    v21[3] = &unk_48D90;
    v21[4] = self;
    [v16 enumerateObjectsUsingBlock:v21];

    v17 = [(HearingAidDetailController *)self programRangeForPresetId:@"RightProgramsHeader"];
    v19 = v18;
    v8 = [(HearingAidDetailController *)self specifiers];
    v9 = [v8 subarrayWithRange:{v17, v19}];
    v10 = v9;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_154B0;
    v20[3] = &unk_48D90;
    v20[4] = self;
    v11 = v20;
  }

  [v9 enumerateObjectsUsingBlock:v11];
}

- (id)specifierForKey:(id)a3
{
  v4 = a3;
  [(HearingAidDetailController *)self specifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = PSKeyNameKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 propertyForKey:{v9, v16}];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)updateLiveListenWithState:(BOOL)a3 andLevel:(double)a4
{
  if (self->_isLiveListening != a3)
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

      [(HearingAidDetailController *)self reloadSpecifier:v10];
      v7 = [(HearingAidDetailController *)self specifierForID:@"LiveListeningCell"];

      if (!v7)
      {
        v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
        [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v8 setIdentifier:@"LiveListeningCell"];
        [(HearingAidDetailController *)self insertSpecifier:v8 afterSpecifier:v10 animated:0];
      }
    }
  }

  else if (isKindOfClass)
  {
    v9 = hearingLocString();
    [v10 setName:v9];

    [(HearingAidDetailController *)self reloadSpecifier:v10];
    [(HearingAidDetailController *)self removeSpecifierID:@"LiveListeningCell" animated:0];
  }

  _objc_release_x1();
}

- (void)liveListenToggle:(id)a3
{
  isLiveListening = self->_isLiveListening;
  v8 = a3;
  v5 = +[AXHAServer sharedInstance];
  v6 = v5;
  if (isLiveListening)
  {
    [v5 stopLiveListen];
    v7 = 0;
  }

  else
  {
    [v5 startLiveListen];
    v7 = 1;
  }

  self->_isLiveListening = v7;
  [(HearingAidDetailController *)self updateLiveListenCell:v8];
}

- (void)setIndependentAids:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[HUHearingAidSettings sharedInstance];
  v7 = [v5 BOOLValue];

  [v6 setIndependentHearingAidSettings:v7];
  [(HearingAidDetailController *)self applyAdjustIndependentlyChangesForVolume];
  [(HearingAidDetailController *)self selectCommonProgramsForLeftAndRightDevices];

  [(HearingAidDetailController *)self reloadSpecifiers];
}

- (id)independentAids:(id)a3
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 independentHearingAidSettings]);

  return v4;
}

- (BOOL)shouldShowCombinedMixedVolume
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 propertyIsAvailable:0x4000000000 forEar:2];

  v5 = [(HearingAidDetailController *)self device];
  v6 = [v5 propertyIsAvailable:0x4000000000 forEar:4];

  v7 = [(HearingAidDetailController *)self device];
  v8 = [v7 leftAvailable];
  v9 = [(HearingAidDetailController *)self device];
  if (v8 == [v9 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v12 = [(HearingAidDetailController *)self device];
      if ([v12 supportsCombinedVolumes])
      {
        v13 = [(HearingAidDetailController *)self device];
        v10 = [v13 supportsCombinedVolumesForProperty:0x4000000000] & v4 & v6;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)shouldShowCombinedMicVolume
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 propertyIsAvailable:64 forEar:2];

  v5 = [(HearingAidDetailController *)self device];
  v6 = [v5 propertyIsAvailable:64 forEar:4];

  v7 = [(HearingAidDetailController *)self device];
  v8 = [v7 leftAvailable];
  v9 = [(HearingAidDetailController *)self device];
  if (v8 == [v9 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v12 = [(HearingAidDetailController *)self device];
      if ([v12 supportsCombinedVolumes])
      {
        v13 = [(HearingAidDetailController *)self device];
        v10 = [v13 supportsCombinedVolumesForProperty:64] & v4 & v6;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)shouldShowCombinedSensitivityVolume
{
  v3 = [(HearingAidDetailController *)self device];
  v4 = [v3 propertyIsAvailable:0x80000000 forEar:2];

  v5 = [(HearingAidDetailController *)self device];
  v6 = [v5 propertyIsAvailable:0x80000000 forEar:4];

  v7 = [(HearingAidDetailController *)self device];
  v8 = [v7 leftAvailable];
  v9 = [(HearingAidDetailController *)self device];
  if (v8 == [v9 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v12 = [(HearingAidDetailController *)self device];
      if ([v12 supportsCombinedVolumes])
      {
        v13 = [(HearingAidDetailController *)self device];
        v10 = [v13 supportsCombinedVolumesForProperty:0x80000000] & v4 & v6;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)applyAdjustIndependentlyChangesForVolume
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = [v3 independentHearingAidSettings];

  if (v4)
  {

    [(HearingAidDetailController *)self applyCachedVolumeProperties];
  }

  else
  {
    [(HearingAidDetailController *)self cacheVolumeProperties];

    [(HearingAidDetailController *)self applyAverageVolume];
  }
}

- (void)applyCachedVolumeProperties
{
  if ([(HearingAidDetailController *)self shouldShowCombinedMicVolume])
  {
    if ([(HearingAidDetailController *)self shouldShowCombinedMixedVolume])
    {
      if ([(HearingAidDetailController *)self shouldShowCombinedSensitivityVolume])
      {
        if ([(HearingAidDetailController *)self shouldShowCombinedStreamingVolume])
        {
          return;
        }

        v6 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedRightStreamVolume];
        [v6 setRightStreamVolume:?];

        v7 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedLeftStreamVolume];
        [v7 setLeftStreamVolume:?];
      }

      else
      {
        v5 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedRightSensitivity];
        [v5 setRightSensitivity:?];

        v7 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedLeftSensitivity];
        [v7 setLeftSensitivity:?];
      }
    }

    else
    {
      v4 = [(HearingAidDetailController *)self device];
      [(HearingAidDetailController *)self cachedRightMixedVolume];
      [v4 setRightMixedVolume:?];

      v7 = [(HearingAidDetailController *)self device];
      [(HearingAidDetailController *)self cachedLeftMixedVolume];
      [v7 setLeftMixedVolume:?];
    }
  }

  else
  {
    v3 = [(HearingAidDetailController *)self device];
    [(HearingAidDetailController *)self cachedRightMicrophoneVolume];
    [v3 setRightMicrophoneVolume:?];

    v7 = [(HearingAidDetailController *)self device];
    [(HearingAidDetailController *)self cachedLeftMicrophoneVolume];
    [v7 setLeftMicrophoneVolume:?];
  }
}

- (void)cacheVolumeProperties
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Caching volume properties.", v12, 2u);
  }

  v4 = [(HearingAidDetailController *)self device];
  [v4 rightMicrophoneVolume];
  [(HearingAidDetailController *)self setCachedRightMicrophoneVolume:?];

  v5 = [(HearingAidDetailController *)self device];
  [v5 leftMicrophoneVolume];
  [(HearingAidDetailController *)self setCachedLeftMicrophoneVolume:?];

  v6 = [(HearingAidDetailController *)self device];
  [v6 rightMixedVolume];
  [(HearingAidDetailController *)self setCachedRightMixedVolume:?];

  v7 = [(HearingAidDetailController *)self device];
  [v7 leftMixedVolume];
  [(HearingAidDetailController *)self setCachedLeftMixedVolume:?];

  v8 = [(HearingAidDetailController *)self device];
  [v8 rightSensitivity];
  [(HearingAidDetailController *)self setCachedRightSensitivity:?];

  v9 = [(HearingAidDetailController *)self device];
  [v9 leftSensitivity];
  [(HearingAidDetailController *)self setCachedLeftSensitivity:?];

  v10 = [(HearingAidDetailController *)self device];
  [v10 rightStreamVolume];
  [(HearingAidDetailController *)self setCachedRightStreamVolume:?];

  v11 = [(HearingAidDetailController *)self device];
  [v11 leftStreamVolume];
  [(HearingAidDetailController *)self setCachedLeftStreamVolume:?];
}

- (void)applyAverageVolume
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Applying volume average to volume sliders.", v36, 2u);
  }

  v4 = [(HearingAidDetailController *)self device];
  [v4 leftMicrophoneVolume];
  v6 = v5;
  v7 = [(HearingAidDetailController *)self device];
  [v7 rightMicrophoneVolume];
  v9 = (v6 + v8) * 0.5;

  v10 = [(HearingAidDetailController *)self device];
  [v10 leftMixedVolume];
  v12 = v11;
  v13 = [(HearingAidDetailController *)self device];
  [v13 rightMixedVolume];
  v15 = (v12 + v14) * 0.5;

  v16 = [(HearingAidDetailController *)self device];
  [v16 leftSensitivity];
  v18 = v17;
  v19 = [(HearingAidDetailController *)self device];
  [v19 rightSensitivity];
  v21 = (v18 + v20) * 0.5;

  v22 = [(HearingAidDetailController *)self device];
  [v22 leftStreamVolume];
  v24 = v23;
  v25 = [(HearingAidDetailController *)self device];
  [v25 rightStreamVolume];
  v27 = (v24 + v26) * 0.5;

  v28 = [(HearingAidDetailController *)self device];
  [v28 setRightMixedVolume:v15];

  v29 = [(HearingAidDetailController *)self device];
  [v29 setLeftMixedVolume:v15];

  v30 = [(HearingAidDetailController *)self device];
  [v30 setRightMicrophoneVolume:v9];

  v31 = [(HearingAidDetailController *)self device];
  [v31 setLeftMicrophoneVolume:v9];

  v32 = [(HearingAidDetailController *)self device];
  [v32 setRightSensitivity:v21];

  v33 = [(HearingAidDetailController *)self device];
  [v33 setLeftSensitivity:v21];

  v34 = [(HearingAidDetailController *)self device];
  [v34 setRightStreamVolume:v27];

  v35 = [(HearingAidDetailController *)self device];
  [v35 setLeftStreamVolume:v27];
}

- (void)setShouldStream:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"ear"];
  v8 = [v7 intValue];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 BOOLValue];
    v11 = @"Disabling";
    if (v10)
    {
      v11 = @"Enabling";
    }

    v12 = @"left";
    if (v8 != 2)
    {
      v12 = @"right";
    }

    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: %@ streaming to %@ ear", &v21, 0x16u);
  }

  if (v8 == 4)
  {
    v16 = +[HUHearingAidSettings sharedInstance];
    [v16 setShouldStreamToRightAid:{objc_msgSend(v6, "BOOLValue")}];

    v14 = [(HearingAidDetailController *)self device];
    if ((supportsBinauralStreamingForHearingAid() & 1) == 0)
    {
      v17 = [v6 BOOLValue];

      if (!v17)
      {
        goto LABEL_16;
      }

      v14 = +[HUHearingAidSettings sharedInstance];
      [v14 setShouldStreamToLeftAid:0];
    }
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v13 = +[HUHearingAidSettings sharedInstance];
    [v13 setShouldStreamToLeftAid:{objc_msgSend(v6, "BOOLValue")}];

    v14 = [(HearingAidDetailController *)self device];
    if ((supportsBinauralStreamingForHearingAid() & 1) == 0)
    {
      v15 = [v6 BOOLValue];

      if (!v15)
      {
        goto LABEL_16;
      }

      v14 = +[HUHearingAidSettings sharedInstance];
      [v14 setShouldStreamToRightAid:0];
    }
  }

LABEL_16:
  v18 = +[HUHearingAidSettings sharedInstance];
  if ([v18 shouldStreamToLeftAid])
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = +[HUHearingAidSettings sharedInstance];
  v20 = [v19 shouldStreamToRightAid];

  if ((v20 & 1) == 0)
  {
    v18 = +[AXHAServer sharedInstance];
    [v18 stopLiveListen];
    goto LABEL_19;
  }

LABEL_20:
}

- (id)shouldStream:(id)a3
{
  v3 = [a3 propertyForKey:@"ear"];
  v4 = [v3 intValue];

  if (v4 == 4)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 shouldStreamToRightAid];
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    v6 = [v5 shouldStreamToLeftAid];
LABEL_5:
    v7 = v6;

    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return [NSNumber numberWithBool:v7];
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  v4 = HCLogHearingAids();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "HearingAidDetailController: User requested to forget/unpair Hearing Aids", v10, 2u);
  }

  v5 = +[HUHearingAidSettings sharedInstance];
  [v5 setShouldStreamToRightAid:1];

  v6 = +[HUHearingAidSettings sharedInstance];
  [v6 setShouldStreamToLeftAid:1];

  v7 = +[HUHearingAidSettings sharedInstance];
  [v7 setPairedHearingAids:0];

  v8 = [(HearingAidDetailController *)self navigationController];
  v9 = [v8 popViewControllerAnimated:1];
}

- (void)forgetAid:(id)a3
{
  v9 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = hearingSettingsLocString(@"ForgetHearingAidOK", @"HearingAidDetailSettings");
  [v9 setTitle:v4];

  v5 = hearingSettingsLocString(@"ForgetHearingAidPrompt", @"HearingAidDetailSettings");
  [v9 setPrompt:v5];

  v6 = hearingSettingsLocString(@"ForgetHearingAidCancel", @"HearingAidDetailSettings");
  [v9 setCancelButton:v6];

  v7 = hearingSettingsLocString(@"ForgetHearingAidOK", @"HearingAidDetailSettings");
  [v9 setOkButton:v7];

  v8 = [NSNumber numberWithBool:1];
  [v9 setProperty:v8 forKey:PSConfirmationDestructiveKey];

  [(HearingAidDetailController *)self showConfirmationViewForSpecifier:v9];
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
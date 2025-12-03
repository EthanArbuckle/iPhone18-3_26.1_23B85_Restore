@interface HearingAidDetailController
- (BOOL)shouldShowCombinedMicVolume;
- (BOOL)shouldShowCombinedMixedVolume;
- (BOOL)shouldShowCombinedSensitivityVolume;
- (BOOL)shouldShowCombinedStreamingVolume;
- (HearingAidDetailController)init;
- (_NSRange)programRangeForPresetId:(id)id;
- (_NSRange)programsRange;
- (id)_combinedProgramSpecifiers;
- (id)_leftProgramSpecifiers;
- (id)_programSpecifiers;
- (id)_rightProgramSpecifiers;
- (id)_volumeSpecifiers;
- (id)deviceSpecifiers;
- (id)independentAids:(id)aids;
- (id)programSpecsFromAvailablePrograms:(id)programs withGroupSpec:(id)spec forEar:(int)ear;
- (id)shouldStream:(id)stream;
- (id)specifierForKey:(id)key;
- (id)specifiers;
- (void)_reloadProgramSpecifiers;
- (void)_setupListeners;
- (void)_updateLiveListenButtonForOneness;
- (void)_updatePrograms:(id)programs;
- (void)applyAdjustIndependentlyChangesForVolume;
- (void)applyAverageVolume;
- (void)applyCachedVolumeProperties;
- (void)cacheVolumeProperties;
- (void)confirmationViewAcceptedForSpecifier:(id)specifier;
- (void)dealloc;
- (void)forgetAid:(id)aid;
- (void)handleResignActive;
- (void)liveListenToggle:(id)toggle;
- (void)pauseSoundRecognitionIfNecessary;
- (void)restartSoundRecognitionIfNecessary;
- (void)selectCommonProgramsForLeftAndRightDevices;
- (void)setBluetoothAvailability:(BOOL)availability;
- (void)setIndependentAids:(id)aids specifier:(id)specifier;
- (void)setShouldStream:(id)stream specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAvailability;
- (void)updateLiveListenCell:(id)cell;
- (void)updateLiveListenWithState:(BOOL)state andLevel:(double)level;
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

  device = [(HearingAidDetailController *)self device];
  [device setKeepInSync:0];

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
  table = [(HearingAidDetailController *)self table];
  v5 = objc_opt_class();
  v6 = +[AXHearingAidDetailCell cellReuseIdentifier];
  [table registerClass:v5 forCellReuseIdentifier:v6];

  table2 = [(HearingAidDetailController *)self table];
  v8 = objc_opt_class();
  v9 = +[AXHearingSliderValueCell cellReuseIdentifier];
  [table2 registerClass:v8 forCellReuseIdentifier:v9];

  table3 = [(HearingAidDetailController *)self table];
  v11 = objc_opt_class();
  v12 = +[AXHearingProgramCell cellReuseIdentifier];
  [table3 registerClass:v11 forCellReuseIdentifier:v12];

  table4 = [(HearingAidDetailController *)self table];
  v14 = objc_opt_class();
  v15 = +[AXHearingLiveListenMeterCell cellReuseIdentifier];
  [table4 registerClass:v14 forCellReuseIdentifier:v15];

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

  device = [(HearingAidDetailController *)self device];
  [device setKeepInSync:0];
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

  device = [(HearingAidDetailController *)self device];
  [device setKeepInSync:0];
}

- (void)_setupListeners
{
  location[1] = _NSConcreteStackBlock;
  location[2] = 3221225472;
  location[3] = sub_107B8;
  location[4] = &unk_48A20;
  location[5] = self;
  AXPerformBlockOnMainThreadAfterDelay();
  device = [(HearingAidDetailController *)self device];
  [device setKeepInSync:1];
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
  v6 = device;
  v8 = v6;
  selfCopy = self;
  objc_copyWeak(&v10, location);
  [v5 registerListener:self forPropertyUpdateHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(location);
}

- (void)setBluetoothAvailability:(BOOL)availability
{
  if (self->_bluetoothAvailable != availability)
  {
    self->_bluetoothAvailable = availability;
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

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = HearingAidDetailController;
  [(HearingAidDetailController *)&v14 setSpecifier:specifierCopy];
  if (specifierCopy)
  {
    userInfo = [specifierCopy userInfo];
    [(HearingAidDetailController *)self setDevice:userInfo];

    device = [(HearingAidDetailController *)self device];
    [device setKeepInSync:1];

    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_112E0;
    v12[4] = sub_112F0;
    selfCopy = self;
    v13 = selfCopy;
    v8 = +[HUHearingAidSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_112F8;
    v11[3] = &unk_48A48;
    v11[4] = v12;
    [v8 registerUpdateBlock:v11 forRetrieveSelector:"shouldStreamToLeftAid" withListener:selfCopy];

    v9 = +[HUHearingAidSettings sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11310;
    v10[3] = &unk_48A48;
    v10[4] = v12;
    [v9 registerUpdateBlock:v10 forRetrieveSelector:"shouldStreamToRightAid" withListener:selfCopy];

    _Block_object_dispose(v12, 8);
  }
}

- (id)deviceSpecifiers
{
  v3 = +[NSMutableArray array];
  device = [(HearingAidDetailController *)self device];
  name = [device name];
  v6 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  device2 = [(HearingAidDetailController *)self device];
  [AXHearingAidDetailCell heightRequiredForDevice:device2];
  *&v8 = v8;
  v9 = [NSNumber numberWithFloat:v8];
  [v6 setProperty:v9 forKey:PSTableCellHeightKey];

  [v6 setIdentifier:@"DetailCell"];
  device3 = [(HearingAidDetailController *)self device];
  [v6 setUserInfo:device3];

  [v3 addObject:v6];

  return v3;
}

- (id)_programSpecifiers
{
  v3 = +[NSMutableArray array];
  device = [(HearingAidDetailController *)self device];
  showCombinedPrograms = [device showCombinedPrograms];

  if (showCombinedPrograms)
  {
    [(HearingAidDetailController *)self _combinedProgramSpecifiers];
  }

  else
  {
    _leftProgramSpecifiers = [(HearingAidDetailController *)self _leftProgramSpecifiers];
    [v3 addObjectsFromArray:_leftProgramSpecifiers];

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
  device = [(HearingAidDetailController *)self device];
  v5 = [device propertyIsAvailable:0x4000000000 forEar:2];

  device2 = [(HearingAidDetailController *)self device];
  v7 = [device2 propertyIsAvailable:0x4000000000 forEar:4];

  device3 = [(HearingAidDetailController *)self device];
  v9 = [device3 propertyIsAvailable:64 forEar:2];

  device4 = [(HearingAidDetailController *)self device];
  v11 = [device4 propertyIsAvailable:64 forEar:4];

  device5 = [(HearingAidDetailController *)self device];
  if ([device5 propertyIsAvailable:0x2000000000 forEar:2])
  {
    v13 = 1;
  }

  else
  {
    device6 = [(HearingAidDetailController *)self device];
    v13 = [device6 propertyIsAvailable:0x2000000000 forEar:4];
  }

  device7 = [(HearingAidDetailController *)self device];
  if ([device7 propertyIsAvailable:0x1000000000 forEar:2])
  {
    v16 = 1;
  }

  else
  {
    device8 = [(HearingAidDetailController *)self device];
    v16 = [device8 propertyIsAvailable:0x1000000000 forEar:4];
  }

  device9 = [(HearingAidDetailController *)self device];
  v140 = [device9 propertyIsAvailable:128 forEar:2];

  device10 = [(HearingAidDetailController *)self device];
  v139 = [device10 propertyIsAvailable:128 forEar:4];

  device11 = [(HearingAidDetailController *)self device];
  v141 = [device11 propertyIsAvailable:0x80000000 forEar:2];

  device12 = [(HearingAidDetailController *)self device];
  v143 = [device12 propertyIsAvailable:0x80000000 forEar:4];

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
    device13 = [(HearingAidDetailController *)self device];
    [v22 setUserInfo:device13];

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
    device14 = [(HearingAidDetailController *)self device];
    [v22 setUserInfo:device14];

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

  device15 = [(HearingAidDetailController *)self device];
  isRightConnected = [device15 isRightConnected];

  if (isRightConnected)
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
    device16 = [(HearingAidDetailController *)self device];
    [v40 setUserInfo:device16];

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
    device17 = [(HearingAidDetailController *)self device];
    [v48 setUserInfo:device17];

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

  device18 = [(HearingAidDetailController *)self device];
  isRightConnected2 = [device18 isRightConnected];

  if (isRightConnected2)
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
    device19 = [(HearingAidDetailController *)self device];
    [v58 setUserInfo:device19];

    [v3 addObject:v58];
    v22 = v58;
    goto LABEL_41;
  }

  if (v141)
  {
    device20 = [(HearingAidDetailController *)self device];
    isLeftConnected = [device20 isLeftConnected];

    if (isLeftConnected)
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
      device21 = [(HearingAidDetailController *)self device];
      [v65 setUserInfo:device21];

      [v3 addObject:v65];
      v22 = v65;
    }
  }

  if (v143)
  {
    device22 = [(HearingAidDetailController *)self device];
    isRightConnected3 = [device22 isRightConnected];

    if (isRightConnected3)
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
      device23 = [(HearingAidDetailController *)self device];
      [v75 setUserInfo:device23];

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
      device24 = [(HearingAidDetailController *)self device];
      [v81 setUserInfo:device24];

      [v23 addObject:v81];
      v22 = v81;
    }
  }

  else
  {
    v80 = v145;
  }

  device25 = [(HearingAidDetailController *)self device];
  leftAvailable = [device25 leftAvailable];
  device26 = [(HearingAidDetailController *)self device];
  if (leftAvailable == [device26 rightAvailable])
  {
    shouldShowCombinedStreamingVolume = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];

    if ((shouldShowCombinedStreamingVolume & 1) == 0)
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
    device27 = [(HearingAidDetailController *)self device];
    [v93 setUserInfo:device27];

    [v80 addObject:v93];
    device28 = [(HearingAidDetailController *)self device];
    rightSelectedStreamingProgram = [device28 rightSelectedStreamingProgram];
    name = [rightSelectedStreamingProgram name];

    if ([(__CFString *)name length])
    {
      v22 = v93;
      goto LABEL_91;
    }

    device29 = [(HearingAidDetailController *)self device];
    leftSelectedStreamingProgram = [device29 leftSelectedStreamingProgram];
    goto LABEL_88;
  }

  device30 = [(HearingAidDetailController *)self device];
  rightSelectedStreamingProgram2 = [device30 rightSelectedStreamingProgram];
  isSelected = [rightSelectedStreamingProgram2 isSelected];
  v142 = rightSelectedStreamingProgram2;
  if (isSelected)
  {
    device31 = [(HearingAidDetailController *)self device];
    rightSelectedStreamingProgram3 = [device31 rightSelectedStreamingProgram];
    if ([rightSelectedStreamingProgram3 isStreamOrMixingStream])
    {
      device32 = [(HearingAidDetailController *)self device];
      if ([device32 rightAvailable] && v139)
      {

        shouldShowCombinedStreamingVolume2 = 1;
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

  device33 = [(HearingAidDetailController *)self device];
  leftSelectedStreamingProgram2 = [device33 leftSelectedStreamingProgram];
  if ([leftSelectedStreamingProgram2 isSelected])
  {
    v135 = v3;
    device34 = [(HearingAidDetailController *)self device];
    leftSelectedStreamingProgram3 = [device34 leftSelectedStreamingProgram];
    if ([leftSelectedStreamingProgram3 isStreamOrMixingStream])
    {
      v133 = device30;
      device35 = [(HearingAidDetailController *)self device];
      if ([device35 leftAvailable] & v140)
      {
        shouldShowCombinedStreamingVolume2 = 1;
      }

      else
      {
        shouldShowCombinedStreamingVolume2 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];
      }

      device30 = v133;
    }

    else
    {
      shouldShowCombinedStreamingVolume2 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];
    }

    v23 = v146;
    v3 = v135;
    if ((v138 & 1) == 0)
    {
LABEL_73:
      v80 = v145;
      rightSelectedStreamingProgram2 = v142;
      if (!isSelected)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }
  }

  else
  {
    shouldShowCombinedStreamingVolume2 = [(HearingAidDetailController *)self shouldShowCombinedStreamingVolume];

    if (!v138)
    {
      goto LABEL_73;
    }
  }

  v80 = v145;
  rightSelectedStreamingProgram2 = v142;
  if (isSelected)
  {
    goto LABEL_74;
  }

LABEL_75:

  if (shouldShowCombinedStreamingVolume2)
  {
    goto LABEL_56;
  }

LABEL_76:
  device36 = [(HearingAidDetailController *)self device];
  if (![device36 isLeftConnected])
  {
    name = 0;
LABEL_83:

    goto LABEL_84;
  }

  device37 = [(HearingAidDetailController *)self device];
  leftSelectedStreamingProgram4 = [device37 leftSelectedStreamingProgram];
  if (([leftSelectedStreamingProgram4 isStreamOrMixingStream] & 1) == 0)
  {

    name = 0;
    goto LABEL_82;
  }

  v111 = v3;
  device38 = [(HearingAidDetailController *)self device];
  leftSelectedStreamingProgram5 = [device38 leftSelectedStreamingProgram];
  v114 = [leftSelectedStreamingProgram5 isSelected] & v140;

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
    device39 = [(HearingAidDetailController *)self device];
    [v115 setUserInfo:device39];

    [v80 addObject:v115];
    device36 = [(HearingAidDetailController *)self device];
    device37 = [device36 leftSelectedStreamingProgram];
    name = [device37 name];
    v22 = v115;
    v23 = v146;
    v3 = v111;
LABEL_82:

    goto LABEL_83;
  }

  name = 0;
  v23 = v146;
  v3 = v111;
LABEL_84:
  device29 = [(HearingAidDetailController *)self device];
  if (![device29 isRightConnected])
  {
LABEL_90:

    goto LABEL_91;
  }

  leftSelectedStreamingProgram = [(HearingAidDetailController *)self device];
  rightSelectedStreamingProgram4 = [leftSelectedStreamingProgram rightSelectedStreamingProgram];
  if (![rightSelectedStreamingProgram4 isStreamOrMixingStream])
  {
LABEL_89:

    v23 = v146;
    goto LABEL_90;
  }

  v121 = v3;
  device40 = [(HearingAidDetailController *)self device];
  rightSelectedStreamingProgram5 = [device40 rightSelectedStreamingProgram];
  v124 = [rightSelectedStreamingProgram5 isSelected] & v139;

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
    device41 = [(HearingAidDetailController *)self device];
    [v93 setUserInfo:device41];

    [v145 addObject:v93];
    device29 = [(HearingAidDetailController *)self device];
    leftSelectedStreamingProgram = [device29 rightSelectedStreamingProgram];
    v3 = v121;
    v80 = v145;
LABEL_88:
    [leftSelectedStreamingProgram name];
    name = rightSelectedStreamingProgram4 = name;
    v22 = v93;
    goto LABEL_89;
  }

  v3 = v121;
  v80 = v145;
  v23 = v146;
LABEL_91:
  if ([v80 count])
  {
    if (![(__CFString *)name length])
    {

      name = &stru_49868;
    }

    v129 = hearingLocString();
    v100 = [NSString stringWithFormat:v129, name];

    v131 = [PSSpecifier preferenceSpecifierNamed:v100 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v131 setIdentifier:@"StreamHeading"];
    [v23 addObject:v131];
    [v23 addObjectsFromArray:v80];

    v22 = v131;
  }

  return v23;
}

- (BOOL)shouldShowCombinedStreamingVolume
{
  device = [(HearingAidDetailController *)self device];
  v29 = [device propertyIsAvailable:128 forEar:2];

  device2 = [(HearingAidDetailController *)self device];
  v27 = [device2 propertyIsAvailable:128 forEar:4];

  device3 = [(HearingAidDetailController *)self device];
  rightSelectedStreamingProgram = [device3 rightSelectedStreamingProgram];
  v9 = [rightSelectedStreamingProgram ear];
  if (v9 == 6 && (-[HearingAidDetailController device](self, "device"), v2 = objc_claimAutoreleasedReturnValue(), [v2 leftSelectedStreamingProgram], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "ear") == 6))
  {
    v26 = 1;
  }

  else
  {
    device4 = [(HearingAidDetailController *)self device];
    rightSelectedStreamingProgram2 = [device4 rightSelectedStreamingProgram];
    device5 = [(HearingAidDetailController *)self device];
    leftSelectedStreamingProgram = [device5 leftSelectedStreamingProgram];
    v26 = [rightSelectedStreamingProgram2 isEqual:leftSelectedStreamingProgram];

    if (v9 != 6)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  v14 = +[HUHearingAidSettings sharedInstance];
  if ([v14 independentHearingAidSettings])
  {
    isSelected = 0;
  }

  else
  {
    device6 = [(HearingAidDetailController *)self device];
    if ([device6 showCombinedPrograms])
    {
      device7 = [(HearingAidDetailController *)self device];
      if (([device7 supportsCombinedVolumesForProperty:128] & v29 & v27 & v26) == 1)
      {
        device8 = [(HearingAidDetailController *)self device];
        leftSelectedStreamingProgram2 = [device8 leftSelectedStreamingProgram];
        if ([leftSelectedStreamingProgram2 isStreamOrMixingStream])
        {
          device9 = [(HearingAidDetailController *)self device];
          rightSelectedStreamingProgram3 = [device9 rightSelectedStreamingProgram];
          if ([rightSelectedStreamingProgram3 isStreamOrMixingStream])
          {
            device10 = [(HearingAidDetailController *)self device];
            leftSelectedStreamingProgram3 = [device10 leftSelectedStreamingProgram];
            if ([leftSelectedStreamingProgram3 isSelected])
            {
              device11 = [(HearingAidDetailController *)self device];
              [device11 rightSelectedStreamingProgram];
              v24 = v30 = device10;
              isSelected = [v24 isSelected];

              device10 = v30;
            }

            else
            {
              isSelected = 0;
            }
          }

          else
          {
            isSelected = 0;
          }
        }

        else
        {
          isSelected = 0;
        }
      }

      else
      {
        isSelected = 0;
      }
    }

    else
    {
      isSelected = 0;
    }
  }

  return isSelected;
}

- (id)_leftProgramSpecifiers
{
  device = [(HearingAidDetailController *)self device];
  isLeftConnected = [device isLeftConnected];

  if (isLeftConnected)
  {
    device2 = [(HearingAidDetailController *)self device];
    leftPrograms = [device2 leftPrograms];

    if ([leftPrograms count])
    {
      v7 = 0;
      do
      {
        v8 = [leftPrograms objectAtIndexedSubscript:v7];
        [v8 setEar:2];

        ++v7;
      }

      while ([leftPrograms count] > v7);
    }

    v9 = hearingLocString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setIdentifier:@"LeftProgramsHeader"];
    [v10 setProperty:@"LeftProgramsHeader" forKey:PSIDKey];
  }

  else
  {
    v10 = 0;
    leftPrograms = 0;
  }

  v11 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:leftPrograms withGroupSpec:v10 forEar:2];

  return v11;
}

- (id)_rightProgramSpecifiers
{
  device = [(HearingAidDetailController *)self device];
  isRightConnected = [device isRightConnected];

  if (isRightConnected)
  {
    device2 = [(HearingAidDetailController *)self device];
    rightPrograms = [device2 rightPrograms];

    if ([rightPrograms count])
    {
      v7 = 0;
      do
      {
        v8 = [rightPrograms objectAtIndexedSubscript:v7];
        [v8 setEar:4];

        ++v7;
      }

      while ([rightPrograms count] > v7);
    }

    v9 = hearingLocString();
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v10 setIdentifier:@"RightProgramsHeader"];
    [v10 setProperty:@"RightProgramsHeader" forKey:PSIDKey];
  }

  else
  {
    v10 = 0;
    rightPrograms = 0;
  }

  v11 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:rightPrograms withGroupSpec:v10 forEar:4];

  return v11;
}

- (id)_combinedProgramSpecifiers
{
  v3 = hearingLocString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:0 edit:0];

  [v4 setIdentifier:@"ProgramsHeader"];
  [v4 setProperty:@"ProgramsHeader" forKey:PSIDKey];
  device = [(HearingAidDetailController *)self device];
  combinedPrograms = [device combinedPrograms];

  v7 = [(HearingAidDetailController *)self programSpecsFromAvailablePrograms:combinedPrograms withGroupSpec:v4 forEar:6];

  return v7;
}

- (id)programSpecsFromAvailablePrograms:(id)programs withGroupSpec:(id)spec forEar:(int)ear
{
  programsCopy = programs;
  specCopy = spec;
  v7 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = programsCopy;
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
          [v7 addObject:specCopy];
        }

        name = [v14 name];
        v16 = [PSSpecifier preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:4 edit:0];

        [v16 setProperty:objc_opt_class() forKey:v11];
        v17 = [NSNumber numberWithBool:1];
        [v16 setProperty:v17 forKey:v12];

        v18 = [NSNumber numberWithUnsignedInt:ear];
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
  hearingAidReachable = [v6 hearingAidReachable];

  v8 = HCLogHearingAids();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    device = [(HearingAidDetailController *)self device];
    didLoadRequiredProperties = [device didLoadRequiredProperties];
    device2 = [(HearingAidDetailController *)self device];
    *buf = 67109632;
    v67 = didLoadRequiredProperties;
    v68 = 1024;
    isPaired = [device2 isPaired];
    v70 = 1024;
    v71 = hearingAidReachable;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: Preparing specifiers, HearingDevice is (Loaded=%d, Paired=%d, Reachable=%d)", buf, 0x14u);
  }

  device3 = [(HearingAidDetailController *)self device];
  v13 = &__AXStringForVariables_ptr;
  if (![device3 didLoadRequiredProperties])
  {
    goto LABEL_9;
  }

  device4 = [(HearingAidDetailController *)self device];
  if (![device4 isPaired])
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!hearingAidReachable)
  {
    device5 = [(HearingAidDetailController *)self device];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_26;
    }

LABEL_10:
    disconnectedSpecifiers = [(HearingAidDetailController *)self disconnectedSpecifiers];
    [v5 addObjectsFromArray:disconnectedSpecifiers];
LABEL_11:

    goto LABEL_12;
  }

LABEL_26:
  deviceSpecifiers = [(HearingAidDetailController *)self deviceSpecifiers];
  [v5 addObjectsFromArray:deviceSpecifiers];

  _volumeSpecifiers = [(HearingAidDetailController *)self _volumeSpecifiers];
  [v5 addObjectsFromArray:_volumeSpecifiers];

  _programSpecifiers = [(HearingAidDetailController *)self _programSpecifiers];
  [v5 addObjectsFromArray:_programSpecifiers];

  if (self->_hearingAidStreamAvailable)
  {
    server = [sub_13F9C() server];
    hasActiveOrPendingCallOrFaceTime = [server hasActiveOrPendingCallOrFaceTime];

    if ((hasActiveOrPendingCallOrFaceTime & 1) == 0)
    {
      disconnectedSpecifiers = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
      +[HCUtilities deviceIsPad];
      v65 = hearingLocString();
      [disconnectedSpecifiers setProperty:? forKey:?];
      [v5 addObject:disconnectedSpecifiers];
      v41 = hearingLocString();
      if (self->_isLiveListening)
      {
        v42 = hearingLocString();

        v41 = v42;
      }

      v43 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:0 get:0 detail:0 cell:13 edit:0];
      [v43 setButtonAction:"liveListenToggle:"];
      [v43 setProperty:@"LiveListenButtonCell" forKey:PSKeyNameKey];
      server2 = [sub_13F9C() server];
      isContinuitySessionActive = [server2 isContinuitySessionActive];

      v46 = [NSNumber numberWithBool:isContinuitySessionActive ^ 1];
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
  device6 = [(HearingAidDetailController *)self device];
  isPaired2 = [device6 isPaired];
  if (hearingAidReachable & 1 | ((isPaired2 & 1) == 0))
  {
    v18 = isPaired2;

    if (!v18)
    {
      goto LABEL_37;
    }

LABEL_16:
    v64 = +[PSSpecifier emptyGroupSpecifier];
    [v5 insertObject:? atIndex:?];
    device7 = [(HearingAidDetailController *)self device];
    rightAvailable = [device7 rightAvailable];

    if (rightAvailable)
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

    device8 = [(HearingAidDetailController *)self device];
    leftAvailable = [device8 leftAvailable];

    if (leftAvailable)
    {
      v28 = hearingSettingsLocString(@"HearingAidStreamToggleLeft", @"HearingAidDetailSettings");
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:"setShouldStream:specifier:" get:"shouldStream:" detail:0 cell:6 edit:0];

      [v29 setProperty:&off_4C6B0 forKey:@"ear"];
      [v29 setProperty:@"LeftStream" forKey:PSIDKey];
      [v5 insertObject:v29 atIndex:v25];

      ++v25;
    }

    device9 = [(HearingAidDetailController *)self device];
    if (![device9 leftAvailable])
    {
      goto LABEL_35;
    }

    device10 = [(HearingAidDetailController *)self device];
    rightAvailable2 = [device10 rightAvailable];

    if (rightAvailable2)
    {
      device11 = [(HearingAidDetailController *)self device];
      if ([device11 supportsCombinedPresets])
      {

LABEL_34:
        v50 = hearingSettingsLocString(@"HearingAidIndependenceTitle", @"HearingAidDetailSettings");
        device9 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setIndependentAids:specifier:" get:"independentAids:" detail:0 cell:6 edit:0];

        [device9 setIdentifier:@"Independence"];
        [v5 insertObject:device9 atIndex:v25];
LABEL_35:

        goto LABEL_36;
      }

      device12 = [(HearingAidDetailController *)self device];
      supportsCombinedVolumes = [device12 supportsCombinedVolumes];

      if (supportsCombinedVolumes)
      {
        goto LABEL_34;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  device13 = [(HearingAidDetailController *)self device];
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
    device14 = [(HearingAidDetailController *)self device];
    [v53 setUserInfo:device14];

    [v5 addObject:v53];
  }

  if (self->_bluetoothAvailable)
  {
    device15 = [(HearingAidDetailController *)self device];
    isPaired3 = [device15 isPaired];

    if (isPaired3)
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

  device16 = [(HearingAidDetailController *)self device];
  name = [device16 name];
  [(HearingAidDetailController *)self setTitle:name];

  v4 = *&self->PSListController_opaque[v3];
LABEL_43:

  return v4;
}

- (void)_updateLiveListenButtonForOneness
{
  v6 = [(HearingAidDetailController *)self specifierForID:@"LiveListenButtonCell"];
  server = [sub_13F9C() server];
  isContinuitySessionActive = [server isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:isContinuitySessionActive ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(HearingAidDetailController *)self reloadSpecifier:v6];
}

- (void)selectCommonProgramsForLeftAndRightDevices
{
  device = [(HearingAidDetailController *)self device];
  showCombinedPrograms = [device showCombinedPrograms];

  if (showCombinedPrograms)
  {
    device2 = [(HearingAidDetailController *)self device];
    leftSelectedProgram = [device2 leftSelectedProgram];

    device3 = [(HearingAidDetailController *)self device];
    rightSelectedProgram = [device3 rightSelectedProgram];

    device4 = [(HearingAidDetailController *)self device];
    leftSelectedStreamingProgram = [device4 leftSelectedStreamingProgram];

    device5 = [(HearingAidDetailController *)self device];
    rightSelectedStreamingProgram = [device5 rightSelectedStreamingProgram];

    LODWORD(device5) = [leftSelectedProgram index];
    if (device5 != [rightSelectedProgram index] || (v13 = objc_msgSend(leftSelectedStreamingProgram, "index"), v13 != objc_msgSend(rightSelectedStreamingProgram, "index")))
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      device6 = [(HearingAidDetailController *)self device];
      rightPrograms = [device6 rightPrograms];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_14474;
      v31[3] = &unk_48D18;
      v37 = &v39;
      v16 = leftSelectedProgram;
      v32 = v16;
      v17 = rightSelectedProgram;
      v33 = v17;
      selfCopy = self;
      v38 = &v43;
      v18 = v22;
      v35 = v18;
      v19 = rightSelectedStreamingProgram;
      v36 = v19;
      [rightPrograms enumerateObjectsUsingBlock:v31];

      *(v44 + 24) = 0;
      *(v40 + 24) = 0;
      device7 = [(HearingAidDetailController *)self device];
      leftPrograms = [device7 leftPrograms];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_145E4;
      v23[3] = &unk_48D18;
      v29 = &v39;
      v24 = v17;
      v25 = v16;
      selfCopy2 = self;
      v30 = &v43;
      v27 = v19;
      v28 = v18;
      [leftPrograms enumerateObjectsUsingBlock:v23];

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);
      leftSelectedStreamingProgram = v22;
    }
  }
}

- (void)updateView
{
  device = [(HearingAidDetailController *)self device];
  didLoadRequiredProperties = [device didLoadRequiredProperties];

  if (didLoadRequiredProperties)
  {
    device2 = [(HearingAidDetailController *)self device];
    [device2 setKeepInSync:1];

    v6 = OBJC_IVAR___PSListController__specifiers;
    v7 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count];
    device3 = [(HearingAidDetailController *)self device];
    availableEars = [device3 availableEars];
    v10 = 3;
    if (availableEars == 6)
    {
      v10 = 6;
    }

    if (v7 <= v10)
    {
    }

    else
    {
      v11 = +[AXHAServer sharedInstance];
      hearingAidReachable = [v11 hearingAidReachable];

      if (hearingAidReachable)
      {
        v13 = [(HearingAidDetailController *)self indexOfSpecifierID:@"ProgramsHeader"];
        v14 = [(HearingAidDetailController *)self indexOfSpecifierID:@"RightProgramsHeader"];
        v15 = [(HearingAidDetailController *)self indexOfSpecifierID:@"LeftProgramsHeader"];
        device4 = [(HearingAidDetailController *)self device];
        showCombinedPrograms = [device4 showCombinedPrograms];

        if (showCombinedPrograms && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          _combinedProgramSpecifiers = [(HearingAidDetailController *)self _combinedProgramSpecifiers];
LABEL_9:
          [(HearingAidDetailController *)self _updatePrograms:_combinedProgramSpecifiers];
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

        device5 = [(HearingAidDetailController *)self device];
        if (([device5 showCombinedPrograms] & 1) != 0 || v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
        }

        else
        {

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            _combinedProgramSpecifiers = +[NSMutableArray array];
            _leftProgramSpecifiers = [(HearingAidDetailController *)self _leftProgramSpecifiers];
            [_combinedProgramSpecifiers addObjectsFromArray:_leftProgramSpecifiers];

            _rightProgramSpecifiers = [(HearingAidDetailController *)self _rightProgramSpecifiers];
            [_combinedProgramSpecifiers addObjectsFromArray:_rightProgramSpecifiers];

            if (![_combinedProgramSpecifiers count])
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
    device6 = [(HearingAidDetailController *)self device];
    [device6 loadRequiredProperties];
  }
}

- (void)_updatePrograms:(id)programs
{
  programsCopy = programs;
  programsRange = [(HearingAidDetailController *)self programsRange];
  v7 = v6;
  if ([programsCopy count] == v6)
  {
    device = [(HearingAidDetailController *)self device];
    selectedPrograms = [device selectedPrograms];

    v10 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] subarrayWithRange:{programsRange, v7}];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_14C74;
    v12[3] = &unk_48D40;
    v13 = selectedPrograms;
    selfCopy = self;
    v11 = selectedPrograms;
    [v10 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    [(HearingAidDetailController *)self updateSpecifiersInRange:programsRange withSpecifiers:v7, programsCopy];
  }
}

- (_NSRange)programRangeForPresetId:(id)id
{
  idCopy = id;
  v5 = +[NSMutableArray array];
  v6 = [(HearingAidDetailController *)self specifierForID:idCopy];

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

  specifiers = [(HearingAidDetailController *)self specifiers];
  v9 = [specifiers count] - 2;

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
    lastObject = [v5 lastObject];
    v16 = [v14 indexOfObject:lastObject];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = HearingAidDetailController;
  pathCopy = path;
  [(HearingAidDetailController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(HearingAidDetailController *)self indexForIndexPath:pathCopy, v14.receiver, v14.super_class];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v7];
    userInfo = [v8 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      userInfo2 = [v8 userInfo];
      [userInfo2 setIsSelected:{objc_msgSend(userInfo2, "isSelected") ^ 1}];
      device = [(HearingAidDetailController *)self device];
      v13 = [v8 propertyForKey:@"AXHAPresetEar"];
      [device selectProgram:userInfo2 forEar:{objc_msgSend(v13, "intValue")}];

      [(HearingAidDetailController *)self _reloadProgramSpecifiers];
    }
  }
}

- (void)_reloadProgramSpecifiers
{
  device = [(HearingAidDetailController *)self device];
  showCombinedPrograms = [device showCombinedPrograms];

  if (showCombinedPrograms)
  {
    programsRange = [(HearingAidDetailController *)self programsRange];
    v7 = v6;
    specifiers = [(HearingAidDetailController *)self specifiers];
    v9 = [specifiers subarrayWithRange:{programsRange, v7}];
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
    specifiers2 = [(HearingAidDetailController *)self specifiers];
    v16 = [specifiers2 subarrayWithRange:{v12, v14}];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_154A4;
    v21[3] = &unk_48D90;
    v21[4] = self;
    [v16 enumerateObjectsUsingBlock:v21];

    v17 = [(HearingAidDetailController *)self programRangeForPresetId:@"RightProgramsHeader"];
    v19 = v18;
    specifiers = [(HearingAidDetailController *)self specifiers];
    v9 = [specifiers subarrayWithRange:{v17, v19}];
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

- (id)specifierForKey:(id)key
{
  keyCopy = key;
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
        v13 = [v12 isEqualToString:keyCopy];

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

- (void)updateLiveListenWithState:(BOOL)state andLevel:(double)level
{
  if (self->_isLiveListening != state)
  {
    AXPerformBlockOnMainThread();
  }
}

- (void)updateLiveListenCell:(id)cell
{
  cellCopy = cell;
  isLiveListening = self->_isLiveListening;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isLiveListening)
  {
    if (isKindOfClass)
    {
      v6 = hearingLocString();
      [cellCopy setName:v6];

      [(HearingAidDetailController *)self reloadSpecifier:cellCopy];
      v7 = [(HearingAidDetailController *)self specifierForID:@"LiveListeningCell"];

      if (!v7)
      {
        v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
        [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v8 setIdentifier:@"LiveListeningCell"];
        [(HearingAidDetailController *)self insertSpecifier:v8 afterSpecifier:cellCopy animated:0];
      }
    }
  }

  else if (isKindOfClass)
  {
    v9 = hearingLocString();
    [cellCopy setName:v9];

    [(HearingAidDetailController *)self reloadSpecifier:cellCopy];
    [(HearingAidDetailController *)self removeSpecifierID:@"LiveListeningCell" animated:0];
  }

  _objc_release_x1();
}

- (void)liveListenToggle:(id)toggle
{
  isLiveListening = self->_isLiveListening;
  toggleCopy = toggle;
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
  [(HearingAidDetailController *)self updateLiveListenCell:toggleCopy];
}

- (void)setIndependentAids:(id)aids specifier:(id)specifier
{
  aidsCopy = aids;
  v6 = +[HUHearingAidSettings sharedInstance];
  bOOLValue = [aidsCopy BOOLValue];

  [v6 setIndependentHearingAidSettings:bOOLValue];
  [(HearingAidDetailController *)self applyAdjustIndependentlyChangesForVolume];
  [(HearingAidDetailController *)self selectCommonProgramsForLeftAndRightDevices];

  [(HearingAidDetailController *)self reloadSpecifiers];
}

- (id)independentAids:(id)aids
{
  v3 = +[HUHearingAidSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 independentHearingAidSettings]);

  return v4;
}

- (BOOL)shouldShowCombinedMixedVolume
{
  device = [(HearingAidDetailController *)self device];
  v4 = [device propertyIsAvailable:0x4000000000 forEar:2];

  device2 = [(HearingAidDetailController *)self device];
  v6 = [device2 propertyIsAvailable:0x4000000000 forEar:4];

  device3 = [(HearingAidDetailController *)self device];
  leftAvailable = [device3 leftAvailable];
  device4 = [(HearingAidDetailController *)self device];
  if (leftAvailable == [device4 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      device5 = [(HearingAidDetailController *)self device];
      if ([device5 supportsCombinedVolumes])
      {
        device6 = [(HearingAidDetailController *)self device];
        v10 = [device6 supportsCombinedVolumesForProperty:0x4000000000] & v4 & v6;
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
  device = [(HearingAidDetailController *)self device];
  v4 = [device propertyIsAvailable:64 forEar:2];

  device2 = [(HearingAidDetailController *)self device];
  v6 = [device2 propertyIsAvailable:64 forEar:4];

  device3 = [(HearingAidDetailController *)self device];
  leftAvailable = [device3 leftAvailable];
  device4 = [(HearingAidDetailController *)self device];
  if (leftAvailable == [device4 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      device5 = [(HearingAidDetailController *)self device];
      if ([device5 supportsCombinedVolumes])
      {
        device6 = [(HearingAidDetailController *)self device];
        v10 = [device6 supportsCombinedVolumesForProperty:64] & v4 & v6;
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
  device = [(HearingAidDetailController *)self device];
  v4 = [device propertyIsAvailable:0x80000000 forEar:2];

  device2 = [(HearingAidDetailController *)self device];
  v6 = [device2 propertyIsAvailable:0x80000000 forEar:4];

  device3 = [(HearingAidDetailController *)self device];
  leftAvailable = [device3 leftAvailable];
  device4 = [(HearingAidDetailController *)self device];
  if (leftAvailable == [device4 rightAvailable] || ((v4 | v6) & 1) == 0)
  {
    v11 = +[HUHearingAidSettings sharedInstance];
    if ([v11 independentHearingAidSettings])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      device5 = [(HearingAidDetailController *)self device];
      if ([device5 supportsCombinedVolumes])
      {
        device6 = [(HearingAidDetailController *)self device];
        v10 = [device6 supportsCombinedVolumesForProperty:0x80000000] & v4 & v6;
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
  independentHearingAidSettings = [v3 independentHearingAidSettings];

  if (independentHearingAidSettings)
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

        device = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedRightStreamVolume];
        [device setRightStreamVolume:?];

        device2 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedLeftStreamVolume];
        [device2 setLeftStreamVolume:?];
      }

      else
      {
        device3 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedRightSensitivity];
        [device3 setRightSensitivity:?];

        device2 = [(HearingAidDetailController *)self device];
        [(HearingAidDetailController *)self cachedLeftSensitivity];
        [device2 setLeftSensitivity:?];
      }
    }

    else
    {
      device4 = [(HearingAidDetailController *)self device];
      [(HearingAidDetailController *)self cachedRightMixedVolume];
      [device4 setRightMixedVolume:?];

      device2 = [(HearingAidDetailController *)self device];
      [(HearingAidDetailController *)self cachedLeftMixedVolume];
      [device2 setLeftMixedVolume:?];
    }
  }

  else
  {
    device5 = [(HearingAidDetailController *)self device];
    [(HearingAidDetailController *)self cachedRightMicrophoneVolume];
    [device5 setRightMicrophoneVolume:?];

    device2 = [(HearingAidDetailController *)self device];
    [(HearingAidDetailController *)self cachedLeftMicrophoneVolume];
    [device2 setLeftMicrophoneVolume:?];
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

  device = [(HearingAidDetailController *)self device];
  [device rightMicrophoneVolume];
  [(HearingAidDetailController *)self setCachedRightMicrophoneVolume:?];

  device2 = [(HearingAidDetailController *)self device];
  [device2 leftMicrophoneVolume];
  [(HearingAidDetailController *)self setCachedLeftMicrophoneVolume:?];

  device3 = [(HearingAidDetailController *)self device];
  [device3 rightMixedVolume];
  [(HearingAidDetailController *)self setCachedRightMixedVolume:?];

  device4 = [(HearingAidDetailController *)self device];
  [device4 leftMixedVolume];
  [(HearingAidDetailController *)self setCachedLeftMixedVolume:?];

  device5 = [(HearingAidDetailController *)self device];
  [device5 rightSensitivity];
  [(HearingAidDetailController *)self setCachedRightSensitivity:?];

  device6 = [(HearingAidDetailController *)self device];
  [device6 leftSensitivity];
  [(HearingAidDetailController *)self setCachedLeftSensitivity:?];

  device7 = [(HearingAidDetailController *)self device];
  [device7 rightStreamVolume];
  [(HearingAidDetailController *)self setCachedRightStreamVolume:?];

  device8 = [(HearingAidDetailController *)self device];
  [device8 leftStreamVolume];
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

  device = [(HearingAidDetailController *)self device];
  [device leftMicrophoneVolume];
  v6 = v5;
  device2 = [(HearingAidDetailController *)self device];
  [device2 rightMicrophoneVolume];
  v9 = (v6 + v8) * 0.5;

  device3 = [(HearingAidDetailController *)self device];
  [device3 leftMixedVolume];
  v12 = v11;
  device4 = [(HearingAidDetailController *)self device];
  [device4 rightMixedVolume];
  v15 = (v12 + v14) * 0.5;

  device5 = [(HearingAidDetailController *)self device];
  [device5 leftSensitivity];
  v18 = v17;
  device6 = [(HearingAidDetailController *)self device];
  [device6 rightSensitivity];
  v21 = (v18 + v20) * 0.5;

  device7 = [(HearingAidDetailController *)self device];
  [device7 leftStreamVolume];
  v24 = v23;
  device8 = [(HearingAidDetailController *)self device];
  [device8 rightStreamVolume];
  v27 = (v24 + v26) * 0.5;

  device9 = [(HearingAidDetailController *)self device];
  [device9 setRightMixedVolume:v15];

  device10 = [(HearingAidDetailController *)self device];
  [device10 setLeftMixedVolume:v15];

  device11 = [(HearingAidDetailController *)self device];
  [device11 setRightMicrophoneVolume:v9];

  device12 = [(HearingAidDetailController *)self device];
  [device12 setLeftMicrophoneVolume:v9];

  device13 = [(HearingAidDetailController *)self device];
  [device13 setRightSensitivity:v21];

  device14 = [(HearingAidDetailController *)self device];
  [device14 setLeftSensitivity:v21];

  device15 = [(HearingAidDetailController *)self device];
  [device15 setRightStreamVolume:v27];

  device16 = [(HearingAidDetailController *)self device];
  [device16 setLeftStreamVolume:v27];
}

- (void)setShouldStream:(id)stream specifier:(id)specifier
{
  streamCopy = stream;
  v7 = [specifier propertyForKey:@"ear"];
  intValue = [v7 intValue];

  v9 = HCLogHearingAids();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [streamCopy BOOLValue];
    v11 = @"Disabling";
    if (bOOLValue)
    {
      v11 = @"Enabling";
    }

    v12 = @"left";
    if (intValue != 2)
    {
      v12 = @"right";
    }

    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "HearingAidDetailViewController: %@ streaming to %@ ear", &v21, 0x16u);
  }

  if (intValue == 4)
  {
    v16 = +[HUHearingAidSettings sharedInstance];
    [v16 setShouldStreamToRightAid:{objc_msgSend(streamCopy, "BOOLValue")}];

    device = [(HearingAidDetailController *)self device];
    if ((supportsBinauralStreamingForHearingAid() & 1) == 0)
    {
      bOOLValue2 = [streamCopy BOOLValue];

      if (!bOOLValue2)
      {
        goto LABEL_16;
      }

      device = +[HUHearingAidSettings sharedInstance];
      [device setShouldStreamToLeftAid:0];
    }
  }

  else
  {
    if (intValue != 2)
    {
      goto LABEL_16;
    }

    v13 = +[HUHearingAidSettings sharedInstance];
    [v13 setShouldStreamToLeftAid:{objc_msgSend(streamCopy, "BOOLValue")}];

    device = [(HearingAidDetailController *)self device];
    if ((supportsBinauralStreamingForHearingAid() & 1) == 0)
    {
      bOOLValue3 = [streamCopy BOOLValue];

      if (!bOOLValue3)
      {
        goto LABEL_16;
      }

      device = +[HUHearingAidSettings sharedInstance];
      [device setShouldStreamToRightAid:0];
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
  shouldStreamToRightAid = [v19 shouldStreamToRightAid];

  if ((shouldStreamToRightAid & 1) == 0)
  {
    v18 = +[AXHAServer sharedInstance];
    [v18 stopLiveListen];
    goto LABEL_19;
  }

LABEL_20:
}

- (id)shouldStream:(id)stream
{
  v3 = [stream propertyForKey:@"ear"];
  intValue = [v3 intValue];

  if (intValue == 4)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    shouldStreamToRightAid = [v5 shouldStreamToRightAid];
    goto LABEL_5;
  }

  if (intValue == 2)
  {
    v5 = +[HUHearingAidSettings sharedInstance];
    shouldStreamToRightAid = [v5 shouldStreamToLeftAid];
LABEL_5:
    v7 = shouldStreamToRightAid;

    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return [NSNumber numberWithBool:v7];
}

- (void)confirmationViewAcceptedForSpecifier:(id)specifier
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

  navigationController = [(HearingAidDetailController *)self navigationController];
  v9 = [navigationController popViewControllerAnimated:1];
}

- (void)forgetAid:(id)aid
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
  soundDetectionState = [v3 soundDetectionState];

  if (soundDetectionState == &dword_0 + 2)
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
    soundDetectionState = [v3 soundDetectionState];

    if (soundDetectionState == &dword_0 + 1)
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
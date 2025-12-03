@interface HSPCWalletKeyUWBViewController
- (BOOL)_shouldIncludeTapToUnlock;
- (HSPCWalletKeyUWBViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_addWalletKeyWithUWB;
- (id)_addWalletKeyWithiPhoneUWBOptions:(int64_t)options pairedWatchesUWBOptions:(int64_t)bOptions;
- (id)_notNowTapped;
- (id)_shouldShowSingleContinueButton;
- (id)_turnOnUnlockOnApproach;
- (id)commitConfiguration;
- (id)dismissButtonBlock;
- (void)_enableUWBOfExistingWalletKeyAfterAuthWithPromise:(id)promise;
- (void)_updateHasOnboardedForWalletKey:(id)key;
@end

@implementation HSPCWalletKeyUWBViewController

- (HSPCWalletKeyUWBViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = [PRXImageView imageViewWithStyle:0];
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setSemanticContentAttribute:3];
  v61.receiver = self;
  v61.super_class = HSPCWalletKeyUWBViewController;
  v9 = [(HSPCFixedSizeCenterContentViewController *)&v61 initWithCenterContentView:v8 size:200.0, 132.0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v11 = objc_opt_new();
    door = v10->_door;
    v10->_door = v11;

    v13 = +[UIColor lightGrayColor];
    v62[0] = v13;
    v14 = +[UIColor lightGrayColor];
    v62[1] = v14;
    v15 = [NSArray arrayWithObjects:v62 count:2];
    v54 = [UIImageSymbolConfiguration configurationWithPaletteColors:v15];

    v16 = [UIImage systemImageNamed:@"door.right.hand.closed"];
    v17 = [v16 imageByApplyingSymbolConfiguration:v54];
    [(UIImageView *)v10->_door setImage:v17];

    [(UIImageView *)v10->_door setContentMode:1];
    [(UIImageView *)v10->_door setSemanticContentAttribute:3];
    [v8 addSubview:v10->_door];
    centerYAnchor = [(UIImageView *)v10->_door centerYAnchor];
    centerYAnchor2 = [v8 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v20 setActive:1];

    centerXAnchor = [(UIImageView *)v10->_door centerXAnchor];
    centerXAnchor2 = [v8 centerXAnchor];
    v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v23 setActive:1];

    widthAnchor = [(UIImageView *)v10->_door widthAnchor];
    widthAnchor2 = [v8 widthAnchor];
    v26 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v26 setActive:1];

    heightAnchor = [(UIImageView *)v10->_door heightAnchor];
    heightAnchor2 = [v8 heightAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.85];
    [v29 setActive:1];

    [(UIImageView *)v10->_door setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = objc_opt_new();
    figureStand = v10->_figureStand;
    v10->_figureStand = v30;

    v32 = [UIImage systemImageNamed:@"figure.stand"];
    [(UIImageView *)v10->_figureStand setImage:v32];

    [(UIImageView *)v10->_figureStand setContentMode:1];
    v33 = v10->_figureStand;
    v34 = +[UIColor labelColor];
    [(UIImageView *)v33 setTintColor:v34];

    [v8 addSubview:v10->_figureStand];
    centerXAnchor3 = [(UIImageView *)v10->_figureStand centerXAnchor];
    centerXAnchor4 = [v8 centerXAnchor];
    v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v37 setActive:1];

    bottomAnchor = [(UIImageView *)v10->_figureStand bottomAnchor];
    bottomAnchor2 = [v8 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v40 setActive:1];

    widthAnchor3 = [(UIImageView *)v10->_figureStand widthAnchor];
    widthAnchor4 = [v8 widthAnchor];
    v43 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.5];
    [v43 setActive:1];

    heightAnchor3 = [(UIImageView *)v10->_figureStand heightAnchor];
    heightAnchor4 = [v8 heightAnchor];
    v46 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.6];
    [v46 setActive:1];

    [(UIImageView *)v10->_figureStand setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 bringSubviewToFront:v10->_figureStand];
    v47 = sub_100063A44(@"HSProximityCardWalletKeyUWBLockTitle");
    [(HSPCWalletKeyUWBViewController *)v10 setTitle:v47];

    v48 = sub_100063A44(@"HSProximityCardWalletKeyUWBLockSubtitle");
    [(HSPCWalletKeyUWBViewController *)v10 setSubtitle:v48];

    objc_initWeak(&location, v10);
    home = [configCopy home];
    hf_fetchWalletKeyDeviceStateForCurrentDevice = [home hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100035850;
    v58[3] = &unk_1000C6740;
    objc_copyWeak(&v59, &location);
    v51 = [hf_fetchWalletKeyDeviceStateForCurrentDevice flatMap:v58];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100035A40;
    v56[3] = &unk_1000C5998;
    v57 = v10;
    v52 = [v51 recover:v56];

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)commitConfiguration
{
  continueAction = [(HSPCWalletKeyUWBViewController *)self continueAction];

  if (continueAction)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [objc_opt_class() description];
      v7 = NSStringFromSelector(a2);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Continue button", &v10, 0x16u);
    }

    [(HSPCWalletKeyUWBViewController *)self _updateHasOnboardedForWalletKey:0];
    _turnOnUnlockOnApproach = [NAFuture futureWithResult:&off_1000CD720];
  }

  else
  {
    _turnOnUnlockOnApproach = [(HSPCWalletKeyUWBViewController *)self _turnOnUnlockOnApproach];
  }

  return _turnOnUnlockOnApproach;
}

- (id)_turnOnUnlockOnApproach
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy4 = self;
    v23 = 2080;
    v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped turn on unlock on approach button", buf, 0x16u);
  }

  walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  walletKey = [walletKeyDeviceState walletKey];
  isUWBUnlockEnabled = [walletKey isUWBUnlockEnabled];

  if (isUWBUnlockEnabled)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      walletKeyDeviceState2 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      *buf = 138412802;
      selfCopy4 = self;
      v23 = 2080;
      v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
      v25 = 2112;
      v26 = walletKeyDeviceState2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key exists and UWB is enabled. Continuing to next prox card.\nDevice state = %@", buf, 0x20u);
    }

    _addWalletKeyWithUWB = [NAFuture futureWithResult:&off_1000CD720];
LABEL_14:
    v16 = _addWalletKeyWithUWB;
    goto LABEL_15;
  }

  walletKeyDeviceState3 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  walletKey2 = [walletKeyDeviceState3 walletKey];
  v12 = walletKey2 == 0;

  v13 = HFLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      walletKeyDeviceState4 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      *buf = 138412802;
      selfCopy4 = self;
      v23 = 2080;
      v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
      v25 = 2112;
      v26 = walletKeyDeviceState4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key does NOT exist.\nDevice state = %@", buf, 0x20u);
    }

    _addWalletKeyWithUWB = [(HSPCWalletKeyUWBViewController *)self _addWalletKeyWithUWB];
    goto LABEL_14;
  }

  if (v14)
  {
    walletKeyDeviceState5 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    *buf = 138412802;
    selfCopy4 = self;
    v23 = 2080;
    v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
    v25 = 2112;
    v26 = walletKeyDeviceState5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key exists, but UWB is NOT enabled. Enabling UBW of existing wallet key after auth.\nDevice state = %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000360BC;
  v19[3] = &unk_1000C6580;
  objc_copyWeak(&v20, buf);
  v16 = [NAFuture futureWithBlock:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
LABEL_15:

  return v16;
}

- (id)_notNowTapped
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [objc_opt_class() description];
    v12 = 138412546;
    v13 = v4;
    v14 = 2080;
    v15 = "[HSPCWalletKeyUWBViewController _notNowTapped]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped not now button", &v12, 0x16u);
  }

  walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  walletKey = [walletKeyDeviceState walletKey];

  if (walletKey)
  {
    walletKeyDeviceState2 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    walletKey2 = [walletKeyDeviceState2 walletKey];
    uUID = [walletKey2 UUID];
    [(HSPCWalletKeyUWBViewController *)self _updateHasOnboardedForWalletKey:uUID];
  }

  v10 = [NAFuture futureWithResult:&off_1000CD720];

  return v10;
}

- (id)_shouldShowSingleContinueButton
{
  if (!+[HFUtilities isAnIPad])
  {
    if ((+[HFUtilities isInternalTest]& 1) == 0)
    {
      v5 = objc_alloc_init(LAContext);
      v21 = 0;
      v6 = [v5 canEvaluatePolicy:2 error:&v21];
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"Showing single continue button because cannot";
        if (v6)
        {
          v8 = @"This device can";
        }

        *buf = 136315394;
        selfCopy2 = "[HSPCWalletKeyUWBViewController _shouldShowSingleContinueButton]";
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) %@ do local authentication.", buf, 0x16u);
      }

      if (!v6)
      {
        v19 = &__kCFBooleanTrue;
LABEL_19:
        v4 = [NAFuture futureWithResult:v19];

        goto LABEL_20;
      }
    }

    walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    walletKey = [walletKeyDeviceState walletKey];
    isUWBUnlockEnabled = [walletKey isUWBUnlockEnabled];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (isUWBUnlockEnabled)
      {
        v13 = @"single continue button";
      }

      else
      {
        v13 = @"two buttons";
      }

      walletKeyDeviceState2 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      walletKey2 = [walletKeyDeviceState2 walletKey];
      walletKeyDeviceState3 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      walletKey3 = [walletKeyDeviceState3 walletKey];
      isUWBUnlockEnabled2 = [walletKey3 isUWBUnlockEnabled];
      *buf = 138413314;
      selfCopy2 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldShowSingleContinueButton]";
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = walletKey2;
      v30 = 1024;
      v31 = isUWBUnlockEnabled2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing %@ because walletKeyDeviceState.walletKey = %@. isUWBUnlockEnabled = %{BOOL}d", buf, 0x30u);
    }

    v5 = [NSNumber numberWithBool:isUWBUnlockEnabled];
    v19 = v5;
    goto LABEL_19;
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v24 = 2080;
    v25 = "[HSPCWalletKeyUWBViewController _shouldShowSingleContinueButton]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing single continue button for iPad", buf, 0x16u);
  }

  v4 = [NAFuture futureWithResult:&__kCFBooleanTrue];
LABEL_20:

  return v4;
}

- (id)_addWalletKeyWithUWB
{
  if ([(HSPCWalletKeyUWBViewController *)self _shouldIncludeTapToUnlock])
  {
    v3 = 7;
  }

  else
  {
    v3 = 5;
  }

  config = [(HSPCWalletKeyUWBViewController *)self config];
  delegate = [config delegate];
  config2 = [(HSPCWalletKeyUWBViewController *)self config];
  v7 = [delegate stateMachineConfigurationGetLaunchReason:config2];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3;
  }

  return [(HSPCWalletKeyUWBViewController *)self _addWalletKeyWithiPhoneUWBOptions:v3 pairedWatchesUWBOptions:v8];
}

- (id)_addWalletKeyWithiPhoneUWBOptions:(int64_t)options pairedWatchesUWBOptions:(int64_t)bOptions
{
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() description];
    v9 = HMHomeAddWalletKeyOptionsDescription();
    v10 = HMHomeAddWalletKeyOptionsDescription();
    *buf = 138413058;
    v31 = v8;
    v32 = 2080;
    v33 = "[HSPCWalletKeyUWBViewController _addWalletKeyWithiPhoneUWBOptions:pairedWatchesUWBOptions:]";
    v34 = 2112;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) iPhone Wallet Key Options = %@. Paired Apple Watches Options = %@", buf, 0x2Au);
  }

  config = [(HSPCWalletKeyUWBViewController *)self config];
  home = [config home];
  v13 = [home hf_addWalletKeyWithOptions:options];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100036A40;
  v29[3] = &unk_1000C6850;
  v29[4] = self;
  v14 = [v13 addCompletionBlock:v29];

  config2 = [(HSPCWalletKeyUWBViewController *)self config];
  home2 = [config2 home];
  v17 = [home2 hf_addWalletKeyToPairedWatchesWithOptions:bOptions | 1];
  recoverIgnoringError = [v17 recoverIgnoringError];
  v19 = [recoverIgnoringError flatMap:&stru_1000C6F30];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100036A60;
  v27[3] = &unk_1000C6220;
  v27[4] = self;
  v20 = v19;
  v28 = v20;
  v21 = [v14 flatMap:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100036B64;
  v25[3] = &unk_1000C6F58;
  v25[4] = self;
  v26 = v20;
  v22 = v20;
  v23 = [v21 recover:v25];

  return v23;
}

- (void)_enableUWBOfExistingWalletKeyAfterAuthWithPromise:(id)promise
{
  promiseCopy = promise;
  walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  walletKey = [walletKeyDeviceState walletKey];

  if (walletKey)
  {
    v7 = objc_alloc_init(LAContext);
    v20 = 0;
    v8 = [v7 canEvaluatePolicy:2 error:&v20];
    v9 = v20;
    if (v8)
    {
      v10 = sub_100063A44(@"HSProximityCardWalletKeyUWB_AuthString");
      objc_initWeak(location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100037098;
      v16[3] = &unk_1000C6828;
      objc_copyWeak(&v19, location);
      v17 = v7;
      v18 = promiseCopy;
      [v17 evaluatePolicy:2 localizedReason:v10 reply:v16];

      objc_destroyWeak(&v19);
      objc_destroyWeak(location);
    }

    else
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [objc_opt_class() description];
        *location = 138412802;
        *&location[4] = v15;
        v22 = 2080;
        v23 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]";
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(%@:%s) Cannot local authenticate. Error = %@", location, 0x20u);
      }

      [promiseCopy finishWithResult:&off_1000CD738];
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      config = [(HSPCWalletKeyUWBViewController *)self config];
      home = [config home];
      *location = 138412802;
      *&location[4] = self;
      v22 = 2080;
      v23 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]";
      v24 = 2112;
      v25 = home;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%@:%s) wallet key does not exist for home %@.", location, 0x20u);
    }

    [promiseCopy finishWithResult:&off_1000CD720];
  }
}

- (void)_updateHasOnboardedForWalletKey:(id)key
{
  keyCopy = key;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    config = [(HSPCWalletKeyUWBViewController *)self config];
    home = [config home];
    *buf = 136315650;
    v16 = "[HSPCWalletKeyUWBViewController _updateHasOnboardedForWalletKey:]";
    v17 = 2112;
    v18 = keyCopy;
    v19 = 2112;
    v20 = home;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Updating hasOnboarded for Wallet Key (%@) for home %@", buf, 0x20u);
  }

  config2 = [(HSPCWalletKeyUWBViewController *)self config];
  home2 = [config2 home];
  hf_setHasOnboardedForWalletKey = [home2 hf_setHasOnboardedForWalletKey];

  objc_initWeak(buf, self);
  config3 = [(HSPCWalletKeyUWBViewController *)self config];
  home3 = [config3 home];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100037AD8;
  v13[3] = &unk_1000C5D18;
  objc_copyWeak(&v14, buf);
  [home3 setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (BOOL)_shouldIncludeTapToUnlock
{
  walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  walletKey = [walletKeyDeviceState walletKey];

  if (walletKey)
  {
    walletKeyDeviceState2 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    walletKey2 = [walletKeyDeviceState2 walletKey];
    isExpressEnabled = [walletKey2 isExpressEnabled];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      walletKeyDeviceState3 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      walletKey3 = [walletKeyDeviceState3 walletKey];
      config = [(HSPCWalletKeyUWBViewController *)self config];
      home = [config home];
      name = [home name];
      v14 = name;
      v22 = 138413570;
      v15 = @"NOT";
      selfCopy2 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldIncludeTapToUnlock]";
      if (isExpressEnabled)
      {
        v15 = &stru_1000C89F8;
      }

      v16 = @"YES";
      v26 = 2112;
      v27 = walletKey3;
      v28 = 2112;
      if (isExpressEnabled)
      {
        v16 = @"NO";
      }

      v29 = name;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key exists (%@) for home %@. Express is %@ enabled. Returning %@.", &v22, 0x3Eu);
    }

    return isExpressEnabled ^ 1;
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      config2 = [(HSPCWalletKeyUWBViewController *)self config];
      home2 = [config2 home];
      name2 = [home2 name];
      v22 = 138412802;
      selfCopy2 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldIncludeTapToUnlock]";
      v26 = 2112;
      v27 = name2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key does NOT exist for home %@. Including both UWB and NFC for this prox card.", &v22, 0x20u);
    }

    return 1;
  }
}

- (id)dismissButtonBlock
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    walletKeyDeviceState = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    walletKey = [walletKeyDeviceState walletKey];
    *buf = 138412802;
    selfCopy = self;
    v11 = 2080;
    v12 = "[HSPCWalletKeyUWBViewController dismissButtonBlock]";
    v13 = 2112;
    v14 = walletKey;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped dismiss button. walletKey = %@", buf, 0x20u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100037F28;
  v8[3] = &unk_1000C5970;
  v8[4] = self;
  v6 = objc_retainBlock(v8);

  return v6;
}

@end
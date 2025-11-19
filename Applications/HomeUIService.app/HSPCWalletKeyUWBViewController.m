@interface HSPCWalletKeyUWBViewController
- (BOOL)_shouldIncludeTapToUnlock;
- (HSPCWalletKeyUWBViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)_addWalletKeyWithUWB;
- (id)_addWalletKeyWithiPhoneUWBOptions:(int64_t)a3 pairedWatchesUWBOptions:(int64_t)a4;
- (id)_notNowTapped;
- (id)_shouldShowSingleContinueButton;
- (id)_turnOnUnlockOnApproach;
- (id)commitConfiguration;
- (id)dismissButtonBlock;
- (void)_enableUWBOfExistingWalletKeyAfterAuthWithPromise:(id)a3;
- (void)_updateHasOnboardedForWalletKey:(id)a3;
@end

@implementation HSPCWalletKeyUWBViewController

- (HSPCWalletKeyUWBViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v55 = a3;
  v7 = a4;
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
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
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
    v18 = [(UIImageView *)v10->_door centerYAnchor];
    v19 = [v8 centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(UIImageView *)v10->_door centerXAnchor];
    v22 = [v8 centerXAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = [(UIImageView *)v10->_door widthAnchor];
    v25 = [v8 widthAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [(UIImageView *)v10->_door heightAnchor];
    v28 = [v8 heightAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 multiplier:0.85];
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
    v35 = [(UIImageView *)v10->_figureStand centerXAnchor];
    v36 = [v8 centerXAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = [(UIImageView *)v10->_figureStand bottomAnchor];
    v39 = [v8 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(UIImageView *)v10->_figureStand widthAnchor];
    v42 = [v8 widthAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 multiplier:0.5];
    [v43 setActive:1];

    v44 = [(UIImageView *)v10->_figureStand heightAnchor];
    v45 = [v8 heightAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 multiplier:0.6];
    [v46 setActive:1];

    [(UIImageView *)v10->_figureStand setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 bringSubviewToFront:v10->_figureStand];
    v47 = sub_100063A44(@"HSProximityCardWalletKeyUWBLockTitle");
    [(HSPCWalletKeyUWBViewController *)v10 setTitle:v47];

    v48 = sub_100063A44(@"HSProximityCardWalletKeyUWBLockSubtitle");
    [(HSPCWalletKeyUWBViewController *)v10 setSubtitle:v48];

    objc_initWeak(&location, v10);
    v49 = [v7 home];
    v50 = [v49 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100035850;
    v58[3] = &unk_1000C6740;
    objc_copyWeak(&v59, &location);
    v51 = [v50 flatMap:v58];
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
  v4 = [(HSPCWalletKeyUWBViewController *)self continueAction];

  if (v4)
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
    v8 = [NAFuture futureWithResult:&off_1000CD720];
  }

  else
  {
    v8 = [(HSPCWalletKeyUWBViewController *)self _turnOnUnlockOnApproach];
  }

  return v8;
}

- (id)_turnOnUnlockOnApproach
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = self;
    v23 = 2080;
    v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped turn on unlock on approach button", buf, 0x16u);
  }

  v4 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  v5 = [v4 walletKey];
  v6 = [v5 isUWBUnlockEnabled];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      *buf = 138412802;
      v22 = self;
      v23 = 2080;
      v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key exists and UWB is enabled. Continuing to next prox card.\nDevice state = %@", buf, 0x20u);
    }

    v9 = [NAFuture futureWithResult:&off_1000CD720];
LABEL_14:
    v16 = v9;
    goto LABEL_15;
  }

  v10 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  v11 = [v10 walletKey];
  v12 = v11 == 0;

  v13 = HFLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v17 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      *buf = 138412802;
      v22 = self;
      v23 = 2080;
      v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key does NOT exist.\nDevice state = %@", buf, 0x20u);
    }

    v9 = [(HSPCWalletKeyUWBViewController *)self _addWalletKeyWithUWB];
    goto LABEL_14;
  }

  if (v14)
  {
    v15 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    *buf = 138412802;
    v22 = self;
    v23 = 2080;
    v24 = "[HSPCWalletKeyUWBViewController _turnOnUnlockOnApproach]";
    v25 = 2112;
    v26 = v15;
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

  v5 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  v6 = [v5 walletKey];

  if (v6)
  {
    v7 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    v8 = [v7 walletKey];
    v9 = [v8 UUID];
    [(HSPCWalletKeyUWBViewController *)self _updateHasOnboardedForWalletKey:v9];
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
        v23 = "[HSPCWalletKeyUWBViewController _shouldShowSingleContinueButton]";
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

    v9 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    v10 = [v9 walletKey];
    v11 = [v10 isUWBUnlockEnabled];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v13 = @"single continue button";
      }

      else
      {
        v13 = @"two buttons";
      }

      v14 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      v15 = [v14 walletKey];
      v16 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      v17 = [v16 walletKey];
      v18 = [v17 isUWBUnlockEnabled];
      *buf = 138413314;
      v23 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldShowSingleContinueButton]";
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v15;
      v30 = 1024;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing %@ because walletKeyDeviceState.walletKey = %@. isUWBUnlockEnabled = %{BOOL}d", buf, 0x30u);
    }

    v5 = [NSNumber numberWithBool:v11];
    v19 = v5;
    goto LABEL_19;
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = self;
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

  v4 = [(HSPCWalletKeyUWBViewController *)self config];
  v5 = [v4 delegate];
  v6 = [(HSPCWalletKeyUWBViewController *)self config];
  v7 = [v5 stateMachineConfigurationGetLaunchReason:v6];

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

- (id)_addWalletKeyWithiPhoneUWBOptions:(int64_t)a3 pairedWatchesUWBOptions:(int64_t)a4
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

  v11 = [(HSPCWalletKeyUWBViewController *)self config];
  v12 = [v11 home];
  v13 = [v12 hf_addWalletKeyWithOptions:a3];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100036A40;
  v29[3] = &unk_1000C6850;
  v29[4] = self;
  v14 = [v13 addCompletionBlock:v29];

  v15 = [(HSPCWalletKeyUWBViewController *)self config];
  v16 = [v15 home];
  v17 = [v16 hf_addWalletKeyToPairedWatchesWithOptions:a4 | 1];
  v18 = [v17 recoverIgnoringError];
  v19 = [v18 flatMap:&stru_1000C6F30];

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

- (void)_enableUWBOfExistingWalletKeyAfterAuthWithPromise:(id)a3
{
  v4 = a3;
  v5 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  v6 = [v5 walletKey];

  if (v6)
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
      v18 = v4;
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

      [v4 finishWithResult:&off_1000CD738];
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HSPCWalletKeyUWBViewController *)self config];
      v13 = [v12 home];
      *location = 138412802;
      *&location[4] = self;
      v22 = 2080;
      v23 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]";
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%@:%s) wallet key does not exist for home %@.", location, 0x20u);
    }

    [v4 finishWithResult:&off_1000CD720];
  }
}

- (void)_updateHasOnboardedForWalletKey:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HSPCWalletKeyUWBViewController *)self config];
    v7 = [v6 home];
    *buf = 136315650;
    v16 = "[HSPCWalletKeyUWBViewController _updateHasOnboardedForWalletKey:]";
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Updating hasOnboarded for Wallet Key (%@) for home %@", buf, 0x20u);
  }

  v8 = [(HSPCWalletKeyUWBViewController *)self config];
  v9 = [v8 home];
  v10 = [v9 hf_setHasOnboardedForWalletKey];

  objc_initWeak(buf, self);
  v11 = [(HSPCWalletKeyUWBViewController *)self config];
  v12 = [v11 home];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100037AD8;
  v13[3] = &unk_1000C5D18;
  objc_copyWeak(&v14, buf);
  [v12 setDismissedWalletKeyUWBUnlockOnboardingWithCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (BOOL)_shouldIncludeTapToUnlock
{
  v3 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
  v4 = [v3 walletKey];

  if (v4)
  {
    v5 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    v6 = [v5 walletKey];
    v7 = [v6 isExpressEnabled];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
      v10 = [v9 walletKey];
      v11 = [(HSPCWalletKeyUWBViewController *)self config];
      v12 = [v11 home];
      v13 = [v12 name];
      v14 = v13;
      v22 = 138413570;
      v15 = @"NOT";
      v23 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldIncludeTapToUnlock]";
      if (v7)
      {
        v15 = &stru_1000C89F8;
      }

      v16 = @"YES";
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      if (v7)
      {
        v16 = @"NO";
      }

      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%@:%s) Wallet key exists (%@) for home %@. Express is %@ enabled. Returning %@.", &v22, 0x3Eu);
    }

    return v7 ^ 1;
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(HSPCWalletKeyUWBViewController *)self config];
      v20 = [v19 home];
      v21 = [v20 name];
      v22 = 138412802;
      v23 = self;
      v24 = 2080;
      v25 = "[HSPCWalletKeyUWBViewController _shouldIncludeTapToUnlock]";
      v26 = 2112;
      v27 = v21;
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
    v4 = [(HSPCWalletKeyUWBViewController *)self walletKeyDeviceState];
    v5 = [v4 walletKey];
    *buf = 138412802;
    v10 = self;
    v11 = 2080;
    v12 = "[HSPCWalletKeyUWBViewController dismissButtonBlock]";
    v13 = 2112;
    v14 = v5;
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
@interface FMDMagSafeSetupRemoteUIViewController
+ (BOOL)_isSecureForRemoteViewService;
- (BOOL)_canShowWhileLocked;
- (BOOL)isFMFAllowed;
- (BOOL)isFindMyAppInstalled;
- (BOOL)isFindMyEnabled;
- (BOOL)isLocked;
- (BOOL)isRestrictedSKU;
- (id)_computeName;
- (id)featurePlatterView:(id)a3 backgrounColor:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)proxCardAddToDevice;
- (id)proxCardAlreadyAttached;
- (id)proxCardAttachAccessory;
- (id)proxCardLockedFindMyNotPaired;
- (id)proxCardNoAccount;
- (id)proxCardNonOwnerLockedDevice;
- (id)proxCardNonOwnerUnlocked;
- (id)proxCardNotImplemeted;
- (id)proxCardSetupComplete;
- (id)proxCardSetupError;
- (id)proxCardSetupFindmy;
- (id)proxCardSpinner;
- (id)proxCardUnlockedStartFlow;
- (id)proxCardUnsupportedAccessory;
- (id)proxCardUpgradeAccountSecurity;
- (id)proxCardUpgradeAccountSecurityError;
- (unint64_t)accountState;
- (unint64_t)stateForAccessory:(id)a3;
- (void)_addAccessorytoDataStore:(id)a3;
- (void)_removeAccessoryToDataStoreWithID:(id)a3;
- (void)accessoryDidConnect:(id)a3;
- (void)accessoryDidDisconnect:(id)a3;
- (void)addDismissButtonAction:(id)a3;
- (void)addDynamicMapToCard:(id)a3;
- (void)addImagetoCard:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)continueWithAccountValidationFlow;
- (void)enableFindMyWithCompletion:(id)a3;
- (void)launchSettingsAppUpgradeFlow;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)postNotification:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)prepareForSetupFlowFor:(id)a3;
- (void)progressFlowWithState:(unint64_t)a3;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)setUpFindMyWithCompletion:(id)a3;
- (void)setupEnded;
- (void)storeAccessoryAsNotFindmyEnabled:(id)a3;
- (void)triggerFindMyAppInstallation;
- (void)upgradeAccountButtonPressedOn:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMDMagSafeSetupRemoteUIViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDMagSafeSetupRemoteUIViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100038738];
  [(FMDMagSafeSetupRemoteUIViewController *)self setRemoteVCProxy:v8];

  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 userInfo];
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "configContext = %@", &v13, 0xCu);
  }

  v11 = [(FMDMagSafeSetupRemoteUIViewController *)self remoteVCProxy];
  [v11 setReachabilityDisabled:1];

  v12 = [(FMDMagSafeSetupRemoteUIViewController *)self remoteVCProxy];
  [v12 setAllowsAlertStacking:1];

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FMDMagSafeSetupRemoteUIViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100038758];
  [(FMDMagSafeSetupRemoteUIViewController *)self setRemoteVCProxy:v8];

  v9 = [v7 userInfo];

  v10 = [v9 objectForKeyedSubscript:@"FMLaunchContext"];
  [(FMDMagSafeSetupRemoteUIViewController *)self setLaunchContext:v10];

  v11 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v12 = [v11 objectForKeyedSubscript:@"launchedFromFindMyApp"];
  -[FMDMagSafeSetupRemoteUIViewController setLaunchedFromFindMyApp:](self, "setLaunchedFromFindMyApp:", [v12 BOOLValue]);

  v13 = sub_100002400();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "launchContext = %@", &v15, 0xCu);
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FMDMagSafeSetupRemoteUIViewController;
  [(FMDMagSafeSetupRemoteUIViewController *)&v3 viewDidLoad];
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "[FMDMagSafeSetupRemoteUIViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "alert %s", buf, 0xCu);
  }
}

+ (BOOL)_isSecureForRemoteViewService
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[FMDMagSafeSetupRemoteUIViewController _isSecureForRemoteViewService]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "alert %s", &v4, 0xCu);
  }

  return 1;
}

- (BOOL)_canShowWhileLocked
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[FMDMagSafeSetupRemoteUIViewController _canShowWhileLocked]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "alert %s", &v4, 0xCu);
  }

  return 1;
}

- (void)proxCardFlowWillPresent
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "presenting magSafe setup card", v3, 2u);
  }
}

- (void)proxCardFlowDidDismiss
{
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: proxCardFlowDidDismiss get called", v6, 2u);
  }

  v4 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];

  if (v4)
  {
    v5 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];
    [v5 stopUpdatingLocation];

    [(FMDMagSafeSetupRemoteUIViewController *)self setLocationManager:0];
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self setupEnded];
}

- (void)setupEnded
{
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: setupEnded get called", buf, 2u);
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self setCaAccessoryManager:0];
  [(FMDMagSafeSetupRemoteUIViewController *)self setPhysicalAccessory:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004664;
  block[3] = &unk_100038780;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)accessoryDidConnect:(id)a3
{
  v4 = a3;
  v5 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v6 = [v5 objectForKeyedSubscript:@"serialNumber"];
  if (v6)
  {
    v7 = v6;
    v8 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
    v9 = [v8 objectForKeyedSubscript:@"serialNumber"];
    v10 = [v4 isEqualToString:v9];

    if (!v10)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v11 = sub_100002400();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "magsafe accessory with serial number %@ connected", buf, 0xCu);
  }

  v12 = [(FMDMagSafeSetupRemoteUIViewController *)self timeoutTimer];

  if (v12)
  {
    v13 = [(FMDMagSafeSetupRemoteUIViewController *)self timeoutTimer];
    [v13 cancel];

    [(FMDMagSafeSetupRemoteUIViewController *)self setTimeoutTimer:0];
  }

  v14 = [(FMDMagSafeSetupRemoteUIViewController *)self showAttachScreenTimer];

  if (v14)
  {
    v15 = [(FMDMagSafeSetupRemoteUIViewController *)self showAttachScreenTimer];
    [v15 cancel];

    [(FMDMagSafeSetupRemoteUIViewController *)self setShowAttachScreenTimer:0];
  }

  v16 = [(FMDMagSafeSetupRemoteUIViewController *)self presentingAccessorySerialNumber];

  if (v16)
  {
    v17 = [(FMDMagSafeSetupRemoteUIViewController *)self presentingAccessorySerialNumber];
    v18 = [v17 isEqualToString:v4];

    v19 = sub_100002400();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        sub_10001DD60();
      }
    }

    else if (v20)
    {
      sub_10001DD24();
    }

    goto LABEL_41;
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self setPresentingAccessorySerialNumber:v4];
  v21 = [(FMDMagSafeSetupRemoteUIViewController *)self caAccessoryManager];
  v22 = [v21 accessoryRawInfo];
  v23 = [v22 allValues];
  v19 = [v23 firstObject];

  if (v4)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v24 = [(FMDMagSafeSetupRemoteUIViewController *)self caAccessoryManager];
    v25 = [v24 accessoryRawInfo];
    v26 = [v25 allValues];

    v27 = [v26 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v62;
      while (2)
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v61 + 1) + 8 * i);
          v32 = [v31 serialNumber];
          v33 = [v32 isEqualToString:v4];

          if (v33)
          {
            v34 = v31;

            v19 = v34;
            goto LABEL_28;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v61 objects:v65 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:
  }

  v35 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v36 = [v35 objectForKeyedSubscript:@"serialNumber"];
  if (!v36)
  {
    goto LABEL_36;
  }

  v37 = v36;
  v38 = [v19 serialNumber];
  v39 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v40 = [v39 objectForKeyedSubscript:@"serialNumber"];
  if (![v38 isEqualToString:v40])
  {
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  v41 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v42 = [v41 objectForKeyedSubscript:@"isNVMSetup"];
  if (!v42)
  {

    goto LABEL_35;
  }

  v43 = v42;
  v56 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v57 = v41;
  v44 = [v56 objectForKeyedSubscript:@"keysAvailable"];

  if (!v44)
  {
LABEL_37:
    v54 = sub_10000EE80();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "launching spinner", buf, 2u);
    }

    [(FMDMagSafeSetupRemoteUIViewController *)self progressFlowWithState:14];
    v55 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004E24;
    block[3] = &unk_100038858;
    v59 = v19;
    v60 = self;
    dispatch_async(v55, block);

    v53 = v59;
    goto LABEL_40;
  }

  v45 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v46 = [v45 objectForKeyedSubscript:@"isNVMSetup"];
  -[NSObject setIsNVMSetup:](v19, "setIsNVMSetup:", [v46 BOOLValue]);

  v47 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v48 = [v47 objectForKeyedSubscript:@"keysAvailable"];
  -[NSObject setKeysAvailable:](v19, "setKeysAvailable:", [v48 BOOLValue]);

  v49 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v50 = [v49 objectForKeyedSubscript:@"phoneNumber"];
  [v19 setPhoneNumber:v50];

  v51 = [(FMDMagSafeSetupRemoteUIViewController *)self launchContext];
  v52 = [v51 objectForKeyedSubscript:@"email"];
  [v19 setEmail:v52];

  [(FMDMagSafeSetupRemoteUIViewController *)self setPhysicalAccessory:v19];
  v53 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  [(FMDMagSafeSetupRemoteUIViewController *)self prepareForSetupFlowFor:v53];
LABEL_40:

LABEL_41:
LABEL_42:
}

- (void)accessoryDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_10000EE80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "accessory with serialNumber %@ disconnected", &v10, 0xCu);
  }

  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self presentingAccessorySerialNumber];
  if (!v6 || (v7 = v6, -[FMDMagSafeSetupRemoteUIViewController presentingAccessorySerialNumber](self, "presentingAccessorySerialNumber"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:v4], v8, v7, v9))
  {
    [(FMDMagSafeSetupRemoteUIViewController *)self setPresentingAccessorySerialNumber:0];
    [(FMDMagSafeSetupRemoteUIViewController *)self setupEnded];
  }
}

- (void)prepareForSetupFlowFor:(id)a3
{
  v4 = a3;
  [(FMDMagSafeSetupRemoteUIViewController *)self setDeviceLockState:MKBGetDeviceLockState()];
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "initialising prepareForSetupFlowFor", &v28, 2u);
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self setMagSafeState:[(FMDMagSafeSetupRemoteUIViewController *)self stateForAccessory:v4]];
  if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 3)
  {
    v6 = +[FMDMagSafeDataStore sharedInstance];
    v7 = [v6 readAllAccessoriesFromDisk];

    v8 = [v4 serialNumber];
    v9 = [FMDExtHelper deviceIDFromAddress:v8];

    v10 = [v7 objectForKeyedSubscript:v9];
    if (!v10 || (v11 = v10, [v7 objectForKeyedSubscript:v9], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "findMyEnabled"), v12, v11, (v13 & 1) == 0))
    {
      [(FMDMagSafeSetupRemoteUIViewController *)self _addAccessorytoDataStore:v4];
    }

    [(FMDMagSafeSetupRemoteUIViewController *)self postNotification:@"com.apple.icloud.findmydeviced.findkit.magSafe.added"];
  }

  v14 = sub_100002400();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceLockState];
    v16 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState];
    v28 = 67109632;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    v32 = 2048;
    v33 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device lock state = %d magSafeState = %lu proxCardState = %lu", &v28, 0x1Cu);
  }

  if ([(FMDMagSafeSetupRemoteUIViewController *)self launchedFromFindMyApp])
  {
    if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 3)
    {
      v17 = self;
      v18 = 2;
LABEL_35:
      [(FMDMagSafeSetupRemoteUIViewController *)v17 progressFlowWithState:v18];
      goto LABEL_36;
    }

    if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 6)
    {
LABEL_14:
      v17 = self;
      v18 = 3;
      goto LABEL_35;
    }

    if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 5)
    {
      [(FMDMagSafeSetupRemoteUIViewController *)self setMagSafeState:1];
    }

    else if (![(FMDMagSafeSetupRemoteUIViewController *)self magSafeState])
    {
      v27 = sub_100002400();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10001DE48();
      }

      goto LABEL_14;
    }
  }

  if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]!= 3 && [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]&& [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]!= 5 && [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]!= 6)
  {
    v20 = sub_100002400();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceLockState];
      v22 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState];
      v28 = 67109632;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2048;
      v33 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device lock state = %d magSafeState = %lu proxCardState = %lu", &v28, 0x1Cu);
    }

    if ([(FMDMagSafeSetupRemoteUIViewController *)self deviceLockState]== 1 || [(FMDMagSafeSetupRemoteUIViewController *)self deviceLockState]== 2)
    {
      if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 2)
      {
        v23 = 9;
      }

      else
      {
        v23 = 4;
      }
    }

    else if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 2)
    {
      v23 = 10;
    }

    else if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 1)
    {
      v23 = 5;
    }

    else if ([(FMDMagSafeSetupRemoteUIViewController *)self magSafeState]== 4)
    {
      v23 = 6;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_100002400();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceLockState];
      v26 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeState];
      v28 = 67109632;
      v29 = v25;
      v30 = 2048;
      v31 = v26;
      v32 = 2048;
      v33 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device lock state = %d magSafeState = %lu proxCardState = %lu", &v28, 0x1Cu);
    }

    v17 = self;
    v18 = v23;
    goto LABEL_35;
  }

  v19 = sub_100002400();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DE84(self, v19);
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self setupEnded];
LABEL_36:
}

- (unint64_t)stateForAccessory:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v5 = +[FMDAccessoryTypeValidator sharedInstance];
  v6 = [v4 accessoryType];
  if (![v5 isAllowedAccessoryWithType:v6])
  {

    goto LABEL_10;
  }

  v7 = [v4 isMF4i];

  if ((v7 & 1) == 0)
  {
LABEL_10:
    v10 = 6;
    goto LABEL_11;
  }

  v8 = [v4 isNVMSetup];
  v9 = [v4 keysAvailable];
  if (v8)
  {
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v12 = +[FMDMagSafeDataStore sharedInstance];
    v13 = [v12 readAllAccessoriesFromDisk];

    v14 = [v4 serialNumber];
    v15 = [FMDExtHelper deviceIDFromAddress:v14];

    v16 = [v13 objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = [v13 objectForKeyedSubscript:v15];
      v18 = [v17 findMyEnabled];

      if (v18)
      {
        [(FMDMagSafeSetupRemoteUIViewController *)self _removeAccessoryToDataStoreWithID:v15];
        v10 = 0;
      }

      else
      {
        v10 = 5;
      }
    }

    else
    {
      v10 = 1;
    }
  }

LABEL_11:

  return v10;
}

- (void)_removeAccessoryToDataStoreWithID:(id)a3
{
  v3 = a3;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = +[FMDMagSafeDataStore sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000612C;
  v8[3] = &unk_100038880;
  v9 = v4;
  v6 = v4;
  [v5 removeAccessoryWithId:v3 withCompletion:v8];

  v7 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v6, v7);
}

- (void)_addAccessorytoDataStore:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = sub_1000064E4;
  v26[3] = sub_1000064F4;
  v27 = 0;
  v6 = [v4 name];

  if (!v6)
  {
    v7 = [(FMDMagSafeSetupRemoteUIViewController *)self _computeName];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000064FC;
    v22[3] = &unk_1000388A8;
    v24 = &v25;
    v23 = v5;
    [v4 setName:v7 withCompletion:v22];
  }

  v8 = dispatch_time(0, 10000000000);
  v9 = dispatch_group_wait(v5, v8);
  if (*(v26[0] + 40))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    v12 = [[FMDMagSafeAccessory alloc] initWithPhysicalAccessory:v4 fmEnabled:1];
    [(FMDMagSafeSetupRemoteUIViewController *)self setMagSafeAccessory:v12];

    dispatch_group_enter(v5);
    v13 = +[FMDMagSafeDataStore sharedInstance];
    v14 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeAccessory];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000065D8;
    v19[3] = &unk_1000388A8;
    v21 = &v25;
    v15 = v5;
    v20 = v15;
    [v13 addAccessory:v14 withCompletion:v19];

    v16 = dispatch_time(0, 1000000000);
    v17 = dispatch_group_wait(v15, v16);
    if (*(v26[0] + 40) || v17)
    {
      v18 = sub_100002400();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10001DF0C(v26);
      }
    }

    v11 = v20;
  }

  else
  {
    v11 = sub_100002400();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF74(v26);
    }
  }

  _Block_object_dispose(&v25, 8);
}

- (void)progressFlowWithState:(unint64_t)a3
{
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "flow with state = %lu", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000067BC;
  v6[3] = &unk_1000388D0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(&_dispatch_main_q, v6);
}

- (id)proxCardUnlockedStartFlow
{
  v3 = [FMDRemoteAsset alloc];
  v4 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v5 = [v4 accessoryType];
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v7 = [v6 style];
  v33 = [(FMDRemoteAsset *)v3 initWithAccessoryType:v5 style:v7 type:0];

  v8 = [FMDRemoteAsset alloc];
  v9 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v10 = [v9 accessoryType];
  v11 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v12 = [v11 style];
  v13 = [(FMDRemoteAsset *)v8 initWithAccessoryType:v10 style:v12 type:1];

  v14 = [(FMDRemoteAsset *)v33 getStoredAssetLocation];
  v15 = [(FMDRemoteAsset *)v13 getStoredAssetLocation];
  v16 = v15;
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  v19 = sub_10000EE80();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 138412546;
      v37 = v14;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "using video = %@ and adjustmensts = %@", buf, 0x16u);
    }

    v21 = [NSURL fileURLWithPath:v14];
    v22 = [NSURL fileURLWithPath:v16];
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "using default video", buf, 2u);
    }

    v23 = +[NSBundle mainBundle];
    v21 = [v23 URLForResource:@"wallet1-pairing-video.mov" withExtension:0];

    v24 = +[NSBundle mainBundle];
    v22 = [v24 URLForResource:@"wallet1-pairing-video-adjustments.plist" withExtension:0];
  }

  v25 = [[FMDMovieProxCardViewController alloc] initWithMovieURL:v21 adjustmentsURL:v22 movieDimensions:176.0 productHeight:304.0, 176.0];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ACCESSORY_TITLE" value:&stru_10003A130 table:0];
  [(FMDMovieProxCardViewController *)v25 setTitle:v27];

  [(FMDMovieProxCardViewController *)v25 setDismissalType:3];
  objc_initWeak(buf, self);
  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CONTINUE" value:&stru_10003A130 table:0];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100006F2C;
  v34[3] = &unk_1000388F8;
  objc_copyWeak(&v35, buf);
  v30 = [PRXAction actionWithTitle:v29 style:0 handler:v34];
  v31 = [(FMDMovieProxCardViewController *)v25 addAction:v30];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  return v25;
}

- (void)continueWithAccountValidationFlow
{
  v3 = [(FMDMagSafeSetupRemoteUIViewController *)self accountState];
  if (v3 <= 3)
  {
    v4 = qword_100025E10[v3];

    [(FMDMagSafeSetupRemoteUIViewController *)self progressFlowWithState:v4];
  }
}

- (void)setUpFindMyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000070BC;
  v7[3] = &unk_100038990;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)storeAccessoryAsNotFindmyEnabled:(id)a3
{
  v4 = a3;
  v5 = [FMDMagSafeAccessory alloc];
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v7 = [(FMDMagSafeAccessory *)v5 initWithPhysicalAccessory:v6 fmEnabled:0];
  [(FMDMagSafeSetupRemoteUIViewController *)self setMagSafeAccessory:v7];

  v9 = +[FMDMagSafeDataStore sharedInstance];
  v8 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeAccessory];
  [v9 addAccessory:v8 withCompletion:v4];
}

- (id)_computeName
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_firstName];
  v5 = [v3 aa_lastName];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_WALLET_NAME_PATTERN" value:&stru_10003A130 table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"MAGSAFE_PAIRING_WALLET_DEFAULT_NAME" value:&stru_10003A130 table:0];

  v10 = sub_100002400();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E0F4();
  }

  if ([v7 containsString:@"<firstName>"])
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v11 = [v7 stringByReplacingOccurrencesOfString:@"<firstName>" withString:v4];

    v7 = v11;
  }

  if (![v7 containsString:@"<lastName>"])
  {
    v12 = v7;
    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_10:
    v12 = v9;
    goto LABEL_11;
  }

  v12 = [v7 stringByReplacingOccurrencesOfString:@"<lastName>" withString:v5];

  v7 = v12;
LABEL_11:
  v13 = v12;

  return v12;
}

- (id)proxCardAttachAccessory
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ATTACH_WALLET_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ATTACH_WALLET_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"plus.circle.fill" withConfiguration:v8];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CANCEL" value:&stru_10003A130 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100008B28;
  v19 = &unk_1000388F8;
  objc_copyWeak(&v20, &location);
  v13 = [PRXAction actionWithTitle:v12 style:0 handler:&v16];
  v14 = [v3 addAction:{v13, v16, v17, v18, v19}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardUnsupportedAccessory
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NOT_SUPPORTED_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NOT_SUPPORTED_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v8];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CANCEL" value:&stru_10003A130 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100008E50;
  v19 = &unk_1000388F8;
  objc_copyWeak(&v20, &location);
  v13 = [PRXAction actionWithTitle:v12 style:0 handler:&v16];
  v14 = [v3 addAction:{v13, v16, v17, v18, v19}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardAlreadyAttached
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ALREADY_ATTACHED_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ALREADY_ATTACHED_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v8];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CANCEL" value:&stru_10003A130 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100009178;
  v19 = &unk_1000388F8;
  objc_copyWeak(&v20, &location);
  v13 = [PRXAction actionWithTitle:v12 style:0 handler:&v16];
  v14 = [v3 addAction:{v13, v16, v17, v18, v19}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardAddToDevice
{
  v3 = objc_alloc_init(PRXCardContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ACCESSORY_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  [v3 setDismissalType:3];
  objc_initWeak(&location, self);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CONTINUE" value:&stru_10003A130 table:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000093C0;
  v11[3] = &unk_1000389B8;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v8 = [PRXAction actionWithTitle:v7 style:0 handler:v11];
  v9 = [v3 addAction:v8];

  [(FMDMagSafeSetupRemoteUIViewController *)self addImagetoCard:v3];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

- (BOOL)isFindMyEnabled
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = +[FMDFMIPManager sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009588;
  v9[3] = &unk_1000389E0;
  v11 = &v12;
  v4 = v2;
  v10 = v4;
  [v3 fmipStateWithCompletion:v9];

  v5 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v4, v5))
  {
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E178();
    }
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)enableFindMyWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[FMDFMIPManager sharedInstance];
  v5 = [v4 enableFMIPInContext:7];

  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "enable Findmy with error = %@", &v7, 0xCu);
  }

  v3[2](v3, v5);
}

- (id)proxCardSetupFindmy
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  [v3 setImageStyle:1];
  v4 = [UIImage imageNamed:@"Find_My"];
  v31 = v4;
  v5 = [NSArray arrayWithObjects:&v31 count:1];
  [v3 setImages:v5];

  [v3 setDismissalType:1];
  LODWORD(v5) = [(FMDMagSafeSetupRemoteUIViewController *)self isRestrictedSKU];
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v5)
  {
    v8 = @"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADD_TO_FIND_MY_MESSAGE_RESTRICTED_SKU";
  }

  else
  {
    v8 = @"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADD_TO_FIND_MY_MESSAGE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_10003A130 table:0];
  [v3 setBodyText:v9];

  if ([(FMDMagSafeSetupRemoteUIViewController *)self isFindMyAppInstalled])
  {
    v10 = [(FMDMagSafeSetupRemoteUIViewController *)self isFindMyEnabled];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (v10)
    {
      [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADD_TO_FIND_MY?" value:&stru_10003A130 table:0];
    }

    else
    {
      [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ENABLE_FINDMY_TITLE" value:&stru_10003A130 table:0];
    }
    v13 = ;
  }

  else
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_INSTALL_FIND_MY?" value:&stru_10003A130 table:0];
  }

  v14 = v13;
  [v3 setTitle:v13];

  if ([(FMDMagSafeSetupRemoteUIViewController *)self isFindMyAppInstalled])
  {
    if ([(FMDMagSafeSetupRemoteUIViewController *)self isFindMyEnabled])
    {
      v15 = @"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADD_TO_FIND_MY_ACTION";
    }

    else
    {
      v15 = @"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ENABLE_FINDMY_ACTION";
    }
  }

  else
  {
    v15 = @"MAGSAFE_PAIRING_UPSELL_PROX_CARD_INSTALL_FIND_MY_ACTION";
  }

  [(FMDMagSafeSetupRemoteUIViewController *)self addDismissButtonAction:v3];
  objc_initWeak(&location, self);
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:v15 value:&stru_10003A130 table:0];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100009A10;
  v26 = &unk_100038A30;
  v18 = v3;
  v27 = v18;
  v28 = self;
  objc_copyWeak(&v29, &location);
  v19 = [PRXAction actionWithTitle:v17 style:0 handler:&v23];
  v20 = [v18 addAction:{v19, v23, v24, v25, v26}];

  v21 = v18;
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);

  return v21;
}

- (id)featurePlatterView:(id)a3 backgrounColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v19 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v18 = [UIImage systemImageNamed:v6 withConfiguration:v19];

  v7 = [[UIImageView alloc] initWithImage:v18];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor whiteColor];
  [v7 setTintColor:v8];

  [v7 setContentMode:4];
  [v7 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v9 = objc_alloc_init(UIView);
  [v9 _setLayoutDebuggingIdentifier:@"PRXFeaturePlatter"];
  [v9 setBackgroundColor:v5];

  [v9 _setContinuousCornerRadius:14.0];
  [v9 addSubview:v7];
  v10 = [v9 centerXAnchor];
  v11 = [v7 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v20[0] = v12;
  v13 = [v9 centerYAnchor];
  v14 = [v7 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v20[1] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:2];
  [NSLayoutConstraint activateConstraints:v16];

  return v9;
}

- (BOOL)isRestrictedSKU
{
  v2 = +[FMSystemInfo sharedInstance];
  if ([v2 isInternalBuild])
  {
    v3 = [FMPreferencesUtil BOOLForKey:@"simulateRestrictedRegionPresence" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"];

    if (v3)
    {
      return 1;
    }
  }

  else
  {
  }

  v5 = qword_100045E10;
  if (!qword_100045E10)
  {
    v6 = MGCopyAnswer();
    v7 = qword_100045E10;
    qword_100045E10 = v6;

    v5 = qword_100045E10;
  }

  return [v5 isEqualToString:@"KH"];
}

- (id)proxCardSetupComplete
{
  v3 = objc_alloc_init(PRXFeatureListViewController);
  v4 = [(FMDMagSafeSetupRemoteUIViewController *)self magSafeAccessory];
  v5 = [v4 name];
  [v3 setTitle:v5];

  [v3 setDismissalType:3];
  objc_initWeak(&location, self);
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self isRestrictedSKU];
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v61 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isRestrictedSKU %d", buf, 8u);
  }

  if (v6)
  {
    v8 = [FMDRemoteAsset alloc];
    v9 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
    v10 = [v9 accessoryType];
    v11 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
    v12 = [v11 style];
    v13 = [(FMDRemoteAsset *)v8 initWithAccessoryType:v10 style:v12 type:3];

    v14 = [(FMDRemoteAsset *)v13 getStoredAssetLocation];
    if (!v14 || (v15 = v14, [NSData dataWithContentsOfFile:v14], v16 = objc_claimAutoreleasedReturnValue(), [UIImage imageWithData:v16 scale:3.0], v53 = objc_claimAutoreleasedReturnValue(), v16, v14 = v15, !v53))
    {
      v53 = [UIImage imageNamed:@"wallet1-pairing-non-owner"];
    }

    v52 = v14;
    v17 = [[UIImageView alloc] initWithImage:v53];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v3 contentView];
    [v18 addSubview:v17];

    v19 = [v3 tableView];
    [v19 setTableHeaderView:v17];

    v20 = [v17 centerXAnchor];
    v21 = [v3 tableView];
    v22 = [v21 centerXAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v59 = v23;
    v24 = [NSArray arrayWithObjects:&v59 count:1];
    [NSLayoutConstraint activateConstraints:v24];
  }

  else
  {
    [(FMDMagSafeSetupRemoteUIViewController *)self addDynamicMapToCard:v3];
    v25 = +[UIColor systemBlueColor];
    v53 = [(FMDMagSafeSetupRemoteUIViewController *)self featurePlatterView:@"location.fill" backgrounColor:v25];

    v26 = [PRXFeature alloc];
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"MAGSAFE_PAIRING_LOCATION_FEATURE_TITLE" value:&stru_10003A130 table:0];
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"MAGSAFE_PAIRING_LOCATION_FEATURE_MESSAGE" value:&stru_10003A130 table:0];
    v13 = [v26 initWithTitle:v28 detailText:v30 imageView:v53 valueChangedBlock:0];

    [(FMDRemoteAsset *)v13 setImageViewSize:28.0];
    v31 = [v3 addFeature:v13];
  }

  v32 = +[UIColor systemBlueColor];
  v33 = [(FMDMagSafeSetupRemoteUIViewController *)self featurePlatterView:@"bell.fill" backgrounColor:v32];

  v34 = [PRXFeature alloc];
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"MAGSAFE_PAIRING_NOTIFY_WHEN_DETACHED_FEATURE_TITLE" value:&stru_10003A130 table:0];
  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"MAGSAFE_PAIRING_NOTIFY_WHEN_DETACHED_FEATURE_MESSAGE" value:&stru_10003A130 table:0];
  v39 = [v34 initWithTitle:v36 detailText:v38 imageView:v33 valueChangedBlock:0];

  [v39 setImageViewSize:28.0];
  v40 = [v3 addFeature:v39];
  v41 = [v3 tableView];
  [v41 setSeparatorStyle:0];

  if ([(FMDMagSafeSetupRemoteUIViewController *)self isFindMyAppInstalled])
  {
    v42 = +[NSBundle mainBundle];
    v43 = [v42 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_VIEW_IN_FINDMY" value:&stru_10003A130 table:0];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10000A884;
    v56[3] = &unk_1000389B8;
    objc_copyWeak(&v57, &location);
    v56[4] = self;
    v44 = [PRXAction actionWithTitle:v43 style:0 handler:v56];

    v45 = [v3 addAction:v44];
    objc_destroyWeak(&v57);
  }

  v46 = [(FMDMagSafeSetupRemoteUIViewController *)self isFindMyAppInstalled];
  v47 = +[NSBundle mainBundle];
  v48 = [v47 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_DONE_ACTION" value:&stru_10003A130 table:0];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10000A9C8;
  v54[3] = &unk_1000388F8;
  objc_copyWeak(&v55, &location);
  v49 = [PRXAction actionWithTitle:v48 style:v46 handler:v54];
  v50 = [v3 addAction:v49];

  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardNonOwnerUnlocked
{
  v3 = objc_alloc_init(PRXCardContentViewController);
  v4 = &SBSRequestPasscodeUnlockUI_ptr;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NON_OWNER_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v6];

  [v3 setDismissalType:3];
  objc_initWeak(&location, self);
  v7 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v8 = [v7 phoneNumber];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
    v10 = [v11 email];
  }

  v12 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v13 = [v12 phoneNumber];
  v14 = v13 == 0;

  if (v10)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_REGISTERED_TO" value:&stru_10003A130 table:0];
    v17 = [NSString stringWithFormat:v16, v10];
    [v3 setSubtitle:v17];

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_CONTACT_OWNER" value:&stru_10003A130 table:0];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000ADD0;
    v30[3] = &unk_100038A58;
    objc_copyWeak(&v32, &location);
    v33 = v14;
    v31 = v10;
    v20 = [PRXAction actionWithTitle:v19 style:0 handler:v30];
    v21 = [v3 addAction:v20];

    objc_destroyWeak(&v32);
    v22 = 1;
    v4 = &SBSRequestPasscodeUnlockUI_ptr;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v4[170] mainBundle];
  v24 = [v23 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_LEARN_MORE" value:&stru_10003A130 table:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000AFA8;
  v28[3] = &unk_1000388F8;
  objc_copyWeak(&v29, &location);
  v25 = [PRXAction actionWithTitle:v24 style:v22 handler:v28];
  v26 = [v3 addAction:v25];

  [(FMDMagSafeSetupRemoteUIViewController *)self addImagetoCard:v3];
  objc_destroyWeak(&v29);

  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardSetupError
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_SETUP_ERROR_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_SETUP_ERROR_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v8];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_DISMISS" value:&stru_10003A130 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10000B2E4;
  v19 = &unk_1000388F8;
  objc_copyWeak(&v20, &location);
  v13 = [PRXAction actionWithTitle:v12 style:0 handler:&v16];
  v14 = [v3 addAction:{v13, v16, v17, v18, v19}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardNotImplemeted
{
  v3 = objc_alloc_init(PRXCardContentViewController);
  [v3 setTitle:@"Not Implemented"];
  [v3 setDismissalType:3];
  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10000B46C;
  v10 = &unk_1000388F8;
  objc_copyWeak(&v11, &location);
  v4 = [PRXAction actionWithTitle:@"dismiss" style:0 handler:&v7];
  v5 = [v3 addAction:{v4, v7, v8, v9, v10}];

  [(FMDMagSafeSetupRemoteUIViewController *)self addImagetoCard:v3];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardLockedFindMyNotPaired
{
  v3 = [FMDRemoteAsset alloc];
  v4 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v5 = [v4 accessoryType];
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v7 = [v6 style];
  v33 = [(FMDRemoteAsset *)v3 initWithAccessoryType:v5 style:v7 type:0];

  v8 = [FMDRemoteAsset alloc];
  v9 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v10 = [v9 accessoryType];
  v11 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v12 = [v11 style];
  v32 = [(FMDRemoteAsset *)v8 initWithAccessoryType:v10 style:v12 type:1];

  v13 = [(FMDRemoteAsset *)v33 getStoredAssetLocation];
  v14 = [(FMDRemoteAsset *)v32 getStoredAssetLocation];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = sub_10000EE80();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      *buf = 138412546;
      v37 = v13;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "using video = %@ and adjustmensts = %@", buf, 0x16u);
    }

    v20 = [NSURL fileURLWithPath:v13];
    v21 = [NSURL fileURLWithPath:v15];
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "using default video", buf, 2u);
    }

    v22 = +[NSBundle mainBundle];
    v20 = [v22 URLForResource:@"wallet1-pairing-video.mov" withExtension:0];

    v23 = +[NSBundle mainBundle];
    v21 = [v23 URLForResource:@"wallet1-pairing-video-adjustments.plist" withExtension:0];
  }

  v24 = [[FMDMovieProxCardViewController alloc] initWithMovieURL:v20 adjustmentsURL:v21 movieDimensions:176.0 productHeight:304.0, 176.0];
  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ACCESSORY_TITLE" value:&stru_10003A130 table:0];
  [(FMDMovieProxCardViewController *)v24 setTitle:v26];

  [(FMDMovieProxCardViewController *)v24 setDismissalType:3];
  objc_initWeak(buf, self);
  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_UNLOCK_ACTION" value:&stru_10003A130 table:0];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000B948;
  v34[3] = &unk_1000389B8;
  objc_copyWeak(&v35, buf);
  v34[4] = self;
  v29 = [PRXAction actionWithTitle:v28 style:0 handler:v34];
  v30 = [(FMDMovieProxCardViewController *)v24 addAction:v29];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);

  return v24;
}

- (id)proxCardNonOwnerLockedDevice
{
  v3 = objc_alloc_init(PRXCardContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NON_OWNER_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  [v3 setDismissalType:3];
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v7 = [v6 phoneNumber];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
    v8 = [v9 email];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_REGISTERED_TO" value:&stru_10003A130 table:0];
  v12 = [NSString stringWithFormat:v11, v8];
  [v3 setSubtitle:v12];

LABEL_5:
  objc_initWeak(&location, self);
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NON_OWNER_LOCK_ACTION" value:&stru_10003A130 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BE44;
  v18[3] = &unk_100038AD0;
  v18[4] = self;
  objc_copyWeak(&v19, &location);
  v15 = [PRXAction actionWithTitle:v14 style:0 handler:v18];
  v16 = [v3 addAction:v15];

  [(FMDMagSafeSetupRemoteUIViewController *)self addImagetoCard:v3];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardSpinner
{
  v2 = objc_alloc_init(PRXCardContentViewController);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_WAIT_TITLE" value:&stru_10003A130 table:0];
  [v2 setTitle:v4];

  [v2 setDismissalType:3];
  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 startAnimating];
  v6 = [v2 contentView];
  [v6 addSubview:v5];

  v7 = [v2 contentView];
  v8 = [v7 mainContentGuide];

  v24 = [v5 topAnchor];
  v23 = [v8 topAnchor];
  v22 = [v24 constraintGreaterThanOrEqualToAnchor:v23];
  v25[0] = v22;
  v21 = [v5 bottomAnchor];
  v20 = [v8 bottomAnchor];
  v19 = [v21 constraintLessThanOrEqualToAnchor:v20];
  v25[1] = v19;
  v9 = [v5 centerYAnchor];
  v18 = v2;
  v10 = [v2 view];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  v25[2] = v12;
  v13 = [v5 centerXAnchor];
  v14 = [v8 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v25[3] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  return v18;
}

- (id)proxCardNoAccount
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NO_ACCOUNT_ERROR_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_NO_ACCOUNT_ERROR_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:1];
  [(FMDMagSafeSetupRemoteUIViewController *)self addDismissButtonAction:v3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v8];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_APPLE_ID_SETTINGS" value:&stru_10003A130 table:0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10000C644;
  v19 = &unk_1000388F8;
  objc_copyWeak(&v20, &location);
  v13 = [PRXAction actionWithTitle:v12 style:0 handler:&v16];
  v14 = [v3 addAction:{v13, v16, v17, v18, v19}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v3;
}

- (id)proxCardUpgradeAccountSecurity
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_UPGRADE_ACCOUNT_ERROR_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_UPGRADE_ACCOUNT_ERROR_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:1];
  [(FMDMagSafeSetupRemoteUIViewController *)self addDismissButtonAction:v3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"lock.shield.fill" withConfiguration:v8];
  v21 = v9;
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_APPLE_ID_SETTINGS" value:&stru_10003A130 table:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000CAB4;
  v17[3] = &unk_1000389B8;
  objc_copyWeak(&v19, &location);
  v13 = v3;
  v18 = v13;
  v14 = [PRXAction actionWithTitle:v12 style:0 handler:v17];
  v15 = [v13 addAction:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

- (id)proxCardUpgradeAccountSecurityError
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ACCOUNT_SETUP_ERROR_TITLE" value:&stru_10003A130 table:0];
  [v3 setTitle:v5];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ACCOUNT_SETUP_ERROR_MESSAGE" value:&stru_10003A130 table:0];
  [v3 setSubtitle:v7];

  [v3 setDismissalType:3];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:3];
  v9 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v8];
  v20 = v9;
  v10 = [NSArray arrayWithObjects:&v20 count:1];
  [v3 setImages:v10];

  objc_initWeak(&location, self);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10000CD70;
  v17 = &unk_1000388F8;
  objc_copyWeak(&v18, &location);
  v11 = [PRXAction actionWithTitle:@"Dismiss" style:0 handler:&v14];
  v12 = [v3 addAction:{v11, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v3;
}

- (void)addImagetoCard:(id)a3
{
  v4 = a3;
  v5 = [FMDRemoteAsset alloc];
  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v7 = [v6 accessoryType];
  v8 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v9 = [v8 style];
  v10 = [(FMDRemoteAsset *)v5 initWithAccessoryType:v7 style:v9 type:3];

  v33 = v10;
  v11 = [(FMDRemoteAsset *)v10 getStoredAssetLocation];
  if (!v11 || ([NSData dataWithContentsOfFile:v11], v12 = objc_claimAutoreleasedReturnValue(), [UIImage imageWithData:v12 scale:3.0], v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = [UIImage imageNamed:@"wallet1-pairing-non-owner"];
  }

  v32 = v13;
  v14 = [[UIImageView alloc] initWithImage:v13];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v4 contentView];
  [v15 addSubview:v14];

  v16 = [v4 contentView];

  v17 = [v16 mainContentGuide];

  v31 = [v14 topAnchor];
  v30 = [v17 topAnchor];
  v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
  v34[0] = v29;
  v27 = [v14 bottomAnchor];
  v26 = [v17 bottomAnchor];
  v18 = [v27 constraintLessThanOrEqualToAnchor:v26];
  v34[1] = v18;
  [v14 centerYAnchor];
  v19 = v28 = v11;
  v20 = [v17 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v34[2] = v21;
  v22 = [v14 centerXAnchor];
  v23 = [v17 centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v34[3] = v24;
  v25 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v25];
}

- (void)addDynamicMapToCard:(id)a3
{
  v4 = a3;
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "adding dynamic map", v27, 2u);
  }

  v6 = [[MKMapView alloc] initWithFrame:{0.0, 0.0, 300.0, 200.0}];
  v7 = [FMDRemoteAsset alloc];
  v8 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v9 = [v8 accessoryType];
  v10 = [(FMDMagSafeSetupRemoteUIViewController *)self physicalAccessory];
  v11 = [v10 style];
  v12 = [(FMDRemoteAsset *)v7 initWithAccessoryType:v9 style:v11 type:2];

  v13 = [(FMDRemoteAsset *)v12 getStoredAssetLocation];
  [(FMDMagSafeSetupRemoteUIViewController *)self setMapDeviceImagePath:v13];

  [v6 setDelegate:self];
  [v6 setMapType:0];
  [v6 setUserInteractionEnabled:0];
  [v6 setShowsUserLocation:0];
  v14 = [v6 layer];
  [v14 setCornerCurve:kCACornerCurveContinuous];

  v15 = [v6 layer];
  [v15 setCornerRadius:16.0];

  [(FMDMagSafeSetupRemoteUIViewController *)self setMapView:v6];
  v16 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
  v17 = [[CLLocationManager alloc] initWithEffectiveBundle:v16];
  [(FMDMagSafeSetupRemoteUIViewController *)self setLocationManager:v17];

  v18 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];
  [v18 setDelegate:self];

  v19 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];
  [v19 setDesiredAccuracy:kCLLocationAccuracyBest];

  v20 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];
  [v20 setDistanceFilter:10.0];

  v21 = [(FMDMagSafeSetupRemoteUIViewController *)self locationManager];
  [v21 startUpdatingLocation];

  v22 = [v4 contentView];
  [v22 addSubview:v6];

  v23 = [UIView alloc];
  v24 = [v23 initWithFrame:{0.0, 0.0, 300.0, PRXMainContentMargin + 200.0}];
  [v6 setAutoresizingMask:5];
  [v24 bounds];
  MidX = CGRectGetMidX(v28);
  [v6 bounds];
  [v6 setCenter:{MidX, CGRectGetMidY(v29)}];
  [v24 addSubview:v6];
  v26 = [v4 tableView];

  [v26 setTableHeaderView:v24];
}

- (void)addDismissButtonAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D59C;
  v6[3] = &unk_1000389B8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v5 = [PRXAction actionWithTitle:&stru_10003A130 style:0 handler:v6];
  [v4 setDismissButtonAction:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)isLocked
{
  v2 = MKBGetDeviceLockState();
  v3 = sub_10000EE80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E428(v2, v3);
  }

  return v2 == 1 || v2 == 4;
}

- (void)postNotification:(id)a3
{
  v3 = a3;
  v4 = sub_10000EE80();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupModules posting notification %@", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (BOOL)isFMFAllowed
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ((byte_100045E18 & 1) == 0)
    {
      v7 = 0;
      v3 = MGCopyAnswerWithError();
      v4 = v3;
      if (v3)
      {
        byte_1000458F8 = CFBooleanGetValue(v3) != 0;
        byte_100045E18 = 1;
      }

      else
      {
        v5 = sub_10000EE80();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_10001E4A0(&v7);
        }

        if (!v4)
        {
          goto LABEL_10;
        }
      }

      CFRelease(v4);
    }

LABEL_10:
    v2 = byte_1000458F8;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 firstObject];
    [v7 coordinate];
    v9 = v8;
    v10 = [v5 firstObject];
    [v10 coordinate];
    v31 = 134283777;
    v32 = v9;
    v33 = 2049;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Map locationManager new didUpdateUserLocation %{private}f %{private}f", &v31, 0x16u);
  }

  v12 = [v5 firstObject];
  [v12 coordinate];
  v14 = v13;

  v15 = [v5 firstObject];
  [v15 coordinate];
  v17 = v16;

  v18 = [(FMDMagSafeSetupRemoteUIViewController *)self mapView];
  [v18 setRegion:0 animated:{v14, v17, 0.001, 0.001}];

  v19 = [(FMDMagSafeSetupRemoteUIViewController *)self userLocationAnnotation];

  if (v19)
  {
    v20 = [(FMDMagSafeSetupRemoteUIViewController *)self userLocationAnnotation];
    [v20 setCoordinate:{v14, v17}];
  }

  else
  {
    v21 = [[MKPointAnnotation alloc] initWithCoordinate:0 title:0 subtitle:{v14, v17}];
    [(FMDMagSafeSetupRemoteUIViewController *)self setUserLocationAnnotation:v21];

    v20 = [(FMDMagSafeSetupRemoteUIViewController *)self mapView];
    v22 = [(FMDMagSafeSetupRemoteUIViewController *)self userLocationAnnotation];
    [v20 addAnnotation:v22];
  }

  v23 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceAnnotation];

  v24 = [(FMDMagSafeSetupRemoteUIViewController *)self mapView];
  v25 = v24;
  if (v23)
  {
    [v24 setRegion:1 animated:{v14, v17, 0.001, 0.001}];

    v26 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceAnnotation];
    [v26 setCoordinate:{v14, v17}];
  }

  else
  {
    [v24 setRegion:0 animated:{v14, v17, 0.001, 0.001}];

    v27 = [[MKPointAnnotation alloc] initWithCoordinate:0 title:0 subtitle:{v14, v17}];
    [(FMDMagSafeSetupRemoteUIViewController *)self setDeviceAnnotation:v27];

    v28 = [(FMDMagSafeSetupRemoteUIViewController *)self mapView];
    v29 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceAnnotation];
    [v28 addAnnotation:v29];

    v26 = [(FMDMagSafeSetupRemoteUIViewController *)self mapView];
    v30 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceAnnotation];
    [v26 selectAnnotation:v30 animated:1];
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Map viewForAnnotation %@", &v22, 0xCu);
  }

  v7 = [(FMDMagSafeSetupRemoteUIViewController *)self deviceAnnotation];

  if (v7 == v5)
  {
    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#Map creating deviceAnnotation view %@", &v22, 0xCu);
    }

    v11 = [FMDeviceAnnotationView alloc];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v9 = [(FMDeviceAnnotationView *)v11 initWithAnnotation:v5 reuseIdentifier:v13];

    v14 = [(FMDMagSafeSetupRemoteUIViewController *)self mapDeviceImagePath];

    if (!v14 || ([(FMDMagSafeSetupRemoteUIViewController *)self mapDeviceImagePath], v15 = objc_claimAutoreleasedReturnValue(), [UIImage imageWithContentsOfFile:v15], v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
    {
      v16 = [UIImage imageNamed:@"wallet1-pairing-map"];
    }

    [(FMDeviceAnnotationView *)v9 setDeviceImage:v16];
  }

  else
  {
    v8 = [(FMDMagSafeSetupRemoteUIViewController *)self userLocationAnnotation];

    if (v8 == v5)
    {
      v17 = sub_100002400();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#Map creating userLocationAnnotation view %@", &v22, 0xCu);
      }

      v18 = [MKUserLocationView alloc];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v9 = [v18 initWithAnnotation:v5 reuseIdentifier:v20];

      [(FMDeviceAnnotationView *)v9 setCanShowCallout:0];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isFindMyAppInstalled
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationIsInstalled:@"com.apple.findmy"];

  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Find My installed? %i", v10, 8u);
  }

  v6 = [(FMDMagSafeSetupRemoteUIViewController *)self appInstallCoordinator];

  v7 = (v6 == 0) & v4;
  if (v6 && ((v4 ^ 1) & 1) == 0)
  {
    v8 = [(FMDMagSafeSetupRemoteUIViewController *)self appInstallCoordinator];
    v7 = [v8 isComplete];
  }

  return v7;
}

- (void)triggerFindMyAppInstallation
{
  v3 = [[ASDSystemAppMetadata alloc] initWithBundleID:@"com.apple.findmy"];
  [v3 setUserInitiated:1];
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#Starting installation of Find My", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E354;
  v5[3] = &unk_100038B40;
  objc_copyWeak(&v6, buf);
  [ASDInstallApps installApp:v3 withCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (unint64_t)accountState
{
  v2 = objc_alloc_init(ACAccountStore);
  v3 = [v2 aa_primaryAppleAccount];
  if (v3)
  {
    v4 = +[AKAccountManager sharedInstance];
    v5 = [v3 accountPropertyForKey:@"altDSID"];
    if (v5)
    {
      v6 = [v4 authKitAccountWithAltDSID:v5];
      if (v6)
      {
        v7 = [v4 additionalInfoForAccount:v6];
        v8 = sub_100002400();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "got additional Info = %@", &v11, 0xCu);
        }

        if ([v4 securityLevelForAccount:v6] == 4)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v7 = sub_100002400();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10001E634();
        }

        v9 = 3;
      }
    }

    else
    {
      v6 = sub_100002400();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10001E670();
      }

      v9 = 3;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)upgradeAccountButtonPressedOn:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"MAGSAFE_PAIRING_ACCPUNT_UPGRADE_SETUP_LATER_ALERT_TITLE" value:&stru_10003A130 table:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MAGSAFE_PAIRING_ACCPUNT_UPGRADE_SETUP_LATER_ALERT_MESSAGE" value:&stru_10003A130 table:0];
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"MAGSAFE_PAIRING_ACCPUNT_UPGRADE_SETUP_LATER_ALERT_ACTION" value:&stru_10003A130 table:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E804;
  v13[3] = &unk_100038B68;
  v13[4] = self;
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:v13];

  [v9 addAction:v12];
  [v4 presentViewController:v9 animated:1 completion:0];
}

- (void)launchSettingsAppUpgradeFlow
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=upgradeSecurityLevel"];
  v5 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v6 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 openSensitiveURL:v3 withOptions:v4];
}

@end
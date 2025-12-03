@interface RecoverDeviceUIExtensionRemoteViewController
- (BOOL)isCompanionSameDevice;
- (BOOL)matchesRecentlyRecoveredDevice;
- (id)backToMenuButton;
- (id)deviceKey;
- (id)getOverallResultActionForError:(id)error resultType:(int)type;
- (id)getOverallResultSubTitleStringForError:(id)error resultType:(int)type;
- (id)getOverallResultTitleStringForError:(id)error resultType:(int)type;
- (id)getOverallResultUIImageForError:(id)error resultType:(int)type;
- (id)learnMoreButtonAction;
- (id)menuEACSButton;
- (id)menuRebootButton;
- (id)menuSystemRecoveryButton;
- (id)notNowButtonAction;
- (id)overallResultOKButtonAction;
- (id)overallResultSUButtonAction;
- (id)progressDismissButtonAction;
- (id)recoverButtonAction;
- (id)uiImage;
- (id)uiImageEACS;
- (void)_setupKitEventHandler:(id)handler;
- (void)cleanDocumentation;
- (void)cleanupOldRecoveredDevices;
- (void)collectDocumentation:(id)documentation alternative:(BOOL)alternative completion:(id)completion;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)doneWaitingForServerResponse;
- (void)handleOSRMessage:(id)message;
- (void)menuOptionChosen:(int)chosen;
- (void)persistRecoveringDevice;
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)recoverButtonPressed;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)setInitialCardForResume;
- (void)setInitialCardForSetup;
- (void)setupStop;
- (void)showEACSApprovalCard;
- (void)showEACSCard;
- (void)showLearnMoreCard;
- (void)showMenuCard;
- (void)showOverallResultCard:(id)card resultType:(int)type;
- (void)showProgressCard:(id)card;
- (void)showRecoveryCard;
- (void)showSUCard:(id)card build:(id)build icon:(id)icon isAlternate:(BOOL)alternate;
- (void)showSUSelectionCard:(id)card;
- (void)showScanningCard;
- (void)updateCodeCardToSettingUpState;
- (void)updateProgressCardOnMainQueueWithInfo:(id)info;
- (void)viewDidLoad;
- (void)waitForServerResponse;
@end

@implementation RecoverDeviceUIExtensionRemoteViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = [[SUCoreLog alloc] initWithCategory:@"RecoverDeviceUI"];
  [(RecoverDeviceUIExtensionRemoteViewController *)self setLogger:v8];

  if ([(RecoverDeviceUIExtensionRemoteViewController *)self runningInStoreDemoMode]== 1)
  {
    logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Skipping tap-to-recover prompt for device running in StoreDemoMode", buf, 2u);
    }

LABEL_85:

    goto LABEL_86;
  }

  logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog2 = [logger2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Device running in regular mode. Proceeding with tap-to-recover prompt", buf, 2u);
  }

  [(RecoverDeviceUIExtensionRemoteViewController *)self setSetupCompleted:0];
  [(RecoverDeviceUIExtensionRemoteViewController *)self setOverallResultCard:0];
  [(RecoverDeviceUIExtensionRemoteViewController *)self setAuthenticationAttempt:0];
  v13 = objc_alloc_init(SKDevice);
  [(RecoverDeviceUIExtensionRemoteViewController *)self setSetupkitDevice:v13];

  v14 = objc_alloc_init(SKSetupClient);
  [(RecoverDeviceUIExtensionRemoteViewController *)self setSetupkitClient:v14];

  setupkitClient = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
  [setupkitClient setSetupType:1];

  setupkitClient2 = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
  [setupkitClient2 setSkipWifi:0];

  setupkitClient3 = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
  [setupkitClient3 setPasswordType:2];

  setupkitClient4 = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
  [setupkitClient4 setConditionalPersistent:1];

  v113[0] = @"NeRDVersionKey";
  v19 = [NSNumber numberWithInteger:2];
  v114[0] = v19;
  v114[1] = &__kCFBooleanTrue;
  v113[1] = @"NeRDSupportsMessaging";
  v113[2] = @"NeRDSupportsOOBMessaging";
  v113[3] = @"NeRDSupportsSlowRoll";
  v114[2] = &__kCFBooleanTrue;
  v114[3] = &__kCFBooleanTrue;
  v20 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
  setupkitClient5 = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
  [setupkitClient5 setClientConfig:v20];

  v22 = dispatch_queue_create("com.apple.RecoverDeviceUI.mainOperationsQueue", 0);
  recoverDeviceOperationsQueue = self->_recoverDeviceOperationsQueue;
  self->_recoverDeviceOperationsQueue = v22;

  logger3 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog3 = [logger3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "ConfigureWithContext invoked", buf, 2u);
  }

  if (!contextCopy || ([contextCopy userInfo], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
  {
    logger4 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog4 = [logger4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "Invalid userinfo object passed to RecoverDeviceUI", buf, 2u);
    }
  }

  else
  {
    logger5 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog5 = [logger5 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog5, OS_LOG_TYPE_DEFAULT, "Valid context/info object", buf, 2u);
    }

    userInfo = [contextCopy userInfo];
    oslog4 = [userInfo objectForKeyedSubscript:@"device"];

    if (oslog4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      oslog7 = [CBDevice alloc];
      if (objc_opt_respondsToSelector())
      {
        oslog6 = [oslog7 initWithDictionary:oslog4 error:0];
        [(RecoverDeviceUIExtensionRemoteViewController *)self setDeviceObj:oslog6];
      }

      else
      {
        logger6 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog6 = [logger6 oslog];

        if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog6, OS_LOG_TYPE_DEFAULT, "CBDevice implementation missing appropriate initialization function", buf, 2u);
        }
      }
    }

    else
    {
      logger7 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog7 = [logger7 oslog];

      if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog7, OS_LOG_TYPE_DEFAULT, "Invalid dictionary in userinfo object passed to RecoverDeviceUI", buf, 2u);
      }
    }
  }

  deviceObj = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  v38 = deviceObj == 0;

  if (v38)
  {
    logger8 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog = [logger8 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Failed to initialize deviceObj for RecoverDeviceUI", buf, 2u);
    }

    goto LABEL_85;
  }

  logger9 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog8 = [logger9 oslog];

  if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
  {
    deviceObj2 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
    nearbyActionType = [deviceObj2 nearbyActionType];
    deviceObj3 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
    nearbyActionFlags = [deviceObj3 nearbyActionFlags];
    *buf = 67109376;
    *v111 = nearbyActionType;
    *&v111[4] = 1024;
    *&v111[6] = nearbyActionFlags;
    _os_log_impl(&_mh_execute_header, oslog8, OS_LOG_TYPE_DEFAULT, "nearbyActionType:%d nearbyActionFlags:%d", buf, 0xEu);
  }

  if (os_variant_has_internal_content())
  {
    v45 = +[NSUserDefaults standardUserDefaults];
    v46 = [v45 stringForKey:@"ForceAuthTag"];

    if (v46)
    {
      deviceObj4 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
      nearbyActionFlags2 = [deviceObj4 nearbyActionFlags];

      if ((nearbyActionFlags2 & 0x80) == 0)
      {
        logger10 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog9 = [logger10 oslog];

        if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog9, OS_LOG_TYPE_DEFAULT, "ForceAuthTag default is set, but server don't have auth tag, ignoring", buf, 2u);
        }

LABEL_70:

        goto LABEL_86;
      }

      deviceObj5 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
      nearbyAuthTag = [deviceObj5 nearbyAuthTag];
      v54 = [v46 dataUsingEncoding:4];
      v55 = [nearbyAuthTag isEqual:v54];

      if (!v55)
      {
        logger11 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog9 = [logger11 oslog];

        if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
        {
          v86 = [v46 dataUsingEncoding:4];
          deviceObj6 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
          nearbyAuthTag2 = [deviceObj6 nearbyAuthTag];
          *buf = 138543618;
          *v111 = v86;
          *&v111[8] = 2114;
          v112 = nearbyAuthTag2;
          _os_log_impl(&_mh_execute_header, oslog9, OS_LOG_TYPE_DEFAULT, "ForceAuthTag default is set to %{public}@, but server have different auth tag %{public}@, ignoring", buf, 0x16u);
        }

        goto LABEL_70;
      }

      logger12 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog10 = [logger12 oslog];

      if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog10, OS_LOG_TYPE_DEFAULT, "ForceAuthTag default is set, and server have matching auth tag, continue", buf, 2u);
      }
    }
  }

  deviceObj7 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  v59 = [deviceObj7 nearbyActionType] == 85;

  if (v59)
  {
    logger13 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog11 = [logger13 oslog];

    if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog11, OS_LOG_TYPE_DEFAULT, "extended mode detected", buf, 2u);
    }

    [(RecoverDeviceUIExtensionRemoteViewController *)self setExtendedMode:1];
  }

  deviceObj8 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  if ([deviceObj8 nearbyActionDeviceClass] == 1)
  {
  }

  else
  {
    deviceObj9 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
    v64 = [deviceObj9 nearbyActionDeviceClass] == 3;

    if (!v64)
    {
      goto LABEL_52;
    }
  }

  deviceObj10 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  v66 = [deviceObj10 rssi] < -45;

  if (v66)
  {
    logger14 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog12 = [logger14 oslog];

    if (os_log_type_enabled(oslog12, OS_LOG_TYPE_DEFAULT))
    {
      deviceObj11 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
      rssi = [deviceObj11 rssi];
      *buf = 67109120;
      *v111 = rssi;
      _os_log_impl(&_mh_execute_header, oslog12, OS_LOG_TYPE_DEFAULT, "showing prox card, but rssi is %d", buf, 8u);
    }
  }

LABEL_52:
  deviceObj12 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  v72 = [deviceObj12 nearbyActionDeviceClass] == 6;

  if (v72)
  {
    logger15 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog13 = [logger15 oslog];

    if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog13, OS_LOG_TYPE_DEFAULT, "Device needing recovery is an Apple Watch", buf, 2u);
    }

    v75 = @"DEVICE_TYPE_WATCH";
  }

  else
  {
    deviceObj13 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
    v77 = [deviceObj13 nearbyActionDeviceClass] == 11;

    if (v77)
    {
      logger16 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog13 = [logger16 oslog];

      if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog13, OS_LOG_TYPE_DEFAULT, "Device needing recovery was found", buf, 2u);
      }

      v75 = @"DEVICE_TYPE_VISION";
    }

    else
    {
      deviceObj14 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
      v80 = [deviceObj14 nearbyActionDeviceClass] == 4;

      if (v80)
      {
        logger17 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog13 = [logger17 oslog];

        if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog13, OS_LOG_TYPE_DEFAULT, "Device needing recovery is an Apple TV", buf, 2u);
        }

        v75 = @"DEVICE_TYPE_ATV";
      }

      else
      {
        deviceObj15 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
        v83 = [deviceObj15 nearbyActionDeviceClass] == 1;

        if (v83)
        {
          logger18 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
          oslog13 = [logger18 oslog];

          if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, oslog13, OS_LOG_TYPE_DEFAULT, "Device needing recovery is an iPhone", buf, 2u);
          }

          v75 = @"DEVICE_TYPE_IPHONE";
        }

        else
        {
          deviceObj16 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
          v90 = [deviceObj16 nearbyActionDeviceClass] == 3;

          if (!v90)
          {
            logger19 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
            oslog14 = [logger19 oslog];

            if (os_log_type_enabled(oslog14, OS_LOG_TYPE_DEFAULT))
            {
              deviceObj17 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
              nearbyActionDeviceClass = [deviceObj17 nearbyActionDeviceClass];
              *buf = 67109120;
              *v111 = nearbyActionDeviceClass;
              _os_log_impl(&_mh_execute_header, oslog14, OS_LOG_TYPE_DEFAULT, "Device needing recovery is unknown/unsupported: %d", buf, 8u);
            }

            goto LABEL_86;
          }

          logger20 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
          oslog13 = [logger20 oslog];

          if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, oslog13, OS_LOG_TYPE_DEFAULT, "Device needing recovery is an iPad", buf, 2u);
          }

          v75 = @"DEVICE_TYPE_IPAD";
        }
      }
    }
  }

  [(RecoverDeviceUIExtensionRemoteViewController *)self setKLocalizedDeviceType:v75];
  deviceObj18 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  v93 = ([deviceObj18 nearbyActionFlags] & 0x40) == 0;

  if (v93)
  {
    logger21 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog15 = [logger21 oslog];

    if (os_log_type_enabled(oslog15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog15, OS_LOG_TYPE_DEFAULT, "Device already recovering, skipping wifi setup step", buf, 2u);
    }

    if (![(RecoverDeviceUIExtensionRemoteViewController *)self matchesRecentlyRecoveredDevice])
    {
      logger22 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog = [logger22 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Device isn't known to us. Bailing", buf, 2u);
      }

      goto LABEL_85;
    }

    setupkitClient6 = [(RecoverDeviceUIExtensionRemoteViewController *)self setupkitClient];
    [setupkitClient6 setSkipWifi:1];

    logger23 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog16 = [logger23 oslog];

    if (os_log_type_enabled(oslog16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog16, OS_LOG_TYPE_DEFAULT, "Device is known to us", buf, 2u);
    }
  }

  v99 = objc_alloc_init(SFClient);
  [(RecoverDeviceUIExtensionRemoteViewController *)self setSfClient:v99];

  sfClient = [(RecoverDeviceUIExtensionRemoteViewController *)self sfClient];
  v106[0] = _NSConcreteStackBlock;
  v106[1] = 3221225472;
  v106[2] = __80__RecoverDeviceUIExtensionRemoteViewController_configureWithContext_completion___block_invoke;
  v106[3] = &unk_100020470;
  v106[4] = self;
  objc_copyWeak(&v108, &location);
  v107 = completionCopy;
  [sfClient startProxCardTransactionWithOptions:0 completion:v106];

  objc_destroyWeak(&v108);
LABEL_86:
  objc_destroyWeak(&location);
}

void __80__RecoverDeviceUIExtensionRemoteViewController_configureWithContext_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sharing client allow us to proceed", buf, 2u);
    }

    v7 = [*(a1 + 32) deviceObj];
    v8 = [v7 identifier];
    v9 = [*(a1 + 32) setupkitDevice];
    [v9 setIdentifier:v8];

    v10 = [*(a1 + 32) setupkitDevice];
    [v10 setBlePSM:130];

    v11 = [*(a1 + 32) setupkitDevice];
    v12 = [*(a1 + 32) setupkitClient];
    [v12 setPeerDevice:v11];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __80__RecoverDeviceUIExtensionRemoteViewController_configureWithContext_completion___block_invoke_457;
    v20[3] = &unk_100020448;
    objc_copyWeak(&v21, (a1 + 48));
    v13 = [*(a1 + 32) setupkitClient];
    [v13 setEventHandler:v20];

    v14 = [*(a1 + 32) logger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) deviceObj];
      v17 = [v16 identifier];
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "RecoverDeviceUI successfully initialized. Identifier is %{public}@", buf, 0xCu);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))();
    }

    objc_destroyWeak(&v21);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sharing client does not allow us to proceed", buf, 2u);
    }

    v19 = [*(a1 + 32) sfClient];
    [v19 invalidate];

    [*(a1 + 32) setSfClient:0];
  }
}

void __80__RecoverDeviceUIExtensionRemoteViewController_configureWithContext_completion___block_invoke_457(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setupKitEventHandler:v3];
}

- (void)_setupKitEventHandler:(id)handler
{
  handlerCopy = handler;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__RecoverDeviceUIExtensionRemoteViewController__setupKitEventHandler___block_invoke;
  v7[3] = &unk_100020498;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(recoverDeviceOperationsQueue, v7);
}

void __70__RecoverDeviceUIExtensionRemoteViewController__setupKitEventHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) eventType];
    v5 = [*(a1 + 40) eventType];
    if (v5 > 119)
    {
      if (v5 <= 200)
      {
        if (v5 > 139)
        {
          if (v5 == 140)
          {
            v6 = @"AuthenticationCompleted";
            goto LABEL_44;
          }

          if (v5 == 200)
          {
            v6 = @"CaptiveNetworkPresent";
            goto LABEL_44;
          }
        }

        else
        {
          if (v5 == 120)
          {
            v6 = @"AuthenticationRequest";
            goto LABEL_44;
          }

          if (v5 == 130)
          {
            v6 = @"AuthenticationResponse";
            goto LABEL_44;
          }
        }
      }

      else
      {
        if (v5 <= 202)
        {
          if (v5 == 201)
          {
            v6 = @"CaptiveNetworkNavigation";
          }

          else
          {
            v6 = @"CaptiveNetworkAuthenticated";
          }

          goto LABEL_44;
        }

        switch(v5)
        {
          case 203:
            v6 = @"CaptiveNetworkIPAssignFailed";
            goto LABEL_44;
          case 204:
            v6 = @"CaptiveNetworkFailed";
            goto LABEL_44;
          case 300:
            v6 = @"BasicConfigUpdated";
            goto LABEL_44;
        }
      }
    }

    else if (v5 <= 39)
    {
      if (v5 > 19)
      {
        if (v5 == 20)
        {
          v6 = @"Completed";
          goto LABEL_44;
        }

        if (v5 == 30)
        {
          v6 = @"Invalidated";
          goto LABEL_44;
        }
      }

      else
      {
        if (!v5)
        {
          v6 = @"Unknown";
          goto LABEL_44;
        }

        if (v5 == 10)
        {
          v6 = @"Started";
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (v5 <= 41)
      {
        if (v5 == 40)
        {
          v6 = @"ConnectionStarted";
        }

        else
        {
          v6 = @"ConnectionEnded";
        }

        goto LABEL_44;
      }

      switch(v5)
      {
        case '*':
          v6 = @"Error";
          goto LABEL_44;
        case 'd':
          v6 = @"AuthenticationTypeChanged";
          goto LABEL_44;
        case 'n':
          v6 = @"AuthenticationPresent";
LABEL_44:
          *buf = 67109378;
          *v113 = v4;
          *&v113[4] = 2114;
          *&v113[6] = v6;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SetupKitEventHandler invoked for event : %d (%{public}@)", buf, 0x12u);
          goto LABEL_45;
      }
    }

    v6 = @"?";
    goto LABEL_44;
  }

LABEL_45:

  [*(a1 + 32) doneWaitingForServerResponse];
  v7 = [*(a1 + 40) error];

  if (v7)
  {
    v8 = [*(a1 + 32) logger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) error];
      *buf = 138543362;
      *v113 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got error from SetupKit: %{public}@", buf, 0xCu);
    }

    if ([*(a1 + 32) setupCompleted])
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) error];
    [v12 showOverallResultCard:v13 resultType:v11];
LABEL_52:

    return;
  }

  v14 = [*(a1 + 40) eventType];
  if (v14 > 139)
  {
    if (v14 == 140)
    {
      v43 = [*(a1 + 32) logger];
      v44 = [v43 oslog];

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "AuthCompletionHandler called with success", buf, 2u);
      }

      [*(a1 + 32) updateCodeCardToSettingUpState];
      return;
    }

    if (v14 != 300)
    {
      goto LABEL_72;
    }

    v22 = *(a1 + 40);
    v23 = [*(a1 + 32) logger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v22 basicConfig];
      *buf = 138543362;
      *v113 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Remote device sent config: %{public}@", buf, 0xCu);
    }

    v26 = [v22 basicConfig];
    [*(a1 + 32) setServerConfig:v26];

    v27 = [v22 basicConfig];
    v28 = [v27 objectForKeyedSubscript:@"NeRDVersionKey"];
    v29 = [v28 integerValue];

    if (v29 >= 3)
    {
      v30 = [*(a1 + 32) logger];
      v31 = [v30 oslog];

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_70:

        v35 = 10003;
LABEL_71:
        v36 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:v35 userInfo:0];
        [*(a1 + 32) showOverallResultCard:v36 resultType:0];
        goto LABEL_144;
      }

      *buf = 134218240;
      *v113 = v29;
      *&v113[8] = 2048;
      *&v113[10] = 2;
      v32 = "Remote device got higher version: %ld, our version is: %ld";
      v33 = v31;
      v34 = 22;
LABEL_69:
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
      goto LABEL_70;
    }

    v52 = [v22 basicConfig];
    v53 = [v52 objectForKeyedSubscript:@"NeRDIntent"];
    if ([v53 isEqual:@"NeRDIntentStatus"])
    {
      v54 = [*(a1 + 32) setupkitClient];
      v55 = [v54 skipWifi];

      if (v55)
      {
        v56 = [*(a1 + 32) logger];
        v57 = [v56 oslog];

        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Remote device wants to send status, showing progress", buf, 2u);
        }

        [*(a1 + 32) setSetupCompleted:1];
        v58 = [*(a1 + 32) showingResultCard];
        v59 = *(a1 + 32);
        if ((v58 & 1) == 0)
        {
          v96 = [v22 basicConfig];
          [v59 showProgressCard:v96];

          v97 = *(a1 + 32);
          v110 = @"NeRDOOBCommand";
          v111 = @"NeRDOOBCommandStatus";
          v36 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          [v97 sendMessage:v36 completionHandler:0];
          goto LABEL_144;
        }

        v60 = [*(a1 + 32) logger];
        v36 = [v60 oslog];

        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
LABEL_144:

          goto LABEL_181;
        }

        *buf = 0;
        v61 = "Already showing result card, nothing to do";
        goto LABEL_128;
      }
    }

    else
    {
    }

    v82 = [v22 basicConfig];
    v83 = [v82 objectForKeyedSubscript:@"NeRDIntent"];
    v84 = [v83 isEqual:@"NeRDIntentRecovery"];

    if (v84)
    {
      v85 = [*(a1 + 32) logger];
      v36 = [v85 oslog];

      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_144;
      }

      *buf = 0;
      v61 = "Remote device wants to do recovery";
    }

    else
    {
      v88 = [v22 basicConfig];
      v89 = [v88 objectForKeyedSubscript:@"NeRDIntent"];
      v90 = [v89 isEqual:@"NeRDIntentRecoveryMenu"];

      if (v90)
      {
        v91 = [*(a1 + 32) logger];
        v36 = [v91 oslog];

        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_144;
        }

        *buf = 0;
        v61 = "Remote device wants to show recovery menu";
      }

      else
      {
        v92 = [v22 basicConfig];
        v93 = [v92 objectForKeyedSubscript:@"NeRDIntent"];

        v94 = *(a1 + 32);
        if (v93)
        {
          v95 = [v94 logger];
          v31 = [v95 oslog];

          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 0;
          v32 = "Remote device got unknown intent, failing";
          v33 = v31;
          v34 = 2;
          goto LABEL_69;
        }

        v105 = [v94 extendedMode];
        v106 = [*(a1 + 32) logger];
        v36 = [v106 oslog];

        v107 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v105)
        {
          if (v107)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Remote device got no intent and in extended mode, failing", buf, 2u);
          }

          v35 = 10005;
          goto LABEL_71;
        }

        if (!v107)
        {
          goto LABEL_144;
        }

        *buf = 0;
        v61 = "Remote device got no intent and in regular mode, assuming recovery intent";
      }
    }

LABEL_128:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v61, buf, 2u);
    goto LABEL_144;
  }

  if (v14 != 20)
  {
    if (v14 == 120)
    {
      v15 = [*(a1 + 32) logger];
      v16 = [v15 oslog];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling request to show authentication prompt", buf, 2u);
      }

      v17 = [*(a1 + 32) setupkitClient];
      v18 = [v17 skipWifi];

      if (v18)
      {
        v19 = [*(a1 + 32) logger];
        v20 = [v19 oslog];

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found recovering device that while similar to a device we recovered, wasn't recovered by us. Can't show progress", buf, 2u);
        }

        v21 = 10001;
      }

      else
      {
        v45 = *(a1 + 40);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v47 = [*(a1 + 32) logger];
        v48 = [v47 oslog];

        v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
        if (isKindOfClass)
        {
          if (v49)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Attempting to display auth screen", buf, 2u);
          }

          v51 = a1 + 32;
          v50 = *(a1 + 32);
          v22 = *(v51 + 8);
          [v50 showCollectCodeCard:-[NSObject passwordType](v22 inFlags:"passwordType") inThrottleSeconds:{-[NSObject pairingFlags](v22, "pairingFlags"), -[NSObject throttleSeconds](v22, "throttleSeconds")}];
          goto LABEL_181;
        }

        if (v49)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "SKEventTypeAuthenticationRequest does not match expected class.", buf, 2u);
        }

        v21 = 10002;
      }

      v22 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:v21 userInfo:0];
      [*(a1 + 32) showOverallResultCard:v22 resultType:0];
LABEL_181:

      return;
    }

LABEL_72:
    v37 = [*(a1 + 32) logger];
    v22 = [v37 oslog];

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_181;
    }

    v38 = [*(a1 + 40) eventType];
    v39 = [*(a1 + 40) eventType];
    if (v39 > 119)
    {
      if (v39 <= 200)
      {
        if (v39 > 139)
        {
          if (v39 == 140)
          {
            v40 = @"AuthenticationCompleted";
            goto LABEL_179;
          }

          if (v39 == 200)
          {
            v40 = @"CaptiveNetworkPresent";
            goto LABEL_179;
          }
        }

        else
        {
          if (v39 == 120)
          {
            v40 = @"AuthenticationRequest";
            goto LABEL_179;
          }

          if (v39 == 130)
          {
            v40 = @"AuthenticationResponse";
            goto LABEL_179;
          }
        }
      }

      else
      {
        if (v39 <= 202)
        {
          if (v39 == 201)
          {
            v40 = @"CaptiveNetworkNavigation";
          }

          else
          {
            v40 = @"CaptiveNetworkAuthenticated";
          }

          goto LABEL_179;
        }

        switch(v39)
        {
          case 203:
            v40 = @"CaptiveNetworkIPAssignFailed";
            goto LABEL_179;
          case 204:
            v40 = @"CaptiveNetworkFailed";
            goto LABEL_179;
          case 300:
            v40 = @"BasicConfigUpdated";
            goto LABEL_179;
        }
      }
    }

    else if (v39 <= 39)
    {
      if (v39 > 19)
      {
        if (v39 == 20)
        {
          v40 = @"Completed";
          goto LABEL_179;
        }

        if (v39 == 30)
        {
          v40 = @"Invalidated";
          goto LABEL_179;
        }
      }

      else
      {
        if (!v39)
        {
          v40 = @"Unknown";
          goto LABEL_179;
        }

        if (v39 == 10)
        {
          v40 = @"Started";
          goto LABEL_179;
        }
      }
    }

    else
    {
      if (v39 <= 41)
      {
        if (v39 == 40)
        {
          v40 = @"ConnectionStarted";
        }

        else
        {
          v40 = @"ConnectionEnded";
        }

        goto LABEL_179;
      }

      switch(v39)
      {
        case '*':
          v40 = @"Error";
          goto LABEL_179;
        case 'd':
          v40 = @"AuthenticationTypeChanged";
          goto LABEL_179;
        case 'n':
          v40 = @"AuthenticationPresent";
LABEL_179:
          *buf = 67109378;
          *v113 = v38;
          *&v113[4] = 2114;
          *&v113[6] = v40;
          v72 = "Unhandled event %d (%{public}@) received by setupKitEventHandler";
          v73 = v22;
          v74 = 18;
          goto LABEL_180;
      }
    }

    v40 = @"?";
    goto LABEL_179;
  }

  v41 = [*(a1 + 32) serverConfig];
  v42 = [v41 objectForKeyedSubscript:@"NeRDIntent"];
  if ([v42 isEqual:@"NeRDIntentStatus"])
  {
  }

  else
  {
    v62 = [*(a1 + 32) serverConfig];
    v63 = [v62 objectForKeyedSubscript:@"NeRDIntent"];
    v64 = [v63 isEqual:@"NeRDIntentRecovery"];

    if (!v64)
    {
      goto LABEL_98;
    }
  }

  [*(a1 + 32) persistRecoveringDevice];
LABEL_98:
  v65 = [*(a1 + 32) serverConfig];
  v66 = [v65 objectForKeyedSubscript:@"NeRDIntent"];
  v67 = [v66 isEqual:@"NeRDIntentRecoveryMenu"];

  v68 = *(a1 + 32);
  if (v67)
  {
    if ([v68 setupCompleted])
    {
      return;
    }

    [*(a1 + 32) setSetupCompleted:1];
    v69 = [*(a1 + 32) showingResultCard];
    v70 = [*(a1 + 32) logger];
    v22 = [v70 oslog];

    v71 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v69)
    {
      if (!v71)
      {
        goto LABEL_181;
      }

      *buf = 0;
      v72 = "Already showing result card, nothing to do";
      v73 = v22;
      v74 = 2;
LABEL_180:
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v72, buf, v74);
      goto LABEL_181;
    }

    if (v71)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Remote device setup complete, showing menu", buf, 2u);
    }

    [*(a1 + 32) showMenuCard];
  }

  else
  {
    v75 = [v68 serverConfig];
    v76 = [v75 objectForKeyedSubscript:@"NeRDSupportsMessaging"];
    v77 = [v76 BOOLValue];

    v78 = *(a1 + 32);
    if (v77)
    {
      if ([v78 setupCompleted])
      {
        return;
      }

      [*(a1 + 32) setSetupCompleted:1];
      v79 = [*(a1 + 32) showingResultCard];
      v80 = *(a1 + 32);
      if (v79)
      {
        v81 = [v80 logger];
        v13 = [v81 oslog];

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already showing result card, nothing to do", buf, 2u);
        }

        goto LABEL_52;
      }

      v98 = [v80 serverConfig];
      v99 = [v98 objectForKeyedSubscript:@"NeRDSupportsSlowRoll"];
      if ([v99 BOOLValue])
      {
        v100 = [*(a1 + 32) serverConfig];
        v101 = [v100 objectForKeyedSubscript:@"NeRDIntent"];
        v102 = [v101 isEqual:@"NeRDIntentRecovery"];

        if ((v102 & 1) == 0)
        {
          v103 = [*(a1 + 32) logger];
          v104 = [v103 oslog];

          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Remote device setup complete, waiting for scan results", buf, 2u);
          }

          [*(a1 + 32) showScanningCard];
          return;
        }
      }

      else
      {
      }

      v108 = [*(a1 + 32) logger];
      v109 = [v108 oslog];

      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Remote device setup complete, showing progress", buf, 2u);
      }

      [*(a1 + 32) showProgressCard:0];
    }

    else
    {
      v86 = [v78 logger];
      v87 = [v86 oslog];

      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Remote device setup complete, messaging not supported, finish", buf, 2u);
      }

      [*(a1 + 32) showOverallResultCard:0 resultType:1];
    }
  }
}

- (id)progressDismissButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"OK" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __75__RecoverDeviceUIExtensionRemoteViewController_progressDismissButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:0 handler:v7];

  return v5;
}

void __75__RecoverDeviceUIExtensionRemoteViewController_progressDismissButtonAction__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__RecoverDeviceUIExtensionRemoteViewController_progressDismissButtonAction__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id __75__RecoverDeviceUIExtensionRemoteViewController_progressDismissButtonAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing card after setup completion", v6, 2u);
  }

  v4 = [*(a1 + 32) proxCardNavController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  return [*(a1 + 32) setShowingProgress:0];
}

- (id)deviceKey
{
  deviceObj = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
  stableIdentifier = [deviceObj stableIdentifier];

  if (stableIdentifier)
  {
    deviceObj2 = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceObj];
    stableIdentifier2 = [deviceObj2 stableIdentifier];
  }

  else
  {
    stableIdentifier2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  }

  return stableIdentifier2;
}

- (void)cleanupOldRecoveredDevices
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"com.apple.RecoverDeviceUI.RecoveringDeviceKey"];

  v5 = +[NSMutableDictionary dictionary];
  v23 = +[NSDate date];
  if (v4)
  {
    v21 = v4;
    v22 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v21}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v23 timeIntervalSinceDate:v12], v13 < 28800.0))
          {
            logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
            oslog = [logger oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v29 = v11;
              v30 = 2114;
              v31 = v12;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Keeping key for device %{public}@, which was added on: %{public}@", buf, 0x16u);
            }

            [v22 setObject:v12 forKeyedSubscript:v11];
          }

          else
          {
            logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
            oslog2 = [logger2 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v29 = v11;
              v30 = 2114;
              v31 = v12;
              _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Cleaning up key for device %{public}@, which was added on: %{public}@", buf, 0x16u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }

    v18 = +[NSUserDefaults standardUserDefaults];
    v5 = v22;
    v19 = [NSDictionary dictionaryWithDictionary:v22];
    [v18 setObject:v19 forKey:@"com.apple.RecoverDeviceUI.RecoveringDeviceKey"];

    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 synchronize];

    v4 = v21;
  }
}

- (void)persistRecoveringDevice
{
  [(RecoverDeviceUIExtensionRemoteViewController *)self cleanupOldRecoveredDevices];
  deviceKey = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceKey];
  if (deviceKey)
  {
    oslog3 = +[NSDate date];
    logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      v16 = deviceKey;
      v17 = 2114;
      v18 = oslog3;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Persisting recovered device: %{public}@ with current time: %{public}@", &v15, 0x16u);
    }

    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 dictionaryForKey:@"com.apple.RecoverDeviceUI.RecoveringDeviceKey"];
    v9 = [v8 mutableCopy];

    if (!v9)
    {
      logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog2 = [logger2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "No recovered device ids found, Creating a new dictionary", &v15, 2u);
      }

      v9 = +[NSMutableDictionary dictionary];
    }

    [v9 setObject:oslog3 forKeyedSubscript:deviceKey];
    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setObject:v9 forKey:@"com.apple.RecoverDeviceUI.RecoveringDeviceKey"];

    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 synchronize];
  }

  else
  {
    logger3 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog3 = [logger3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "No key to identify the device was found, not persisting", &v15, 2u);
    }
  }
}

- (BOOL)matchesRecentlyRecoveredDevice
{
  [(RecoverDeviceUIExtensionRemoteViewController *)self cleanupOldRecoveredDevices];
  deviceKey = [(RecoverDeviceUIExtensionRemoteViewController *)self deviceKey];
  if (deviceKey)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    oslog2 = [v4 dictionaryForKey:@"com.apple.RecoverDeviceUI.RecoveringDeviceKey"];

    if (oslog2 && ([oslog2 objectForKeyedSubscript:deviceKey], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog = [logger oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [oslog2 objectForKeyedSubscript:deviceKey];
        v14 = 138543618;
        v15 = deviceKey;
        v16 = 2114;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Device %{public}@ found in recovered device ids (added on: %{public}@)", &v14, 0x16u);
      }

      v10 = 1;
    }

    else
    {
      logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
      oslog = [logger2 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = deviceKey;
        v16 = 2114;
        v17 = oslog2;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is not a recently recovered device. Recently recovered: %{public}@", &v14, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    logger3 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog2 = [logger3 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "No key to identify the device was found, not persisting", &v14, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)overallResultSUButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"UPDATE_NOW" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __75__RecoverDeviceUIExtensionRemoteViewController_overallResultSUButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:0 handler:v7];

  return v5;
}

void __75__RecoverDeviceUIExtensionRemoteViewController_overallResultSUButtonAction__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__RecoverDeviceUIExtensionRemoteViewController_overallResultSUButtonAction__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id __75__RecoverDeviceUIExtensionRemoteViewController_overallResultSUButtonAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Moving to software update pane", v6, 2u);
  }

  v4 = [*(a1 + 32) proxCardNavController];
  [v4 dismissViewControllerAnimated:1 completion:&__block_literal_global];

  return [*(a1 + 32) setOverallResultCard:0];
}

void __75__RecoverDeviceUIExtensionRemoteViewController_overallResultSUButtonAction__block_invoke_483(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK&ShowDefaultAudiencePane=YES"];
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  [v1 openSensitiveURL:v2 withOptions:0];
}

- (id)overallResultOKButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"OK" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __75__RecoverDeviceUIExtensionRemoteViewController_overallResultOKButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:0 handler:v7];

  return v5;
}

void __75__RecoverDeviceUIExtensionRemoteViewController_overallResultOKButtonAction__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__RecoverDeviceUIExtensionRemoteViewController_overallResultOKButtonAction__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id __75__RecoverDeviceUIExtensionRemoteViewController_overallResultOKButtonAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing card after setup completion", v6, 2u);
  }

  v4 = [*(a1 + 32) proxCardNavController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  return [*(a1 + 32) setOverallResultCard:0];
}

- (id)getOverallResultTitleStringForError:(id)error resultType:(int)type
{
  errorCopy = error;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  dispatch_assert_queue_V2(recoverDeviceOperationsQueue);

  if (!errorCopy)
  {
    v11 = +[NSBundle mainBundle];
    kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
    v13 = kLocalizedDeviceType;
    switch(type)
    {
      case 4:
        v14 = @"OVERALL_RESULT_RECOVERY_SUCCESS_TITLE";
        break;
      case 8:
        v14 = @"OVERALL_RESULT_REBOOT_SUCCESS_TITLE";
        break;
      case 6:
        v14 = @"OVERALL_RESULT_EACS_SUCCESS_TITLE";
        break;
      default:
        v14 = @"OVERALL_RESULT_SUCCESS_TITLE";
        break;
    }

    v27 = [NSString stringWithFormat:@"%@_%@", v14, kLocalizedDeviceType];
    v28 = [v11 localizedStringForKey:v27 value:&stru_100020878 table:@"Localizable"];
    v19 = [NSString stringWithFormat:v28];

    goto LABEL_32;
  }

  if (type > 4)
  {
    if (type == 7)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"OVERALL_RESULT_REBOOT_FAILURE_TITLE";
      goto LABEL_17;
    }

    if (type == 5)
    {
      v8 = +[NSBundle mainBundle];
      v9 = v8;
      v10 = @"OVERALL_RESULT_EACS_FAILURE_TITLE";
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (type == 2)
  {
    v9 = +[NSBundle mainBundle];
    kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
    v16 = [NSString stringWithFormat:@"%@_%@", @"OVERALL_RESULT_RECOVERY_FAILURE_TITLE", kLocalizedDeviceType2];
    v13 = [v9 localizedStringForKey:v16 value:&stru_100020878 table:@"Localizable"];

    goto LABEL_15;
  }

  if (type != 3)
  {
LABEL_13:
    v9 = +[NSBundle mainBundle];
    kLocalizedDeviceType2 = [v9 localizedStringForKey:@"OVERALL_RESULT_SETUP_FAILURE_TITLE" value:&stru_100020878 table:@"Localizable"];
    v13 = [NSString stringWithFormat:kLocalizedDeviceType2];
LABEL_15:

    goto LABEL_18;
  }

  v8 = +[NSBundle mainBundle];
  v9 = v8;
  v10 = @"OVERALL_RESULT_RECOVERY_DISCONNECT_TITLE";
LABEL_17:
  v13 = [v8 localizedStringForKey:v10 value:&stru_100020878 table:@"Localizable"];
LABEL_18:

  domain = [errorCopy domain];
  v18 = [domain isEqualToString:@"TapToRecoverProxCardError"];

  if (v18)
  {
    if ([errorCopy code] != 10003)
    {
      goto LABEL_33;
    }

    v11 = +[NSBundle mainBundle];
    v19 = [v11 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_100020878 table:@"Localizable"];
    goto LABEL_32;
  }

  domain2 = [errorCopy domain];
  v21 = [domain2 isEqualToString:NSOSStatusErrorDomain];

  if (v21)
  {
    code = [errorCopy code];
    if ((code - 301000) <= 0x22 && ((1 << (code + 56)) & 0x400000011) != 0)
    {
      useAlternateStringForWiFI = [(RecoverDeviceUIExtensionRemoteViewController *)self useAlternateStringForWiFI];
      v11 = +[NSBundle mainBundle];
      kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
      v25 = kLocalizedDeviceType3;
      if (useAlternateStringForWiFI)
      {
        v26 = @"OVERALL_RESULT_FAILURE_WLAN_TITLE";
      }

      else
      {
        v26 = @"OVERALL_RESULT_FAILURE_WIFI_TITLE";
      }

      v29 = [NSString stringWithFormat:@"%@_%@", v26, kLocalizedDeviceType3];
      v19 = [v11 localizedStringForKey:v29 value:&stru_100020878 table:@"Localizable"];

      v13 = v25;
LABEL_32:

      v13 = v19;
    }
  }

LABEL_33:

  return v13;
}

- (id)getOverallResultSubTitleStringForError:(id)error resultType:(int)type
{
  errorCopy = error;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  dispatch_assert_queue_V2(recoverDeviceOperationsQueue);

  if (errorCopy)
  {
    if (type > 4)
    {
      if (type == 7)
      {
        v9 = +[NSBundle mainBundle];
        kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
        v16 = kLocalizedDeviceType;
        v17 = @"OVERALL_RESULT_REBOOT_FAILURE_DESCRIPTION";
        goto LABEL_19;
      }

      if (type == 5)
      {
        v9 = +[NSBundle mainBundle];
        kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
        v16 = kLocalizedDeviceType;
        v17 = @"OVERALL_RESULT_EACS_FAILURE_DESCRIPTION";
LABEL_19:
        kLocalizedDeviceType2 = [NSString stringWithFormat:@"%@_%@", v17, kLocalizedDeviceType];
        v19 = [v9 localizedStringForKey:kLocalizedDeviceType2 value:&stru_100020878 table:@"Localizable"];
        goto LABEL_20;
      }
    }

    else
    {
      if (type == 2)
      {
        v9 = +[NSBundle mainBundle];
        kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
        v16 = kLocalizedDeviceType;
        v17 = @"OVERALL_RESULT_RECOVERY_FAILURE_DESCRIPTION";
        goto LABEL_19;
      }

      if (type == 3)
      {
        useAlternateStringForWiFI = [(RecoverDeviceUIExtensionRemoteViewController *)self useAlternateStringForWiFI];
        v9 = +[NSBundle mainBundle];
        if (useAlternateStringForWiFI)
        {
          v10 = @"OVERALL_RESULT_RECOVERY_DISCONNECT_DESCRIPTION_WLAN";
        }

        else
        {
          v10 = @"OVERALL_RESULT_RECOVERY_DISCONNECT_DESCRIPTION";
        }

        v16 = [UIDevice modelSpecificLocalizedStringKeyForKey:v10];
        kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
        v46 = [NSString stringWithFormat:@"%@_%@", v16, kLocalizedDeviceType2];
        v19 = [v9 localizedStringForKey:v46 value:&stru_100020878 table:@"Localizable"];

LABEL_20:
        domain = [errorCopy domain];
        v21 = [domain isEqualToString:@"TapToRecoverProxCardError"];

        if (!v21)
        {
          domain2 = [errorCopy domain];
          v30 = [domain2 isEqualToString:NSOSStatusErrorDomain];

          if (!v30)
          {
LABEL_60:
            if (os_variant_has_internal_content())
            {
              v51 = [errorCopy description];
              v52 = [v19 stringByAppendingFormat:@"\n[Internal Only]: %@", v51];

              v19 = v52;
            }

            logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
            oslog = [logger oslog];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              code2 = v19;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Subtitle is: %{public}@", buf, 0xCu);
            }

            goto LABEL_64;
          }

          code = [errorCopy code];
          if ((code - 301000) <= 0x22 && ((1 << (code + 56)) & 0x400000011) != 0 || code == -71158)
          {
            logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
            oslog2 = [logger2 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              code2 = [errorCopy code];
              _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Error Description: WiFi is unavailable/unsupported/not connected to network : %ld", buf, 0xCu);
            }

            useAlternateStringForWiFI2 = [(RecoverDeviceUIExtensionRemoteViewController *)self useAlternateStringForWiFI];
            oslog3 = +[NSBundle mainBundle];
            if (useAlternateStringForWiFI2)
            {
              v35 = @"OVERALL_RESULT_FAILURE_WLAN_UNAVAILABLE";
            }

            else
            {
              v35 = @"OVERALL_RESULT_FAILURE_WIFI_UNAVAILABLE";
            }

            v43 = [UIDevice modelSpecificLocalizedStringKeyForKey:v35];
            v44 = [oslog3 localizedStringForKey:v43 value:&stru_100020878 table:@"Localizable"];

            v19 = v44;
            goto LABEL_59;
          }

          logger3 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
          oslog3 = [logger3 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            code2 = [errorCopy code];
            v45 = "Error Description: Generic/Unsupported error code from NSOSStatusErrorDomain(%ld). Using default subtitle";
            v47 = oslog3;
            v48 = 12;
            goto LABEL_54;
          }

          goto LABEL_59;
        }

        code3 = [errorCopy code];
        logger4 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog3 = [logger4 oslog];

        v25 = os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT);
        if (code3 > 10000)
        {
          if (code3 == 10001)
          {
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Error Description: Expected a paired device but BLE server sent auth request", buf, 2u);
            }

            oslog3 = +[NSBundle mainBundle];
            kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
            v27 = kLocalizedDeviceType3;
            v28 = @"OVERALL_RESULT_FAILURE_CONNECTED_TO_ANOTHER";
            goto LABEL_58;
          }

          if (code3 == 10003)
          {
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Error Description: version mismatch", buf, 2u);
            }

            v36 = +[UIDevice currentDevice];
            model = [v36 model];
            uppercaseString = [model uppercaseString];
            v39 = [uppercaseString containsString:@"IPHONE"];

            if (v39)
            {
              oslog3 = +[NSBundle mainBundle];
              kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
              v27 = kLocalizedDeviceType3;
              v28 = @"OVERALL_RESULT_FAILURE_VERSION_IPHONE";
            }

            else
            {
              v55 = +[UIDevice currentDevice];
              model2 = [v55 model];
              uppercaseString2 = [model2 uppercaseString];
              v58 = [uppercaseString2 containsString:@"IPAD"];

              if (!v58)
              {
                goto LABEL_60;
              }

              oslog3 = +[NSBundle mainBundle];
              kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
              v27 = kLocalizedDeviceType3;
              v28 = @"OVERALL_RESULT_FAILURE_VERSION_IPAD";
            }

            goto LABEL_58;
          }
        }

        else
        {
          if (!code3)
          {
            if (v25)
            {
              *buf = 0;
              v45 = "Error Description: No error code specified. Using default subtitle";
              goto LABEL_53;
            }

LABEL_59:

            goto LABEL_60;
          }

          if (code3 == 10000)
          {
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Error Description: Too many code entry attempts", buf, 2u);
            }

            oslog3 = +[NSBundle mainBundle];
            kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
            v27 = kLocalizedDeviceType3;
            v28 = @"OVERALL_RESULT_FAILURE_TOO_MANY_CODE_ATTEMPTS_DESCRIPTION";
LABEL_58:
            v49 = [NSString stringWithFormat:@"%@_%@", v28, kLocalizedDeviceType3];
            v50 = [oslog3 localizedStringForKey:v49 value:&stru_100020878 table:@"Localizable"];

            v19 = v50;
            goto LABEL_59;
          }
        }

        if (v25)
        {
          *buf = 0;
          v45 = "Error Description: Generic error code. Using default subtitle";
LABEL_53:
          v47 = oslog3;
          v48 = 2;
LABEL_54:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v45, buf, v48);
          goto LABEL_59;
        }

        goto LABEL_59;
      }
    }

    v9 = +[NSBundle mainBundle];
    kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
    v16 = kLocalizedDeviceType;
    v17 = @"OVERALL_RESULT_FAILURE_DESCRIPTION";
    goto LABEL_19;
  }

  logger5 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog4 = [logger5 oslog];

  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog4, OS_LOG_TYPE_DEFAULT, "No error object passed in to covert to subtitle string", buf, 2u);
  }

  oslog = +[NSBundle mainBundle];
  switch(type)
  {
    case 8:
      v14 = @"OVERALL_RESULT_REBOOT_DESCRIPTION";
      break;
    case 6:
      v14 = @"OVERALL_RESULT_EACS_DESCRIPTION";
      break;
    case 4:
      v14 = @"OVERALL_RESULT_RECOVERY_DESCRIPTION";
      break;
    default:
      v14 = @"OVERALL_RESULT_SUCCESS_DESCRIPTION";
      break;
  }

  v40 = [UIDevice modelSpecificLocalizedStringKeyForKey:v14];
  kLocalizedDeviceType4 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v42 = [NSString stringWithFormat:@"%@_%@", v40, kLocalizedDeviceType4];
  v19 = [oslog localizedStringForKey:v42 value:&stru_100020878 table:@"Localizable"];

LABEL_64:

  return v19;
}

- (id)getOverallResultActionForError:(id)error resultType:(int)type
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:@"TapToRecoverProxCardError"];

  if (v7 && [errorCopy code] == 10003)
  {
    logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error Description: version mismatch", v13, 2u);
    }

    overallResultSUButtonAction = [(RecoverDeviceUIExtensionRemoteViewController *)self overallResultSUButtonAction];
  }

  else
  {
    overallResultSUButtonAction = [(RecoverDeviceUIExtensionRemoteViewController *)self overallResultOKButtonAction];
  }

  v11 = overallResultSUButtonAction;

  return v11;
}

- (id)getOverallResultUIImageForError:(id)error resultType:(int)type
{
  errorCopy = error;
  if (!errorCopy)
  {
    uiImage = 0;
    if (type > 5)
    {
      if (type == 6)
      {
        goto LABEL_25;
      }

      if (type == 8)
      {
        v12 = [UIImageView alloc];
        v13 = @"arrowtriangle.backward.circle";
        goto LABEL_22;
      }
    }

    else
    {
      if (type == 1)
      {
        goto LABEL_25;
      }

      if (type == 4)
      {
        v12 = [UIImageView alloc];
        v13 = @"gear";
LABEL_22:
        v25 = [UIImage systemImageNamed:v13];
        uiImage = [v12 initWithImage:v25];

        v26 = +[UIColor systemGrayColor];
LABEL_24:
        v29 = v26;
        [uiImage setTintColor:v26];

        v30 = [UIImageSymbolConfiguration configurationWithPointSize:64.0];
        [uiImage setPreferredSymbolConfiguration:v30];

        goto LABEL_25;
      }
    }

    v27 = [UIImageView alloc];
    v28 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    uiImage = [v27 initWithImage:v28];

    v26 = +[UIColor systemGreenColor];
    goto LABEL_24;
  }

  if (type == 3)
  {
    v7 = [UIImageView alloc];
    v8 = [UIImage systemImageNamed:@"wifi.exclamationmark"];
    uiImage = [v7 initWithImage:v8];

    v10 = +[UIColor systemGray3Color];
    [uiImage setTintColor:v10];

    v11 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
    [uiImage setPreferredSymbolConfiguration:v11];
  }

  else
  {
    uiImage = 0;
  }

  domain = [errorCopy domain];
  v15 = [domain isEqualToString:@"TapToRecoverProxCardError"];

  if (v15)
  {
    if ([errorCopy code] != 10003)
    {
      goto LABEL_17;
    }

    v16 = @"gear";
    goto LABEL_16;
  }

  domain2 = [errorCopy domain];
  v18 = [domain2 isEqualToString:NSOSStatusErrorDomain];

  if (v18)
  {
    if ((v19 = [errorCopy code], v16 = @"wifi.slash", (v19 - 301000) <= 0x22) && ((1 << (v19 + 56)) & 0x400000011) != 0 || v19 == -71158)
    {
LABEL_16:
      v20 = [UIImageView alloc];
      v21 = [UIImage systemImageNamed:v16];
      v22 = [v20 initWithImage:v21];

      v23 = +[UIColor systemGray3Color];
      [v22 setTintColor:v23];

      v24 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
      [v22 setPreferredSymbolConfiguration:v24];

      uiImage = v22;
    }
  }

LABEL_17:
  if (!uiImage)
  {
    uiImage = [(RecoverDeviceUIExtensionRemoteViewController *)self uiImage];
  }

LABEL_25:

  return uiImage;
}

- (void)updateProgressCardOnMainQueueWithInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [infoCopy objectForKeyedSubscript:@"NeRDState"];
  v6 = [infoCopy objectForKeyedSubscript:@"NeRDProgress"];

  if (!v5)
  {
    v7 = +[NSBundle mainBundle];
    oslog = v7;
    v9 = @"PROGRESS_FETCHING";
    goto LABEL_11;
  }

  if ([v5 isEqual:@"NeRDStateScanning"])
  {
    v7 = +[NSBundle mainBundle];
    oslog = v7;
    v9 = @"PROGRESS_STATE_SCANNING";
LABEL_11:
    v10 = [v7 localizedStringForKey:v9 value:&stru_100020878 table:@"Localizable"];
    progressText = [(RecoverDeviceUIExtensionRemoteViewController *)self progressText];
    [progressText setText:v10];

LABEL_12:
    goto LABEL_13;
  }

  if ([v5 isEqual:@"NeRDStateDownloading"])
  {
    v7 = +[NSBundle mainBundle];
    oslog = v7;
    v9 = @"PROGRESS_STATE_DOWNLOADING";
    goto LABEL_11;
  }

  if ([v5 isEqual:@"NeRDStatePreparing"])
  {
    v7 = +[NSBundle mainBundle];
    oslog = v7;
    v9 = @"PROGRESS_STATE_PREPARING";
    goto LABEL_11;
  }

  if ([v5 isEqual:@"NeRDStateInstalling"])
  {
    v7 = +[NSBundle mainBundle];
    oslog = v7;
    v9 = @"PROGRESS_STATE_INSTALLING";
    goto LABEL_11;
  }

  if (([v5 isEqual:@"NeRDStateInstalled"] & 1) == 0)
  {
    logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog = [logger oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Unknown state (%{public}@)!  file a bug", &v17, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  if (v6)
  {
    v12 = [v6 unsignedIntegerValue] * 0.01;
    progressView = [(RecoverDeviceUIExtensionRemoteViewController *)self progressView];
    *&v14 = v12;
    [progressView setProgress:1 animated:v14];

    progressView2 = [(RecoverDeviceUIExtensionRemoteViewController *)self progressView];
    [progressView2 setNeedsLayout];
  }
}

- (void)showProgressCard:(id)card
{
  cardCopy = card;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __65__RecoverDeviceUIExtensionRemoteViewController_showProgressCard___block_invoke;
  v7[3] = &unk_100020498;
  v7[4] = self;
  v8 = cardCopy;
  v6 = cardCopy;
  dispatch_async(recoverDeviceOperationsQueue, v7);
}

void __65__RecoverDeviceUIExtensionRemoteViewController_showProgressCard___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setProgressCard:v2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __65__RecoverDeviceUIExtensionRemoteViewController_showProgressCard___block_invoke_2;
  v4[3] = &unk_100020498;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

void __65__RecoverDeviceUIExtensionRemoteViewController_showProgressCard___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to show progress", buf, 2u);
  }

  [*(a1 + 32) setShowingProgress:1];
  v4 = [*(a1 + 32) progressCard];
  [v4 setDismissalType:3];

  v5 = +[NSBundle mainBundle];
  v6 = [*(a1 + 32) kLocalizedDeviceType];
  v7 = [NSString stringWithFormat:@"%@_%@", @"PROGRESS_CARD_TITLE", v6];
  v8 = [v5 localizedStringForKey:v7 value:&stru_100020878 table:@"Localizable"];
  v9 = [*(a1 + 32) progressCard];
  [v9 setTitle:v8];

  v10 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoVersion"];

  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [*(a1 + 32) kLocalizedDeviceType];
    v13 = [NSString stringWithFormat:@"%@_%@", @"PROGRESS_CARD_TITLE_VERSION", v12];
    v14 = [v11 localizedStringForKey:v13 value:&stru_100020878 table:@"Localizable"];
    v15 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoVersion"];
    v16 = [NSString stringWithFormat:v14, v15];
    v17 = [*(a1 + 32) progressCard];
    [v17 setTitle:v16];
  }

  v18 = +[NSBundle mainBundle];
  v19 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_CARD_USAGE_INSTRUCTIONS"];
  v20 = [*(a1 + 32) kLocalizedDeviceType];
  v21 = [NSString stringWithFormat:@"%@_%@", v19, v20];
  v22 = [v18 localizedStringForKey:v21 value:&stru_100020878 table:@"Localizable"];
  v23 = [*(a1 + 32) progressCard];
  [v23 setSubtitle:v22];

  v24 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [*(a1 + 32) setProgressView:v24];

  v25 = [[PRXLabel alloc] initWithStyle:1];
  LODWORD(v19) = [*(a1 + 32) isCompanionSameDevice];
  v26 = +[NSBundle mainBundle];
  if (v19)
  {
    v27 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_CARD_VIEW_AGAIN_OTHER"];
    v28 = [v26 localizedStringForKey:v27 value:&stru_100020878 table:@"Localizable"];
    [v25 setText:v28];
  }

  else
  {
    v27 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_CARD_VIEW_AGAIN"];
    v28 = [*(a1 + 32) kLocalizedDeviceType];
    v29 = [NSString stringWithFormat:@"%@_%@", v27, v28];
    v30 = [v26 localizedStringForKey:v29 value:&stru_100020878 table:@"Localizable"];
    [v25 setText:v30];
  }

  v31 = objc_alloc_init(UILabel);
  [*(a1 + 32) setProgressText:v31];

  v32 = [*(a1 + 32) progressText];
  [v32 setTextAlignment:1];

  v33 = +[UIColor systemGrayColor];
  v34 = [*(a1 + 32) progressText];
  [v34 setTextColor:v33];

  +[UIFont smallSystemFontSize];
  v35 = [UIFont systemFontOfSize:?];
  v36 = [*(a1 + 32) progressText];
  [v36 setFont:v35];

  v37 = [UIStackView alloc];
  v75[0] = v25;
  v38 = [*(a1 + 32) progressView];
  v75[1] = v38;
  v39 = [*(a1 + 32) progressText];
  v75[2] = v39;
  v40 = [NSArray arrayWithObjects:v75 count:3];
  v41 = [v37 initWithArrangedSubviews:v40];

  [v41 setCustomSpacing:v25 afterView:30.0];
  [v41 setAxis:1];
  [v41 setSpacing:6.0];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = [*(a1 + 32) progressCard];
  v43 = [v42 contentView];
  [v43 addSubview:v41];

  v44 = [*(a1 + 32) progressCard];
  v45 = [v44 contentView];
  v46 = [v45 mainContentGuide];

  v72 = [v41 topAnchor];
  v71 = [v46 topAnchor];
  v69 = [v72 constraintGreaterThanOrEqualToAnchor:v71];
  v74[0] = v69;
  v67 = [v41 bottomAnchor];
  v66 = [v46 bottomAnchor];
  v65 = [v67 constraintLessThanOrEqualToAnchor:v66];
  v74[1] = v65;
  v64 = [v41 centerYAnchor];
  v63 = [v46 centerYAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v74[2] = v62;
  v61 = [v41 centerXAnchor];
  v60 = [v46 centerXAnchor];
  v47 = [v61 constraintEqualToAnchor:v60];
  v74[3] = v47;
  v48 = [v41 trailingAnchor];
  v68 = v46;
  v49 = [v46 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  v74[4] = v50;
  v51 = [v41 leadingAnchor];
  [v46 leadingAnchor];
  v52 = v70 = v25;
  v53 = [v51 constraintEqualToAnchor:v52];
  v74[5] = v53;
  v54 = [NSArray arrayWithObjects:v74 count:6];
  [NSLayoutConstraint activateConstraints:v54];

  [*(a1 + 32) updateProgressCardOnMainQueueWithInfo:*(a1 + 40)];
  v55 = [*(a1 + 32) progressCard];
  v56 = [*(a1 + 32) progressDismissButtonAction];
  v57 = [v55 addAction:v56];

  v58 = [*(a1 + 32) proxCardNavController];
  v59 = [*(a1 + 32) progressCard];
  [v58 pushViewController:v59 animated:1];
}

- (void)showScanningCard
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showScanningCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __64__RecoverDeviceUIExtensionRemoteViewController_showScanningCard__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setScanningCard:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showScanningCard__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __64__RecoverDeviceUIExtensionRemoteViewController_showScanningCard__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) scanningCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SCANNING_CARD_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) scanningCard];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [*(a1 + 32) kLocalizedDeviceType];
  v8 = [NSString stringWithFormat:@"%@_%@", @"SCANNING_CARD_DETAILS", v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_100020878 table:@"Localizable"];
  v10 = [*(a1 + 32) scanningCard];
  [v10 setSubtitle:v9];

  v11 = [UIImageView alloc];
  v12 = [UIImage systemImageNamed:@"gear"];
  v13 = [v11 initWithImage:v12];

  v14 = +[UIColor systemGray3Color];
  [v13 setTintColor:v14];

  v15 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
  [v13 setPreferredSymbolConfiguration:v15];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = a1;
  v16 = [*(a1 + 32) scanningCard];
  v17 = [v16 contentView];
  [v17 addSubview:v13];

  v18 = [*(a1 + 32) scanningCard];
  v19 = [v18 contentView];
  v20 = [v19 mainContentGuide];

  v35 = [v13 topAnchor];
  v21 = [v20 topAnchor];
  v22 = [v35 constraintGreaterThanOrEqualToAnchor:v21];
  v38[0] = v22;
  v23 = [v13 centerYAnchor];
  v37 = v20;
  v24 = [v20 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v38[1] = v25;
  v26 = [v13 centerXAnchor];
  v27 = [v20 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v38[2] = v28;
  v29 = [NSArray arrayWithObjects:v38 count:3];
  [NSLayoutConstraint activateConstraints:v29];

  v30 = [*(v36 + 32) scanningCard];
  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"SCANNING_CARD_SCANNING" value:&stru_100020878 table:@"Localizable"];
  [v30 showActivityIndicatorWithStatus:v32];

  v33 = [*(v36 + 32) proxCardNavController];
  v34 = [*(v36 + 32) scanningCard];
  [v33 pushViewController:v34 animated:1];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke;
  block[3] = &unk_1000205C8;
  v12 = messageCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) setupkitClient];
    v3 = *(a1 + 32);
    v11 = SKOptionTimeoutSeconds;
    v12 = &off_100022198;
    v4 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke_654;
    v9[3] = &unk_100020578;
    v5 = &v10;
    v6 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v6;
    [v2 sendEventID:@"osrEventID" eventMessage:v3 options:v4 completionHandler:v9];
  }

  else
  {
    if (!*(a1 + 48))
    {
      return;
    }

    v2 = [*(a1 + 40) recoverDeviceOperationsQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke_3;
    v7[3] = &unk_1000205A0;
    v5 = &v8;
    v8 = *(a1 + 48);
    dispatch_async(v2, v7);
  }
}

void __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke_654(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) recoverDeviceOperationsQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __78__RecoverDeviceUIExtensionRemoteViewController_sendMessage_completionHandler___block_invoke_2;
    v5[3] = &unk_100020550;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (id)backToMenuButton
{
  [PRXButton buttonWithProximityType:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __64__RecoverDeviceUIExtensionRemoteViewController_backToMenuButton__block_invoke;
  v3 = v17[3] = &unk_1000205F0;
  v18 = v3;
  selfCopy = self;
  v4 = [UIAction actionWithHandler:v17];
  [v3 addAction:v4 forControlEvents:0x2000];

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  [v5 setTitleAlignment:2];
  v6 = [NSAttributedString alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"GO_BACK" value:&stru_100020878 table:@"Localizable"];
  v20 = NSFontAttributeName;
  v9 = +[UIFontMetrics defaultMetrics];
  v10 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  v11 = [v9 scaledFontForFont:v10 compatibleWithTraitCollection:0];
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v13 = [v6 initWithString:v8 attributes:v12];

  [v5 setAttributedTitle:v13];
  v14 = +[UIColor systemBlueColor];
  [v5 setBaseForegroundColor:v14];

  [v3 setConfiguration:v5];
  v15 = v3;

  return v3;
}

id __64__RecoverDeviceUIExtensionRemoteViewController_backToMenuButton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = *(a1 + 40);

  return [v2 showMenuCard];
}

- (void)showRecoveryCard
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setRecoveryCard:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MENU_SYSTEM_RECOVERY_BUTTON_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) recoveryCard];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [*(a1 + 32) kLocalizedDeviceType];
  v8 = [NSString stringWithFormat:@"%@_%@", @"SYSTEM_RECOVERY_DETAILS", v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_100020878 table:@"Localizable"];
  v10 = [*(a1 + 32) recoveryCard];
  [v10 setSubtitle:v9];

  v11 = [UIImageView alloc];
  v12 = [UIImage systemImageNamed:@"gear"];
  v13 = [v11 initWithImage:v12];

  v14 = +[UIColor systemGray3Color];
  [v13 setTintColor:v14];

  v15 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
  [v13 setPreferredSymbolConfiguration:v15];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [*(a1 + 32) recoveryCard];
  v17 = [v16 contentView];
  [v17 addSubview:v13];

  v18 = [*(a1 + 32) recoveryCard];
  v19 = [v18 contentView];
  v20 = [v19 mainContentGuide];

  v43 = [v13 topAnchor];
  v21 = [v20 topAnchor];
  v22 = [v43 constraintGreaterThanOrEqualToAnchor:v21];
  v48[0] = v22;
  v45 = v13;
  v23 = [v13 centerYAnchor];
  v24 = v20;
  v44 = v20;
  v25 = [v20 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v48[1] = v26;
  v27 = [v13 centerXAnchor];
  v28 = [v24 centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v48[2] = v29;
  v30 = [NSArray arrayWithObjects:v48 count:3];
  [NSLayoutConstraint activateConstraints:v30];

  v31 = [*(a1 + 32) recoveryCard];
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"START_RECOVERY_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_3;
  v47[3] = &unk_1000204E8;
  v47[4] = *(a1 + 32);
  v34 = [PRXAction actionWithTitle:v33 style:0 handler:v47];
  v35 = [v31 addAction:v34];

  v36 = [*(a1 + 32) recoveryCard];
  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"GO_BACK" value:&stru_100020878 table:@"Localizable"];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_677;
  v46[3] = &unk_1000204E8;
  v46[4] = *(a1 + 32);
  v39 = [PRXAction actionWithTitle:v38 style:1 handler:v46];
  v40 = [v36 addAction:v39];

  v41 = [*(a1 + 32) proxCardNavController];
  v42 = [*(a1 + 32) recoveryCard];
  [v41 pushViewController:v42 animated:1];
}

id __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = [*(a1 + 32) recoveryCard];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MENU_SYSTEM_RECOVERY_IN_PROGRESS_TEXT" value:&stru_100020878 table:@"Localizable"];
  [v3 showActivityIndicatorWithStatus:v5];

  v6 = *(a1 + 32);
  v21 = @"NeRDCommand";
  v22 = @"NeRDCommandRecover";
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v6 sendMessage:v7 completionHandler:0];

  [*(a1 + 32) persistRecoveringDevice];
  v8 = [*(a1 + 32) serverConfig];
  v9 = [v8 objectForKeyedSubscript:@"NeRDSupportsMessaging"];
  LODWORD(v5) = [v9 BOOLValue];

  v10 = *(a1 + 32);
  if (v5)
  {
    v11 = [v10 serverConfig];
    v12 = [v11 objectForKeyedSubscript:@"NeRDSupportsSlowRoll"];
    v13 = [v12 BOOLValue];

    v14 = [*(a1 + 32) logger];
    v15 = [v14 oslog];

    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "recovery button pressed, waiting for scan results", v20, 2u);
      }

      return [*(a1 + 32) showScanningCard];
    }

    else
    {
      if (v16)
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "recovery button pressed, showing progress", v20, 2u);
      }

      return [*(a1 + 32) showProgressCard:0];
    }
  }

  else
  {
    v18 = [v10 logger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "recovery button pressed, messaging not supported, finish", v20, 2u);
    }

    return [*(a1 + 32) showOverallResultCard:0 resultType:1];
  }
}

id __64__RecoverDeviceUIExtensionRemoteViewController_showRecoveryCard__block_invoke_677(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = *(a1 + 32);

  return [v3 showMenuCard];
}

- (id)menuSystemRecoveryButton
{
  [PRXButton buttonWithProximityType:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __72__RecoverDeviceUIExtensionRemoteViewController_menuSystemRecoveryButton__block_invoke;
  v3 = v18[3] = &unk_1000205F0;
  v19 = v3;
  selfCopy = self;
  v4 = [UIAction actionWithHandler:v18];
  [v3 addAction:v4 forControlEvents:0x2000];

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  [v5 setTitleAlignment:2];
  v6 = [NSAttributedString alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MENU_SYSTEM_RECOVERY_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v21 = NSFontAttributeName;
  v9 = +[UIFontMetrics defaultMetrics];
  v10 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  v11 = [v9 scaledFontForFont:v10 compatibleWithTraitCollection:0];
  v22 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v13 = [v6 initWithString:v8 attributes:v12];

  [v5 setAttributedTitle:v13];
  v14 = +[UIColor labelColor];
  [v5 setBaseForegroundColor:v14];

  v15 = [UIImage systemImageNamed:@"chevron.forward"];
  [v5 setImage:v15];

  [v5 setImagePlacement:8];
  [v5 setImagePadding:10.0];
  [v3 setConfiguration:v5];
  v16 = v3;

  return v3;
}

id __72__RecoverDeviceUIExtensionRemoteViewController_menuSystemRecoveryButton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = *(a1 + 40);

  return [v2 showRecoveryCard];
}

- (void)showEACSApprovalCard
{
  v3 = objc_alloc_init(PRXIconContentViewController);
  [(RecoverDeviceUIExtensionRemoteViewController *)self setEacsApprovalCard:v3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __68__RecoverDeviceUIExtensionRemoteViewController_showEACSApprovalCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __68__RecoverDeviceUIExtensionRemoteViewController_showEACSApprovalCard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eacsApprovalCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MENU_EACS_BUTTON_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) eacsApprovalCard];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"EACS_APPROVAL_SUBTITLE" value:&stru_100020878 table:@"Localizable"];
  v8 = [*(a1 + 32) eacsApprovalCard];
  [v8 setSubtitle:v7];

  v9 = [PRXButton buttonWithProximityType:1];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __68__RecoverDeviceUIExtensionRemoteViewController_showEACSApprovalCard__block_invoke_2;
  v32[3] = &unk_1000205F0;
  v10 = *(a1 + 32);
  v33 = v9;
  v34 = v10;
  v31 = v9;
  v11 = [UIAction actionWithHandler:v32];
  [v31 addAction:v11 forControlEvents:0x2000];

  v12 = +[UIButtonConfiguration plainButtonConfiguration];
  [v12 setTitleAlignment:2];
  v13 = [NSAttributedString alloc];
  v30 = +[NSBundle mainBundle];
  v14 = [*(a1 + 32) kLocalizedDeviceType];
  v15 = [NSString stringWithFormat:@"%@_%@", @"EACS_APPROVAL_BUTTON_YES", v14];
  v16 = [v30 localizedStringForKey:v15 value:&stru_100020878 table:@"Localizable"];
  v36 = NSFontAttributeName;
  v17 = +[UIFontMetrics defaultMetrics];
  v18 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  v19 = [v17 scaledFontForFont:v18 compatibleWithTraitCollection:0];
  v37 = v19;
  v20 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v21 = [v13 initWithString:v16 attributes:v20];

  v22 = v21;
  [v12 setAttributedTitle:v21];
  v23 = +[UIColor systemRedColor];
  [v12 setBaseForegroundColor:v23];

  [v31 setConfiguration:v12];
  v24 = [*(a1 + 32) eacsApprovalCard];
  v25 = [v24 contentView];
  v35[0] = v31;
  v26 = [*(a1 + 32) backToMenuButton];
  v35[1] = v26;
  v27 = [NSArray arrayWithObjects:v35 count:2];
  [v25 setActionButtons:v27];

  v28 = [*(a1 + 32) proxCardNavController];
  v29 = [*(a1 + 32) eacsApprovalCard];
  [v28 pushViewController:v29 animated:1];
}

void __68__RecoverDeviceUIExtensionRemoteViewController_showEACSApprovalCard__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = [*(a1 + 40) eacsApprovalCard];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MENU_EACS_IN_PROGRESS_TEXT" value:&stru_100020878 table:@"Localizable"];
  [v2 showActivityIndicatorWithStatus:v4];

  [*(a1 + 40) setPerformingEACS:1];
  v5 = *(a1 + 40);
  v7 = @"NeRDCommand";
  v8 = @"NeRDCommandEACS";
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v5 sendMessage:v6 completionHandler:0];
}

- (void)showEACSCard
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setEacsCard:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eacsCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MENU_EACS_BUTTON_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) eacsCard];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [*(a1 + 32) kLocalizedDeviceType];
  v8 = [NSString stringWithFormat:@"%@_%@", @"EACS_DETAILS", v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_100020878 table:@"Localizable"];
  v10 = [*(a1 + 32) eacsCard];
  [v10 setSubtitle:v9];

  v11 = [*(a1 + 32) uiImageEACS];
  v12 = +[UIColor systemGray3Color];
  [v11 setTintColor:v12];

  v13 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
  [v11 setPreferredSymbolConfiguration:v13];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [*(a1 + 32) eacsCard];
  v15 = [v14 contentView];
  [v15 addSubview:v11];

  v16 = [*(a1 + 32) eacsCard];
  v17 = [v16 contentView];
  v18 = [v17 mainContentGuide];

  v41 = [v11 topAnchor];
  v19 = [v18 topAnchor];
  v20 = [v41 constraintGreaterThanOrEqualToAnchor:v19];
  v46[0] = v20;
  v43 = v11;
  v21 = [v11 centerYAnchor];
  v22 = v18;
  v42 = v18;
  v23 = [v18 centerYAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v46[1] = v24;
  v25 = [v11 centerXAnchor];
  v26 = [v22 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v46[2] = v27;
  v28 = [NSArray arrayWithObjects:v46 count:3];
  [NSLayoutConstraint activateConstraints:v28];

  v29 = [*(a1 + 32) eacsCard];
  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"START_EACS_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_3;
  v45[3] = &unk_1000204E8;
  v45[4] = *(a1 + 32);
  v32 = [PRXAction actionWithTitle:v31 style:0 handler:v45];
  v33 = [v29 addAction:v32];

  v34 = [*(a1 + 32) eacsCard];
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"GO_BACK" value:&stru_100020878 table:@"Localizable"];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_4;
  v44[3] = &unk_1000204E8;
  v44[4] = *(a1 + 32);
  v37 = [PRXAction actionWithTitle:v36 style:1 handler:v44];
  v38 = [v34 addAction:v37];

  v39 = [*(a1 + 32) proxCardNavController];
  v40 = [*(a1 + 32) eacsCard];
  [v39 pushViewController:v40 animated:1];
}

id __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = *(a1 + 32);

  return [v3 showEACSApprovalCard];
}

id __60__RecoverDeviceUIExtensionRemoteViewController_showEACSCard__block_invoke_4(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = *(a1 + 32);

  return [v3 showMenuCard];
}

- (id)menuEACSButton
{
  [PRXButton buttonWithProximityType:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __62__RecoverDeviceUIExtensionRemoteViewController_menuEACSButton__block_invoke;
  v3 = v18[3] = &unk_1000205F0;
  v19 = v3;
  selfCopy = self;
  v4 = [UIAction actionWithHandler:v18];
  [v3 addAction:v4 forControlEvents:0x2000];

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  [v5 setTitleAlignment:2];
  v6 = [NSAttributedString alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MENU_EACS_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v21 = NSFontAttributeName;
  v9 = +[UIFontMetrics defaultMetrics];
  v10 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  v11 = [v9 scaledFontForFont:v10 compatibleWithTraitCollection:0];
  v22 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v13 = [v6 initWithString:v8 attributes:v12];

  [v5 setAttributedTitle:v13];
  v14 = +[UIColor labelColor];
  [v5 setBaseForegroundColor:v14];

  v15 = [UIImage systemImageNamed:@"chevron.forward"];
  [v5 setImage:v15];

  [v5 setImagePlacement:8];
  [v5 setImagePadding:10.0];
  [v3 setConfiguration:v5];
  v16 = v3;

  return v3;
}

id __62__RecoverDeviceUIExtensionRemoteViewController_menuEACSButton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = *(a1 + 40);

  return [v2 showEACSCard];
}

- (id)menuRebootButton
{
  [PRXButton buttonWithProximityType:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __64__RecoverDeviceUIExtensionRemoteViewController_menuRebootButton__block_invoke;
  v3 = v17[3] = &unk_1000205F0;
  v18 = v3;
  selfCopy = self;
  v4 = [UIAction actionWithHandler:v17];
  [v3 addAction:v4 forControlEvents:0x2000];

  v5 = +[UIButtonConfiguration plainButtonConfiguration];
  [v5 setTitleAlignment:2];
  v6 = [NSAttributedString alloc];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MENU_REBOOT_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v20 = NSFontAttributeName;
  v9 = +[UIFontMetrics defaultMetrics];
  v10 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightMedium];
  v11 = [v9 scaledFontForFont:v10 compatibleWithTraitCollection:0];
  v21 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v13 = [v6 initWithString:v8 attributes:v12];

  [v5 setAttributedTitle:v13];
  v14 = +[UIColor labelColor];
  [v5 setBaseForegroundColor:v14];

  [v3 setConfiguration:v5];
  v15 = v3;

  return v3;
}

void __64__RecoverDeviceUIExtensionRemoteViewController_menuRebootButton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:0];
  v2 = [*(a1 + 40) menuCard];
  v3 = +[NSBundle mainBundle];
  v4 = [*(a1 + 40) kLocalizedDeviceType];
  v5 = [NSString stringWithFormat:@"%@_%@", @"MENU_REBOOT_IN_PROGRESS_TEXT", v4];
  v6 = [v3 localizedStringForKey:v5 value:&stru_100020878 table:@"Localizable"];
  [v2 showActivityIndicatorWithStatus:v6];

  v7 = *(a1 + 40);
  v10 = @"NeRDCommand";
  v11 = @"NeRDCommandReboot";
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __64__RecoverDeviceUIExtensionRemoteViewController_menuRebootButton__block_invoke_2;
  v9[3] = &unk_100020618;
  v9[4] = *(a1 + 40);
  [v7 sendMessage:v8 completionHandler:v9];
}

void __64__RecoverDeviceUIExtensionRemoteViewController_menuRebootButton__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 logger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to send reboot command", v9, 2u);
    }

    v4 = *(a1 + 32);
    v7 = v3;
    v8 = 7;
  }

  else
  {
    v7 = 0;
    v8 = 8;
  }

  [v4 showOverallResultCard:v7 resultType:v8];
}

- (void)menuOptionChosen:(int)chosen
{
  switch(chosen)
  {
    case 4:
      menuCard = [(RecoverDeviceUIExtensionRemoteViewController *)self menuCard];
      v5 = +[NSBundle mainBundle];
      kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
      v7 = [NSString stringWithFormat:@"%@_%@", @"MENU_REBOOT_IN_PROGRESS_TEXT", kLocalizedDeviceType];
      v8 = [v5 localizedStringForKey:v7 value:&stru_100020878 table:@"Localizable"];
      [menuCard showActivityIndicatorWithStatus:v8];

      v11 = @"NeRDCommand";
      v12 = @"NeRDCommandReboot";
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __65__RecoverDeviceUIExtensionRemoteViewController_menuOptionChosen___block_invoke;
      v10[3] = &unk_100020618;
      v10[4] = self;
      [(RecoverDeviceUIExtensionRemoteViewController *)self sendMessage:v9 completionHandler:v10];

      break;
    case 2:

      [(RecoverDeviceUIExtensionRemoteViewController *)self showEACSCard];
      break;
    case 1:

      [(RecoverDeviceUIExtensionRemoteViewController *)self showRecoveryCard];
      break;
  }
}

void __65__RecoverDeviceUIExtensionRemoteViewController_menuOptionChosen___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 logger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to send reboot command", v9, 2u);
    }

    v4 = *(a1 + 32);
    v7 = v3;
    v8 = 7;
  }

  else
  {
    v7 = 0;
    v8 = 8;
  }

  [v4 showOverallResultCard:v7 resultType:v8];
}

- (void)showMenuCard
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showMenuCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __60__RecoverDeviceUIExtensionRemoteViewController_showMenuCard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConfig];
  v3 = [v2 objectForKeyedSubscript:@"NeRDRecoveryDisabled"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  v6 = [RecoverDeviceMenuViewController alloc];
  v7 = [*(a1 + 32) kLocalizedDeviceType];
  v8 = [(RecoverDeviceMenuViewController *)v6 initWithOptions:v5 forDevice:v7];
  [*(a1 + 32) setMenuViewController:v8];

  v9 = [PRXScrollableContentView alloc];
  v10 = [*(a1 + 32) menuViewController];
  v11 = [v10 tableView];
  v64 = [v9 initWithCardStyle:0 scrollView:v11];

  v12 = [[PRXCardContentViewController alloc] initWithContentView:v64];
  [*(a1 + 32) setMenuCard:v12];

  v13 = [*(a1 + 32) menuCard];
  [v13 setDismissalType:3];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"MENU_CARD_TITLE" value:&stru_100020878 table:@"Localizable"];
  v16 = [*(a1 + 32) menuCard];
  [v16 setTitle:v15];

  v17 = +[NSBundle mainBundle];
  v18 = [*(a1 + 32) kLocalizedDeviceType];
  v19 = [NSString stringWithFormat:@"%@_%@", @"MENU_CARD_SUBTITLE", v18];
  v20 = [v17 localizedStringForKey:v19 value:&stru_100020878 table:@"Localizable"];
  v21 = [*(a1 + 32) menuCard];
  [v21 setSubtitle:v20];

  v22 = [*(a1 + 32) menuCard];
  v23 = [*(a1 + 32) menuViewController];
  [v22 addChildViewController:v23];

  v24 = [*(a1 + 32) menuViewController];
  v25 = [v24 tableView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [*(a1 + 32) menuViewController];
  v27 = [*(a1 + 32) menuCard];
  [v26 didMoveToParentViewController:v27];

  v28 = [*(a1 + 32) menuCard];
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = __60__RecoverDeviceUIExtensionRemoteViewController_showMenuCard__block_invoke_2;
  v65[3] = &unk_1000204E8;
  v65[4] = *(a1 + 32);
  v29 = [PRXAction actionWithTitle:@"Continue" style:0 handler:v65];
  v30 = [v28 addAction:v29];

  v31 = [*(a1 + 32) menuCard];
  v32 = [v31 contentView];
  v33 = [v32 actionButtons];
  v34 = [v33 objectAtIndexedSubscript:0];

  v35 = [*(a1 + 32) menuCard];
  v36 = [v35 contentView];
  v37 = [v36 mainContentGuide];

  v63 = [*(a1 + 32) menuViewController];
  v61 = [v63 tableView];
  v60 = [v61 topAnchor];
  v62 = v37;
  v59 = [v37 topAnchor];
  v58 = [v60 constraintGreaterThanOrEqualToAnchor:v59];
  v66[0] = v58;
  v57 = [*(a1 + 32) menuViewController];
  v56 = [v57 tableView];
  v54 = [v56 bottomAnchor];
  v53 = [v37 bottomAnchor];
  v52 = [v54 constraintGreaterThanOrEqualToAnchor:v53];
  v66[1] = v52;
  v51 = [*(a1 + 32) menuViewController];
  v50 = [v51 tableView];
  v38 = [v50 trailingAnchor];
  v39 = v34;
  v55 = v34;
  v40 = [v34 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  v66[2] = v41;
  v42 = [*(a1 + 32) menuViewController];
  v43 = [v42 tableView];
  v44 = [v43 leadingAnchor];
  v45 = [v39 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  v66[3] = v46;
  v47 = [NSArray arrayWithObjects:v66 count:4];
  [NSLayoutConstraint activateConstraints:v47];

  v48 = [*(a1 + 32) proxCardNavController];
  v49 = [*(a1 + 32) menuCard];
  [v48 pushViewController:v49 animated:1];
}

void __60__RecoverDeviceUIExtensionRemoteViewController_showMenuCard__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 menuViewController];
  [v1 menuOptionChosen:{objc_msgSend(v2, "selectedOption")}];
}

- (void)cleanDocumentation
{
  MAPurgeAllWithPurpose();
  MAPurgeAllWithPurpose();
  MAPurgeCatalogsWithPurpose();
  MAPurgeCatalogsWithPurpose();
}

void __66__RecoverDeviceUIExtensionRemoteViewController_cleanDocumentation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to purge primary documentation: %{public}@", &v6, 0xCu);
  }
}

void __66__RecoverDeviceUIExtensionRemoteViewController_cleanDocumentation__block_invoke_735(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to purge alternate documentation: %{public}@", &v6, 0xCu);
  }
}

void __66__RecoverDeviceUIExtensionRemoteViewController_cleanDocumentation__block_invoke_736(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to purge primary documentation catalog: %{public}@", &v6, 0xCu);
  }
}

void __66__RecoverDeviceUIExtensionRemoteViewController_cleanDocumentation__block_invoke_737(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to purge alternate documentation catalog: %{public}@", &v6, 0xCu);
  }
}

- (void)collectDocumentation:(id)documentation alternative:(BOOL)alternative completion:(id)completion
{
  alternativeCopy = alternative;
  documentationCopy = documentation;
  completionCopy = completion;
  v10 = completionCopy;
  if (documentationCopy)
  {
    if (alternativeCopy)
    {
      v11 = @"RecoverDeviceUI-alternate";
    }

    else
    {
      v11 = @"RecoverDeviceUI-primary";
    }

    v12 = objc_alloc_init(MAMsuDownloadOptions);
    [v12 setPurpose:v11];
    v13 = [documentationCopy objectForKeyedSubscript:@"NeRDSUInfoDocAssetUUID"];
    [v12 setLiveAssetAudienceUUID:v13];

    [v12 setDiscretionary:0];
    [v12 setTimeoutIntervalForResource:30];
    v23[0] = @"SUDocumentationID";
    v14 = [documentationCopy objectForKeyedSubscript:@"NeRDSUInfoDocDocumentationID"];
    v23[1] = @"DeviceName";
    v24[0] = v14;
    v15 = [documentationCopy objectForKeyedSubscript:@"NeRDSUInfoDocDeviceClass"];
    v24[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v17 = [NSMutableDictionary dictionaryWithDictionary:v16];
    [v12 setAdditionalServerParams:v17];

    v18 = [documentationCopy objectForKeyedSubscript:@"NeRDSUInfoDocAssetType"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke;
    v19[3] = &unk_100020690;
    v19[4] = self;
    v22 = v10;
    v20 = documentationCopy;
    v21 = v11;
    [MAAsset startCatalogDownload:v18 options:v12 completionWithError:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || v5)
  {
    v15 = [*(a1 + 32) logger];
    v16 = [v15 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v21 = a2;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to download documentation catalog with result:%ld, error:%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [MAAssetQuery alloc];
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoDocAssetType"];
    v9 = [v7 initWithType:v8 andPurpose:*(a1 + 48)];

    v10 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoDocDocumentationID"];
    [v9 addKeyValuePair:@"SUDocumentationID" with:v10];

    v11 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoDocDeviceClass"];
    [v9 addKeyValuePair:@"Device" with:v11];

    v12 = [*(a1 + 40) objectForKeyedSubscript:@"NeRDSUInfoVersion"];
    [v9 addKeyValuePair:@"OSVersion" with:v12];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke_753;
    v17[3] = &unk_100020668;
    v17[4] = *(a1 + 32);
    v13 = *(a1 + 56);
    v18 = v9;
    v19 = v13;
    v14 = v9;
    [v14 queryMetaData:v17];
  }
}

void __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke_753(id *a1, void *a2)
{
  if (a2)
  {
    v4 = [a1[4] logger];
    v5 = [v4 oslog];

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      (*(a1[6] + 2))();
      return;
    }

    *buf = 134217984;
    v23 = a2;
    v6 = "Failed to query documentation catalog with result:%ld";
    v7 = v5;
    v8 = 12;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_5;
  }

  v9 = [a1[5] results];
  v10 = [v9 count];

  v11 = [a1[4] logger];
  v5 = [v11 oslog];

  v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_5;
    }

    *buf = 0;
    v6 = "Failed to find doc asset";
    v7 = v5;
    v8 = 2;
    goto LABEL_4;
  }

  if (v12)
  {
    v13 = [a1[5] results];
    *buf = 138543362;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Doc asset query found results:%{public}@", buf, 0xCu);
  }

  v14 = [a1[5] results];
  v15 = [v14 objectAtIndexedSubscript:0];

  v16 = objc_alloc_init(MADownloadOptions);
  [v16 setTimeoutIntervalForResource:30];
  [v16 setDiscretionary:0];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke_755;
  v19[3] = &unk_100020640;
  v19[4] = a1[4];
  v17 = a1[6];
  v20 = v15;
  v21 = v17;
  v18 = v15;
  [v18 startDownload:v16 completionWithError:v19];
}

void __92__RecoverDeviceUIExtensionRemoteViewController_collectDocumentation_alternative_completion___block_invoke_755(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 || v5)
  {
    v9 = [*(a1 + 32) logger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to download documentation asset with result:%ld, error:%{public}@", &v11, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [[SUCoreDocumentation alloc] initWithDocumentationAsset:*(a1 + 40)];
    v8 = [v7 extendDocumentationProperties];
    (*(*(a1 + 48) + 16))();
  }
}

- (void)showSUCard:(id)card build:(id)build icon:(id)icon isAlternate:(BOOL)alternate
{
  cardCopy = card;
  iconCopy = icon;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke;
  v14[3] = &unk_1000206E0;
  v14[4] = self;
  v15 = cardCopy;
  v16 = iconCopy;
  alternateCopy = alternate;
  v12 = iconCopy;
  v13 = cardCopy;
  dispatch_async(recoverDeviceOperationsQueue, v14);
}

void __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setSuCard:v2];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_2;
  v4[3] = &unk_1000206E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, v4);
}

void __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) suCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SU_CARD_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) suCard];
  [v5 setTitle:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [*(a1 + 32) kLocalizedDeviceType];
  v8 = [NSString stringWithFormat:@"%@_%@", @"SU_CARD_DETAILS", v7];
  v9 = [v6 localizedStringForKey:v8 value:&stru_100020878 table:@"Localizable"];
  v10 = [NSString stringWithFormat:v9, *(a1 + 40)];
  v11 = [*(a1 + 32) suCard];
  [v11 setSubtitle:v10];

  v12 = [UIImageView alloc];
  v13 = [UIImage systemImageNamed:@"gear"];
  v14 = [v12 initWithImage:v13];

  v15 = +[UIColor systemGrayColor];
  [v14 setTintColor:v15];

  v50 = v14;
  if (*(a1 + 48))
  {
    v16 = [[UIImageView alloc] initWithImage:*(a1 + 48)];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  v49 = v16;
  v18 = [UIImageSymbolConfiguration configurationWithPointSize:80.0];
  [v17 setPreferredSymbolConfiguration:v18];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [*(a1 + 32) suCard];
  v20 = [v19 contentView];
  [v20 addSubview:v17];

  v21 = [*(a1 + 32) suCard];
  v22 = [v21 contentView];
  v23 = [v22 mainContentGuide];

  v47 = [v17 topAnchor];
  v24 = v23;
  v25 = [v23 topAnchor];
  v26 = [v47 constraintGreaterThanOrEqualToAnchor:v25];
  v55[0] = v26;
  v27 = [v17 centerYAnchor];
  v48 = v23;
  v28 = [v23 centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v55[1] = v29;
  v30 = [v17 centerXAnchor];
  v31 = [v24 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v55[2] = v32;
  v33 = [NSArray arrayWithObjects:v55 count:3];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [*(a1 + 32) suCard];
  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"START_RECOVERY_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_3;
  v52[3] = &unk_1000206B8;
  v37 = *(a1 + 40);
  v52[4] = *(a1 + 32);
  v54 = *(a1 + 56);
  v53 = v37;
  v38 = [PRXAction actionWithTitle:v36 style:0 handler:v52];
  v39 = [v34 addAction:v38];

  v40 = [*(a1 + 32) suCard];
  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"GO_BACK" value:&stru_100020878 table:@"Localizable"];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_765;
  v51[3] = &unk_1000204E8;
  v51[4] = *(a1 + 32);
  v43 = [PRXAction actionWithTitle:v42 style:1 handler:v51];
  v44 = [v40 addAction:v43];

  v45 = [*(a1 + 32) proxCardNavController];
  v46 = [*(a1 + 32) suCard];
  [v45 pushViewController:v46 animated:1];
}

void __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = [*(a1 + 32) suCard];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MENU_SYSTEM_RECOVERY_IN_PROGRESS_TEXT" value:&stru_100020878 table:@"Localizable"];
  [v3 showActivityIndicatorWithStatus:v5];

  v6 = *(a1 + 32);
  v20[1] = @"kNeRDSelectedSU";
  v21[0] = @"NeRDOOBCommandSelectSU";
  v20[0] = @"NeRDCommand";
  v7 = [NSNumber numberWithInt:*(a1 + 48)];
  v21[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v6 sendMessage:v8 completionHandler:0];

  [*(a1 + 32) persistRecoveringDevice];
  v9 = [*(a1 + 32) serverConfig];
  v10 = [v9 objectForKeyedSubscript:@"NeRDSupportsMessaging"];
  LODWORD(v8) = [v10 BOOLValue];

  v11 = [*(a1 + 32) logger];
  v12 = [v11 oslog];

  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v13)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "recovery button pressed, showing progress", v17, 2u);
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v18 = @"NeRDSUInfoVersion";
    v19 = v14;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v15 showProgressCard:v16];
  }

  else
  {
    if (v13)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "recovery button pressed, messaging not supported, finish", v17, 2u);
    }

    [*(a1 + 32) showOverallResultCard:0 resultType:1];
  }
}

void __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_765(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = [*(a1 + 32) suSelectionCard];

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_2_766;
    block[3] = &unk_1000204C0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 showMenuCard];
  }
}

void __82__RecoverDeviceUIExtensionRemoteViewController_showSUCard_build_icon_isAlternate___block_invoke_2_766(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) suSelectionCard];
  v3 = [v2 contentView];
  v4 = [v3 actionButtons];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8) setEnabled:1];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 32) proxCardNavController];
  v10 = [v9 popViewControllerAnimated:1];
}

- (void)showSUSelectionCard:(id)card
{
  cardCopy = card;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __68__RecoverDeviceUIExtensionRemoteViewController_showSUSelectionCard___block_invoke;
  v7[3] = &unk_100020498;
  v8 = cardCopy;
  selfCopy = self;
  v6 = cardCopy;
  dispatch_async(recoverDeviceOperationsQueue, v7);
}

void __68__RecoverDeviceUIExtensionRemoteViewController_showSUSelectionCard___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v3 = [v2 objectForKeyedSubscript:@"NeRDSUInfoVersion"];

  v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v5 = [v4 objectForKeyedSubscript:@"NeRDSUInfoBuild"];

  v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v7 = [v6 objectForKeyedSubscript:@"NeRDSUInfoDoc"];

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ([*(a1 + 32) count] >= 2)
  {
    v11 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v10 = [v11 objectForKeyedSubscript:@"NeRDSUInfoVersion"];

    v12 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v9 = [v12 objectForKeyedSubscript:@"NeRDSUInfoBuild"];

    v13 = [*(a1 + 32) objectAtIndexedSubscript:1];
    v8 = [v13 objectForKeyedSubscript:@"NeRDSUInfoDoc"];
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v22 = 0;
  [*(a1 + 40) cleanDocumentation];
  v14 = *(a1 + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __68__RecoverDeviceUIExtensionRemoteViewController_showSUSelectionCard___block_invoke_767;
  v17[3] = &unk_100020708;
  v20 = v21;
  v17[4] = v14;
  v15 = v3;
  v18 = v15;
  v16 = v5;
  v19 = v16;
  [v14 collectDocumentation:v7 alternative:0 completion:v17];

  _Block_object_dispose(v21, 8);
}

id __68__RecoverDeviceUIExtensionRemoteViewController_showSUSelectionCard___block_invoke_767(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (!a3 && a2)
  {
    v5 = [a4 softwareUpdateIconImage];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [*(a1 + 32) showSUCard:*(a1 + 40) build:*(a1 + 48) icon:*(*(*(a1 + 56) + 8) + 40) isAlternate:0];
  v8 = *(a1 + 32);

  return [v8 cleanDocumentation];
}

- (void)handleOSRMessage:(id)message
{
  messageCopy = message;
  logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog = [logger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = messageCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Got OSR message %{public}@", buf, 0xCu);
  }

  if ([(RecoverDeviceUIExtensionRemoteViewController *)self setupCompleted])
  {
    oslog3 = [messageCopy objectForKeyedSubscript:@"NeRDState"];
    if ([oslog3 isEqual:@"NeRDStateUpdateFound"])
    {
      if (![(RecoverDeviceUIExtensionRemoteViewController *)self showingProgress])
      {
        serverConfig = [(RecoverDeviceUIExtensionRemoteViewController *)self serverConfig];
        v9 = [serverConfig objectForKeyedSubscript:@"NeRDIntent"];
        v10 = [v9 isEqual:@"NeRDIntentRecovery"];

        if ((v10 & 1) == 0)
        {
          v17 = [messageCopy objectForKeyedSubscript:@"NeRDUpdateFound"];
          [(RecoverDeviceUIExtensionRemoteViewController *)self showSUSelectionCard:v17];
LABEL_32:

          goto LABEL_33;
        }
      }
    }

    if ([oslog3 isEqual:@"NeRDStateEACSSuccess"])
    {
      if (![(RecoverDeviceUIExtensionRemoteViewController *)self performingEACS])
      {
        logger2 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
        oslog2 = [logger2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, oslog2, OS_LOG_TYPE_DEFAULT, "Not performing EACS, bug?", buf, 2u);
        }
      }

      selfCopy2 = self;
      v14 = 6;
      goto LABEL_17;
    }

    if ([oslog3 isEqual:@"NeRDStateInstalled"])
    {
      selfCopy2 = self;
      v14 = 4;
LABEL_17:
      [(RecoverDeviceUIExtensionRemoteViewController *)selfCopy2 showOverallResultCard:0 resultType:v14];
      goto LABEL_33;
    }

    if ([oslog3 isEqual:@"NeRDStateEACSFailed"])
    {
      v16 = [messageCopy objectForKeyedSubscript:@"NeRDError"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:@"NeRDErrorDomain"];
        v19 = [v17 objectForKeyedSubscript:@"NeRDErrorCode"];
        v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v18, [v19 integerValue], 0);
      }

      else
      {
        v20 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:10005 userInfo:0];
      }

      selfCopy4 = self;
      v25 = v20;
      v26 = 5;
LABEL_31:
      [(RecoverDeviceUIExtensionRemoteViewController *)selfCopy4 showOverallResultCard:v25 resultType:v26];

      goto LABEL_32;
    }

    if ([oslog3 isEqual:@"NeRDStateFailed"])
    {
      v21 = [messageCopy objectForKeyedSubscript:@"NeRDError"];
      v17 = v21;
      if (v21)
      {
        v22 = [v21 objectForKeyedSubscript:@"NeRDErrorDomain"];
        v23 = [v17 objectForKeyedSubscript:@"NeRDErrorCode"];
        v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v22, [v23 integerValue], 0);
      }

      else
      {
        v20 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:10005 userInfo:0];
      }

      selfCopy4 = self;
      v25 = v20;
      v26 = 2;
      goto LABEL_31;
    }

    if ([(RecoverDeviceUIExtensionRemoteViewController *)self showingProgress])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = __65__RecoverDeviceUIExtensionRemoteViewController_handleOSRMessage___block_invoke;
      v27[3] = &unk_100020498;
      v27[4] = self;
      v28 = messageCopy;
      dispatch_async(&_dispatch_main_q, v27);
    }
  }

  else
  {
    logger3 = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
    oslog3 = [logger3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, oslog3, OS_LOG_TYPE_DEFAULT, "Setup not completed, dropping message", buf, 2u);
    }
  }

LABEL_33:
}

- (void)showOverallResultCard:(id)card resultType:(int)type
{
  cardCopy = card;
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__RecoverDeviceUIExtensionRemoteViewController_showOverallResultCard_resultType___block_invoke;
  block[3] = &unk_100020758;
  block[4] = self;
  v10 = cardCopy;
  typeCopy = type;
  v8 = cardCopy;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __81__RecoverDeviceUIExtensionRemoteViewController_showOverallResultCard_resultType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowingProgress:0];
  [*(a1 + 32) setShowingResultCard:1];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = [*(a1 + 32) getOverallResultTitleStringForError:*(a1 + 40) resultType:*(a1 + 48)];
  v3 = v20[5];
  v20[5] = v2;

  v4 = [*(a1 + 32) getOverallResultSubTitleStringForError:*(a1 + 40) resultType:*(a1 + 48)];
  v5 = v14[5];
  v14[5] = v4;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__RecoverDeviceUIExtensionRemoteViewController_showOverallResultCard_resultType___block_invoke_2;
  block[3] = &unk_100020730;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v6;
  v12 = *(a1 + 48);
  v9 = v7;
  v10 = &v19;
  v11 = &v13;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __81__RecoverDeviceUIExtensionRemoteViewController_showOverallResultCard_resultType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) overallResultCard];

  v3 = [*(a1 + 32) logger];
  v4 = [v3 oslog];

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already showing overall status, not showing again", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = @"Failure";
      v8 = *(a1 + 64);
      if (!v6)
      {
        v7 = @"Success";
      }

      *buf = 138543874;
      v40 = v7;
      v41 = 1024;
      v42 = v8;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overall status is %{public}@, type:%d, err:%{public}@", buf, 0x1Cu);
    }

    v4 = objc_alloc_init(PRXIconContentViewController);
    [*(a1 + 32) setOverallResultCard:v4];
    v9 = [*(a1 + 32) overallResultCard];
    [v9 setDismissalType:3];

    v10 = [*(a1 + 32) getOverallResultUIImageForError:*(a1 + 40) resultType:*(a1 + 64)];
    v11 = *(a1 + 32);
    if (v10)
    {
      v12 = [v11 overallResultCard];
      v13 = [v12 contentView];
      [v13 addSubview:v10];

      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [UIImageSymbolConfiguration configurationWithPointSize:72.0];
      [v10 setPreferredSymbolConfiguration:v14];

      v15 = [*(a1 + 32) overallResultCard];
      v16 = [v15 contentView];
      v17 = [v16 mainContentGuide];

      v37 = [v10 topAnchor];
      v36 = [v17 topAnchor];
      v35 = [v37 constraintGreaterThanOrEqualToAnchor:v36];
      v38[0] = v35;
      v34 = [v10 centerYAnchor];
      v18 = [v17 centerYAnchor];
      v19 = [v34 constraintEqualToAnchor:v18];
      v38[1] = v19;
      v20 = [v10 centerXAnchor];
      v21 = [v17 centerXAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v38[2] = v22;
      v23 = [NSArray arrayWithObjects:v38 count:3];
      [NSLayoutConstraint activateConstraints:v23];
    }

    else
    {
      v24 = [v11 logger];
      v17 = [v24 oslog];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to get overallResult UIImage", buf, 2u);
      }
    }

    v25 = *(*(*(a1 + 48) + 8) + 40);
    v26 = [*(a1 + 32) overallResultCard];
    [v26 setTitle:v25];

    v27 = *(*(*(a1 + 56) + 8) + 40);
    v28 = [*(a1 + 32) overallResultCard];
    [v28 setSubtitle:v27];

    v29 = [*(a1 + 32) overallResultCard];
    v30 = [*(a1 + 32) getOverallResultActionForError:*(a1 + 40) resultType:*(a1 + 64)];
    v31 = [v29 addAction:v30];

    v32 = [*(a1 + 32) proxCardNavController];
    v33 = [*(a1 + 32) overallResultCard];
    [v32 pushViewController:v33 animated:1];
  }
}

- (void)updateCodeCardToSettingUpState
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__RecoverDeviceUIExtensionRemoteViewController_updateCodeCardToSettingUpState__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __78__RecoverDeviceUIExtensionRemoteViewController_updateCodeCardToSettingUpState__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIgnoreAdditionalCodes:1];
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setSettingUpDeviceCard:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__RecoverDeviceUIExtensionRemoteViewController_updateCodeCardToSettingUpState__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __78__RecoverDeviceUIExtensionRemoteViewController_updateCodeCardToSettingUpState__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) enterCodeCard];
  [v1 showActivityIndicatorWithStatus:&stru_100020878];
}

- (BOOL)isCompanionSameDevice
{
  kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v7 = [kLocalizedDeviceType containsString:@"IPHONE"];
  if (v7)
  {
    v2 = +[UIDevice currentDevice];
    model = [v2 model];
    uppercaseString = [model uppercaseString];
    if ([uppercaseString containsString:@"IPHONE"])
    {
      v8 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  if ([kLocalizedDeviceType2 containsString:@"IPAD"])
  {
    v10 = +[UIDevice currentDevice];
    model2 = [v10 model];
    uppercaseString2 = [model2 uppercaseString];
    v8 = [uppercaseString2 containsString:@"IPAD"];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

void __94__RecoverDeviceUIExtensionRemoteViewController_showCollectCodeCard_inFlags_inThrottleSeconds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 44);
    *buf = 67109376;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got request to show code card, flags: %d, ThrottleSeconds: %d", buf, 0xEu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __94__RecoverDeviceUIExtensionRemoteViewController_showCollectCodeCard_inFlags_inThrottleSeconds___block_invoke_775;
  v6[3] = &unk_1000207A8;
  v6[4] = *(a1 + 32);
  v6[5] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v6);
}

void __94__RecoverDeviceUIExtensionRemoteViewController_showCollectCodeCard_inFlags_inThrottleSeconds___block_invoke_775(uint64_t a1)
{
  v2 = [*(a1 + 32) showingResultCard];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 logger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) authenticationAttempt];
      *buf = 134217984;
      v72 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring show code card because we have an overall result card present, attempt: %llu", buf, 0xCu);
    }

LABEL_42:

    return;
  }

  v7 = [v3 enterCodeCard];

  if (!v7)
  {
    v8 = objc_alloc_init(PRXPasscodeEntryViewController);
    [*(a1 + 32) setEnterCodeCard:v8];

    v9 = [*(a1 + 32) enterCodeCard];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"AUTHENTICATION_CARD_TITLE" value:&stru_100020878 table:@"Localizable"];
    [v9 setTitle:v11];

    LODWORD(v10) = [*(a1 + 32) isCompanionSameDevice];
    v12 = [*(a1 + 32) enterCodeCard];
    v13 = +[NSBundle mainBundle];
    v14 = [*(a1 + 32) kLocalizedDeviceType];
    v15 = v14;
    v16 = @"AUTHENTICATION_CARD_DESCRIPTION";
    if (v10)
    {
      v16 = @"AUTHENTICATION_CARD_DESCRIPTION_OTHER";
    }

    v17 = [NSString stringWithFormat:@"%@_%@", v16, v14];
    v18 = [v13 localizedStringForKey:v17 value:&stru_100020878 table:@"Localizable"];
    [v12 setSubtitle:v18];

    v19 = [*(a1 + 32) enterCodeCard];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = __94__RecoverDeviceUIExtensionRemoteViewController_showCollectCodeCard_inFlags_inThrottleSeconds___block_invoke_786;
    v70[3] = &unk_100020780;
    v70[4] = *(a1 + 32);
    [v19 setTextEntryCompletionHandler:v70];
    [v19 setNumberOfDigits:6];
    [v19 setDismissalType:3];
  }

  v20 = [*(a1 + 32) proxCardNavController];
  v21 = [v20 visibleViewController];
  v22 = [*(a1 + 32) enterCodeCard];

  v23 = *(a1 + 32);
  if (v21 == v22)
  {
    v26 = [v23 logger];
    v24 = [v26 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Passcode card already visible", buf, 2u);
    }
  }

  else
  {
    v24 = [v23 proxCardNavController];
    v25 = [*(a1 + 32) enterCodeCard];
    [v24 pushViewController:v25 animated:1];
  }

  v27 = *(a1 + 40);
  if ((v27 & 0x10000) != 0)
  {
    if ([*(a1 + 32) authenticationAttempt] >= 5)
    {
      v43 = [*(a1 + 32) logger];
      v44 = [v43 oslog];

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Too many incorrect passcode attempts", buf, 2u);
      }

      v5 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:10000 userInfo:0];
      [*(a1 + 32) showOverallResultCard:v5 resultType:0];
      goto LABEL_42;
    }

    v27 = *(a1 + 40);
    if ((v27 & 0x20000) == 0)
    {
      v45 = [*(a1 + 32) enterCodeCard];
      v46 = [v45 passcodeEntryView];
      [v46 setText:&stru_100020878];

      v47 = [*(a1 + 32) logger];
      v48 = [v47 oslog];

      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Previously entered passcode was incorrect", buf, 2u);
      }

      v49 = [*(a1 + 32) enterCodeCard];
      v50 = +[NSBundle mainBundle];
      v51 = [*(a1 + 32) kLocalizedDeviceType];
      v52 = [NSString stringWithFormat:@"%@_%@", @"INVALID_CODE_ENTERED", v51];
      v53 = [v50 localizedStringForKey:v52 value:&stru_100020878 table:@"Localizable"];
      [v49 setSubtitle:v53];

      v27 = *(a1 + 40);
    }
  }

  if ((v27 & 0x20000) != 0)
  {
    v28 = [*(a1 + 32) logger];
    v29 = [v28 oslog];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 44);
      *buf = 67109120;
      LODWORD(v72) = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Additional authentication attempts throttled for an additional %d seconds", buf, 8u);
    }

    v31 = *(a1 + 32);
    if (*(a1 + 44) < 1)
    {
      [v31 setIgnoreAdditionalCodes:0];
      v54 = [*(a1 + 32) logger];
      v55 = [v54 oslog];

      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No longer throttled. Can accept new code now", buf, 2u);
      }

      v56 = [*(a1 + 32) enterCodeCard];
      v57 = +[NSBundle mainBundle];
      v58 = [*(a1 + 32) kLocalizedDeviceType];
      v59 = [NSString stringWithFormat:@"%@_%@", @"INVALID_CODE_ENTERED", v58];
      v60 = [v57 localizedStringForKey:v59 value:&stru_100020878 table:@"Localizable"];
      [v56 setSubtitle:v60];

      v41 = [*(a1 + 32) enterCodeCard];
      v42 = [v41 passcodeEntryView];
      [v42 setText:&stru_100020878];
    }

    else
    {
      if (([v31 ignoreAdditionalCodes] & 1) == 0)
      {
        v32 = [*(a1 + 32) enterCodeCard];
        v33 = [v32 passcodeEntryView];
        [v33 setText:&stru_100020878];

        [*(a1 + 32) setIgnoreAdditionalCodes:1];
        if ((*(a1 + 42) & 1) == 0)
        {
          [*(a1 + 32) setAuthenticationAttempt:{objc_msgSend(*(a1 + 32), "authenticationAttempt") - 1}];
          v34 = [*(a1 + 32) logger];
          v35 = [v34 oslog];

          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 32) authenticationAttempt];
            *buf = 134217984;
            v72 = v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Passcode didn't get checked because of throttling, reducing the attempt count to %llu", buf, 0xCu);
          }
        }
      }

      v37 = +[NSBundle mainBundle];
      v38 = [*(a1 + 32) kLocalizedDeviceType];
      v39 = [NSString stringWithFormat:@"%@_%@", @"INVALID_CODE_ENTERED_THROTTLED", v38];
      v40 = [v37 localizedStringForKey:v39 value:&stru_100020878 table:@"Localizable"];
      v41 = [NSString stringWithFormat:v40, *(a1 + 44)];

      v42 = [*(a1 + 32) enterCodeCard];
      [v42 setSubtitle:v41];
    }
  }

  if ((*(a1 + 42) & 3) == 0)
  {
    v61 = [*(a1 + 32) logger];
    v62 = [v61 oslog];

    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Not throttled and no error. Setting subtitle back to default", buf, 2u);
    }

    [*(a1 + 32) setIgnoreAdditionalCodes:0];
    v63 = [*(a1 + 32) isCompanionSameDevice];
    v5 = [*(a1 + 32) enterCodeCard];
    v64 = +[NSBundle mainBundle];
    v65 = [*(a1 + 32) kLocalizedDeviceType];
    v66 = v65;
    if (v63)
    {
      v67 = @"AUTHENTICATION_CARD_DESCRIPTION_OTHER";
    }

    else
    {
      v67 = @"AUTHENTICATION_CARD_DESCRIPTION";
    }

    v68 = [NSString stringWithFormat:@"%@_%@", v67, v65];
    v69 = [v64 localizedStringForKey:v68 value:&stru_100020878 table:@"Localizable"];
    [v5 setSubtitle:v69];

    goto LABEL_42;
  }
}

void __94__RecoverDeviceUIExtensionRemoteViewController_showCollectCodeCard_inFlags_inThrottleSeconds___block_invoke_786(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ignoreAdditionalCodes];
  v5 = [*(a1 + 32) logger];
  v6 = [v5 oslog];

  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v15 = 138543362;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring user entered code %{public}@ due to flag", &v15, 0xCu);
    }

    v8 = [*(a1 + 32) enterCodeCard];
    v9 = [v8 passcodeEntryView];
    [v9 setText:&stru_100020878];
  }

  else
  {
    if (v7)
    {
      v10 = [*(a1 + 32) authenticationAttempt];
      v15 = 138543618;
      v16 = v3;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User entered code %{public}@, attempt # %llu", &v15, 0x16u);
    }

    [*(a1 + 32) setAuthenticationAttempt:{objc_msgSend(*(a1 + 32), "authenticationAttempt") + 1}];
    v11 = [*(a1 + 32) authenticationAttempt];
    v12 = *(a1 + 32);
    if (v11 < 6)
    {
      [v12 waitForServerResponse];
      v8 = [*(a1 + 32) setupkitClient];
      [v8 tryPassword:v3];
    }

    else
    {
      v13 = [v12 logger];
      v14 = [v13 oslog];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Too many passcode attempts", &v15, 2u);
      }

      v8 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:10000 userInfo:0];
      [*(a1 + 32) showOverallResultCard:v8 resultType:0];
    }
  }
}

- (void)recoverButtonPressed
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User asked to recover remote device", buf, 2u);
  }

  v4 = [*(a1 + 32) setupkitClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke_794;
  v6[3] = &unk_1000207D0;
  v7 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke_2;
  v5[3] = &unk_100020618;
  v5[4] = v7;
  [v4 registerEventID:@"osrEventID" options:0 eventHandler:v6 completionHandler:v5];
}

void __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 logger];
    v6 = [v5 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed registering for osr events", buf, 2u);
    }

    [*(a1 + 32) showOverallResultCard:v3 resultType:0];
  }

  else
  {
    v7 = [v4 setupkitClient];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke_796;
    v8[3] = &unk_100020618;
    v8[4] = *(a1 + 32);
    [v7 activateWithCompletion:v8];
  }
}

void __68__RecoverDeviceUIExtensionRemoteViewController_recoverButtonPressed__block_invoke_796(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = [*(a1 + 32) logger];
    v7 = [v6 oslog];

    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5 == -6721)
    {
      if (v8)
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setupkit client is already activated.", &v11, 2u);
      }
    }

    else
    {
      if (v8)
      {
        v11 = 138543362;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to activate setupkit client: %{public}@", &v11, 0xCu);
      }

      [*(a1 + 32) showOverallResultCard:v4 resultType:0];
    }
  }

  else
  {
    v9 = [*(a1 + 32) logger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully activated setupkit client", &v11, 2u);
    }

    [*(a1 + 32) waitForServerResponse];
  }
}

- (id)notNowButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NOT_NOW" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __66__RecoverDeviceUIExtensionRemoteViewController_notNowButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:1 handler:v7];

  return v5;
}

void __66__RecoverDeviceUIExtensionRemoteViewController_notNowButtonAction__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__RecoverDeviceUIExtensionRemoteViewController_notNowButtonAction__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __66__RecoverDeviceUIExtensionRemoteViewController_notNowButtonAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing card by user request", v5, 2u);
  }

  v4 = [*(a1 + 32) proxCardNavController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)showLearnMoreCard
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __65__RecoverDeviceUIExtensionRemoteViewController_showLearnMoreCard__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __65__RecoverDeviceUIExtensionRemoteViewController_showLearnMoreCard__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PRXIconContentViewController);
  [*(a1 + 32) setLearnMoreCard:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __65__RecoverDeviceUIExtensionRemoteViewController_showLearnMoreCard__block_invoke_2;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __65__RecoverDeviceUIExtensionRemoteViewController_showLearnMoreCard__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) learnMoreCard];
  [v2 setDismissalType:3];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LEARN_MORE_TITLE" value:&stru_100020878 table:@"Localizable"];
  v5 = [*(a1 + 32) learnMoreCard];
  [v5 setTitle:v4];

  LODWORD(v4) = [*(a1 + 32) useAlternateStringForWiFI];
  v6 = +[NSBundle mainBundle];
  if (v4)
  {
    v7 = @"LEARN_MORE_SUBTITLE_WLAN";
  }

  else
  {
    v7 = @"LEARN_MORE_SUBTITLE";
  }

  v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:v7];
  v9 = [*(a1 + 32) kLocalizedDeviceType];
  v10 = [NSString stringWithFormat:@"%@_%@", v8, v9];
  v11 = [v6 localizedStringForKey:v10 value:&stru_100020878 table:@"Localizable"];
  v12 = [*(a1 + 32) learnMoreCard];
  [v12 setSubtitle:v11];

  v13 = [*(a1 + 32) learnMoreCard];
  v14 = [*(a1 + 32) recoverButtonAction];
  v15 = [v13 addAction:v14];

  v16 = [*(a1 + 32) learnMoreCard];
  v17 = [*(a1 + 32) notNowButtonAction];
  v18 = [v16 addAction:v17];

  v20 = [*(a1 + 32) proxCardNavController];
  v19 = [*(a1 + 32) learnMoreCard];
  [v20 pushViewController:v19 animated:1];
}

- (id)recoverButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CONTINUE_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __67__RecoverDeviceUIExtensionRemoteViewController_recoverButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:0 handler:v7];

  return v5;
}

id __67__RecoverDeviceUIExtensionRemoteViewController_recoverButtonAction__block_invoke(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = [*(a1 + 32) initialCard];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"MAIN_CARD_CONNECTING" value:&stru_100020878 table:@"Localizable"];
  [v3 showActivityIndicatorWithStatus:v5];

  v6 = *(a1 + 32);

  return [v6 recoverButtonPressed];
}

- (id)learnMoreButtonAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"LEARN_MORE_BUTTON_TEXT" value:&stru_100020878 table:@"Localizable"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __69__RecoverDeviceUIExtensionRemoteViewController_learnMoreButtonAction__block_invoke;
  v7[3] = &unk_1000204E8;
  v7[4] = self;
  v5 = [PRXAction actionWithTitle:v4 style:1 handler:v7];

  return v5;
}

id __69__RecoverDeviceUIExtensionRemoteViewController_learnMoreButtonAction__block_invoke(uint64_t a1, void *a2)
{
  [a2 setEnabled:0];
  v3 = *(a1 + 32);

  return [v3 showLearnMoreCard];
}

- (void)setInitialCardForSetup
{
  v3 = +[NSBundle mainBundle];
  kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v5 = [NSString stringWithFormat:@"%@_%@", @"MAIN_CARD_TITLE", kLocalizedDeviceType];
  v6 = [v3 localizedStringForKey:v5 value:&stru_100020878 table:@"Localizable"];

  if ([(RecoverDeviceUIExtensionRemoteViewController *)self extendedMode])
  {
    v7 = +[NSBundle mainBundle];
    kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
    v9 = [NSString stringWithFormat:@"%@_%@", @"MAIN_CARD_TITLE_EXT", kLocalizedDeviceType2];
    v10 = [v7 localizedStringForKey:v9 value:&stru_100020878 table:@"Localizable"];

    v6 = v10;
  }

  initialCard = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  [initialCard setTitle:v6];

  v12 = +[NSBundle mainBundle];
  v13 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MAIN_CARD_DESCRIPTION"];
  kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v15 = [NSString stringWithFormat:@"%@_%@", v13, kLocalizedDeviceType3];
  v16 = [v12 localizedStringForKey:v15 value:&stru_100020878 table:@"Localizable"];

  v46 = v6;
  if (os_variant_has_internal_content())
  {
    v17 = +[NSBundle mainBundle];
    kLocalizedDeviceType4 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
    v19 = [v17 localizedStringForKey:kLocalizedDeviceType4 value:&stru_100020878 table:@"Localizable"];
    v20 = [v16 stringByAppendingFormat:@"[Internal Only]: Please put %@ into DFU and restore", v19];

    v16 = v20;
  }

  v43 = v16;
  initialCard2 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  [initialCard2 setSubtitle:v16];

  initialCard3 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  [initialCard3 setDismissalType:3];

  initialCard4 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  recoverButtonAction = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverButtonAction];
  v25 = [initialCard4 addAction:recoverButtonAction];

  initialCard5 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  learnMoreButtonAction = [(RecoverDeviceUIExtensionRemoteViewController *)self learnMoreButtonAction];
  v28 = [initialCard5 addAction:learnMoreButtonAction];

  uiImage = [(RecoverDeviceUIExtensionRemoteViewController *)self uiImage];
  [uiImage setTranslatesAutoresizingMaskIntoConstraints:0];
  initialCard6 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  contentView = [initialCard6 contentView];
  [contentView addSubview:uiImage];

  initialCard7 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  contentView2 = [initialCard7 contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [uiImage topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v35 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v47[0] = v35;
  centerYAnchor = [uiImage centerYAnchor];
  centerYAnchor2 = [mainContentGuide centerYAnchor];
  v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[1] = v38;
  centerXAnchor = [uiImage centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v47[2] = v41;
  v42 = [NSArray arrayWithObjects:v47 count:3];
  [NSLayoutConstraint activateConstraints:v42];
}

- (void)setInitialCardForResume
{
  initialCard = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  v4 = +[NSBundle mainBundle];
  kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v6 = [NSString stringWithFormat:@"%@_%@", @"MAIN_CARD_TITLE_EXT", kLocalizedDeviceType];
  v7 = [v4 localizedStringForKey:v6 value:&stru_100020878 table:@"Localizable"];
  [initialCard setTitle:v7];

  initialCard2 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  [initialCard2 setDismissalType:3];

  uiImage = [(RecoverDeviceUIExtensionRemoteViewController *)self uiImage];
  [uiImage setTranslatesAutoresizingMaskIntoConstraints:0];
  initialCard3 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  contentView = [initialCard3 contentView];
  [contentView addSubview:uiImage];

  initialCard4 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  contentView2 = [initialCard4 contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [uiImage topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v15 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v29[0] = v15;
  centerYAnchor = [uiImage centerYAnchor];
  v28 = mainContentGuide;
  centerYAnchor2 = [mainContentGuide centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v29[1] = v18;
  centerXAnchor = [uiImage centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v29[2] = v21;
  v22 = [NSArray arrayWithObjects:v29 count:3];
  [NSLayoutConstraint activateConstraints:v22];

  initialCard5 = [(RecoverDeviceUIExtensionRemoteViewController *)self initialCard];
  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"MAIN_CARD_CONNECTING" value:&stru_100020878 table:@"Localizable"];
  [initialCard5 showActivityIndicatorWithStatus:v25];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RecoverDeviceUIExtensionRemoteViewController;
  [(RecoverDeviceUIExtensionRemoteViewController *)&v6 viewDidLoad];
  logger = [(RecoverDeviceUIExtensionRemoteViewController *)self logger];
  oslog = [logger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "RecoverDeviceUI ViewDidLoad", v5, 2u);
  }
}

- (id)uiImage
{
  kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v4 = [kLocalizedDeviceType isEqualToString:@"DEVICE_TYPE_WATCH"];

  if (v4)
  {
    v5 = [UIImage systemImageNamed:@"exclamationmark.applewatch"];
    goto LABEL_12;
  }

  kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v7 = [kLocalizedDeviceType2 isEqualToString:@"DEVICE_TYPE_ATV"];

  if (v7)
  {
    v8 = @"appletv.badge.exclamationmark";
LABEL_11:
    v5 = [UIImage _systemImageNamed:v8];
LABEL_12:
    v15 = v5;
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v10 = [kLocalizedDeviceType3 isEqualToString:@"DEVICE_TYPE_VISION"];

  if (v10)
  {
    v8 = @"visionpro.badge.exclamationmark";
    goto LABEL_11;
  }

  kLocalizedDeviceType4 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v12 = [kLocalizedDeviceType4 isEqualToString:@"DEVICE_TYPE_IPHONE"];

  if (v12)
  {
    v8 = @"iphone.badge.exclamationmark";
    goto LABEL_11;
  }

  kLocalizedDeviceType5 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v14 = [kLocalizedDeviceType5 isEqualToString:@"DEVICE_TYPE_IPAD"];

  if (v14)
  {
    v8 = @"ipad.badge.exclamationmark";
    goto LABEL_11;
  }

LABEL_13:
  v15 = [UIImage systemImageNamed:@"xmark.octagon.fill"];
LABEL_14:
  v16 = [[UIImageView alloc] initWithImage:v15];
  v17 = +[UIColor systemGray3Color];
  [v16 setTintColor:v17];

  v18 = [UIImageSymbolConfiguration configurationWithPointSize:120.0];
  [v16 setPreferredSymbolConfiguration:v18];

  return v16;
}

- (id)uiImageEACS
{
  kLocalizedDeviceType = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v4 = [kLocalizedDeviceType isEqualToString:@"DEVICE_TYPE_WATCH"];

  if (v4)
  {
    v5 = [UIImage systemImageNamed:@"applewatch.slash"];
    goto LABEL_12;
  }

  kLocalizedDeviceType2 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v7 = [kLocalizedDeviceType2 isEqualToString:@"DEVICE_TYPE_ATV"];

  if (v7)
  {
    v8 = @"appletv.slash";
LABEL_11:
    v5 = [UIImage _systemImageNamed:v8];
LABEL_12:
    v15 = v5;
    if (v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  kLocalizedDeviceType3 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v10 = [kLocalizedDeviceType3 isEqualToString:@"DEVICE_TYPE_VISION"];

  if (v10)
  {
    v8 = @"visionpro.slash";
    goto LABEL_11;
  }

  kLocalizedDeviceType4 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v12 = [kLocalizedDeviceType4 isEqualToString:@"DEVICE_TYPE_IPHONE"];

  if (v12)
  {
    v8 = @"iphone.slash";
    goto LABEL_11;
  }

  kLocalizedDeviceType5 = [(RecoverDeviceUIExtensionRemoteViewController *)self kLocalizedDeviceType];
  v14 = [kLocalizedDeviceType5 isEqualToString:@"DEVICE_TYPE_IPAD"];

  if (v14)
  {
    v8 = @"rectangle.portrait.slash";
    goto LABEL_11;
  }

LABEL_13:
  v15 = [UIImage systemImageNamed:@"square.slash"];
LABEL_14:
  v16 = [[UIImageView alloc] initWithImage:v15];

  return v16;
}

- (void)setupStop
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__RecoverDeviceUIExtensionRemoteViewController_setupStop__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __57__RecoverDeviceUIExtensionRemoteViewController_setupStop__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupkitClient];

  if (v2)
  {
    v3 = [*(a1 + 32) logger];
    v4 = [v3 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupkitClient exist. Invalidating client", v8, 2u);
    }

    v5 = [*(a1 + 32) setupkitClient];
    [v5 deregisterEventID:@"osrEventID" completionHandler:&__block_literal_global_872];

    v6 = [*(a1 + 32) setupkitClient];
    [v6 invalidate];

    [*(a1 + 32) setSetupkitClient:0];
    v7 = [*(a1 + 32) setupTimer];
    [v7 invalidate];

    [*(a1 + 32) setSetupTimer:0];
  }
}

- (void)waitForServerResponse
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

void __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "will wait for server response", buf, 2u);
  }

  v4 = [*(a1 + 32) setupTimer];
  [v4 invalidate];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke_874;
  v8[3] = &unk_100020838;
  v8[4] = *(a1 + 32);
  v5 = [NSTimer timerWithTimeInterval:0 repeats:v8 block:10.0];
  [*(a1 + 32) setSetupTimer:v5];

  v6 = +[NSRunLoop mainRunLoop];
  v7 = [*(a1 + 32) setupTimer];
  [v6 addTimer:v7 forMode:NSRunLoopCommonModes];
}

void __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke_874(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "timed out waiting for server response", buf, 2u);
  }

  [*(a1 + 32) setupStop];
  v4 = [*(a1 + 32) recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke_875;
  block[3] = &unk_1000204C0;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void __69__RecoverDeviceUIExtensionRemoteViewController_waitForServerResponse__block_invoke_875(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"TapToRecoverProxCardError" code:10004 userInfo:0];
  [v1 showOverallResultCard:v2 resultType:3];
}

- (void)doneWaitingForServerResponse
{
  recoverDeviceOperationsQueue = [(RecoverDeviceUIExtensionRemoteViewController *)self recoverDeviceOperationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__RecoverDeviceUIExtensionRemoteViewController_doneWaitingForServerResponse__block_invoke;
  block[3] = &unk_1000204C0;
  block[4] = self;
  dispatch_async(recoverDeviceOperationsQueue, block);
}

id __76__RecoverDeviceUIExtensionRemoteViewController_doneWaitingForServerResponse__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "done waiting for server response", v6, 2u);
  }

  v4 = [*(a1 + 32) setupTimer];
  [v4 invalidate];

  return [*(a1 + 32) setSetupTimer:0];
}

- (void)proxCardFlowWillPresent
{
  _remoteViewControllerProxy = [(RecoverDeviceUIExtensionRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
}

- (void)proxCardFlowDidDismiss
{
  _remoteViewControllerProxy = [(RecoverDeviceUIExtensionRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

@end
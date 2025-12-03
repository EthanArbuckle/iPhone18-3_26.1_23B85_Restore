@interface HNDRuntimeManager
- (BOOL)_accessibilityHandleAccessibilityEvent:(id)event;
- (BOOL)_handleSoundEvent:(int64_t)event;
- (BOOL)_urlMatchesLoadableCode:(id)code;
- (BOOL)setupRuntime;
- (HNDRuntimeManager)init;
- (HNDRuntimeManagerDelegate)delegate;
- (void)_assistAppValidationMode;
- (void)_assistiveTouchEnabledChange;
- (void)_assistiveTouchSettingsChanged;
- (void)_attemptStopAfterDelay;
- (void)_disableUserInterfaceClient;
- (void)_languageChanged:(id)changed;
- (void)_scannerEnabledChange;
- (void)_sendASTEnabledTipSignal;
- (void)_springBoardDied:(id)died;
- (void)_startAccessibilityEventProcessor;
- (void)_stopEventProcessor;
- (void)cleanupRuntime;
- (void)dealloc;
- (void)initializeSystemSettings;
- (void)showBannerWithTitle:(id)title text:(id)text;
- (void)startRuntime;
- (void)stop;
- (void)stopIfAllowed;
@end

@implementation HNDRuntimeManager

- (HNDRuntimeManager)init
{
  v10.receiver = self;
  v10.super_class = HNDRuntimeManager;
  v2 = [(HNDRuntimeManager *)&v10 init];
  if (v2)
  {
    v3 = ASTLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Observing notifications at startup.", v9, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000C64AC, AXSystemAppServerReadyNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_springBoardDied:" name:AXSystemAppServerDiedNotification object:0];

    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_1000C6518, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, sub_1000C6518, @"com.apple.purplebuddy.LanguageResetReady", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (BOOL)setupRuntime
{
  if ((AXIsInternalInstall() & 1) == 0)
  {
    ASTLogRuntimeManager();
  }

  v3 = ASTLogRuntimeManager();
  spid = os_signpost_id_generate(v3);

  v4 = ASTLogRuntimeManager();
  v5 = v4;
  v44 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Setup AST/SC runtime.", "", buf, 2u);
  }

  if (AXIsInternalInstall())
  {
    objc_initWeak(buf, self);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000C6DEC;
    v48[3] = &unk_1001D3460;
    objc_copyWeak(&v49, buf);
    v6 = objc_retainBlock(v48);
    v7 = +[AXSettings sharedInstance];
    appValidationTestingMode = [v7 appValidationTestingMode];

    if (appValidationTestingMode)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }

    else
    {
      v9 = +[AXSettings sharedInstance];
      [v9 registerUpdateBlock:v6 forRetrieveSelector:"appValidationTestingMode" withListener:self];
    }

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
  }

  v46 = +[NSProcessInfo processInfo];
  environment = [v46 environment];
  v11 = [environment objectForKey:@"AX_DEBUG_SCAT"];

  if (v11)
  {
    v12 = ASTLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Launched via external tool.", buf, 2u);
    }

    _AXSAssistiveTouchScannerSetEnabled();
LABEL_15:
    v47[5] = _NSConcreteStackBlock;
    v47[6] = 3221225472;
    v47[7] = sub_1000C6E2C;
    v47[8] = &unk_1001D3488;
    v47[9] = self;
    AXPerformBlockOnMainThreadAfterDelay();
    v13 = +[SCATScannerManager sharedManager];
    if (AXInPreboardScenario())
    {
      v14 = ASTLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "In PreBoard, so not bothering to wait for SpringBoard server.  Registering for notification when PreBoard status changes...", buf, 2u);
      }

      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, 0, sub_1000C6EA0, AXInPreBoardScenarioUpdatedNotification, 0, CFNotificationSuspensionBehaviorCoalesce);
    }

    else
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000C6F18;
      v47[3] = &unk_1001D6EF0;
      v47[4] = spid;
      v16 = objc_retainBlock(v47);
      v17 = ASTLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Checking in with system app.", buf, 2u);
      }

      v18 = +[AXSystemAppServer server];
      v19 = [v18 pid];

      if (v19 < 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = (v16[2].isa)(v16);
      }

      self->_systemAppReady = v20;
      v28 = +[NSDate date];
      while (![(HNDRuntimeManager *)self systemAppReady])
      {
        if ([(HNDRuntimeManager *)self shouldStop])
        {
          v36 = ASTLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10012ADD4(v36);
          }

          goto LABEL_50;
        }

        if (v19 <= 0)
        {
          v29 = 1.0;
        }

        else
        {
          v29 = 0.0500000007;
        }

        CFRunLoopRunInMode(kCFRunLoopDefaultMode, v29, 0);
        if (v19 <= 0 && (+[AXSystemAppServer server](AXSystemAppServer, "server"), v30 = objc_claimAutoreleasedReturnValue(), v19 = [v30 pid], v30, v19 < 1))
        {
          v31 = 0;
        }

        else
        {
          v31 = (v16[2].isa)(v16);
        }

        self->_systemAppReady = v31;
        v32 = ASTLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Waiting on screen bounds and system app: %d.", buf, 8u);
        }

        v33 = +[NSDate date];
        [v33 timeIntervalSinceDate:v28];
        v35 = v34 > 180.0;

        if (v35)
        {
          v36 = ASTLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Timed out waiting for system app.", buf, 2u);
          }

LABEL_50:

          break;
        }
      }

      if (![(HNDRuntimeManager *)self systemAppReady])
      {
        v40 = ASTLogCommon();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "System app not running. Exiting.", buf, 2u);
        }

        v41 = ASTLogRuntimeManager();
        v42 = v41;
        if (v44 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_END, spid, "Setup AST/SC runtime", "", buf, 2u);
        }

        v27 = 0;
        goto LABEL_63;
      }
    }

    v38 = +[SCATScannerManager sharedManager];
    [v38 setDelegate:self];

    [HNDHandManager screenFrame:]_0();
    v39 = ASTLogRuntimeManager();
    v16 = v39;
    if (v44 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, spid, "Setup AST/SC runtime", "", buf, 2u);
    }

    v27 = 1;
LABEL_63:

    goto LABEL_64;
  }

  if (!_AXSAssistiveTouchScannerEnabled())
  {
    goto LABEL_15;
  }

  v21 = +[AXSettings sharedInstance];
  switchControlIsEnabledAsReceiver = [v21 switchControlIsEnabledAsReceiver];

  if (!switchControlIsEnabledAsReceiver)
  {
    goto LABEL_15;
  }

  v23 = ASTLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Switch Control was only enabled because it was a receiver. We should disable it now.", buf, 2u);
  }

  v24 = +[AXSettings sharedInstance];
  [v24 setSwitchControlIsEnabledAsReceiver:0];

  _AXSAssistiveTouchScannerSetEnabled();
  v25 = ASTLogRuntimeManager();
  v26 = v25;
  if (v44 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, spid, "Setup AST/SC runtime.", "", buf, 2u);
  }

  v27 = 0;
LABEL_64:

  return v27;
}

- (void)initializeSystemSettings
{
  v3 = ASTLogRuntimeManager();
  v4 = os_signpost_id_generate(v3);

  v5 = ASTLogRuntimeManager();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "AST/SC initializeSystemSettings", "", buf, 2u);
  }

  BKSHIDEventRegisterEventCallback();
  v7 = +[HNDSecureIntentManager sharedInstance];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, sub_1000C71BC, kAXSAssistiveTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v9, self, sub_1000C71BC, kAXSAssistiveTouchScannerEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v10, self, sub_1000C71BC, kAXSAssistiveTouchSettingsChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(HNDRuntimeManager *)self _assistiveTouchSettingsChanged];
  v11 = +[AXBackBoardServer server];
  [v11 registerAssistiveTouchPID:getpid()];

  v12 = +[UIPeripheralHost sharedInstance];
  [v12 setKeyboardFencingEnabled:0];

  [(HNDRuntimeManager *)self _sendASTEnabledTipSignal];
  v13 = ASTLogRuntimeManager();
  v14 = v13;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v4, "AST/SC initializeSystemSettings", "", v15, 2u);
  }
}

- (void)startRuntime
{
  v3 = ASTLogRuntimeManager();
  v4 = os_signpost_id_generate(v3);

  v5 = ASTLogRuntimeManager();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Start AST/SC runtime", "", buf, 2u);
  }

  v7 = +[HNDHandManager sharedManager];
  [v7 setupNonSceneUI:0];

  v8 = +[HNDHandManager sharedManager];
  [v8 systemServerConnected];

  v9 = +[HNDDeviceManager sharedManager];
  [v9 setDetectDevices:1];

  v10 = +[SCATScannerManager sharedManager];
  [(HNDRuntimeManager *)self _startAccessibilityEventProcessor];
  v11 = ASTLogRuntimeManager();
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v4, "Start AST/SC runtime", "", v13, 2u);
  }
}

- (void)cleanupRuntime
{
  v2 = +[SCATScannerManager sharedManager];
  [v2 unloadScanner];
}

- (void)dealloc
{
  [(HNDRuntimeManager *)self _stopEventProcessor];
  v3 = +[SCATScannerManager sharedManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = HNDRuntimeManager;
  [(HNDRuntimeManager *)&v4 dealloc];
}

- (void)_languageChanged:(id)changed
{
  changedCopy = changed;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "*** Detected language change. Will restart now", v5, 2u);
  }

  exit(1);
}

- (void)_springBoardDied:(id)died
{
  diedCopy = died;
  v4 = ASTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SpringBoard died. Terminating.", v5, 2u);
  }

  exit(0);
}

- (void)_attemptStopAfterDelay
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will attempt stop after delay.", buf, 2u);
  }

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_assistiveTouchEnabledChange
{
  if (_AXSAssistiveTouchEnabled())
  {
    v4 = +[HNDDeviceManager sharedManager];
    [v4 restartDeviceDetection];

    v5 = +[HNDHandManager sharedManager];
    [v5 restartEverything];
  }

  else if (!_AXSAssistiveTouchEnabled())
  {
    v6 = +[HNDHandManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C7848;
    v7[3] = &unk_1001D41D8;
    v7[4] = a2;
    [v6 enumerateDisplayManagersWithBlock:v7];

    [(HNDRuntimeManager *)self _attemptStopAfterDelay];
  }

  [(HNDRuntimeManager *)self _sendASTEnabledTipSignal];
}

- (void)_sendASTEnabledTipSignal
{
  v2 = _AXSAssistiveTouchEnabled() != 0;
  v3 = BiomeLibrary();
  discoverability = [v3 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v11 = @"enabled";
  v7 = [NSNumber numberWithBool:v2];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:0];

  v10 = [[BMDiscoverabilitySignals alloc] initWithContentIdentifier:@"com.apple.assistivetouchd.ios-enabled" context:@"AssistiveTouch" osBuild:0 userInfo:v9];
  [source sendEvent:v10];
}

- (void)_scannerEnabledChange
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v3 = +[HNDDeviceManager sharedManager];
    [v3 restartDeviceDetection];

    v4 = +[HNDHandManager sharedManager];
    [v4 enumerateDisplayManagersWithBlock:&stru_1001D6F10];
  }

  else
  {
    AXPerformBlockAsynchronouslyOnMainThread();

    [(HNDRuntimeManager *)self _attemptStopAfterDelay];
  }
}

- (void)_assistiveTouchSettingsChanged
{
  v2 = ASTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AST settings changed", v4, 2u);
  }

  v3 = +[HNDHandManager sharedManager];
  [v3 updateAllSettings];
}

- (void)stop
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping now.", buf, 2u);
  }

  v4 = +[HNDEventManager sharedManager];
  [v4 resetEventManager];

  v5 = +[HNDEventManager sharedManager];
  [v5 setDisableSystemGesturesAssertion:0];

  if (_AXSApplicationAccessibilityEnabled() && _AXSCanDisableApplicationAccessibility())
  {
    _AXSApplicationAccessibilitySetEnabled();
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = +[NSOperationQueue currentQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C7DEC;
  v9[3] = &unk_1001D6F98;
  v9[4] = self;
  v8 = [v6 addObserverForName:@"HNDEventManagerReset" object:0 queue:v7 usingBlock:v9];
}

- (void)stopIfAllowed
{
  if (_AXSAssistiveTouchEnabled() || _AXSAssistiveTouchScannerEnabled() || (+[SCATScannerManager sharedManager](SCATScannerManager, "sharedManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isHandlingInterDeviceCommunication], v3, (v4 & 1) != 0))
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _AXSAssistiveTouchEnabled();
      v7 = _AXSAssistiveTouchScannerEnabled();
      v8 = +[SCATScannerManager sharedManager];
      v10[0] = 67109632;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      v13 = 1024;
      isHandlingInterDeviceCommunication = [v8 isHandlingInterDeviceCommunication];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not allowed to stop. AST: %i, Switch Control: %i, inter device communication: %i", v10, 0x14u);
    }
  }

  else
  {
    _AXSAssistiveTouchSetEnabled();
    _AXSAssistiveTouchScannerSetEnabled();
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AssistiveTouch preference was not enabled. Shutting down", v10, 2u);
    }

    [(HNDRuntimeManager *)self stop];
  }
}

- (BOOL)_urlMatchesLoadableCode:(id)code
{
  absoluteString = [code absoluteString];
  if ([absoluteString containsString:@"AccessibilityBundles"] & 1) != 0 || (objc_msgSend(absoluteString, "containsString:", @"Accessibility.framework") & 1) != 0 || objc_msgSend(absoluteString, "containsString:", @"AX") && (objc_msgSend(absoluteString, "containsString:", @"ServerInstance"))
  {
LABEL_3:
    v4 = 0;
    goto LABEL_4;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [&off_1001E4F38 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
LABEL_9:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(&off_1001E4F38);
      }

      if ([absoluteString containsString:*(*(&v10 + 1) + 8 * v9)])
      {
        goto LABEL_3;
      }

      if (v7 == ++v9)
      {
        v7 = [&off_1001E4F38 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  if ([absoluteString hasSuffix:@"bundle/"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [absoluteString hasSuffix:@"framework/"];
  }

LABEL_4:

  return v4;
}

- (void)_assistAppValidationMode
{
  v3 = +[AXSettings sharedInstance];
  appValidationTestingMode = [v3 appValidationTestingMode];

  if (appValidationTestingMode)
  {
    v5 = +[HNDDefaults sharedDefaults];
    [v5 setPreference:&__kCFBooleanTrue forKey:@"AppValidationAssistanceInProgress"];

    v6 = ASTLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Assisting app validation by loading everything on the system", buf, 2u);
    }

    v7 = +[NSFileManager defaultManager];
    v8 = [NSURL fileURLWithPath:@"/System/Library"];
    v26 = NSURLIsDirectoryKey;
    v9 = [NSArray arrayWithObjects:&v26 count:1];
    v10 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:v9 options:0 errorHandler:&stru_1001D6FD8];

    NSSetUncaughtExceptionHandler(nullsub_7);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if ([(HNDRuntimeManager *)self _urlMatchesLoadableCode:v15])
          {
            v16 = ASTLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v15;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Loading: %@", buf, 0xCu);
            }

            v17 = [NSBundle bundleWithURL:v15];
            [v17 load];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v12);
    }

    v18 = +[HNDDefaults sharedDefaults];
    [v18 setPreference:&__kCFBooleanFalse forKey:@"AppValidationAssistanceInProgress"];
  }

  else
  {
    v11 = ASTLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "App validation mode not enabled, not loading code", buf, 2u);
    }
  }
}

- (void)_startAccessibilityEventProcessor
{
  eventProcessor = [(HNDRuntimeManager *)self eventProcessor];
  if (!eventProcessor)
  {
    eventProcessor = [[AXEventProcessor alloc] initWithHIDTapIdentifier:@"AX AssistiveTouch" HIDEventTapPriority:25 systemEventTapIdentifier:0 systemEventTapPriority:25];
    [eventProcessor setHIDEventFilterMask:32];
    objc_initWeak(&location, self);
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_1000C86A0;
    v7 = &unk_1001D5BC0;
    objc_copyWeak(&v8, &location);
    [eventProcessor setHIDEventHandler:&v4];
    [eventProcessor beginHandlingHIDEventsForReason:{@"AX AssistiveTouch Accessibility Event Handler", v4, v5, v6, v7}];
    [(HNDRuntimeManager *)self setEventProcessor:eventProcessor];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_stopEventProcessor
{
  eventProcessor = [(HNDRuntimeManager *)self eventProcessor];
  [eventProcessor endHandlingHIDEventsForReason:@"AX AssistiveTouch Accessibility Event Handler"];
}

- (BOOL)_accessibilityHandleAccessibilityEvent:(id)event
{
  accessibilityData = [event accessibilityData];
  if ([accessibilityData page] == 3)
  {
    v5 = -[HNDRuntimeManager _handleSoundEvent:](self, "_handleSoundEvent:", [accessibilityData usage]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_handleSoundEvent:(int64_t)event
{
  v4 = +[AXSettings sharedInstance];
  assistiveTouchActionsBySoundAction = [v4 assistiveTouchActionsBySoundAction];

  if (_AXSAssistiveTouchEnabled() && [assistiveTouchActionsBySoundAction count] && AXDeviceSupportsOnDeviceEyeTracking() && (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "assistiveTouchMouseOnDeviceEyeTrackingEnabled"), v6, v7))
  {
    v8 = [NSNumber numberWithLong:event];
    stringValue = [v8 stringValue];
    v10 = [assistiveTouchActionsBySoundAction objectForKeyedSubscript:stringValue];

    v11 = v10 != 0;
    if (v10)
    {
      if ((event - 1) > 0xD)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(&off_1001D6FF8 + event - 1);
      }

      v14 = v12;
      v15 = v10;
      AXPerformBlockOnMainThread();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)showBannerWithTitle:(id)title text:(id)text
{
  textCopy = text;
  titleCopy = title;
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_disableUserInterfaceClient" object:0];
  v8 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v8 currentDisplayManager];
  [currentDisplayManager addUserInterfaceClientEnabler:@"AssistiveTouchSoundActions"];

  v10 = +[HNDHandManager sharedManager];
  currentDisplayManager2 = [v10 currentDisplayManager];
  [currentDisplayManager2 showSimpleBannerWithTitle:titleCopy text:textCopy];

  [(HNDRuntimeManager *)self performSelector:"_disableUserInterfaceClient" withObject:0 afterDelay:15.0];
}

- (void)_disableUserInterfaceClient
{
  v3 = +[HNDHandManager sharedManager];
  currentDisplayManager = [v3 currentDisplayManager];
  [currentDisplayManager removeUserInterfaceClientEnabler:@"AssistiveTouchSoundActions"];
}

- (HNDRuntimeManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
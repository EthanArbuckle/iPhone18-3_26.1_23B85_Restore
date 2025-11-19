@interface PUSPasscodeSettingsListController
+ (BOOL)_supportsSettingShowComplicationDataWhenPasscodeLocked;
- (BOOL)_endLockoutAvailable;
- (BOOL)_gizmoHardwareSupportsSEP;
- (BOOL)_gizmoSupportEnvironmentalDosimetry;
- (BOOL)_gizmoSupportEucalyptus;
- (BOOL)_gizmoSupportHeartRateAlert;
- (BOOL)_gizmoSupportPasscodePolicySync;
- (BOOL)_gizmoSupportWatchGestures;
- (BOOL)_gizmoSupportsKappaDetection;
- (BOOL)_gizmoSupportsRespiratoryRate;
- (BOOL)_gizmoSupportsSEPWristDetectSetting;
- (BOOL)_gizmoSupportsScandium;
- (BOOL)_passcodeModificationAllowed;
- (PUSPasscodeSettingsListController)init;
- (id)autoUnlockEnabledValue;
- (id)eraseDataEnabledValue;
- (id)showComplicationDataWhenUnlockedEnabledValue;
- (id)simplePasscodeEnabledValue;
- (id)specifiers;
- (id)wristDetectValue:(id)a3;
- (unint64_t)_passcodeMinimumLength;
- (void)_addActivityFlag:(int)a3;
- (void)_cancelRemoteAction;
- (void)_checkGizmoLockState;
- (void)_checkHasCredentialedPasses;
- (void)_checkHasPaymentPasses;
- (void)_handleError:(id)a3;
- (void)_handleUnknownError;
- (void)_promptForGizmoUnlock;
- (void)_removeActivityFlag:(int)a3;
- (void)_resetSimplePasscodeChangeIfNeeded;
- (void)_setGizmoState:(id)a3;
- (void)_setWristDetectFooter:(id)a3 reload:(BOOL)a4;
- (void)_showWristDetectDisableConfirmation;
- (void)_startRemoteAction:(int64_t)a3;
- (void)_updateLockoutState;
- (void)_updateSimplePasscodeState;
- (void)_updateUnlockPhoneEnabled;
- (void)_updateUnlockState;
- (void)alertView:(id)a3 willDismissWithButtonIndex:(int64_t)a4;
- (void)changePasscode;
- (void)confirmDisablePasscode:(id)a3;
- (void)confirmDisableWristDetect:(id)a3;
- (void)dealloc;
- (void)endLockout:(id)a3;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
- (void)reloadUI;
- (void)setActivityFlags:(int)a3;
- (void)setAutoUnlockEnabledValue:(id)a3;
- (void)setEraseDataEnabledValue:(id)a3;
- (void)setShowComplicationDataWhenUnlockedEnabledValue:(id)a3;
- (void)setSimplePasscodeEnabledValue:(id)a3;
- (void)setWristDetectValue:(id)a3 specifier:(id)a4;
- (void)togglePasscode:(id)a3;
- (void)unlockConnection:(id)a3 remoteDeviceDidCompleteRemoteAction:(BOOL)a4 remoteDeviceState:(id)a5 error:(id)a6;
- (void)unlockConnection:(id)a3 remoteDeviceDidNotifyState:(id)a4;
@end

@implementation PUSPasscodeSettingsListController

- (PUSPasscodeSettingsListController)init
{
  v20.receiver = self;
  v20.super_class = PUSPasscodeSettingsListController;
  v2 = [(PUSPasscodeSettingsListController *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(PUConnection);
    connection = v2->_connection;
    v2->_connection = v3;

    [(PUConnection *)v2->_connection setDelegate:v2];
    v5 = objc_alloc_init(PURemoteDeviceState);
    gizmoState = v2->_gizmoState;
    v2->_gizmoState = v5;

    v2->_gizmoHasPaymentPasses = 0;
    v2->_gizmoHasCredentialedPasses = 0;
    v2->_activityFlags = 0;
    if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
    {
      v7 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.chronod"];
      chronoSupportDomain = v2->_chronoSupportDomain;
      v2->_chronoSupportDomain = v7;
    }

    v9 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v9;

    v11 = objc_opt_new();
    autoUnlockManager = v2->_autoUnlockManager;
    v2->_autoUnlockManager = v11;

    [(PUSPasscodeSettingsListController *)v2 _updateSimplePasscodeState];
    [(PUSPasscodeSettingsListController *)v2 _updateLockoutState];
    [(PUSPasscodeSettingsListController *)v2 _checkGizmoLockState];
    [(PUSPasscodeSettingsListController *)v2 _checkHasPaymentPasses];
    [(PUSPasscodeSettingsListController *)v2 _checkHasCredentialedPasses];
    [(PUSPasscodeSettingsListController *)v2 _updateUnlockState];
    [(PUSPasscodeSettingsListController *)v2 _updateUnlockPhoneEnabled];
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_noteAppWillResignActive" name:UIApplicationWillResignActiveNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_148C, @"CSLLockoutStateDidChangeNotification", 0, 0);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v15, v2, sub_1494, @"NanoSimplePasscodeSettingChangedNotification", 0, 0);
    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v16, v2, sub_149C, SFPairedUnlockStateChangedNotification, 0, 0);
    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v17, v2, sub_14A4, @"CSLDisableWristDetectionChangedNotification", 0, 0);
    v18 = +[MCProfileConnection sharedConnection];
    [v18 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[MCProfileConnection sharedConnection];
  [v5 removeObserver:self];

  unlockPairingAssertion = self->_unlockPairingAssertion;
  if (unlockPairingAssertion)
  {
    CFRelease(unlockPairingAssertion);
    self->_unlockPairingAssertion = 0;
  }

  [(PUConnection *)self->_connection setDelegate:0];
  connection = self->_connection;
  self->_connection = 0;

  v8.receiver = self;
  v8.super_class = PUSPasscodeSettingsListController;
  [(PUSPasscodeSettingsListController *)&v8 dealloc];
}

- (void)_setGizmoState:(id)a3
{
  v5 = a3;
  v6 = pu_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Updating gizmo state %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_gizmoState, a3);
  if (![(PURemoteDeviceState *)self->_gizmoState isPasscodeLocked])
  {
    v8 = pu_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Allow user to view settings because gizmo is unlocked", buf, 2u);
    }

    goto LABEL_7;
  }

  v7 = [(PUSPasscodeSettingsListController *)self _endLockoutAvailable];
  v8 = pu_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Will bypass lockout to allow user re-enable pin entry", buf, 2u);
    }

LABEL_7:

    [(PUSPasscodeSettingsListController *)self _removeActivityFlag:2];
    goto LABEL_14;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Will ask user to enter passcode on gizmo", buf, 2u);
  }

  objc_initWeak(buf, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_17E8;
  v10[3] = &unk_10400;
  objc_copyWeak(&v11, buf);
  [(PUSPasscodeSettingsListController *)self setCheckGizmoUnlockedCompletionHandler:v10];
  [(PUSPasscodeSettingsListController *)self _promptForGizmoUnlock];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
LABEL_14:
}

- (void)_checkGizmoLockState
{
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Checking gizmo state", buf, 2u);
  }

  [(PUSPasscodeSettingsListController *)self _addActivityFlag:2];
  objc_initWeak(buf, self);
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1944;
  v5[3] = &unk_10428;
  objc_copyWeak(&v6, buf);
  [(PUConnection *)connection queryRemoteDeviceState:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_checkHasPaymentPasses
{
  [(PUSPasscodeSettingsListController *)self _addActivityFlag:8];
  v3 = objc_alloc_init(NPKCompanionAgentConnection);
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1A9C;
  v4[3] = &unk_10450;
  objc_copyWeak(&v5, &location);
  [v3 paymentPassUniqueIDsSynchronous:1 reply:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_checkHasCredentialedPasses
{
  [(PUSPasscodeSettingsListController *)self _addActivityFlag:64];
  v3 = objc_alloc_init(NPKCompanionAgentConnection);
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1BF8;
  v4[3] = &unk_10450;
  objc_copyWeak(&v5, &location);
  [v3 credentialedPassUniqueIDsSynchronous:1 reply:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_updateUnlockState
{
  [(PUSPasscodeSettingsListController *)self _addActivityFlag:16];
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Checking with Sharing if paired unlock is enabled", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = +[SFUnlockManager sharedUnlockManager];
  v5 = IDSDefaultPairedDevice;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1DBC;
  v6[3] = &unk_10478;
  objc_copyWeak(&v7, buf);
  v6[4] = self;
  [v4 unlockEnabledWithDevice:v5 completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_updateUnlockPhoneEnabled
{
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Checking with Sharing if gizmo can unlock phone", buf, 2u);
  }

  objc_initWeak(buf, self);
  autoUnlockManager = self->_autoUnlockManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FC4;
  v5[3] = &unk_104A0;
  objc_copyWeak(&v6, buf);
  [(SFAutoUnlockManager *)autoUnlockManager eligibleAutoUnlockDevicesWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)_handleError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = pu_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Received error %{public}@", buf, 0xCu);
  }

  if ([v5 isEqualToString:@"com.apple.paired-unlock"])
  {
    v7 = [v4 code];
    if (v7 == &dword_4 + 2)
    {
      if (self->_pendingAction == 2)
      {
        [(PUSPasscodeSettingsListController *)self _resetSimplePasscodeChangeIfNeeded];
      }
    }

    else
    {
      if (v7 == &dword_4 + 1)
      {
        pendingAction = self->_pendingAction;
        if (pendingAction > 2)
        {
          if (pendingAction == 3)
          {
            v10 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
            v9 = @"BUSY_TITLE_PASSCODE_DISABLE";
            if (v10)
            {
              v9 = @"BUSY_TITLE_PASSCODE_DISABLE_UNLOCK_ONLY";
            }
          }

          else
          {
            if (pendingAction != 4)
            {
              goto LABEL_23;
            }

            v9 = @"BUSY_TITLE_UNLOCK_ENABLE";
          }
        }

        else if (pendingAction == 1)
        {
          v9 = @"BUSY_TITLE_PASSCODE_ENABLE";
        }

        else
        {
          if (pendingAction != 2)
          {
            goto LABEL_23;
          }

          v9 = @"BUSY_TITLE_PASSCODE_CHANGE";
        }

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_2410;
        v12[3] = &unk_104C8;
        v12[4] = self;
        v13 = v9;
        dispatch_async(&_dispatch_main_q, v12);

        goto LABEL_23;
      }

      if (v7 == &dword_0 + 2)
      {
        [(PUSPasscodeSettingsListController *)self _promptForGizmoUnlock];
      }
    }
  }

  else if (([v5 isEqualToString:SFUnlockErrorDomian] & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2580;
    block[3] = &unk_104F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

LABEL_23:
}

- (void)_handleUnknownError
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_26B8;
  v8[3] = &unk_104F0;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  v4 = [(PUSPasscodeSettingsListController *)self transitionCoordinator];

  if (v4)
  {
    v5 = [(PUSPasscodeSettingsListController *)self transitionCoordinator];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_2780;
    v6[3] = &unk_10568;
    v6[4] = self;
    v7 = v3;
    [v5 animateAlongsideTransition:0 completion:v6];
  }

  else
  {
    (v3[2])(v3);
  }
}

- (void)_promptForGizmoUnlock
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2974;
  block[3] = &unk_104F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateLockoutState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2DD8;
  block[3] = &unk_104F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateSimplePasscodeState
{
  v3 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];
  v4 = [v3 synchronize];
  v8 = 0;
  v5 = [v3 BOOLForKey:@"simple-passcode" keyExistsAndHasValidFormat:&v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F10;
  v6[3] = &unk_10590;
  v7 = v5 & 1 | ((v8 & 1) == 0);
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)_startRemoteAction:(int64_t)a3
{
  v5 = pu_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PURemoteActionToString();
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Starting remote action %@", buf, 0xCu);
  }

  v7 = [(PUSPasscodeSettingsListController *)self presentedViewController];

  if (!v7)
  {
    self->_pendingAction = a3;
    [(PUSPasscodeSettingsListController *)self _addActivityFlag:4];
    v8 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
    if (a3 == 3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (((a3 == 2) & v8) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3;
    }

    if ([(PUSPasscodeSettingsListController *)self _gizmoSupportsSEPWristDetectSetting])
    {
      if (a3 == 5)
      {
        goto LABEL_17;
      }

      if (a3 == 6)
      {
        if (v9 & 1 | (([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet]& 1) == 0))
        {
          goto LABEL_17;
        }
      }

      else if (v9)
      {
LABEL_17:
        if (self->_wantsSimplePasscode)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        [(PUConnection *)self->_connection requestRemoteDeviceRemoteAction:a3 type:v12];
        if (a3 == 4)
        {
          unlockPairingAssertion = self->_unlockPairingAssertion;
          if (unlockPairingAssertion)
          {
            CFRelease(unlockPairingAssertion);
          }

          v19[0] = @"MKBAssertionKey";
          v19[1] = @"MKBAssertionTimeout";
          v20[0] = @"RemoteProfile";
          v20[1] = &off_112C8;
          [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          self->_unlockPairingAssertion = MKBDeviceLockAssertion();
          [(PURemoteDeviceState *)self->_gizmoState version];
          if ((NRVersionIsGreaterThanOrEqual() & 1) == 0)
          {
            v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
            [v14 setBool:0 forKey:@"DisableWristDetection"];
            v15 = [v14 synchronize];
            syncManager = self->_syncManager;
            v17 = [NSSet setWithObject:@"DisableWristDetection"];
            [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.Carousel" keys:v17];

            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CSLDisableWristDetectionChangedNotification", 0, 0, 0);
          }
        }

        return;
      }
    }

    else if ((a3 == 6) | v9 & 1)
    {
      goto LABEL_17;
    }

    v11 = [[PUSRemotePasscodeViewController alloc] initWithAction:v10];
    [(PUSRemotePasscodeViewController *)v11 setPasscodeDelegate:self];
    [(PUSPasscodeSettingsListController *)self presentViewController:v11 animated:1 completion:0];

    goto LABEL_17;
  }
}

- (void)_resetSimplePasscodeChangeIfNeeded
{
  if (self->_justChangedWantsSimplePasscode)
  {
    [(PUSPasscodeSettingsListController *)self _storeAndSyncSimplePasscodeEnabled:!self->_wantsSimplePasscode];
    self->_justChangedWantsSimplePasscode = 0;
  }
}

- (void)_cancelRemoteAction
{
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Canceling remote action", v4, 2u);
  }

  [(PUSPasscodeSettingsListController *)self _resetSimplePasscodeChangeIfNeeded];
  [(PUConnection *)self->_connection requestRemoteDeviceRemoteAction:0 type:0];
  [(PUSPasscodeSettingsListController *)self _finishRemoteAction:0];
}

- (void)unlockConnection:(id)a3 remoteDeviceDidCompleteRemoteAction:(BOOL)a4 remoteDeviceState:(id)a5 error:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = pu_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Remote action completed:%{BOOL}u, gizmo state: %@", buf, 0x12u);
  }

  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_34D0;
    block[3] = &unk_104C8;
    v15 = v9;
    v16 = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (v10)
  {
    [(PUSPasscodeSettingsListController *)self _handleError:v10];
  }

  else
  {
    [(PUSPasscodeSettingsListController *)self _resetSimplePasscodeChangeIfNeeded];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_35FC;
  v12[3] = &unk_10590;
  v12[4] = self;
  v13 = v7;
  dispatch_async(&_dispatch_main_q, v12);
}

- (void)unlockConnection:(id)a3 remoteDeviceDidNotifyState:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_36B4;
  v6[3] = &unk_104C8;
  v7 = a4;
  v8 = self;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v75 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(PUSPasscodeSettingsListController *)self loadSpecifiersFromPlistName:@"PasscodeSettings" target:self];
    if (self->_activityFlags || self->_gizmoIsInLockout)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(PURemoteDeviceState *)self->_gizmoState isPasscodeLocked];
    }

    v6 = [v4 specifierForID:@"TOGGLE_PASSCODE_ID"];
    v7 = +[MCProfileConnection sharedConnection];
    v8 = [v7 BOOLRestrictionForFeature:MCFeatureAlphanumericPasscodeRequired];
    v9 = [(PUSPasscodeSettingsListController *)self _passcodeModificationAllowed];
    v10 = v9;
    v11 = 0;
    if ((v5 & 1) == 0 && v9)
    {
      if ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
      {
        v11 = (v8 != 1) & ~[v7 isPasscodeRequired];
      }

      else
      {
        v11 = 1;
      }
    }

    v72 = v7;
    v12 = pu_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet];
      gizmoIsInLockout = self->_gizmoIsInLockout;
      *buf = 67110144;
      v79 = v5;
      v80 = 1024;
      v81 = v8 == 1;
      v82 = 1024;
      v83 = v10;
      v84 = 1024;
      v85 = v13;
      v86 = 1024;
      v87 = gizmoIsInLockout;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "busyOrDisabled:%{BOOL}u, requireUnlockOnly:%{BOOL}u, passcodeModificationAllowed:%{BOOL}u, hasPasscodeSet:%{BOOL}u, gizmoIsInLockout:%{BOOL}u", buf, 0x20u);
    }

    v15 = [NSNumber numberWithBool:v11];
    v77 = PSEnabledKey;
    [v6 setProperty:v15 forKey:?];

    if ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
    {
      v16 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      if (v16)
      {
        v19 = @"PASSCODE_DISABLE_UNLOCK_ONLY";
      }

      else
      {
        v19 = @"PASSCODE_DISABLE";
      }
    }

    else
    {
      v17 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = v17;
      v19 = @"PASSCODE_ENABLE";
    }

    v20 = [v17 localizedStringForKey:v19 value:&stru_10840 table:@"PasscodeSettings"];
    [v6 setName:v20];

    v21 = [v4 specifierForID:@"CHANGE_PASSCODE_ID"];
    if (v5)
    {
      v22 = 0;
    }

    else if ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
    {
      v22 = (v8 != 1) & v10;
    }

    else
    {
      v22 = 0;
    }

    v76 = v5;
    v73 = v6;
    v23 = [NSNumber numberWithInt:v22];
    [v21 setProperty:v23 forKey:v77];

    LODWORD(v23) = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = v24;
    if (v23)
    {
      v26 = @"PASSCODE_CHANGE_UNLOCK_ONLY";
    }

    else
    {
      v26 = @"PASSCODE_CHANGE";
    }

    v27 = [v24 localizedStringForKey:v26 value:&stru_10840 table:@"PasscodeSettings"];
    [v21 setName:v27];

    if (![(PUSPasscodeSettingsListController *)self _endLockoutAvailable])
    {
      v28 = [v4 specifierForID:@"END_LOCKOUT_GROUP_ID"];
      [v4 removeObject:v28];

      v29 = [v4 specifierForID:@"END_LOCKOUT_BUTTON_ID"];
      [v4 removeObject:v29];
    }

    v71 = v21;
    v30 = +[MCProfileConnection sharedConnection];
    v31 = [v30 isPasscodeSet];

    v74 = [v4 specifierForID:@"SIMPLE_PASSCODE_SWITCH_ID"];
    v32 = [(PUSPasscodeSettingsListController *)self _passcodeMinimumLength];
    v33 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
    v34 = pu_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v79 = v31;
      v80 = 1024;
      v81 = v32 > 4;
      v82 = 1024;
      v83 = v33;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "thisDeviceHasPasscode:%{BOOL}u, nonSimplePasscodeRequired:%{BOOL}u, isUnlockOnly:%{BOOL}u", buf, 0x14u);
    }

    if (v33)
    {
      v35 = pu_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        sub_75DC(v35);
      }
    }

    if ((v76 & 1) != 0 || ![(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
    {
      v36 = v8;
      v37 = 0;
    }

    else
    {
      v36 = v8;
      if (([(PURemoteDeviceState *)self->_gizmoState isUnlockOnly]& 1) != 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = (v32 < 5) & v10;
      }
    }

    v38 = [NSNumber numberWithInt:v37];
    [v74 setProperty:v38 forKey:v77];

    v39 = [v4 specifierForID:@"SIMPLE_PASSCODE_GROUP_ID"];
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:@"SIMPLE_PASSCODE_DESCRIPTION" value:&stru_10840 table:@"PasscodeSettings"];
    v42 = [NSString localizedStringWithFormat:v41, 4];
    v43 = PSFooterTextGroupKey;
    v70 = v39;
    [v39 setProperty:v42 forKey:PSFooterTextGroupKey];

    v44 = [v4 specifierForID:@"AUTO_UNLOCK_SWITCH_ID"];
    if ((v76 & 1) != 0 || ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet]& v31) != 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = ([(PURemoteDeviceState *)self->_gizmoState isUnlockOnly]& 1) == 0 && v36 != 1;
    }

    v46 = [NSNumber numberWithInt:v45];
    [v44 setProperty:v46 forKey:v77];

    v47 = [v4 specifierForID:@"AUTO_UNLOCK_GROUP_ID"];
    v48 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = v48;
    if (v31)
    {
      v50 = @"AUTO_UNLOCK_DESCRIPTION";
    }

    else
    {
      v50 = @"AUTO_UNLOCK_COMPANION_NO_PASSCODE_DESCRIPTION";
    }

    v51 = [v48 localizedStringForKey:v50 value:&stru_10840 table:@"PasscodeSettings"];
    [v47 setProperty:v51 forKey:v43];

    v52 = [v4 specifierForID:@"ERASE_DATA_SWITCH_ID"];
    v69 = v44;
    if (v76)
    {
      v53 = 0;
    }

    else
    {
      v53 = [(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet];
    }

    v54 = [NSNumber numberWithInt:v53];
    [v52 setProperty:v54 forKey:v77];

    v55 = [v4 specifierForID:@"ERASE_DATA_GROUP_ID"];
    v56 = [NSBundle bundleForClass:objc_opt_class()];
    v57 = [v56 localizedStringForKey:@"ERASE_DATA_DESCRIPTION" value:&stru_10840 table:@"PasscodeSettings"];
    v58 = [NSString localizedStringWithFormat:v57, 10];
    [v55 setProperty:v58 forKey:v43];

    v59 = [v4 specifierForID:@"SHOW_COMPLICATION_DATA_WHEN_LOCKED_SWITCH_ID"];
    if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
    {
      if (v76)
      {
        v60 = 0;
      }

      else
      {
        v60 = [(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet];
      }

      v62 = [NSNumber numberWithInt:v60];
      [v59 setProperty:v62 forKey:v77];
    }

    else
    {
      v61 = [v4 specifierForID:@"SHOW_COMPLICATION_DATA_WHEN_LOCKED_GROUP_ID"];
      [v4 removeObject:v61];

      [v4 removeObject:v59];
    }

    objc_storeStrong(&self->PSListController_opaque[v75], v4);
    v63 = [*&self->PSListController_opaque[v75] specifierForID:@"WRIST_DETECTION_CELL_ID"];
    v64 = +[MCProfileConnection sharedConnection];
    v65 = [v64 isSettingLockedDownByRestrictions:MCFeatureWatchWristDetectRequired];

    if (v65)
    {
      v66 = 0;
    }

    else
    {
      v66 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly]^ 1;
    }

    v67 = [NSNumber numberWithInt:v66 & (v76 ^ 1)];
    [v63 setProperty:v67 forKey:v77];

    [(PUSPasscodeSettingsListController *)self _setWristDetectFooter:v63 reload:0];
    v3 = *&self->PSListController_opaque[v75];
  }

  return v3;
}

- (void)confirmDisablePasscode:(id)a3
{
  if ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
  {

    [(PUSPasscodeSettingsListController *)self _startRemoteAction:3];
  }
}

- (void)togglePasscode:(id)a3
{
  v4 = a3;
  if (([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet]& 1) != 0)
  {
    if (self->_gizmoHasPaymentPasses)
    {
      v5 = objc_alloc_init(PSConfirmationSpecifier);
      v6 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = v7;
      if (v6)
      {
        v9 = @"PASSCODE_DISABLE_WARNING_TITLE_UNLOCK_ONLY";
      }

      else
      {
        v9 = @"PASSCODE_DISABLE_WARNING_TITLE";
      }

      v10 = [v7 localizedStringForKey:v9 value:&stru_10840 table:@"PasscodeSettings"];

      gizmoHasCredentialedPasses = self->_gizmoHasCredentialedPasses;
      v12 = [(PURemoteDeviceState *)self->_gizmoState isUnlockOnly];
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = v13;
      v15 = @"PASSCODE_DISABLE_WARNING_BODY_CARDS_AND_KEYS";
      if (v12)
      {
        v15 = @"PASSCODE_DISABLE_WARNING_BODY_CARDS_AND_KEYS_UNLOCK_ONLY";
      }

      v16 = @"PASSCODE_DISABLE_WARNING_BODY_CARDS_UNLOCK_ONLY";
      if (!v12)
      {
        v16 = @"PASSCODE_DISABLE_WARNING_BODY_CARDS";
      }

      if (gizmoHasCredentialedPasses)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v13 localizedStringForKey:v17 value:&stru_10840 table:@"PasscodeSettings"];

      v24[0] = PSConfirmationTitleKey;
      v24[1] = PSConfirmationPromptKey;
      v25[0] = v10;
      v25[1] = v18;
      v24[2] = PSConfirmationOKKey;
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"PASSCODE_DISABLE_WARNING_CONFIRM" value:&stru_10840 table:@"PasscodeSettings"];
      v25[2] = v20;
      v24[3] = PSConfirmationCancelKey;
      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"PASSCODE_DISABLE_WARNING_CANCEL" value:&stru_10840 table:@"PasscodeSettings"];
      v25[3] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4];
      [v5 setupWithDictionary:v23];

      [v5 setTarget:self];
      [v5 setConfirmationAction:"confirmDisablePasscode:"];
      [v5 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
      [(PUSPasscodeSettingsListController *)self showConfirmationViewForSpecifier:v5];
    }

    else
    {
      [(PUSPasscodeSettingsListController *)self confirmDisablePasscode:v4];
    }
  }

  else
  {
    [(PUSPasscodeSettingsListController *)self _startRemoteAction:1];
  }
}

- (void)changePasscode
{
  if ([(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
  {

    [(PUSPasscodeSettingsListController *)self _startRemoteAction:2];
  }
}

- (void)endLockout:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_46D0;
  v6[3] = &unk_105B8;
  objc_copyWeak(&v7, &location);
  [(PUConnection *)connection requestRemoteDeviceRemoveLockout:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)autoUnlockEnabledValue
{
  v3 = pu_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    activityFlags = self->_activityFlags;
    pendingAction = self->_pendingAction;
    v6 = +[MCProfileConnection sharedConnection];
    v7 = [v6 isPasscodeSet];
    v8 = [(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet];
    devicesArePairedForUnlocking = self->_devicesArePairedForUnlocking;
    v15[0] = 67110144;
    v15[1] = activityFlags;
    v16 = 1024;
    v17 = pendingAction;
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = devicesArePairedForUnlocking;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "activityFlags:0x%X, _pendingAction:%u, isPasscodeSet:%{BOOL}u, hasPasscodeSet:%{BOOL}u, devicesArePairedForUnlocking:%{BOOL}u", v15, 0x20u);
  }

  if (![(PURemoteDeviceState *)self->_gizmoState hasPasscodeSet])
  {
    v10 = 0;
    v11 = 0;
    if ((self->_activityFlags & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (self->_pendingAction == 4 || v10)
    {
      goto LABEL_11;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_12;
  }

  v10 = self->_devicesArePairedForUnlocking;
  if ((self->_activityFlags & 4) != 0)
  {
    goto LABEL_8;
  }

  if (!self->_devicesArePairedForUnlocking)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = +[MCProfileConnection sharedConnection];
  v11 = [v12 isPasscodeSet];

LABEL_12:
  v13 = [NSNumber numberWithBool:v11];

  return v13;
}

- (void)setAutoUnlockEnabledValue:(id)a3
{
  if ([a3 BOOLValue])
  {
    if (([(PURemoteDeviceState *)self->_gizmoState isWristDetectEnabled]& 1) != 0)
    {

      [(PUSPasscodeSettingsListController *)self _enableAutoUnlockConfirmed:0];
    }

    else
    {
      v4 = objc_alloc_init(PSConfirmationSpecifier);
      v14[0] = PSConfirmationTitleKey;
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"AUTO_UNLOCK_CONFIRMATION_OK" value:&stru_10840 table:@"PasscodeSettings"];
      v15[0] = v12;
      v14[1] = PSConfirmationPromptKey;
      v5 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"AUTO_UNLOCK_CONFIRMATION_BODY" value:&stru_10840 table:@"PasscodeSettings"];
      v15[1] = v6;
      v14[2] = PSConfirmationOKKey;
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"AUTO_UNLOCK_CONFIRMATION_OK" value:&stru_10840 table:@"PasscodeSettings"];
      v15[2] = v8;
      v14[3] = PSConfirmationCancelKey;
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"AUTO_UNLOCK_CONFIRMATION_CANCEL" value:&stru_10840 table:@"PasscodeSettings"];
      v15[3] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
      [v4 setupWithDictionary:v11];

      [v4 setTarget:self];
      [v4 setConfirmationAction:"_enableAutoUnlockConfirmed:"];
      [v4 setConfirmationCancelAction:"_enableAutoUnlockCanceled:"];
      [(PUSPasscodeSettingsListController *)self showConfirmationViewForSpecifier:v4];
    }
  }

  else
  {
    [(PUConnection *)self->_connection unpairForUnlock];
    self->_devicesArePairedForUnlocking = 0;
  }
}

- (id)simplePasscodeEnabledValue
{
  v3 = [(PUSPasscodeSettingsListController *)self _passcodeMinimumLength];
  v4 = [(PUSPasscodeSettingsListController *)self _passcodeModificationAllowed];
  wantsSimplePasscode = self->_wantsSimplePasscode;
  if (v3 >= 5)
  {
    wantsSimplePasscode = 0;
  }

  return [NSNumber numberWithInt:wantsSimplePasscode & v4];
}

- (unint64_t)_passcodeMinimumLength
{
  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportPasscodePolicySync])
  {
    v3 = [(PURemoteDeviceState *)self->_gizmoState passcodePolicy];
    v4 = [v3 passcodeMinimumLength];
  }

  else
  {
    v5 = +[MCProfileConnection sharedConnection];
    v3 = [v5 valueRestrictionForFeature:MCFeatureMinimumPasscodeLength];

    if (!v3)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v4 = [v3 unsignedIntegerValue];
  }

  v6 = v4;
LABEL_6:

  return v6;
}

- (BOOL)_passcodeModificationAllowed
{
  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportPasscodePolicySync])
  {
    v3 = [(PURemoteDeviceState *)self->_gizmoState passcodePolicy];
    v4 = [v3 isModificationAllowed];
  }

  else
  {
    v3 = +[MCProfileConnection sharedConnection];
    v4 = [v3 isPasscodeModificationAllowed];
  }

  v5 = v4;

  return v5;
}

- (void)setSimplePasscodeEnabledValue:(id)a3
{
  v4 = [a3 BOOLValue];
  if (self->_wantsSimplePasscode != v4)
  {
    [(PUSPasscodeSettingsListController *)self _storeAndSyncSimplePasscodeEnabled:v4];
    self->_justChangedWantsSimplePasscode = 1;

    [(PUSPasscodeSettingsListController *)self _startRemoteAction:2];
  }
}

- (id)eraseDataEnabledValue
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];
  v3 = [v2 synchronize];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 BOOLForKey:@"erase-data-enabled"]);

  return v4;
}

- (void)setEraseDataEnabledValue:(id)a3
{
  v4 = a3;
  v9 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];
  v5 = [v4 BOOLValue];

  [v9 setBool:v5 forKey:@"erase-data-enabled"];
  v6 = [v9 synchronize];
  syncManager = self->_syncManager;
  v8 = [NSSet setWithObject:@"erase-data-enabled"];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.nanosystemsettings" keys:v8];
}

- (id)showComplicationDataWhenUnlockedEnabledValue
{
  if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v3 = [(NPSDomainAccessor *)self->_chronoSupportDomain synchronize];
    v12 = 0;
    v4 = [(NPSDomainAccessor *)self->_chronoSupportDomain BOOLForKey:@"showComplicationDataWhenPasscodeLocked" keyExistsAndHasValidFormat:&v12];
    v5 = pu_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithBool:v4];
      v7 = [v6 stringValue];
      v8 = [NSNumber numberWithBool:v12];
      v9 = [v8 stringValue];
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Accessing value for showComplicationDataWhenUnlockedEnabled: %@ keyExists: %@", buf, 0x16u);
    }

    if (v12 == 1)
    {
      v10 = [NSNumber numberWithBool:v4];
    }

    else
    {
      v10 = &__kCFBooleanTrue;
    }
  }

  else
  {
    v10 = &__kCFBooleanFalse;
  }

  return v10;
}

- (void)setShowComplicationDataWhenUnlockedEnabledValue:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v5 = pu_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 stringValue];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Setting value for showComplicationDataWhenUnlockedEnabled: %@", buf, 0xCu);
    }

    [(NPSDomainAccessor *)self->_chronoSupportDomain setObject:v4 forKey:@"showComplicationDataWhenPasscodeLocked"];
    v7 = [(NPSDomainAccessor *)self->_chronoSupportDomain synchronize];
    v8 = [(NPSDomainAccessor *)self->_chronoSupportDomain domain];
    v11 = @"showComplicationDataWhenPasscodeLocked";
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = [NSSet setWithArray:v9];
    [(NPSManager *)self->_syncManager synchronizeNanoDomain:v8 keys:v10];
  }
}

+ (BOOL)_supportsSettingShowComplicationDataWhenPasscodeLocked
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = [[NSUUID alloc] initWithUUIDString:@"D5834418-F4A0-4C74-AA38-8ED5F7765BD1"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (void)setWristDetectValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  if ([a3 BOOLValue])
  {
    v7 = pu_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [NSNumber numberWithUnsignedInt:[(PURemoteDeviceState *)self->_gizmoState version]];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "enabling wrist dection, paired device version = %@", &v10, 0xCu);
    }

    [(PURemoteDeviceState *)self->_gizmoState version];
    if (NRVersionIsGreaterThanOrEqual())
    {
      [(PUSPasscodeSettingsListController *)self _startRemoteAction:6];
    }

    else
    {
      v9 = [(PUSPasscodeSettingsListController *)self specifierForID:@"WRIST_DETECTION_CELL_ID"];
      [(PUSPasscodeSettingsListController *)self setPreferenceValue:&__kCFBooleanTrue specifier:v9];
    }
  }

  else
  {
    [(PUSPasscodeSettingsListController *)self _showWristDetectDisableConfirmation];
  }

  [(PUSPasscodeSettingsListController *)self _setWristDetectFooter:v6 reload:1];
}

- (id)wristDetectValue:(id)a3
{
  v3 = [(PUSPasscodeSettingsListController *)self readPreferenceValue:a3];
  v4 = [v3 BOOLValue];

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isSettingLockedDownByRestrictions:MCFeatureWatchWristDetectRequired];

  return [NSNumber numberWithBool:v4 | v6];
}

- (void)_setWristDetectFooter:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v6 = [(PUSPasscodeSettingsListController *)self readPreferenceValue:a3];
  v7 = [v6 BOOLValue];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = v8;
  if (v7)
  {
    v10 = @"WRIST_DETECTION_FOOTER";
  }

  else
  {
    v10 = @"WRIST_DETECTION_OFF_FOOTER";
  }

  v12 = [v8 localizedStringForKey:v10 value:&stru_10840 table:@"PasscodeSettings"];

  v11 = [(PUSPasscodeSettingsListController *)self specifierForID:@"WRIST_DETECTION_GROUP_ID"];
  [v11 setProperty:v12 forKey:PSFooterTextGroupKey];
  if (v4)
  {
    [(PUSPasscodeSettingsListController *)self reloadSpecifier:v11];
  }
}

- (void)_showWristDetectDisableConfirmation
{
  v3 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_CONFIRM" value:&stru_10840 table:@"PasscodeSettings"];
  [v3 setTitle:v5];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG" value:&stru_10840 table:@"PasscodeSettings"];
  v8 = [NSMutableString stringWithString:v7];

  LODWORD(v7) = self->_devicesArePairedForUnlocking;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v7)
  {
    v11 = @"WRIST_DETECTION_DISABLE_WARNING_MSG_PAIREDUNLOCK";
  }

  else
  {
    v11 = @"WRIST_DETECTION_DISABLE_WARNING_MSG_AUTOLOCK";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_10840 table:@"PasscodeSettings"];
  [v8 appendString:v12];

  if ([(PUSPasscodeSettingsListController *)self gizmoUnlocksPhone])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_UNLOCKPHONE" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v14];
  }

  if (![(PUSPasscodeSettingsListController *)self _gizmoSupportsSEPWristDetectSetting]&& self->_gizmoHasPaymentPasses)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_PAY" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v16];
  }

  if ([sub_5E78() newtonTriggersEmergencySOS])
  {
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_NEWTON" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v18];
  }

  if ([sub_5E78() kappaTriggersEmergencySOS] && -[PUSPasscodeSettingsListController _gizmoSupportsKappaDetection](self, "_gizmoSupportsKappaDetection"))
  {
    v19 = +[SOSUtilities crashDetectionWristDetectionWarningDescription];
    [v8 appendString:v19];
  }

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportHeartRateAlert])
  {
    v20 = [NSBundle bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_HEART" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v21];
  }

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportsScandium])
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v22 = off_153C0;
    v43 = off_153C0;
    if (!off_153C0)
    {
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_6C70;
      v39[3] = &unk_105E0;
      v39[4] = &v40;
      sub_6C70(v39);
      v22 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (!v22)
    {
      sub_7620();
    }

    if (v22())
    {
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_SCANDIUM" value:&stru_10840 table:@"PasscodeSettings"];
      [v8 appendString:v24];
    }
  }

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportsRespiratoryRate])
  {
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_RR" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v26];
  }

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportEucalyptus])
  {
    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_EUCALYPTUS" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v28];
  }

  v29 = [NSBundle bundleForClass:objc_opt_class()];
  v30 = [v29 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_ACTIVITY" value:&stru_10840 table:@"PasscodeSettings"];
  [v8 appendString:v30];

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportEnvironmentalDosimetry])
  {
    v31 = [NSBundle bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_NOISE" value:&stru_10840 table:@"PasscodeSettings"];
    [v8 appendString:v32];
  }

  if ([(PUSPasscodeSettingsListController *)self _gizmoSupportWatchGestures])
  {
    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_MSG_ELTON" value:&stru_10840 table:@"PasscodeSettings_Elton"];
    [v8 appendString:v34];
  }

  [v3 setPrompt:v8];
  v35 = [NSBundle bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_CANCEL" value:&stru_10840 table:@"PasscodeSettings"];
  [v3 setCancelButton:v36];

  v37 = [NSBundle bundleForClass:objc_opt_class()];
  v38 = [v37 localizedStringForKey:@"WRIST_DETECTION_DISABLE_WARNING_CONFIRM" value:&stru_10840 table:@"PasscodeSettings"];
  [v3 setOkButton:v38];

  [v3 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v3 setTarget:self];
  [v3 setConfirmationAction:"confirmDisableWristDetect:"];
  [v3 setConfirmationCancelAction:"cancelDisableWristDetect:"];
  [(PUSPasscodeSettingsListController *)self showConfirmationViewForSpecifier:v3];
}

- (BOOL)_endLockoutAvailable
{
  v3 = [(PUSPasscodeSettingsListController *)self gizmoIsInLockout];
  if (v3)
  {
    LOBYTE(v3) = ![(PUSPasscodeSettingsListController *)self _gizmoHardwareSupportsSEP];
  }

  return v3;
}

- (BOOL)_gizmoHardwareSupportsSEP
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getDevices];

  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 valueForProperty:NRDevicePropertyHasSEP];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)_gizmoSupportsSEPWristDetectSetting
{
  v3 = [(PUSPasscodeSettingsListController *)self _gizmoHardwareSupportsSEP];
  [(PURemoteDeviceState *)self->_gizmoState version];
  return v3 & NRVersionIsGreaterThanOrEqual();
}

- (void)confirmDisableWristDetect:(id)a3
{
  v4 = [(PUSPasscodeSettingsListController *)self _gizmoSupportsSEPWristDetectSetting];
  v5 = pu_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithUnsignedInt:[(PURemoteDeviceState *)self->_gizmoState version]];
    v7 = [NSNumber numberWithBool:v4];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "disabling wrist dection, paired device version = %@, wrist detect support in SEP = %@", &v8, 0x16u);
  }

  [(PUSPasscodeSettingsListController *)self _startRemoteAction:5];
}

- (BOOL)_gizmoSupportsKappaDetection
{
  v2 = [sub_5E78() isKappaDetectionSupportedOnActiveWatch];
  if (v2)
  {
    v3 = sub_5E78();

    LOBYTE(v2) = [v3 isKappaVisible];
  }

  return v2;
}

- (BOOL)_gizmoSupportHeartRateAlert
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (BOOL)_gizmoSupportEnvironmentalDosimetry
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"F5C2DAD0-38FB-4B3B-86D3-B264F4F8CBDA"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (BOOL)_gizmoSupportsScandium
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"BD3A4341-7090-4622-9694-2AC0F536C478"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (BOOL)_gizmoSupportsRespiratoryRate
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"5C64C95B-8E7C-46AB-A110-1E51C93D7B7F"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (BOOL)_gizmoSupportPasscodePolicySync
{
  v2 = [(PURemoteDeviceState *)self->_gizmoState passcodePolicy];

  return v2 != 0;
}

- (BOOL)_gizmoSupportEucalyptus
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (BOOL)_gizmoSupportWatchGestures
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getActivePairedDevice];
  v4 = [[NSUUID alloc] initWithUUIDString:@"0E581E21-36BA-4770-9408-0467585E8495"];
  v5 = [v3 supportsCapability:v4];

  return v5;
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  [(PUSPasscodeSettingsListController *)self reloadSpecifiers:a3];
  v6 = +[MCProfileConnection sharedConnection];
  if ([v6 isPasscodeModificationAllowed])
  {
  }

  else
  {
    v5 = [(PUSPasscodeSettingsListController *)self presentedViewController];

    if (v5)
    {

      [(PUSPasscodeSettingsListController *)self _cancelRemoteAction];
    }
  }
}

- (void)alertView:(id)a3 willDismissWithButtonIndex:(int64_t)a4
{
  if (!a4 && self->_awaitingUnlockAlertView == a3)
  {
    v7 = [(PUSPasscodeSettingsListController *)self navigationController];
    v5 = [v7 navigationController];
    v6 = [v5 popViewControllerAnimated:1];
  }
}

- (void)setActivityFlags:(int)a3
{
  activityFlags = self->_activityFlags;
  self->_activityFlags = a3;
  v6 = pu_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = activityFlags;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Activity flag updates from 0x%X to 0x%X", v7, 0xEu);
  }

  if ((a3 == 0) == (activityFlags != 0))
  {
    [(PUSPasscodeSettingsListController *)self reloadUI];
  }
}

- (void)_addActivityFlag:(int)a3
{
  v4 = [(PUSPasscodeSettingsListController *)self activityFlags]| a3;

  [(PUSPasscodeSettingsListController *)self setActivityFlags:v4];
}

- (void)_removeActivityFlag:(int)a3
{
  v4 = [(PUSPasscodeSettingsListController *)self activityFlags]& ~a3;

  [(PUSPasscodeSettingsListController *)self setActivityFlags:v4];
}

- (void)reloadUI
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6828;
  block[3] = &unk_104F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end
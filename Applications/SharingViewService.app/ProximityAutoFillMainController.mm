@interface ProximityAutoFillMainController
- (id)deviceForSession;
- (unint64_t)supportedInterfaceOrientations;
- (void)_deviceFound:(id)found;
- (void)_handlePairingFinished;
- (void)_handlePromptForPINWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)_handleVisualAuthEvent:(int64_t)event;
- (void)_handleVisualAuthScannedCode:(id)code;
- (void)_tryPIN:(id)n;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)deviceDiscoveryStart;
- (void)deviceDiscoveryStop;
- (void)dismiss:(int)dismiss completion:(id)completion;
- (void)ensureStoppedWithDismiss:(BOOL)dismiss reason:(int)reason;
- (void)fileRadar:(id)radar;
- (void)handleButtonActions:(id)actions;
- (void)handlePasswordPicked:(id)picked;
- (void)passwordViewController:(id)controller selectedCredential:(id)credential;
- (void)passwordViewControllerDidFinish:(id)finish;
- (void)sessionStart;
- (void)sessionStop;
- (void)showAuthenticateUI;
- (void)showDoneUI:(id)i;
- (void)showPairingUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)showPasswordPickerUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProximityAutoFillMainController

- (void)_tryPIN:(id)n
{
  nCopy = n;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    v4 = IsAppleInternalBuild();
    v5 = @"*";
    if (v4)
    {
      v5 = nCopy;
    }

    v6 = v5;
    LogPrintF();
  }

  [(SFRemoteAutoFillSession *)self->_autoFillSession tryPIN:nCopy, v6];
}

- (void)_handlePromptForPINWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  if (self->_pin)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    pin = self->_pin;

    [(ProximityAutoFillMainController *)self _tryPIN:pin];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010E478;
    v6[3] = &unk_1001955E8;
    v6[4] = self;
    flagsCopy = flags;
    secondsCopy = seconds;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)_handlePairingFinished
{
  if (self->_vcVisualAuth)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010E510;
    block[3] = &unk_100195AC0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sessionStop
{
  if (self->_autoFillSession)
  {
    if (dword_1001BEC30 <= 50 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(SFRemoteAutoFillSession *)self->_autoFillSession invalidate];
    autoFillSession = self->_autoFillSession;
    self->_autoFillSession = 0;
  }
}

- (void)sessionStart
{
  deviceForSession = [(ProximityAutoFillMainController *)self deviceForSession];
  if (deviceForSession)
  {
    if (dword_1001BEC30 <= 50 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      v8 = deviceForSession;
      LogPrintF();
    }

    autoFillSession = self->_autoFillSession;
    if (autoFillSession)
    {
      [(SFRemoteAutoFillSession *)autoFillSession invalidate];
    }

    else
    {
      v5 = objc_alloc_init(SFRemoteAutoFillSession);
      v6 = self->_autoFillSession;
      self->_autoFillSession = v5;
    }

    [(SFRemoteAutoFillSession *)self->_autoFillSession setDispatchQueue:self->_workQueue, v8];
    [(SFRemoteAutoFillSession *)self->_autoFillSession setPeerDevice:deviceForSession];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10010E95C;
    v11[3] = &unk_100195AC0;
    v11[4] = self;
    [(SFRemoteAutoFillSession *)self->_autoFillSession setPairingFinishedHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010E964;
    v10[3] = &unk_100195228;
    v10[4] = self;
    [(SFRemoteAutoFillSession *)self->_autoFillSession setPromptForPickerHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010EAC4;
    v9[3] = &unk_100195A48;
    v9[4] = self;
    [(SFRemoteAutoFillSession *)self->_autoFillSession setPromptForPINHandler:v9];
    [(SFRemoteAutoFillSession *)self->_autoFillSession activate];
  }

  else
  {
    if (dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = NSErrorWithOSStatusF();
    [(ProximityAutoFillMainController *)self showDoneUI:v7];
  }
}

- (void)passwordViewController:(id)controller selectedCredential:(id)credential
{
  controllerCopy = controller;
  credentialCopy = credential;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  vcPicker = self->_vcPicker;
  v9 = controllerCopy;
  v10 = vcPicker;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if ((v9 != 0) != (v10 == 0))
    {
      v12 = [(_SFAppAutoFillPasswordViewController *)v9 isEqual:v10];

      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    if (dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

LABEL_15:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010ED98;
  block[3] = &unk_100195A70;
  block[4] = self;
  v15 = credentialCopy;
  v13 = credentialCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)passwordViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  v4 = finishCopy;
  if (dword_1001BEC30 <= 30)
  {
    v5 = finishCopy;
    if (dword_1001BEC30 != -1 || (finishCopy = _LogCategory_Initialize(), v4 = v5, finishCopy))
    {
      finishCopy = LogPrintF();
      v4 = v5;
    }
  }

  _objc_release_x1(finishCopy, v4);
}

- (id)deviceForSession
{
  if (self->_deviceIdentifier)
  {
    v3 = objc_alloc_init(SFDevice);
    [(SFDevice *)v3 setIdentifier:self->_deviceIdentifier];
    if (self->_peerContactID)
    {
      [(SFDevice *)v3 setContactIdentifier:?];
    }
  }

  else if (self->_deviceAddress && (device = self->_device) != 0)
  {
    v3 = device;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  bleDevice = [foundCopy bleDevice];
  advertisementFields = [bleDevice advertisementFields];
  v6 = [advertisementFields objectForKeyedSubscript:@"bdAddr"];

  if (v6)
  {
    v7 = SFHexStringForData();
    v8 = +[NSCharacterSet symbolCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];

    deviceAddress = self->_deviceAddress;
    v11 = v9;
    v12 = deviceAddress;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if ((v11 != 0) == (v12 == 0))
      {

        device = v11;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      v14 = [(NSString *)v11 isEqual:v12];

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    if (dword_1001BEC30 <= 50 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v16 = foundCopy;
    device = self->_device;
    self->_device = v16;
    goto LABEL_13;
  }

LABEL_15:
}

- (void)deviceDiscoveryStop
{
  [(SFDeviceDiscovery *)self->_deviceDiscovery invalidate];
  deviceDiscovery = self->_deviceDiscovery;
  self->_deviceDiscovery = 0;
}

- (void)deviceDiscoveryStart
{
  if (!self->_deviceDiscovery)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = objc_alloc_init(SFDeviceDiscovery);
    deviceDiscovery = self->_deviceDiscovery;
    self->_deviceDiscovery = v3;

    [(SFDeviceDiscovery *)self->_deviceDiscovery setChangeFlags:13];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDiscoveryFlags:8208];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDispatchQueue:self->_workQueue];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)self->_deviceDiscovery setScanRate:20];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10010F2D4;
    v7[3] = &unk_100195190;
    v7[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceFoundHandler:v7];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10010F2E0;
    v6[3] = &unk_100195190;
    v6[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceLostHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10010F2EC;
    v5[3] = &unk_1001951B8;
    v5[4] = self;
    [(SFDeviceDiscovery *)self->_deviceDiscovery setDeviceChangedHandler:v5];
    [(SFDeviceDiscovery *)self->_deviceDiscovery activateWithCompletion:&stru_1001951D8];
  }
}

- (void)showPasswordPickerUI
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_pickerState)
  {
    if (dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = NSErrorWithOSStatusF();
    [(ProximityAutoFillMainController *)self showDoneUI:v7];
  }

  else
  {
    v3 = [NSURL URLWithString:self->_url];
    self->_pickerState = 1;
    v4 = objc_alloc_init(off_1001BECA0());
    vcPicker = self->_vcPicker;
    self->_vcPicker = v4;

    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setDelegate:self];
    if (v3)
    {
      [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setWebViewURL:v3];
    }

    if (self->_bundleID)
    {
      [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteAppID:?];
    }

    if (self->_localizedAppName)
    {
      [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteLocalizedAppName:?];
    }

    if (self->_unlocalizedAppName)
    {
      [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setRemoteUnlocalizedAppName:?];
    }

    if (self->_associatedDomains && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:self->_associatedDomains];
    }

    [(_SFAppAutoFillPasswordViewController *)self->_vcPicker setAuthenticationGracePeriod:45.0];
    v6 = self->_vcPicker;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010F64C;
    v8[3] = &unk_1001957D0;
    v8[4] = self;
    [(_SFAppAutoFillPasswordViewController *)v6 authenticateToPresentInPopover:0 completion:v8];
  }
}

- (void)_handleVisualAuthScannedCode:(id)code
{
  codeCopy = code;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (mach_absolute_time() >= self->_visualAuthNextTicks)
  {
    if (self->_visualAuthTryingCode)
    {
      if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_12;
      }
    }

    else
    {
      self->_visualAuthTryingCode = 1;
      [(ProximityAutoFillMainController *)self _tryPIN:codeCopy];
    }
  }

  else if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    UpTicksToSecondsF();
LABEL_12:
    LogPrintF();
  }
}

- (void)_handleVisualAuthEvent:(int64_t)event
{
  if (event == 2)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(VPScannerViewController *)self->_vcVisualAuth dismissViewControllerAnimated:1 completion:0];
    vcVisualAuth = self->_vcVisualAuth;
    self->_vcVisualAuth = 0;

    view = [(UIViewController *)self->_vcVisualAuthParent view];
    [view setHidden:0];

    vcVisualAuthParent = self->_vcVisualAuthParent;
    self->_vcVisualAuthParent = 0;

    [(ProximityAutoFillMainController *)self showPairingUIWithFlags:0 throttleSeconds:0xFFFFFFFFLL];
  }

  else if (event == 1)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(VPScannerViewController *)self->_vcVisualAuth dismissViewControllerAnimated:1 completion:0];
    v4 = self->_vcVisualAuth;
    self->_vcVisualAuth = 0;

    [(ProximityAutoFillMainController *)self ensureStoppedWithDismiss:1 reason:5];
    return;
  }

  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)showPairingUIWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v4 = *&seconds;
  v5 = *&flags;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_visualAuthTryingCode = 0;
  vcAuth = self->_vcAuth;
  if ((v5 & 0x100) == 0 || vcAuth)
  {
    if (vcAuth)
    {

      [(ProximityAutoFillAuthViewController *)vcAuth showWithFlags:v5 throttleSeconds:v4];
    }

    else
    {
      v17 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"PINAuth"];
      v18 = self->_vcAuth;
      self->_vcAuth = v17;

      [(SVSBaseViewController *)self->_vcAuth setMainController:self];
      vcNav = self->_vcNav;
      v20 = self->_vcAuth;

      sub_100127D6C(vcNav, v20, 0);
    }
  }

  else
  {
    if (v4 >= 1)
    {
      v8 = mach_absolute_time();
      self->_visualAuthNextTicks = SecondsToUpTicks() + v8;
    }

    if (!self->_vcVisualAuth)
    {
      visibleViewController = [(SVSCommonNavController *)self->_vcNav visibleViewController];
      vcVisualAuthParent = self->_vcVisualAuthParent;
      self->_vcVisualAuthParent = visibleViewController;

      v11 = +[VPScannerViewController instantiateViewController];
      vcVisualAuth = self->_vcVisualAuth;
      self->_vcVisualAuth = v11;

      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"PROX_AUTOFILL_VISUAL_PAIRING_TITLE_IPHONE" value:&stru_100195CA8 table:@"Localizable"];
      [(VPScannerViewController *)self->_vcVisualAuth setTitleMessage:v14];

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10010FEEC;
      v23[3] = &unk_100195610;
      v23[4] = self;
      [(VPScannerViewController *)self->_vcVisualAuth setEventHandler:v23];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10010FEF8;
      v22[3] = &unk_100195A98;
      v22[4] = self;
      [(VPScannerViewController *)self->_vcVisualAuth setScannedCodeHandler:v22];
      v15 = self->_vcNav;
      v16 = self->_vcVisualAuth;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10010FF04;
      v21[3] = &unk_100195AC0;
      v21[4] = self;
      [(SVSCommonNavController *)v15 presentViewController:v16 animated:0 completion:v21];
    }
  }
}

- (void)showDoneUI:(id)i
{
  iCopy = i;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    localizedDescription = [iCopy localizedDescription];
    LogPrintF();
  }

  v5 = iCopy;
  v10 = v5;
  if (!v5)
  {
    if (self->_testMode == 2)
    {
      v5 = NSErrorWithOSStatusF();
    }

    else
    {
      v5 = 0;
    }
  }

  vcDone = self->_vcDone;
  if (!vcDone)
  {
    v7 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Done"];
    v8 = self->_vcDone;
    self->_vcDone = v7;

    [(SVSBaseViewController *)self->_vcDone setMainController:self];
    vcDone = self->_vcDone;
  }

  [(ProximityAutoFillDoneViewController *)vcDone setError:v5, localizedDescription];
  sub_100127D6C(self->_vcNav, self->_vcDone, 0);
}

- (void)showAuthenticateUI
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_prefSkipAuth)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_authState = 2;
    goto LABEL_19;
  }

  authState = self->_authState;
  if (authState > 2)
  {
    if (authState != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (authState)
  {
    if (authState != 2)
    {
LABEL_14:
      v15 = NSErrorWithOSStatusF();
      [(ProximityAutoFillMainController *)self showDoneUI:v15];

      return;
    }

LABEL_19:

    [(ProximityAutoFillMainController *)self showPasswordPickerUI];
    return;
  }

  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_authState = 1;
  v4 = objc_alloc_init(LAContext);
  authContext = self->_authContext;
  self->_authContext = v4;

  [(LAContext *)self->_authContext setTouchIDAuthenticationAllowableReuseDuration:45.0];
  v6 = self->_authContext;
  v17 = 0;
  v7 = [(LAContext *)v6 canEvaluatePolicy:1 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v10 = [UIApp beginBackgroundTaskWithExpirationHandler:&stru_100195120];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"PROX_AUTOFILL_AUTH_REASON" value:&stru_100195CA8 table:@"Localizable"];

    v13 = self->_authContext;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001103F4;
    v16[3] = &unk_100195148;
    v16[4] = self;
    v16[5] = v10;
    [(LAContext *)v13 evaluatePolicy:1 localizedReason:v12 reply:v16];
  }

  else
  {
    self->_authState = 3;
    if (v8)
    {
      [(ProximityAutoFillMainController *)self showDoneUI:v8];
    }

    else
    {
      v14 = NSErrorWithOSStatusF();
      [(ProximityAutoFillMainController *)self showDoneUI:v14];
    }
  }
}

- (void)handlePasswordPicked:(id)picked
{
  pickedCopy = picked;
  v13 = pickedCopy;
  if (dword_1001BEC30 <= 30)
  {
    if (dword_1001BEC30 != -1 || (v5 = _LogCategory_Initialize(), pickedCopy = v13, v5))
    {
      v12 = pickedCopy;
      LogPrintF();
      pickedCopy = v13;
    }
  }

  if (pickedCopy)
  {
    self->_pickerState = 4;
    user = [pickedCopy user];
    pickedUsername = self->_pickedUsername;
    self->_pickedUsername = user;

    password = [v13 password];
    pickedPassword = self->_pickedPassword;
    self->_pickedPassword = password;

    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    credentialsHandler = self->_credentialsHandler;
    if (credentialsHandler)
    {
      credentialsHandler[2](credentialsHandler, self->_pickedUsername, self->_pickedPassword, 0);
    }

    else if (dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = 0;
  }

  else
  {
    self->_pickerState = 7;
    v10 = NSErrorWithOSStatusF();
  }

  [(ProximityAutoFillMainController *)self showDoneUI:v10, v12];
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if (([*(*(&v9 + 1) + 8 * i) events] & 0x10) != 0)
        {
          if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(ProximityAutoFillMainController *)self ensureStoppedWithDismiss:1 reason:4];
        }
      }

      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)fileRadar:(id)radar
{
  radarCopy = radar;
  if (dword_1001BEC30 <= 60 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    localizedDescription = [radarCopy localizedDescription];
    LogPrintF();
  }

  if (radarCopy)
  {
    localizedDescription2 = [radarCopy localizedDescription];
    v5 = [NSMutableString stringWithFormat:@"AutoFill: %@", localizedDescription2];
  }

  else
  {
    v5 = [NSMutableString stringWithFormat:@"AutoFill: %@", @"Share Failed"];
  }

  v26[0] = @"Classification";
  v26[1] = @"ComponentID";
  v27[0] = @"Serious Bug";
  v27[1] = @"939440";
  v26[2] = @"ComponentName";
  v26[3] = @"ComponentVersion";
  v27[2] = @"Proximity AutoFill";
  v27[3] = @"all";
  v26[4] = @"ExtensionIdentifiers";
  v26[5] = @"Reproducibility";
  v27[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v27[5] = @"I Didn't Try";
  v26[6] = @"Title";
  v20 = v5;
  v27[6] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:7];
  v7 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = [NSURLQueryItem queryItemWithName:v13 value:v14];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v16 setQueryItems:v7];
  v17 = UIApp;
  v18 = [v16 URL];
  [v17 openURL:v18 withCompletionHandler:0];
}

- (void)ensureStoppedWithDismiss:(BOOL)dismiss reason:(int)reason
{
  v4 = *&reason;
  dismissCopy = dismiss;
  if (dword_1001BEC30 <= 50 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    v7 = "no";
    if (dismissCopy)
    {
      v7 = "yes";
    }

    v16 = v7;
    v17 = v4;
    LogPrintF();
  }

  [(ProximityAutoFillMainController *)self deviceDiscoveryStop:v16];
  [(ProximityAutoFillMainController *)self sessionStop];
  mainStoryboard = self->_mainStoryboard;
  self->_mainStoryboard = 0;

  [(SVSBaseViewController *)self->_vcAuth setMainController:0];
  vcAuth = self->_vcAuth;
  self->_vcAuth = 0;

  [(SVSBaseViewController *)self->_vcDone setMainController:0];
  vcDone = self->_vcDone;
  self->_vcDone = 0;

  vcNav = self->_vcNav;
  self->_vcNav = 0;

  vcPicker = self->_vcPicker;
  self->_vcPicker = 0;

  [(SVSBaseViewController *)self->_vcStart setMainController:0];
  vcStart = self->_vcStart;
  self->_vcStart = 0;

  vcVisualAuth = self->_vcVisualAuth;
  self->_vcVisualAuth = 0;

  vcVisualAuthParent = self->_vcVisualAuthParent;
  self->_vcVisualAuthParent = 0;

  if (dismissCopy)
  {

    [(ProximityAutoFillMainController *)self dismiss:v4];
  }
}

- (void)dismiss:(int)dismiss completion:(id)completion
{
  completionCopy = completion;
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    [(ProximityAutoFillMainController *)self _remoteViewControllerProxy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100110F30;
    v9 = v8[3] = &unk_1001959D0;
    v10 = completionCopy;
    v7 = v9;
    [(ProximityAutoFillMainController *)self dismissViewControllerAnimated:dismiss != 19 completion:v8];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_authState == 1)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    selfCopy = self;
    v6 = &selfCopy;
  }

  else
  {
    _remoteViewControllerProxy = [(ProximityAutoFillMainController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy setIdleTimerDisabled:0 forReason:@"com.apple.SharingViewService.ProximityAutoFill"];

    if (self->_dismissed)
    {
      [(ProximityAutoFillMainController *)self ensureStoppedWithDismiss:0];
    }

    else
    {
      if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [(ProximityAutoFillMainController *)self ensureStoppedWithDismiss:1 reason:21];
    }

    selfCopy2 = self;
    v6 = &selfCopy2;
  }

  v6[1] = ProximityAutoFillMainController;
  objc_msgSendSuper2(v6, "viewDidDisappear:", disappearCopy, selfCopy2);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14.receiver = self;
  v14.super_class = ProximityAutoFillMainController;
  [(ProximityAutoFillMainController *)&v14 viewDidAppear:appearCopy];
  v5 = [UIStoryboard storyboardWithName:@"ProximityAutoFill" bundle:0];
  mainStoryboard = self->_mainStoryboard;
  self->_mainStoryboard = v5;

  instantiateInitialViewController = [(UIStoryboard *)self->_mainStoryboard instantiateInitialViewController];
  vcNav = self->_vcNav;
  self->_vcNav = instantiateInitialViewController;

  [(SVSCommonNavController *)self->_vcNav setDelegate:self];
  [(SVSCommonNavController *)self->_vcNav setModalPresentationStyle:4];
  [(SVSCommonNavController *)self->_vcNav setTransitioningDelegate:self->_vcNav];
  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SVSCommonNavController *)self->_vcNav setModalTransitionStyle:2];
  }

  viewControllers = [(SVSCommonNavController *)self->_vcNav viewControllers];
  firstObject = [viewControllers firstObject];
  vcStart = self->_vcStart;
  self->_vcStart = firstObject;

  [(SVSBaseViewController *)self->_vcStart setMainController:self];
  [(ProximityAutoFillMainController *)self presentViewController:self->_vcNav animated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ProximityAutoFillMainController;
  [(ProximityAutoFillMainController *)&v4 viewWillAppear:appear];
  [(ProximityAutoFillMainController *)self deviceDiscoveryStart];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  userInfo = self->super._userInfo;
  self->super._userInfo = userInfo;

  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9 = dispatch_queue_create("com.apple.SharingViewService.ProximityAutoFill", 0);
  workQueue = self->_workQueue;
  self->_workQueue = v9;

  _remoteViewControllerProxy = [(ProximityAutoFillMainController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  if (v12)
  {
    objc_storeStrong(&self->_deviceAddress, v12);
  }

  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();

  if ([v13 isEqual:@"00000000-0000-0000-0000-000000000001"])
  {
    v14 = 1;
  }

  else if ([v13 isEqual:@"00000000-0000-0000-0000-000000000002"])
  {
    v14 = 2;
  }

  else
  {
    if (![v13 isEqual:@"00000000-0000-0000-0000-000000000003"])
    {
      goto LABEL_14;
    }

    v14 = 3;
  }

  self->_testMode = v14;
LABEL_14:
  if (v13)
  {
    v15 = [[NSUUID alloc] initWithUUIDString:v13];
    deviceIdentifier = self->_deviceIdentifier;
    self->_deviceIdentifier = v15;
  }

  CFStringGetTypeID();
  v17 = CFDictionaryGetTypedValue();

  if (v17)
  {
    objc_storeStrong(&self->_peerContactID, v17);
  }

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();

  if (v18)
  {
    objc_storeStrong(&self->_pin, v18);
  }

  Int64 = CFPrefs_GetInt64();
  if (IsAppleInternalBuild() && Int64)
  {
    v19 = 1;
  }

  else
  {
    if (!self->_prefAutoPayload)
    {
      goto LABEL_31;
    }

    v19 = 0;
  }

  if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_prefAutoPayload = v19;
LABEL_31:
  v21 = CFPrefs_GetInt64() != 0;
  if (self->_prefHideTTR != v21)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_prefHideTTR = v21;
  }

  v22 = CFPrefs_GetInt64() != 0;
  if (self->_prefSkipAuth != v22)
  {
    if (dword_1001BEC30 <= 30 && (dword_1001BEC30 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_prefSkipAuth = v22;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(ProximityAutoFillMainController *)self view];
  window = [view window];

  if (!window)
  {
    return 30;
  }

  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return (1 << [UIApp activeInterfaceOrientation]);
  }

  else
  {
    return 2;
  }
}

@end
@interface iOSSetupStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)handleDismissButton:(id)button;
- (void)handleStartButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iOSSetupStartViewController

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:1];
}

- (void)handleStartButton:(id)button
{
  buttonCopy = button;
  if (BYTE2(self->_startButton))
  {
    goto LABEL_13;
  }

  v5 = WiFiManagerClientCreate();
  if (v5)
  {
    v6 = v5;
    Power = WiFiManagerClientGetPower();
    CFRelease(v6);
    v8 = Power == 0;
  }

  else
  {
    v8 = 1;
  }

  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    v9 = "on";
    if (v8)
    {
      v9 = "off";
    }

    v15 = v9;
    LogPrintF();
  }

  if (!v8)
  {
LABEL_13:
    if ((BYTE1(self->_startButton) & 1) == 0)
    {
      BYTE1(self->_startButton) = 1;
      if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      containerView = [(SVSBaseViewController *)self containerView];
      [containerView setSwipeDismissible:0];

      if (buttonCopy && MKBGetDeviceLockState() - 1 <= 1)
      {
        if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_1000F36C0;
        v22 = &unk_100194E40;
        selfCopy = self;
        v24 = [UIApp beginBackgroundTaskWithExpirationHandler:&stru_100194DF0];
        SBSRequestPasscodeUnlockUI();
      }

      else
      {
        [*(&self->_progressView + 1) setHidden:0];
        [*(&self->_progressView + 1) startAnimating];
        [*(&self->_imageView + 1) setHidden:0];
        [*(&self->_progressLabel + 1) setHidden:1];
        if ([self->super.super._mainController testMode])
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1000F385C;
          handler[3] = &unk_100195A70;
          v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
          selfCopy2 = self;
          v11 = v17;
          dispatch_source_set_event_handler(v11, handler);
          SFDispatchTimerSet();
          dispatch_resume(v11);
        }

        else
        {
          v12 = objc_alloc_init(SFDevice);
          userInfo = [self->super.super._mainController userInfo];
          [v12 setOsVersion:CFDictionaryGetInt64Ranged()];

          deviceIdentifier = [self->super.super._mainController deviceIdentifier];
          [v12 setIdentifier:deviceIdentifier];

          [self->super.super._mainController _sessionStart:v12];
        }
      }
    }
  }

  else
  {
    [self->super.super._mainController showWiFi];
  }
}

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    v15 = notificationCopy;
    name = [notificationCopy name];
    userInfo = [v15 userInfo];
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      v7 = &stru_100195CA8;
      if (userInfo)
      {
        v7 = userInfo;
      }

      v13 = name;
      v14 = v7;
      LogPrintF();
    }

    name2 = [v15 name];
    v9 = [name2 isEqual:@"com.apple.sharing.DeviceSetup"];

    if (v9 && !CFDictionaryGetInt64())
    {
      userInfo2 = [self->super.super._mainController userInfo];
      CFStringGetTypeID();
      v11 = CFDictionaryGetTypedValue();

      CFStringGetTypeID();
      v12 = CFDictionaryGetTypedValue();
      if ([v12 isEqual:v11])
      {
        if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [self->super.super._mainController dismiss:16];
      }
    }

    notificationCopy = v15;
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (BYTE1(self->_startButton))
  {
    return 0;
  }

  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  v4 = view == view2;
  return v4;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = iOSSetupStartViewController;
  [(iOSSetupStartViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v60.receiver = self;
  v60.super_class = iOSSetupStartViewController;
  [(SVSBaseViewController *)&v60 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super.super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(iOSSetupStartViewController *)self view];
  [view addGestureRecognizer:v6];

  v8 = [self->super.super._mainController otherDeviceClassCode] - 1;
  if (v8 > 6)
  {
    v9 = @"_IPHONE";
  }

  else
  {
    v9 = off_100195818[v8];
  }

  v10 = [@"IOS_SETUP_START_TITLE" stringByAppendingString:v9];
  v11 = sub_10012794C(@"Localizable", v10);
  [*(&self->_dismissButton + 1) setText:v11];

  titleLabel = [*(&self->_progressLabel + 1) titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  otherDeviceClassCode = [self->super.super._mainController otherDeviceClassCode];
  v14 = [self->super.super._mainController otherDeviceModelCode] - 1;
  if (v14 < 3)
  {
    v15 = off_100195850;
LABEL_12:
    v16 = v15[v14];
    goto LABEL_14;
  }

  LOBYTE(v14) = otherDeviceClassCode - 2;
  if ((otherDeviceClassCode - 2) < 4u)
  {
    v15 = off_100195868;
    goto LABEL_12;
  }

  v16 = @"ProxiPhoneGeneric.png";
LABEL_14:
  v17 = [UIImage imageNamed:v16];
  if (v17)
  {
    [*(&self->_infoLabel + 1) setImage:v17];
  }

  v18 = MKBGetDeviceLockState() - 1;
  v19 = *(&self->_progressLabel + 1);
  v20 = +[NSBundle mainBundle];
  v21 = v20;
  if (v18 >= 2)
  {
    v22 = @"IOS_SETUP_CONTINUE";
  }

  else
  {
    v22 = @"IOS_SETUP_UNLOCK_TO_CONTINUE";
  }

  v23 = [v20 localizedStringForKey:v22 value:&stru_100195CA8 table:@"Localizable"];
  [v19 setTitle:v23 forState:0];

  [*(&self->_progressLabel + 1) setHidden:BYTE1(self->_startButton)];
  if (v18 < 2)
  {
    goto LABEL_24;
  }

  v24 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v24 aa_primaryAppleAccount];
  username = [aa_primaryAppleAccount username];
  if (![username length])
  {

LABEL_24:
    v28 = [self->super.super._mainController otherDeviceClassCode] - 1;
    if (v28 > 6)
    {
      v29 = @"_IPHONE";
    }

    else
    {
      v29 = off_100195818[v28];
    }

    v24 = [@"IOS_SETUP_START_INFO" stringByAppendingString:v29];
    aa_primaryAppleAccount = sub_10012794C(@"Localizable", v24);
    [*(&self->_titleLabel + 1) setText:aa_primaryAppleAccount];
    goto LABEL_35;
  }

  if ([username rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = SFLocalizePhoneNumber();
  }

  else
  {
    v27 = username;
  }

  v30 = v27;
  v31 = [self->super.super._mainController otherDeviceClassCode] - 1;
  v58 = v17;
  v57 = username;
  if (v31 > 6)
  {
    v32 = @"_IPHONE";
  }

  else
  {
    v32 = off_100195818[v31];
  }

  v33 = [@"IOS_SETUP_START_INFO_APPLE_ID" stringByAppendingString:v32];
  v34 = sub_10012794C(@"Localizable", v33);

  v56 = v30;
  v59 = sub_100127B60(@"QUOTED_STRING", v35, v36, v37, v38, v39, v40, v41, v30);
  v42 = @"<BOLD_APPLE_ID>";
  v43 = v34;
  v44 = [NSMutableAttributedString alloc];
  v63 = NSFontAttributeName;
  v45 = [UIFont systemFontOfSize:15.0];
  v64 = v45;
  v46 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v47 = [v44 initWithString:v43 attributes:v46];

  v48 = [v43 rangeOfString:@"<BOLD_APPLE_ID>"];
  v50 = v49;

  if (v48 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v47 replaceCharactersInRange:v48 withString:{v50, v59}];
    v55 = [v59 length];
    v61 = NSFontAttributeName;
    v51 = [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
    v62 = v51;
    v52 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v47 setAttributes:v52 range:{v48, v55}];
  }

  [*(&self->_titleLabel + 1) setAttributedText:v47];
  [self->super.super._mainController setMyAppleID:v57];

  v17 = v58;
LABEL_35:

  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    v53 = +[NSDistributedNotificationCenter defaultCenter];
    [v53 addObserver:self selector:"handleDeviceSetupNotification:" name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  if (BYTE2(self->_startButton) == 1)
  {
    [(iOSSetupStartViewController *)self handleStartButton:self];
    BYTE2(self->_startButton) = 0;
  }
}

@end
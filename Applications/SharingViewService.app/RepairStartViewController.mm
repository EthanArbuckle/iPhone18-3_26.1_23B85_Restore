@interface RepairStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)handleDismissButton:(id)button;
- (void)handleStartButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RepairStartViewController

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:1];
}

- (void)handleStartButton:(id)button
{
  buttonCopy = button;
  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    v11 = buttonCopy;
    BYTE1(self->_startButton) = 1;
    if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    containerView = [(SVSBaseViewController *)self containerView];
    [containerView setSwipeDismissible:0];

    testMode = [self->super._mainController testMode];
    mainController = self->super._mainController;
    if (testMode == 3)
    {
      v8 = 301000;
    }

    else
    {
      if ([mainController testMode] != 4)
      {
        v9 = objc_alloc_init(SFDevice);
        deviceIdentifier = [self->super._mainController deviceIdentifier];
        [v9 setIdentifier:deviceIdentifier];

        [self->super._mainController _sessionStart:v9];
        goto LABEL_12;
      }

      mainController = self->super._mainController;
      v8 = 301004;
    }

    [mainController showDoneUI:v8];
LABEL_12:
    buttonCopy = v11;
  }
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super._mainController dismiss:5];
}

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  if ((BYTE1(self->_startButton) & 1) == 0)
  {
    v15 = notificationCopy;
    name = [notificationCopy name];
    userInfo = [v15 userInfo];
    if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
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
      userInfo2 = [self->super._mainController userInfo];
      CFStringGetTypeID();
      v11 = CFDictionaryGetTypedValue();

      CFStringGetTypeID();
      v12 = CFDictionaryGetTypedValue();
      if ([v12 isEqual:v11])
      {
        if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [self->super._mainController dismiss:16];
      }
    }

    notificationCopy = v15;
  }
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
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = RepairStartViewController;
  [(RepairStartViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BED68 <= 30 && (dword_1001BED68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12.receiver = self;
  v12.super_class = RepairStartViewController;
  [(SVSBaseViewController *)&v12 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(RepairStartViewController *)self view];
  [view addGestureRecognizer:v6];

  productImage = [self->super._mainController productImage];
  [*(&self->_infoLabel + 1) setImage:productImage];

  v9 = sub_10012794C(@"Localizable", @"REPAIR_INFO_HOMEPOD");
  [*(&self->_dismissButton + 1) setText:v9];

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];

  v11 = +[NSDistributedNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"handleDeviceSetupNotification:" name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
}

@end
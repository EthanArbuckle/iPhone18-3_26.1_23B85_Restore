@interface TVLatencySetupStartViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)handleDeviceSetupNotification:(id)notification;
- (void)handleDismissButton:(id)button;
- (void)handleStartButton:(id)button;
- (void)handleTapOutsideView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencySetupStartViewController

- (void)handleTapOutsideView:(id)view
{
  viewCopy = view;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:1];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [self->super.super._mainController dismiss:5];
}

- (void)handleStartButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:0];

  if ([self->super.super._mainController testFlags])
  {
    [self->super.super._mainController showProgressUI];
  }

  else
  {
    v5 = objc_alloc_init(SFDevice);
    deviceIdentifier = [self->super.super._mainController deviceIdentifier];
    [v5 setIdentifier:deviceIdentifier];

    userInfo = [self->super.super._mainController userInfo];
    [v5 setOsVersion:CFDictionaryGetInt64Ranged()];

    [self->super.super._mainController _sessionStart:v5];
    [self->super.super._mainController showProgressUI];
  }
}

- (void)handleDeviceSetupNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  userInfo = [notificationCopy userInfo];
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    v6 = &stru_100195CA8;
    if (userInfo)
    {
      v6 = userInfo;
    }

    v12 = name;
    v13 = v6;
    LogPrintF();
  }

  name2 = [notificationCopy name];
  v8 = [name2 isEqual:@"com.apple.sharing.DeviceSetup"];

  if (v8 && !CFDictionaryGetInt64())
  {
    userInfo2 = [self->super.super._mainController userInfo];
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();

    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    if ([v11 isEqual:v10])
    {
      if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [self->super.super._mainController dismiss:16];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (BYTE1(self->super._animationContainerView))
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
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6.receiver = self;
  v6.super_class = TVLatencySetupStartViewController;
  [(TVLatencySetupStartViewController *)&v6 viewDidDisappear:disappearCopy];
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"com.apple.sharing.DeviceSetup" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BF2B8 <= 30 && (dword_1001BF2B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10.receiver = self;
  v10.super_class = TVLatencySetupStartViewController;
  [(TVLatencySetupBaseViewController *)&v10 viewWillAppear:appearCopy];
  _remoteViewControllerProxy = [self->super.super._mainController _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];

  v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapOutsideView:"];
  [v6 setDelegate:self];
  [v6 setNumberOfTapsRequired:1];
  [v6 setCancelsTouchesInView:0];
  view = [(TVLatencySetupStartViewController *)self view];
  [view addGestureRecognizer:v6];

  v8 = +[NSDistributedNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"handleDeviceSetupNotification:" name:@"com.apple.sharing.DeviceSetup" object:0 suspensionBehavior:4];
  containerView = [(SVSBaseViewController *)self containerView];
  [containerView setSwipeDismissible:1];
}

@end
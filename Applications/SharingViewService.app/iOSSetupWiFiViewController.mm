@interface iOSSetupWiFiViewController
- (void)handleContinueButton:(id)button;
- (void)handleDismissButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iOSSetupWiFiViewController

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [(iOSSetupBaseViewController *)self dismissWithType:5];
}

- (void)handleContinueButton:(id)button
{
  buttonCopy = button;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if ([*(&self->_infoLabel + 1) isEnabled])
  {
    [*(&self->_infoLabel + 1) setEnabled:0];
    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = WiFiManagerClientCreate();
    if (v5)
    {
      v6 = v5;
      WiFiManagerClientSetPower();
      CFRelease(v6);
    }

    if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = objc_alloc_init(CUReachabilityMonitor);
    [v7 setTimeout:60.0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F54C0;
    v8[3] = &unk_100195940;
    v8[4] = v7;
    [v7 setCompletionHandler:v8];
    [v7 activate];
    [self->super.super._mainController showStartUI];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = iOSSetupWiFiViewController;
  [(iOSSetupWiFiViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE6C8 <= 30 && (dword_1001BE6C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10.receiver = self;
  v10.super_class = iOSSetupWiFiViewController;
  [(SVSBaseViewController *)&v10 viewWillAppear:appearCopy];
  v5 = sub_10012794C(@"Localizable", @"WIFI_TURN_ON_TITLE");
  [*(&self->super.super._didReactivateContainerViewAfterLayingOut + 1) setText:v5];

  v6 = [UIImage imageNamed:@"WiFiAppIcon.png"];
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v8 = [v6 _applicationIconImageForFormat:2 precomposed:1 scale:?];
  [*(&self->_titleLabel + 1) setImage:v8];

  v9 = sub_10012794C(@"Localizable", @"WIFI_TURN_ON");
  [*(&self->_imageView + 1) setText:v9];
}

@end
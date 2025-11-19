@interface CARRadiosAvailabilityPrompt
- (BOOL)shouldPromptBluetoothPower;
- (BOOL)shouldPromptWiFiPower;
- (BOOL)updateRadiosAvailabilityAlertPresentation;
- (CARRadiosAvailabilityPrompt)init;
- (UIAlertController)presentedAlertController;
- (UIViewController)presentingController;
- (void)_setupWiFi;
- (void)_teardownWiFi;
- (void)dealloc;
- (void)handleBluetoothPowerChanged:(id)a3;
- (void)handleWifiPowerChanged;
- (void)setPresentingController:(id)a3;
- (void)setWiFiPowered:(BOOL)a3;
@end

@implementation CARRadiosAvailabilityPrompt

- (CARRadiosAvailabilityPrompt)init
{
  v6.receiver = self;
  v6.super_class = CARRadiosAvailabilityPrompt;
  v2 = [(CARRadiosAvailabilityPrompt *)&v6 init];
  if (v2)
  {
    v3 = +[BluetoothManager sharedInstance];
    [(CARRadiosAvailabilityPrompt *)v2 _setupWiFi];
    [(CARRadiosAvailabilityPrompt *)v2 setNeedsPresentationConsideration:1];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"handleBluetoothPowerChanged:" name:BluetoothPowerChangedNotification object:0];
  }

  return v2;
}

- (void)_setupWiFi
{
  v3 = WiFiManagerClientCreate();
  self->_wifiManager = v3;
  if (v3)
  {
    v6 = WiFiManagerClientCopyDevices();
    if (v6 && [v6 count])
    {
      v4 = 0;
      do
      {
        if ([v6 objectAtIndex:v4])
        {
          WiFiDeviceClientRegisterPowerCallback();
        }

        ++v4;
      }

      while (v4 < [v6 count]);
    }

    wifiManager = self->_wifiManager;
    CFRunLoopGetMain();
    WiFiManagerClientScheduleWithRunLoop();
  }
}

- (void)_teardownWiFi
{
  if (self->_wifiManager)
  {
    v5 = WiFiManagerClientCopyDevices();
    if (v5 && [v5 count])
    {
      v3 = 0;
      do
      {
        if ([v5 objectAtIndex:v3])
        {
          WiFiDeviceClientRegisterPowerCallback();
        }

        ++v3;
      }

      while (v3 < [v5 count]);
    }

    wifiManager = self->_wifiManager;
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->_wifiManager);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(CARRadiosAvailabilityPrompt *)self _teardownWiFi];
  v4.receiver = self;
  v4.super_class = CARRadiosAvailabilityPrompt;
  [(CARRadiosAvailabilityPrompt *)&v4 dealloc];
}

- (void)setPresentingController:(id)a3
{
  objc_storeWeak(&self->_presentingController, a3);
  if (a3 && [(CARRadiosAvailabilityPrompt *)self needsPresentationConsideration])
  {

    [(CARRadiosAvailabilityPrompt *)self updateRadiosAvailabilityAlertPresentation];
  }
}

- (BOOL)shouldPromptBluetoothPower
{
  v2 = +[BluetoothManager sharedInstance];
  v3 = [v2 available];

  if (!v3)
  {
    return 0;
  }

  v4 = +[BluetoothManager sharedInstance];
  v5 = [v4 powerState] == 0;

  return v5;
}

- (BOOL)shouldPromptWiFiPower
{
  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    LOBYTE(wifiManager) = WiFiManagerClientGetPower() == 0;
  }

  return wifiManager;
}

- (void)setWiFiPowered:(BOOL)a3
{
  if (self->_wifiManager)
  {
    _WiFiManagerClientSetPower();
  }
}

- (BOOL)updateRadiosAvailabilityAlertPresentation
{
  [(CARRadiosAvailabilityPrompt *)self setNeedsPresentationConsideration:0];
  v3 = [(CARRadiosAvailabilityPrompt *)self shouldPromptBluetoothPower];
  v4 = [(CARRadiosAvailabilityPrompt *)self shouldPromptWiFiPower];
  if (v3 && v4)
  {
    goto LABEL_3;
  }

  if (v3)
  {
    v27 = v4;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v11 localizedStringForKey:@"POWER_BLUETOOTH_TITLE" value:&stru_6FD90 table:@"Alerts"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v8 localizedStringForKey:@"POWER_ENABLE_BLUETOOTH_BUTTON" value:&stru_6FD90 table:@"Alerts"];
    goto LABEL_6;
  }

  if (v4)
  {
LABEL_3:
    v27 = v4;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = SFLocalizableWAPIStringKeyForKey();
    v7 = [v5 localizedStringForKey:v6 value:&stru_6FD90 table:@"Alerts"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = SFLocalizableWAPIStringKeyForKey();
    v10 = [v8 localizedStringForKey:v9 value:&stru_6FD90 table:@"Alerts"];

LABEL_6:
    v12 = [(CARRadiosAvailabilityPrompt *)self presentingController];

    if (v12)
    {
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"POWER_MESSAGE" value:&stru_6FD90 table:@"Alerts"];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"POWER_CANCEL_BUTTON" value:&stru_6FD90 table:@"Alerts"];

      v17 = 1;
      v18 = [UIAlertController alertControllerWithTitle:v7 message:v14 preferredStyle:1];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_A080;
      v28[3] = &unk_6E530;
      v29 = v3;
      v28[4] = self;
      v30 = v27;
      v19 = [UIAlertAction actionWithTitle:v10 style:0 handler:v28];
      [v18 addAction:v19];

      v20 = [UIAlertAction actionWithTitle:v16 style:1 handler:&stru_6E570];
      [v18 addAction:v20];

      v21 = [(CARRadiosAvailabilityPrompt *)self presentingController];
      [v21 presentViewController:v18 animated:1 completion:0];

      [(CARRadiosAvailabilityPrompt *)self setPresentedAlertController:v18];
    }

    else
    {
      v17 = 1;
      [(CARRadiosAvailabilityPrompt *)self setNeedsPresentationConsideration:1];
    }

    return v17;
  }

  v23 = [(CARRadiosAvailabilityPrompt *)self presentingController];
  if (v23)
  {
    v24 = v23;
    v25 = [(CARRadiosAvailabilityPrompt *)self presentedAlertController];

    if (v25)
    {
      v26 = [(CARRadiosAvailabilityPrompt *)self presentingController];
      [v26 dismissViewControllerAnimated:1 completion:0];
    }
  }

  return 0;
}

- (void)handleBluetoothPowerChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A16C;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleWifiPowerChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A220;
  block[3] = &unk_6E2C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (UIViewController)presentingController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingController);

  return WeakRetained;
}

- (UIAlertController)presentedAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedAlertController);

  return WeakRetained;
}

@end
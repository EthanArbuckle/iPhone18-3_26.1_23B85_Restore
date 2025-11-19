@interface ACSettingsSwitchUIController
+ (id)snippetViewController;
- (ACSettingsSwitchUIController)init;
- (BOOL)_waitingOnSettingState;
- (double)desiredHeightForWidth:(double)a3;
- (void)_bluetoothAvailabilityChanged:(id)a3;
- (void)_setSettingFromExternalChangeIfNeeded;
- (void)_setSettingFromSwitchTapIfNeeded;
- (void)_switchTapped:(id)a3;
- (void)_wiFiStateChangedWithOldState:(int64_t)a3 newState:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)setSnippet:(id)a3;
- (void)settingChangedExternally:(id)a3;
@end

@implementation ACSettingsSwitchUIController

+ (id)snippetViewController
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (ACSettingsSwitchUIController)init
{
  v5.receiver = self;
  v5.super_class = ACSettingsSwitchUIController;
  v2 = [(ACSettingsSwitchUIController *)&v5 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTINGS_TITLE");
    [(ACSettingsSwitchUIController *)v2 setTitle:v3];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACSettingsSwitchUIController;
  [(ACSettingsSwitchUIController *)&v4 dealloc];
}

- (void)setSnippet:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_snippet, a3);
  v6 = [(SASettingBoolSnippet *)self->_snippet settingKeys];
  [(ACSettingsBasicSetting *)self->_setting setDelegate:0];
  v7 = [v6 objectAtIndex:0];
  v8 = [(ACSettingsBasicSetting *)ACSettingsSwitchSetting settingWithAceString:v7];
  setting = self->_setting;
  self->_setting = v8;

  [(ACSettingsBasicSetting *)self->_setting setDelegate:self];
  self->_shouldSetSettingDueToFirstAppearance = [(ACSettingsSwitchUIController *)self isVirgin];
  if ([(ACSettingsSwitchSetting *)self->_setting isBluetooth])
  {
    v10 = +[BluetoothManager sharedInstance];
    [v10 available];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_bluetoothAvailabilityChanged:" name:BluetoothAvailabilityChangedNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:self selector:"_settingChangedExternally:" name:BluetoothPowerChangedNotification object:0];
  }

  if ([(ACSettingsSwitchSetting *)self->_setting isLowPowerMode])
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"_settingChangedExternally:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
  }

  if ([(ACSettingsSwitchSetting *)self->_setting isWiFi]&& !self->_wiFiStateMonitor)
  {
    objc_initWeak(&location, self);
    v14 = [WFWiFiStateMonitor alloc];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_14CC;
    v17[3] = &unk_8400;
    objc_copyWeak(&v18, &location);
    v15 = [v14 initWithClient:0 handler:v17];
    wiFiStateMonitor = self->_wiFiStateMonitor;
    self->_wiFiStateMonitor = v15;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(ACSettingsSwitchUIController *)self view];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)loadView
{
  v3 = [[ACSettingsSwitchView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  settingView = self->_settingView;
  self->_settingView = v3;

  [(ACSettingsSwitchUIController *)self setView:self->_settingView];
  [(ACSettingsSwitchUIController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v5 = [(ACSettingsSwitchView *)self->_settingView title];
  v6 = [(ACSettingsBasicSetting *)self->_setting name];
  [v5 setText:v6];

  v7 = self->_settingView;
  v8 = [(ACSettingsBasicSetting *)self->_setting icon];
  [(ACSettingsSwitchView *)v7 setIcon:v8];

  v9 = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [v9 setOn:{-[ACSettingsSwitchSetting enabled](self->_setting, "enabled")}];

  v10 = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [v10 addTarget:self action:"_switchTapped:" forControlEvents:4096];
}

- (void)_setSettingFromSwitchTapIfNeeded
{
  if (self->_shouldSetSettingDueToTap && ![(ACSettingsSwitchUIController *)self _waitingOnSettingState])
  {
    v3 = [(ACSettingsSwitchView *)self->_settingView switchControl];
    v4 = [v3 isOn];

    [(ACSettingsSwitchSetting *)self->_setting setEnabled:v4];
    v5 = [(ACSettingsSwitchView *)self->_settingView switchControl];
    [v5 setUserInteractionEnabled:1];

    self->_shouldSetSettingDueToTap = 0;
  }
}

- (void)_setSettingFromExternalChangeIfNeeded
{
  if (self->_shouldSetSettingDueToExternalChange && ![(ACSettingsSwitchUIController *)self _waitingOnSettingState])
  {
    v3 = [(ACSettingsSwitchView *)self->_settingView switchControl];
    [v3 setOn:-[ACSettingsSwitchSetting enabled](self->_setting animated:{"enabled"), 1}];

    self->_shouldSetSettingDueToExternalChange = 0;
  }
}

- (BOOL)_waitingOnSettingState
{
  if ([(ACSettingsSwitchSetting *)self->_setting isBluetooth])
  {
    v2 = +[BluetoothManager sharedInstance];
    v3 = [v2 available] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_bluetoothAvailabilityChanged:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [(ACSettingsSwitchUIController *)self _setSettingIfNeeded:1];
    [(ACSettingsSwitchUIController *)self _setSettingFromSwitchTapIfNeeded];

    [(ACSettingsSwitchUIController *)self _setSettingFromExternalChangeIfNeeded];
  }
}

- (void)_wiFiStateChangedWithOldState:(int64_t)a3 newState:(int64_t)a4
{
  v6 = [(ACSettingsSwitchSetting *)self->_setting isWiFi];
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (v6)
    {
      v7 = [(ACSettingsSwitchSetting *)self->_setting enabled];
      v8 = [(ACSettingsSwitchView *)self->_settingView switchControl];
      v9 = [v8 isOn];

      if (v7 != v9)
      {

        [(ACSettingsSwitchUIController *)self _settingChangedExternally:0];
      }
    }
  }
}

- (void)_switchTapped:(id)a3
{
  self->_shouldSetSettingDueToTap = 1;
  v4 = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [v4 setUserInteractionEnabled:0];

  [(ACSettingsSwitchUIController *)self _setSettingFromSwitchTapIfNeeded];
}

- (void)settingChangedExternally:(id)a3
{
  if (self->_setting == a3)
  {
    [(ACSettingsSwitchUIController *)self _settingChangedExternally:0];
  }
}

@end
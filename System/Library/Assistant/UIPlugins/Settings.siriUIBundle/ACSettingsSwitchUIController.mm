@interface ACSettingsSwitchUIController
+ (id)snippetViewController;
- (ACSettingsSwitchUIController)init;
- (BOOL)_waitingOnSettingState;
- (double)desiredHeightForWidth:(double)width;
- (void)_bluetoothAvailabilityChanged:(id)changed;
- (void)_setSettingFromExternalChangeIfNeeded;
- (void)_setSettingFromSwitchTapIfNeeded;
- (void)_switchTapped:(id)tapped;
- (void)_wiFiStateChangedWithOldState:(int64_t)state newState:(int64_t)newState;
- (void)dealloc;
- (void)loadView;
- (void)setSnippet:(id)snippet;
- (void)settingChangedExternally:(id)externally;
@end

@implementation ACSettingsSwitchUIController

+ (id)snippetViewController
{
  v2 = objc_alloc_init(self);

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

- (void)setSnippet:(id)snippet
{
  snippetCopy = snippet;
  objc_storeStrong(&self->_snippet, snippet);
  settingKeys = [(SASettingBoolSnippet *)self->_snippet settingKeys];
  [(ACSettingsBasicSetting *)self->_setting setDelegate:0];
  v7 = [settingKeys objectAtIndex:0];
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

- (double)desiredHeightForWidth:(double)width
{
  view = [(ACSettingsSwitchUIController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
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
  title = [(ACSettingsSwitchView *)self->_settingView title];
  name = [(ACSettingsBasicSetting *)self->_setting name];
  [title setText:name];

  v7 = self->_settingView;
  icon = [(ACSettingsBasicSetting *)self->_setting icon];
  [(ACSettingsSwitchView *)v7 setIcon:icon];

  switchControl = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [switchControl setOn:{-[ACSettingsSwitchSetting enabled](self->_setting, "enabled")}];

  switchControl2 = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [switchControl2 addTarget:self action:"_switchTapped:" forControlEvents:4096];
}

- (void)_setSettingFromSwitchTapIfNeeded
{
  if (self->_shouldSetSettingDueToTap && ![(ACSettingsSwitchUIController *)self _waitingOnSettingState])
  {
    switchControl = [(ACSettingsSwitchView *)self->_settingView switchControl];
    isOn = [switchControl isOn];

    [(ACSettingsSwitchSetting *)self->_setting setEnabled:isOn];
    switchControl2 = [(ACSettingsSwitchView *)self->_settingView switchControl];
    [switchControl2 setUserInteractionEnabled:1];

    self->_shouldSetSettingDueToTap = 0;
  }
}

- (void)_setSettingFromExternalChangeIfNeeded
{
  if (self->_shouldSetSettingDueToExternalChange && ![(ACSettingsSwitchUIController *)self _waitingOnSettingState])
  {
    switchControl = [(ACSettingsSwitchView *)self->_settingView switchControl];
    [switchControl setOn:-[ACSettingsSwitchSetting enabled](self->_setting animated:{"enabled"), 1}];

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

- (void)_bluetoothAvailabilityChanged:(id)changed
{
  object = [changed object];
  bOOLValue = [object BOOLValue];

  if (bOOLValue)
  {
    [(ACSettingsSwitchUIController *)self _setSettingIfNeeded:1];
    [(ACSettingsSwitchUIController *)self _setSettingFromSwitchTapIfNeeded];

    [(ACSettingsSwitchUIController *)self _setSettingFromExternalChangeIfNeeded];
  }
}

- (void)_wiFiStateChangedWithOldState:(int64_t)state newState:(int64_t)newState
{
  isWiFi = [(ACSettingsSwitchSetting *)self->_setting isWiFi];
  if ((newState & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (isWiFi)
    {
      enabled = [(ACSettingsSwitchSetting *)self->_setting enabled];
      switchControl = [(ACSettingsSwitchView *)self->_settingView switchControl];
      isOn = [switchControl isOn];

      if (enabled != isOn)
      {

        [(ACSettingsSwitchUIController *)self _settingChangedExternally:0];
      }
    }
  }
}

- (void)_switchTapped:(id)tapped
{
  self->_shouldSetSettingDueToTap = 1;
  switchControl = [(ACSettingsSwitchView *)self->_settingView switchControl];
  [switchControl setUserInteractionEnabled:0];

  [(ACSettingsSwitchUIController *)self _setSettingFromSwitchTapIfNeeded];
}

- (void)settingChangedExternally:(id)externally
{
  if (self->_setting == externally)
  {
    [(ACSettingsSwitchUIController *)self _settingChangedExternally:0];
  }
}

@end
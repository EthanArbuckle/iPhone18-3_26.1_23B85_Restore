@interface DepthSetupFirstController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (DepthSetupFirstController)init;
- (id)_unitString;
- (id)alternateButtonTitle;
- (id)animationController;
- (id)autoLaunchSetting;
- (id)detailString;
- (id)deviceDepthLimit;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation DepthSetupFirstController

- (DepthSetupFirstController)init
{
  v5.receiver = self;
  v5.super_class = DepthSetupFirstController;
  v2 = [(DepthSetupFirstController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DepthSetupFirstController *)v2 setStyle:74];
  }

  return v3;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_SETUP_TITLE" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (id)_unitString
{
  v2 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierUnderwaterDepth];
  v3 = _HKGenerateDefaultUnitForQuantityType();

  unitString = [v3 unitString];
  v5 = +[HKUnit meterUnit];
  unitString2 = [v5 unitString];
  if ([unitString isEqualToString:unitString2])
  {
    v7 = @"M";
  }

  else
  {
    v7 = @"FT";
  }

  v8 = v7;

  return v7;
}

- (id)deviceDepthLimit
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v6 = [firstObject valueForProperty:NRDevicePropertyAbsoluteDepthLimit];
    v7 = sub_1478();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "DepthSetupFirstController: Depth limit of current device is %@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = sub_1478();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_2488(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (id)detailString
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CHARON_SETUP_DETAIL" value:&stru_8308 table:@"Localizable"];

  _unitString = [(DepthSetupFirstController *)self _unitString];
  deviceDepthLimit = [(DepthSetupFirstController *)self deviceDepthLimit];
  intValue = [deviceDepthLimit intValue];
  v8 = @"SERIES_";
  if (intValue != 6)
  {
    v8 = &stru_8308;
  }

  v9 = [NSString stringWithFormat:@"CHARON_MAX_DEPTH_%@%@", v8, _unitString];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v9 value:&stru_8308 table:@"Localizable"];

  v12 = [NSString stringWithFormat:v4, v11];

  return v12;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_SUGGESTED_BUTTON_TITLE" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CHARON_ALTERNATE_BUTTON_TITLE" value:&stru_8308 table:@"Localizable"];

  return v3;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)autoLaunchSetting
{
  autoLaunchSetting = self->_autoLaunchSetting;
  if (!autoLaunchSetting)
  {
    v4 = objc_alloc_init(CSLPRFDepthAutoLaunchAppSetting);
    v5 = self->_autoLaunchSetting;
    self->_autoLaunchSetting = v4;

    autoLaunchSetting = self->_autoLaunchSetting;
  }

  return autoLaunchSetting;
}

- (void)suggestedButtonPressed:(id)pressed
{
  autoLaunchSetting = [(DepthSetupFirstController *)self autoLaunchSetting];
  [autoLaunchSetting updateSettingsWithBlock:&stru_81E8];

  deviceDepthLimit = [(DepthSetupFirstController *)self deviceDepthLimit];
  intValue = [deviceDepthLimit intValue];
  v7 = sub_1478();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (intValue == 6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "DepthFirstSetupController: Hiding scuba safety screen for shallow use device", buf, 2u);
    }

    miniFlowDelegate = [(DepthSetupFirstController *)self miniFlowDelegate];
    [miniFlowDelegate miniFlowStepComplete:self];
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "DepthFirstSetupController: Scuba device, presenting safety setup controller", v10, 2u);
    }

    miniFlowDelegate = [(DepthSetupFirstController *)self miniFlowDelegate];
    [miniFlowDelegate miniFlowStepComplete:self nextControllerClass:objc_opt_class()];
  }
}

- (void)alternateButtonPressed:(id)pressed
{
  autoLaunchSetting = [(DepthSetupFirstController *)self autoLaunchSetting];
  [autoLaunchSetting updateSettingsWithBlock:&stru_8208];

  miniFlowDelegate = [(DepthSetupFirstController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self nextControllerClass:objc_opt_class()];
}

- (id)animationController
{
  deviceDepthLimit = [(DepthSetupFirstController *)self deviceDepthLimit];
  intValue = [deviceDepthLimit intValue];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = @"Ultra";
  if (intValue == 6)
  {
    v5 = @"Series";
  }

  v6 = [NSString stringWithFormat:@"Screen-Animation-Dive-%@", v5];
  LOBYTE(v9) = 1;
  v7 = [BPSAnimationControllingBuilder animationControllerWithFileName:v6 fileExtension:0 fileType:0 initialState:0 targetState:0 bundle:v4 autoStart:0.5 startDelay:v9];

  return v7;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
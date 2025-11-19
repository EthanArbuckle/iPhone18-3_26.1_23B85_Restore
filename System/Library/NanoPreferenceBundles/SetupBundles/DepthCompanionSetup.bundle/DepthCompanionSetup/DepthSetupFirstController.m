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
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
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

  v4 = [v3 unitString];
  v5 = +[HKUnit meterUnit];
  v6 = [v5 unitString];
  if ([v4 isEqualToString:v6])
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
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 valueForProperty:NRDevicePropertyAbsoluteDepthLimit];
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

  v5 = [(DepthSetupFirstController *)self _unitString];
  v6 = [(DepthSetupFirstController *)self deviceDepthLimit];
  v7 = [v6 intValue];
  v8 = @"SERIES_";
  if (v7 != 6)
  {
    v8 = &stru_8308;
  }

  v9 = [NSString stringWithFormat:@"CHARON_MAX_DEPTH_%@%@", v8, v5];
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
  v3 = [v2 bundleIdentifier];

  return v3;
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

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(DepthSetupFirstController *)self autoLaunchSetting];
  [v4 updateSettingsWithBlock:&stru_81E8];

  v5 = [(DepthSetupFirstController *)self deviceDepthLimit];
  v6 = [v5 intValue];
  v7 = sub_1478();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "DepthFirstSetupController: Hiding scuba safety screen for shallow use device", buf, 2u);
    }

    v9 = [(DepthSetupFirstController *)self miniFlowDelegate];
    [v9 miniFlowStepComplete:self];
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "DepthFirstSetupController: Scuba device, presenting safety setup controller", v10, 2u);
    }

    v9 = [(DepthSetupFirstController *)self miniFlowDelegate];
    [v9 miniFlowStepComplete:self nextControllerClass:objc_opt_class()];
  }
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = [(DepthSetupFirstController *)self autoLaunchSetting];
  [v4 updateSettingsWithBlock:&stru_8208];

  v5 = [(DepthSetupFirstController *)self miniFlowDelegate];
  [v5 miniFlowStepComplete:self nextControllerClass:objc_opt_class()];
}

- (id)animationController
{
  v2 = [(DepthSetupFirstController *)self deviceDepthLimit];
  v3 = [v2 intValue];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = @"Ultra";
  if (v3 == 6)
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
@interface AccessibilitySettingsMiniFlowController
+ (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
@end

@implementation AccessibilitySettingsMiniFlowController

+ (BOOL)controllerNeedsToRun
{
  v2 = accessibilityGetActiveDevice();
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    return 0;
  }

  v6 = accessibilityActiveAccessibilityFeaturesOnCompanion();
  v5 = [v6 count] != 0;

  return v5;
}

- (id)viewController
{
  accessibilitySettingsViewController = [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];

  if (!accessibilitySettingsViewController)
  {
    delegate = [(AccessibilitySettingsMiniFlowController *)self delegate];
    activePairingDevice = [delegate activePairingDevice];

    v6 = accessibilityActiveAccessibilityFeaturesOnCompanion();
    v7 = [[AccessibilitySettingsViewController alloc] initWithAccessibilityOptions:v6 device:activePairingDevice];
    [(AccessibilitySettingsMiniFlowController *)self setAccessibilitySettingsViewController:v7];

    accessibilitySettingsViewController2 = [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];
    [accessibilitySettingsViewController2 setMiniFlowDelegate:self];
  }

  return [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(AccessibilitySettingsMiniFlowController *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  v5 = objc_alloc_init(class);
  [v5 setMiniFlowDelegate:self];
  [(AccessibilitySettingsMiniFlowController *)self pushController:v5 animated:1];
}

@end
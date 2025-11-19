@interface AccessibilitySettingsMiniFlowController
+ (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)miniFlowStepComplete:(id)a3;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation AccessibilitySettingsMiniFlowController

+ (BOOL)controllerNeedsToRun
{
  v2 = accessibilityGetActiveDevice();
  v3 = [v2 valueForProperty:NRDevicePropertyIsAltAccount];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 0;
  }

  v6 = accessibilityActiveAccessibilityFeaturesOnCompanion();
  v5 = [v6 count] != 0;

  return v5;
}

- (id)viewController
{
  v3 = [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];

  if (!v3)
  {
    v4 = [(AccessibilitySettingsMiniFlowController *)self delegate];
    v5 = [v4 activePairingDevice];

    v6 = accessibilityActiveAccessibilityFeaturesOnCompanion();
    v7 = [[AccessibilitySettingsViewController alloc] initWithAccessibilityOptions:v6 device:v5];
    [(AccessibilitySettingsMiniFlowController *)self setAccessibilitySettingsViewController:v7];

    v8 = [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];
    [v8 setMiniFlowDelegate:self];
  }

  return [(AccessibilitySettingsMiniFlowController *)self accessibilitySettingsViewController];
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(AccessibilitySettingsMiniFlowController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  v5 = objc_alloc_init(a4);
  [v5 setMiniFlowDelegate:self];
  [(AccessibilitySettingsMiniFlowController *)self pushController:v5 animated:1];
}

@end
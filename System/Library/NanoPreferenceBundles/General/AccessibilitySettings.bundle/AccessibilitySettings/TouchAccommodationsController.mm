@interface TouchAccommodationsController
- (TouchAccommodationsController)init;
- (void)dealloc;
@end

@implementation TouchAccommodationsController

- (TouchAccommodationsController)init
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = TouchAccommodationsController;
  v2 = [(AXUISettingsSetupCapableListController *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x277D75AC0];
    v11[0] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v5 = [v3 appearanceWhenContainedInInstancesOfClasses:v4];
    v6 = BPSBridgeTintColor();
    [v5 setTintColor:v6];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSettings_1, @"NanoTouchAccommodationsDefaultsChanged", 0, 1028);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TouchAccommodationsController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

void __63__TouchAccommodationsController_setTouchAccommodationsEnabled___block_invoke()
{
  AXGizmoTouchAccommodationsSetUsageConfirmed(1);

  AXGizmoTouchAccommodationsSetEnabled(1);
}

@end
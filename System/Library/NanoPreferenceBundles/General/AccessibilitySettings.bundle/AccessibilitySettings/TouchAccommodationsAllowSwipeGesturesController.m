@interface TouchAccommodationsAllowSwipeGesturesController
- (TouchAccommodationsAllowSwipeGesturesController)init;
- (void)dealloc;
@end

@implementation TouchAccommodationsAllowSwipeGesturesController

- (TouchAccommodationsAllowSwipeGesturesController)init
{
  v5.receiver = self;
  v5.super_class = TouchAccommodationsAllowSwipeGesturesController;
  v2 = [(AXUISettingsSetupCapableListController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _reloadSettings_0, @"NanoTouchAccommodationsDefaultsChanged", 0, 1028);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = TouchAccommodationsAllowSwipeGesturesController;
  [(AXUISettingsSetupCapableListController *)&v4 dealloc];
}

@end
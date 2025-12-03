@interface AXMotionController
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation AXMotionController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXMotionController;
  [(AXMotionController *)&v6 viewDidLoad];
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _accessibilitySettingsChanged_0, kAXSReduceMotionChangedNotification, 0, 1028);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v4, self, _accessibilitySettingsChanged_0, kAXSPhotosensitiveMitigationEnabledNotification, 0, 1028);
  if (AXDeviceSupportsMotionCues())
  {
    v5 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v5, self, _accessibilitySettingsChanged_0, kAXSMotionCuesPreferenceDidChangeNotification, 0, 1028);
  }
}

- (id)specifiers
{
  if (!self->_helper)
  {
    v3 = objc_opt_new();
    helper = self->_helper;
    self->_helper = v3;

    [(AXDisplayTextMotionSpecifiersHelper *)self->_helper setSettingsController:self];
  }

  v5 = OBJC_IVAR___PSListController__specifiers;
  v6 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v6)
  {
    v7 = [objc_allocWithZone(NSMutableArray) init];
    motionSpecifiers = [(AXDisplayTextMotionSpecifiersHelper *)self->_helper motionSpecifiers];
    [v7 axSafelyAddObjectsFromArray:motionSpecifiers];

    v9 = [v7 copy];
    v10 = *&self->super.AXUISettingsListController_opaque[v5];
    *&self->super.AXUISettingsListController_opaque[v5] = v9;

    v6 = *&self->super.AXUISettingsListController_opaque[v5];
  }

  return v6;
}

@end
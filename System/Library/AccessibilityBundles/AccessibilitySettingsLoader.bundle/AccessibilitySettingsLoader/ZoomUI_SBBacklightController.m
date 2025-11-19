@interface ZoomUI_SBBacklightController
- (void)_undimFromSource:(int64_t)a3;
@end

@implementation ZoomUI_SBBacklightController

- (void)_undimFromSource:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = ZoomUI_SBBacklightController;
  [(ZoomUI_SBBacklightController *)&v4 _undimFromSource:a3];
  v3 = [getZoomServicesClass() sharedInstance];
  [v3 notifyZoomDeviceWillWake];
}

@end
@interface ZoomUI_SBBacklightController
- (void)_undimFromSource:(int64_t)source;
@end

@implementation ZoomUI_SBBacklightController

- (void)_undimFromSource:(int64_t)source
{
  v4.receiver = self;
  v4.super_class = ZoomUI_SBBacklightController;
  [(ZoomUI_SBBacklightController *)&v4 _undimFromSource:source];
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomDeviceWillWake];
}

@end
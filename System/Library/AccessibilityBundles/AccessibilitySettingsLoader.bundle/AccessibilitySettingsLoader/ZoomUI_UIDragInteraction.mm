@interface ZoomUI_UIDragInteraction
- (void)_sessionHandedOffDragImage:(id)image;
- (void)_sessionWillEnd:(id)end withOperation:(unint64_t)operation;
@end

@implementation ZoomUI_UIDragInteraction

- (void)_sessionHandedOffDragImage:(id)image
{
  v4.receiver = self;
  v4.super_class = ZoomUI_UIDragInteraction;
  [(ZoomUI_UIDragInteraction *)&v4 _sessionHandedOffDragImage:image];
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomDragWillStart];
}

- (void)_sessionWillEnd:(id)end withOperation:(unint64_t)operation
{
  v5.receiver = self;
  v5.super_class = ZoomUI_UIDragInteraction;
  [(ZoomUI_UIDragInteraction *)&v5 _sessionWillEnd:end withOperation:operation];
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomDragWillEnd];
}

@end
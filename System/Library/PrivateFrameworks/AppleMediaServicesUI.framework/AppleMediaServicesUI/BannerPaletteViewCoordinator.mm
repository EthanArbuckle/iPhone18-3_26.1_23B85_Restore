@interface BannerPaletteViewCoordinator
- (BOOL)messageViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler;
- (BOOL)messageViewController:(id)controller shouldEnqueueMetricsForDialogResult:(id)result;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewController:(id)controller enqueueActionEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation BannerPaletteViewCoordinator

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  sub_1BB13B054(width, height);
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_1BB13B43C();
}

- (BOOL)messageViewController:(id)controller handleDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = sub_1BB13B794(selfCopy, actionCopy, sub_1BB13CA10, v9);

  return self & 1;
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1BB13BA7C();
}

- (void)messageViewController:(id)controller enqueueActionEventWithFields:(id)fields inTopic:(id)topic
{
  sub_1BB1DD2D8();
  if (topic)
  {
    sub_1BB1DD378();
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1BB13BE08();
}

- (BOOL)messageViewController:(id)controller shouldEnqueueMetricsForDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  v9 = sub_1BB13C244(selfCopy, resultCopy);

  return v9 & 1;
}

@end
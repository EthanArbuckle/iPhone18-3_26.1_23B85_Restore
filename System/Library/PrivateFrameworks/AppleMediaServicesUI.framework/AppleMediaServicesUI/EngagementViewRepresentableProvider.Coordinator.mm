@interface EngagementViewRepresentableProvider.Coordinator
- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
- (void)engagementViewControllerShouldDismiss:(id)dismiss;
@end

@implementation EngagementViewRepresentableProvider.Coordinator

- (void)engagementViewControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1BB15B140();
}

- (void)engagementViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_1BB15B214(errorCopy, result, error);
}

- (BOOL)engagementViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = sub_1BB15B534(selfCopy, actionCopy, sub_1BB13CA10, v9);

  return self & 1;
}

@end
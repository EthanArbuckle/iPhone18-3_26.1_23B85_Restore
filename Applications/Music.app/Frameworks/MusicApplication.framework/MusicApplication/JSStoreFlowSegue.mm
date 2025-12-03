@interface JSStoreFlowSegue
- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion;
- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss;
- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation JSStoreFlowSegue

- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  JSStoreFlowSegue.cloudServiceSetupViewControllerDidDismiss(_:)(dismissCopy);
}

- (void)webViewController:(id)controller handleAuthenticateRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  _s11MusicJSCore16JSStoreFlowSegueC0A11ApplicationE17webViewController_6handle10completionySo08AMSUIWebhI0C_So22AMSAuthenticateRequestCySo0M6ResultCSg_s5Error_pSgtctF_0(controllerCopy, requestCopy, sub_DB118, v9);
}

- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_release(v5);
  return 0;
}

- (void)webViewController:(id)controller handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  sub_DA844(requestCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_DAA6C(result, error);
}

- (id)dynamicViewController:(id)controller contentViewWithDictionary:(id)dictionary frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_AB8FF0();
  v10 = objc_allocWithZone(type metadata accessor for UpsellArtworkGrid());
  dictionaryCopy = dictionary;
  v12 = sub_3624F4(x, y, width, height);

  return v12;
}

- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_DAE24(error);
}

@end
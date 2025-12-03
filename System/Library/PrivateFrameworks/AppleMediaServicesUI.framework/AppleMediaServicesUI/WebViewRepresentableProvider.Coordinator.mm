@interface WebViewRepresentableProvider.Coordinator
- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion;
- (void)webViewController:(id)controller didEncodeNetworkRequest:(id)request;
- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error;
- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion;
@end

@implementation WebViewRepresentableProvider.Coordinator

- (BOOL)webViewController:(id)controller handleDelegateAction:(id)action completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_1BB1DD2D8();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_1BB1D3730(selfCopy, v8, sub_1BB1D9AAC, v9);

  return self & 1;
}

- (void)webViewController:(id)controller didResolveWithResult:(id)result error:(id)error completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (result)
  {
    sub_1BB1DD2D8();
  }

  *(swift_allocObject() + 16) = v10;
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_1BB1D3BB4();
}

- (void)webViewController:(id)controller didEncodeNetworkRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  selfCopy = self;
  sub_1BB1D3DF8(selfCopy, requestCopy);
}

- (void)webViewController:(id)controller didFinishPurchaseWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_1BB1D3FBC(errorCopy, result, error);
}

@end
@interface AngelDialogContext
- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler;
- (void)handleDialogRequest:(id)request resultHandler:(id)handler;
- (void)handlePurchase:(id)purchase paymentSheetDelegate:(id)delegate resultHandler:(id)handler;
@end

@implementation AngelDialogContext

- (void)handleAuthenticateRequest:(id)request resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_100063E88(selfCopy, sub_100012D64, v7);
}

- (void)handleDialogRequest:(id)request resultHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_100064294(requestCopy, selfCopy, v6);
  _Block_release(v6);
}

- (void)handlePurchase:(id)purchase paymentSheetDelegate:(id)delegate resultHandler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  purchaseCopy = purchase;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100064560(purchaseCopy, delegate, selfCopy, v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

@end
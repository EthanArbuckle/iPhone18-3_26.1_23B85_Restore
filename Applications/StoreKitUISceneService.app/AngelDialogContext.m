@interface AngelDialogContext
- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4;
- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4;
- (void)handlePurchase:(id)a3 paymentSheetDelegate:(id)a4 resultHandler:(id)a5;
@end

@implementation AngelDialogContext

- (void)handleAuthenticateRequest:(id)a3 resultHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100063E88(v9, sub_100012D64, v7);
}

- (void)handleDialogRequest:(id)a3 resultHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100064294(v7, v8, v6);
  _Block_release(v6);
}

- (void)handlePurchase:(id)a3 paymentSheetDelegate:(id)a4 resultHandler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100064560(v9, a4, v10, v8);
  _Block_release(v8);

  swift_unknownObjectRelease();
}

@end
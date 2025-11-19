@interface IMBApplePayManager
- (BCApplePayManagerDelegate)delegate;
- (_TtC8Business18IMBApplePayManager)init;
- (id)message;
- (int64_t)applePayStatus;
- (void)extendApplePayTimeout;
- (void)handlePaymentAuthorizationRetryWithTimer:(id)a3;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)presentApplePayWithWindow:(id)a3;
@end

@implementation IMBApplePayManager

- (BCApplePayManagerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)message
{
  v2 = self;
  IMBApplePayManager.message()();
  v4 = v3;

  return v4;
}

- (int64_t)applePayStatus
{
  v2 = self;
  v3 = IMBApplePayManager.applePayStatus()();

  return v3;
}

- (void)presentApplePayWithWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.super.isa = a3;
  IMBApplePayManager.presentApplePay(with:)(v9);
}

- (void)extendApplePayTimeout
{
  v2 = self;
  sub_10002263C();
}

- (void)handlePaymentAuthorizationRetryWithTimer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000227D0(v4);
}

- (_TtC8Business18IMBApplePayManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  IMBApplePayManager.paymentAuthorizationControllerDidFinish(_:)(v4);
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100023C8C(v9, v10, v11, v8);
  _Block_release(v8);
}

@end
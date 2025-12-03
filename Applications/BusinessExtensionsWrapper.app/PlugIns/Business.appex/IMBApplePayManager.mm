@interface IMBApplePayManager
- (BCApplePayManagerDelegate)delegate;
- (_TtC8Business18IMBApplePayManager)init;
- (id)message;
- (int64_t)applePayStatus;
- (void)extendApplePayTimeout;
- (void)handlePaymentAuthorizationRetryWithTimer:(id)timer;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)presentApplePayWithWindow:(id)window;
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
  selfCopy = self;
  IMBApplePayManager.message()();
  v4 = v3;

  return v4;
}

- (int64_t)applePayStatus
{
  selfCopy = self;
  v3 = IMBApplePayManager.applePayStatus()();

  return v3;
}

- (void)presentApplePayWithWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.super.isa = window;
  IMBApplePayManager.presentApplePay(with:)(v9);
}

- (void)extendApplePayTimeout
{
  selfCopy = self;
  sub_10002263C();
}

- (void)handlePaymentAuthorizationRetryWithTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  sub_1000227D0(timerCopy);
}

- (_TtC8Business18IMBApplePayManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  IMBApplePayManager.paymentAuthorizationControllerDidFinish(_:)(finishCopy);
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v8 = _Block_copy(handler);
  _Block_copy(v8);
  controllerCopy = controller;
  paymentCopy = payment;
  selfCopy = self;
  sub_100023C8C(controllerCopy, paymentCopy, selfCopy, v8);
  _Block_release(v8);
}

@end
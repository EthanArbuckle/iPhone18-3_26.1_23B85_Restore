@interface OsloAuthenticationTask
- (_TtC26ADAskForExceptionExtension22OsloAuthenticationTask)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation OsloAuthenticationTask

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_100016D78();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didAuthorizePayment:(PKPayment *)payment handler:(id)handler
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = payment;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100017DC0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100019638;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100019648;
  v17[5] = v16;
  controllerCopy = controller;
  paymentCopy = payment;
  selfCopy = self;
  sub_100016174(0, 0, v12, &unk_100019658, v17);
}

- (_TtC26ADAskForExceptionExtension22OsloAuthenticationTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
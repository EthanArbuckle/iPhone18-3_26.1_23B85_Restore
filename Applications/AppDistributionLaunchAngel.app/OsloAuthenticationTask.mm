@interface OsloAuthenticationTask
- (_TtC26AppDistributionLaunchAngel22OsloAuthenticationTask)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didAuthorizePayment:(PKPayment *)a4 handler:(id)a5;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
@end

@implementation OsloAuthenticationTask

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_100031B9C();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didAuthorizePayment:(PKPayment *)a4 handler:(id)a5
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100066AB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100066AC8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_100031388(0, 0, v12, &unk_100066AD8, v17);
}

- (_TtC26AppDistributionLaunchAngel22OsloAuthenticationTask)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
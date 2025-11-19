@interface RemoteAlertInvokerContext
- (void)presentIconChangeRemoteAlertForIdentity:(id)a3 completion:(id)a4;
@end

@implementation RemoteAlertInvokerContext

- (void)presentIconChangeRemoteAlertForIdentity:(id)a3 completion:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    _Block_copy(v6);
    v9 = a3;

    sub_100006DE4(v9, v8, v6);
    _Block_release(v6);

    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_release(v6);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

@end
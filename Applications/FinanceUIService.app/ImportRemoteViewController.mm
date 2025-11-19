@interface ImportRemoteViewController
- (_TtC16FinanceUIService26ImportRemoteViewController)initWithCoder:(id)a3;
- (_TtC16FinanceUIService26ImportRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)loadView;
@end

@implementation ImportRemoteViewController

- (void)loadView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(UIView);
  v7 = self;
  v4 = [v3 init];
  [(ImportRemoteViewController *)v7 setView:v4];

  v5 = [(ImportRemoteViewController *)v7 view];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)dealloc
{
  if (*&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection])
  {
    v6 = *&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection];
    v3 = self;
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ImportRemoteViewController();
  [(ImportRemoteViewController *)&v5 dealloc];
}

- (_TtC16FinanceUIService26ImportRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_1000088F8(v6, a3, a4);

  return v9;
}

- (_TtC16FinanceUIService26ImportRemoteViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_100008ABC(a3);

  return v4;
}

@end
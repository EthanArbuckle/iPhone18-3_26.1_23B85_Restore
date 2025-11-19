@interface FinanceRemoteViewController
- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithCoder:(id)a3;
- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation FinanceRemoteViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = sub_10000EA34;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_10000D62C(a3, v10, v9);
  sub_100006BA0(v10);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = sub_10000E908;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = a3;
  v12 = self;
  sub_10000DCD8(a3, v10, v9);
  sub_100006BA0(v10);
}

- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
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
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v7;
  }

  v8 = a4;
  Logger.init(subsystem:category:)();
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for FinanceRemoteViewController();
  v10 = [(FinanceRemoteViewController *)&v12 initWithNibName:v9 bundle:v8];

  return v10;
}

- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  Logger.init(subsystem:category:)();
  v8.receiver = self;
  v8.super_class = type metadata accessor for FinanceRemoteViewController();
  v6 = [(FinanceRemoteViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end
@interface FinanceRemoteViewController
- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithCoder:(id)coder;
- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation FinanceRemoteViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_10000D62C(context, v10, v9);
  sub_100006BA0(v10);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_10000DCD8(context, v10, v9);
  sub_100006BA0(v10);
}

- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v7;
  }

  bundleCopy = bundle;
  Logger.init(subsystem:category:)();
  if (name)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for FinanceRemoteViewController();
  v10 = [(FinanceRemoteViewController *)&v12 initWithNibName:v9 bundle:bundleCopy];

  return v10;
}

- (_TtC16FinanceUIService27FinanceRemoteViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  Logger.init(subsystem:category:)();
  v8.receiver = self;
  v8.super_class = type metadata accessor for FinanceRemoteViewController();
  v6 = [(FinanceRemoteViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
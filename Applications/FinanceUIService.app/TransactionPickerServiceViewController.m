@interface TransactionPickerServiceViewController
- (_TtC16FinanceUIService38TransactionPickerServiceViewController)initWithCoder:(id)a3;
- (_TtC16FinanceUIService38TransactionPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation TransactionPickerServiceViewController

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_100001BB0();
}

- (void)viewDidDisappear:(BOOL)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_100001D4C(a3);
}

- (_TtC16FinanceUIService38TransactionPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v9 = sub_100003594(v6, a3, a4);

  return v9;
}

- (_TtC16FinanceUIService38TransactionPickerServiceViewController)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_100003780(a3);

  return v4;
}

@end
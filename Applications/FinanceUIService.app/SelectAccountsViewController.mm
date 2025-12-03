@interface SelectAccountsViewController
- (_TtC16FinanceUIService28SelectAccountsViewController)initWithCoder:(id)coder;
- (_TtC16FinanceUIService28SelectAccountsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)loadView;
@end

@implementation SelectAccountsViewController

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
  selfCopy = self;
  v4 = [v3 init];
  [(SelectAccountsViewController *)selfCopy setView:v4];

  view = [(SelectAccountsViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)dealloc
{
  if (*&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection])
  {
    v6 = *&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService28SelectAccountsViewController_daemonConnection];
    selfCopy = self;
    sub_100003FFC(&qword_1000191B0, &qword_10000FE18);
    sub_100006C00();
    FinanceXPCConnection.invalidate()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for SelectAccountsViewController();
  [(SelectAccountsViewController *)&v5 dealloc];
}

- (_TtC16FinanceUIService28SelectAccountsViewController)initWithNibName:(id)name bundle:(id)bundle
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
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_10000B010(v6, name, bundle);

  return v9;
}

- (_TtC16FinanceUIService28SelectAccountsViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_10000B238(coder);

  return v4;
}

@end
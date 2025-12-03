@interface IconChangeAlertRootViewController
- (_TtC19CoreServicesUIAgent33IconChangeAlertRootViewController)initWithCoder:(id)coder;
- (_TtC19CoreServicesUIAgent33IconChangeAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)waitForUserAcknowledgementWithCompletion:(id)completion;
@end

@implementation IconChangeAlertRootViewController

- (void)waitForUserAcknowledgementWithCompletion:(id)completion
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(completion);
  _Block_copy(v5);
  selfCopy = self;
  sub_100003AD4(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (_TtC19CoreServicesUIAgent33IconChangeAlertRootViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus;
  *v4 = &_swiftEmptyArrayStorage;
  v4[8] = 0;
  *&self->acknowledgementStatus[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

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
  [(IconChangeAlertRootViewController *)selfCopy setView:v4];
}

- (_TtC19CoreServicesUIAgent33IconChangeAlertRootViewController)initWithNibName:(id)name bundle:(id)bundle
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
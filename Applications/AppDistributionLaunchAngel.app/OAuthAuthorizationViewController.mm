@interface OAuthAuthorizationViewController
- (_TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (int64_t)preferredStatusBarStyle;
@end

@implementation OAuthAuthorizationViewController

- (_TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_responseAction) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (int64_t)preferredStatusBarStyle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sessionCopy = session;
  selfCopy = self;
  sub_1000439BC();
  v8 = v7;

  return v8;
}

@end
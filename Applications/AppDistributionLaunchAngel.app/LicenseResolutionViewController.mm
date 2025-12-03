@interface LicenseResolutionViewController
- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)safariViewControllerDidFinish:(id)finish;
@end

@implementation LicenseResolutionViewController

- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad;
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  *(&self->super.super.super.isa + v5) = userInterfaceIdiom == 1;
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

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad);

  return ~v3 & 1;
}

- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_100007654(0, 0, v7, &unk_1000662F0, v9);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_100012C50();
}

@end
@interface DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController
- (_TtCV7Preview31DocumentSceneUIKitRepresentable38DocumentLaunchExperienceViewController)init;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController

- (void)loadView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(type metadata accessor for LoupeHostingOverlayView());
  v5 = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [(DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController();
  v3 = self;
  [(DocumentSceneUIKitRepresentable.DocumentLaunchExperienceViewController *)&v4 viewDidLoad];
  sub_1000822E8(*(&v3->super.super.super.super.isa + OBJC_IVAR____TtCV7Preview31DocumentSceneUIKitRepresentable38DocumentLaunchExperienceViewController_documentViewController), 1, 0);
}

- (_TtCV7Preview31DocumentSceneUIKitRepresentable38DocumentLaunchExperienceViewController)init
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
@interface RAPNotificationDetailsCoordinator
- (ActionCoordination)coordinator;
- (UIViewController)parentViewController;
- (_TtC4Maps33RAPNotificationDetailsCoordinator)init;
- (_TtC4Maps33RAPNotificationDetailsCoordinator)initWithParentViewController:(id)controller;
- (void)openURLWithDetailsViewController:(id)controller URL:(id)l;
- (void)presentRAPNotificationDetailsViewControllerWithRapRecord:(id)record entryPoint:(int)point;
@end

@implementation RAPNotificationDetailsCoordinator

- (UIViewController)parentViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ActionCoordination)coordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps33RAPNotificationDetailsCoordinator)initWithParentViewController:(id)controller
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC4Maps33RAPNotificationDetailsCoordinator_rapStatusDownloader;
  v6 = objc_allocWithZone(RAPSubmissionStatusDownloader);
  controllerCopy = controller;
  *(self + v5) = [v6 initWithQuerySource:2];
  swift_unknownObjectWeakAssign();
  v10.receiver = self;
  v10.super_class = type metadata accessor for RAPNotificationDetailsCoordinator();
  v8 = [(RAPNotificationDetailsCoordinator *)&v10 init];

  return v8;
}

- (_TtC4Maps33RAPNotificationDetailsCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentRAPNotificationDetailsViewControllerWithRapRecord:(id)record entryPoint:(int)point
{
  recordCopy = record;
  selfCopy = self;
  sub_1003A2B98(recordCopy, point);
}

- (void)openURLWithDetailsViewController:(id)controller URL:(id)l
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    controllerCopy = controller;
    selfCopy = self;
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    [v11 viewController:controllerCopy openURL:v15];

    swift_unknownObjectRelease();
  }

  (*(v7 + 8))(v9, v6);
}

@end
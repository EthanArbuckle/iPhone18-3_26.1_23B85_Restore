@interface CRLPersistentFollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform32CRLPersistentFollowHUDController)init;
- (_TtC8Freeform32CRLPersistentFollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 accessibilityExperienceCoordinator:(id)a7 stopButtonClickedHandler:(id)a8;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (id)viewControllerForLargeContentViewerInteraction:(id)a3;
- (void)setAccessibilityAnnouncement:(id)a3;
- (void)setContainerView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setHeightConstraint:(id)a3;
- (void)setHideTimer:(id)a3;
- (void)setHudView:(id)a3;
- (void)setSwipeGestureRecognizer:(id)a3;
- (void)setTimeStartedShowing:(id)a3;
- (void)stopButtonClickedWithSender:(id)a3;
- (void)updateForAppearance;
@end

@implementation CRLPersistentFollowHUDController

- (void)setContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView) = a3;
  v3 = a3;
}

- (void)setHudView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView) = a3;
  v3 = a3;
}

- (void)setContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView) = a3;
  v3 = a3;
}

- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)message
{
  v2 = self;
  sub_100A4C94C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSDate)timeStartedShowing
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  sub_10000BE14(self + v6, v5, &qword_101A0A320);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setTimeStartedShowing:(id)a3
{
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  v11 = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (void)setHideTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer) = a3;
  v3 = a3;
}

- (NSString)accessibilityAnnouncement
{
  if (*(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityAnnouncement:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer) = a3;
  v3 = a3;
}

- (void)setHeightConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint) = a3;
  v3 = a3;
}

- (void)stopButtonClickedWithSender:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10067F2EC(v3);
    v3(v5);

    sub_1000C1014(v3);
  }
}

- (_TtC8Freeform32CRLPersistentFollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 accessibilityExperienceCoordinator:(id)a7 stopButtonClickedHandler:(id)a8
{
  v13 = _Block_copy(a8);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_100685EBC;
  }

  else
  {
    v14 = 0;
  }

  swift_unknownObjectRetain();
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a7;
  return sub_100A4E908(a3, v15, a5, a7, v13, v14, a6);
}

- (_TtC8Freeform32CRLPersistentFollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateForAppearance
{
  v5 = self;
  sub_10105B41C();
  v2 = *(v5 + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView);
  v3 = sub_100A4CC7C();
  v4 = [v3 UIColor];

  [v2 setBackgroundColor:v4];
}

- (id)viewControllerForLargeContentViewerInteraction:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = [objc_allocWithZone(UIViewController) init];
  }

  return Strong;
}

@end
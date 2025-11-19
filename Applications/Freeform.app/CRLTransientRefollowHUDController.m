@interface CRLTransientRefollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform33CRLTransientRefollowHUDController)init;
- (_TtC8Freeform33CRLTransientRefollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 resumeButtonClickedHandler:(id)a7;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (double)timeLeftToShow;
- (id)viewControllerForLargeContentViewerInteraction:(id)a3;
- (void)resumeButtonClickedWithSender:(id)a3;
- (void)setAccessibilityAnnouncement:(id)a3;
- (void)setContainerView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setHeightConstraint:(id)a3;
- (void)setHideTimer:(id)a3;
- (void)setHudView:(id)a3;
- (void)setShowing:(BOOL)a3;
- (void)setSwipeGestureRecognizer:(id)a3;
- (void)setTimeStartedShowing:(id)a3;
- (void)swipedWithSender:(id)a3;
- (void)updateForAppearance;
@end

@implementation CRLTransientRefollowHUDController

- (void)setContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView) = a3;
  v3 = a3;
}

- (void)setHudView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView) = a3;
  v3 = a3;
}

- (void)setContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView) = a3;
  v3 = a3;
}

- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)message
{
  sub_100B0C488();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSDate)timeStartedShowing
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
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

  v10 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
  swift_beginAccess();
  v11 = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (double)timeLeftToShow
{
  v2 = self;
  sub_100B09330();
  v4 = v3;

  return v4;
}

- (void)setHideTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer) = a3;
  v3 = a3;
}

- (void)setShowing:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_showing) = a3;
  v3 = self;
  sub_100B095D8();
}

- (NSString)accessibilityAnnouncement
{
  if (*(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement + 8))
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

  v6 = (self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer) = a3;
  v3 = a3;
}

- (void)swipedWithSender:(id)a3
{
  if (a3)
  {
    v5 = self;
    v4 = a3;
    sub_100B08A80(1, &unk_101895490, sub_100B0C464, &unk_1018954A8);
  }
}

- (void)setHeightConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint) = a3;
  v3 = a3;
}

- (void)resumeButtonClickedWithSender:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler);
  v4 = self;
  if (v3)
  {
    v5 = sub_10067F2EC(v3);
    v3(v5);
    v4 = sub_1000C1014(v3);
  }

  if (*(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideOnTouch) == 1)
  {
    v4 = sub_100B08A80(1, &unk_101895490, sub_100B0C464, &unk_1018954A8);
  }

  _objc_release_x4(v4);
}

- (_TtC8Freeform33CRLTransientRefollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 resumeButtonClickedHandler:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_100685EBC;
  }

  else
  {
    v12 = 0;
  }

  swift_unknownObjectRetain();
  v13 = a4;
  swift_unknownObjectRetain();
  return sub_100B0B8F8(a3, v13, a5, v11, v12, a6);
}

- (_TtC8Freeform33CRLTransientRefollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateForAppearance
{
  v5 = self;
  sub_10105B41C();
  v2 = *(v5 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView);
  v3 = sub_100B09C74();
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
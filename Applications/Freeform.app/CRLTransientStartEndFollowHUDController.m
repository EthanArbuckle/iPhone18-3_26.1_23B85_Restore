@interface CRLTransientStartEndFollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)init;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 isStartFollow:(BOOL)a7;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)a3 numberOfParticipants:(int64_t)a4 delegate:(id)a5 canvasWidth:(double)a6 isStartFollow:(BOOL)a7;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (double)timeLeftToShow;
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
- (void)touchedHUDWithSender:(id)a3;
- (void)updateForAppearance;
@end

@implementation CRLTransientStartEndFollowHUDController

- (void)setContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView) = a3;
  v3 = a3;
}

- (void)setHudView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView) = a3;
  v3 = a3;
}

- (void)setContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView) = a3;
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
  sub_100807914();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSDate)timeStartedShowing
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  sub_10005F954(self + v6, v5);
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

  v10 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  v11 = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (double)timeLeftToShow
{
  v2 = self;
  sub_100807040();
  v4 = v3;

  return v4;
}

- (void)setHideTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer) = a3;
  v3 = a3;
}

- (void)setShowing:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing) = a3;
  v3 = self;
  sub_1008072D0();
}

- (NSString)accessibilityAnnouncement
{
  if (*(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement + 8))
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

  v6 = (self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer) = a3;
  v3 = a3;
}

- (void)swipedWithSender:(id)a3
{
  if (a3)
  {
    v5 = self;
    v4 = a3;
    sub_100B08A58(1);
  }
}

- (void)setHeightConstraint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint) = a3;
  v3 = a3;
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)a3 followingParticipant:(id)a4 delegate:(id)a5 canvasWidth:(double)a6 isStartFollow:(BOOL)a7
{
  swift_unknownObjectRetain();
  v12 = a4;
  swift_unknownObjectRetain();
  return sub_100809028(a6, a3, v12, a5, a7);
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)a3 numberOfParticipants:(int64_t)a4 delegate:(id)a5 canvasWidth:(double)a6 isStartFollow:(BOOL)a7
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1008092AC(a6, a3, a4, a5, a7);
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)touchedHUDWithSender:(id)a3
{
  if (*(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideOnTouch) == 1)
  {
    v4 = self;
    sub_100B08A58(1);
  }
}

- (void)updateForAppearance
{
  v2 = self;
  sub_10105B41C();
  _UISolariumEnabled();
}

@end
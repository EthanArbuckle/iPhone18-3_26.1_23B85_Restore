@interface CRLTransientStartEndFollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)init;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width isStartFollow:(BOOL)follow;
- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)manager numberOfParticipants:(int64_t)participants delegate:(id)delegate canvasWidth:(double)width isStartFollow:(BOOL)follow;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (double)timeLeftToShow;
- (void)setAccessibilityAnnouncement:(id)announcement;
- (void)setContainerView:(id)view;
- (void)setContentView:(id)view;
- (void)setHeightConstraint:(id)constraint;
- (void)setHideTimer:(id)timer;
- (void)setHudView:(id)view;
- (void)setShowing:(BOOL)showing;
- (void)setSwipeGestureRecognizer:(id)recognizer;
- (void)setTimeStartedShowing:(id)showing;
- (void)swipedWithSender:(id)sender;
- (void)touchedHUDWithSender:(id)sender;
- (void)updateForAppearance;
@end

@implementation CRLTransientStartEndFollowHUDController

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView) = view;
  viewCopy = view;
}

- (void)setHudView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView) = view;
  viewCopy = view;
}

- (void)setContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView) = view;
  viewCopy = view;
}

- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)message
{
  selfCopy = self;
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

- (void)setTimeStartedShowing:(id)showing
{
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (showing)
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
  selfCopy = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (double)timeLeftToShow
{
  selfCopy = self;
  sub_100807040();
  v4 = v3;

  return v4;
}

- (void)setHideTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer) = timer;
  timerCopy = timer;
}

- (void)setShowing:(BOOL)showing
{
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing) = showing;
  selfCopy = self;
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

- (void)setAccessibilityAnnouncement:(id)announcement
{
  if (announcement)
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

- (void)setSwipeGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_swipeGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (void)swipedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    senderCopy = sender;
    sub_100B08A58(1);
  }
}

- (void)setHeightConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint) = constraint;
  constraintCopy = constraint;
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width isStartFollow:(BOOL)follow
{
  swift_unknownObjectRetain();
  participantCopy = participant;
  swift_unknownObjectRetain();
  return sub_100809028(width, manager, participantCopy, delegate, follow);
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)initWithManager:(id)manager numberOfParticipants:(int64_t)participants delegate:(id)delegate canvasWidth:(double)width isStartFollow:(BOOL)follow
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1008092AC(width, manager, participants, delegate, follow);
}

- (_TtC8Freeform39CRLTransientStartEndFollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)touchedHUDWithSender:(id)sender
{
  if (*(self + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideOnTouch) == 1)
  {
    selfCopy = self;
    sub_100B08A58(1);
  }
}

- (void)updateForAppearance
{
  selfCopy = self;
  sub_10105B41C();
  _UISolariumEnabled();
}

@end
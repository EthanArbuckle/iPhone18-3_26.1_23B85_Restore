@interface CRLPersistentFollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform32CRLPersistentFollowHUDController)init;
- (_TtC8Freeform32CRLPersistentFollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width accessibilityExperienceCoordinator:(id)coordinator stopButtonClickedHandler:(id)handler;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (id)viewControllerForLargeContentViewerInteraction:(id)interaction;
- (void)setAccessibilityAnnouncement:(id)announcement;
- (void)setContainerView:(id)view;
- (void)setContentView:(id)view;
- (void)setHeightConstraint:(id)constraint;
- (void)setHideTimer:(id)timer;
- (void)setHudView:(id)view;
- (void)setSwipeGestureRecognizer:(id)recognizer;
- (void)setTimeStartedShowing:(id)showing;
- (void)stopButtonClickedWithSender:(id)sender;
- (void)updateForAppearance;
@end

@implementation CRLPersistentFollowHUDController

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView) = view;
  viewCopy = view;
}

- (void)setHudView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hudView) = view;
  viewCopy = view;
}

- (void)setContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_containerView) = view;
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

  v10 = OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  selfCopy = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (void)setHideTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_hideTimer) = timer;
  timerCopy = timer;
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

  v6 = (self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_swipeGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (void)setHeightConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_heightConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)stopButtonClickedWithSender:(id)sender
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_stopButtonClickedHandler);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10067F2EC(v3);
    v3(v5);

    sub_1000C1014(v3);
  }
}

- (_TtC8Freeform32CRLPersistentFollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width accessibilityExperienceCoordinator:(id)coordinator stopButtonClickedHandler:(id)handler
{
  v13 = _Block_copy(handler);
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
  participantCopy = participant;
  swift_unknownObjectRetain();
  coordinatorCopy = coordinator;
  return sub_100A4E908(manager, participantCopy, delegate, coordinator, v13, v14, width);
}

- (_TtC8Freeform32CRLPersistentFollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateForAppearance
{
  selfCopy = self;
  sub_10105B41C();
  v2 = *(selfCopy + OBJC_IVAR____TtC8Freeform32CRLPersistentFollowHUDController_contentView);
  v3 = sub_100A4CC7C();
  uIColor = [v3 UIColor];

  [v2 setBackgroundColor:uIColor];
}

- (id)viewControllerForLargeContentViewerInteraction:(id)interaction
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = [objc_allocWithZone(UIViewController) init];
  }

  return Strong;
}

@end
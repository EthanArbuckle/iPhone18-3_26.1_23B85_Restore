@interface CRLTransientRefollowHUDController
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform33CRLTransientRefollowHUDController)init;
- (_TtC8Freeform33CRLTransientRefollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width resumeButtonClickedHandler:(id)handler;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (double)timeLeftToShow;
- (id)viewControllerForLargeContentViewerInteraction:(id)interaction;
- (void)resumeButtonClickedWithSender:(id)sender;
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
- (void)updateForAppearance;
@end

@implementation CRLTransientRefollowHUDController

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView) = view;
  viewCopy = view;
}

- (void)setHudView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView) = view;
  viewCopy = view;
}

- (void)setContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView) = view;
  viewCopy = view;
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

  v10 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
  swift_beginAccess();
  selfCopy = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (double)timeLeftToShow
{
  selfCopy = self;
  sub_100B09330();
  v4 = v3;

  return v4;
}

- (void)setHideTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer) = timer;
  timerCopy = timer;
}

- (void)setShowing:(BOOL)showing
{
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_showing) = showing;
  selfCopy = self;
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

  v6 = (self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (void)swipedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    senderCopy = sender;
    sub_100B08A80(1, &unk_101895490, sub_100B0C464, &unk_1018954A8);
  }
}

- (void)setHeightConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)resumeButtonClickedWithSender:(id)sender
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler);
  selfCopy = self;
  if (v3)
  {
    v5 = sub_10067F2EC(v3);
    v3(v5);
    selfCopy = sub_1000C1014(v3);
  }

  if (*(self + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideOnTouch) == 1)
  {
    selfCopy = sub_100B08A80(1, &unk_101895490, sub_100B0C464, &unk_1018954A8);
  }

  _objc_release_x4(selfCopy);
}

- (_TtC8Freeform33CRLTransientRefollowHUDController)initWithManager:(id)manager followingParticipant:(id)participant delegate:(id)delegate canvasWidth:(double)width resumeButtonClickedHandler:(id)handler
{
  v11 = _Block_copy(handler);
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
  participantCopy = participant;
  swift_unknownObjectRetain();
  return sub_100B0B8F8(manager, participantCopy, delegate, v11, v12, width);
}

- (_TtC8Freeform33CRLTransientRefollowHUDController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateForAppearance
{
  selfCopy = self;
  sub_10105B41C();
  v2 = *(selfCopy + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView);
  v3 = sub_100B09C74();
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
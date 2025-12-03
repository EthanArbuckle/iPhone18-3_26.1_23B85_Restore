@interface CRLCollaboratorBaseStatusHUDController_mi
- (NSDate)timeStartedShowing;
- (NSString)accessibilityAnnouncement;
- (NSString)message;
- (_TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi)init;
- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager;
- (double)timeLeftToShow;
- (void)action;
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

@implementation CRLCollaboratorBaseStatusHUDController_mi

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView) = view;
  viewCopy = view;
}

- (void)setHudView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView) = view;
  viewCopy = view;
}

- (void)setContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_containerView);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_containerView) = view;
  viewCopy = view;
}

- (_TtP8Freeform23CRLStatusHUDManaging_mi_)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)message
{
  v2 = *((swift_isaMask & *self) + 0x2D8);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSDate)timeStartedShowing
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
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

  v10 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
  swift_beginAccess();
  selfCopy = self;
  sub_100015CDC(v7, self + v10);
  swift_endAccess();
}

- (double)timeLeftToShow
{
  selfCopy = self;
  sub_100805AC0();
  v4 = v3;

  return v4;
}

- (void)setHideTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer) = timer;
  timerCopy = timer;
}

- (void)setShowing:(BOOL)showing
{
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_showing) = showing;
  selfCopy = self;
  sub_100805D40();
}

- (NSString)accessibilityAnnouncement
{
  if (*(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_accessibilityAnnouncement + 8))
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

  v6 = (self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_accessibilityAnnouncement);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setSwipeGestureRecognizer:(id)recognizer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_swipeGestureRecognizer);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_swipeGestureRecognizer) = recognizer;
  recognizerCopy = recognizer;
}

- (void)swipedWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    senderCopy = sender;
    sub_100B08A30(1);
  }
}

- (void)setHeightConstraint:(id)constraint
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_heightConstraint);
  *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_heightConstraint) = constraint;
  constraintCopy = constraint;
}

- (void)touchedHUDWithSender:(id)sender
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideOnTouch);
  selfCopy = self;
  if (v3 == 1)
  {
    sub_100B08A30(1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong collabHUDActivated];
    swift_unknownObjectRelease();
  }
}

- (void)updateForAppearance
{
  selfCopy = self;
  sub_10105B41C();
}

- (void)action
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong collabHUDActivated];

    swift_unknownObjectRelease();
  }
}

- (_TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
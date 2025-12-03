@interface CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer
- (_TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer

- (_TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_10005AD00(v6, action);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_100006370(0, &qword_101A23BE0);
  sub_10000FDE0(&qword_101A23BE8, &qword_101A23BE0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_100F608BC(v6, eventCopy);
}

- (void)reset
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch);
  *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch) = 0;
}

@end
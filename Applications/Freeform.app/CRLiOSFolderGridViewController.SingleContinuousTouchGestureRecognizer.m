@interface CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer
- (_TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSFolderGridViewController.SingleContinuousTouchGestureRecognizer

- (_TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_10005AD00(v6, a4);
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_100006370(0, &qword_101A23BE0);
  sub_10000FDE0(&qword_101A23BE8, &qword_101A23BE0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_100F608BC(v6, v7);
}

- (void)reset
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch);
  *(&self->super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController38SingleContinuousTouchGestureRecognizer_trackedTouch) = 0;
}

@end
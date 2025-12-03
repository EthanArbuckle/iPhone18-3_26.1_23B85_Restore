@interface CAMFocusLockGestureRecognizer
- (CAMFocusLockGestureRecognizer)init;
- (CAMFocusLockGestureRecognizer)initWithGestureBegan:(id)began gestureEnded:(id)ended;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
@end

@implementation CAMFocusLockGestureRecognizer

- (CAMFocusLockGestureRecognizer)initWithGestureBegan:(id)began gestureEnded:(id)ended
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(began);
  v9 = _Block_copy(ended);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(&self->super.isa + OBJC_IVAR___CAMFocusLockGestureRecognizer_halfPressTimer) = 0;
  *(&self->super.isa + OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer) = 0;
  *(&self->super.isa + OBJC_IVAR___CAMFocusLockGestureRecognizer_active) = 0;
  v12 = (self + OBJC_IVAR___CAMFocusLockGestureRecognizer_beganHandler);
  *v12 = sub_100020B08;
  v12[1] = v10;
  v13 = (self + OBJC_IVAR___CAMFocusLockGestureRecognizer_endedHandler);
  *v13 = sub_100020B58;
  v13[1] = v11;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(CAMFocusLockGestureRecognizer *)&v15 init];
}

- (void)contactBeganWithAction:(id)action
{
  v4 = OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer;
  v5 = *(&self->super.isa + OBJC_IVAR___CAMFocusLockGestureRecognizer_lockWindowTimer);
  selfCopy = self;
  if (v5)
  {
    [v5 invalidate];
    v7 = *(&self->super.isa + v4);
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.isa + v4) = 0;
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_100020194(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1000207F0();
}

- (CAMFocusLockGestureRecognizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
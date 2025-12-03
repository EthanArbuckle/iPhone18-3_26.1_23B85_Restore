@interface CAMIdleContactRecognizer
- (CAMIdleContactRecognizer)init;
- (CAMIdleContactRecognizerDelegate)delegate;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
- (void)setDelegate:(id)delegate;
- (void)setIsEnabled:(BOOL)enabled;
@end

@implementation CAMIdleContactRecognizer

- (CAMIdleContactRecognizerDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v3 = *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_delegate);
  *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setIsEnabled:(BOOL)enabled
{
  *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_isEnabled) = enabled;
  selfCopy = self;
  sub_10001CF10();
}

- (void)contactBeganWithAction:(id)action
{
  selfCopy = self;
  static Date.timeIntervalSinceReferenceDate.getter();
  v3 = selfCopy + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp;
  *v3 = v4;
  v3[8] = 0;
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_10001D428(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  v3 = self + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp;
  *v3 = 0;
  v3[8] = 1;
}

- (CAMIdleContactRecognizer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_delegate) = 0;
  *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_pollingTimer) = 0;
  v4 = self + OBJC_IVAR___CAMIdleContactRecognizer_lastNonIdleTimestamp;
  *v4 = 0;
  v4[8] = 1;
  *(&self->super.isa + OBJC_IVAR___CAMIdleContactRecognizer_isEnabled) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CAMIdleContactRecognizer *)&v6 init];
}

@end
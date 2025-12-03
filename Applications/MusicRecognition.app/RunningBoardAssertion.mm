@interface RunningBoardAssertion
- (_TtC16MusicRecognition21RunningBoardAssertion)init;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
@end

@implementation RunningBoardAssertion

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000CEC2C(invalidateCopy);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  selfCopy = self;
  errorCopy = error;
  sub_1000CED68(assertionCopy, error);
}

- (_TtC16MusicRecognition21RunningBoardAssertion)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC16MusicRecognition21RunningBoardAssertion_assertion) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(RunningBoardAssertion *)&v5 init];
}

@end
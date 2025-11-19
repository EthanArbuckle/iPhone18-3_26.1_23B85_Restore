@interface RunningBoardAssertion
- (_TtC16MusicRecognition21RunningBoardAssertion)init;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
@end

@implementation RunningBoardAssertion

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000CEC2C(v4);
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000CED68(v6, a4);
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
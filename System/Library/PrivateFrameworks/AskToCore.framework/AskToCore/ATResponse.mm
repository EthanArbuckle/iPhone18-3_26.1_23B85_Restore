@interface ATResponse
- (NSString)description;
- (NSString)responderHandle;
- (_TtC5AskTo10ATQuestion)originalQuestion;
- (_TtC9AskToCore10ATResponse)init;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setOriginalQuestion:(id)question;
- (void)setResponderHandle:(id)handle;
@end

@implementation ATResponse

- (_TtC5AskTo10ATQuestion)originalQuestion
{
  v3 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOriginalQuestion:(id)question
{
  v5 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = question;
  questionCopy = question;
}

- (NSString)responderHandle
{
  v2 = (self + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_2410DF0A0();

  return v5;
}

- (void)setResponderHandle:(id)handle
{
  v4 = sub_2410DF0C0();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ATResponse.encode(with:)(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(swift_getObjectType());
  selfCopy = self;
  v6 = sub_2410D4468(selfCopy);

  v7 = sub_2410DF8C0();
  return v7;
}

- (NSString)description
{
  selfCopy = self;
  ATResponse.description.getter();

  v3 = sub_2410DF0A0();

  return v3;
}

- (_TtC9AskToCore10ATResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
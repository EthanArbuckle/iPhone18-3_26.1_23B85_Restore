@interface ATResponse
- (NSString)description;
- (NSString)responderHandle;
- (_TtC5AskTo10ATQuestion)originalQuestion;
- (_TtC9AskToCore10ATResponse)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setOriginalQuestion:(id)a3;
- (void)setResponderHandle:(id)a3;
@end

@implementation ATResponse

- (_TtC5AskTo10ATQuestion)originalQuestion
{
  v3 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOriginalQuestion:(id)a3
{
  v5 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setResponderHandle:(id)a3
{
  v4 = sub_2410DF0C0();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ATResponse.encode(with:)(v4);
}

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = self;
  v6 = sub_2410D4468(v5);

  v7 = sub_2410DF8C0();
  return v7;
}

- (NSString)description
{
  v2 = self;
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
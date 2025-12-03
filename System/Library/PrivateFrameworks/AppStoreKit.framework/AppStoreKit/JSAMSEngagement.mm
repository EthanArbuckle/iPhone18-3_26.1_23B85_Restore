@interface JSAMSEngagement
- (_TtC11AppStoreKit15JSAMSEngagement)init;
- (id)enqueueData:(id)data;
- (id)performRequest:(id)request;
@end

@implementation JSAMSEngagement

- (id)enqueueData:(id)data
{
  swift_getObjectType();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  dataCopy = data;
  selfCopy = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)performRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = sub_1E1AE5154(requestCopy);

  return v6;
}

- (_TtC11AppStoreKit15JSAMSEngagement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
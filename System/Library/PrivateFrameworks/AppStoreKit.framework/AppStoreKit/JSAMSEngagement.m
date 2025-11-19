@interface JSAMSEngagement
- (_TtC11AppStoreKit15JSAMSEngagement)init;
- (id)enqueueData:(id)a3;
- (id)performRequest:(id)a3;
@end

@implementation JSAMSEngagement

- (id)enqueueData:(id)a3
{
  swift_getObjectType();
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v5 = a3;
  v6 = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)performRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E1AE5154(v4);

  return v6;
}

- (_TtC11AppStoreKit15JSAMSEngagement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
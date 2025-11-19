@interface SQLiteFunction
+ (_TtC9storekitd14SQLiteFunction)extractJWSPayload;
+ (_TtC9storekitd14SQLiteFunction)unarchiveRenewalInfoAsJSON;
- (NSString)name;
- (id)transformSQLWithRoot:(id)a3;
- (void)withUnsafePropertyPointers:(id)a3;
@end

@implementation SQLiteFunction

- (NSString)name
{
  sub_10009F2AC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)withUnsafePropertyPointers:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10009FB14(v5, v4);
  _Block_release(v4);
}

- (id)transformSQLWithRoot:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1000A0538(v4, v6);

  v8 = String._bridgeToObjectiveC()();

  return v8;
}

+ (_TtC9storekitd14SQLiteFunction)extractJWSPayload
{
  v2 = sub_10021D9C8(&qword_1003CBE80, &qword_1003F26E8);

  return v2;
}

+ (_TtC9storekitd14SQLiteFunction)unarchiveRenewalInfoAsJSON
{
  v2 = sub_10021D9C8(&qword_1003CBE88, &qword_1003F26F0);

  return v2;
}

@end
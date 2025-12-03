@interface SQLiteFunction
+ (_TtC9storekitd14SQLiteFunction)extractJWSPayload;
+ (_TtC9storekitd14SQLiteFunction)unarchiveRenewalInfoAsJSON;
- (NSString)name;
- (id)transformSQLWithRoot:(id)root;
- (void)withUnsafePropertyPointers:(id)pointers;
@end

@implementation SQLiteFunction

- (NSString)name
{
  sub_10009F2AC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)withUnsafePropertyPointers:(id)pointers
{
  v4 = _Block_copy(pointers);
  _Block_copy(v4);
  selfCopy = self;
  sub_10009FB14(selfCopy, v4);
  _Block_release(v4);
}

- (id)transformSQLWithRoot:(id)root
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
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
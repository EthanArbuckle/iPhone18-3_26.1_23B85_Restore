@interface AdPlatformsStatusConditionsActivity
- (NSString)descriptiveName;
- (_TtC9appstored35AdPlatformsStatusConditionsActivity)init;
- (void)run;
@end

@implementation AdPlatformsStatusConditionsActivity

- (NSString)descriptiveName
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)run
{
  v2 = [objc_opt_self() sharedInstance];
  sub_1002F5C20(v2);
}

- (_TtC9appstored35AdPlatformsStatusConditionsActivity)init
{
  if ((XPC_ACTIVITY_INTERVAL_1_DAY - 0x400000000000000) >> 59 == 31)
  {
    v9 = v2;
    v10 = v3;
    v4 = self;
    v5 = OBJC_IVAR____TtC9appstored35AdPlatformsStatusConditionsActivity_deadline;
    ObjectType = swift_getObjectType();
    *(v4 + v5) = 32 * XPC_ACTIVITY_INTERVAL_1_DAY;
    v7 = (v4 + OBJC_IVAR____TtC9appstored35AdPlatformsStatusConditionsActivity_descriptiveName);
    *v7 = 0xD00000000000001DLL;
    v7[1] = 0x800000010044FD00;
    *(v4 + OBJC_IVAR____TtC9appstored35AdPlatformsStatusConditionsActivity_isEnabled) = 1;
    v8.receiver = v4;
    v8.super_class = ObjectType;
    return [(ActivityClass *)&v8 init];
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end
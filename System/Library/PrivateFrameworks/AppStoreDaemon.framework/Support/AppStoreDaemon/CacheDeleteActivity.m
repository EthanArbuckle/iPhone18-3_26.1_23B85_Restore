@interface CacheDeleteActivity
- (NSString)descriptiveName;
- (_TtC9appstored19CacheDeleteActivity)init;
- (void)run;
@end

@implementation CacheDeleteActivity

- (NSString)descriptiveName
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)run
{
  objc_opt_self();
  v2 = sub_10029869C();
  sub_100299BA0(v2);
}

- (_TtC9appstored19CacheDeleteActivity)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9appstored19CacheDeleteActivity_deadline) = XPC_ACTIVITY_INTERVAL_15_MIN;
  v4 = (self + OBJC_IVAR____TtC9appstored19CacheDeleteActivity_descriptiveName);
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010044FE40;
  *(self + OBJC_IVAR____TtC9appstored19CacheDeleteActivity_isEnabled) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ActivityClass *)&v6 init];
}

@end
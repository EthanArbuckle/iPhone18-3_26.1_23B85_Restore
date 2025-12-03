@interface ODPSyncActivity
- (NSString)descriptiveName;
- (_TtC9appstored15ODPSyncActivity)init;
- (void)run;
@end

@implementation ODPSyncActivity

- (NSString)descriptiveName
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_10011C0B8();
}

- (_TtC9appstored15ODPSyncActivity)init
{
  ObjectType = swift_getObjectType();
  *(self + OBJC_IVAR____TtC9appstored15ODPSyncActivity_deadline) = 0;
  v4 = (self + OBJC_IVAR____TtC9appstored15ODPSyncActivity_descriptiveName);
  *v4 = 0x636E79732050444FLL;
  v4[1] = 0xE800000000000000;
  *(self + OBJC_IVAR____TtC9appstored15ODPSyncActivity_isEnabled) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ActivityClass *)&v6 init];
}

@end
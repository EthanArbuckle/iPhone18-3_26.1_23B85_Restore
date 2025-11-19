@interface AppStoreApplication
+ (_TtC8AppStore19AppStoreApplication)sharedApplication;
- (_TtC8AppStore19AppStoreApplication)init;
- (id)_extendLaunchTest;
@end

@implementation AppStoreApplication

- (_TtC8AppStore19AppStoreApplication)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(AppStoreApplication *)&v5 init];
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (_TtC8AppStore19AppStoreApplication)sharedApplication
{
  swift_getObjCClassMetadata();
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS____TtC8AppStore19AppStoreApplication;
  v2 = objc_msgSendSuper2(&v5, "sharedApplication");
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

@end
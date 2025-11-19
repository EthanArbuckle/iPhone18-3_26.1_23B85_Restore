@interface ICAppIntentsManager
+ (void)registerDependencies;
- (_TtC11MobileNotes19ICAppIntentsManager)init;
- (void)registerDependencies;
@end

@implementation ICAppIntentsManager

+ (void)registerDependencies
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  type metadata accessor for AppDependencyManager();
  v3 = static AppDependencyManager.shared.getter();
  v4 = objc_allocWithZone(ObjCClassMetadata);
  *&v4[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_dependencyManager] = v3;
  v5 = &v4[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration];
  *v5 = 0x6C7070612E6D6F63;
  *(v5 + 1) = 0xEF7365746F6E2E65;
  *(v5 + 2) = 1802398028;
  *(v5 + 3) = 0xE400000000000000;
  v7.receiver = v4;
  v7.super_class = ObjCClassMetadata;
  v6 = objc_msgSendSuper2(&v7, "init");
  ICAppIntentsManager.registerDependencies()();
}

- (void)registerDependencies
{
  v2 = self;
  ICAppIntentsManager.registerDependencies()();
}

- (_TtC11MobileNotes19ICAppIntentsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
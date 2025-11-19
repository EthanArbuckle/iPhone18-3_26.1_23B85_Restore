@interface DebugViewControllerRemoteConfig
- (BKDebugViewSection)section;
- (DebugViewControllerRemoteConfig)init;
- (DebugViewControllerRemoteConfig)initWithOwner:(id)a3;
@end

@implementation DebugViewControllerRemoteConfig

- (DebugViewControllerRemoteConfig)initWithOwner:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(DebugViewControllerRemoteConfig *)&v6 init];
}

- (DebugViewControllerRemoteConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKDebugViewSection)section
{
  v2 = self;
  v3 = sub_10036545C();

  return v3;
}

@end
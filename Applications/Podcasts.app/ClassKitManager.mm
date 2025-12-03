@interface ClassKitManager
- (_TtC8Podcasts15ClassKitManager)init;
- (void)applicationWillTerminate:(id)terminate;
@end

@implementation ClassKitManager

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_100338458();
}

- (_TtC8Podcasts15ClassKitManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
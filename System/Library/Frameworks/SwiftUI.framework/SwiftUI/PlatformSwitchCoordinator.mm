@interface PlatformSwitchCoordinator
- (_TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator)init;
- (void)toggleStateChanged:(id)changed;
@end

@implementation PlatformSwitchCoordinator

- (void)toggleStateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  PlatformSwitchCoordinator.toggleStateChanged(_:)(changedCopy);
}

- (_TtC7SwiftUIP33_1246D37251EA3A918B392E2B95F8B7EF25PlatformSwitchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
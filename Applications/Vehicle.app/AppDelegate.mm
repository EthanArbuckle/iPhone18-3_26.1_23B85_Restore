@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  selfCopy = self;
  CAFSignpostEmit_Launched();
  v5 = [objc_allocWithZone(type metadata accessor for SettingsCarManager()) init];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager) = v5;

  return 1;
}

@end
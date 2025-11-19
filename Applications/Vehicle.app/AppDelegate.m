@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = self;
  CAFSignpostEmit_Launched();
  v5 = [objc_allocWithZone(type metadata accessor for SettingsCarManager()) init];
  v6 = *(&v4->super.super.isa + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager);
  *(&v4->super.super.isa + OBJC_IVAR____TtC7Vehicle11AppDelegate_settingsCarManager) = v5;

  return 1;
}

@end
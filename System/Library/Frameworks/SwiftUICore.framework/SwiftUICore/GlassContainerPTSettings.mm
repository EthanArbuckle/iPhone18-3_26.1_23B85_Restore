@interface GlassContainerPTSettings
+ (id)settingsControllerModule;
@end

@implementation GlassContainerPTSettings

+ (id)settingsControllerModule
{
  specialized static GlassContainerPTSettings.settingsControllerModule()();

  return v2;
}

@end
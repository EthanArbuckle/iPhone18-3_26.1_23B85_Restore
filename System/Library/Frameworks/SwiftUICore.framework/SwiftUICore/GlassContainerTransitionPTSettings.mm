@interface GlassContainerTransitionPTSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation GlassContainerTransitionPTSettings

- (void)setDefaultValues
{
  v2 = self;
  GlassContainerTransitionPTSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  specialized static GlassContainerTransitionPTSettings.settingsControllerModule()();

  return v2;
}

@end
@interface GlassContainerTranslationKickPTSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation GlassContainerTranslationKickPTSettings

- (void)setDefaultValues
{
  v2 = self;
  GlassContainerTranslationKickPTSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  specialized static GlassContainerTranslationKickPTSettings.settingsControllerModule()();

  return v2;
}

@end
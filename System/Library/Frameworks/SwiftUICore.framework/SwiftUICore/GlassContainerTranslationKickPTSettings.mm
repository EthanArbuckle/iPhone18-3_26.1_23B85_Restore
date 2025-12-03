@interface GlassContainerTranslationKickPTSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation GlassContainerTranslationKickPTSettings

- (void)setDefaultValues
{
  selfCopy = self;
  GlassContainerTranslationKickPTSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  specialized static GlassContainerTranslationKickPTSettings.settingsControllerModule()();

  return v2;
}

@end
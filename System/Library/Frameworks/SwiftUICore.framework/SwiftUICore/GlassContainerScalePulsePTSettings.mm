@interface GlassContainerScalePulsePTSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation GlassContainerScalePulsePTSettings

- (void)setDefaultValues
{
  selfCopy = self;
  GlassContainerScalePulsePTSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  specialized static GlassContainerScalePulsePTSettings.settingsControllerModule()();

  return v2;
}

@end
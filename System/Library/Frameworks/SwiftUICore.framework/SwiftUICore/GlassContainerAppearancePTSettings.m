@interface GlassContainerAppearancePTSettings
+ (id)settingsControllerModule;
- (_TtC7SwiftUI34GlassContainerAppearancePTSettings)initWithDefaultValues;
- (void)setDefaultValues;
@end

@implementation GlassContainerAppearancePTSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GlassContainerAppearancePTSettings();
  v2 = v3.receiver;
  [(PTSettings *)&v3 setDefaultValues];
  *&v2[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_scale] = 0x3FC999999999999ALL;
  *&v2[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleWidth] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleHeight] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_blurRadius] = 0x4024000000000000;
}

+ (id)settingsControllerModule
{
  specialized static GlassContainerAppearancePTSettings.settingsControllerModule()();

  return v2;
}

- (_TtC7SwiftUI34GlassContainerAppearancePTSettings)initWithDefaultValues
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_scale) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleWidth) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_blurRadius) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GlassContainerAppearancePTSettings();
  return [(PTSettings *)&v3 initWithDefaultValues];
}

@end
@interface CompanionAutoLaunchSettingsConfiguration
- (BOOL)isTinker;
- (BOOL)supportsDepth;
- (_TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration)init;
- (int64_t)depthAutoLaunchVersion;
- (void)setDepthAutoLaunchVersion:(int64_t)version;
- (void)setIsTinker:(BOOL)tinker;
- (void)setSupportsDepth:(BOOL)depth;
@end

@implementation CompanionAutoLaunchSettingsConfiguration

- (BOOL)isTinker
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsTinker:(BOOL)tinker
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  swift_beginAccess();
  *(&self->super.isa + v5) = tinker;
}

- (BOOL)supportsDepth
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSupportsDepth:(BOOL)depth
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  swift_beginAccess();
  *(&self->super.isa + v5) = depth;
}

- (int64_t)depthAutoLaunchVersion
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDepthAutoLaunchVersion:(int64_t)version
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  swift_beginAccess();
  *(&self->super.isa + v5) = version;
}

- (_TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration)init
{
  *(&self->super.isa + OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion) = (&dword_0 + 1);
  v3.receiver = self;
  v3.super_class = type metadata accessor for CompanionAutoLaunchSettingsConfiguration();
  return [(CompanionAutoLaunchSettingsConfiguration *)&v3 init];
}

@end
@interface CompanionAutoLaunchSettingsConfiguration
- (BOOL)isTinker;
- (BOOL)supportsDepth;
- (_TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration)init;
- (int64_t)depthAutoLaunchVersion;
- (void)setDepthAutoLaunchVersion:(int64_t)a3;
- (void)setIsTinker:(BOOL)a3;
- (void)setSupportsDepth:(BOOL)a3;
@end

@implementation CompanionAutoLaunchSettingsConfiguration

- (BOOL)isTinker
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsTinker:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)supportsDepth
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSupportsDepth:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)depthAutoLaunchVersion
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDepthAutoLaunchVersion:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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
@interface SecureUIControllerDynamicIslandConfiguration
- (SecureUIControllerDynamicIslandConfiguration)init;
- (SecureUIControllerDynamicIslandConfiguration)initWithLightweightMode:(int64_t)mode;
@end

@implementation SecureUIControllerDynamicIslandConfiguration

- (SecureUIControllerDynamicIslandConfiguration)initWithLightweightMode:(int64_t)mode
{
  *(&self->super.isa + OBJC_IVAR___SecureUIControllerDynamicIslandConfiguration_isForLightweightUI) = LACLightweightUIModeNone != mode;
  v4.receiver = self;
  v4.super_class = SecureUIControllerDynamicIslandConfiguration;
  return [(SecureUIControllerDynamicIslandConfiguration *)&v4 init];
}

- (SecureUIControllerDynamicIslandConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
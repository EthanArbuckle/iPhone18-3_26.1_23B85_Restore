@interface SecureUIControllerDynamicIslandConfiguration
- (SecureUIControllerDynamicIslandConfiguration)init;
- (SecureUIControllerDynamicIslandConfiguration)initWithLightweightMode:(int64_t)a3;
@end

@implementation SecureUIControllerDynamicIslandConfiguration

- (SecureUIControllerDynamicIslandConfiguration)initWithLightweightMode:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___SecureUIControllerDynamicIslandConfiguration_isForLightweightUI) = LACLightweightUIModeNone != a3;
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
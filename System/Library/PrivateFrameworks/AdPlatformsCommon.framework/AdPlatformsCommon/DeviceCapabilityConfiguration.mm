@interface DeviceCapabilityConfiguration
- (BOOL)isCapabilityAvailable:(unsigned int)a3;
- (_TtC17AdPlatformsCommon29DeviceCapabilityConfiguration)init;
@end

@implementation DeviceCapabilityConfiguration

- (BOOL)isCapabilityAvailable:(unsigned int)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1BAFF2C98(a3);

  return a3 & 1;
}

- (_TtC17AdPlatformsCommon29DeviceCapabilityConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
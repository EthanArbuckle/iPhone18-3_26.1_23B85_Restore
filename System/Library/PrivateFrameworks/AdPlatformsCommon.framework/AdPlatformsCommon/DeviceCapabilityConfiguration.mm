@interface DeviceCapabilityConfiguration
- (BOOL)isCapabilityAvailable:(unsigned int)available;
- (_TtC17AdPlatformsCommon29DeviceCapabilityConfiguration)init;
@end

@implementation DeviceCapabilityConfiguration

- (BOOL)isCapabilityAvailable:(unsigned int)available
{
  selfCopy = self;
  LOBYTE(available) = sub_1BAFF2C98(available);

  return available & 1;
}

- (_TtC17AdPlatformsCommon29DeviceCapabilityConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
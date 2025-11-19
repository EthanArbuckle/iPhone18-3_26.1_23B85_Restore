@interface DeviceCapabilityEngine
- (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)init;
- (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)initWithConfigurator:(id)a3;
- (_TtP17AdPlatformsCommon28DeviceCapabilityConfigurator_)configurator;
- (unsigned)build;
@end

@implementation DeviceCapabilityEngine

- (_TtP17AdPlatformsCommon28DeviceCapabilityConfigurator_)configurator
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17AdPlatformsCommon22DeviceCapabilityEngine_configurator);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)initWithConfigurator:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC17AdPlatformsCommon22DeviceCapabilityEngine_configurator) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DeviceCapabilityEngine();
  swift_unknownObjectRetain();
  return [(DeviceCapabilityEngine *)&v4 init];
}

- (unsigned)build
{
  v2 = self;
  v3 = sub_1BAFE43E4();

  return v3;
}

- (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
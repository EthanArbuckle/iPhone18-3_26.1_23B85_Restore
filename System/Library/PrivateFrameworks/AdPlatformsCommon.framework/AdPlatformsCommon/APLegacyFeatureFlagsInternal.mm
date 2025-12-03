@interface APLegacyFeatureFlagsInternal
+ (BOOL)isFeatureEnabledWithFeatureName:(id)name enabledByDefault:(BOOL)default;
+ (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)deviceCapabilityEngine;
- (APLegacyFeatureFlagsInternal)init;
@end

@implementation APLegacyFeatureFlagsInternal

+ (BOOL)isFeatureEnabledWithFeatureName:(id)name enabledByDefault:(BOOL)default
{
  v5 = sub_1BB014B48();
  v7 = sub_1BAFEC5E8(v5, v6, default);

  return v7 & 1;
}

+ (_TtC17AdPlatformsCommon22DeviceCapabilityEngine)deviceCapabilityEngine
{
  v2 = _s17AdPlatformsCommon18LegacyFeatureFlagsC22deviceCapabilityEngineAA06DevicehI0CvgZ_0();

  return v2;
}

- (APLegacyFeatureFlagsInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyFeatureFlags();
  return [(APLegacyFeatureFlagsInternal *)&v3 init];
}

@end
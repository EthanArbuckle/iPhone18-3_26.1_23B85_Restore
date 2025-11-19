@interface WOHeartRateConfiguration
+ (void)setConfiguredZones:(id)a3;
- (NSArray)zones;
- (WOHeartRateConfiguration)init;
- (void)setZones:(id)a3;
@end

@implementation WOHeartRateConfiguration

- (NSArray)zones
{
  v3 = OBJC_IVAR___WOHeartRateConfiguration_zones;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for HeartRateZoneBridge();

  v5.super.isa = sub_228C4().super.isa;

  return v5.super.isa;
}

- (void)setZones:(id)a3
{
  type metadata accessor for HeartRateZoneBridge();
  v4 = sub_228D4();
  v5 = OBJC_IVAR___WOHeartRateConfiguration_zones;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

+ (void)setConfiguredZones:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for HeartRateZoneBridge();
    v3 = sub_228D4();
  }

  _s25SessionTrackerAppSettings28HeartRateConfigurationBridgeC13setConfigured5zonesySayAA0ef4ZoneH0CGSg_tFZ_0(v3);
}

- (WOHeartRateConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
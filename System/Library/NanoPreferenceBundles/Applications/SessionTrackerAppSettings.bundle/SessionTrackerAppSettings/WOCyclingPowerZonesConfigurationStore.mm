@interface WOCyclingPowerZonesConfigurationStore
- (WOCyclingPowerZonesConfigurationStore)init;
- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)a3;
- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)a3;
- (void)saveCyclingPowerZonesConfiguration:(id)a3;
@end

@implementation WOCyclingPowerZonesConfigurationStore

- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)a3
{
  sub_226A4();
  v5 = a3;
  *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore) = sub_22694();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CyclingPowerZonesConfigurationStoreBridge();
  v6 = [(WOCyclingPowerZonesConfigurationStore *)&v8 init];

  return v6;
}

- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E014;
  *(v7 + 24) = v5;
  v8 = self;

  sub_22684();
}

- (void)saveCyclingPowerZonesConfiguration:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore);
  v5 = *(a3 + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  v7 = a3;
  v6 = self;
  sub_22674();
}

- (WOCyclingPowerZonesConfigurationStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface WOCyclingPowerZonesConfigurationStore
- (WOCyclingPowerZonesConfigurationStore)init;
- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)store;
- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)completion;
- (void)saveCyclingPowerZonesConfiguration:(id)configuration;
@end

@implementation WOCyclingPowerZonesConfigurationStore

- (WOCyclingPowerZonesConfigurationStore)initWithHealthStore:(id)store
{
  sub_226A4();
  storeCopy = store;
  *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore) = sub_22694();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CyclingPowerZonesConfigurationStoreBridge();
  v6 = [(WOCyclingPowerZonesConfigurationStore *)&v8 init];

  return v6;
}

- (void)fetchCyclingPowerZonesConfigurationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E014;
  *(v7 + 24) = v5;
  selfCopy = self;

  sub_22684();
}

- (void)saveCyclingPowerZonesConfiguration:(id)configuration
{
  v4 = *(&self->super.isa + OBJC_IVAR___WOCyclingPowerZonesConfigurationStore_configurationStore);
  v5 = *(configuration + OBJC_IVAR___WOCyclingPowerZonesConfiguration_configuration);
  configurationCopy = configuration;
  selfCopy = self;
  sub_22674();
}

- (WOCyclingPowerZonesConfigurationStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
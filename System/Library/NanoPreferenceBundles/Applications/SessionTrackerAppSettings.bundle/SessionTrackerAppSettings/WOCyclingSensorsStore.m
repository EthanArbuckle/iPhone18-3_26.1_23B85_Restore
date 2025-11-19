@interface WOCyclingSensorsStore
- (WOCyclingSensorsStore)init;
- (void)isPowerMeterAvailableWithCompletion:(id)a3;
@end

@implementation WOCyclingSensorsStore

- (void)isPowerMeterAvailableWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = *(&self->super.isa + OBJC_IVAR___WOCyclingSensorsStore_cyclingSensorsStore);
  v6 = self;
  sub_22454();
}

- (WOCyclingSensorsStore)init
{
  v3 = OBJC_IVAR___WOCyclingSensorsStore_cyclingSensorsStore;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_22464()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for CyclingSensorsStoreBridge();
  return [(WOCyclingSensorsStore *)&v5 init];
}

@end
@interface WOCyclingSensorsStore
- (WOCyclingSensorsStore)init;
- (void)isPowerMeterAvailableWithCompletion:(id)completion;
@end

@implementation WOCyclingSensorsStore

- (void)isPowerMeterAvailableWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  v5 = *(&self->super.isa + OBJC_IVAR___WOCyclingSensorsStore_cyclingSensorsStore);
  selfCopy = self;
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
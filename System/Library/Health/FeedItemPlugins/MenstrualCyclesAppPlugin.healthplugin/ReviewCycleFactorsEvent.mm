@interface ReviewCycleFactorsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (void)setEventName:(id)name;
@end

@implementation ReviewCycleFactorsEvent

- (NSString)eventName
{
  sub_29E2BF404();
  v2 = sub_29E2C33A4();

  return v2;
}

- (void)setEventName:(id)name
{
  *(self + 2) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  *(self + 3) = v4;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_29E1853E0(MEMORY[0x29EDCA190]);
  v4 = sub_29E2C31F4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29DED0768(sourceCopy);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
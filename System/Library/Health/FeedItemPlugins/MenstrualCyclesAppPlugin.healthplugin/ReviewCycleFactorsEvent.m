@interface ReviewCycleFactorsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (void)setEventName:(id)a3;
@end

@implementation ReviewCycleFactorsEvent

- (NSString)eventName
{
  sub_29E2BF404();
  v2 = sub_29E2C33A4();

  return v2;
}

- (void)setEventName:(id)a3
{
  *(self + 2) = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  *(self + 3) = v4;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_29E1853E0(MEMORY[0x29EDCA190]);
  v4 = sub_29E2C31F4();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_29DED0768(v4);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
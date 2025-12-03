@interface RoomInteractionEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (void)setEventName:(id)name;
@end

@implementation RoomInteractionEvent

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
  sourceCopy = source;

  sub_29DF7B420();

  v5 = sub_29E2C31F4();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29DF79B64(sourceCopy);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
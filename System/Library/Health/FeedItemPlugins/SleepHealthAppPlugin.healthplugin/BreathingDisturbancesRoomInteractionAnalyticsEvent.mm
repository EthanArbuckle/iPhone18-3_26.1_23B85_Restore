@interface BreathingDisturbancesRoomInteractionAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation BreathingDisturbancesRoomInteractionAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E754198();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_29E68B200(MEMORY[0x29EDCA190]);
  v4 = sub_29E754068();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29E662FC0(sourceCopy);

  v5 = sub_29E754068();

  return v5;
}

@end
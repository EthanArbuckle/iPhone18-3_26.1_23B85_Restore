@interface BreathingDisturbancesRoomInteractionAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation BreathingDisturbancesRoomInteractionAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E754198();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_29E68B200(MEMORY[0x29EDCA190]);
  v4 = sub_29E754068();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_29E662FC0(v4);

  v5 = sub_29E754068();

  return v5;
}

@end
@interface SleepingWristTemperatureHelpTileAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation SleepingWristTemperatureHelpTileAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E2C33A4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_29DEEDDE4();

  v5 = sub_29E2C31F4();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_29DEED69C(v4);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
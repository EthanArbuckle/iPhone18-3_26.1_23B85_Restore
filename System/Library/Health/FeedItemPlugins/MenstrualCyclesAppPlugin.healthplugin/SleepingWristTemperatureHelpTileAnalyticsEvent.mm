@interface SleepingWristTemperatureHelpTileAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation SleepingWristTemperatureHelpTileAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E2C33A4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29DEEDDE4();

  v5 = sub_29E2C31F4();

  return v5;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29DEED69C(sourceCopy);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
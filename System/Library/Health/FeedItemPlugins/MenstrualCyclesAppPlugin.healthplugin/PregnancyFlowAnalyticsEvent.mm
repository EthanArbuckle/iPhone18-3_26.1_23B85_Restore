@interface PregnancyFlowAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation PregnancyFlowAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E2C33A4();

  return v2;
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

  sub_29DF7AA0C(sourceCopy);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
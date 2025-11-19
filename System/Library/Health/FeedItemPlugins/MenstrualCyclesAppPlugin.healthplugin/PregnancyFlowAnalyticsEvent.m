@interface PregnancyFlowAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation PregnancyFlowAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29E2C33A4();

  return v2;
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

  sub_29DF7AA0C(v4);

  v5 = sub_29E2C31F4();

  return v5;
}

@end
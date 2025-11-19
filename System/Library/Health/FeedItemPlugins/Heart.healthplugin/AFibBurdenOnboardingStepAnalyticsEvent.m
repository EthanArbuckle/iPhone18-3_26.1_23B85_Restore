@interface AFibBurdenOnboardingStepAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation AFibBurdenOnboardingStepAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29D939D28();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  sub_29D73F010(MEMORY[0x29EDCA190]);
  v4 = sub_29D939C58();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = a3;

  sub_29D7D5A28(v4);

  v5 = sub_29D939C58();

  return v5;
}

@end
@interface AFibBurdenOnboardingErrorAnalyticsEvent
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation AFibBurdenOnboardingErrorAnalyticsEvent

- (NSString)eventName
{
  v2 = sub_29D939D28();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sub_29D73F010(MEMORY[0x29EDCA190]);
  v4 = sub_29D939C58();

  return v4;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;

  sub_29D7B4C44(sourceCopy);

  v5 = sub_29D939C58();

  return v5;
}

@end
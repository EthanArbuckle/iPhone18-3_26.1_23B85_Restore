@interface MTROnboardingPayloadParser
+ (MTRSetupPayload)setupPayloadForOnboardingPayload:(NSString *)onboardingPayload error:(NSError *)error;
@end

@implementation MTROnboardingPayloadParser

+ (MTRSetupPayload)setupPayloadForOnboardingPayload:(NSString *)onboardingPayload error:(NSError *)error
{
  v4 = [MTRSetupPayload setupPayloadWithOnboardingPayload:onboardingPayload error:error];

  return v4;
}

@end
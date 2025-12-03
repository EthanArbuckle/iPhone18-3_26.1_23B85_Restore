@interface AMSCampaignCohortParamsProvider
+ (id)provider;
- (id)retrieveMetricsParamsStringPromiseWithBag:(id)bag currentMetricsString:(id)string;
@end

@implementation AMSCampaignCohortParamsProvider

+ (id)provider
{
  swift_getObjCClassMetadata();
  v2 = static CampaignCohortParamsProvider.provider()();

  return v2;
}

- (id)retrieveMetricsParamsStringPromiseWithBag:(id)bag currentMetricsString:(id)string
{
  sub_192F967CC();
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = CampaignCohortParamsProvider.retrieveMetricsParamsStringPromise(bag:currentMetricsString:)();
  swift_unknownObjectRelease();

  return v6;
}

@end
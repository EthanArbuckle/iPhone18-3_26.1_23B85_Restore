@interface AMSCampaignCohortParamsProvider
+ (id)provider;
- (id)retrieveMetricsParamsStringPromiseWithBag:(id)a3 currentMetricsString:(id)a4;
@end

@implementation AMSCampaignCohortParamsProvider

+ (id)provider
{
  swift_getObjCClassMetadata();
  v2 = static CampaignCohortParamsProvider.provider()();

  return v2;
}

- (id)retrieveMetricsParamsStringPromiseWithBag:(id)a3 currentMetricsString:(id)a4
{
  sub_192F967CC();
  swift_unknownObjectRetain();
  v5 = self;
  v6 = CampaignCohortParamsProvider.retrieveMetricsParamsStringPromise(bag:currentMetricsString:)();
  swift_unknownObjectRelease();

  return v6;
}

@end
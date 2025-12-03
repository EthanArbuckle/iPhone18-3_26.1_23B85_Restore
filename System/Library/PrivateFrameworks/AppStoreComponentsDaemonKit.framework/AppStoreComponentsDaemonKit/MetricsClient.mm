@interface MetricsClient
- (_TtC27AppStoreComponentsDaemonKit13MetricsClient)init;
- (void)logErrorMessage:(id)message;
- (void)processMetricsData:(id)data pageFields:(id)fields activity:(id)activity withReplyHandler:(id)handler;
- (void)processViewRenderWithPredicate:(id)predicate withReplyHandler:(id)handler;
- (void)recordCampaignToken:(id)token providerToken:(id)providerToken withLockup:(id)lockup withReplyHandler:(id)handler;
- (void)recordQToken:(id)token campaignToken:(id)campaignToken advertisementID:(id)d withLockup:(id)lockup withReplyHandler:(id)handler;
@end

@implementation MetricsClient

- (void)processMetricsData:(id)data pageFields:(id)fields activity:(id)activity withReplyHandler:(id)handler
{
  v10 = _Block_copy(handler);
  if (fields)
  {
    fields = sub_22273910C();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  dataCopy = data;
  activityCopy = activity;
  selfCopy = self;
  sub_2227274E4(dataCopy, fields, activity, sub_2227113C4, v11);
}

- (void)processViewRenderWithPredicate:(id)predicate withReplyHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  predicateCopy = predicate;
  selfCopy = self;
  sub_22272A680(predicateCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)recordCampaignToken:(id)token providerToken:(id)providerToken withLockup:(id)lockup withReplyHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = sub_22273919C();
  v11 = v10;
  v12 = sub_22273919C();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  lockupCopy = lockup;
  selfCopy = self;
  sub_222728568(v9, v11, v12, v14, lockupCopy, sub_2227113C4, v15);
}

- (void)recordQToken:(id)token campaignToken:(id)campaignToken advertisementID:(id)d withLockup:(id)lockup withReplyHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_22273919C();
  v12 = v11;
  v13 = sub_22273919C();
  v15 = v14;
  v16 = sub_22273919C();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  lockupCopy = lockup;
  selfCopy = self;
  sub_222728A08(v10, v12, v13, v15, v16, v18, lockupCopy, sub_222710B60, v19);
}

- (void)logErrorMessage:(id)message
{
  v4 = sub_22273937C();
  selfCopy = self;
  sub_222729300(v4);
}

- (_TtC27AppStoreComponentsDaemonKit13MetricsClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
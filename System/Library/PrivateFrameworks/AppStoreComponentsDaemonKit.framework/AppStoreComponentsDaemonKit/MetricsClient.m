@interface MetricsClient
- (_TtC27AppStoreComponentsDaemonKit13MetricsClient)init;
- (void)logErrorMessage:(id)a3;
- (void)processMetricsData:(id)a3 pageFields:(id)a4 activity:(id)a5 withReplyHandler:(id)a6;
- (void)processViewRenderWithPredicate:(id)a3 withReplyHandler:(id)a4;
- (void)recordCampaignToken:(id)a3 providerToken:(id)a4 withLockup:(id)a5 withReplyHandler:(id)a6;
- (void)recordQToken:(id)a3 campaignToken:(id)a4 advertisementID:(id)a5 withLockup:(id)a6 withReplyHandler:(id)a7;
@end

@implementation MetricsClient

- (void)processMetricsData:(id)a3 pageFields:(id)a4 activity:(id)a5 withReplyHandler:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    a4 = sub_22273910C();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a5;
  v14 = self;
  sub_2227274E4(v12, a4, a5, sub_2227113C4, v11);
}

- (void)processViewRenderWithPredicate:(id)a3 withReplyHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_22272A680(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)recordCampaignToken:(id)a3 providerToken:(id)a4 withLockup:(id)a5 withReplyHandler:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_22273919C();
  v11 = v10;
  v12 = sub_22273919C();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v16 = a5;
  v17 = self;
  sub_222728568(v9, v11, v12, v14, v16, sub_2227113C4, v15);
}

- (void)recordQToken:(id)a3 campaignToken:(id)a4 advertisementID:(id)a5 withLockup:(id)a6 withReplyHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = sub_22273919C();
  v12 = v11;
  v13 = sub_22273919C();
  v15 = v14;
  v16 = sub_22273919C();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  v20 = a6;
  v21 = self;
  sub_222728A08(v10, v12, v13, v15, v16, v18, v20, sub_222710B60, v19);
}

- (void)logErrorMessage:(id)a3
{
  v4 = sub_22273937C();
  v5 = self;
  sub_222729300(v4);
}

- (_TtC27AppStoreComponentsDaemonKit13MetricsClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
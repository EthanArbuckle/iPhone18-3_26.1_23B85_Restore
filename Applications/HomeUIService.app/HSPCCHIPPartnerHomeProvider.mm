@interface HSPCCHIPPartnerHomeProvider
- (id)loadData;
@end

@implementation HSPCCHIPPartnerHomeProvider

- (id)loadData
{
  config = [(HSPCDataProvider *)self config];
  matterDeviceSetupRequest = [config matterDeviceSetupRequest];

  if (matterDeviceSetupRequest)
  {
    topology = [matterDeviceSetupRequest topology];
    homes = [topology homes];
    [(HSPCDataProvider *)self setItems:homes];

    [(HSPCDataProvider *)self setLoaded:1];
    v7 = +[NAFuture futureWithNoResult];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007B434(v8);
    }

    v9 = [NSError hmfErrorWithCode:8];
    v7 = [NAFuture futureWithError:v9];
  }

  return v7;
}

@end
@interface ATXAppLaunchInferredModeSessionBiomeStream
- (ATXAppLaunchInferredModeSessionBiomeStream)initWithStoreConfig:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation ATXAppLaunchInferredModeSessionBiomeStream

- (ATXAppLaunchInferredModeSessionBiomeStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXAppLaunchInferredModeSessionBiomeStream;
  v5 = [(ATXAppLaunchInferredModeSessionBiomeStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"appLaunchInferredMode" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppLaunchInferredModeSessionBiomeStream *)self source];
  [v5 sendEvent:v4];
}

@end
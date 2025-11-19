@interface MTSiriAnalyticsController
- (MTSiriAnalyticsController)init;
- (void)observePlaybackStartEventForRefId:(id)a3;
- (void)playerRateChanged:(id)a3;
@end

@implementation MTSiriAnalyticsController

- (MTSiriAnalyticsController)init
{
  v5.receiver = self;
  v5.super_class = MTSiriAnalyticsController;
  v2 = [(MTSiriAnalyticsController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"playerRateChanged:" name:IMAVPlayerNotification_RateChanged object:0];
  }

  return v2;
}

- (void)observePlaybackStartEventForRefId:(id)a3
{
  v4 = a3;
  kdebug_trace();
  [(MTSiriAnalyticsController *)self setPendingRequest:v4];
}

- (void)playerRateChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = self;
    objc_sync_enter(v6);
    if ([v5 loadState] == 1)
    {
      [v5 actualRate];
      if (v7 > 0.0)
      {
        v8 = [(MTSiriAnalyticsController *)v6 pendingRequest];

        if (v8)
        {
          kdebug_trace();
          v15 = 0;
          v16 = &v15;
          v17 = 0x2050000000;
          v9 = qword_100583A68;
          v18 = qword_100583A68;
          if (!qword_100583A68)
          {
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10006D220;
            v14[3] = &unk_1004D8688;
            v14[4] = &v15;
            sub_10006D220(v14);
            v9 = v16[3];
          }

          v10 = v9;
          _Block_object_dispose(&v15, 8);
          v11 = [v9 sharedAnalytics];
          v19[0] = @"refId";
          v12 = [(MTSiriAnalyticsController *)v6 pendingRequest];
          v19[1] = @"bundleId";
          v20[0] = v12;
          v20[1] = kMTApplicationBundleIdentifier;
          v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          [v11 logEventWithType:2901 context:v13];

          [(MTSiriAnalyticsController *)v6 setPendingRequest:0];
        }
      }
    }

    objc_sync_exit(v6);
  }
}

@end
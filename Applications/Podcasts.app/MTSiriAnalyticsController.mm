@interface MTSiriAnalyticsController
- (MTSiriAnalyticsController)init;
- (void)observePlaybackStartEventForRefId:(id)id;
- (void)playerRateChanged:(id)changed;
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

- (void)observePlaybackStartEventForRefId:(id)id
{
  idCopy = id;
  kdebug_trace();
  [(MTSiriAnalyticsController *)self setPendingRequest:idCopy];
}

- (void)playerRateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([object loadState] == 1)
    {
      [object actualRate];
      if (v7 > 0.0)
      {
        pendingRequest = [(MTSiriAnalyticsController *)selfCopy pendingRequest];

        if (pendingRequest)
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
          sharedAnalytics = [v9 sharedAnalytics];
          v19[0] = @"refId";
          pendingRequest2 = [(MTSiriAnalyticsController *)selfCopy pendingRequest];
          v19[1] = @"bundleId";
          v20[0] = pendingRequest2;
          v20[1] = kMTApplicationBundleIdentifier;
          v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
          [sharedAnalytics logEventWithType:2901 context:v13];

          [(MTSiriAnalyticsController *)selfCopy setPendingRequest:0];
        }
      }
    }

    objc_sync_exit(selfCopy);
  }
}

@end
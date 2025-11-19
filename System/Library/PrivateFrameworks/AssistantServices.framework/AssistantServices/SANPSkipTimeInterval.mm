@interface SANPSkipTimeInterval
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPSkipTimeInterval

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SANPSkipTimeInterval *)self adjustmentInMilliseconds];
  v9 = [v8 integerValue];

  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  if (v9 >= 0)
  {
    v11 = 17;
  }

  else
  {
    v11 = 18;
  }

  v15 = kMRMediaRemoteOptionSkipInterval;
  v12 = [NSNumber numberWithDouble:v10 / 1000.0];
  v16 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v14 = [v7 targetQueue];

  sub_1001B7630(v11, self, v13, v14, v6);
}

@end
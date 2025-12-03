@interface SANPSkipTimeInterval
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSkipTimeInterval

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  adjustmentInMilliseconds = [(SANPSkipTimeInterval *)self adjustmentInMilliseconds];
  integerValue = [adjustmentInMilliseconds integerValue];

  if (integerValue >= 0)
  {
    v10 = integerValue;
  }

  else
  {
    v10 = -integerValue;
  }

  if (integerValue >= 0)
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

  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(v11, self, v13, targetQueue, handlerCopy);
}

@end
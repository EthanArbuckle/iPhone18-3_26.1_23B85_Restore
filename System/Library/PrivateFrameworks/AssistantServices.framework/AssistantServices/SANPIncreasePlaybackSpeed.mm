@interface SANPIncreasePlaybackSpeed
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPIncreasePlaybackSpeed

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  v10 = kMRMediaRemoteOptionPlaybackRate;
  v11 = &off_100534400;
  handlerCopy = handler;
  serviceCopy = service;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(19, self, v8, targetQueue, handlerCopy);
}

@end
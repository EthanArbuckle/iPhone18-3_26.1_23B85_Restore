@interface SANPSetPlaybackSpeed
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSetPlaybackSpeed

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  v11 = kMRMediaRemoteOptionPlaybackRate;
  handlerCopy = handler;
  serviceCopy = service;
  [(SANPSetPlaybackSpeed *)self scalingFactor];
  v8 = [NSNumber numberWithDouble:?];
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(19, self, v9, targetQueue, handlerCopy);
}

@end
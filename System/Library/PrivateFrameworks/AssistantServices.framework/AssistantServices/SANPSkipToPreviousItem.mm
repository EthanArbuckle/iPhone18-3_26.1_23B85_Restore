@interface SANPSkipToPreviousItem
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSkipToPreviousItem

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  v10 = kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition;
  v11 = &__kCFBooleanTrue;
  handlerCopy = handler;
  serviceCopy = service;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  targetQueue = [serviceCopy targetQueue];

  sub_1001B7630(5, self, v8, targetQueue, handlerCopy);
}

@end
@interface SANPSkipToNextItem
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SANPSkipToNextItem

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  targetQueue = [service targetQueue];
  sub_1001B7630(4, self, 0, targetQueue, handlerCopy);
}

@end
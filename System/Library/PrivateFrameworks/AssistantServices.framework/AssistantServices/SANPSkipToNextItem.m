@interface SANPSkipToNextItem
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPSkipToNextItem

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 targetQueue];
  sub_1001B7630(4, self, 0, v7, v6);
}

@end
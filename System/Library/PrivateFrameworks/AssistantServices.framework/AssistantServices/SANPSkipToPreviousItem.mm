@interface SANPSkipToPreviousItem
- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4;
@end

@implementation SANPSkipToPreviousItem

- (void)_ad_performWithMediaRemoteService:(id)a3 replyHandler:(id)a4
{
  v10 = kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition;
  v11 = &__kCFBooleanTrue;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [v7 targetQueue];

  sub_1001B7630(5, self, v8, v9, v6);
}

@end
@interface PlaybackController.ExplicitResponseDataSource
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
@end

@implementation PlaybackController.ExplicitResponseDataSource

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_4A0AC(v6, v7);

  return 1;
}

@end
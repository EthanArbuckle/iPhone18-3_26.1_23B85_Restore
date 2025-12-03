@interface PlaybackController.ExplicitResponseDataSource
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
@end

@implementation PlaybackController.ExplicitResponseDataSource

- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_4A0AC(controllerCopy, errorCopy);

  return 1;
}

@end
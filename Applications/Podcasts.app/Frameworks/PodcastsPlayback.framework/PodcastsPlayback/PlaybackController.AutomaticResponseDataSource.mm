@interface PlaybackController.AutomaticResponseDataSource
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
@end

@implementation PlaybackController.AutomaticResponseDataSource

- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_4C2AC(controllerCopy, errorCopy);

  return 1;
}

@end
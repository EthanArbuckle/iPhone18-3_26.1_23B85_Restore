@interface AFDismissTimerRequest
- (void)_ad_handleTimerRequestWithCompletionHandler:(id)handler;
@end

@implementation AFDismissTimerRequest

- (void)_ad_handleTimerRequestWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100193D58;
  v4[3] = &unk_1005145A0;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  sub_1001479FC(v4);
}

@end
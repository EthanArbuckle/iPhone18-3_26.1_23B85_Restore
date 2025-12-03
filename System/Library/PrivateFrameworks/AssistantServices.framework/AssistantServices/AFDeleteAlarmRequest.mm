@interface AFDeleteAlarmRequest
- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler;
@end

@implementation AFDeleteAlarmRequest

- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002BE8D4;
  v4[3] = &unk_100519DE0;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  sub_10019F930(v4);
}

@end
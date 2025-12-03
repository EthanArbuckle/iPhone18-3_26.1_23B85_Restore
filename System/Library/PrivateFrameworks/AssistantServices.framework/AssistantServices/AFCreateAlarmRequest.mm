@interface AFCreateAlarmRequest
- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler;
@end

@implementation AFCreateAlarmRequest

- (void)_ad_handleAlarmRequestWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002BEAC4;
  v4[3] = &unk_100519DE0;
  v4[4] = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  sub_10019F930(v4);
}

@end
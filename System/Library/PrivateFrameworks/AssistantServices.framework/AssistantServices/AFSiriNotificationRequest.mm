@interface AFSiriNotificationRequest
- (AFSiriNotificationRequest)initWithNotifications:(id)notifications sourceAppId:(id)id;
@end

@implementation AFSiriNotificationRequest

- (AFSiriNotificationRequest)initWithNotifications:(id)notifications sourceAppId:(id)id
{
  idCopy = id;
  firstObject = [notifications firstObject];
  v10.receiver = self;
  v10.super_class = AFSiriNotificationRequest;
  v8 = [(AFSiriUserNotificationRequest *)&v10 initWithUserNotification:firstObject sourceAppId:idCopy];

  return v8;
}

@end
@interface SHMatchResultUserNotificationContentDeliverer
- (SHMatchResultUserNotificationContentDeliverer)initWithContentProvider:(id)a3;
- (void)deliverContentForMatchedMediaItem:(id)a3 completion:(id)a4;
- (void)deliverContentForNoMatchWithCompletion:(id)a3;
@end

@implementation SHMatchResultUserNotificationContentDeliverer

- (SHMatchResultUserNotificationContentDeliverer)initWithContentProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHMatchResultUserNotificationContentDeliverer;
  v6 = [(SHMatchResultUserNotificationContentDeliverer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentProvider, a3);
  }

  return v7;
}

- (void)deliverContentForNoMatchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SHMatchResultUserNotificationContentDeliverer *)self contentProvider];
  v6 = [v5 notificationContentForNoMatch];

  v7 = [UNNotificationRequest requestWithIdentifier:@"NOMATCH" content:v6 trigger:0];
  v8 = +[SHMatchResultNotificationScheduler userNotificationCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E948;
  v10[3] = &unk_10007D148;
  v11 = v4;
  v9 = v4;
  [v8 addNotificationRequest:v7 withCompletionHandler:v10];
}

- (void)deliverContentForMatchedMediaItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHMatchResultUserNotificationContentDeliverer *)self contentProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EAEC;
  v11[3] = &unk_10007D170;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 notificationContentForMediaItem:v10 completionHandler:v11];
}

@end
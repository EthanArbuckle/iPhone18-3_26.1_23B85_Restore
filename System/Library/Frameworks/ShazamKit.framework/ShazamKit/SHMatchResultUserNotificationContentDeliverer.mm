@interface SHMatchResultUserNotificationContentDeliverer
- (SHMatchResultUserNotificationContentDeliverer)initWithContentProvider:(id)provider;
- (void)deliverContentForMatchedMediaItem:(id)item completion:(id)completion;
- (void)deliverContentForNoMatchWithCompletion:(id)completion;
@end

@implementation SHMatchResultUserNotificationContentDeliverer

- (SHMatchResultUserNotificationContentDeliverer)initWithContentProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SHMatchResultUserNotificationContentDeliverer;
  v6 = [(SHMatchResultUserNotificationContentDeliverer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentProvider, provider);
  }

  return v7;
}

- (void)deliverContentForNoMatchWithCompletion:(id)completion
{
  completionCopy = completion;
  contentProvider = [(SHMatchResultUserNotificationContentDeliverer *)self contentProvider];
  notificationContentForNoMatch = [contentProvider notificationContentForNoMatch];

  v7 = [UNNotificationRequest requestWithIdentifier:@"NOMATCH" content:notificationContentForNoMatch trigger:0];
  v8 = +[SHMatchResultNotificationScheduler userNotificationCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E948;
  v10[3] = &unk_10007D148;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 addNotificationRequest:v7 withCompletionHandler:v10];
}

- (void)deliverContentForMatchedMediaItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  contentProvider = [(SHMatchResultUserNotificationContentDeliverer *)self contentProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EAEC;
  v11[3] = &unk_10007D170;
  v12 = itemCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  [contentProvider notificationContentForMediaItem:v10 completionHandler:v11];
}

@end
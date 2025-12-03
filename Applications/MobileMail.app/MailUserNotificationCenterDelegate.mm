@interface MailUserNotificationCenterDelegate
- (MailAlertSuppressionContextProvider)alertSuppressionContextProvider;
- (MailUserNotificationCenterDelegate)initWithAlertSuppressionContextProvider:(id)provider;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation MailUserNotificationCenterDelegate

- (MailUserNotificationCenterDelegate)initWithAlertSuppressionContextProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = MailUserNotificationCenterDelegate;
  v5 = [(MailUserNotificationCenterDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_alertSuppressionContextProvider, providerCopy);
  }

  return v6;
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  request = [notificationCopy request];
  content = [request content];

  v24 = content;
  userInfo = [content userInfo];
  v12 = +[NSSet set];
  v13 = [userInfo objectForKeyedSubscript:MSUserNotificationContentKeySuppressionContext];
  if ([v13 length])
  {
    v14 = [v13 componentsSeparatedByString:{@", "}];
    v15 = [NSSet setWithArray:v14];

    v12 = v15;
  }

  alertSuppressionContextProvider = [(MailUserNotificationCenterDelegate *)self alertSuppressionContextProvider];
  currentAlertSuppressionContexts = [alertSuppressionContextProvider currentAlertSuppressionContexts];
  v18 = [v12 intersectsSet:currentAlertSuppressionContexts];

  if (v18)
  {
    v19 = 9;
  }

  else
  {
    v19 = 27;
  }

  v20 = MSUserNotificationsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [NSNumber numberWithUnsignedInteger:v19];
    request2 = [notificationCopy request];
    identifier = [request2 identifier];
    *buf = 138543874;
    v26 = v21;
    v27 = 2114;
    v28 = identifier;
    v29 = 2112;
    v30 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Will present notification with options = %{public}@, notification identifier = %{public}@, notification = %@", buf, 0x20u);
  }

  handlerCopy[2](handlerCopy, v19);
}

- (MailAlertSuppressionContextProvider)alertSuppressionContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_alertSuppressionContextProvider);

  return WeakRetained;
}

@end
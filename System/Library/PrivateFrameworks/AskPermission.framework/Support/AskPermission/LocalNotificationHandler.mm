@interface LocalNotificationHandler
+ (LocalNotificationHandler)sharedHandler;
- (NSArray)presentedRequests;
- (id)_notificationContentWithRequest:(id)request silently:(BOOL)silently;
- (id)retrieveRequestWithIdentifier:(id)identifier;
- (void)_handleApproverRequest:(id)request withCompletionHandler:(id)handler;
- (void)_handleRequesterRequest:(id)request withCompletionHandler:(id)handler;
- (void)_handleUnknownRequestIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)_replaceNotificationWithRequest:(id)request;
- (void)dismissNotificationWithIdentifier:(id)identifier;
- (void)start;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation LocalNotificationHandler

+ (LocalNotificationHandler)sharedHandler
{
  if (qword_100063CE0 != -1)
  {
    sub_1000176D4();
  }

  v3 = qword_100063CE8;

  return v3;
}

- (NSArray)presentedRequests
{
  v3 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  notificationCenter = [(LocalNotificationHandler *)self notificationCenter];
  deliveredNotifications = [notificationCenter deliveredNotifications];

  v6 = [deliveredNotifications countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(deliveredNotifications);
        }

        request = [*(*(&v17 + 1) + 8 * i) request];
        content = [request content];
        userInfo = [content userInfo];

        v13 = [[GenericRequest alloc] initWithDictionary:userInfo];
        if ([(GenericRequest *)v13 status]== -1)
        {
          v14 = off_1000547A8;
          goto LABEL_11;
        }

        if ([(GenericRequest *)v13 status]== 1 || ![(GenericRequest *)v13 status])
        {
          v14 = off_1000547C0;
LABEL_11:
          v15 = [objc_alloc(*v14) initWithDictionary:userInfo];
          [v3 ap_addNullableObject:v15];
        }
      }

      v7 = [deliveredNotifications countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)dismissNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[APLogConfig sharedDaemonConfig];
  notificationCenter = v5;
  if (identifierCopy)
  {
    if (!v5)
    {
      notificationCenter = +[APLogConfig sharedConfig];
    }

    oSLogObject = [notificationCenter OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = identifierCopy;
      v8 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Dismissing notification. Identifier: %{public}@", buf, 0x16u);
    }

    notificationCenter = [(LocalNotificationHandler *)self notificationCenter];
    v11 = identifierCopy;
    oSLogObject2 = [NSArray arrayWithObjects:&v11 count:1];
    [notificationCenter removeDeliveredNotificationsWithIdentifiers:oSLogObject2];
  }

  else
  {
    if (!v5)
    {
      notificationCenter = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [notificationCenter OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Could not dismiss notification without request identifier", buf, 0xCu);
    }
  }
}

- (id)retrieveRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  presentedRequests = [(LocalNotificationHandler *)self presentedRequests];
  v6 = [presentedRequests countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(presentedRequests);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        requestIdentifier = [v10 requestIdentifier];
        v12 = [requestIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v17 = +[APLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[APLogConfig sharedConfig];
          }

          oSLogObject = [v17 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138543618;
            v27 = v19;
            v28 = 2114;
            v29 = v10;
            v20 = v19;
            _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved request. Request: %{public}@", buf, 0x16u);
          }

          v16 = v10;
          goto LABEL_19;
        }
      }

      v7 = [presentedRequests countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  presentedRequests = +[APLogConfig sharedDaemonConfig];
  if (!presentedRequests)
  {
    presentedRequests = +[APLogConfig sharedConfig];
  }

  oSLogObject2 = [presentedRequests OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    *buf = 138543618;
    v27 = v14;
    v28 = 2114;
    v29 = identifierCopy;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not retrieve request. Identifier: %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_19:

  return v16;
}

- (void)start
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting local notification center", &v8, 0xCu);
  }

  v6 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.askpermission.notifications"];
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v6;

  [(UNUserNotificationCenter *)self->_notificationCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_notificationCenter setWantsNotificationResponsesDelivered];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v13 = [[GenericRequest alloc] initWithDictionary:userInfo];
  v14 = +[APLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v13;
    v16 = v21;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received notification response. Request: %{public}@", &v20, 0x16u);
  }

  if ([(GenericRequest *)v13 status]== -1)
  {
    identifier = [[ApprovalRequest alloc] initWithDictionary:userInfo];
    [(LocalNotificationHandler *)self _handleApproverRequest:identifier withCompletionHandler:handlerCopy];
  }

  else if ([(GenericRequest *)v13 status]== 1 || ![(GenericRequest *)v13 status])
  {
    identifier = [[RequesterRequest alloc] initWithDictionary:userInfo];
    [(LocalNotificationHandler *)self _handleRequesterRequest:identifier withCompletionHandler:handlerCopy];
  }

  else
  {
    notification2 = [responseCopy notification];
    request2 = [notification2 request];
    identifier = [request2 identifier];

    [(LocalNotificationHandler *)self _handleUnknownRequestIdentifier:identifier withCompletionHandler:handlerCopy];
  }
}

- (void)_handleApproverRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [[ApproverLocalNotificationTask alloc] initWithRequest:requestCopy];
  objc_initWeak(&location, self);
  perform = [(ApproverLocalNotificationTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001685C;
  v11[3] = &unk_100055440;
  objc_copyWeak(&v13, &location);
  v10 = handlerCopy;
  v12 = v10;
  [perform addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_handleRequesterRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [[RequesterLocalNotificationTask alloc] initWithRequest:requestCopy];
  objc_initWeak(&location, self);
  perform = [(RequesterLocalNotificationTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016B3C;
  v11[3] = &unk_100055440;
  objc_copyWeak(&v13, &location);
  v10 = handlerCopy;
  v12 = v10;
  [perform addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_handleUnknownRequestIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = identifierCopy;
    v10 = v12;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Unknown notification. Identifier: %{public}@", &v11, 0x16u);
  }

  [(LocalNotificationHandler *)self dismissNotificationWithIdentifier:identifierCopy];
  handlerCopy[2](handlerCopy);
}

- (void)_replaceNotificationWithRequest:(id)request
{
  requestCopy = request;
  v5 = [(LocalNotificationHandler *)self _notificationContentWithRequest:requestCopy silently:1];
  objc_initWeak(&location, self);
  notificationCenter = [(LocalNotificationHandler *)self notificationCenter];
  requestIdentifier = [requestCopy requestIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000172F8;
  v9[3] = &unk_100055490;
  objc_copyWeak(&v11, &location);
  v8 = requestCopy;
  v10 = v8;
  [notificationCenter replaceContentForRequestWithIdentifier:requestIdentifier replacementContent:v5 completionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_notificationContentWithRequest:(id)request silently:(BOOL)silently
{
  silentlyCopy = silently;
  requestCopy = request;
  v6 = objc_alloc_init(UNMutableNotificationContent);
  localizations = [requestCopy localizations];
  body = [localizations body];
  [v6 setBody:body];

  localizations2 = [requestCopy localizations];
  title = [localizations2 title];
  [v6 setTitle:title];

  date = [requestCopy date];
  v12 = date;
  if (date)
  {
    v13 = date;
  }

  else
  {
    v13 = +[NSDate date];
  }

  v14 = v13;

  [v6 setDate:v14];
  v15 = [v14 dateByAddingTimeInterval:2592000.0];
  [v6 setExpirationDate:v15];

  compile = [requestCopy compile];
  [v6 setUserInfo:compile];

  [v6 setHasDefaultAction:1];
  if ([requestCopy status] == -1)
  {
    v17 = 2;
  }

  else
  {
    v17 = UNNotificationInterruptionLevelDefault;
  }

  [v6 setInterruptionLevel:v17];
  [v6 setShouldAuthenticateDefaultAction:1];
  [v6 setShouldBackgroundDefaultAction:1];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  if (silentlyCopy)
  {
    [v6 setSound:0];
  }

  else
  {
    v18 = +[UNNotificationSound defaultSound];
    [v6 setSound:v18];
  }

  return v6;
}

@end
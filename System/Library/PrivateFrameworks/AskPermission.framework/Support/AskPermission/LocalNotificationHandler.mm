@interface LocalNotificationHandler
+ (LocalNotificationHandler)sharedHandler;
- (NSArray)presentedRequests;
- (id)_notificationContentWithRequest:(id)a3 silently:(BOOL)a4;
- (id)retrieveRequestWithIdentifier:(id)a3;
- (void)_handleApproverRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleRequesterRequest:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleUnknownRequestIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)_replaceNotificationWithRequest:(id)a3;
- (void)dismissNotificationWithIdentifier:(id)a3;
- (void)start;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
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
  v4 = [(LocalNotificationHandler *)self notificationCenter];
  v5 = [v4 deliveredNotifications];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) request];
        v11 = [v10 content];
        v12 = [v11 userInfo];

        v13 = [[GenericRequest alloc] initWithDictionary:v12];
        if ([(GenericRequest *)v13 status]== -1)
        {
          v14 = off_1000547A8;
          goto LABEL_11;
        }

        if ([(GenericRequest *)v13 status]== 1 || ![(GenericRequest *)v13 status])
        {
          v14 = off_1000547C0;
LABEL_11:
          v15 = [objc_alloc(*v14) initWithDictionary:v12];
          [v3 ap_addNullableObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)dismissNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v4;
      v8 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Dismissing notification. Identifier: %{public}@", buf, 0x16u);
    }

    v6 = [(LocalNotificationHandler *)self notificationCenter];
    v11 = v4;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v6 removeDeliveredNotificationsWithIdentifiers:v9];
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Could not dismiss notification without request identifier", buf, 0xCu);
    }
  }
}

- (id)retrieveRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(LocalNotificationHandler *)self presentedRequests];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 requestIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v17 = +[APLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[APLogConfig sharedConfig];
          }

          v18 = [v17 OSLogObject];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138543618;
            v27 = v19;
            v28 = 2114;
            v29 = v10;
            v20 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Retrieved request. Request: %{public}@", buf, 0x16u);
          }

          v16 = v10;
          goto LABEL_19;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v13 = [v5 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    *buf = 138543618;
    v27 = v14;
    v28 = 2114;
    v29 = v4;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not retrieve request. Identifier: %{public}@", buf, 0x16u);
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting local notification center", &v8, 0xCu);
  }

  v6 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.askpermission.notifications"];
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v6;

  [(UNUserNotificationCenter *)self->_notificationCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_notificationCenter setWantsNotificationResponsesDelivered];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v12 = [v11 userInfo];

  v13 = [[GenericRequest alloc] initWithDictionary:v12];
  v14 = +[APLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[APLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v13;
    v16 = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Received notification response. Request: %{public}@", &v20, 0x16u);
  }

  if ([(GenericRequest *)v13 status]== -1)
  {
    v19 = [[ApprovalRequest alloc] initWithDictionary:v12];
    [(LocalNotificationHandler *)self _handleApproverRequest:v19 withCompletionHandler:v8];
  }

  else if ([(GenericRequest *)v13 status]== 1 || ![(GenericRequest *)v13 status])
  {
    v19 = [[RequesterRequest alloc] initWithDictionary:v12];
    [(LocalNotificationHandler *)self _handleRequesterRequest:v19 withCompletionHandler:v8];
  }

  else
  {
    v17 = [v7 notification];
    v18 = [v17 request];
    v19 = [v18 identifier];

    [(LocalNotificationHandler *)self _handleUnknownRequestIdentifier:v19 withCompletionHandler:v8];
  }
}

- (void)_handleApproverRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[ApproverLocalNotificationTask alloc] initWithRequest:v6];
  objc_initWeak(&location, self);
  v9 = [(ApproverLocalNotificationTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001685C;
  v11[3] = &unk_100055440;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v9 addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_handleRequesterRequest:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[RequesterLocalNotificationTask alloc] initWithRequest:v6];
  objc_initWeak(&location, self);
  v9 = [(RequesterLocalNotificationTask *)v8 perform];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016B3C;
  v11[3] = &unk_100055440;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v9 addFinishBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_handleUnknownRequestIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v6;
    v10 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Unknown notification. Identifier: %{public}@", &v11, 0x16u);
  }

  [(LocalNotificationHandler *)self dismissNotificationWithIdentifier:v6];
  v7[2](v7);
}

- (void)_replaceNotificationWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(LocalNotificationHandler *)self _notificationContentWithRequest:v4 silently:1];
  objc_initWeak(&location, self);
  v6 = [(LocalNotificationHandler *)self notificationCenter];
  v7 = [v4 requestIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000172F8;
  v9[3] = &unk_100055490;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v6 replaceContentForRequestWithIdentifier:v7 replacementContent:v5 completionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_notificationContentWithRequest:(id)a3 silently:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(UNMutableNotificationContent);
  v7 = [v5 localizations];
  v8 = [v7 body];
  [v6 setBody:v8];

  v9 = [v5 localizations];
  v10 = [v9 title];
  [v6 setTitle:v10];

  v11 = [v5 date];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSDate date];
  }

  v14 = v13;

  [v6 setDate:v14];
  v15 = [v14 dateByAddingTimeInterval:2592000.0];
  [v6 setExpirationDate:v15];

  v16 = [v5 compile];
  [v6 setUserInfo:v16];

  [v6 setHasDefaultAction:1];
  if ([v5 status] == -1)
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
  if (v4)
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
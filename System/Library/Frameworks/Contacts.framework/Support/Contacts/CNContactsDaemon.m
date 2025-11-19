@interface CNContactsDaemon
- (CNContactsDaemon)init;
- (id)_distnotedListenersByName;
- (id)_listenersByName:(id)a3;
- (id)_notifydListenersByName;
- (void)_subscribeForXPCEventStream:(const char *)a3 listenersByName:(id)a4;
- (void)registerBackgroundSystemTasks;
- (void)registerXPCActivities;
- (void)runOnRunLoop:(id)a3;
- (void)subscribeApplicationUnregisteredListeners;
- (void)subscribeDistnotedListeners;
- (void)subscribeNotifydListeners;
- (void)wakeXPCListeners;
- (void)wakeXPCServices;
@end

@implementation CNContactsDaemon

- (CNContactsDaemon)init
{
  v7.receiver = self;
  v7.super_class = CNContactsDaemon;
  v2 = [(CNContactsDaemon *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.contacts.contactsd.notificationqueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)runOnRunLoop:(id)a3
{
  v9 = a3;
  [(CNContactsDaemon *)self logEnvironment];
  [(CNContactsDaemon *)self wakeXPCListeners];
  [(CNContactsDaemon *)self wakeXPCServices];
  [(CNContactsDaemon *)self subscribeNotifydListeners];
  [(CNContactsDaemon *)self subscribeDistnotedListeners];
  [(CNContactsDaemon *)self subscribeApplicationUnregisteredListeners];
  [(CNContactsDaemon *)self registerXPCActivities];
  [(CNContactsDaemon *)self registerBackgroundSystemTasks];
  v4 = +[CNEnvironment currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:24];

  if (v6)
  {
    v7 = +[CNDLimitedAccessSyncService sharedInstance];
  }

  v8 = +[CNCommLimitsAskToController shared];
  [v8 registerAllTopics];

  [v9 run];
}

- (void)wakeXPCListeners
{
  v3 = [(CNContactsDaemon *)self XPCListenerPairs];
  [v3 _cn_each:&stru_100045AE0];
  [(CNContactsDaemon *)self setActiveXPCListenerPairs:v3];
}

- (void)wakeXPCServices
{
  v3 = [(CNContactsDaemon *)self XPCServices];
  v4 = [v3 _cn_filter:&stru_100045B20];

  [(CNContactsDaemon *)self setActiveXPCServices:v4];
}

- (void)subscribeNotifydListeners
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CE7C();
  }

  v4 = [(CNContactsDaemon *)self _notifydListenersByName];
  [(CNContactsDaemon *)self _subscribeForXPCEventStream:"com.apple.notifyd.matching" listenersByName:v4];
}

- (void)subscribeDistnotedListeners
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CEB0();
  }

  v4 = [(CNContactsDaemon *)self _distnotedListenersByName];
  [(CNContactsDaemon *)self _subscribeForXPCEventStream:"com.apple.distnoted.matching" listenersByName:v4];
}

- (void)_subscribeForXPCEventStream:(const char *)a3 listenersByName:(id)a4
{
  v6 = a4;
  notificationQueue = self->_notificationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F990;
  v9[3] = &unk_100045B48;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  xpc_set_event_stream_handler(a3, notificationQueue, v9);
}

- (void)subscribeApplicationUnregisteredListeners
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CF70();
  }

  notificationQueue = self->_notificationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000FBB0;
  handler[3] = &unk_100045B70;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", notificationQueue, handler);
}

- (id)_notifydListenersByName
{
  v3 = [(CNContactsDaemon *)self notifydListeners];
  v4 = [(CNContactsDaemon *)self _listenersByName:v3];

  return v4;
}

- (id)_distnotedListenersByName
{
  v3 = [(CNContactsDaemon *)self distnotedListeners];
  v4 = [(CNContactsDaemon *)self _listenersByName:v3];

  return v4;
}

- (id)_listenersByName:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [v6 interestedNotifications];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              v13 = [v4 objectForKey:v12];
              if (!v13)
              {
                v13 = +[NSMutableArray array];
                [v4 setObject:v13 forKey:v12];
              }

              [v13 addObject:v6];
            }

            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  return v4;
}

- (void)registerXPCActivities
{
  v2 = [(CNContactsDaemon *)self XPCActivities];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) registerActivity];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [v2 _cn_each:&stru_100045BB0];
}

- (void)registerBackgroundSystemTasks
{
  v2 = [(CNContactsDaemon *)self backgroundSystemTasks];
  [v2 _cn_each:&stru_100045BF0];
}

@end
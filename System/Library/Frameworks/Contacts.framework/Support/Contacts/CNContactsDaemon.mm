@interface CNContactsDaemon
- (CNContactsDaemon)init;
- (id)_distnotedListenersByName;
- (id)_listenersByName:(id)name;
- (id)_notifydListenersByName;
- (void)_subscribeForXPCEventStream:(const char *)stream listenersByName:(id)name;
- (void)registerBackgroundSystemTasks;
- (void)registerXPCActivities;
- (void)runOnRunLoop:(id)loop;
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

- (void)runOnRunLoop:(id)loop
{
  loopCopy = loop;
  [(CNContactsDaemon *)self logEnvironment];
  [(CNContactsDaemon *)self wakeXPCListeners];
  [(CNContactsDaemon *)self wakeXPCServices];
  [(CNContactsDaemon *)self subscribeNotifydListeners];
  [(CNContactsDaemon *)self subscribeDistnotedListeners];
  [(CNContactsDaemon *)self subscribeApplicationUnregisteredListeners];
  [(CNContactsDaemon *)self registerXPCActivities];
  [(CNContactsDaemon *)self registerBackgroundSystemTasks];
  v4 = +[CNEnvironment currentEnvironment];
  featureFlags = [v4 featureFlags];
  v6 = [featureFlags isFeatureEnabled:24];

  if (v6)
  {
    v7 = +[CNDLimitedAccessSyncService sharedInstance];
  }

  v8 = +[CNCommLimitsAskToController shared];
  [v8 registerAllTopics];

  [loopCopy run];
}

- (void)wakeXPCListeners
{
  xPCListenerPairs = [(CNContactsDaemon *)self XPCListenerPairs];
  [xPCListenerPairs _cn_each:&stru_100045AE0];
  [(CNContactsDaemon *)self setActiveXPCListenerPairs:xPCListenerPairs];
}

- (void)wakeXPCServices
{
  xPCServices = [(CNContactsDaemon *)self XPCServices];
  v4 = [xPCServices _cn_filter:&stru_100045B20];

  [(CNContactsDaemon *)self setActiveXPCServices:v4];
}

- (void)subscribeNotifydListeners
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CE7C();
  }

  _notifydListenersByName = [(CNContactsDaemon *)self _notifydListenersByName];
  [(CNContactsDaemon *)self _subscribeForXPCEventStream:"com.apple.notifyd.matching" listenersByName:_notifydListenersByName];
}

- (void)subscribeDistnotedListeners
{
  v3 = +[CNContactsDaemonLogs xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CEB0();
  }

  _distnotedListenersByName = [(CNContactsDaemon *)self _distnotedListenersByName];
  [(CNContactsDaemon *)self _subscribeForXPCEventStream:"com.apple.distnoted.matching" listenersByName:_distnotedListenersByName];
}

- (void)_subscribeForXPCEventStream:(const char *)stream listenersByName:(id)name
{
  nameCopy = name;
  notificationQueue = self->_notificationQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F990;
  v9[3] = &unk_100045B48;
  v10 = nameCopy;
  streamCopy = stream;
  v8 = nameCopy;
  xpc_set_event_stream_handler(stream, notificationQueue, v9);
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
  notifydListeners = [(CNContactsDaemon *)self notifydListeners];
  v4 = [(CNContactsDaemon *)self _listenersByName:notifydListeners];

  return v4;
}

- (id)_distnotedListenersByName
{
  distnotedListeners = [(CNContactsDaemon *)self distnotedListeners];
  v4 = [(CNContactsDaemon *)self _listenersByName:distnotedListeners];

  return v4;
}

- (id)_listenersByName:(id)name
{
  nameCopy = name;
  v4 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = nameCopy;
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
        interestedNotifications = [v6 interestedNotifications];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [interestedNotifications countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(interestedNotifications);
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

            v9 = [interestedNotifications countByEnumeratingWithState:&v18 objects:v26 count:16];
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
  xPCActivities = [(CNContactsDaemon *)self XPCActivities];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [xPCActivities countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(xPCActivities);
        }

        [*(*(&v7 + 1) + 8 * v6) registerActivity];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [xPCActivities countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [xPCActivities _cn_each:&stru_100045BB0];
}

- (void)registerBackgroundSystemTasks
{
  backgroundSystemTasks = [(CNContactsDaemon *)self backgroundSystemTasks];
  [backgroundSystemTasks _cn_each:&stru_100045BF0];
}

@end
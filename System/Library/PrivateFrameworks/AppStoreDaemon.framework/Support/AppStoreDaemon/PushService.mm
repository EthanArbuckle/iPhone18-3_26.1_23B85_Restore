@interface PushService
- (PushService)init;
- (id)pushPayload:(id)payload metricsOverlayForType:(id)type;
- (void)_handleAccountDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)handleSandboxAccountDidChangeNotification:(id)notification;
- (void)pushConnection:(id)connection didReceiveRawMessage:(id)message;
- (void)pushConnection:(id)connection didReceiveToken:(id)token forTopic:(unint64_t)topic;
- (void)pushPayload:(id)payload withBadgeRequest:(id)request;
- (void)testFlightConsumer:(id)consumer didChangeStatus:(BOOL)status;
@end

@implementation PushService

- (PushService)init
{
  v19.receiver = self;
  v19.super_class = PushService;
  v2 = [(PushService *)&v19 init];
  if (v2)
  {
    v3 = sub_1002ACDA4("com.apple.appstored.StorePushService", QOS_CLASS_UTILITY);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    consumers = v2->_consumers;
    v2->_consumers = v5;

    v7 = [[NSCountedSet alloc] initWithCapacity:2];
    pendingActionTypeCount = v2->_pendingActionTypeCount;
    v2->_pendingActionTypeCount = v7;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = sub_1003D6888();
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(NSCountedSet *)v2->_pendingActionTypeCount addObject:*(*(&v15 + 1) + 8 * v13), v15];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_bagChangeObserverToken)
  {
    v3 = +[BagService appstoredService];
    [v3 removeChangeObserverWithToken:self->_bagChangeObserverToken];
  }

  v4.receiver = self;
  v4.super_class = PushService;
  [(PushService *)&v4 dealloc];
}

- (void)pushPayload:(id)payload withBadgeRequest:(id)request
{
  requestCopy = request;
  actionType = [payload actionType];
  v8 = [actionType isEqualToString:AMSPushActionTypeBadging];

  if (v8)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033742C;
    block[3] = &unk_10051AF98;
    v11 = requestCopy;
    dispatch_async(dispatchQueue, block);
  }
}

- (id)pushPayload:(id)payload metricsOverlayForType:(id)type
{
  payloadCopy = payload;
  actionType = [payloadCopy actionType];
  if ([actionType isEqualToString:AMSPushActionTypeRichNotification])
  {
  }

  else
  {
    actionType2 = [payloadCopy actionType];
    v8 = [actionType2 isEqualToString:AMSPushActionTypeGenericNotification];

    if (!v8)
    {
      v19 = 0;
      goto LABEL_10;
    }
  }

  v9 = +[ActiveAccountObserver activeAccount];
  v10 = v9;
  if (self)
  {
    v11 = v9;
    v12 = +[BagService appstoredService];
    amsBag = [v12 amsBag];

    v14 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v11 bagNamespace:@"APPSTORE_ENGAGEMENT" bag:amsBag];
    v15 = [AMSMetricsIdentifierStore identifierForAccount:v11 bag:amsBag bagNamespace:@"APPSTORE_ENGAGEMENT_CLIENT" keyName:@"clientId"];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100338048;
    v28[3] = &unk_100523AD0;
    v29 = v14;
    v16 = v14;
    v17 = [v15 thenWithBlock:v28];
  }

  else
  {
    v17 = 0;
  }

  v27 = 0;
  v18 = [v17 resultWithError:&v27];
  v19 = [v18 mutableCopy];

  v20 = +[BagService appstoredService];
  lastBag = [v20 lastBag];
  v22 = [lastBag stringForKey:@"metrics/topics/APPSTORE_NOTIFICATIONS_TOPIC"];
  v23 = v22;
  v24 = @"xp_ase_messaging/appstore_notifications";
  if (v22)
  {
    v24 = v22;
  }

  v25 = v24;

  [v19 setObject:v25 forKeyedSubscript:@"topic"];
LABEL_10:

  return v19;
}

- (void)pushConnection:(id)connection didReceiveRawMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_7;
  }

  v9 = messageCopy[1];
  switch(v9)
  {
    case 1:
      v11 = +[LSApplicationWorkspace defaultWorkspace];
      v12 = [v11 applicationIsInstalled:@"com.apple.AppStore"];

      if (!v12)
      {
        goto LABEL_11;
      }

LABEL_10:
      sub_100337854(self, v8, connectionCopy);
      goto LABEL_11;
    case 3:
      goto LABEL_10;
    case 2:
      if (self)
      {
        [(PushServiceTestFlightConsumer *)self->_testFlightConsumer pushConnection:connectionCopy didReceiveRawMessage:messageCopy];
      }

      goto LABEL_11;
  }

LABEL_7:
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    if (v8)
    {
      v13 = v8[1];
    }

    else
    {
      v13 = 0;
    }

    v14 = 134217984;
    v15 = v13;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received message for unknown topic:  %ld", &v14, 0xCu);
  }

LABEL_11:
}

- (void)pushConnection:(id)connection didReceiveToken:(id)token forTopic:(unint64_t)topic
{
  if (topic == 2)
  {
    [(PushServiceTestFlightConsumer *)self->_testFlightConsumer pushConnection:connection didReceiveToken:token forTopic:?];
  }
}

- (void)testFlightConsumer:(id)consumer didChangeStatus:(BOOL)status
{
  statusCopy = status;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"disabled";
    if (statusCopy)
    {
      v7 = @"enabled";
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TestFlight push service consumer changed status to: %{public}@", &v9, 0xCu);
  }

  sub_1001D33C8(self->_connection, statusCopy);
  connection = self->_connection;
  if (statusCopy)
  {
    sub_1001D3AAC(connection, 2);
  }

  else
  {
    sub_1001D3CEC(connection, 2);
  }
}

- (void)_handleAccountDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003382C8;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)handleSandboxAccountDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003384B4;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

@end
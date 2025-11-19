@interface PushService
- (PushService)init;
- (id)pushPayload:(id)a3 metricsOverlayForType:(id)a4;
- (void)_handleAccountDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)handleSandboxAccountDidChangeNotification:(id)a3;
- (void)pushConnection:(id)a3 didReceiveRawMessage:(id)a4;
- (void)pushConnection:(id)a3 didReceiveToken:(id)a4 forTopic:(unint64_t)a5;
- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4;
- (void)testFlightConsumer:(id)a3 didChangeStatus:(BOOL)a4;
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

- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4
{
  v6 = a4;
  v7 = [a3 actionType];
  v8 = [v7 isEqualToString:AMSPushActionTypeBadging];

  if (v8)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10033742C;
    block[3] = &unk_10051AF98;
    v11 = v6;
    dispatch_async(dispatchQueue, block);
  }
}

- (id)pushPayload:(id)a3 metricsOverlayForType:(id)a4
{
  v5 = a3;
  v6 = [v5 actionType];
  if ([v6 isEqualToString:AMSPushActionTypeRichNotification])
  {
  }

  else
  {
    v7 = [v5 actionType];
    v8 = [v7 isEqualToString:AMSPushActionTypeGenericNotification];

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
    v13 = [v12 amsBag];

    v14 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v11 bagNamespace:@"APPSTORE_ENGAGEMENT" bag:v13];
    v15 = [AMSMetricsIdentifierStore identifierForAccount:v11 bag:v13 bagNamespace:@"APPSTORE_ENGAGEMENT_CLIENT" keyName:@"clientId"];

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
  v21 = [v20 lastBag];
  v22 = [v21 stringForKey:@"metrics/topics/APPSTORE_NOTIFICATIONS_TOPIC"];
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

- (void)pushConnection:(id)a3 didReceiveRawMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = v7[1];
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
      sub_100337854(self, v8, v6);
      goto LABEL_11;
    case 3:
      goto LABEL_10;
    case 2:
      if (self)
      {
        [(PushServiceTestFlightConsumer *)self->_testFlightConsumer pushConnection:v6 didReceiveRawMessage:v7];
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

- (void)pushConnection:(id)a3 didReceiveToken:(id)a4 forTopic:(unint64_t)a5
{
  if (a5 == 2)
  {
    [(PushServiceTestFlightConsumer *)self->_testFlightConsumer pushConnection:a3 didReceiveToken:a4 forTopic:?];
  }
}

- (void)testFlightConsumer:(id)a3 didChangeStatus:(BOOL)a4
{
  v4 = a4;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"disabled";
    if (v4)
    {
      v7 = @"enabled";
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "TestFlight push service consumer changed status to: %{public}@", &v9, 0xCu);
  }

  sub_1001D33C8(self->_connection, v4);
  connection = self->_connection;
  if (v4)
  {
    sub_1001D3AAC(connection, 2);
  }

  else
  {
    sub_1001D3CEC(connection, 2);
  }
}

- (void)_handleAccountDidChangeNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003382C8;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)handleSandboxAccountDidChangeNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003384B4;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

@end
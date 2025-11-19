@interface PushService
+ (id)_pushHandlerWithBagContract:(id)a3;
+ (id)sharedInstance;
- (PushService)initWithConnection:(id)a3;
- (void)_flushPendingMessagesWithActionType:(id)a3;
- (void)_handleBagChangedNotification:(id)a3;
- (void)_initializeConnectionsAndSkipEnvironmentCheck:(BOOL)a3;
- (void)_processReceivedMessage:(id)a3 withConnection:(id)a4;
- (void)_queuePendingMessage:(id)a3 withActionType:(id)a4;
- (void)pushConnection:(id)a3 didRecieveMessage:(id)a4;
- (void)registerConsumer:(id)a3 forActionType:(unint64_t)a4;
- (void)unregisterConsumerForActionType:(unint64_t)a3;
@end

@implementation PushService

+ (id)sharedInstance
{
  if (qword_1003D4818 != -1)
  {
    sub_1002D0C58();
  }

  v3 = qword_1003D4810;

  return v3;
}

- (PushService)initWithConnection:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = PushService;
  v6 = [(PushService *)&v25 init];
  if (v6)
  {
    v7 = sub_10007D650("com.apple.storekit.StorePushService", QOS_CLASS_UTILITY);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v9 = +[NSMapTable strongToWeakObjectsMapTable];
    consumers = v6->_consumers;
    v6->_consumers = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    pendingMessages = v6->_pendingMessages;
    v6->_pendingMessages = v11;

    if (v5)
    {
      objc_storeStrong(&v6->_connection, a3);
      [v5 setDelegate:v6];
    }

    v13 = v6->_dispatchQueue;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10006C288;
    v22 = &unk_10037F868;
    v14 = v6;
    v23 = v14;
    v24 = v5;
    dispatch_async(v13, &v19);
    if (os_variant_has_internal_content())
    {
      v15 = [PushDiagnostic alloc];
      v16 = [(PushDiagnostic *)v15 initWithService:v14, v19, v20, v21, v22, v23];
      pushDiagnostic = v14->_pushDiagnostic;
      v14->_pushDiagnostic = v16;
    }
  }

  return v6;
}

- (void)registerConsumer:(id)a3 forActionType:(unint64_t)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C3F0;
  block[3] = &unk_100381888;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)unregisterConsumerForActionType:(unint64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006C534;
  v4[3] = &unk_10037F7F8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)pushConnection:(id)a3 didRecieveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C6B4;
  block[3] = &unk_1003822A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

+ (id)_pushHandlerWithBagContract:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AMSPushConfiguration);
  v5 = [NSSet setWithObjects:@"4", @"22", 0];
  [v4 setEnabledActionTypes:v5];

  v6 = [[AMSPushHandler alloc] initWithConfiguration:v4 bag:v3];

  return v6;
}

- (void)_flushPendingMessagesWithActionType:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(NSMutableDictionary *)self->_pendingMessages objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_consumers objectForKey:v4];
    if (v6)
    {
      if (qword_1003D4868 != -1)
      {
        sub_1002D0D54();
      }

      v7 = qword_1003D4840;
      if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_INFO))
      {
        v8 = v7;
        *buf = 134218242;
        v21 = [v5 count];
        v22 = 2114;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Flushing %lu message(s) for action type: %{public}@", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_pendingMessages setObject:0 forKeyedSubscript:v4];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [v6 pushService:self didReceiveMessage:{*(*(&v15 + 1) + 8 * i), v15}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }

    else
    {
      if (qword_1003D4868 != -1)
      {
        sub_1002D0D54();
      }

      v14 = qword_1003D4840;
      if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_ERROR))
      {
        sub_1002D0DD8(v14, v5, v4);
      }
    }
  }
}

- (void)_handleBagChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CA14;
  block[3] = &unk_100380818;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_initializeConnectionsAndSkipEnvironmentCheck:(BOOL)a3
{
  v5 = APSEnvironmentProduction;
  if (a3)
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0D54();
    }

    v6 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping environment check and defaulting to: %{public}@", buf, 0xCu);
    }

    v7 = 0;
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = +[_TtC9storekitd3Bag defaultBag];
    v9 = +[_TtC9storekitd6BagKey pushEnvironment];
    v10 = [v8 stringForKey:v9];
    v18 = 0;
    v11 = [v10 valueWithError:&v18];
    v7 = v18;

    v5 = v11;
    if (!v11)
    {
LABEL_18:
      if (self->_connection)
      {
        if (qword_1003D4868 != -1)
        {
          sub_1002D0C6C();
        }

        if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_ERROR))
        {
          sub_1002D0E88();
        }
      }

      else
      {
        if (qword_1003D4868 != -1)
        {
          sub_1002D0C6C();
        }

        if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_ERROR))
        {
          sub_1002D0EF0();
        }
      }

      goto LABEL_27;
    }
  }

  if ([(NSString *)self->_environment isEqualToString:v5])
  {
    goto LABEL_27;
  }

  if (![APSConnection isValidEnvironment:v5])
  {
    goto LABEL_18;
  }

  objc_storeStrong(&self->_environment, v5);
  v12 = objc_alloc_init(NSMutableDictionary);
  pendingMessages = self->_pendingMessages;
  self->_pendingMessages = v12;

  if (self->_connection)
  {
    if (qword_1003D4868 != -1)
    {
      sub_1002D0C6C();
    }

    v14 = qword_1003D4840;
    if (os_log_type_enabled(qword_1003D4840, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Shutting down existing connection before starting up in new environment: %{public}@", buf, 0xCu);
    }

    [(PushConnection *)self->_connection shutdown];
    connection = self->_connection;
    self->_connection = 0;
  }

  v16 = [[PushConnection alloc] initWithEnvironment:v5 queue:self->_dispatchQueue];
  v17 = self->_connection;
  self->_connection = v16;

  [(PushConnection *)self->_connection setDelegate:self];
LABEL_27:
}

- (void)_processReceivedMessage:(id)a3 withConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = _os_activity_create(&_mh_execute_header, "StoreKit/Push", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CE04;
  block[3] = &unk_1003822A0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

- (void)_queuePendingMessage:(id)a3 withActionType:(id)a4
{
  v11 = a4;
  dispatchQueue = self->_dispatchQueue;
  v7 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v8 = [(NSMutableDictionary *)self->_pendingMessages objectForKeyedSubscript:v11];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:v7];
  }

  else
  {
    v10 = [NSMutableSet setWithObject:v7];

    [(NSMutableDictionary *)self->_pendingMessages setObject:v10 forKeyedSubscript:v11];
    v7 = v10;
  }
}

@end
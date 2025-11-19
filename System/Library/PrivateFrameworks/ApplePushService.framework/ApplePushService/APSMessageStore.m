@interface APSMessageStore
+ (id)sharedInstance;
- (APSMessageStore)init;
- (id)_onQueueIncomingMessagesFromRecords:(__CFArray *)a3;
- (id)_onQueueSubscribedChannelsForRecord:(_APSChannelRecordStruct *)a3;
- (id)_onQueueSubscribedChannelsForRecords:(__CFArray *)a3;
- (id)allRegisteredChannels;
- (id)allRegisteredChannelsForEnvironment:(id)a3 userName:(id)a4;
- (id)allRegisteredChannelsForTopic:(id)a3 environment:(id)a4 userName:(id)a5;
- (id)incomingMessagesForTopic:(id)a3 priority:(int64_t)a4 environment:(id)a5 pushTokens:(id)a6;
- (id)lookupChannelWithChannelID:(id)a3 andPushTopic:(id)a4 environment:(id)a5 userName:(id)a6;
- (id)pendingLowPriorityIncomingMessageTopicsForEnvironment:(id)a3 pushTokens:(id)a4;
- (id)storeOutgoingMessage:(id)a3 environment:(id)a4;
- (void)__closeDatabase;
- (void)_clearDatabaseCloseTimer;
- (void)_onQueueDeleteLowPriorityIncomingMessagesForTopic:(id)a3 environment:(id)a4 pushTokens:(id)a5;
- (void)_setDatabaseCloseTimer;
- (void)closeDatabase;
- (void)deleteChannelID:(id)a3 forTopic:(id)a4 environment:(id)a5 userName:(id)a6;
- (void)deleteIncomingMessageWithGUID:(id)a3;
- (void)deleteLowPriorityIncomingMessagesForTopic:(id)a3 environment:(id)a4 pushTokens:(id)a5;
- (void)deleteOutgoingMessageWithGUID:(id)a3;
- (void)deleteStaleIncomingLowPriorityMessagesForEnvironment:(id)a3;
- (void)markMessageWithGUID:(id)a3 asSent:(BOOL)a4;
- (void)openDatabase;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 afterDelay:(double)a4;
- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4;
- (void)storeChannel:(id)a3;
- (void)storeIncomingMessage:(id)a3 environment:(id)a4 completionBlock:(id)a5;
- (void)updateChannel:(id)a3;
@end

@implementation APSMessageStore

+ (id)sharedInstance
{
  if (qword_1001BF890 != -1)
  {
    sub_1000140B8();
  }

  v3 = qword_1001BF898;

  return v3;
}

- (void)_clearDatabaseCloseTimer
{
  if (self->_pendingDatabaseClose)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__closeDatabase" object:0];
    self->_pendingDatabaseClose = 0;
  }
}

- (void)_setDatabaseCloseTimer
{
  if (self->_pendingDatabaseClose)
  {
    [(APSMessageStore *)self _clearDatabaseCloseTimer];
  }

  self->_pendingDatabaseClose = 1;

  [(APSMessageStore *)self performSelector:"__closeDatabase" withObject:0 afterDelay:600.0];
}

- (APSMessageStore)init
{
  v5.receiver = self;
  v5.super_class = APSMessageStore;
  v2 = [(APSMessageStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(APSMessageStore *)v2 performBlock:&stru_1001888B8];
  }

  return v3;
}

- (void)__closeDatabase
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100098BC4;
  v2[3] = &unk_100186D90;
  v2[4] = self;
  sub_100014400(v2);
}

- (void)closeDatabase
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098D9C;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)openDatabase
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098E30;
  block[3] = &unk_100186D90;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100098EF4;
    v6[3] = &unk_100188728;
    v6[4] = self;
    v7 = v4;
    sub_100014400(v6);
  }
}

- (void)performBlock:(id)a3 afterDelay:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10009903C;
    v7[3] = &unk_100188728;
    v7[4] = self;
    v8 = v5;
    sub_1000B27CC(v7);
  }
}

- (void)performBlock:(id)a3 waitUntilDone:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100099184;
    v7[3] = &unk_100188728;
    v7[4] = self;
    v8 = v5;
    sub_100014400(v7);
  }
}

- (void)storeIncomingMessage:(id)a3 environment:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10001B39C();
  if (+[APSLog shouldReduceLogging])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v22 = self;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ asked to store incoming message %@ with guid %@ environment %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = self;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100099444;
  v16[3] = &unk_100187F18;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v20 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  [(APSMessageStore *)self performBlock:v16 waitUntilDone:1];
  v10[2](v10, v13);
}

- (void)deleteIncomingMessageWithGUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000996E4;
    v6[3] = &unk_100186D90;
    v7 = v4;
    [(APSMessageStore *)self performBlock:v6];
  }
}

- (void)_onQueueDeleteLowPriorityIncomingMessagesForTopic:(id)a3 environment:(id)a4 pushTokens:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v11 = [v9 name];
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v11;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v11 = [v9 name];
    *buf = 138412802;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v11;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ deleting older low-priority incoming messages for topic %@ environment %@ if needed to maintain queue of one", buf, 0x20u);

LABEL_7:
  sub_1000145A0();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        sub_1000B6238(v8, 1, [v9 name], *(*(&v18 + 1) + 8 * i));
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

- (void)deleteLowPriorityIncomingMessagesForTopic:(id)a3 environment:(id)a4 pushTokens:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100099A00;
    v11[3] = &unk_100187F18;
    v11[4] = self;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [(APSMessageStore *)self performBlock:v11];
  }
}

- (void)deleteStaleIncomingLowPriorityMessagesForEnvironment:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100099AA4;
  v5[3] = &unk_100186D90;
  v6 = a3;
  v4 = v6;
  [(APSMessageStore *)self performBlock:v5];
}

- (id)pendingLowPriorityIncomingMessageTopicsForEnvironment:(id)a3 pushTokens:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100014064;
  v18 = sub_1000146C4;
  v19 = objc_alloc_init(NSMutableArray);
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100099C74;
    v10[3] = &unk_100188900;
    v11 = v7;
    v12 = v6;
    v13 = &v14;
    [(APSMessageStore *)self performBlock:v10 waitUntilDone:1];
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)_onQueueIncomingMessagesFromRecords:(__CFArray *)a3
{
  if (a3 && (Count = CFArrayGetCount(a3)) != 0)
  {
    v5 = Count;
    v6 = [[NSMutableArray alloc] initWithCapacity:CFArrayGetCount(a3)];
    if (v5 >= 1)
    {
      for (i = 0; v5 != i; ++i)
      {
        v8 = objc_autoreleasePoolPush();
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v28 = 0;
        v29 = 0;
        v27 = 0;
        v25 = 0;
        cf = 0;
        v24 = 0;
        v23 = 0;
        v22 = 0;
        v20 = 0;
        v21 = 0;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        sub_1000B6D20(ValueAtIndex, 0, &v29, &cf, &v28, 0, &v27, &v24, &v23 + 1, &v23, &v21, &v20, &v19, &v22, &v25, &v18, &v17);
        v10 = APSDecodeDictionary();
        if (v10 && v28)
        {
          v11 = [APSIncomingMessage alloc];
          v12 = [(APSIncomingMessage *)v11 initWithTopic:v28 userInfo:v10];
          [(APSIncomingMessage *)v12 setToken:cf];
          [(APSIncomingMessage *)v12 setCorrelationIdentifier:v27];
          [(APSIncomingMessage *)v12 setFromStorage:HIBYTE(v23)];
          [(APSIncomingMessage *)v12 setLastMessageFromStorage:v23];
          [(APSIncomingMessage *)v12 setIdentifier:v21];
          [(APSIncomingMessage *)v12 setPriority:v20];
          v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:v19];
          [(APSIncomingMessage *)v12 setTimestamp:v13];

          [(APSIncomingMessage *)v12 setTracingEnabled:v22];
          [(APSIncomingMessage *)v12 setTracingUUID:v25];
          [(APSIncomingMessage *)v12 setPushType:v18];
          [(APSIncomingMessage *)v12 setPushFlags:v17];
          if (v29)
          {
            [(APSIncomingMessage *)v12 setGuid:?];
          }

          [v6 addObject:v12];

          goto LABEL_16;
        }

        if (+[APSLog shouldReduceLogging])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            v31 = self;
            v32 = 2112;
            v33 = v10;
            v34 = 2112;
            v35 = v28;
            v36 = 2112;
            v37 = v24;
            v14 = OS_LOG_TYPE_DEBUG;
LABEL_15:
            _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ could not create userInfo %@ or topic %@ from payload %@", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v31 = self;
          v32 = 2112;
          v33 = v10;
          v34 = 2112;
          v35 = v28;
          v36 = 2112;
          v37 = v24;
          v14 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_15;
        }

LABEL_16:
        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        objc_autoreleasePoolPop(v8);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)incomingMessagesForTopic:(id)a3 priority:(int64_t)a4 environment:(id)a5 pushTokens:(id)a6
{
  v21 = a3;
  v10 = a5;
  v11 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100014064;
  v36 = sub_1000146C4;
  v37 = 0;
  v12 = objc_alloc_init(NSMutableArray);
  if (v10)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10009A3F4;
    v26[3] = &unk_100188928;
    v31 = a4;
    v27 = v21;
    v29 = self;
    v30 = &v32;
    v28 = v10;
    [(APSMessageStore *)self performBlock:v26 waitUntilDone:1];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v33[5];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v38 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (v11)
        {
          v18 = [*(*(&v22 + 1) + 8 * i) token];
          v19 = [v11 containsObject:v18];

          if (!v19)
          {
            continue;
          }
        }

        [v12 addObject:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v38 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v32, 8);

  return v12;
}

- (id)storeOutgoingMessage:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10001B39C();
  if (+[APSLog shouldReduceLogging])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v7;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ asked to store outgoing message %@ with guid %@ environment %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v21 = self;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v7;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009A694;
  v16[3] = &unk_100186330;
  v17 = v6;
  v10 = v8;
  v18 = v10;
  v19 = v7;
  v11 = v7;
  v12 = v6;
  [(APSMessageStore *)self performBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (void)deleteOutgoingMessageWithGUID:(id)a3
{
  v4 = a3;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    v5 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Removing outgoing message with guid %@", buf, 0x16u);
LABEL_7:
  if ([v4 length])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10009AAA8;
    v6[3] = &unk_100186D90;
    v7 = v4;
    [(APSMessageStore *)self performBlock:v6];
  }
}

- (void)markMessageWithGUID:(id)a3 asSent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v7 = @"NO";
    *buf = 138412802;
    v14 = self;
    v15 = 2112;
    if (v4)
    {
      v7 = @"YES";
    }

    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = @"NO";
    *buf = 138412802;
    v14 = self;
    v15 = 2112;
    if (v4)
    {
      v9 = @"YES";
    }

    v16 = v6;
    v17 = 2112;
    v18 = v9;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ markMessageWithGUID: %@ asSent: %@", buf, 0x20u);
LABEL_11:
  if ([v6 length])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009AC88;
    v10[3] = &unk_100188700;
    v11 = v6;
    v12 = v4;
    [(APSMessageStore *)self performBlock:v10];
  }
}

- (void)storeChannel:(id)a3
{
  v4 = a3;
  if (+[APSLog shouldReduceLogging])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      v5 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ asked to store global channel %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v5 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009AEA4;
  v7[3] = &unk_100186D90;
  v8 = v4;
  v6 = v4;
  [(APSMessageStore *)self performBlock:v7 waitUntilDone:1];
}

- (void)deleteChannelID:(id)a3 forTopic:(id)a4 environment:(id)a5 userName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (+[APSLog shouldReduceLogging])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v25 = self;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      v14 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Removing channelID %@ channelTopic %@ environment %@ tokenName %@", buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v25 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v14 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10009B258;
  v19[3] = &unk_100187F18;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(APSMessageStore *)self performBlock:v19 waitUntilDone:1];
}

- (void)updateChannel:(id)a3
{
  if (a3)
  {
    v8 = a3;
    v4 = [v8 channelID];
    v5 = [v8 channelTopic];
    v6 = [v8 environment];
    v7 = [v8 tokenName];
    [(APSMessageStore *)self deleteChannelID:v4 forTopic:v5 environment:v6 userName:v7];

    [(APSMessageStore *)self storeChannel:v8];
  }
}

- (id)lookupChannelWithChannelID:(id)a3 andPushTopic:(id)a4 environment:(id)a5 userName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138413314;
    v41 = self;
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v14 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138413314;
    v41 = self;
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Looking for a channel subscription with channelID %@ push topic %@ environment %@ userName %@", buf, 0x34u);
LABEL_7:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100014064;
  v38 = sub_1000146C4;
  v39 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10009B718;
  v27 = &unk_100188970;
  v15 = v10;
  v28 = v15;
  v16 = v11;
  v29 = v16;
  v17 = v12;
  v30 = v17;
  v18 = v13;
  v32 = self;
  v33 = &v34;
  v31 = v18;
  [(APSMessageStore *)self performBlock:&v24 waitUntilDone:1];
  if ([APSLog shouldReduceLogging:v24])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v19 = v35[5];
    *buf = 138413570;
    v41 = self;
    v42 = 2112;
    v43 = v19;
    v44 = 2112;
    v45 = v15;
    v46 = 2112;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v18;
    v20 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v21 = v35[5];
    *buf = 138413570;
    v41 = self;
    v42 = 2112;
    v43 = v21;
    v44 = 2112;
    v45 = v15;
    v46 = 2112;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    v50 = 2112;
    v51 = v18;
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Found channel %@ for chanelID %@ push topic %@ environment %@ userName %@", buf, 0x3Eu);
LABEL_13:
  v22 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v22;
}

- (id)allRegisteredChannelsForTopic:(id)a3 environment:(id)a4 userName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v33 = v9;
    LOWORD(v34) = 2112;
    *(&v34 + 2) = v10;
    v11 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v33 = v9;
    LOWORD(v34) = 2112;
    *(&v34 + 2) = v10;
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "%@ Getting channels for topic %@ environment %@ userName %@", buf, 0x2Au);
LABEL_7:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = sub_100014064;
  *&v34 = sub_1000146C4;
  *(&v34 + 1) = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009BB04;
  v20[3] = &unk_100188998;
  v12 = v8;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  v14 = v10;
  v24 = self;
  v25 = buf;
  v23 = v14;
  [(APSMessageStore *)self performBlock:v20 waitUntilDone:1];
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v15 = *(*&buf[8] + 40);
    *v26 = 138412802;
    v27 = self;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v15;
    v16 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v17 = *(*&buf[8] + 40);
    *v26 = 138412802;
    v27 = self;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v17;
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Found channels for topic %@: %@", v26, 0x20u);
LABEL_13:
  v18 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v18;
}

- (id)allRegisteredChannelsForEnvironment:(id)a3 userName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v19 = v7;
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v19 = v7;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Getting all pubsub subscriptions for environment %@ userName %@", buf, 0x20u);
LABEL_7:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v19 = sub_100014064;
  v20 = sub_1000146C4;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009BDD4;
  v13[3] = &unk_1001889C0;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v16 = self;
  v17 = buf;
  v15 = v10;
  [(APSMessageStore *)self performBlock:v13 waitUntilDone:1];
  v11 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v11;
}

- (id)allRegisteredChannels
{
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    v3 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    v3 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Getting all pubsub subscriptions", &buf, 0xCu);
LABEL_7:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v8 = 0x3032000000;
  v9 = sub_100014064;
  v10 = sub_1000146C4;
  v11 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009C030;
  v6[3] = &unk_1001889E8;
  v6[4] = self;
  v6[5] = &buf;
  [(APSMessageStore *)self performBlock:v6 waitUntilDone:1];
  v4 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  return v4;
}

- (id)_onQueueSubscribedChannelsForRecord:(_APSChannelRecordStruct *)a3
{
  if (a3)
  {
    Default = CFAllocatorGetDefault();
    Mutable = CFArrayCreateMutable(Default, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, a3);
    v7 = [(APSMessageStore *)self _onQueueSubscribedChannelsForRecords:Mutable];
    v8 = [v7 firstObject];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_onQueueSubscribedChannelsForRecords:(__CFArray *)a3
{
  v4 = +[NSMutableArray array];
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count)
    {
      v6 = Count;
      v7 = [NSMutableArray arrayWithCapacity:Count];

      if (v6 >= 1)
      {
        for (i = 0; v6 != i; ++i)
        {
          v9 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
          cf = 0;
          v33 = 0;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          sub_100022588(ValueAtIndex, &cf, &v33, &v31, &v30, &v29);
          v11 = cf;
          v12 = v33;
          if (v33)
          {
            v13 = cf == 0;
          }

          else
          {
            v13 = 1;
          }

          if (v13 || v29 == 0)
          {
            if (+[APSLog shouldReduceLogging])
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v35 = self;
                v15 = OS_LOG_TYPE_DEBUG;
LABEL_18:
                _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ could not create PKGlobalChannel from mesage store", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = self;
              v15 = OS_LOG_TYPE_DEFAULT;
              goto LABEL_18;
            }
          }

          else
          {
            v28 = v9;
            v16 = v30;
            v17 = v31;
            v18 = v6;
            v19 = v7;
            v20 = v29;
            v21 = v16;
            v22 = v17;
            v23 = v12;
            v24 = v11;
            v25 = [objc_alloc(CUTWeakLinkClass()) initWithChannelID:v24 channelTopic:v23 environment:v22 tokenName:v21 checkpoint:{objc_msgSend(v20, "unsignedLongLongValue")}];

            v7 = v19;
            v6 = v18;
            [v7 addObject:v25];

            v9 = v28;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          objc_autoreleasePoolPop(v9);
        }
      }

      v4 = v7;
    }
  }

  return v4;
}

@end
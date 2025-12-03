@interface SoftwareUpdateListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SoftwareUpdateListener)init;
- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)block;
- (void)getManagedUpdatesWithCompletionBlock:(id)block;
- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)block;
- (void)getUpdatesMetricsWithCompletionBlock:(id)block;
- (void)getUpdatesWithCompletionBlock:(id)block;
- (void)hideApplicationBadgeForPendingUpdates;
- (void)migrateUpdatesStoreWithCompletionBlock:(id)block;
- (void)refreshUpdateCountWithCompletionBlock:(id)block;
- (void)refreshUpdatesWithCompletionBlock:(id)block completionBlock:(id)completionBlock;
- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)block;
- (void)reloadFromServerWithCompletionBlock:(id)block;
- (void)reloadManagedUpdatesWithCompletionBlock:(id)block;
- (void)removeUpdateBulletins;
- (void)shouldUseModernUpdatesWithCompletionBlock:(id)block;
- (void)showApplicationBadgeForPendingUpdates;
- (void)showApplicationUpdatesBulletin;
- (void)updateAllWithJobResults:(id)results;
- (void)updateAllWithOrder:(id)order completionBlock:(id)block;
@end

@implementation SoftwareUpdateListener

- (SoftwareUpdateListener)init
{
  v3.receiver = self;
  v3.super_class = SoftwareUpdateListener;
  return [(SoftwareUpdateListener *)&v3 init];
}

- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NSXPCConnection currentConnection];
    v6 = [XPCClient clientIDForConnection:v5];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "clearExpiredUpdateHistoryWithCompletionBlock for client: %{public}@", &v7, 0xCu);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1, 0);
  }
}

- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  LOBYTE(v10) = 0;
  v4 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:0 callbackHandler:blockCopy includeMetrics:1 isVPPLookup:0 userInitiated:v10 targetedItemID:0];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v4 logKey];
    v7 = +[NSXPCConnection currentConnection];
    v8 = [XPCClient clientIDForConnection:v7];
    *buf = 138412546;
    v12 = logKey;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] getUpdatesWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v9 = +[UpdatesManager sharedManager];
  [v9 getUpdatesWithContext:v4];
}

- (void)getUpdatesMetricsWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setUsingModernUpdatesCheck:1];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = qword_1005AADE0;
  v25 = qword_1005AADE0;
  if (!qword_1005AADE0)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10039EDF4;
    v21[3] = &unk_10051E318;
    v21[4] = &v22;
    sub_10039EDF4(v21);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  sharedScheduler = [v5 sharedScheduler];
  [sharedScheduler submittedActivities];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name hasPrefix:@"com.apple.appstored.AutoUpdates"];

        if (v13)
        {
          predictedOptimalStartDate = [v11 predictedOptimalStartDate];
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  predictedOptimalStartDate = 0;
LABEL_13:

  [v4 setNextUpdateCheck:predictedOptimalStartDate];
  v15 = sub_1003D6078();
  if (v15)
  {
    [v4 setLastUpdateCheck:v15];
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v4, 0);
  }
}

- (void)getUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  LOBYTE(v10) = 0;
  v4 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:0 callbackHandler:blockCopy includeMetrics:0 isVPPLookup:0 userInitiated:v10 targetedItemID:0];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v4 logKey];
    v7 = +[NSXPCConnection currentConnection];
    v8 = [XPCClient clientIDForConnection:v7];
    *buf = 138412546;
    v12 = logKey;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] getUpdatesWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v9 = +[UpdatesManager sharedManager];
  [v9 getUpdatesWithContext:v4];
}

- (void)getManagedUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  LOBYTE(v10) = 0;
  v4 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:0 callbackHandler:blockCopy includeMetrics:0 isVPPLookup:1 userInitiated:v10 targetedItemID:0];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v4 logKey];
    v7 = +[NSXPCConnection currentConnection];
    v8 = [XPCClient clientIDForConnection:v7];
    *buf = 138412546;
    v12 = logKey;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] getManagedUpdatesWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v9 = +[UpdatesManager sharedManager];
  [v9 getUpdatesWithContext:v4];
}

- (void)hideApplicationBadgeForPendingUpdates
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSXPCConnection currentConnection];
    v4 = [XPCClient clientIDForConnection:v3];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "hideApplicationBadgeForPendingUpdates for client: %{public}@", &v6, 0xCu);
  }

  v5 = +[UpdatesManager sharedManager];
  [v5 hidePendingUpdatesBadge];
}

- (void)migrateUpdatesStoreWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "migrateUpdatesStoreWithCompletionBlock", v5, 2u);
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1, 0);
  }
}

- (void)refreshUpdateCountWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = sub_1003FA4F0(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSXPCConnection currentConnection];
    v7 = [XPCClient clientIDForConnection:v6];
    *buf = 138543618;
    v15 = v4;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshUpdateCountWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v8 = +[UpdatesManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10039D73C;
  v11[3] = &unk_100526490;
  v12 = v4;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = v4;
  [v8 refreshUpdateCountWithRequestToken:v10 replyHandler:v11];
}

- (void)refreshUpdatesWithCompletionBlock:(id)block completionBlock:(id)completionBlock
{
  completionBlockCopy = completionBlock;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSXPCConnection currentConnection];
    v7 = [XPCClient clientIDForConnection:v6];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "refreshUpdatesWithCompletionBlock for client: %{public}@", &v8, 0xCu);
  }

  if (completionBlockCopy)
  {
    completionBlockCopy[2](completionBlockCopy, 1, 0);
  }
}

- (void)showApplicationUpdatesBulletin
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSXPCConnection currentConnection];
    v4 = [XPCClient clientIDForConnection:v3];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "showApplicationUpdatesBanner for client: %{public}@", &v5, 0xCu);
  }
}

- (void)showApplicationBadgeForPendingUpdates
{
  v2 = sub_1003FA4F0(XPCRequestToken, 0);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v4, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = Property;
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showApplicationBadgeForPendingUpdates for client: %{public}@", &v8, 0xCu);
  }

  v7 = +[UpdatesManager sharedManager];
  [v7 showPendingUpdatesBadgeWithRequestToken:v2];
}

- (void)removeUpdateBulletins
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSXPCConnection currentConnection];
    v4 = [XPCClient clientIDForConnection:v3];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removeUpdateBulletins for client: %{public}@", &v5, 0xCu);
  }
}

- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = sub_1003FA4F0(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v7 = objc_getProperty(v4, v6, 32, 1);
      Property = objc_getProperty(v4, v8, 48, 1);
      v10 = v7;
    }

    else
    {
      v7 = 0;
      v10 = 0;
      Property = 0;
    }

    v11 = Property;
    *buf = 138412546;
    v19 = v7;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] reloadFromServerInBackgroundWithCompletionBlock from client: %{public}@", buf, 0x16u);
  }

  v12 = +[UpdatesManager sharedManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10039DDC8;
  v15[3] = &unk_1005264B8;
  v16 = v4;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = v4;
  [v12 reloadFromServerInBackgroundWithToken:v14 completionBlock:v15];
}

- (void)reloadFromServerWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = sub_1003FA4F0(XPCRequestToken, 0);
  LOBYTE(v12) = 1;
  v5 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:v4 logKey:0 callbackHandler:blockCopy includeMetrics:0 isVPPLookup:0 userInitiated:v12 targetedItemID:0];

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v5 logKey];
    if (v4)
    {
      Property = objc_getProperty(v4, v7, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    *buf = 138412546;
    v14 = logKey;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] reloadFromServerWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v11 = +[UpdatesManager sharedManager];
  [v11 reloadUpdatesWithContext:v5];
}

- (void)reloadManagedUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  LOBYTE(v10) = 0;
  v4 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:2 requestToken:0 logKey:0 callbackHandler:blockCopy includeMetrics:0 isVPPLookup:1 userInitiated:v10 targetedItemID:0];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v4 logKey];
    v7 = +[NSXPCConnection currentConnection];
    v8 = [XPCClient clientIDForConnection:v7];
    *buf = 138412546;
    v12 = logKey;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] reloadManagedWithCompletionBlock for client: %{public}@", buf, 0x16u);
  }

  v9 = +[UpdatesManager sharedManager];
  [v9 getUpdatesWithContext:v4];
}

- (void)updateAllWithJobResults:(id)results
{
  resultsCopy = results;
  v4 = sub_1003FA4F0(XPCRequestToken, 0);
  v5 = objc_alloc_init(_TtC9appstored6LogKey);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      Property = objc_getProperty(v4, v7, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    *buf = 138412546;
    v17 = v5;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] updateAllWithJobResults for client: %{public}@", buf, 0x16u);
  }

  v10 = +[UpdatesManager sharedManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10039E388;
  v13[3] = &unk_1005264E0;
  v14 = v5;
  v15 = resultsCopy;
  v11 = resultsCopy;
  v12 = v5;
  [v10 updateAllWithOrder:&__NSArray0__struct requestToken:v4 replyHandler:v13];
}

- (void)updateAllWithOrder:(id)order completionBlock:(id)block
{
  blockCopy = block;
  orderCopy = order;
  v7 = sub_1003FA4F0(XPCRequestToken, 0);
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    v10 = [XPCClient clientIDForConnection:v9];
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updateAllWithOrder for client: %{public}@", buf, 0x16u);
  }

  v11 = +[UpdatesManager sharedManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10039E648;
  v14[3] = &unk_1005264E0;
  v15 = v7;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = v7;
  [v11 updateAllWithOrder:orderCopy requestToken:v13 replyHandler:v14];
}

- (void)shouldUseModernUpdatesWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = sub_1003FA4F0(XPCRequestToken, 0);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      Property = objc_getProperty(v4, v6, 48, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ shouldUseModernUpdatesWithCompletionBlock for client: %{public}@", &v9, 0x16u);
  }

  blockCopy[2](blockCopy, +[UpdatesManager shouldUseModernUpdates]);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  if (sub_1002280AC(self, connectionCopy, @"com.apple.appstored.private") || sub_1002280AC(self, connectionCopy, @"com.apple.appstored.install-apps"))
  {
    goto LABEL_6;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = processIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Treating %i as legacy client", buf, 8u);
  }

  if (sub_1002280AC(self, connectionCopy, @"com.apple.itunesstored.private"))
  {
LABEL_6:
    v8 = connectionCopy;
    v9 = v8;
    if (self)
    {
      processIdentifier2 = [v8 processIdentifier];
      v11 = [XPCClient clientIDForConnection:v9];
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = processIdentifier2;
        LOWORD(v22) = 2114;
        *(&v22 + 2) = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got connection from pid: %i client: %{public}@", buf, 0x12u);
      }

      v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASDSoftwareUpdateProtocol];
      [v9 setExportedInterface:v13];
      [v9 setExportedObject:self];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v9);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10039EC0C;
      v17[3] = &unk_100526500;
      v18 = processIdentifier2;
      [v9 setInterruptionHandler:v17];
      *buf = _NSConcreteStackBlock;
      *&v22 = 3221225472;
      *(&v22 + 1) = sub_10039ECBC;
      v23 = &unk_10051B880;
      objc_copyWeak(&v24, &location);
      objc_copyWeak(&v25, &from);
      v26 = processIdentifier2;
      [v9 setInvalidationHandler:buf];
      [v9 resume];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v14 = 1;
  }

  else
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = processIdentifier;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Connection denied for pid: %i for non entitled client", buf, 8u);
    }

    v14 = 0;
  }

  return v14;
}

@end
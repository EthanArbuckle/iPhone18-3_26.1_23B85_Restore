@interface UpdatesService
- (UpdatesService)init;
- (void)autoUpdateEnabled:(id)a3;
- (void)compatibilityUpdateForBundleIDs:(id)a3 userInitiated:(BOOL)a4 withReplyHandler:(id)a5;
- (void)getManagedUpdatesWithReplyHandler:(id)a3;
- (void)getMetricsWithReplyHandler:(id)a3;
- (void)getUpdateMetadataForBundleID:(id)a3 withReplyHandler:(id)a4;
- (void)getUpdateMetricsEventsWithReplyHandler:(id)a3;
- (void)getUpdatesIncludingMetricsWithReplyHandler:(id)a3;
- (void)getUpdatesWithReplyHandler:(id)a3;
- (void)hideApplicationBadgeForPendingUpdates;
- (void)refreshUpdateCountWithReplyHandler:(id)a3;
- (void)refreshUpdateForApp:(int64_t)a3 reply:(id)a4;
- (void)reloadForSettingsFromServerWithReplyHandler:(id)a3;
- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3;
- (void)reloadFromServerWithReplyHandler:(id)a3;
- (void)reloadManagedUpdatesWithReplyHandler:(id)a3;
- (void)requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:(id)a3 completion:(id)a4;
- (void)setAutoUpdateEnabled:(BOOL)a3 withReplyHandler:(id)a4;
- (void)shouldUseModernUpdatesWithReplyHandler:(id)a3;
- (void)showApplicationBadgeForPendingUpdates;
- (void)updateAllGettingJobResultsWithReplyHandler:(id)a3;
- (void)updateAllWithOrder:(id)a3 replyHandler:(id)a4;
- (void)updateAllWithReplyHandler:(id)a3;
@end

@implementation UpdatesService

- (UpdatesService)init
{
  v9.receiver = self;
  v9.super_class = UpdatesService;
  v2 = [(UpdatesService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.UpdatesService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[UpdatesManager sharedManager];
    updatesInterface = v2->_updatesInterface;
    v2->_updatesInterface = v6;
  }

  return v2;
}

- (void)autoUpdateEnabled:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A0B08;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100005D90(dispatchQueue, v7);
}

- (void)compatibilityUpdateForBundleIDs:(id)a3 userInitiated:(BOOL)a4 withReplyHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003A0C98;
  v14[3] = &unk_10051C078;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  sub_100005D90(dispatchQueue, v14);
}

- (void)getManagedUpdatesWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A0E84;
  v9[3] = &unk_10051C078;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)getUpdateMetadataForBundleID:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003A11EC;
  v13[3] = &unk_10051C7A8;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)getUpdatesWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A1508;
  v9[3] = &unk_10051C078;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)refreshUpdateCountWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A181C;
  v9[3] = &unk_10051C078;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)refreshUpdateForApp:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A1BB4;
  v11[3] = &unk_100523400;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v15 = a3;
  v9 = v6;
  v10 = v7;
  sub_100005D90(dispatchQueue, v11);
}

- (void)reloadFromServerWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A1F74;
  v9[3] = &unk_10051C078;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)reloadManagedUpdatesWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A230C;
  v9[3] = &unk_10051C078;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  v9 = [[_TtC9appstored6LogKey alloc] initWithCode:@"AUAT"];
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 processInfo];
    v12 = [v11 bundleIdentifier];
    *buf = 138412802;
    v22 = v9;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] requestAutomaticUpdateAuthorizationIfNecessaryForProcessHandle: %{public}@ for client: %{public}@", buf, 0x20u);
  }

  dispatchQueue = self->_dispatchQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003A2754;
  v17[3] = &unk_10051BB18;
  v19 = v9;
  v20 = v7;
  v18 = v6;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  sub_100005D90(dispatchQueue, v17);
}

- (void)setAutoUpdateEnabled:(BOOL)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A290C;
  v11[3] = &unk_100526230;
  v14 = a3;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  sub_100005D90(dispatchQueue, v11);
}

- (void)updateAllWithOrder:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003A2BD0;
  v13[3] = &unk_10051C7A8;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  sub_100005D90(dispatchQueue, v13);
}

- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A2F7C;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)shouldUseModernUpdatesWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A3324;
  v9[3] = &unk_10051B2D0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)getUpdateMetricsEventsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100003B90();
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003A3504;
  v9[3] = &unk_10051BB18;
  v11 = self;
  v12 = v4;
  v10 = v5;
  v7 = v4;
  v8 = v5;
  sub_100005D90(dispatchQueue, v9);
}

- (void)getMetricsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v18 = sub_1003A3B24(self);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Get metrics with reply handler", &buf, 0xCu);
  }

  v6 = objc_alloc_init(ASDSoftwareUpdateMetrics);
  [v6 setUsingModernUpdatesCheck:1];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v7 = qword_1005AAE00;
  v26 = qword_1005AAE00;
  if (!qword_1005AAE00)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = sub_1003A436C;
    v30 = &unk_10051E318;
    v31 = &v23;
    sub_1003A436C(&buf);
    v7 = v24[3];
  }

  v8 = v7;
  _Block_object_dispose(&v23, 8);
  v9 = [v7 sharedScheduler];
  [v9 submittedActivities];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v10 = v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 name];
        if ([v15 hasPrefix:@"com.apple.appstored.AutoUpdates"])
        {
          v16 = [v14 predictedOptimalStartDate];

          goto LABEL_15;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  [v6 setNextUpdateCheck:v16];
  v17 = sub_1003D6078();
  if (v17)
  {
    [v6 setLastUpdateCheck:v17];
  }

  if (v4)
  {
    v4[2](v4, v6, 0);
  }
}

- (void)getUpdatesIncludingMetricsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_1003A3B24(self);
    *buf = 138543362;
    v13 = v10;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Get updates including metrics with reply handler", buf, 0xCu);
  }

  LOBYTE(v11) = 0;
  v6 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:0 callbackHandler:v4 includeMetrics:1 isVPPLookup:0 userInitiated:v11 targetedItemID:0];

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(UpdatesContext *)v6 logKey];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Get updates including metrics with reply handler", buf, 0xCu);
  }

  v9 = +[UpdatesManager sharedManager];
  [v9 getUpdatesWithContext:v6];
}

- (void)hideApplicationBadgeForPendingUpdates
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_1003A3B24(self);
    v6 = 138543362;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Hide application badge for pending updates", &v6, 0xCu);
  }

  v4 = +[UpdatesManager sharedManager];
  [v4 hidePendingUpdatesBadge];
}

- (void)reloadForSettingsFromServerWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = sub_1003A3B24(self);
    v13 = 138543362;
    v14 = v12;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Reload for settings from server with reply handler", &v13, 0xCu);
  }

  v6 = sub_1003FA4F0(XPCRequestToken, 0);
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      Property = objc_getProperty(v6, v8, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v10 = Property;
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Reload for settings from server with reply handler", &v13, 0xCu);
  }

  v11 = +[UpdatesManager sharedManager];
  [v11 reloadFromServerInBackgroundWithToken:v6 completionBlock:v4];
}

- (void)showApplicationBadgeForPendingUpdates
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = sub_1003A3B24(self);
    v7 = 138543362;
    v8 = v6;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Show application badge for pending updates", &v7, 0xCu);
  }

  v4 = sub_100003B90();
  v5 = +[UpdatesManager sharedManager];
  [v5 showPendingUpdatesBadgeWithRequestToken:v4];
}

- (void)updateAllWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_1003A3B24(self);
    *buf = 138543362;
    v13 = v9;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Update all with reply handler", buf, 0xCu);
  }

  v6 = sub_100003B90();
  v7 = +[UpdatesManager sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003A41FC;
  v10[3] = &unk_100526600;
  v11 = v4;
  v8 = v4;
  [v7 updateAllWithOrder:&__NSArray0__struct requestToken:v6 replyHandler:v10];
}

- (void)updateAllGettingJobResultsWithReplyHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_1003A3B24(self);
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Update all getting job results with reply handler", &v9, 0xCu);
  }

  v6 = sub_100003B90();
  v7 = +[UpdatesManager sharedManager];
  [v7 updateAllWithOrder:&__NSArray0__struct requestToken:v6 replyHandler:v4];
}

@end
@interface UpdatesManager_ObjC
+ (id)sharedManager;
- (UpdatesManager_ObjC)init;
- (void)_handleAccountChangedNotification;
- (void)autoUpdateEnabled:(id)a3;
- (void)confirmAgentRequestedUpdateAll:(id)a3;
- (void)dropAllUpdatesIncludingVPP:(BOOL)a3 completionHandler:(id)a4;
- (void)getManagedUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4;
- (void)getUpdateMetadataForBundleID:(id)a3 replyHandler:(id)a4;
- (void)getUpdatesWithContext:(id)a3;
- (void)getUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4;
- (void)hidePendingUpdatesBadge;
- (void)isTVProviderApp:(unint64_t)a3 withReplyHandler:(id)a4;
- (void)noteUpdatesStateChangedWithReason:(id)a3 logKey:(id)a4 completionBlock:(id)a5;
- (void)performBackgroundSoftwareUpdateCheck;
- (void)performPostRestoreUpdatesCheck;
- (void)postProcessBackgroundUpdateMetrics;
- (void)refreshUpdateCountWithRequestToken:(id)a3 replyHandler:(id)a4;
- (void)refreshUpdateForApp:(int64_t)a3 token:(id)a4 replyHandler:(id)a5;
- (void)reloadApplicationBadgeWithReason:(id)a3;
- (void)reloadFromServerInBackgroundWithToken:(id)a3 completionBlock:(id)a4;
- (void)reloadFromServerWithRequestToken:(id)a3 replyHandler:(id)a4;
- (void)reloadManagedUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4;
- (void)reloadUpdatesWithContext:(id)a3;
- (void)setAutoUpdateEnabled:(BOOL)a3 withReplyHandler:(id)a4;
- (void)setupFollowingMigration;
- (void)showPendingUpdatesBadgeWithRequestToken:(id)a3;
- (void)updateAllWithOrder:(id)a3 requestToken:(id)a4 replyHandler:(id)a5;
- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)a3;
- (void)verifyPendingUpdates:(id)a3 bag:(id)a4;
- (void)verifyUpdatesFollowingExternalAppInstall:(id)a3;
- (void)verifyUpdatesForRemovedBundleIDs:(id)a3;
@end

@implementation UpdatesManager_ObjC

+ (id)sharedManager
{
  if (qword_1005AAC38 != -1)
  {
    dispatch_once(&qword_1005AAC38, &stru_100523320);
  }

  v3 = qword_1005AAC40;

  return v3;
}

- (UpdatesManager_ObjC)init
{
  v27.receiver = self;
  v27.super_class = UpdatesManager_ObjC;
  v2 = [(UpdatesManager_ObjC *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.callout", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstored.badge", v9);
    badgeQueue = v2->_badgeQueue;
    v2->_badgeQueue = v10;

    v12 = objc_opt_new();
    tvProviderApps = v2->_tvProviderApps;
    v2->_tvProviderApps = v12;

    v14 = objc_opt_new();
    DSIDLessAppsLock = v2->_DSIDLessAppsLock;
    v2->_DSIDLessAppsLock = v14;

    v16 = objc_alloc_init(TaskQueue);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v16;

    v18 = v2->_taskQueue;
    if (v18)
    {
      [(NSOperationQueue *)v18->_operationQueue setName:@"com.apple.appstored.UpdatesManager.taskQueue"];
    }

    v19 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100321484;
    block[3] = &unk_10051AF98;
    v20 = v2;
    v26 = v20;
    dispatch_async(v19, block);
    v21 = v2->_dispatchQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100321B38;
    v23[3] = &unk_10051AF98;
    v24 = v20;
    dispatch_async(v21, v23);
  }

  return v2;
}

- (void)isTVProviderApp:(unint64_t)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = +[BagService appstoredService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100321C5C;
  v9[3] = &unk_100521FE0;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 recentBagWithCompletionHandler:v9];
}

- (void)autoUpdateEnabled:(id)a3
{
  v5 = a3;
  v4 = sub_1003D5FC8();
  (*(a3 + 2))(v5, v4);
}

- (void)confirmAgentRequestedUpdateAll:(id)a3
{
  agentRequestedUpdateAll = self->_agentRequestedUpdateAll;
  self->_agentRequestedUpdateAll = 0;
  (*(a3 + 2))(a3, agentRequestedUpdateAll);
}

- (void)dropAllUpdatesIncludingVPP:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = sub_1002BB3F0();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100322034;
  v13[3] = &unk_100523368;
  v15 = a3;
  v8 = v6;
  v14 = v8;
  [v7 readUsingSession:v13];

  v9 = sub_1002BB3F0();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10032223C;
  v11[3] = &unk_100523390;
  v12 = v8;
  v10 = v8;
  [v9 modifyUsingTransaction:v11];

  v5[2](v5);
}

- (void)getManagedUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322310;
  block[3] = &unk_10051BB18;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)getUpdatesWithContext:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003227F0;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)getUpdateMetadataForBundleID:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003228C0;
  block[3] = &unk_10051C078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)getUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322B7C;
  block[3] = &unk_10051BB18;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)hidePendingUpdatesBadge
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322CE8;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)noteUpdatesStateChangedWithReason:(id)a3 logKey:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  LOBYTE(v16) = 0;
  v11 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:v10 callbackHandler:0 includeMetrics:0 isVPPLookup:0 userInitiated:v16 targetedItemID:0];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322E7C;
  block[3] = &unk_10051C7A8;
  block[4] = self;
  v18 = v8;
  v19 = v11;
  v20 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v8;
  dispatch_async(dispatchQueue, block);
}

- (void)postProcessBackgroundUpdateMetrics
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323044;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)performBackgroundSoftwareUpdateCheck
{
  v3 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:1];
  v4 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003232FC;
  v7[3] = &unk_1005233D8;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v4 upToDateBagOnQueue:dispatchQueue completionHandler:v7];
}

- (void)performPostRestoreUpdatesCheck
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323520;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)reloadApplicationBadgeWithReason:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003237BC;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)refreshUpdateCountWithRequestToken:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003238DC;
  block[3] = &unk_10051C078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)refreshUpdateForApp:(int64_t)a3 token:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323B54;
  v13[3] = &unk_100523400;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)reloadFromServerInBackgroundWithToken:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100323F7C;
  v12[3] = &unk_100523428;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v8 upToDateBagOnQueue:dispatchQueue completionHandler:v12];
}

- (void)reloadFromServerWithRequestToken:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003241B0;
  v12[3] = &unk_100523428;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v8 upToDateBagOnQueue:dispatchQueue completionHandler:v12];
}

- (void)reloadManagedUpdatesWithRequestToken:(id)a3 replyHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(v13) = 0;
  v8 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:2 requestToken:v7 logKey:0 callbackHandler:v6 includeMetrics:0 isVPPLookup:1 userInitiated:v13 targetedItemID:0];

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(UpdatesContext *)v8 logKey];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Refreshing from server for reloadManagedUpdates", buf, 0xCu);
  }

  v11 = +[BagService appstoredService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10032449C;
  v14[3] = &unk_1005233D8;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  [v11 upToDateBagWithCompletionHandler:v14];
}

- (void)reloadUpdatesWithContext:(id)a3
{
  v4 = a3;
  v5 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100324D48;
  v8[3] = &unk_1005233D8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v5 upToDateBagOnQueue:dispatchQueue completionHandler:v8];
}

- (void)setAutoUpdateEnabled:(BOOL)a3 withReplyHandler:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disabled";
    if (v4)
    {
      v7 = @"enabled";
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting auto updates to %{public}@", &v8, 0xCu);
  }

  sub_1003D61DC(AppDefaultsManager, v4);
  v5[2](v5);
}

- (void)setupFollowingMigration
{
  v3 = [KeepAlive keepAliveWithName:@"com.apple.appstored.UpdateManager.setupFollowingMigration"];
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100324FE0;
  v6[3] = &unk_10051B570;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(dispatchQueue, v6);
}

- (void)showPendingUpdatesBadgeWithRequestToken:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100325444;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateAllWithOrder:(id)a3 requestToken:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100325640;
  v15[3] = &unk_10051C0A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [v11 upToDateBagWithCompletionHandler:v15];
}

- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100325D60;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)verifyPendingUpdates:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326154;
  block[3] = &unk_10051AEE8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)verifyUpdatesFollowingExternalAppInstall:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100326524;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)verifyUpdatesForRemovedBundleIDs:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003267DC;
  block[3] = &unk_10051AF98;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleAccountChangedNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100327F28;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
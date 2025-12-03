@interface UpdatesManager_ObjC
+ (id)sharedManager;
- (UpdatesManager_ObjC)init;
- (void)_handleAccountChangedNotification;
- (void)autoUpdateEnabled:(id)enabled;
- (void)confirmAgentRequestedUpdateAll:(id)all;
- (void)dropAllUpdatesIncludingVPP:(BOOL)p completionHandler:(id)handler;
- (void)getManagedUpdatesWithRequestToken:(id)token replyHandler:(id)handler;
- (void)getUpdateMetadataForBundleID:(id)d replyHandler:(id)handler;
- (void)getUpdatesWithContext:(id)context;
- (void)getUpdatesWithRequestToken:(id)token replyHandler:(id)handler;
- (void)hidePendingUpdatesBadge;
- (void)isTVProviderApp:(unint64_t)app withReplyHandler:(id)handler;
- (void)noteUpdatesStateChangedWithReason:(id)reason logKey:(id)key completionBlock:(id)block;
- (void)performBackgroundSoftwareUpdateCheck;
- (void)performPostRestoreUpdatesCheck;
- (void)postProcessBackgroundUpdateMetrics;
- (void)refreshUpdateCountWithRequestToken:(id)token replyHandler:(id)handler;
- (void)refreshUpdateForApp:(int64_t)app token:(id)token replyHandler:(id)handler;
- (void)reloadApplicationBadgeWithReason:(id)reason;
- (void)reloadFromServerInBackgroundWithToken:(id)token completionBlock:(id)block;
- (void)reloadFromServerWithRequestToken:(id)token replyHandler:(id)handler;
- (void)reloadManagedUpdatesWithRequestToken:(id)token replyHandler:(id)handler;
- (void)reloadUpdatesWithContext:(id)context;
- (void)setAutoUpdateEnabled:(BOOL)enabled withReplyHandler:(id)handler;
- (void)setupFollowingMigration;
- (void)showPendingUpdatesBadgeWithRequestToken:(id)token;
- (void)updateAllWithOrder:(id)order requestToken:(id)token replyHandler:(id)handler;
- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)handler;
- (void)verifyPendingUpdates:(id)updates bag:(id)bag;
- (void)verifyUpdatesFollowingExternalAppInstall:(id)install;
- (void)verifyUpdatesForRemovedBundleIDs:(id)ds;
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

- (void)isTVProviderApp:(unint64_t)app withReplyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[BagService appstoredService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100321C5C;
  v9[3] = &unk_100521FE0;
  v9[4] = self;
  v10 = handlerCopy;
  appCopy = app;
  v8 = handlerCopy;
  [v7 recentBagWithCompletionHandler:v9];
}

- (void)autoUpdateEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = sub_1003D5FC8();
  (*(enabled + 2))(enabledCopy, v4);
}

- (void)confirmAgentRequestedUpdateAll:(id)all
{
  agentRequestedUpdateAll = self->_agentRequestedUpdateAll;
  self->_agentRequestedUpdateAll = 0;
  (*(all + 2))(all, agentRequestedUpdateAll);
}

- (void)dropAllUpdatesIncludingVPP:(BOOL)p completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSMutableArray array];
  v7 = sub_1002BB3F0();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100322034;
  v13[3] = &unk_100523368;
  pCopy = p;
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

  handlerCopy[2](handlerCopy);
}

- (void)getManagedUpdatesWithRequestToken:(id)token replyHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322310;
  block[3] = &unk_10051BB18;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = tokenCopy;
  v9 = handlerCopy;
  v10 = tokenCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)getUpdatesWithContext:(id)context
{
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003227F0;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)getUpdateMetadataForBundleID:(id)d replyHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003228C0;
  block[3] = &unk_10051C078;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)getUpdatesWithRequestToken:(id)token replyHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322B7C;
  block[3] = &unk_10051BB18;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = tokenCopy;
  v9 = handlerCopy;
  v10 = tokenCopy;
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

- (void)noteUpdatesStateChangedWithReason:(id)reason logKey:(id)key completionBlock:(id)block
{
  reasonCopy = reason;
  blockCopy = block;
  keyCopy = key;
  LOBYTE(v16) = 0;
  v11 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:0 requestToken:0 logKey:keyCopy callbackHandler:0 includeMetrics:0 isVPPLookup:0 userInitiated:v16 targetedItemID:0];

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100322E7C;
  block[3] = &unk_10051C7A8;
  block[4] = self;
  v18 = reasonCopy;
  v19 = v11;
  v20 = blockCopy;
  v13 = blockCopy;
  v14 = v11;
  v15 = reasonCopy;
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
  selfCopy = self;
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

- (void)reloadApplicationBadgeWithReason:(id)reason
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003237BC;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)refreshUpdateCountWithRequestToken:(id)token replyHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003238DC;
  block[3] = &unk_10051C078;
  v12 = tokenCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = tokenCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)refreshUpdateForApp:(int64_t)app token:(id)token replyHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100323B54;
  v13[3] = &unk_100523400;
  v14 = tokenCopy;
  selfCopy = self;
  v16 = handlerCopy;
  appCopy = app;
  v11 = handlerCopy;
  v12 = tokenCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)reloadFromServerInBackgroundWithToken:(id)token completionBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100323F7C;
  v12[3] = &unk_100523428;
  selfCopy = self;
  v15 = blockCopy;
  v13 = tokenCopy;
  v10 = blockCopy;
  v11 = tokenCopy;
  [v8 upToDateBagOnQueue:dispatchQueue completionHandler:v12];
}

- (void)reloadFromServerWithRequestToken:(id)token replyHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  v8 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003241B0;
  v12[3] = &unk_100523428;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = tokenCopy;
  v10 = handlerCopy;
  v11 = tokenCopy;
  [v8 upToDateBagOnQueue:dispatchQueue completionHandler:v12];
}

- (void)reloadManagedUpdatesWithRequestToken:(id)token replyHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  LOBYTE(v13) = 0;
  v8 = [[_TtC9appstored14UpdatesContext alloc] initWithReason:2 requestToken:tokenCopy logKey:0 callbackHandler:handlerCopy includeMetrics:0 isVPPLookup:1 userInitiated:v13 targetedItemID:0];

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(UpdatesContext *)v8 logKey];
    *buf = 138412290;
    v17 = logKey;
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

- (void)reloadUpdatesWithContext:(id)context
{
  contextCopy = context;
  v5 = +[BagService appstoredService];
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100324D48;
  v8[3] = &unk_1005233D8;
  v9 = contextCopy;
  selfCopy = self;
  v7 = contextCopy;
  [v5 upToDateBagOnQueue:dispatchQueue completionHandler:v8];
}

- (void)setAutoUpdateEnabled:(BOOL)enabled withReplyHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disabled";
    if (enabledCopy)
    {
      v7 = @"enabled";
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting auto updates to %{public}@", &v8, 0xCu);
  }

  sub_1003D61DC(AppDefaultsManager, enabledCopy);
  handlerCopy[2](handlerCopy);
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
  selfCopy = self;
  v5 = v3;
  dispatch_async(dispatchQueue, v6);
}

- (void)showPendingUpdatesBadgeWithRequestToken:(id)token
{
  tokenCopy = token;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100325444;
  v7[3] = &unk_10051B570;
  v8 = tokenCopy;
  selfCopy = self;
  v6 = tokenCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)updateAllWithOrder:(id)order requestToken:(id)token replyHandler:(id)handler
{
  orderCopy = order;
  tokenCopy = token;
  handlerCopy = handler;
  v11 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100325640;
  v15[3] = &unk_10051C0A0;
  v15[4] = self;
  v16 = orderCopy;
  v17 = tokenCopy;
  v18 = handlerCopy;
  v12 = tokenCopy;
  v13 = orderCopy;
  v14 = handlerCopy;
  [v11 upToDateBagWithCompletionHandler:v15];
}

- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100325D60;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)verifyPendingUpdates:(id)updates bag:(id)bag
{
  updatesCopy = updates;
  bagCopy = bag;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100326154;
  block[3] = &unk_10051AEE8;
  v12 = updatesCopy;
  v13 = bagCopy;
  selfCopy = self;
  v9 = bagCopy;
  v10 = updatesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)verifyUpdatesFollowingExternalAppInstall:(id)install
{
  installCopy = install;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100326524;
  v7[3] = &unk_10051B570;
  v8 = installCopy;
  selfCopy = self;
  v6 = installCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)verifyUpdatesForRemovedBundleIDs:(id)ds
{
  dsCopy = ds;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003267DC;
  block[3] = &unk_10051AF98;
  v8 = dsCopy;
  v6 = dsCopy;
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
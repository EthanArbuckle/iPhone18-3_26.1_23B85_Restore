@interface FRGizmoSyncManager
- (FRGizmoSyncManager)initWithAppConfigManager:(id)manager readingList:(id)list readingHistory:(id)history;
- (FRGizmoSyncManagerDelegate)delegate;
- (id)_newCompanionConnection;
- (void)_fetchMetadataWithCompletion:(id)completion;
- (void)_syncPreferredRefreshDatesWithCompletion:(id)completion;
- (void)_syncSavedIdentifiersOnGizmo:(id)gizmo articleIdentifiersOnGizmo:(id)onGizmo withCompletion:(id)completion;
- (void)_syncSeenIdentifiers:(id)identifiers withCompletion:(id)completion;
- (void)gizmoPreferencesNotifierDidNoticeUpdate:(id)update;
- (void)readingHistoryDidClear:(id)clear;
- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level;
- (void)syncWithGizmo;
@end

@implementation FRGizmoSyncManager

- (void)syncWithGizmo
{
  +[NSThread isMainThread];
  if (![(FRGizmoSyncManager *)self syncingWatchData])
  {
    [(FRGizmoSyncManager *)self setSyncingWatchData:1];
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000A534;
    v12[3] = &unk_1000C4650;
    objc_copyWeak(&v13, &location);
    v3 = objc_retainBlock(v12);
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100009CDC;
    v9[3] = &unk_1000C4678;
    objc_copyWeak(&v11, &location);
    v5 = v4;
    v10 = v5;
    [(FRGizmoSyncManager *)self _fetchMetadataWithCompletion:v9];
    dispatch_group_enter(v5);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000A52C;
    v7[3] = &unk_1000C18D0;
    v6 = v5;
    v8 = v6;
    [(FRGizmoSyncManager *)self _syncPreferredRefreshDatesWithCompletion:v7];
    dispatch_group_notify(v6, &_dispatch_main_q, v3);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (id)_newCompanionConnection
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.nanonews.service.companion" options:0];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FRWatchConsuming];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (FRGizmoSyncManager)initWithAppConfigManager:(id)manager readingList:(id)list readingHistory:(id)history
{
  managerCopy = manager;
  listCopy = list;
  historyCopy = history;
  +[NSThread isMainThread];
  v17.receiver = self;
  v17.super_class = FRGizmoSyncManager;
  v12 = [(FRGizmoSyncManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appConfigManager, manager);
    objc_storeStrong(&v13->_readingList, list);
    objc_storeStrong(&v13->_readingHistory, history);
    v14 = objc_alloc_init(FRGizmoPreferencesNotifier);
    [(FRGizmoPreferencesNotifier *)v14 setDelegate:v13];
    notifier = v13->_notifier;
    v13->_notifier = v14;

    [listCopy addObserver:v13];
    [historyCopy addObserver:v13];
  }

  return v13;
}

- (void)gizmoPreferencesNotifierDidNoticeUpdate:(id)update
{
  +[NSThread isMainThread];

  [(FRGizmoSyncManager *)self syncWithGizmo];
}

- (void)readingList:(id)list didAddArticles:(id)articles removeArticles:(id)removeArticles eventInitiationLevel:(int64_t)level
{
  listCopy = list;
  articlesCopy = articles;
  removeArticlesCopy = removeArticles;
  +[NSThread isMainThread];
  if ([articlesCopy count] || objc_msgSend(removeArticlesCopy, "count"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = [articlesCopy count];
      *&buf[12] = 2048;
      *&buf[14] = [removeArticlesCopy count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Marking %lu IDs saved and %lu IDs unsaved…", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = sub_100009BC8;
    v32 = sub_100009F38;
    _newCompanionConnection = [(FRGizmoSyncManager *)self _newCompanionConnection];
    [*(*&buf[8] + 40) resume];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100040500;
    v26[3] = &unk_1000C46A0;
    v12 = articlesCopy;
    v27 = v12;
    v13 = removeArticlesCopy;
    v28 = v13;
    v29 = buf;
    v14 = objc_retainBlock(v26);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100040564;
    v22 = &unk_1000C3740;
    v15 = v12;
    v23 = v15;
    v16 = v13;
    v24 = v16;
    v25 = buf;
    v17 = objc_retainBlock(&v19);
    v18 = [*(*&buf[8] + 40) remoteObjectProxyWithErrorHandler:{v14, v19, v20, v21, v22}];
    [v18 markArticleIdentifiersAsSaved:v15 articleIdentifiersAsNotSaved:v16 withReply:v17];

    _Block_object_dispose(buf, 8);
  }
}

- (void)readingHistoryDidClear:(id)clear
{
  clearCopy = clear;
  +[NSThread isMainThread];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Clearing gizmo seen history…", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_100009BC8;
  v13 = sub_100009F38;
  _newCompanionConnection = [(FRGizmoSyncManager *)self _newCompanionConnection];
  [*(v10 + 5) resume];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004081C;
  v8[3] = &unk_1000C46C8;
  v8[4] = buf;
  v5 = objc_retainBlock(v8);
  v6 = [*(v10 + 5) remoteObjectProxyWithErrorHandler:v5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004088C;
  v7[3] = &unk_1000C46F0;
  v7[4] = buf;
  [v6 clearAllSeenArticleIdentifiersWithReply:v7];

  _Block_object_dispose(buf, 8);
}

- (void)_fetchMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Syncing metadata with gizmo…", buf, 2u);
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = sub_100009BC8;
  v19 = sub_100009F38;
  _newCompanionConnection = [(FRGizmoSyncManager *)self _newCompanionConnection];
  [*(v16 + 5) resume];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100040B04;
  v12[3] = &unk_1000C4718;
  v5 = completionCopy;
  v13 = v5;
  v14 = buf;
  v6 = objc_retainBlock(v12);
  v7 = [*(v16 + 5) remoteObjectProxyWithErrorHandler:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040B94;
  v9[3] = &unk_1000C4768;
  v8 = v5;
  v10 = v8;
  v11 = buf;
  [v7 fetchHeadlineMetadataWithReply:v9];

  _Block_object_dispose(buf, 8);
}

- (void)_syncSeenIdentifiers:(id)identifiers withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040D84;
  block[3] = &unk_1000C4808;
  block[4] = self;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = identifiersCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_syncSavedIdentifiersOnGizmo:(id)gizmo articleIdentifiersOnGizmo:(id)onGizmo withCompletion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100041488;
  v11[3] = &unk_1000C3D18;
  gizmoCopy = gizmo;
  selfCopy = self;
  onGizmoCopy = onGizmo;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = onGizmoCopy;
  v10 = gizmoCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)_syncPreferredRefreshDatesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Syncing refresh dates with gizmo…", buf, 2u);
  }

  appConfigManager = [(FRGizmoSyncManager *)self appConfigManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041A70;
  v7[3] = &unk_1000C3110;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [appConfigManager fetchAppConfigurationIfNeededWithCompletion:v7];
}

- (FRGizmoSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
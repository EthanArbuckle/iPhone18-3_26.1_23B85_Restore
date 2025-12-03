@interface MapsAppRemovalService
- (MapsAppRemovalService)init;
- (void)_processAppRemovalForAnalytics;
- (void)_processAppRemovalForGeoServicesCleanup;
- (void)_processAppRemovalForMapsPushDaemon;
- (void)_processAppRemovalForOfflineData;
- (void)removeAppWithReply:(id)reply;
@end

@implementation MapsAppRemovalService

- (MapsAppRemovalService)init
{
  v9.receiver = self;
  v9.super_class = MapsAppRemovalService;
  v2 = [(MapsAppRemovalService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create_with_target_V2("MapsAppRemovalService", v3, 0);
    isolation = v2->_isolation;
    v2->_isolation = v4;

    v6 = dispatch_group_create();
    completionGroup = v2->_completionGroup;
    v2->_completionGroup = v6;
  }

  return v2;
}

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100000F88();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Starting Maps app removal", buf, 2u);
  }

  [(MapsAppRemovalService *)self _processAppRemovalForMapsPushDaemon];
  [(MapsAppRemovalService *)self _processAppRemovalForAnalytics];
  [(MapsAppRemovalService *)self _processAppRemovalForOfflineData];
  [(MapsAppRemovalService *)self _processAppRemovalForGeoServicesCleanup];
  completionGroup = [(MapsAppRemovalService *)self completionGroup];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100000FCC;
  v8[3] = &unk_100004170;
  v8[4] = self;
  v9 = replyCopy;
  v7 = replyCopy;
  dispatch_group_notify(completionGroup, &_dispatch_main_q, v8);
}

- (void)_processAppRemovalForMapsPushDaemon
{
  v3 = sub_100000F88();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting Maps Push Daemon processing for Maps app removal", buf, 2u);
  }

  completionGroup = [(MapsAppRemovalService *)self completionGroup];
  dispatch_group_enter(completionGroup);

  v5 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000114C;
  v6[3] = &unk_1000041C0;
  v6[4] = self;
  [v5 handleMapsApplicationRemoval:v6];
}

- (void)_processAppRemovalForAnalytics
{
  v3 = sub_100000F88();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting Analytics processing for Maps app removal", buf, 2u);
  }

  completionGroup = [(MapsAppRemovalService *)self completionGroup];
  dispatch_group_enter(completionGroup);

  isolation = [(MapsAppRemovalService *)self isolation];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001414;
  v6[3] = &unk_1000041C0;
  v6[4] = self;
  [GEOAPPortal processMapsDeletionWithCompletionQueue:isolation completion:v6];
}

- (void)_processAppRemovalForOfflineData
{
  completionGroup = [(MapsAppRemovalService *)self completionGroup];
  dispatch_group_enter(completionGroup);

  v4 = objc_alloc_init(GEOMapDataSubscriptionManager);
  isolation = [(MapsAppRemovalService *)self isolation];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000015F0;
  v7[3] = &unk_100004250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v6 fetchAllSubscriptionsWithCallbackQueue:isolation completionHandler:v7];
}

- (void)_processAppRemovalForGeoServicesCleanup
{
  completionGroup = [(MapsAppRemovalService *)self completionGroup];
  dispatch_group_enter(completionGroup);

  v4 = +[GEOTileLoader modernLoader];
  isolation = [(MapsAppRemovalService *)self isolation];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001A48;
  v6[3] = &unk_100004278;
  v6[4] = self;
  [v4 shrinkDiskCacheToSize:-1 callbackQ:isolation finished:v6];
}

@end
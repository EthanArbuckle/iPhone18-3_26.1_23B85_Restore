@interface SHAPSConnection
- (SHAPSConnection)init;
- (SHMediaLibraryController)libraryController;
- (SHMediaLibraryInfoFetcher)libraryInfoFetcher;
- (void)_libraryDidCompleteSync:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)fetchAPSEnvironmentWithCompletionHandler:(id)a3;
- (void)finishLibrarySync;
- (void)registerForPushNotifications;
- (void)startListeningForPushNotifications;
- (void)stopListeningForPushNotifications;
@end

@implementation SHAPSConnection

- (SHAPSConnection)init
{
  v6.receiver = self;
  v6.super_class = SHAPSConnection;
  v2 = [(SHAPSConnection *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.aps.shazamd.queue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;
  }

  return v2;
}

- (void)registerForPushNotifications
{
  if (self->_connection)
  {
    v2 = sh_log_object();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Already listening for APS push", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v4 = [(SHAPSConnection *)self libraryInfoFetcher];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002C428;
    v5[3] = &unk_10007DA30;
    objc_copyWeak(&v6, buf);
    [v4 fetchLibraryInfoWithCompletionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (void)startListeningForPushNotifications
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002C568;
  v3[3] = &unk_10007DA58;
  objc_copyWeak(&v4, &location);
  [(SHAPSConnection *)self fetchAPSEnvironmentWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)stopListeningForPushNotifications
{
  if (self->_connection)
  {
    v3 = [(SHAPSConnection *)self connection];
    [v3 _setEnabledTopics:&__NSArray0__struct];

    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "APS Push stop listening", v6, 2u);
    }

    connection = self->_connection;
    self->_connection = 0;
  }
}

- (void)fetchAPSEnvironmentWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = xpc_copy_entitlement_for_self();
  if (v4)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 compare:CKPushEnvironmentServerPreferred options:1];
  if (!v5 || v6)
  {
    v3[2](v3, 0);
  }

  else
  {
    v7 = +[SHCloudContainer sharedContainer];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002C948;
    v8[3] = &unk_10007DA80;
    v9 = v3;
    [v7 serverPreferredPushEnvironmentWithCompletionHandler:v8];
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Received public token '%@' on connection %@", &v8, 0x16u);
  }
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 topic];
    v14 = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "APS push received for topic: '%@'", &v14, 0xCu);
  }

  v8 = [v5 userInfo];
  v9 = [CKNotification notificationFromRemoteNotificationDictionary:v8];

  if ([v9 notificationType] == 2)
  {
    v10 = [SHMediaLibraryContext alloc];
    v11 = objc_opt_new();
    v12 = [(SHMediaLibraryContext *)v10 initWithSnapshot:v11 startCondition:SHMediaLibrarySyncStartConditionRemotePush];

    [v12 setDelegate:self];
    v13 = [(SHAPSConnection *)self libraryController];
    [v13 synchronizeWithContext:v12];
  }

  else
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Ignoring APS push message, not a CloudKit update", &v14, 2u);
    }
  }
}

- (void)_libraryDidCompleteSync:(id)a3
{
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:SHMediaLibraryRemoteChangeNotification object:0 userInfo:0 deliverImmediately:1];

  [(SHAPSConnection *)self finishLibrarySync];
}

- (void)finishLibrarySync
{
  libraryController = self->_libraryController;
  self->_libraryController = 0;
  _objc_release_x1();
}

- (SHMediaLibraryController)libraryController
{
  libraryController = self->_libraryController;
  if (!libraryController)
  {
    v4 = [[SHMediaLibraryController alloc] initWithBundleIdentifier:@"com.apple.aps.shazamd" clientType:1];
    v5 = self->_libraryController;
    self->_libraryController = v4;

    libraryController = self->_libraryController;
  }

  return libraryController;
}

- (SHMediaLibraryInfoFetcher)libraryInfoFetcher
{
  libraryInfoFetcher = self->_libraryInfoFetcher;
  if (!libraryInfoFetcher)
  {
    v4 = objc_alloc_init(SHMediaLibraryInfoFetcher);
    v5 = self->_libraryInfoFetcher;
    self->_libraryInfoFetcher = v4;

    libraryInfoFetcher = self->_libraryInfoFetcher;
  }

  return libraryInfoFetcher;
}

@end
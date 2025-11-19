@interface CAMOverlayServer
+ (CAMOverlayServer)sharedInstance;
- (NSSet)allConnections;
- (id)_init;
- (id)activeConnectionForProcess:(int64_t)a3;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)clientConnection:(id)a3 didChangeStatus:(unint64_t)a4;
- (void)dealloc;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeObserver:(id)a3;
- (void)start;
@end

@implementation CAMOverlayServer

+ (CAMOverlayServer)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011168;
  block[3] = &unk_100055418;
  block[4] = a1;
  if (qword_1000605F0 != -1)
  {
    dispatch_once(&qword_1000605F0, block);
  }

  v2 = qword_1000605F8;

  return v2;
}

- (id)_init
{
  v18.receiver = self;
  v18.super_class = CAMOverlayServer;
  v2 = [(CAMOverlayServer *)&v18 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    connectionsByProcessID = v2->__connectionsByProcessID;
    v2->__connectionsByProcessID = v3;

    v5 = [NSHashTable hashTableWithOptions:517];
    registeredObservers = v2->__registeredObservers;
    v2->__registeredObservers = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.camera.overlay-client-connection", v7);
    connectionQueue = v2->__connectionQueue;
    v2->__connectionQueue = v8;

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100011300;
    v16[3] = &unk_100055760;
    v10 = v2;
    v17 = v10;
    v11 = [BSServiceConnectionListener listenerWithConfigurator:v16];
    listener = v10->__listener;
    v10->__listener = v11;

    v13 = objc_alloc_init(CAMOverlayAnalyticsCollector);
    analyticsCollector = v10->_analyticsCollector;
    v10->_analyticsCollector = v13;
  }

  return v2;
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->__listener invalidate];
  listener = self->__listener;
  self->__listener = 0;

  v4.receiver = self;
  v4.super_class = CAMOverlayServer;
  [(CAMOverlayServer *)&v4 dealloc];
}

- (void)start
{
  v2 = [(CAMOverlayServer *)self _listener];
  [v2 activate];
}

- (id)activeConnectionForProcess:(int64_t)a3
{
  v4 = [(CAMOverlayServer *)self _connectionsByProcessID];
  v5 = [NSNumber numberWithLongLong:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 bs_firstObjectPassingTest:&stru_1000557A0];

  return v7;
}

- (NSSet)allConnections
{
  v3 = objc_opt_new();
  v4 = [(CAMOverlayServer *)self _connectionsByProcessID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011598;
  v7[3] = &unk_1000557C8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayServer *)self _registeredObservers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayServer *)self _registeredObservers];
  [v5 removeObject:v4];
}

- (void)_enumerateObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayServer *)self _registeredObservers];
  v6 = [v5 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[CAMOverlayServiceSpecification identifierKey];
  v10 = [v7 decodeStringForKey:v9];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001199C;
  v24[3] = &unk_1000557F0;
  v11 = v10;
  v25 = v11;
  [v8 configureConnection:v24];
  v12 = [CAMOverlayClientConnection alloc];
  v13 = [(CAMOverlayServer *)self _connectionQueue];
  v14 = [(CAMOverlayClientConnection *)v12 initWithBoardServiceConnection:v8 queue:v13];

  v15 = [(CAMOverlayClientConnection *)v14 auditToken];
  v16 = [v15 versionedPID];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000119A8;
  block[3] = &unk_100055840;
  v20 = v14;
  v21 = self;
  v22 = v11;
  v23 = v16;
  v17 = v11;
  v18 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)clientConnection:(id)a3 didChangeStatus:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 auditToken];
  v8 = [v7 versionedPID];

  if (a4 == 2)
  {
    v9 = [(CAMOverlayServer *)self _connectionsByProcessID];
    v10 = [NSNumber numberWithLongLong:v8];
    v11 = [v9 objectForKeyedSubscript:v10];

    [v11 removeObject:v6];
    if (![v11 count])
    {
      v12 = [(CAMOverlayServer *)self _connectionsByProcessID];
      v13 = [NSNumber numberWithLongLong:v8];
      [v12 setObject:0 forKeyedSubscript:v13];
    }

    v14 = [(CAMOverlayServer *)self analyticsCollector];
    [v14 unregisterConnectionWithPID:v8];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011CD0;
  v16[3] = &unk_100055868;
  v17 = v6;
  v18 = a4;
  v19 = v8;
  v15 = v6;
  [(CAMOverlayServer *)self _enumerateObserversWithBlock:v16];
}

@end
@interface CAMOverlayServer
+ (CAMOverlayServer)sharedInstance;
- (NSSet)allConnections;
- (id)_init;
- (id)activeConnectionForProcess:(int64_t)process;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)clientConnection:(id)connection didChangeStatus:(unint64_t)status;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)removeObserver:(id)observer;
- (void)start;
@end

@implementation CAMOverlayServer

+ (CAMOverlayServer)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011168;
  block[3] = &unk_100055418;
  block[4] = self;
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
  _listener = [(CAMOverlayServer *)self _listener];
  [_listener activate];
}

- (id)activeConnectionForProcess:(int64_t)process
{
  _connectionsByProcessID = [(CAMOverlayServer *)self _connectionsByProcessID];
  v5 = [NSNumber numberWithLongLong:process];
  v6 = [_connectionsByProcessID objectForKeyedSubscript:v5];

  v7 = [v6 bs_firstObjectPassingTest:&stru_1000557A0];

  return v7;
}

- (NSSet)allConnections
{
  v3 = objc_opt_new();
  _connectionsByProcessID = [(CAMOverlayServer *)self _connectionsByProcessID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011598;
  v7[3] = &unk_1000557C8;
  v5 = v3;
  v8 = v5;
  [_connectionsByProcessID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  _registeredObservers = [(CAMOverlayServer *)self _registeredObservers];
  [_registeredObservers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  _registeredObservers = [(CAMOverlayServer *)self _registeredObservers];
  [_registeredObservers removeObject:observerCopy];
}

- (void)_enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  _registeredObservers = [(CAMOverlayServer *)self _registeredObservers];
  v6 = [_registeredObservers copy];

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

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  contextCopy = context;
  connectionCopy = connection;
  v9 = +[CAMOverlayServiceSpecification identifierKey];
  v10 = [contextCopy decodeStringForKey:v9];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001199C;
  v24[3] = &unk_1000557F0;
  v11 = v10;
  v25 = v11;
  [connectionCopy configureConnection:v24];
  v12 = [CAMOverlayClientConnection alloc];
  _connectionQueue = [(CAMOverlayServer *)self _connectionQueue];
  v14 = [(CAMOverlayClientConnection *)v12 initWithBoardServiceConnection:connectionCopy queue:_connectionQueue];

  auditToken = [(CAMOverlayClientConnection *)v14 auditToken];
  versionedPID = [auditToken versionedPID];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000119A8;
  block[3] = &unk_100055840;
  v20 = v14;
  selfCopy = self;
  v22 = v11;
  v23 = versionedPID;
  v17 = v11;
  v18 = v14;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)clientConnection:(id)connection didChangeStatus:(unint64_t)status
{
  connectionCopy = connection;
  auditToken = [connectionCopy auditToken];
  versionedPID = [auditToken versionedPID];

  if (status == 2)
  {
    _connectionsByProcessID = [(CAMOverlayServer *)self _connectionsByProcessID];
    v10 = [NSNumber numberWithLongLong:versionedPID];
    v11 = [_connectionsByProcessID objectForKeyedSubscript:v10];

    [v11 removeObject:connectionCopy];
    if (![v11 count])
    {
      _connectionsByProcessID2 = [(CAMOverlayServer *)self _connectionsByProcessID];
      v13 = [NSNumber numberWithLongLong:versionedPID];
      [_connectionsByProcessID2 setObject:0 forKeyedSubscript:v13];
    }

    analyticsCollector = [(CAMOverlayServer *)self analyticsCollector];
    [analyticsCollector unregisterConnectionWithPID:versionedPID];
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011CD0;
  v16[3] = &unk_100055868;
  v17 = connectionCopy;
  statusCopy = status;
  v19 = versionedPID;
  v15 = connectionCopy;
  [(CAMOverlayServer *)self _enumerateObserversWithBlock:v16];
}

@end
@interface CADSPRPBConnection
- (CADSPRPBConnection)initWithServer:(id)server hostFactory:(id)factory;
- (RPBHost)host;
- (void)connect;
- (void)createHost;
- (void)createOrDestroyHost;
- (void)dealloc;
- (void)destroyHost;
- (void)disable;
- (void)disconnect;
- (void)enable;
- (void)remoteProcessingBlockServerWillStartRunning:(id)running;
- (void)remoteProcessingBlockServerWillStopRunning:(id)running;
@end

@implementation CADSPRPBConnection

- (void)remoteProcessingBlockServerWillStopRunning:(id)running
{
  obj = self;
  runningCopy = running;
  objc_sync_enter(obj);
  server = obj->_server;

  if (server == runningCopy)
  {
    obj->_serverIsRunning = 0;
    [(CADSPRPBConnection *)obj createOrDestroyHost];
  }

  objc_sync_exit(obj);
}

- (void)remoteProcessingBlockServerWillStartRunning:(id)running
{
  obj = self;
  runningCopy = running;
  objc_sync_enter(obj);
  server = obj->_server;

  if (server == runningCopy)
  {
    obj->_serverIsRunning = 1;
    [(CADSPRPBConnection *)obj createOrDestroyHost];
  }

  objc_sync_exit(obj);
}

- (void)destroyHost
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_host)
  {
    [(RPBServer *)obj->_server removeHost:?];
    host = obj->_host;
    obj->_host = 0;
  }

  objc_sync_exit(obj);
}

- (void)createHost
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_host)
  {
    v3 = (*(obj->_hostFactory + 2))();
    if (v3)
    {
      [(RPBServer *)obj->_server addHost:v3];
      objc_storeStrong(&obj->_host, v3);
    }

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)createOrDestroyHost
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_connectionIsEnabled && obj->_serverIsRunning)
  {
    [(CADSPRPBConnection *)obj createHost];
  }

  else
  {
    [(CADSPRPBConnection *)obj destroyHost];
  }

  objc_sync_exit(obj);
}

- (void)disconnect
{
  obj = self;
  objc_sync_enter(obj);
  [(RPBServer *)obj->_server removeListener:?];
  objc_sync_exit(obj);
}

- (void)connect
{
  obj = self;
  objc_sync_enter(obj);
  [(RPBServer *)obj->_server addListener:?];
  obj->_serverIsRunning = [(RPBServer *)obj->_server isRunning];
  objc_sync_exit(obj);
}

- (RPBHost)host
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connectionIsEnabled)
  {
    [(CADSPRPBConnection *)selfCopy createHost];
  }

  v3 = selfCopy->_host;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)disable
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionIsEnabled = 0;
  [(CADSPRPBConnection *)obj createOrDestroyHost];
  objc_sync_exit(obj);
}

- (void)enable
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionIsEnabled = 1;
  [(CADSPRPBConnection *)obj createOrDestroyHost];
  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(CADSPRPBConnection *)self disconnect];
  v3.receiver = self;
  v3.super_class = CADSPRPBConnection;
  [(CADSPRPBConnection *)&v3 dealloc];
}

- (CADSPRPBConnection)initWithServer:(id)server hostFactory:(id)factory
{
  serverCopy = server;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CADSPRPBConnection;
  v9 = [(CADSPRPBConnection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_connectionIsEnabled = 0;
    objc_storeStrong(&v9->_server, server);
    v10->_serverIsRunning = 0;
    v11 = MEMORY[0x1CCA84FF0](factoryCopy);
    hostFactory = v10->_hostFactory;
    v10->_hostFactory = v11;

    host = v10->_host;
    v10->_host = 0;
  }

  [(CADSPRPBConnection *)v10 connect];

  return v10;
}

@end
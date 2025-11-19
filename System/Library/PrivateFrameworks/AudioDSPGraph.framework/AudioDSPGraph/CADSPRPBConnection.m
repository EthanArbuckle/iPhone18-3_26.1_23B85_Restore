@interface CADSPRPBConnection
- (CADSPRPBConnection)initWithServer:(id)a3 hostFactory:(id)a4;
- (RPBHost)host;
- (void)connect;
- (void)createHost;
- (void)createOrDestroyHost;
- (void)dealloc;
- (void)destroyHost;
- (void)disable;
- (void)disconnect;
- (void)enable;
- (void)remoteProcessingBlockServerWillStartRunning:(id)a3;
- (void)remoteProcessingBlockServerWillStopRunning:(id)a3;
@end

@implementation CADSPRPBConnection

- (void)remoteProcessingBlockServerWillStopRunning:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  server = obj->_server;

  if (server == v4)
  {
    obj->_serverIsRunning = 0;
    [(CADSPRPBConnection *)obj createOrDestroyHost];
  }

  objc_sync_exit(obj);
}

- (void)remoteProcessingBlockServerWillStartRunning:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  server = obj->_server;

  if (server == v4)
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_connectionIsEnabled)
  {
    [(CADSPRPBConnection *)v2 createHost];
  }

  v3 = v2->_host;
  objc_sync_exit(v2);

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

- (CADSPRPBConnection)initWithServer:(id)a3 hostFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CADSPRPBConnection;
  v9 = [(CADSPRPBConnection *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_connectionIsEnabled = 0;
    objc_storeStrong(&v9->_server, a3);
    v10->_serverIsRunning = 0;
    v11 = MEMORY[0x1CCA84FF0](v8);
    hostFactory = v10->_hostFactory;
    v10->_hostFactory = v11;

    host = v10->_host;
    v10->_host = 0;
  }

  [(CADSPRPBConnection *)v10 connect];

  return v10;
}

@end
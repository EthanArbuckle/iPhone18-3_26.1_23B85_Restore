@interface SHServer
- (SHServer)init;
- (id)buildListenerForMachService:(Class)service;
- (id)buildListeners;
- (void)start;
- (void)stop;
@end

@implementation SHServer

- (SHServer)init
{
  v11.receiver = self;
  v11.super_class = SHServer;
  v2 = [(SHServer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    buildListeners = [(SHServer *)v2 buildListeners];
    listeners = v3->_listeners;
    v3->_listeners = buildListeners;

    v6 = objc_alloc_init(SHMediaLibraryAccountListener);
    accountListener = v3->_accountListener;
    v3->_accountListener = v6;

    v8 = objc_alloc_init(SHAPSConnection);
    apsConnection = v3->_apsConnection;
    v3->_apsConnection = v8;
  }

  return v3;
}

- (void)start
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  listeners = [(SHServer *)self listeners];
  v4 = [listeners countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(listeners);
        }

        [*(*(&v10 + 1) + 8 * v7) listen];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [listeners countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  accountListener = [(SHServer *)self accountListener];
  [accountListener listenForChanges];

  apsConnection = [(SHServer *)self apsConnection];
  [apsConnection registerForPushNotifications];
}

- (void)stop
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  listeners = [(SHServer *)self listeners];
  v4 = [listeners countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(listeners);
        }

        [*(*(&v9 + 1) + 8 * v7) stopListening];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [listeners countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  accountListener = [(SHServer *)self accountListener];
  [accountListener stopListeningForChanges];
}

- (id)buildListeners
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[_TtC7shazamd17SHServiceProvider availableServices];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(SHServer *)self buildListenerForMachService:v9];
        [v3 addObject:v10];

        [v9 initializeGlobalServiceState];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)buildListenerForMachService:(Class)service
{
  v3 = [[_TtC7shazamd17SHServiceProvider alloc] initWithService:service];
  v4 = [SHConnectionListener alloc];
  buildListener = [(SHServiceProvider *)v3 buildListener];
  v6 = [(SHConnectionListener *)v4 initWithServiceProvider:v3 listener:buildListener];

  return v6;
}

@end
@interface SLServiceListener
- (BOOL)_verifyAuthorizationForConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SLServiceListener)initWithExportedSessionClass:(Class)a3 serviceProtocol:(id)a4;
- (void)beginAcceptingConnections;
@end

@implementation SLServiceListener

- (SLServiceListener)initWithExportedSessionClass:(Class)a3 serviceProtocol:(id)a4
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SLServiceListener;
  v9 = [(SLServiceListener *)&v13 init];
  if (v9)
  {
    _SLLog(v4, 7, @"Initializing listener for session class: %@");
    v9->_sessionClass = a3;
    objc_storeStrong(&v9->_serviceProtocol, a4);
    v10 = [MEMORY[0x1E696B0D8] serviceListener];
    listener = v9->_listener;
    v9->_listener = v10;

    [(NSXPCListener *)v9->_listener setDelegate:v9];
  }

  return v9;
}

- (void)beginAcceptingConnections
{
  v4 = [(SLServiceListener *)self serviceName];
  listener = self->_listener;
  v6 = *&self->_sessionClass;
  _SLLog(v2, 5, @"Service with type %@ session class %@ and protocol %@ is accepting connections at listener %@");

  [MEMORY[0x1E696B0D8] enableTransactions];
  v5 = self->_listener;

  [(NSXPCListener *)v5 resume];
}

- (BOOL)_verifyAuthorizationForConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  allowedEntitlements = self->_allowedEntitlements;
  if (allowedEntitlements)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = allowedEntitlements;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([v5 sl_clientHasEntitlement:*(*(&v14 + 1) + 8 * i)])
          {
            _SLLog(v3, 7, @"Client has required entitlement %@");
            v12 = 1;
            goto LABEL_12;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  v7 = [(SLServiceListener *)self _verifyAuthorizationForConnection:v6];
  if (v7)
  {
    v8 = self->_persistentStoreName;
    v9 = self->_managedObjectModelPath;
    v23 = [(SLServiceListener *)self serviceName];
    _SLLog(v4, 7, @"Service %@ wants persistent store named %@ matching MOM at %@");

    v10 = 0;
    if (v8 && v9)
    {
      v10 = [[SLDatabase alloc] initWithStoreName:v8 modelPath:v9, v23, v8, v9];
    }

    v28 = v9;
    sessionClass = self->_sessionClass;
    v24 = [(SLServiceListener *)self serviceName];
    v27 = self->_sessionClass;
    _SLLog(v4, 7, @"Service %@ is expecting the remote session to be of class %@");

    if (([(objc_class *)sessionClass isSubclassOfClass:objc_opt_class(), v24, v27]& 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = v10;
      v14 = *MEMORY[0x1E695D930];
      v15 = NSStringFromClass(self->_sessionClass);
      v16 = v14;
      v10 = v13;
      [v12 raise:v16 format:{@"%@ is not a subclass of SLRemoteSession", v15}];
    }

    v17 = [[sessionClass alloc] initWithConnection:v6 database:v10];
    _SLLog(v4, 5, @"New remote session: %@");
    v18 = self->_serviceProtocol;
    v25 = NSStringFromProtocol(v18);
    _SLLog(v4, 7, @"Expecting remote session to conform to %@");

    if (([v17 conformsToProtocol:{v18, v25}] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"The remote session does not conform to the required protocol."];
    }

    v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v18];
    [v6 setExportedInterface:v19];

    [v6 setExportedObject:v17];
    clientInterface = self->_clientInterface;
    if (clientInterface)
    {
      v21 = [(NSXPCInterface *)clientInterface protocol];
      v26 = NSStringFromProtocol(v21);
      _SLLog(v4, 7, @"Expecting client session to conform to %@");

      [v6 setRemoteObjectInterface:{self->_clientInterface, v26}];
    }

    [v6 resume];
  }

  else
  {
    v8 = [v6 sl_localizedClientName];
    _SLLog(v4, 3, @"Denying client %@ because it lacks the proper entitlement to connect");
  }

  return v7;
}

@end
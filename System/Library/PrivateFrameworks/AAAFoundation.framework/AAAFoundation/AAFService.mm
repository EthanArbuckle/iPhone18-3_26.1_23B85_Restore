@interface AAFService
- (AAFService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)_configureListener;
- (void)startup;
@end

@implementation AAFService

- (AAFService)init
{
  v3.receiver = self;
  v3.super_class = AAFService;
  return [(AAFService *)&v3 init];
}

- (void)startup
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AAFLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(AAFService *)self serviceName];
    v6 = 138412290;
    v7 = serviceName;
    _os_log_impl(&dword_1C8644000, v3, OS_LOG_TYPE_DEFAULT, "Service: starting up xpc service - %@", &v6, 0xCu);
  }

  [(AAFService *)self _configureListener];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_configureListener
{
  serviceName = [(AAFService *)self serviceName];
  if (serviceName)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0D8]);
    serviceName2 = [(AAFService *)self serviceName];
    v6 = [v4 initWithMachServiceName:serviceName2];
    serviceListener = self->_serviceListener;
    self->_serviceListener = v6;

    [(NSXPCListener *)self->_serviceListener setDelegate:self];
    [(NSXPCListener *)self->_serviceListener resume];
  }

  else
  {
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAFService *)v8 _configureListener];
    }
  }
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v28 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  preConnectEntitlements = [(AAFService *)self preConnectEntitlements];
  v6 = [preConnectEntitlements countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = MEMORY[0x1E695E118];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(preConnectEntitlements);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [connectionCopy valueForEntitlement:v11];
        if (!v12 || ([v9 isEqual:v12] & 1) == 0)
        {
          v19 = _AAFLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(AAFService *)v11 shouldAcceptNewConnection:v19];
          }

          goto LABEL_16;
        }
      }

      v7 = [preConnectEntitlements countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  exportedProtocol = [(AAFService *)self exportedProtocol];

  if (!exportedProtocol)
  {
    preConnectEntitlements = _AAFLogSystem();
    if (os_log_type_enabled(preConnectEntitlements, OS_LOG_TYPE_FAULT))
    {
      [AAFService shouldAcceptNewConnection:preConnectEntitlements];
    }

    goto LABEL_16;
  }

  v14 = MEMORY[0x1E696B0D0];
  exportedProtocol2 = [(AAFService *)self exportedProtocol];
  preConnectEntitlements = [v14 interfaceWithProtocol:exportedProtocol2];

  [connectionCopy setExportedInterface:preConnectEntitlements];
  exportedObject = [(AAFService *)self exportedObject];

  if (!exportedObject)
  {
    v22 = _AAFLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [AAFService shouldAcceptNewConnection:v22];
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  exportedObject2 = [(AAFService *)self exportedObject];
  [connectionCopy setExportedObject:exportedObject2];

  [(AAFService *)self configureExportedInterface:preConnectEntitlements];
  [connectionCopy resume];
  v18 = 1;
LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)shouldAcceptNewConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "Client doesn't have entitlement - %@. Terminating connection!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
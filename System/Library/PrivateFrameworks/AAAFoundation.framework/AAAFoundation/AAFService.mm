@interface AAFService
- (AAFService)init;
- (BOOL)shouldAcceptNewConnection:(id)a3;
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
    v4 = [(AAFService *)self serviceName];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C8644000, v3, OS_LOG_TYPE_DEFAULT, "Service: starting up xpc service - %@", &v6, 0xCu);
  }

  [(AAFService *)self _configureListener];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_configureListener
{
  v3 = [(AAFService *)self serviceName];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0D8]);
    v5 = [(AAFService *)self serviceName];
    v6 = [v4 initWithMachServiceName:v5];
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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(AAFService *)self preConnectEntitlements];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v4 valueForEntitlement:v11];
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

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(AAFService *)self exportedProtocol];

  if (!v13)
  {
    v5 = _AAFLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AAFService shouldAcceptNewConnection:v5];
    }

    goto LABEL_16;
  }

  v14 = MEMORY[0x1E696B0D0];
  v15 = [(AAFService *)self exportedProtocol];
  v5 = [v14 interfaceWithProtocol:v15];

  [v4 setExportedInterface:v5];
  v16 = [(AAFService *)self exportedObject];

  if (!v16)
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

  v17 = [(AAFService *)self exportedObject];
  [v4 setExportedObject:v17];

  [(AAFService *)self configureExportedInterface:v5];
  [v4 resume];
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
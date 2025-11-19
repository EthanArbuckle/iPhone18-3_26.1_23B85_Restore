@interface NEProviderServer
+ (NEProviderServer)sharedServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NEExtensionProviderContext)firstContext;
- (void)generateProviderEndpointInfoInMessage:(id)a3 extensionPoint:(id)a4;
- (void)removeProviderContext:(id)a3;
- (void)start;
@end

@implementation NEProviderServer

- (void)removeProviderContext:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_contexts removeObject:v5];
  objc_sync_exit(v4);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      v22 = "Got a non-provider listener";
      v23 = v16;
      v24 = 2;
LABEL_16:
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v22, &buf, v24);
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  if (v8)
  {
    v9 = v8[7];
  }

  else
  {
    v9 = 0;
  }

  v10 = NSClassFromString(v9);
  if (!v10)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v25 = v8[7];
      }

      else
      {
        v25 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      v22 = "Failed to create a Class from %@";
      v23 = v16;
      v24 = 12;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v11 = [v10 alloc];
  v12 = v7;
  if (!v11 || (v30.receiver = v11, v30.super_class = NEExtensionProviderContext, (v13 = [(NEProviderServer *)&v30 init]) == 0))
  {

    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v29 = v8[7];
      }

      else
      {
        v29 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v29;
      _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Failed to instantiate a %@ object", &buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_19;
  }

  v14 = [objc_opt_class() _extensionAuxiliaryHostProtocol];
  [v12 setRemoteObjectInterface:v14];

  v15 = [objc_opt_class() _extensionAuxiliaryVendorProtocol];
  [v12 setExportedInterface:v15];

  [v12 setExportedObject:v13];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v32 = __49__NEExtensionProviderContext_initWithConnection___block_invoke;
  v33 = &unk_1E7F0B0E8;
  v16 = v13;
  v34 = v16;
  [v12 setInvalidationHandler:&buf];
  [v12 resume];
  objc_storeStrong(&v16[8].isa, a4);

  v17 = self;
  objc_sync_enter(v17);
  contexts = v17->_contexts;
  if (!contexts)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = v17->_contexts;
    v17->_contexts = v19;

    contexts = v17->_contexts;
  }

  [(NSMutableArray *)contexts addObject:v16];
  objc_sync_exit(v17);

  v21 = 1;
LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)start
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __25__NEProviderServer_start__block_invoke;
  handler[3] = &unk_1E7F0AF98;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.networkextension.provider.matching", MEMORY[0x1E69E96A0], handler);
}

void __25__NEProviderServer_start__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "extension-point");
  if (string && (v5 = string, *string))
  {
    reply = xpc_dictionary_create_reply(v3);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    [v7 generateProviderEndpointInfoInMessage:reply extensionPoint:v8];

    xpc_dictionary_send_reply();
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "com.apple.networkextension.provider.matching";
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Received a %s event without an extension point", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NEExtensionProviderContext)firstContext
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_contexts firstObject];
  objc_sync_exit(v2);

  return v3;
}

- (void)generateProviderEndpointInfoInMessage:(id)a3 extensionPoint:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  xdict = a3;
  v6 = a4;
  v7 = v6;
  if (!self)
  {
    goto LABEL_26;
  }

  if ([v6 isEqualToString:@"com.apple.networkextension.filter-data"])
  {
    v8 = off_1E7F047A8;
  }

  else if ([v7 isEqualToString:@"com.apple.networkextension.app-proxy"])
  {
    v8 = off_1E7F04728;
  }

  else if ([v7 isEqualToString:@"com.apple.networkextension.packet-tunnel"])
  {
    v8 = off_1E7F04760;
  }

  else if ([v7 isEqualToString:@"com.apple.networkextension.dns-proxy"])
  {
    v8 = off_1E7F04750;
  }

  else if ([v7 isEqualToString:@"com.apple.networkextension.filter-packet"])
  {
    v8 = off_1E7F047F0;
  }

  else
  {
    if (([v7 isEqualToString:@"com.apple.networkextension.app-push"] & 1) == 0)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v29.receiver) = 138412290;
        *(&v29.receiver + 4) = v7;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Failed to create a listener, extension point is not supported: %@", &v29, 0xCu);
      }

      self = 0;
      goto LABEL_24;
    }

    v8 = off_1E7F04738;
  }

  v9 = *v8;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (![(NSMutableArray *)self->_listeners count])
  {
    goto LABEL_16;
  }

  listeners = self->_listeners;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __49__NEProviderServer_getListenerForExtensionPoint___block_invoke;
  v27 = &unk_1E7F0AF70;
  v13 = v11;
  v28 = v13;
  v14 = [(NSMutableArray *)listeners indexOfObjectPassingTest:&v24];

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self = [(NSMutableArray *)self->_listeners objectAtIndexedSubscript:v14];
  }

  else
  {
LABEL_16:
    v15 = [NEProviderXPCListener alloc];
    v13 = v11;
    if (v15 && (v29.receiver = v15, v29.super_class = NEProviderXPCListener, (v16 = [(NEProviderServer *)&v29 initWithServiceName:&stru_1F3880810]) != 0))
    {
      v17 = v16;
      objc_storeStrong(&v16[2]._listeners, v11);

      [(NEProviderServer *)v17 setDelegate:self];
      [(NEProviderServer *)v17 resume];
      v18 = self->_listeners;
      if (!v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = self->_listeners;
        self->_listeners = v19;

        v18 = self->_listeners;
      }

      [(NSMutableArray *)v18 addObject:v17, xdict, v24, v25, v26, v27];
      self = v17;
    }

    else
    {

      self = 0;
    }
  }

LABEL_24:

  if (!self)
  {
    goto LABEL_27;
  }

  v7 = [(NEProviderServer *)self endpoint];
  v21 = [v7 _endpoint];
  xpc_dictionary_set_value(xdict, "listener-endpoint", v21);

LABEL_26:
LABEL_27:

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __49__NEProviderServer_getListenerForExtensionPoint___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 56);
  }

  else
  {
    v2 = 0;
  }

  return [v2 isEqualToString:*(a1 + 32)];
}

+ (NEProviderServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    dispatch_once(&sharedServer_onceToken, &__block_literal_global_26804);
  }

  v3 = sharedServer_g_server;

  return v3;
}

uint64_t __32__NEProviderServer_sharedServer__block_invoke()
{
  v0 = objc_alloc_init(NEProviderServer);
  v1 = sharedServer_g_server;
  sharedServer_g_server = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
@interface NETunnelProvider
- (NETunnelProviderRoutingMethod)routingMethod;
- (void)handleAppMessage:(NSData *)messageData completionHandler:(void *)completionHandler;
- (void)setTunnelNetworkSettings:(NETunnelNetworkSettings *)tunnelNetworkSettings completionHandler:(void *)completionHandler;
@end

@implementation NETunnelProvider

- (NETunnelProviderRoutingMethod)routingMethod
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  context = [(NEProvider *)selfCopy context];
  v5 = context;
  if (context)
  {
    Property = objc_getProperty(context, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  appVPN = [v7 appVPN];

  if (appVPN)
  {
    v9 = NETunnelProviderRoutingMethodSourceApplication;
  }

  else
  {
    context2 = [(NEProvider *)selfCopy context];
    v12 = context2;
    if (context2)
    {
      v13 = objc_getProperty(context2, v11, 48, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 VPN];
    tunnelType = [v15 tunnelType];

    if (tunnelType == 2)
    {
      v9 = NETunnelProviderRoutingMethodNetworkRule;
    }

    else
    {
      v9 = NETunnelProviderRoutingMethodDestinationIP;
    }
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)handleAppMessage:(NSData *)messageData completionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = messageData;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@: Handle App Message with %@", &v10, 0x16u);
  }

  v7[2](v7, 0);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setTunnelNetworkSettings:(NETunnelNetworkSettings *)tunnelNetworkSettings completionHandler:(void *)completionHandler
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = tunnelNetworkSettings;
  v7 = completionHandler;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v6)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"NEPacketTunnelNetworkSettings can only be used with NEPacketTunnelProvider";
      v10 = MEMORY[0x1E695DF20];
      v11 = v26;
      v12 = &v25;
      goto LABEL_14;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"NEPacketTunnelNetworkSettings must be used with NEPacketTunnelProvider";
      v10 = MEMORY[0x1E695DF20];
      v11 = &v24;
      v12 = &v23;
LABEL_14:
      v16 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      context = [v9 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v16];

      v7[2](v7, context);
      goto LABEL_17;
    }
  }

  if (![(NETunnelNetworkSettings *)v6 checkValidityAndCollectErrors:v8])
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@: setTunnelConfiguration validation failed", buf, 0xCu);
    }

    if ([v8 count])
    {
      v15 = [v8 componentsJoinedByString:{@"\n", *MEMORY[0x1E696A578]}];
      v20 = v15;
      context = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      context = 0;
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:context];
    v7[2](v7, v17);
  }

  else
  {
LABEL_8:
    context = [(NEProvider *)self context];
    [context setTunnelConfiguration:v6 completionHandler:v7];
  }

LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
}

@end
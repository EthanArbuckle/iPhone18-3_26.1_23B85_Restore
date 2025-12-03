@interface NEPacketTunnelProvider
- (NEPacketTunnelProvider)initWithVirtualInterfaceType:(int64_t)type;
- (NWUDPSession)createUDPSessionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint;
- (OS_nw_interface)virtualInterface;
- (id)getTunnelInterface;
- (void)cancelTunnelWithError:(NSError *)error;
- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler;
- (void)startTunnelWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
- (void)stopTunnelWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler;
@end

@implementation NEPacketTunnelProvider

- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  v9 = settingsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  iPv4Settings = [v9 IPv4Settings];
  if (!iPv4Settings || ([v9 IPv4Settings], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "configMethod") == 3))
  {
    iPv6Settings = [v9 IPv6Settings];
    if (!iPv6Settings)
    {
      if (iPv4Settings)
      {
      }

      goto LABEL_16;
    }

    v12 = iPv6Settings;
    iPv6Settings2 = [v9 IPv6Settings];
    configMethod = [iPv6Settings2 configMethod];

    if (iPv4Settings)
    {
    }

    if (configMethod == 2)
    {
LABEL_16:
      v22.receiver = self;
      v22.super_class = NEPacketTunnelProvider;
      [(NETunnelProvider *)&v22 setTunnelNetworkSettings:v9 completionHandler:handlerCopy];
      goto LABEL_17;
    }
  }

  else
  {
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Non-manual IP addressing can only be used with NEEthernetTunnelNetworkSettings";
    v16 = MEMORY[0x1E695DF20];
    v17 = v26;
    v18 = &v25;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_16;
  }

  v15 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A578];
  v24 = @"Non-manual IP addressing can only be used with NEEthernetTunnelProvider";
  v16 = MEMORY[0x1E695DF20];
  v17 = &v24;
  v18 = &v23;
LABEL_13:
  v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
  v20 = [v15 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v19];

  handlerCopy[2](handlerCopy, v20);
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)stopTunnelWithReason:(NEProviderStopReason)reason completionHandler:(void *)completionHandler
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    v12 = reason;
    _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_INFO, "%@: Stopping with reason %ld", &v9, 0x16u);
  }

  v6[2](v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startTunnelWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = options;
  v7 = completionHandler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "%@: Starting with options %@", &v10, 0x16u);
  }

  v7[2](v7, 0);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelTunnelWithError:(NSError *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: canceling with error %@", &v8, 0x16u);
  }

  context = [(NEProvider *)self context];
  [context cancelWithError:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (NWUDPSession)createUDPSessionThroughTunnelToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint
{
  v6 = localEndpoint;
  v7 = MEMORY[0x1E6977E40];
  v8 = remoteEndpoint;
  v9 = objc_alloc_init(v7);
  if (v6)
  {
    v10 = MEMORY[0x1E6977E08];
    hostname = [(NWHostEndpoint *)v6 hostname];
    port = [(NWHostEndpoint *)v6 port];
    v13 = [v10 endpointWithHostname:hostname port:port];
    [v9 setLocalAddress:v13];
  }

  getTunnelInterface = [(NEPacketTunnelProvider *)self getTunnelInterface];
  [v9 setRequiredInterface:getTunnelInterface];

  v15 = [objc_alloc(MEMORY[0x1E6977E70]) initWithEndpoint:v8 parameters:v9];

  return v15;
}

- (id)getTunnelInterface
{
  if (self)
  {
    packetFlow = [self packetFlow];
    if (packetFlow)
    {
      v3 = packetFlow[11];

      if (!v3)
      {
        goto LABEL_10;
      }

      v4 = objc_alloc(MEMORY[0x1E6977E30]);
      packetFlow2 = [self packetFlow];
      v6 = packetFlow2;
      if (packetFlow2 && (v7 = *(packetFlow2 + 88)) != 0)
      {
        v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v7 + 265), 0x600u);
      }

      else
      {
        v8 = 0;
      }

      v3 = [v4 initWithInterfaceName:v8];
    }

    else
    {
      v6 = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

- (OS_nw_interface)virtualInterface
{
  packetFlow = [(NEPacketTunnelProvider *)self packetFlow];
  if (packetFlow)
  {
    v4 = packetFlow[11];

    if (!v4)
    {
      goto LABEL_7;
    }

    packetFlow2 = [(NEPacketTunnelProvider *)self packetFlow];
    v6 = packetFlow2;
    if (packetFlow2)
    {
      packetFlow2 = *(packetFlow2 + 88);
    }

    NEVirtualInterfaceGetIndex(packetFlow2);
    v4 = nw_interface_create_with_index();
  }

  else
  {
    v6 = 0;
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (NEPacketTunnelProvider)initWithVirtualInterfaceType:(int64_t)type
{
  v13.receiver = self;
  v13.super_class = NEPacketTunnelProvider;
  v4 = [(NEProvider *)&v13 initAllowUnentitled:0];
  if (v4)
  {
    v5 = [NEPacketTunnelFlow alloc];
    if (v5)
    {
      v14.receiver = v5;
      v14.super_class = NEPacketTunnelFlow;
      v6 = [(NEProvider *)&v14 init];
      if (v6)
      {
        v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);
        v9 = dispatch_queue_create("NEPacketTunnelFlow queue", v8);
        context = v6->super.super._context;
        v6->super.super._context = v9;

        v6[1].super.super._defaultPath = type;
      }
    }

    else
    {
      v6 = 0;
    }

    packetFlow = v4->_packetFlow;
    v4->_packetFlow = v6;
  }

  return v4;
}

@end
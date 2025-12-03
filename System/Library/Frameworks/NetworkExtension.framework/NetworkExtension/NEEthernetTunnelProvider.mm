@interface NEEthernetTunnelProvider
- (NEEthernetTunnelProvider)init;
- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler;
@end

@implementation NEEthernetTunnelProvider

- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  if (!settingsCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = settingsCopy;
    iPv4Settings = [v9 IPv4Settings];
    if (!iPv4Settings || ([v9 IPv4Settings], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "configMethod") == 3))
    {
      iPv6Settings = [v9 IPv6Settings];
      if (!iPv6Settings)
      {
        if (iPv4Settings)
        {
        }

        goto LABEL_17;
      }

      v14 = iPv6Settings;
      iPv6Settings2 = [v9 IPv6Settings];
      configMethod = [iPv6Settings2 configMethod];

      if (iPv4Settings)
      {
      }

      if (configMethod == 2)
      {
LABEL_17:
        v25.receiver = self;
        v25.super_class = NEEthernetTunnelProvider;
        [(NEPacketTunnelProvider *)&v25 setTunnelNetworkSettings:v9 completionHandler:handlerCopy];
        goto LABEL_18;
      }
    }

    else
    {
    }

    Property = [(NEPacketTunnelProvider *)self packetFlow];
    v19 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v18, 96, 1);
    }

    v20 = Property;

    if (!v20)
    {
      v21 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27 = @"[NEPacketTunnelFlow readPacketsWithCompletionHandler:] must be called before setting IPv4 settings or IPv6 settings with non-manual address configuration";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v23 = [v21 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v22];

      handlerCopy[2](handlerCopy, v23);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = MEMORY[0x1E696ABC0];
  v28 = *MEMORY[0x1E696A578];
  v29[0] = @"Only NEEthernetTunnelNetworkSettings can be used with NEEthernetTunnelProvider";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v9 = [v11 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v12];

  handlerCopy[2](handlerCopy, v9);
LABEL_18:

  v24 = *MEMORY[0x1E69E9840];
}

- (NEEthernetTunnelProvider)init
{
  v3.receiver = self;
  v3.super_class = NEEthernetTunnelProvider;
  return [(NEPacketTunnelProvider *)&v3 initWithVirtualInterfaceType:3];
}

@end
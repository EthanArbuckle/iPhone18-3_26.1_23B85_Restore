@interface NETransparentProxyProvider
- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler;
@end

@implementation NETransparentProxyProvider

- (void)setTunnelNetworkSettings:(id)settings completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  if (settingsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"Only NETransparentProxyNetworkSettings can be used with NETransparentProxyProvider";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = [v8 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v9];

      handlerCopy[2](handlerCopy, v10);
      goto LABEL_6;
    }

    [settingsCopy setIsFullyTransparent:1];
  }

  v12.receiver = self;
  v12.super_class = NETransparentProxyProvider;
  [(NETunnelProvider *)&v12 setTunnelNetworkSettings:settingsCopy completionHandler:handlerCopy];
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
}

@end
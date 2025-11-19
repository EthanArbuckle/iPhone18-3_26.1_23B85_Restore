@interface NETransparentProxyProvider
- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4;
@end

@implementation NETransparentProxyProvider

- (void)setTunnelNetworkSettings:(id)a3 completionHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"Only NETransparentProxyNetworkSettings can be used with NETransparentProxyProvider";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = [v8 errorWithDomain:@"NETunnelProviderErrorDomain" code:1 userInfo:v9];

      v7[2](v7, v10);
      goto LABEL_6;
    }

    [v6 setIsFullyTransparent:1];
  }

  v12.receiver = self;
  v12.super_class = NETransparentProxyProvider;
  [(NETunnelProvider *)&v12 setTunnelNetworkSettings:v6 completionHandler:v7];
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
}

@end
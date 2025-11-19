@interface LAEndpointProviderServer
+ (BOOL)handleConnection:(id)a3;
- (void)provideEndpoint:(int64_t)a3 uid:(unsigned int)a4 reply:(id)a5;
@end

@implementation LAEndpointProviderServer

+ (BOOL)handleConnection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_storeWeak(v4 + 1, v3);
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LAProtocolEndpointProviderServer];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:v4];
  [v3 setInvalidationHandler:&stru_100054FC8];

  return 1;
}

- (void)provideEndpoint:(int64_t)a3 uid:(unsigned int)a4 reply:(id)a5
{
  v6 = a5;
  if (a3 >= 4)
  {
    v8 = sub_1000064CC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100022844(a3, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = qword_100055070[a3];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000670C;
  v19 = sub_10000671C;
  v20 = 0;
  if (a3)
  {
    v9 = [[NSXPCConnection alloc] initWithMachServiceName:v7 options:0];
    v10 = [v9 _xpcConnection];
    xpc_connection_set_target_uid();

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LAProtocolEndpointProvider];
    [v9 setRemoteObjectInterface:v11];

    [v9 resume];
    v12 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&stru_100055008];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100006778;
    v14[3] = &unk_100055030;
    v14[4] = &v15;
    [v12 getEndpoint:v14];

    [v9 invalidate];
    v13 = v16[5];
  }

  else
  {
    v13 = 0;
  }

  v6[2](v6, v13);
  _Block_object_dispose(&v15, 8);
}

@end
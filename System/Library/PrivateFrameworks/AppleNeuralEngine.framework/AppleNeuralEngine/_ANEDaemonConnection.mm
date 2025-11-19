@interface _ANEDaemonConnection
+ (id)daemonConnection;
+ (id)daemonConnectionRestricted;
+ (id)userDaemonConnection;
- (_ANEDaemonConnection)init;
- (_ANEDaemonConnection)initWithMachServiceName:(id)a3 restricted:(BOOL)a4;
- (void)beginRealTimeTaskWithReply:(id)a3;
- (void)compiledModelExistsFor:(id)a3 withReply:(id)a4;
- (void)compiledModelExistsMatchingHash:(id)a3 withReply:(id)a4;
- (void)dealloc;
- (void)echo:(id)a3 withReply:(id)a4;
- (void)endRealTimeTaskWithReply:(id)a3;
- (void)purgeCompiledModel:(id)a3 withReply:(id)a4;
- (void)purgeCompiledModelMatchingHash:(id)a3 withReply:(id)a4;
- (void)reportTelemetryToPPS:(id)a3 playload:(id)a4;
@end

@implementation _ANEDaemonConnection

- (_ANEDaemonConnection)init
{
  v3 = +[_ANEStrings machServiceName];
  v4 = [(_ANEDaemonConnection *)self initWithMachServiceName:v3 restricted:0];

  return v4;
}

- (_ANEDaemonConnection)initWithMachServiceName:(id)a3 restricted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _ANEDaemonConnection;
  v7 = [(_ANEDaemonConnection *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v6 options:4096];
    daemonConnection = v7->_daemonConnection;
    v7->_daemonConnection = v8;

    v7->_restricted = v4;
    if (v4)
    {
      _ANEDaemonInterfacePrivate();
    }

    else
    {
      _ANEDaemonInterface();
    }
    v10 = ;
    [(NSXPCConnection *)v7->_daemonConnection setRemoteObjectInterface:v10];

    [(NSXPCConnection *)v7->_daemonConnection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_daemonConnection invalidate];
  v3.receiver = self;
  v3.super_class = _ANEDaemonConnection;
  [(_ANEDaemonConnection *)&v3 dealloc];
}

+ (id)daemonConnection
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)daemonConnectionRestricted
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[_ANEStrings machServiceNamePrivate];
  v4 = [v2 initWithMachServiceName:v3 restricted:1];

  return v4;
}

+ (id)userDaemonConnection
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[_ANEStrings userMachServiceName];
  v4 = [v2 initWithMachServiceName:v3 restricted:0];

  return v4;
}

- (void)beginRealTimeTaskWithReply:(id)a3
{
  v5 = a3;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51___ANEDaemonConnection_beginRealTimeTaskWithReply___block_invoke;
    v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v11[4] = a2;
    v7 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51___ANEDaemonConnection_beginRealTimeTaskWithReply___block_invoke_6;
    v9[3] = &unk_1E79BA258;
    v10 = v5;
    [v7 beginRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(v5 + 2))(v5, 0, v8);
  }
}

- (void)endRealTimeTaskWithReply:(id)a3
{
  v5 = a3;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49___ANEDaemonConnection_endRealTimeTaskWithReply___block_invoke;
    v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v11[4] = a2;
    v7 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___ANEDaemonConnection_endRealTimeTaskWithReply___block_invoke_8;
    v9[3] = &unk_1E79BA258;
    v10 = v5;
    [v7 endRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(v5 + 2))(v5, 0, v8);
  }
}

- (void)echo:(id)a3 withReply:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(_ANEDaemonConnection *)self restricted])
  {
    daemonConnection = self->_daemonConnection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39___ANEDaemonConnection_echo_withReply___block_invoke;
    v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v14[4] = a2;
    v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39___ANEDaemonConnection_echo_withReply___block_invoke_9;
    v12[3] = &unk_1E79BA258;
    v13 = v8;
    [v10 echo:v7 withReply:v12];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [_ANEErrors entitlementErrorForMethod:v10];
    (*(v8 + 2))(v8, 0, v11);
  }
}

- (void)reportTelemetryToPPS:(id)a3 playload:(id)a4
{
  daemonConnection = self->_daemonConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___ANEDaemonConnection_reportTelemetryToPPS_playload___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 reportTelemetryToPPS:v7 playload:v6];
}

- (void)compiledModelExistsFor:(id)a3 withReply:(id)a4
{
  v7 = a4;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  v9 = a3;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke_17;
  v12[3] = &unk_1E79BA2D0;
  v13 = v7;
  v11 = v7;
  [v10 compiledModelExistsFor:v9 withReply:v12];
}

- (void)purgeCompiledModel:(id)a3 withReply:(id)a4
{
  v7 = a4;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  v9 = a3;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19;
  v12[3] = &unk_1E79BA258;
  v13 = v7;
  v11 = v7;
  [v10 purgeCompiledModel:v9 withReply:v12];
}

- (void)compiledModelExistsMatchingHash:(id)a3 withReply:(id)a4
{
  v7 = a4;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  v9 = a3;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21;
  v12[3] = &unk_1E79BA258;
  v13 = v7;
  v11 = v7;
  [v10 compiledModelExistsMatchingHash:v9 withReply:v12];
}

- (void)purgeCompiledModelMatchingHash:(id)a3 withReply:(id)a4
{
  v7 = a4;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  v9 = a3;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22;
  v12[3] = &unk_1E79BA258;
  v13 = v7;
  v11 = v7;
  [v10 purgeCompiledModelMatchingHash:v9 withReply:v12];
}

@end
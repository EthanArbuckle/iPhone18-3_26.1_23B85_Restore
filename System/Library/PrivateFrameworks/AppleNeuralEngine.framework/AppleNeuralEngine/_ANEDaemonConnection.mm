@interface _ANEDaemonConnection
+ (id)daemonConnection;
+ (id)daemonConnectionRestricted;
+ (id)userDaemonConnection;
- (_ANEDaemonConnection)init;
- (_ANEDaemonConnection)initWithMachServiceName:(id)name restricted:(BOOL)restricted;
- (void)beginRealTimeTaskWithReply:(id)reply;
- (void)compiledModelExistsFor:(id)for withReply:(id)reply;
- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply;
- (void)dealloc;
- (void)echo:(id)echo withReply:(id)reply;
- (void)endRealTimeTaskWithReply:(id)reply;
- (void)purgeCompiledModel:(id)model withReply:(id)reply;
- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply;
- (void)reportTelemetryToPPS:(id)s playload:(id)playload;
@end

@implementation _ANEDaemonConnection

- (_ANEDaemonConnection)init
{
  v3 = +[_ANEStrings machServiceName];
  v4 = [(_ANEDaemonConnection *)self initWithMachServiceName:v3 restricted:0];

  return v4;
}

- (_ANEDaemonConnection)initWithMachServiceName:(id)name restricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = _ANEDaemonConnection;
  v7 = [(_ANEDaemonConnection *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    daemonConnection = v7->_daemonConnection;
    v7->_daemonConnection = v8;

    v7->_restricted = restrictedCopy;
    if (restrictedCopy)
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

- (void)beginRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
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
    v10 = replyCopy;
    [v7 beginRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)endRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
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
    v10 = replyCopy;
    [v7 endRealTimeTaskWithReply:v9];
  }

  else
  {
    v7 = NSStringFromSelector(a2);
    v8 = [_ANEErrors entitlementErrorForMethod:v7];
    (*(replyCopy + 2))(replyCopy, 0, v8);
  }
}

- (void)echo:(id)echo withReply:(id)reply
{
  echoCopy = echo;
  replyCopy = reply;
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
    v13 = replyCopy;
    [v10 echo:echoCopy withReply:v12];
  }

  else
  {
    v10 = NSStringFromSelector(a2);
    v11 = [_ANEErrors entitlementErrorForMethod:v10];
    (*(replyCopy + 2))(replyCopy, 0, v11);
  }
}

- (void)reportTelemetryToPPS:(id)s playload:(id)playload
{
  daemonConnection = self->_daemonConnection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___ANEDaemonConnection_reportTelemetryToPPS_playload___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  playloadCopy = playload;
  sCopy = s;
  v8 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 reportTelemetryToPPS:sCopy playload:playloadCopy];
}

- (void)compiledModelExistsFor:(id)for withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  forCopy = for;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___ANEDaemonConnection_compiledModelExistsFor_withReply___block_invoke_17;
  v12[3] = &unk_1E79BA2D0;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 compiledModelExistsFor:forCopy withReply:v12];
}

- (void)purgeCompiledModel:(id)model withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  modelCopy = model;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53___ANEDaemonConnection_purgeCompiledModel_withReply___block_invoke_19;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 purgeCompiledModel:modelCopy withReply:v12];
}

- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  hashCopy = hash;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___ANEDaemonConnection_compiledModelExistsMatchingHash_withReply___block_invoke_21;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 compiledModelExistsMatchingHash:hashCopy withReply:v12];
}

- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke;
  v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v14[4] = a2;
  hashCopy = hash;
  v10 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___ANEDaemonConnection_purgeCompiledModelMatchingHash_withReply___block_invoke_22;
  v12[3] = &unk_1E79BA258;
  v13 = replyCopy;
  v11 = replyCopy;
  [v10 purgeCompiledModelMatchingHash:hashCopy withReply:v12];
}

@end
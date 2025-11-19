@interface _GCIPCRemoteProcess
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProcess:(id)a3;
- (_GCIPCRemoteProcess)init;
- (_GCIPCRemoteProcess)initWithConnection:(id)a3;
- (id)debugDescription;
- (void)addConnection:(id)a3;
- (void)populateBundleIdentifierForConnection:(id)a3;
@end

@implementation _GCIPCRemoteProcess

- (_GCIPCRemoteProcess)initWithConnection:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _GCIPCRemoteProcess;
  v5 = [(_GCIPCRemoteProcess *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *v5->_auditToken.val = v11;
    *&v5->_auditToken.val[4] = v12;
    v5->_auditSessionIdentifier = [v4 auditSessionIdentifier];
    v5->_processIdentifier = [v4 processIdentifier];
    v5->_effectiveUserIdentifier = [v4 effectiveUserIdentifier];
    v5->_effectiveGroupIdentifier = [v4 effectiveGroupIdentifier];
    v6 = objc_opt_new();
    connections = v5->_connections;
    v5->_connections = v6;

    v8 = objc_opt_new();
    connectionInvalidationRegistrations = v5->_connectionInvalidationRegistrations;
    v5->_connectionInvalidationRegistrations = v8;

    [(_GCIPCRemoteProcess *)v5 populateBundleIdentifierForConnection:v4];
  }

  return v5;
}

- (_GCIPCRemoteProcess)init
{
  [(_GCIPCRemoteProcess *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)populateBundleIdentifierForConnection:(id)a3
{
  [a3 processIdentifier];
  v6 = GCBundleWithPID();
  v4 = [v6 bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;
}

- (void)addConnection:(id)a3
{
  v5 = a3;
  v6 = [v5 process];

  if (v6 == self)
  {
    v8 = self;
    objc_sync_enter(v8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37___GCIPCRemoteProcess_addConnection___block_invoke;
    v15[3] = &unk_1E8419AF8;
    v15[4] = v8;
    v15[5] = &v16;
    v15[6] = v5;
    v15[7] = a2;
    v9 = [v5 addInvalidationHandler:v15];
    v10 = v9;
    if (v9)
    {
      v17[3] = v9;
      if (gc_isInternalBuild())
      {
        v14 = getGCLogger();
        [_GCIPCRemoteProcess addConnection:v14];
      }

      v11 = [(_GCIPCRemoteProcess *)v8 connections];
      v12 = [v11 arrayByAddingObject:v5];
      [(_GCIPCRemoteProcess *)v8 setConnections:v12];

      v13 = [(_GCIPCRemoteProcess *)v8 connectionInvalidationRegistrations];
      [v13 addObject:v10];
    }

    _Block_object_dispose(&v16, 8);
    objc_sync_exit(v8);
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"GCIPCProcess.m" lineNumber:67 description:{@"Connection %@ is not from process %@", v5, self}];
  }
}

- (BOOL)isEqualToProcess:(id)a3
{
  v4 = a3;
  [(_GCIPCRemoteProcess *)self auditToken];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v8 = v12 == v10 && v13 == *(&v10 + 1) && v14 == v11 && v15 == *(&v11 + 1);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_GCIPCRemoteProcess *)self isEqualToProcess:v4];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p pid: %i>", v5, self, -[_GCIPCRemoteProcess processIdentifier](self, "processIdentifier")];

  return v6;
}

- (void)addConnection:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_12(&dword_1D2CD5000, v2, v3, "%@ adding connection: %@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end
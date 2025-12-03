@interface CXServiceClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)clientCanAccessSandboxFileURL:(id)l;
- (BOOL)isConnected;
- (BOOL)isPermittedToUseBluetoothAccessories;
- (CXServiceClient)initWithConnection:(id)connection;
- (CXServiceClientDelegate)delegate;
- (id)description;
- (int)processIdentifier;
- (void)invalidate;
@end

@implementation CXServiceClient

- (CXServiceClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v7 = remoteProcess;
  if (remoteProcess)
  {
    cx_applicationIdentifier = [remoteProcess cx_applicationIdentifier];
    if ([cx_applicationIdentifier length])
    {
      cx_applicationRecord = [v7 cx_applicationRecord];
      if (cx_applicationRecord)
      {
        cx_capabilities = [v7 cx_capabilities];
        cx_backgroundModeOptions = [cx_applicationRecord cx_backgroundModeOptions];
        v12 = [cx_capabilities containsObject:@"private-provider-api"];
        if ((v12 & 1) != 0 || cx_backgroundModeOptions)
        {
          v24.receiver = self;
          v24.super_class = CXServiceClient;
          v14 = [(CXServiceClient *)&v24 init];
          v15 = v14;
          if (v14)
          {
            v14->_backgroundModeOptions = cx_backgroundModeOptions;
            bundleIdentifier = [cx_applicationRecord bundleIdentifier];
            bundleIdentifier = v15->_bundleIdentifier;
            v15->_bundleIdentifier = bundleIdentifier;

            v18 = [cx_applicationRecord URL];
            bundleURL = v15->_bundleURL;
            v15->_bundleURL = v18;

            objc_storeStrong(&v15->_connection, connection);
            objc_storeStrong(&v15->_identifier, cx_applicationIdentifier);
            localizedName = [cx_applicationRecord localizedName];
            v21 = [localizedName copy];
            localizedName = v15->_localizedName;
            v15->_localizedName = v21;

            v15->_permittedToUsePrivateAPI = v12;
          }

          self = v15;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)invalidate
{
  connection = [(CXServiceClient *)self connection];
  [connection invalidate];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  connection = [(CXServiceClient *)self connection];
  remoteProcess = [connection remoteProcess];
  auditToken = [remoteProcess auditToken];
  v6 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (BOOL)isConnected
{
  connection = [(CXServiceClient *)self connection];
  remoteTarget = [connection remoteTarget];
  v4 = remoteTarget != 0;

  return v4;
}

- (BOOL)isPermittedToUseBluetoothAccessories
{
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69D54D0], *MEMORY[0x1E695E4C0]);
  v4 = *MEMORY[0x1E69D5508];
  [(CXServiceClient *)self auditToken];
  LOBYTE(self) = TCCAccessCheckAuditToken() != 0;
  CFRelease(Mutable);
  return self;
}

- (int)processIdentifier
{
  connection = [(CXServiceClient *)self connection];
  remoteProcess = [connection remoteProcess];
  v4 = [remoteProcess pid];

  return v4;
}

- (BOOL)clientCanAccessSandboxFileURL:(id)l
{
  v37 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v34 = 0u;
  v35 = 0u;
  [(CXServiceClient *)self auditToken];
  if ([lCopy isFileURL])
  {
    v33 = 0;
    v5 = [lCopy checkResourceIsReachableAndReturnError:&v33];
    v6 = v33;
    if (v5)
    {
      if ([lCopy fileSystemRepresentation])
      {
        v7 = *MEMORY[0x1E69E9BD0];
        *buf = v34;
        *&buf[16] = v35;
        if (!sandbox_check_by_audit_token())
        {
          v30 = 1;
          goto LABEL_15;
        }

        v8 = CXDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *__error();
          v10 = __error();
          v11 = strerror(*v10);
          *buf = 67109378;
          *&buf[4] = v9;
          *&buf[8] = 2080;
          *&buf[10] = v11;
          _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Client sandbox does not have access to the given file! (Error %i: %s)", buf, 0x12u);
        }
      }

      else
      {
        v8 = CXDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(CXServiceClient *)lCopy clientCanAccessSandboxFileURL:v8, v24, v25, v26, v27, v28, v29];
        }
      }
    }

    else
    {
      v8 = CXDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CXServiceClient *)v6 clientCanAccessSandboxFileURL:v8, v18, v19, v20, v21, v22, v23];
      }
    }
  }

  else
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CXServiceClient *)lCopy clientCanAccessSandboxFileURL:v6, v12, v13, v14, v15, v16, v17];
    }
  }

  v30 = 0;
LABEL_15:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_identifier);
  identifier = [(CXServiceClient *)self identifier];
  [v3 appendFormat:@" %@=%@", v4, identifier];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_isConnected);
  [v3 appendFormat:@" %@=%d", v6, -[CXServiceClient isConnected](self, "isConnected")];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_processIdentifier);
  [v3 appendFormat:@" %@=%d", v7, -[CXServiceClient processIdentifier](self, "processIdentifier")];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isPermittedToUsePublicAPI);
  [v3 appendFormat:@" %@=%d", v8, -[CXServiceClient isPermittedToUsePublicAPI](self, "isPermittedToUsePublicAPI")];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_isPermittedToUsePrivateAPI);
  [v3 appendFormat:@" %@=%d", v9, -[CXServiceClient isPermittedToUsePrivateAPI](self, "isPermittedToUsePrivateAPI")];

  [v3 appendString:@">"];

  return v3;
}

- (CXServiceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clientCanAccessSandboxFileURL:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a2, a3, "URL is not a file system URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientCanAccessSandboxFileURL:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a2, a3, "URL resource is not reachable: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)clientCanAccessSandboxFileURL:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1B47F3000, a2, a3, "Could not get file system representation for URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end
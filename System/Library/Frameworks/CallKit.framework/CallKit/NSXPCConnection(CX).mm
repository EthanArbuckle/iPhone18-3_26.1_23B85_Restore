@interface NSXPCConnection(CX)
- (__CFString)cx_bundleIdentifier;
- (id)cx_applicationIdentifier;
- (id)cx_capabilities;
- (id)cx_developerTeamIdentifier;
- (id)cx_processName;
- (uint64_t)cx_clientSandboxCanAccessFileURL:()CX;
- (uint64_t)cx_isProcessOnDemandInstallCapable;
@end

@implementation NSXPCConnection(CX)

- (id)cx_applicationIdentifier
{
  v1 = [self valueForEntitlement:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (__CFString)cx_bundleIdentifier
{
  memset(&v5[1], 0, sizeof(audit_token_t));
  [self auditToken];
  v5[0] = v5[1];
  v1 = SecTaskCreateWithAuditToken(0, v5);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopySigningIdentifier(v1, 0);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)cx_developerTeamIdentifier
{
  v1 = [self valueForEntitlement:@"com.apple.developer.team-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cx_processName
{
  v5 = *MEMORY[0x1E69E9840];
  if (proc_name([self processIdentifier], &v4, 0x100u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)cx_isProcessOnDemandInstallCapable
{
  v1 = [self valueForEntitlement:@"com.apple.developer.on-demand-install-capable"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)cx_capabilities
{
  v2 = [MEMORY[0x1E695DFD8] set];
  v3 = [self valueForEntitlement:@"com.apple.callkit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

    v2 = v4;
  }

  return v2;
}

- (uint64_t)cx_clientSandboxCanAccessFileURL:()CX
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  [self auditToken];
  if ([v4 isFileURL])
  {
    v33 = 0;
    v5 = [v4 checkResourceIsReachableAndReturnError:&v33];
    v6 = v33;
    if (v5)
    {
      if ([v4 fileSystemRepresentation])
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
          [(CXServiceClient *)v4 clientCanAccessSandboxFileURL:v8, v24, v25, v26, v27, v28, v29];
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
      [(CXServiceClient *)v4 clientCanAccessSandboxFileURL:v6, v12, v13, v14, v15, v16, v17];
    }
  }

  v30 = 0;
LABEL_15:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

@end
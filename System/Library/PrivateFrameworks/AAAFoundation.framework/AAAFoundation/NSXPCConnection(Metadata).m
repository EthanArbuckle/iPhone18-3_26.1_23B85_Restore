@interface NSXPCConnection(Metadata)
- (__CFString)aaf_processName;
- (id)aaf_bundleID;
- (void)aaf_bundleID;
@end

@implementation NSXPCConnection(Metadata)

- (__CFString)aaf_processName
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 processIdentifier];
  if (proc_name(v1, buffer, 0x20u) >= 1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = buffer;
LABEL_3:
    v4 = [v2 stringWithUTF8String:v3];
    goto LABEL_5;
  }

  *v10 = 0xE00000001;
  v11 = 1;
  v12 = v1;
  v8 = 648;
  memset(v9, 0, 512);
  v5 = sysctl(v10, 4u, v9, &v8, 0, 0);
  v4 = 0;
  if (!v5)
  {
    if (BYTE3(v9[15]))
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = &v9[15] + 3;
      goto LABEL_3;
    }

    v4 = @"exited?";
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)aaf_bundleID
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 auditToken];
  v2 = SecTaskCreateWithAuditToken(0, &token);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopySigningIdentifier(v2, &error);
    v5 = v4;
    if (error)
    {
      v6 = _AAFLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412802;
        *&token.val[1] = a1;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v3;
        HIWORD(token.val[5]) = 2112;
        *&token.val[6] = error;
        _os_log_error_impl(&dword_1C8644000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to copy signing ID from task (%@) with error (%@)", &token, 0x20u);
      }

      CFRelease(error);
      if (!v5)
      {
        goto LABEL_15;
      }

      CFRelease(v5);
    }

    else
    {
      if (v4)
      {
LABEL_15:
        CFRelease(v3);
        goto LABEL_16;
      }

      v8 = _AAFLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(Metadata) *)a1 aaf_bundleID];
      }
    }

    v5 = 0;
    goto LABEL_15;
  }

  v7 = _AAFLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(NSXPCConnection(Metadata) *)a1 aaf_bundleID];
  }

  v5 = 0;
LABEL_16:
  if (![v5 length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v5 = v9;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)aaf_bundleID
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to allocate security task (using framework-provided identifier)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
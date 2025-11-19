@interface ASDBaseClient
- (BOOL)_clientHasEntitlement:(uint64_t)a1;
- (uint64_t)_clientHasASDEntitlement:(uint64_t)a1;
- (void)_call:(id)a3 run:(id)a4 error:(id)a5;
@end

@implementation ASDBaseClient

- (void)_call:(id)a3 run:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__ASDBaseClient__call_run_error___block_invoke;
  v12[3] = &unk_1E7CDB730;
  v9 = v8;
  v13 = v9;
  v10 = [a3 remoteObjectProxyWithErrorHandler:v12];
  if (v10)
  {
    v7[2](v7, v10);
  }

  else
  {
    v11 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 508, 0, 0, 0);
    (*(v9 + 2))(v9, v11);
  }
}

- (BOOL)_clientHasEntitlement:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = SecTaskCreateFromSelf(0);
    if (v4)
    {
      v5 = v4;
      error = 0;
      v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
      if (error && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v3;
        v21 = 2112;
        v22 = error;
        v12 = v11;
        _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ error: %@", buf, 0x20u);

        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if (v6)
      {
LABEL_6:
        TypeID = CFBooleanGetTypeID();
        v8 = TypeID == CFGetTypeID(v6) && CFBooleanGetValue(v6) != 0;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          *buf = 138412802;
          v18 = v9;
          v19 = 2112;
          v20 = v3;
          v21 = 1024;
          LODWORD(v22) = v8;
          v10 = v9;
          _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@]: We have the entitlement: %@ result: %d", buf, 0x1Cu);
        }

        CFRelease(v6);
        goto LABEL_17;
      }

      v8 = 0;
LABEL_17:
      CFRelease(v5);
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v3;
      v15 = v18;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@", buf, 0x16u);
    }
  }

  v8 = 0;
LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)_clientHasASDEntitlement:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = SecTaskCreateFromSelf(0);
    if (v4)
    {
      v5 = v4;
      error = 0;
      v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.appstored", &error);
      if (error && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v3;
        v21 = 2112;
        v22 = error;
        v12 = v11;
        _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ error: %@", buf, 0x20u);

        if (v6)
        {
          goto LABEL_6;
        }
      }

      else if (v6)
      {
LABEL_6:
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          v8 = [v6 containsObject:v3];
        }

        else
        {
          v8 = 0;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_opt_class();
          *buf = 138412802;
          v18 = v9;
          v19 = 2112;
          v20 = v3;
          v21 = 1024;
          LODWORD(v22) = v8;
          v10 = v9;
          _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@]: Results for entitlement: %@ result: %d", buf, 0x1Cu);
        }

        CFRelease(v6);
        goto LABEL_17;
      }

      v8 = 0;
LABEL_17:
      CFRelease(v5);
      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v3;
      v15 = v18;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@", buf, 0x16u);
    }
  }

  v8 = 0;
LABEL_18:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

@end
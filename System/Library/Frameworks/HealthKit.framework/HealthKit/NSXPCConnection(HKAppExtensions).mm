@interface NSXPCConnection(HKAppExtensions)
- (BOOL)hk_isAppExtension;
@end

@implementation NSXPCConnection(HKAppExtensions)

- (BOOL)hk_isAppExtension
{
  v17 = *MEMORY[0x1E69E9840];
  [self auditToken];
  v2 = [_HKXPCAuditToken signingIdentifierFromAuditToken:buf];
  if (v2)
  {
    v10 = 0;
    v3 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v2 error:&v10];
    v4 = v10;
    v5 = v4;
    if (v4)
    {
      if (([v4 hk_isErrorInDomain:*MEMORY[0x1E696A768] code:-10814] & 1) == 0)
      {
        _HKInitializeLogging();
        v6 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy = self;
          v13 = 2114;
          v14 = v2;
          v15 = 2114;
          v16 = v5;
          _os_log_error_impl(&dword_19197B000, v6, OS_LOG_TYPE_ERROR, "Failed to create bundle record for connection %{public}@ with bundleID %{public}@, error %{public}@", buf, 0x20u);
        }
      }
    }

    v7 = v3 != 0;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end
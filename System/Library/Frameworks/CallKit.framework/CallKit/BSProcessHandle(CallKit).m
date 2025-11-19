@interface BSProcessHandle(CallKit)
- (id)cx_applicationIdentifier;
- (id)cx_applicationRecord;
- (id)cx_capabilities;
- (void)cx_applicationRecord;
@end

@implementation BSProcessHandle(CallKit)

- (id)cx_applicationIdentifier
{
  v1 = [a1 valueForEntitlement:@"application-identifier"];
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

- (id)cx_applicationRecord
{
  v2 = [a1 bundleIdentifier];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E69635F8] cx_applicationRecordForBundleIdentifier:v2];
  }

  else
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BSProcessHandle(CallKit) *)a1 cx_applicationRecord];
    }

    v3 = 0;
  }

  return v3;
}

- (id)cx_capabilities
{
  v2 = [MEMORY[0x1E695DFD8] set];
  v3 = [a1 valueForEntitlement:@"com.apple.callkit"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

    v2 = v4;
  }

  return v2;
}

- (void)cx_applicationRecord
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not obtain bundle identifier from process handle %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
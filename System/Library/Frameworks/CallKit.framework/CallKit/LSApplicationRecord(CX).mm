@interface LSApplicationRecord(CX)
+ (id)cx_applicationRecordForBundleIdentifier:()CX;
+ (id)cx_applicationRecordForConnection:()CX;
- (BOOL)containsBackgroundModeOptions:()CX;
- (uint64_t)cx_backgroundModeOptions;
@end

@implementation LSApplicationRecord(CX)

+ (id)cx_applicationRecordForBundleIdentifier:()CX
{
  v3 = a3;
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = CXDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(CX) *)v3 cx_applicationRecordForBundleIdentifier:v5, v6];
    }
  }

  return v4;
}

+ (id)cx_applicationRecordForConnection:()CX
{
  v4 = a3;
  v5 = [v4 cx_bundleIdentifier];
  if ([v5 length])
  {
    v6 = [a1 cx_applicationRecordForBundleIdentifier:v5];
  }

  else
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(CX) *)v4 cx_applicationRecordForConnection:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (uint64_t)cx_backgroundModeOptions
{
  HasBackgroundMode = _cx_LSAppRecordHasBackgroundMode(a1, @"voip");
  if (_cx_LSAppRecordHasBackgroundMode(a1, @"push-to-talk"))
  {
    return HasBackgroundMode | 2;
  }

  else
  {
    return HasBackgroundMode;
  }
}

- (BOOL)containsBackgroundModeOptions:()CX
{
  v4 = [a1 cx_backgroundModeOptions];
  if (a3)
  {
    return (a3 & ~v4) == 0;
  }

  else
  {
    return v4 == 0;
  }
}

+ (void)cx_applicationRecordForBundleIdentifier:()CX .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B47F3000, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle identifier %@ failed with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)cx_applicationRecordForConnection:()CX .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not obtain bundle identifier from connection %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
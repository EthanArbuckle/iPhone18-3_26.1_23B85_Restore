@interface SOErrorHelper
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4;
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4 subcode:(int64_t)a5;
+ (id)deniedBundleIdentifier:(id)a3;
+ (id)doNotHandleBreakingRecursionWithCallerBundleIdentifier:(id)a3;
+ (id)errorNotSupported;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 moreInfo:(id)a5;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5;
+ (id)internalErrorWithMessage:(id)a3;
+ (id)invalidURLError:(id)a3;
+ (id)missingEntitlementError:(id)a3;
+ (id)parameterErrorWithMessage:(id)a3;
+ (void)raiseExceptionOnError:(id)a3;
@end

@implementation SOErrorHelper

+ (id)errorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696AA08];
  v15[0] = a5;
  v7 = MEMORY[0x1E695DF20];
  v8 = a5;
  v9 = a4;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [SOErrorHelper errorWithCode:a3 message:v9 moreInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"Subcode";
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  v9 = [v7 numberWithInteger:a4];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [SOErrorHelper errorWithCode:a3 message:v8 moreInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 message:(id)a4 moreInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A578]];
  }

  if (v8)
  {
    [v10 addEntriesFromDictionary:v8];
  }

  v11 = [SOErrorHelper errorWithCode:a3 userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)a3
{
  v3 = [SOErrorHelper silentInternalErrorWithMessage:a3];
  v4 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v3;
}

+ (id)parameterErrorWithMessage:(id)a3
{
  v3 = [SOErrorHelper errorWithCode:-9 message:a3];
  v4 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v3;
}

+ (id)missingEntitlementError:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", a3];
  v4 = [SOErrorHelper errorWithCode:-11 message:v3];

  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v4;
}

+ (id)invalidURLError:(id)a3
{
  v3 = a3;
  v4 = [SOErrorHelper errorWithCode:-9 message:@"not AppSSO URL"];
  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SOErrorHelper *)v3 invalidURLError:v5];
  }

  return v4;
}

+ (id)doNotHandleBreakingRecursionWithCallerBundleIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"breaking calling recursion for caller with bundleIdentifier: %@", a3];
  v4 = [SOErrorHelper errorWithCode:-5 message:v3];

  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v4;
}

+ (id)deniedBundleIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"denied caller with bundleIdentifier: %@", a3];
  v4 = [SOErrorHelper errorWithCode:-5 message:v3];

  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v4;
}

+ (id)errorNotSupported
{
  v2 = [SOErrorHelper internalErrorWithMessage:@"This call is not supported on iOS."];
  v3 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v2;
}

+ (void)raiseExceptionOnError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"com.apple.AppSSO.AuthorizationError"];

    if (v6 && [v4 code] == -9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v4}];
    }

    v7 = SO_LOG_SOErrorHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOErrorHelper raiseExceptionOnError:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unexpected error: %@", v4}];
  }
}

+ (BOOL)error:(id)a3 hasCode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"com.apple.AppSSO.AuthorizationError"])
  {
    v7 = [v5 code] == a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)error:(id)a3 hasCode:(int64_t)a4 subcode:(int64_t)a5
{
  v7 = a3;
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"Subcode"];

  v10 = [v7 domain];
  if ([v10 isEqualToString:@"com.apple.AppSSO.AuthorizationError"])
  {
    v11 = 0;
    if ([v7 code] == a4 && v9)
    {
      v11 = [v9 integerValue] == a5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)internalErrorWithMessage:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)invalidURLError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 absoluteString];
  v5 = 141558275;
  v6 = 1752392040;
  v7 = 2117;
  v8 = v3;
  _os_log_error_impl(&dword_1CA238000, a2, OS_LOG_TYPE_ERROR, "not AppSSO URL: %{sensitive, mask.hash}@", &v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)raiseExceptionOnError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1CA238000, v0, v1, "Raising exception due to error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
@interface SOErrorHelper
+ (BOOL)error:(id)error hasCode:(int64_t)code;
+ (BOOL)error:(id)error hasCode:(int64_t)code subcode:(int64_t)subcode;
+ (id)deniedBundleIdentifier:(id)identifier;
+ (id)doNotHandleBreakingRecursionWithCallerBundleIdentifier:(id)identifier;
+ (id)errorNotSupported;
+ (id)errorWithCode:(int64_t)code message:(id)message moreInfo:(id)info;
+ (id)errorWithCode:(int64_t)code message:(id)message suberror:(id)suberror;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode message:(id)message;
+ (id)internalErrorWithMessage:(id)message;
+ (id)invalidURLError:(id)error;
+ (id)missingEntitlementError:(id)error;
+ (id)parameterErrorWithMessage:(id)message;
+ (void)raiseExceptionOnError:(id)error;
@end

@implementation SOErrorHelper

+ (id)errorWithCode:(int64_t)code message:(id)message suberror:(id)suberror
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696AA08];
  v15[0] = suberror;
  v7 = MEMORY[0x1E695DF20];
  suberrorCopy = suberror;
  messageCopy = message;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [SOErrorHelper errorWithCode:code message:messageCopy moreInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode message:(id)message
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"Subcode";
  v7 = MEMORY[0x1E696AD98];
  messageCopy = message;
  v9 = [v7 numberWithInteger:subcode];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [SOErrorHelper errorWithCode:code message:messageCopy moreInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)code message:(id)message moreInfo:(id)info
{
  messageCopy = message;
  infoCopy = info;
  v9 = objc_opt_new();
  v10 = v9;
  if (messageCopy)
  {
    [v9 setObject:messageCopy forKey:*MEMORY[0x1E696A578]];
  }

  if (infoCopy)
  {
    [v10 addEntriesFromDictionary:infoCopy];
  }

  v11 = [SOErrorHelper errorWithCode:code userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)message
{
  v3 = [SOErrorHelper silentInternalErrorWithMessage:message];
  v4 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v3;
}

+ (id)parameterErrorWithMessage:(id)message
{
  v3 = [SOErrorHelper errorWithCode:-9 message:message];
  v4 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v3;
}

+ (id)missingEntitlementError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", error];
  v4 = [SOErrorHelper errorWithCode:-11 message:error];

  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v4;
}

+ (id)invalidURLError:(id)error
{
  errorCopy = error;
  v4 = [SOErrorHelper errorWithCode:-9 message:@"not AppSSO URL"];
  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SOErrorHelper *)errorCopy invalidURLError:v5];
  }

  return v4;
}

+ (id)doNotHandleBreakingRecursionWithCallerBundleIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"breaking calling recursion for caller with bundleIdentifier: %@", identifier];
  v4 = [SOErrorHelper errorWithCode:-5 message:identifier];

  v5 = SO_LOG_SOErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[SOErrorHelper internalErrorWithMessage:];
  }

  return v4;
}

+ (id)deniedBundleIdentifier:(id)identifier
{
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"denied caller with bundleIdentifier: %@", identifier];
  v4 = [SOErrorHelper errorWithCode:-5 message:identifier];

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

+ (void)raiseExceptionOnError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"com.apple.AppSSO.AuthorizationError"];

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

+ (BOOL)error:(id)error hasCode:(int64_t)code
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.AppSSO.AuthorizationError"])
  {
    v7 = [errorCopy code] == code;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)error:(id)error hasCode:(int64_t)code subcode:(int64_t)subcode
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:@"Subcode"];

  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.AppSSO.AuthorizationError"])
  {
    v11 = 0;
    if ([errorCopy code] == code && v9)
    {
      v11 = [v9 integerValue] == subcode;
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
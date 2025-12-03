@interface LAErrorHelper
+ (BOOL)error:(id)error hasCode:(int64_t)code;
+ (BOOL)error:(id)error hasCode:(int64_t)code subcode:(int64_t)subcode;
+ (BOOL)error:(id)error hasCodeFromArray:(id)array;
+ (BOOL)storageError:(id)error hasCode:(int64_t)code;
+ (id)_errorNotSupportedAction:(id)action on:(id)on;
+ (id)errorWithCode:(int64_t)code message:(id)message moreInfo:(id)info;
+ (id)errorWithCode:(int64_t)code message:(id)message suberror:(id)suberror;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode message:(id)message;
+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode message:(id)message suberror:(id)suberror;
+ (id)errorWithCode:(int64_t)code withUnderlyingErrors:(id)errors;
+ (id)internalErrorWithMessage:(id)message suberror:(id)suberror;
+ (id)missingEntitlementError:(id)error;
+ (id)parameterErrorForMissingOrInvalidObject:(id)object name:(const char *)name;
+ (id)parameterErrorWithMessage:(id)message;
+ (id)redactInternalError:(id)error;
+ (id)storageErrorWithCode:(int64_t)code message:(id)message suberror:(id)suberror;
+ (id)xctErrorWithMessage:(id)message suberror:(id)suberror;
+ (void)raiseExceptionOnError:(id)error;
@end

@implementation LAErrorHelper

+ (id)errorWithCode:(int64_t)code message:(id)message suberror:(id)suberror
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (suberror)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = suberror;
    v7 = MEMORY[0x1E695DF20];
    suberrorCopy = suberror;
    messageCopy = message;
    v10 = [v7 dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [LAErrorHelper errorWithCode:code message:messageCopy moreInfo:v10];
  }

  else
  {
    v12 = 0;
    messageCopy2 = message;
    v11 = [LAErrorHelper errorWithCode:code message:messageCopy2 moreInfo:0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)code subcode:(int64_t)subcode message:(id)message suberror:(id)suberror
{
  suberrorCopy = suberror;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__LAErrorHelper_errorWithCode_subcode_message_suberror___block_invoke;
  v18 = &unk_1E86B5D40;
  v19 = suberrorCopy;
  subcodeCopy = subcode;
  v10 = suberrorCopy;
  messageCopy = message;
  v12 = __56__LAErrorHelper_errorWithCode_subcode_message_suberror___block_invoke(&v15);
  v13 = [LAErrorHelper errorWithCode:code message:messageCopy moreInfo:v12, v15, v16, v17, v18];

  return v13;
}

id __56__LAErrorHelper_errorWithCode_subcode_message_suberror___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"Subcode"];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  return v2;
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
  v11 = [LAErrorHelper errorWithCode:code message:messageCopy moreInfo:v10];

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
    [v9 setObject:messageCopy forKey:*MEMORY[0x1E696A278]];
  }

  v11 = [LAErrorHelper localizedStringForError:code];
  if (v11)
  {
    [v10 setObject:v11 forKey:*MEMORY[0x1E696A578]];
  }

  if (infoCopy)
  {
    [v10 addEntriesFromDictionary:infoCopy];
  }

  v12 = [LAErrorHelper errorWithCode:code userInfo:v10];

  return v12;
}

+ (id)errorWithCode:(int64_t)code withUnderlyingErrors:(id)errors
{
  v27 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = errorsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{v12, v18}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    if ([v6 count] == 1)
    {
      v24 = *MEMORY[0x1E696AA08];
      v13 = [v6 objectAtIndexedSubscript:0];
      v25 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v15 = [LAErrorHelper errorWithCode:code userInfo:v14];
    }

    else
    {
      if ([v6 count] <= 1)
      {
        +[LAErrorHelper errorWithCode:withUnderlyingErrors:];
      }

      v22 = *MEMORY[0x1E696A750];
      v23 = v6;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [LAErrorHelper errorWithCode:code userInfo:v13];
    }
  }

  else
  {
    v15 = [LAErrorHelper errorWithCode:code];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)storageErrorWithCode:(int64_t)code message:(id)message suberror:(id)suberror
{
  messageCopy = message;
  suberrorCopy = suberror;
  v9 = objc_opt_new();
  v10 = v9;
  if (messageCopy)
  {
    [v9 setObject:messageCopy forKey:*MEMORY[0x1E696A278]];
  }

  if (suberrorCopy)
  {
    [v10 setObject:suberrorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:LAStorageErrorDomain code:code userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)message suberror:(id)suberror
{
  v4 = [LAErrorHelper errorWithCode:-1000 message:message suberror:suberror];
  v5 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v4;
}

+ (id)parameterErrorWithMessage:(id)message
{
  v3 = [LAErrorHelper errorWithCode:-1001 message:message];
  v4 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v3;
}

+ (id)parameterErrorForMissingOrInvalidObject:(id)object name:(const char *)name
{
  v5 = MEMORY[0x1E696AEC0];
  if (object)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    name = [v5 stringWithFormat:@"Invalid %s type: %@.", name, v7];
  }

  else
  {
    name = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing %s.", name];
  }

  v9 = [LAErrorHelper parameterErrorWithMessage:name];

  return v9;
}

+ (id)missingEntitlementError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", error];
  v4 = [LAErrorHelper errorWithCode:-1007 message:error];
  v5 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v4;
}

+ (id)xctErrorWithMessage:(id)message suberror:(id)suberror
{
  messageCopy = message;
  suberrorCopy = suberror;
  v7 = objc_opt_new();
  v8 = v7;
  if (messageCopy)
  {
    [v7 setObject:messageCopy forKey:*MEMORY[0x1E696A578]];
  }

  if (suberrorCopy)
  {
    [v8 setObject:suberrorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication" code:-1000 userInfo:v8];

  return v9;
}

+ (id)_errorNotSupportedAction:(id)action on:(id)on
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported on %@.", action, on];
  v5 = [LAErrorHelper errorWithCode:-1020 message:v4];
  v6 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v5;
}

+ (void)raiseExceptionOnError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"com.apple.LocalAuthentication"];

    if (v6 && [v4 code] == -1001)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v4}];
    }

    v7 = LA_LOG_LAErrorHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[LAErrorHelper raiseExceptionOnError:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unexpected error: %@", v4}];
  }
}

+ (BOOL)error:(id)error hasCode:(int64_t)code
{
  errorCopy = error;
  if ([errorCopy code] == code)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:@"com.apple.LocalAuthentication"];
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

  v10 = 0;
  if ([errorCopy code] == code && v9)
  {
    if ([v9 integerValue] == subcode)
    {
      domain = [errorCopy domain];
      v10 = [domain isEqualToString:@"com.apple.LocalAuthentication"];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)error:(id)error hasCodeFromArray:(id)array
{
  errorCopy = error;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:array];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  if ([v6 containsObject:v7])
  {
    domain = [errorCopy domain];
    v9 = [domain isEqualToString:@"com.apple.LocalAuthentication"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)storageError:(id)error hasCode:(int64_t)code
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:LAStorageErrorDomain])
  {
    v7 = [errorCopy code] == code;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)redactInternalError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(LAErrorRedactor);
  v5 = [(LAErrorRedactor *)v4 redactError:errorCopy];

  return v5;
}

+ (void)internalErrorWithMessage:suberror:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF403000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)raiseExceptionOnError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF403000, v0, v1, "Raising exception due to error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
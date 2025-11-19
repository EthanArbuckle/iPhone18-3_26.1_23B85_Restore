@interface LAErrorHelper
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4;
+ (BOOL)error:(id)a3 hasCode:(int64_t)a4 subcode:(int64_t)a5;
+ (BOOL)error:(id)a3 hasCodeFromArray:(id)a4;
+ (BOOL)storageError:(id)a3 hasCode:(int64_t)a4;
+ (id)_errorNotSupportedAction:(id)a3 on:(id)a4;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 moreInfo:(id)a5;
+ (id)errorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5;
+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5 suberror:(id)a6;
+ (id)errorWithCode:(int64_t)a3 withUnderlyingErrors:(id)a4;
+ (id)internalErrorWithMessage:(id)a3 suberror:(id)a4;
+ (id)missingEntitlementError:(id)a3;
+ (id)parameterErrorForMissingOrInvalidObject:(id)a3 name:(const char *)a4;
+ (id)parameterErrorWithMessage:(id)a3;
+ (id)redactInternalError:(id)a3;
+ (id)storageErrorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5;
+ (id)xctErrorWithMessage:(id)a3 suberror:(id)a4;
+ (void)raiseExceptionOnError:(id)a3;
@end

@implementation LAErrorHelper

+ (id)errorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = a5;
    v7 = MEMORY[0x1E695DF20];
    v8 = a5;
    v9 = a4;
    v10 = [v7 dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [LAErrorHelper errorWithCode:a3 message:v9 moreInfo:v10];
  }

  else
  {
    v12 = 0;
    v13 = a4;
    v11 = [LAErrorHelper errorWithCode:a3 message:v13 moreInfo:0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5 suberror:(id)a6
{
  v9 = a6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__LAErrorHelper_errorWithCode_subcode_message_suberror___block_invoke;
  v18 = &unk_1E86B5D40;
  v19 = v9;
  v20 = a4;
  v10 = v9;
  v11 = a5;
  v12 = __56__LAErrorHelper_errorWithCode_subcode_message_suberror___block_invoke(&v15);
  v13 = [LAErrorHelper errorWithCode:a3 message:v11 moreInfo:v12, v15, v16, v17, v18];

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

+ (id)errorWithCode:(int64_t)a3 subcode:(int64_t)a4 message:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"Subcode";
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  v9 = [v7 numberWithInteger:a4];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [LAErrorHelper errorWithCode:a3 message:v8 moreInfo:v10];

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
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A278]];
  }

  v11 = [LAErrorHelper localizedStringForError:a3];
  if (v11)
  {
    [v10 setObject:v11 forKey:*MEMORY[0x1E696A578]];
  }

  if (v8)
  {
    [v10 addEntriesFromDictionary:v8];
  }

  v12 = [LAErrorHelper errorWithCode:a3 userInfo:v10];

  return v12;
}

+ (id)errorWithCode:(int64_t)a3 withUnderlyingErrors:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695E0F0] mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
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
      v15 = [LAErrorHelper errorWithCode:a3 userInfo:v14];
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
      v15 = [LAErrorHelper errorWithCode:a3 userInfo:v13];
    }
  }

  else
  {
    v15 = [LAErrorHelper errorWithCode:a3];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)storageErrorWithCode:(int64_t)a3 message:(id)a4 suberror:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A278]];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:*MEMORY[0x1E696AA08]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:LAStorageErrorDomain code:a3 userInfo:v10];

  return v11;
}

+ (id)internalErrorWithMessage:(id)a3 suberror:(id)a4
{
  v4 = [LAErrorHelper errorWithCode:-1000 message:a3 suberror:a4];
  v5 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v4;
}

+ (id)parameterErrorWithMessage:(id)a3
{
  v3 = [LAErrorHelper errorWithCode:-1001 message:a3];
  v4 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v3;
}

+ (id)parameterErrorForMissingOrInvalidObject:(id)a3 name:(const char *)a4
{
  v5 = MEMORY[0x1E696AEC0];
  if (a3)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"Invalid %s type: %@.", a4, v7];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing %s.", a4];
  }

  v9 = [LAErrorHelper parameterErrorWithMessage:v8];

  return v9;
}

+ (id)missingEntitlementError:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Caller is missing the required '%@' entitlement.", a3];
  v4 = [LAErrorHelper errorWithCode:-1007 message:v3];
  v5 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v4;
}

+ (id)xctErrorWithMessage:(id)a3 suberror:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7;
  if (v5)
  {
    [v7 setObject:v5 forKey:*MEMORY[0x1E696A578]];
  }

  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x1E696AA08]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.LocalAuthentication" code:-1000 userInfo:v8];

  return v9;
}

+ (id)_errorNotSupportedAction:(id)a3 on:(id)a4
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not supported on %@.", a3, a4];
  v5 = [LAErrorHelper errorWithCode:-1020 message:v4];
  v6 = LA_LOG_LAErrorHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[LAErrorHelper internalErrorWithMessage:suberror:];
  }

  return v5;
}

+ (void)raiseExceptionOnError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"com.apple.LocalAuthentication"];

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

+ (BOOL)error:(id)a3 hasCode:(int64_t)a4
{
  v5 = a3;
  if ([v5 code] == a4)
  {
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:@"com.apple.LocalAuthentication"];
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

  v10 = 0;
  if ([v7 code] == a4 && v9)
  {
    if ([v9 integerValue] == a5)
    {
      v11 = [v7 domain];
      v10 = [v11 isEqualToString:@"com.apple.LocalAuthentication"];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (BOOL)error:(id)a3 hasCodeFromArray:(id)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a4];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  if ([v6 containsObject:v7])
  {
    v8 = [v5 domain];
    v9 = [v8 isEqualToString:@"com.apple.LocalAuthentication"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)storageError:(id)a3 hasCode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:LAStorageErrorDomain])
  {
    v7 = [v5 code] == a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)redactInternalError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LAErrorRedactor);
  v5 = [(LAErrorRedactor *)v4 redactError:v3];

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
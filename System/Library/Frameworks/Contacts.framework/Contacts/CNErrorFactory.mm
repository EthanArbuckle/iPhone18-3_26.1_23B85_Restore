@interface CNErrorFactory
+ (id)_localizedDescriptionForCode:(int64_t)code;
+ (id)_localizedReasonForCode:(int64_t)code;
+ (id)errorByAddingUserInfoEntries:(id)entries toError:(id)error;
+ (id)errorByPrependingKeyPath:(id)path toKeyPathsInError:(id)error;
+ (id)errorForiOSABError:(__CFError *)error;
+ (id)errorObject:(id)object doesNotImplementSelector:(SEL)selector;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
+ (id)genericiOSABError;
+ (id)os_log;
+ (id)validationErrorByAggregatingValidationErrors:(id)errors;
+ (int64_t)CNErrorCodeForABError:(__CFError *)error;
@end

@implementation CNErrorFactory

+ (id)os_log
{
  if (os_log_cn_once_token_0_7 != -1)
  {
    +[CNErrorFactory(iOSAB) os_log];
  }

  v3 = os_log_cn_once_object_0_7;

  return v3;
}

uint64_t __31__CNErrorFactory_iOSAB__os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNErrorFactory");
  v1 = os_log_cn_once_object_0_7;
  os_log_cn_once_object_0_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)genericiOSABError
{
  v20 = *MEMORY[0x1E69E9840];
  os_log = [self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    +[(CNErrorFactory(iOSAB) *)os_log];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = [callStackSymbols _cn_balancedSlicesWithMaximumCount:5];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = os_log_create("com.apple.contacts", "data-access-error");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v18 = v9;
          _os_log_error_impl(&dword_1954A0000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:2 userInfo:0];

  return v11;
}

+ (id)errorForiOSABError:(__CFError *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!error)
  {
    errorCopy2 = [self genericiOSABError];
    goto LABEL_5;
  }

  if ([@"CNErrorDomain" isEqualToString:CFErrorGetDomain(error)])
  {
    errorCopy2 = error;
LABEL_5:
    v6 = errorCopy2;
    goto LABEL_7;
  }

  v7 = [self CNErrorCodeForABError:error];
  v28 = *MEMORY[0x1E696AA08];
  v29[0] = error;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v6 = [self errorWithCode:v7 userInfo:v8];

LABEL_7:
  os_log = [self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
  {
    [(CNErrorFactory(iOSAB) *)&errorCopy errorForiOSABError:v6, os_log];
  }

  v19 = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v11 = [callStackSymbols _cn_balancedSlicesWithMaximumCount:5];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = os_log_create("com.apple.contacts", "data-access-error");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v16;
          _os_log_error_impl(&dword_1954A0000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v13);
  }

  return v19;
}

+ (int64_t)CNErrorCodeForABError:(__CFError *)error
{
  if (CNErrorCodeForABError__cn_once_token_5 != -1)
  {
    +[CNErrorFactory(iOSAB) CNErrorCodeForABError:];
  }

  v4 = CNErrorCodeForABError__cn_once_object_5;
  v5 = [v4 objectForKeyedSubscript:CFErrorGetDomain(error)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      integerValue = 2;
      goto LABEL_15;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLong:CFErrorGetCode(error)];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 2;
    }
  }

  if (integerValue == 500)
  {
    v9 = CFErrorCopyUserInfo(error);
    v10 = [(__CFDictionary *)v9 objectForKey:*MEMORY[0x1E698A0A8]];
    if (([v10 isEqualToString:*MEMORY[0x1E698A0B0]] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E698A0B8]))
    {

      integerValue = 206;
    }

    else
    {
      v12 = [v10 isEqualToString:*MEMORY[0x1E698A0C0]];

      if (v12)
      {
        integerValue = 207;
      }

      else
      {
        integerValue = 500;
      }
    }
  }

LABEL_15:

  return integerValue;
}

void __47__CNErrorFactory_iOSAB__CNErrorCodeForABError___block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698A0A0];
  v8[0] = &unk_1F09870C0;
  v8[1] = &unk_1F09870F0;
  v9[0] = &unk_1F09870D8;
  v9[1] = &unk_1F0987108;
  v10[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v11[0] = v1;
  v10[1] = *MEMORY[0x1E698A200];
  v6[0] = &unk_1F09870F0;
  v6[1] = &unk_1F0987138;
  v7[0] = &unk_1F0987120;
  v7[1] = &unk_1F0987120;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v10[2] = *MEMORY[0x1E698A660];
  v11[1] = v2;
  v11[2] = &unk_1F0987120;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v4 = [v3 copy];
  v5 = CNErrorCodeForABError__cn_once_object_5;
  CNErrorCodeForABError__cn_once_object_5 = v4;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [self _localizedReasonForCode:code];
  v8 = [self _localizedDescriptionForCode:code];
  v9 = v8;
  if (infoCopy || v8 || v7)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = dictionary;
    if (infoCopy)
    {
      [dictionary addEntriesFromDictionary:infoCopy];
    }

    if (v9)
    {
      [v10 setObject:v9 forKey:*MEMORY[0x1E696A578]];
    }

    if (v7)
    {
      [v10 setObject:v7 forKey:*MEMORY[0x1E696A588]];
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:code userInfo:v10];

  return v12;
}

+ (id)_localizedDescriptionForCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  stringValue = [v4 stringValue];
  v6 = [stringValue stringByAppendingString:@"_DESCRIPTION"];

  v7 = MEMORY[0x1E6996750];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  v9 = [v7 localizedStringForString:v6 bundle:v8 table:@"Errors" returningNilIfNotFound:1];

  return v9;
}

+ (id)_localizedReasonForCode:(int64_t)code
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  stringValue = [v4 stringValue];
  v6 = [stringValue stringByAppendingString:@"_REASON"];

  v7 = MEMORY[0x1E6996750];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:self];
  v9 = [v7 localizedStringForString:v6 bundle:v8 table:@"Errors" returningNilIfNotFound:1];

  return v9;
}

+ (id)errorByPrependingKeyPath:(id)path toKeyPathsInError:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  errorCopy = error;
  if (errorCopy)
  {
    if ([pathCopy length])
    {
      v26 = errorCopy;
      userInfo = [errorCopy userInfo];
      v8 = [userInfo mutableCopy];

      array = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v8;
      v10 = [v8 objectForKeyedSubscript:?];
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v31[0] = pathCopy;
            v31[1] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
            v17 = [v16 componentsJoinedByString:@"."];
            [array addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v12);
      }

      if ([array count])
      {
        v18 = [array copy];
        [v25 setObject:v18 forKeyedSubscript:@"CNKeyPaths"];
      }

      v19 = MEMORY[0x1E696ABC0];
      errorCopy = v26;
      domain = [v26 domain];
      code = [v26 code];
      v22 = [v25 copy];
      v23 = [v19 errorWithDomain:domain code:code userInfo:v22];
    }

    else
    {
      v23 = errorCopy;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)errorByAddingUserInfoEntries:(id)entries toError:(id)error
{
  errorCopy = error;
  entriesCopy = entries;
  userInfo = [errorCopy userInfo];
  v8 = [userInfo mutableCopy];

  [v8 addEntriesFromDictionary:entriesCopy];
  v9 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v12 = [v8 copy];
  v13 = [v9 errorWithDomain:domain code:code userInfo:v12];

  return v13;
}

+ (id)errorObject:(id)object doesNotImplementSelector:(SEL)selector
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A578];
  v11[0] = @"No implementation";
  v5 = *MEMORY[0x1E696A588];
  v10[0] = v4;
  v10[1] = v5;
  v6 = CNFullMethodName();
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:1002 userInfo:v7];

  return v8;
}

+ (id)validationErrorByAggregatingValidationErrors:(id)errors
{
  v37 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([errorsCopy count] == 1)
  {
    lastObject = [errorsCopy lastObject];
  }

  else
  {
    v26 = objc_opt_new();
    v27 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = errorsCopy;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          domain = [v10 domain];
          v13 = [v11 stringWithFormat:@"%@:%ld", domain, objc_msgSend(v10, "code")];
          [v27 addObject:v13];

          userInfo = [v10 userInfo];
          v15 = [userInfo objectForKeyedSubscript:@"CNInvalidRecords"];
          if (v15)
          {
            [v26 addObjectsFromArray:v15];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v7);
    }

    v34 = @"CNValidationErrors";
    v16 = [v5 copy];
    v35 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v18 = [v17 mutableCopy];

    if ([v27 count] < 2)
    {
      lastObject2 = [v5 lastObject];
      code = [lastObject2 code];
      v32 = @"CNInvalidRecords";
      array = [v26 array];
      v33 = array;
      v19 = v26;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      lastObject = [CNErrorFactory errorWithCode:code userInfo:v24];
    }

    else
    {
      v19 = v26;
      if ([v26 count])
      {
        array2 = [v26 array];
        [v18 setObject:array2 forKey:@"CNInvalidRecords"];
      }

      lastObject = [CNErrorFactory errorWithCode:300 userInfo:v18];
    }
  }

  return lastObject;
}

@end
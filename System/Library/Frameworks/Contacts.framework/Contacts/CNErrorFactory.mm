@interface CNErrorFactory
+ (id)_localizedDescriptionForCode:(int64_t)a3;
+ (id)_localizedReasonForCode:(int64_t)a3;
+ (id)errorByAddingUserInfoEntries:(id)a3 toError:(id)a4;
+ (id)errorByPrependingKeyPath:(id)a3 toKeyPathsInError:(id)a4;
+ (id)errorForiOSABError:(__CFError *)a3;
+ (id)errorObject:(id)a3 doesNotImplementSelector:(SEL)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
+ (id)genericiOSABError;
+ (id)os_log;
+ (id)validationErrorByAggregatingValidationErrors:(id)a3;
+ (int64_t)CNErrorCodeForABError:(__CFError *)a3;
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
  v2 = [a1 os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    +[(CNErrorFactory(iOSAB) *)v2];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = [v3 _cn_balancedSlicesWithMaximumCount:5];

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

+ (id)errorForiOSABError:(__CFError *)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v24 = a3;
  if (!a3)
  {
    v5 = [a1 genericiOSABError];
    goto LABEL_5;
  }

  if ([@"CNErrorDomain" isEqualToString:CFErrorGetDomain(a3)])
  {
    v5 = a3;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v7 = [a1 CNErrorCodeForABError:a3];
  v28 = *MEMORY[0x1E696AA08];
  v29[0] = a3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v6 = [a1 errorWithCode:v7 userInfo:v8];

LABEL_7:
  v9 = [a1 os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CNErrorFactory(iOSAB) *)&v24 errorForiOSABError:v6, v9];
  }

  v19 = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [MEMORY[0x1E696AF00] callStackSymbols];
  v11 = [v10 _cn_balancedSlicesWithMaximumCount:5];

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

+ (int64_t)CNErrorCodeForABError:(__CFError *)a3
{
  if (CNErrorCodeForABError__cn_once_token_5 != -1)
  {
    +[CNErrorFactory(iOSAB) CNErrorCodeForABError:];
  }

  v4 = CNErrorCodeForABError__cn_once_object_5;
  v5 = [v4 objectForKeyedSubscript:CFErrorGetDomain(a3)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 integerValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 2;
      goto LABEL_15;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLong:CFErrorGetCode(a3)];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      v6 = [v8 integerValue];
    }

    else
    {
      v6 = 2;
    }
  }

  if (v6 == 500)
  {
    v9 = CFErrorCopyUserInfo(a3);
    v10 = [(__CFDictionary *)v9 objectForKey:*MEMORY[0x1E698A0A8]];
    if (([v10 isEqualToString:*MEMORY[0x1E698A0B0]] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E698A0B8]))
    {

      v6 = 206;
    }

    else
    {
      v12 = [v10 isEqualToString:*MEMORY[0x1E698A0C0]];

      if (v12)
      {
        v6 = 207;
      }

      else
      {
        v6 = 500;
      }
    }
  }

LABEL_15:

  return v6;
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

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [a1 _localizedReasonForCode:a3];
  v8 = [a1 _localizedDescriptionForCode:a3];
  v9 = v8;
  if (v6 || v8 || v7)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v10 = v11;
    if (v6)
    {
      [v11 addEntriesFromDictionary:v6];
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

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNErrorDomain" code:a3 userInfo:v10];

  return v12;
}

+ (id)_localizedDescriptionForCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v4 stringValue];
  v6 = [v5 stringByAppendingString:@"_DESCRIPTION"];

  v7 = MEMORY[0x1E6996750];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v9 = [v7 localizedStringForString:v6 bundle:v8 table:@"Errors" returningNilIfNotFound:1];

  return v9;
}

+ (id)_localizedReasonForCode:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v4 stringValue];
  v6 = [v5 stringByAppendingString:@"_REASON"];

  v7 = MEMORY[0x1E6996750];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v9 = [v7 localizedStringForString:v6 bundle:v8 table:@"Errors" returningNilIfNotFound:1];

  return v9;
}

+ (id)errorByPrependingKeyPath:(id)a3 toKeyPathsInError:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v5 length])
    {
      v26 = v6;
      v7 = [v6 userInfo];
      v8 = [v7 mutableCopy];

      v9 = [MEMORY[0x1E695DF70] array];
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
            v31[0] = v5;
            v31[1] = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
            v17 = [v16 componentsJoinedByString:@"."];
            [v9 addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v12);
      }

      if ([v9 count])
      {
        v18 = [v9 copy];
        [v25 setObject:v18 forKeyedSubscript:@"CNKeyPaths"];
      }

      v19 = MEMORY[0x1E696ABC0];
      v6 = v26;
      v20 = [v26 domain];
      v21 = [v26 code];
      v22 = [v25 copy];
      v23 = [v19 errorWithDomain:v20 code:v21 userInfo:v22];
    }

    else
    {
      v23 = v6;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)errorByAddingUserInfoEntries:(id)a3 toError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 userInfo];
  v8 = [v7 mutableCopy];

  [v8 addEntriesFromDictionary:v6];
  v9 = MEMORY[0x1E696ABC0];
  v10 = [v5 domain];
  v11 = [v5 code];

  v12 = [v8 copy];
  v13 = [v9 errorWithDomain:v10 code:v11 userInfo:v12];

  return v13;
}

+ (id)errorObject:(id)a3 doesNotImplementSelector:(SEL)a4
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

+ (id)validationErrorByAggregatingValidationErrors:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 lastObject];
  }

  else
  {
    v26 = objc_opt_new();
    v27 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v3;
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
          v12 = [v10 domain];
          v13 = [v11 stringWithFormat:@"%@:%ld", v12, objc_msgSend(v10, "code")];
          [v27 addObject:v13];

          v14 = [v10 userInfo];
          v15 = [v14 objectForKeyedSubscript:@"CNInvalidRecords"];
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
      v21 = [v5 lastObject];
      v22 = [v21 code];
      v32 = @"CNInvalidRecords";
      v23 = [v26 array];
      v33 = v23;
      v19 = v26;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v4 = [CNErrorFactory errorWithCode:v22 userInfo:v24];
    }

    else
    {
      v19 = v26;
      if ([v26 count])
      {
        v20 = [v26 array];
        [v18 setObject:v20 forKey:@"CNInvalidRecords"];
      }

      v4 = [CNErrorFactory errorWithCode:300 userInfo:v18];
    }
  }

  return v4;
}

@end
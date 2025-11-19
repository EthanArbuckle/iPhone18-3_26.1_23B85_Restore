@interface ASDCoding
+ (BOOL)securelyEncodeObject:(id)a3 forKey:(id)a4 withCoder:(id)a5 error:(id *)a6;
+ (id)_findNonSecureClassesFromObject:(uint64_t)a1;
+ (id)createDataByEncodingError:(id)a3;
+ (id)createErrorByDecodingData:(id)a3;
@end

@implementation ASDCoding

+ (id)createDataByEncodingError:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)createErrorByDecodingData:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)securelyEncodeObject:(id)a3 forKey:(id)a4 withCoder:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(ASDCoding *)a1 _findNonSecureClassesFromObject:v10];
  if ([v13 count])
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v13 componentsJoinedByString:{@", "}];
    v16 = [v14 stringWithFormat:@"Attempted to encode classes that don't conform to NSSecureCoding: '%@' with key '%@'", v15, v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v16;
      v21 = v23;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@", buf, 0x16u);
    }

    v17 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 507, @"Error encoding object", v16, 0);

    if (a6 && v17)
    {
      v18 = v17;
      *a6 = v17;
    }
  }

  else
  {
    [v12 encodeObject:v10 forKey:v11];
    v17 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17 == 0;
}

+ (id)_findNonSecureClassesFromObject:(uint64_t)a1
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v5 = MEMORY[0x1E695E0F0];
    goto LABEL_24;
  }

  v4 = v3;
  v5 = objc_opt_new();
  if (([v2 conformsToProtocol:&unk_1F3034818] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", objc_opt_class()];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = objc_opt_class();
      v28 = 2114;
      v29 = v6;
      v17 = v27;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]:  Error: Found class %{public}@ that doesn't conform to NSSecureCoding", buf, 0x16u);
    }

    [v5 addObject:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v2 userInfo];
    v8 = [(ASDCoding *)v4 _findNonSecureClassesFromObject:v7];

    if ([v8 count])
    {
      [v5 addObjectsFromArray:v8];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__ASDCoding__findNonSecureClassesFromObject___block_invoke;
    v22[3] = &unk_1E7CDD580;
    v24 = v4;
    v5 = v5;
    v23 = v5;
    [v2 enumerateKeysAndObjectsUsingBlock:v22];
    v9 = v23;
  }

  else
  {
    if (![v2 conformsToProtocol:&unk_1F30448B8])
    {
      goto LABEL_24;
    }

    v9 = v2;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(ASDCoding *)v4 _findNonSecureClassesFromObject:?];
          if ([v14 count])
          {
            [v5 addObjectsFromArray:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v11);
    }
  }

LABEL_24:
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

void __45__ASDCoding__findNonSecureClassesFromObject___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [(ASDCoding *)*(a1 + 40) _findNonSecureClassesFromObject:a3];
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

@end
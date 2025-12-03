@interface NSCoder(AppStoreDaemon)
- (BOOL)_asd_encodeJSONObject:()AppStoreDaemon forKey:error:;
- (id)_asd_decodeJSONObjectForKey:()AppStoreDaemon error:;
- (id)asd_decodeJSONDictionaryForKey:()AppStoreDaemon;
- (void)asd_encodeJSONDictionary:()AppStoreDaemon forKey:;
@end

@implementation NSCoder(AppStoreDaemon)

- (id)asd_decodeJSONDictionaryForKey:()AppStoreDaemon
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v5 = [self _asd_decodeJSONObjectForKey:v4 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v6;
      v13 = v12;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Error decoding JSON dictionary. key = %{public}@, error = %{public}@", buf, 0x20u);
    }
  }

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)asd_encodeJSONDictionary:()AppStoreDaemon forKey:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12 = 0;
  [self _asd_encodeJSONObject:a3 forKey:v6 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      v11 = v10;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Error encoding JSON dictionary. key = %{public}@, error = %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_asd_decodeJSONObjectForKey:()AppStoreDaemon error:
{
  v6 = a3;
  v7 = [self decodeObjectOfClass:objc_opt_class() forKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_asd_encodeJSONObject:()AppStoreDaemon forKey:error:
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v8])
  {
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:a5];
    v11 = v10 != 0;
    if (v10)
    {
      [self encodeObject:v10 forKey:v9];
    }
  }

  else
  {
    v12 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v17 = AMSHashIfNeeded();
      v18 = 138543618;
      v19 = v15;
      v20 = 2114;
      v21 = v17;
      _os_log_error_impl(&dword_1B8220000, v12, OS_LOG_TYPE_ERROR, "[%{public}@]: Error encoding JSON object. object = %{public}@", &v18, 0x16u);
    }

    if (a5)
    {
      ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 507, @"Invalid JSON Object");
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
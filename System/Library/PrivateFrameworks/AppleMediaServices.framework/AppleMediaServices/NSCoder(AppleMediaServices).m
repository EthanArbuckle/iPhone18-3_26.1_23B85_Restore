@interface NSCoder(AppleMediaServices)
- (BOOL)_ams_encodeJSONObject:()AppleMediaServices forKey:error:;
- (BOOL)_ams_encodePropertyListObject:()AppleMediaServices forKey:format:error:;
- (id)_ams_decodeJSONObjectForKey:()AppleMediaServices error:;
- (id)_ams_decodePropertyListObjectForKey:()AppleMediaServices error:;
- (id)ams_decodeBase64EncodedDataForKey:()AppleMediaServices;
- (id)ams_decodeJSONArrayForKey:()AppleMediaServices;
- (id)ams_decodeJSONDictionaryForKey:()AppleMediaServices;
- (id)ams_decodePropertyListArrayForKey:()AppleMediaServices;
- (id)ams_decodePropertyListDictionaryForKey:()AppleMediaServices;
- (void)ams_encodeBase64EncodedData:()AppleMediaServices forKey:;
- (void)ams_encodeJSONArray:()AppleMediaServices forKey:;
- (void)ams_encodeJSONDictionary:()AppleMediaServices forKey:;
- (void)ams_encodePropertyListArray:()AppleMediaServices format:forKey:;
- (void)ams_encodePropertyListDictionary:()AppleMediaServices format:forKey:;
@end

@implementation NSCoder(AppleMediaServices)

- (id)_ams_decodePropertyListObjectForKey:()AppleMediaServices error:
{
  v6 = a3;
  v7 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_ams_decodeJSONObjectForKey:()AppleMediaServices error:
{
  v6 = a3;
  v7 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v6];

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

- (BOOL)_ams_encodeJSONObject:()AppleMediaServices forKey:error:
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v8])
  {
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:0 error:a5];
    v11 = v10 != 0;
    if (v10)
    {
      [a1 encodeObject:v10 forKey:v9];
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      v16 = AMSHashIfNeeded(v8);
      v18 = 138543874;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error encoding JSON object. object = %{public}@", &v18, 0x20u);
    }

    if (a5)
    {
      AMSError(3, @"Invalid JSON Object", @"Could not convert object to JSON.", 0);
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_ams_encodePropertyListObject:()AppleMediaServices forKey:format:error:
{
  v10 = a4;
  v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:a5 options:0 error:a6];
  if (v11)
  {
    [a1 encodeObject:v11 forKey:v10];
  }

  return v11 != 0;
}

- (id)ams_decodeBase64EncodedDataForKey:()AppleMediaServices
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 decodeObjectOfClass:objc_msgSend(v4 forKey:{"classForKeyedUnarchiver"), v5}];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ams_decodeJSONArrayForKey:()AppleMediaServices
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v5 = [a1 _ams_decodeJSONObjectForKey:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error decoding JSON array. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }

  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)ams_decodeJSONDictionaryForKey:()AppleMediaServices
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v5 = [a1 _ams_decodeJSONObjectForKey:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error decoding JSON dictionary. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }

  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)ams_decodePropertyListArrayForKey:()AppleMediaServices
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v5 = [a1 _ams_decodePropertyListObjectForKey:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error decoding property list array. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }

  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)ams_decodePropertyListDictionaryForKey:()AppleMediaServices
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v5 = [a1 _ams_decodePropertyListObjectForKey:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138544130;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error decoding property list dictionary. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }

  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)ams_encodeBase64EncodedData:()AppleMediaServices forKey:
{
  v6 = a4;
  v7 = [a3 base64EncodedStringWithOptions:0];
  [a1 encodeObject:v7 forKey:v6];
}

- (void)ams_encodeJSONArray:()AppleMediaServices forKey:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0;
  [a1 _ams_encodeJSONObject:a3 forKey:v6 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSLogableError(v7);
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error encoding JSON array. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }
}

- (void)ams_encodeJSONDictionary:()AppleMediaServices forKey:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v13 = 0;
  [a1 _ams_encodeJSONObject:a3 forKey:v6 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSLogableError(v7);
      *buf = 138544130;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error encoding JSON dictionary. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }
}

- (void)ams_encodePropertyListArray:()AppleMediaServices format:forKey:
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v15 = 0;
  [a1 _ams_encodePropertyListObject:a3 forKey:v8 format:a4 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSLogableError(v9);
      *buf = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error encoding property list array. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }
}

- (void)ams_encodePropertyListDictionary:()AppleMediaServices format:forKey:
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v15 = 0;
  [a1 _ams_encodePropertyListObject:a3 forKey:v8 format:a4 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSLogableError(v9);
      *buf = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@]: Error encoding property list dictionary. key = %{public}@, error = %{public}@", buf, 0x2Au);
    }
  }
}

@end
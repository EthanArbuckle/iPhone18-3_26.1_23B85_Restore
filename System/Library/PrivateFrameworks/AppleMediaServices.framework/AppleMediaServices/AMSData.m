@interface AMSData
+ (id)dataWithObject:(id)a3 encoding:(int64_t)a4 error:(id *)a5;
+ (id)objectWithData:(id)a3 encoding:(int64_t)a4 error:(id *)a5;
+ (id)objectWithData:(id)a3 response:(id)a4 error:(id *)a5;
+ (int64_t)_dataEncodingFromResponse:(id)a3;
+ (int64_t)dataEncodingFromContentType:(id)a3;
@end

@implementation AMSData

+ (id)objectWithData:(id)a3 encoding:(int64_t)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = 0;
    if (a4 > 2)
    {
      if (a4 == 4)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      }

      else
      {
        if (a4 != 3)
        {
          goto LABEL_22;
        }

        v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a5];
      }

      goto LABEL_14;
    }

    if (a4)
    {
      if (a4 != 2)
      {
        goto LABEL_22;
      }

      v10 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:a5];
      goto LABEL_14;
    }

    v10 = [a1 objectWithData:v8 encoding:2 error:0];
    if (v10 || ([a1 objectWithData:v8 encoding:3 error:0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_14:
      v9 = v10;
      goto LABEL_22;
    }

    v11 = AMSError(4, @"Decoding Failed", @"Unable to determine encoding for unknown encoding", 0);
    v12 = v11;
    if (a5)
    {
      v13 = v11;
      *a5 = v12;
    }

    else
    {
      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      v15 = [v14 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = AMSLogableError(v12);
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode data. Error = %{public}@", &v19, 0x16u);
      }
    }
  }

  v9 = 0;
LABEL_22:

  return v9;
}

+ (id)objectWithData:(id)a3 response:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v13 = 0;
    v10 = [a1 objectWithData:v8 encoding:objc_msgSend(a1 error:{"_dataEncodingFromResponse:", v9), &v13}];
    v11 = v13;
    if (a5)
    {
      v11 = v11;
      *a5 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)dataWithObject:(id)a3 encoding:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  if (v7)
  {
    v8 = 0;
    if (a4 > 2)
    {
      if (a4 == 4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 dataUsingEncoding:4];
          goto LABEL_15;
        }

        if (a5)
        {
          v10 = @"Invalid String object";
          goto LABEL_22;
        }
      }

      else
      {
        if (a4 != 3)
        {
          goto LABEL_24;
        }

        if ([MEMORY[0x1E696ACB0] isValidJSONObject:v7])
        {
          v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:a5];
          goto LABEL_15;
        }

        if (a5)
        {
          v10 = @"Invalid JSON object";
          goto LABEL_22;
        }
      }
    }

    else if (a4 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_24;
      }

      if ([MEMORY[0x1E696AE40] propertyList:v7 isValidForFormat:100])
      {
        v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:a5];
LABEL_15:
        v8 = v9;
        goto LABEL_24;
      }

      if (a5)
      {
        v10 = @"Invalid PLIST object";
LABEL_22:
        AMSError(3, @"Data Encoding Failed", v10, 0);
        *a5 = v8 = 0;
        goto LABEL_24;
      }
    }
  }

  v8 = 0;
LABEL_24:

  return v8;
}

+ (int64_t)dataEncodingFromContentType:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 rangeOfString:@"/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [v3 rangeOfString:@"/xml" options:1];
      v5 = [v3 rangeOfString:@"/plist" options:1];
      v6 = 2;
      if (v4 == 0x7FFFFFFFFFFFFFFFLL && v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [v3 rangeOfString:@"/data" options:1] != 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)_dataEncodingFromResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 ams_valueForHTTPHeaderField:@"Content-Type"];
    v6 = [a1 dataEncodingFromContentType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface AMSMediaTokenServiceDeserializer
+ (id)_correctPayload:(id)a3;
+ (id)_deserializeMediaTokenDictionary:(id)a3;
+ (id)mediaTokenFromDictionary:(id)a3 error:(id *)a4;
@end

@implementation AMSMediaTokenServiceDeserializer

+ (id)mediaTokenFromDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 _deserializeMediaTokenDictionary:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else if (a4)
    {
      *a4 = AMSError(301, @"Invalid token result", @"Result could not be decoded.", 0);
    }
  }

  else if (a4)
  {
    AMSError(301, @"Invalid token result", @"Result object is not a dictionary.", 0);
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_deserializeMediaTokenDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a3 objectForKeyedSubscript:@"token"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;

    if (v5)
    {
      v6 = [v5 componentsSeparatedByString:@"."];
      if ([v6 count] != 3)
      {
        v7 = +[AMSLogConfig sharedMediaConfig];
        if (!v7)
        {
          v7 = +[AMSLogConfig sharedConfig];
        }

        v8 = [v7 OSLogObject];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v22 = v35;
          _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Media token string was not split to 3 parts. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_45;
      }

      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [a1 _correctPayload:v7];
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedMediaConfig];
        if (!v9)
        {
          v9 = +[AMSLogConfig sharedConfig];
        }

        v11 = [v9 OSLogObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v23 = v35;
          _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Payload string could not be corrected. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_44;
      }

      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      if (!v9)
      {
        v11 = +[AMSLogConfig sharedMediaConfig];
        if (!v11)
        {
          v11 = +[AMSLogConfig sharedConfig];
        }

        v10 = [v11 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v24 = v35;
          _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Payload data could not be encoded from media token string. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_43;
      }

      v33 = 0;
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v33];
      v11 = v33;
      if (v11 || !v10)
      {
        v19 = +[AMSLogConfig sharedMediaConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        v25 = [v19 OSLogObject];
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v26 = objc_opt_class();
        *buf = 138543874;
        v35 = v26;
        v36 = 2114;
        v37 = v11;
        v38 = 2112;
        v39 = v5;
        v27 = v26;
        v28 = "%{public}@: Dictionary could not be decoded from payload data. Error: %{public}@. Media token string: %@";
        v29 = v25;
        v30 = 32;
      }

      else
      {
        v12 = [v10 objectForKeyedSubscript:@"exp"];
        [v12 doubleValue];
        v14 = v13;

        v15 = [v10 objectForKeyedSubscript:@"iat"];
        [v15 doubleValue];
        v17 = v16;

        if (v14 != 0.0 && v17 != 0.0)
        {
          v18 = v14 - v17;
          v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v18];
          v20 = [[AMSMediaToken alloc] initWithString:v5 expirationDate:v19 lifetime:v18];
LABEL_42:

LABEL_43:
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }

        v19 = +[AMSLogConfig sharedMediaConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        v25 = [v19 OSLogObject];
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_41:

          v20 = 0;
          goto LABEL_42;
        }

        v31 = objc_opt_class();
        *buf = 138543618;
        v35 = v31;
        v36 = 2112;
        v37 = v5;
        v27 = v31;
        v28 = "%{public}@: Time intervals could not be retrieved from date dictionary. Media token string: %@";
        v29 = v25;
        v30 = 22;
      }

      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);

      goto LABEL_41;
    }
  }

  else
  {
  }

  v6 = +[AMSLogConfig sharedMediaConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = objc_opt_class();
    v21 = v35;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Media token string not found in response.", buf, 0xCu);
  }

  v5 = 0;
  v20 = 0;
LABEL_46:

  return v20;
}

+ (id)_correctPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  [v4 replaceOccurrencesOfString:@"-" withString:@"+" options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"_" withString:@"/" options:0 range:{0, objc_msgSend(v4, "length")}];
  v5 = [v4 length] & 3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = @"==";
    }

    else
    {
      v6 = @"=";
    }

    [v4 appendString:v6];
  }

  else if (v5)
  {

    v4 = 0;
  }

  v7 = [v4 copy];

  return v7;
}

@end
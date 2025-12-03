@interface AMSMediaTokenServiceDeserializer
+ (id)_correctPayload:(id)payload;
+ (id)_deserializeMediaTokenDictionary:(id)dictionary;
+ (id)mediaTokenFromDictionary:(id)dictionary error:(id *)error;
@end

@implementation AMSMediaTokenServiceDeserializer

+ (id)mediaTokenFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self _deserializeMediaTokenDictionary:dictionaryCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else if (error)
    {
      *error = AMSError(301, @"Invalid token result", @"Result could not be decoded.", 0);
    }
  }

  else if (error)
  {
    AMSError(301, @"Invalid token result", @"Result object is not a dictionary.", 0);
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_deserializeMediaTokenDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [dictionary objectForKeyedSubscript:@"token"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;

    if (v5)
    {
      v6 = [v5 componentsSeparatedByString:@"."];
      if ([v6 count] != 3)
      {
        oSLogObject4 = +[AMSLogConfig sharedMediaConfig];
        if (!oSLogObject4)
        {
          oSLogObject4 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [oSLogObject4 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v22 = v35;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Media token string was not split to 3 parts. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_45;
      }

      oSLogObject4 = [v6 objectAtIndexedSubscript:1];
      oSLogObject = [self _correctPayload:oSLogObject4];
      if (!oSLogObject)
      {
        v9 = +[AMSLogConfig sharedMediaConfig];
        if (!v9)
        {
          v9 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v23 = v35;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Payload string could not be corrected. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_44;
      }

      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:oSLogObject options:0];
      if (!v9)
      {
        oSLogObject2 = +[AMSLogConfig sharedMediaConfig];
        if (!oSLogObject2)
        {
          oSLogObject2 = +[AMSLogConfig sharedConfig];
        }

        v11OSLogObject = [oSLogObject2 OSLogObject];
        if (os_log_type_enabled(v11OSLogObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = objc_opt_class();
          v36 = 2112;
          v37 = v5;
          v24 = v35;
          _os_log_impl(&dword_192869000, v11OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Payload data could not be encoded from media token string. Media token string: %@", buf, 0x16u);
        }

        v20 = 0;
        goto LABEL_43;
      }

      v33 = 0;
      v11OSLogObject = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v33];
      oSLogObject2 = v33;
      if (oSLogObject2 || !v11OSLogObject)
      {
        v19 = +[AMSLogConfig sharedMediaConfig];
        if (!v19)
        {
          v19 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v19 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        v26 = objc_opt_class();
        *buf = 138543874;
        v35 = v26;
        v36 = 2114;
        v37 = oSLogObject2;
        v38 = 2112;
        v39 = v5;
        v27 = v26;
        v28 = "%{public}@: Dictionary could not be decoded from payload data. Error: %{public}@. Media token string: %@";
        v29 = oSLogObject3;
        v30 = 32;
      }

      else
      {
        v12 = [v11OSLogObject objectForKeyedSubscript:@"exp"];
        [v12 doubleValue];
        v14 = v13;

        v15 = [v11OSLogObject objectForKeyedSubscript:@"iat"];
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

        oSLogObject3 = [v19 OSLogObject];
        if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
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
        v29 = oSLogObject3;
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

  oSLogObject4 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v35 = objc_opt_class();
    v21 = v35;
    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Media token string not found in response.", buf, 0xCu);
  }

  v5 = 0;
  v20 = 0;
LABEL_46:

  return v20;
}

+ (id)_correctPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [payloadCopy mutableCopy];
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
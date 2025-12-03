@interface AMSData
+ (id)dataWithObject:(id)object encoding:(int64_t)encoding error:(id *)error;
+ (id)objectWithData:(id)data encoding:(int64_t)encoding error:(id *)error;
+ (id)objectWithData:(id)data response:(id)response error:(id *)error;
+ (int64_t)_dataEncodingFromResponse:(id)response;
+ (int64_t)dataEncodingFromContentType:(id)type;
@end

@implementation AMSData

+ (id)objectWithData:(id)data encoding:(int64_t)encoding error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v9 = 0;
    if (encoding > 2)
    {
      if (encoding == 4)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
      }

      else
      {
        if (encoding != 3)
        {
          goto LABEL_22;
        }

        v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:error];
      }

      goto LABEL_14;
    }

    if (encoding)
    {
      if (encoding != 2)
      {
        goto LABEL_22;
      }

      v10 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:error];
      goto LABEL_14;
    }

    v10 = [self objectWithData:dataCopy encoding:2 error:0];
    if (v10 || ([self objectWithData:dataCopy encoding:3 error:0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_14:
      v9 = v10;
      goto LABEL_22;
    }

    v11 = AMSError(4, @"Decoding Failed", @"Unable to determine encoding for unknown encoding", 0);
    v12 = v11;
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    else
    {
      v14 = +[AMSLogConfig sharedConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = AMSLogableError(v12);
        v19 = 138543618;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode data. Error = %{public}@", &v19, 0x16u);
      }
    }
  }

  v9 = 0;
LABEL_22:

  return v9;
}

+ (id)objectWithData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if ([dataCopy length])
  {
    v13 = 0;
    v10 = [self objectWithData:dataCopy encoding:objc_msgSend(self error:{"_dataEncodingFromResponse:", responseCopy), &v13}];
    v11 = v13;
    if (error)
    {
      v11 = v11;
      *error = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)dataWithObject:(id)object encoding:(int64_t)encoding error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    v8 = 0;
    if (encoding > 2)
    {
      if (encoding == 4)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [objectCopy dataUsingEncoding:4];
          goto LABEL_15;
        }

        if (error)
        {
          v10 = @"Invalid String object";
          goto LABEL_22;
        }
      }

      else
      {
        if (encoding != 3)
        {
          goto LABEL_24;
        }

        if ([MEMORY[0x1E696ACB0] isValidJSONObject:objectCopy])
        {
          v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:objectCopy options:0 error:error];
          goto LABEL_15;
        }

        if (error)
        {
          v10 = @"Invalid JSON object";
          goto LABEL_22;
        }
      }
    }

    else if (encoding == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objectCopy;
        goto LABEL_15;
      }
    }

    else
    {
      if (encoding != 2)
      {
        goto LABEL_24;
      }

      if ([MEMORY[0x1E696AE40] propertyList:objectCopy isValidForFormat:100])
      {
        v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:objectCopy format:100 options:0 error:error];
LABEL_15:
        v8 = v9;
        goto LABEL_24;
      }

      if (error)
      {
        v10 = @"Invalid PLIST object";
LABEL_22:
        AMSError(3, @"Data Encoding Failed", v10, 0);
        *error = v8 = 0;
        goto LABEL_24;
      }
    }
  }

  v8 = 0;
LABEL_24:

  return v8;
}

+ (int64_t)dataEncodingFromContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy length])
  {
    if ([typeCopy rangeOfString:@"/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [typeCopy rangeOfString:@"/xml" options:1];
      v5 = [typeCopy rangeOfString:@"/plist" options:1];
      v6 = 2;
      if (v4 == 0x7FFFFFFFFFFFFFFFLL && v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [typeCopy rangeOfString:@"/data" options:1] != 0x7FFFFFFFFFFFFFFFLL;
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

+ (int64_t)_dataEncodingFromResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [responseCopy ams_valueForHTTPHeaderField:@"Content-Type"];
    v6 = [self dataEncodingFromContentType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface AVAirMessageResponse
+ (id)messageWithVersion:(id)a3 headers:(id)a4 bodyData:(id)a5;
+ (id)responseWithParts:(id)a3;
- (AVAirMessageResponse)initWithStatus:(int64_t)a3 localizedDescription:(id)a4;
- (NSString)description;
- (id)bodyData;
- (id)headersForContentLength:(int64_t)a3 compression:(id)a4;
- (id)messageDataRepresentation;
@end

@implementation AVAirMessageResponse

- (id)messageDataRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = [(AVAirMessageResponse *)self bodyData];
  v3 = -[AVAirMessageResponse headersForContentLength:compression:](self, "headersForContentLength:compression:", [v19 length], 0);
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:@"AVKitAirResponse/1"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v11 stringWithFormat:@"%@:%@", v10, v12];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = [v4 componentsJoinedByString:@"\n"];
  v15 = [v14 stringByAppendingFormat:@"\n\n"];

  v16 = [v15 dataUsingEncoding:4];
  v17 = [v16 mutableCopy];
  if ([v19 length])
  {
    [v17 appendData:v19];
  }

  return v17;
}

- (id)bodyData
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"status";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVAirMessageResponse status](self, "status")}];
  v17[1] = @"description";
  v18[0] = v3;
  v4 = [(AVAirMessageResponse *)self localizedDescription];
  v5 = v4;
  v6 = &stru_1EFED57D8;
  if (v4)
  {
    v6 = v4;
  }

  v18[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v12 = 0;
  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:4 error:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = _avairlog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[AVAirMessageResponse bodyData]";
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s failed to serialize response body: %{public}@", buf, 0x16u);
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAirMessageResponse *)self status];
  v7 = [(AVAirMessageResponse *)self localizedDescription];
  v8 = v7;
  v9 = &stru_1EFED57D8;
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v3 stringWithFormat:@"%@ status %ld %@", v5, v6, v9];;

  return v10;
}

- (id)headersForContentLength:(int64_t)a3 compression:(id)a4
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"length";
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  v9 = [v8 stringValue];
  v10 = v9;
  v11 = @"none";
  if (v7)
  {
    v11 = v7;
  }

  v20[0] = v9;
  v20[1] = v11;
  v19[1] = @"compression";
  v19[2] = @"response-status";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVAirMessageResponse status](self, "status")}];
  v13 = [v12 stringValue];
  v20[2] = v13;
  v19[3] = @"response-description";
  v14 = [(AVAirMessageResponse *)self localizedDescription];
  v15 = v14;
  v16 = &stru_1EFED57D8;
  if (v14)
  {
    v16 = v14;
  }

  v20[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v17;
}

- (AVAirMessageResponse)initWithStatus:(int64_t)a3 localizedDescription:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = AVAirMessageResponse;
  v7 = [(AVAirMessageResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_status = a3;
    v9 = [v6 copy];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v9;
  }

  return v8;
}

+ (id)responseWithParts:(id)a3
{
  v4 = a3;
  if ([v4 isIncomplete])
  {
    [v4 rawBodyData];
  }

  v5 = [v4 version];
  v6 = [v4 uniqueHeaders];
  v7 = [v4 rawBodyData];
  v8 = [a1 messageWithVersion:v5 headers:v6 bodyData:v7];

  return v8;
}

+ (id)messageWithVersion:(id)a3 headers:(id)a4 bodyData:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _avairlog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[AVAirMessageResponse messageWithVersion:headers:bodyData:]";
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s response received: %{public}@", &v15, 0x16u);
  }

  if (([(__CFString *)v6 isEqualToString:@"AVKitAirResponse/1"]& 1) != 0)
  {
    v9 = [(__CFString *)v7 objectForKeyedSubscript:@"response-status"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 integerValue];
      v12 = [(__CFString *)v7 objectForKeyedSubscript:@"response-description"];
      v13 = [[AVAirMessageResponse alloc] initWithStatus:v11 localizedDescription:v12];
    }

    else
    {
      v12 = _avairlog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315394;
        v16 = "+[AVAirMessageResponse messageWithVersion:headers:bodyData:]";
        v17 = 2114;
        v18 = @"response-status";
        _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s response is invalid: the %{public}@ header is missing", &v15, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = _avairlog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "+[AVAirMessageResponse messageWithVersion:headers:bodyData:]";
      v17 = 2114;
      v18 = v6;
      v19 = 2114;
      v20 = @"AVKitAirResponse/1";
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s response version seems incorrect; have '%{public}@' but expecting '%{public}@'", &v15, 0x20u);
    }

    v13 = 0;
  }

  return v13;
}

@end
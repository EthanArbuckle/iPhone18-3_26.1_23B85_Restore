@interface AVAirMessageResponse
+ (id)messageWithVersion:(id)version headers:(id)headers bodyData:(id)data;
+ (id)responseWithParts:(id)parts;
- (AVAirMessageResponse)initWithStatus:(int64_t)status localizedDescription:(id)description;
- (NSString)description;
- (id)bodyData;
- (id)headersForContentLength:(int64_t)length compression:(id)compression;
- (id)messageDataRepresentation;
@end

@implementation AVAirMessageResponse

- (id)messageDataRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  bodyData = [(AVAirMessageResponse *)self bodyData];
  v3 = -[AVAirMessageResponse headersForContentLength:compression:](self, "headersForContentLength:compression:", [bodyData length], 0);
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
  if ([bodyData length])
  {
    [v17 appendData:bodyData];
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
  localizedDescription = [(AVAirMessageResponse *)self localizedDescription];
  v5 = localizedDescription;
  v6 = &stru_1EFED57D8;
  if (localizedDescription)
  {
    v6 = localizedDescription;
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
  status = [(AVAirMessageResponse *)self status];
  localizedDescription = [(AVAirMessageResponse *)self localizedDescription];
  v8 = localizedDescription;
  v9 = &stru_1EFED57D8;
  if (localizedDescription)
  {
    v9 = localizedDescription;
  }

  v10 = [v3 stringWithFormat:@"%@ status %ld %@", v5, status, v9];;

  return v10;
}

- (id)headersForContentLength:(int64_t)length compression:(id)compression
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"length";
  v6 = MEMORY[0x1E696AD98];
  compressionCopy = compression;
  v8 = [v6 numberWithInteger:length];
  stringValue = [v8 stringValue];
  v10 = stringValue;
  v11 = @"none";
  if (compressionCopy)
  {
    v11 = compressionCopy;
  }

  v20[0] = stringValue;
  v20[1] = v11;
  v19[1] = @"compression";
  v19[2] = @"response-status";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AVAirMessageResponse status](self, "status")}];
  stringValue2 = [v12 stringValue];
  v20[2] = stringValue2;
  v19[3] = @"response-description";
  localizedDescription = [(AVAirMessageResponse *)self localizedDescription];
  v15 = localizedDescription;
  v16 = &stru_1EFED57D8;
  if (localizedDescription)
  {
    v16 = localizedDescription;
  }

  v20[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v17;
}

- (AVAirMessageResponse)initWithStatus:(int64_t)status localizedDescription:(id)description
{
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = AVAirMessageResponse;
  v7 = [(AVAirMessageResponse *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_status = status;
    v9 = [descriptionCopy copy];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v9;
  }

  return v8;
}

+ (id)responseWithParts:(id)parts
{
  partsCopy = parts;
  if ([partsCopy isIncomplete])
  {
    [partsCopy rawBodyData];
  }

  version = [partsCopy version];
  uniqueHeaders = [partsCopy uniqueHeaders];
  rawBodyData = [partsCopy rawBodyData];
  v8 = [self messageWithVersion:version headers:uniqueHeaders bodyData:rawBodyData];

  return v8;
}

+ (id)messageWithVersion:(id)version headers:(id)headers bodyData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  headersCopy = headers;
  v8 = _avairlog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[AVAirMessageResponse messageWithVersion:headers:bodyData:]";
    v17 = 2114;
    v18 = headersCopy;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s response received: %{public}@", &v15, 0x16u);
  }

  if (([(__CFString *)versionCopy isEqualToString:@"AVKitAirResponse/1"]& 1) != 0)
  {
    v9 = [(__CFString *)headersCopy objectForKeyedSubscript:@"response-status"];
    v10 = v9;
    if (v9)
    {
      integerValue = [v9 integerValue];
      v12 = [(__CFString *)headersCopy objectForKeyedSubscript:@"response-description"];
      v13 = [[AVAirMessageResponse alloc] initWithStatus:integerValue localizedDescription:v12];
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
      v18 = versionCopy;
      v19 = 2114;
      v20 = @"AVKitAirResponse/1";
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s response version seems incorrect; have '%{public}@' but expecting '%{public}@'", &v15, 0x20u);
    }

    v13 = 0;
  }

  return v13;
}

@end
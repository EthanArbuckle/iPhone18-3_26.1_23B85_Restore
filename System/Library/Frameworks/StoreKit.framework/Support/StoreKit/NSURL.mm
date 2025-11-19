@interface NSURL
- (NSString)lib_sanitizedFilePath;
- (id)lib_URLByAppendingPathComponents:(id)a3;
- (id)lib_URLByAppendingQueryDictionary:(id)a3;
- (id)lib_URLByStrippingQuery;
- (id)lib_queryDictionary;
@end

@implementation NSURL

- (NSString)lib_sanitizedFilePath
{
  if ([(NSURL *)self isFileURL])
  {
    v3 = [(NSURL *)self path];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)lib_queryDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 queryItems];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v10 value];
        if (v11)
        {
          [v3 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)lib_URLByAppendingPathComponents:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 count];
    v6 = [v4 firstObject];
    if (v5 == 1)
    {
      v7 = [(NSURL *)self URLByAppendingPathComponent:v6 isDirectory:0];
    }

    else
    {
      v8 = [(NSURL *)self URLByAppendingPathComponent:v6 isDirectory:1];

      v9 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];
      v7 = [v8 lib_URLByAppendingPathComponents:v9];
    }
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (id)lib_URLByAppendingQueryDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  v27 = v4;
  if ([v4 count])
  {
    v6 = +[NSMutableString string];
    v25 = v5;
    v7 = [(NSURL *)v5 absoluteString];
    v8 = [v7 componentsSeparatedByString:@"?"];

    v24 = [v8 objectAtIndexedSubscript:0];
    if ([v8 count] >= 2)
    {
      v9 = [v8 objectAtIndexedSubscript:1];
      [v6 appendString:v9];
    }

    v10 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v11 = [v10 mutableCopy];

    [v11 removeCharactersInString:@"?&%+=;"];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v27 allKeys];
    v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v11];
          v18 = [v27 objectForKeyedSubscript:v16];
          v19 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v11];

          if ([v6 length])
          {
            v20 = @"&%@=%@";
          }

          else
          {
            v20 = @"%@=%@";
          }

          [v6 appendFormat:v20, v17, v19];
        }

        v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    if (v6)
    {
      v21 = v24;
      if ([v6 length])
      {
        v22 = [v24 stringByAppendingFormat:@"?%@", v6];

        v21 = v22;
      }
    }

    else
    {
      v21 = v24;
    }

    v5 = [NSURL URLWithString:v21];
  }

  return v5;
}

- (id)lib_URLByStrippingQuery
{
  v2 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:0];
  [v2 setQueryItems:0];
  v3 = [v2 URL];

  return v3;
}

@end
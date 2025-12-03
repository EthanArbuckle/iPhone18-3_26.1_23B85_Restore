@interface NSURL
- (NSString)lib_sanitizedFilePath;
- (id)lib_URLByAppendingPathComponents:(id)components;
- (id)lib_URLByAppendingQueryDictionary:(id)dictionary;
- (id)lib_URLByStrippingQuery;
- (id)lib_queryDictionary;
@end

@implementation NSURL

- (NSString)lib_sanitizedFilePath
{
  if ([(NSURL *)self isFileURL])
  {
    path = [(NSURL *)self path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)lib_queryDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  queryItems = [v4 queryItems];
  v6 = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(queryItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        name = [v10 name];
        value = [v10 value];
        if (name)
        {
          [v3 setObject:value forKeyedSubscript:name];
        }
      }

      v7 = [queryItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v3 copy];

  return v13;
}

- (id)lib_URLByAppendingPathComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy count])
  {
    v5 = [componentsCopy count];
    firstObject = [componentsCopy firstObject];
    if (v5 == 1)
    {
      selfCopy = [(NSURL *)self URLByAppendingPathComponent:firstObject isDirectory:0];
    }

    else
    {
      v8 = [(NSURL *)self URLByAppendingPathComponent:firstObject isDirectory:1];

      v9 = [componentsCopy subarrayWithRange:{1, objc_msgSend(componentsCopy, "count") - 1}];
      selfCopy = [v8 lib_URLByAppendingPathComponents:v9];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)lib_URLByAppendingQueryDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  v27 = dictionaryCopy;
  if ([dictionaryCopy count])
  {
    v6 = +[NSMutableString string];
    v25 = selfCopy;
    absoluteString = [(NSURL *)selfCopy absoluteString];
    v8 = [absoluteString componentsSeparatedByString:@"?"];

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

    selfCopy = [NSURL URLWithString:v21];
  }

  return selfCopy;
}

- (id)lib_URLByStrippingQuery
{
  v2 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:0];
  [v2 setQueryItems:0];
  v3 = [v2 URL];

  return v3;
}

@end
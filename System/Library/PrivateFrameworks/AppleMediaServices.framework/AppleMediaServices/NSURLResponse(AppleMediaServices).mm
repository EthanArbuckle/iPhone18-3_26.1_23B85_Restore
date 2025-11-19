@interface NSURLResponse(AppleMediaServices)
- (double)ams_expirationInterval;
- (id)ams_allHeaderFields;
- (id)ams_valueForHTTPHeaderField:()AppleMediaServices;
- (uint64_t)_getCacheControlMaxAge:()AppleMediaServices;
- (uint64_t)ams_statusCode;
@end

@implementation NSURLResponse(AppleMediaServices)

- (id)ams_allHeaderFields
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 allHeaderFields];

  return v3;
}

- (uint64_t)ams_statusCode
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 statusCode];
  return v3;
}

- (double)ams_expirationInterval
{
  v8 = -1.0;
  if (([a1 _getCacheControlMaxAge:&v8] & 1) == 0)
  {
    v2 = [a1 ams_valueForHTTPHeaderField:@"Expires"];
    v3 = -1.0;
    if (v2)
    {
      v4 = [MEMORY[0x1E695DF00] dateWithNaturalLanguageString:v2];
      if (v4)
      {
        v5 = v4;
        [v4 timeIntervalSinceNow];
        v3 = v6;
      }
    }

    v8 = v3;
  }

  return v8;
}

- (id)ams_valueForHTTPHeaderField:()AppleMediaServices
{
  v4 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 valueForHTTPHeaderField:v5];

  return v7;
}

- (uint64_t)_getCacheControlMaxAge:()AppleMediaServices
{
  v4 = [a1 ams_valueForHTTPHeaderField:@"Cache-Control"];
  if (!v4)
  {
    v9 = 0;
    v11 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v21 = a3;
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v20 = v4;
  v6 = [v4 componentsSeparatedByString:{@", "}];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v6 objectAtIndex:v10];
      v13 = [v12 stringByTrimmingCharactersInSet:v5];

      v14 = [v13 componentsSeparatedByString:@"="];
      if ([v14 count] == 2)
      {
        v15 = [v14 objectAtIndex:0];
        v16 = [v15 hasPrefix:@"max-age"];

        if (v16)
        {
          v9 = 1;
          v17 = [v14 objectAtIndex:1];
          [v17 doubleValue];
          v11 = v18;
        }
      }

      ++v10;
    }

    while (v8 != v10);
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4 = v20;
  a3 = v21;
  if (v21)
  {
LABEL_13:
    *a3 = v11;
  }

LABEL_14:

  return v9 & 1;
}

@end
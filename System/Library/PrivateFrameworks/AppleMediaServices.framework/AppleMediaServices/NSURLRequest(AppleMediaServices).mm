@interface NSURLRequest(AppleMediaServices)
- (id)ams_cookies;
- (uint64_t)ams_requestIsBagLoad;
@end

@implementation NSURLRequest(AppleMediaServices)

- (uint64_t)ams_requestIsBagLoad
{
  v1 = [self URL];
  ams_isBagLoadURL = [v1 ams_isBagLoadURL];

  return ams_isBagLoadURL;
}

- (id)ams_cookies
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = [self valueForHTTPHeaderField:@"Cookie"];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [v18 componentsSeparatedByString:@""];;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v8 = [v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v9 = [v8 rangeOfString:@"="];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = v9;
          v11 = v9 + 1;
          v12 = [v8 length];
          if (v10 && v11 < v12)
          {
            v14 = [v8 substringToIndex:v10];
            v15 = [v8 substringFromIndex:v11];
            [v19 setObject:v15 forKeyedSubscript:v14];
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  v16 = [v19 copy];

  return v16;
}

@end
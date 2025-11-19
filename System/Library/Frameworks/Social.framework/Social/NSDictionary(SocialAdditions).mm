@interface NSDictionary(SocialAdditions)
+ (id)SLDictionaryWithOAuthAccessTokenResponseData:()SocialAdditions;
@end

@implementation NSDictionary(SocialAdditions)

+ (id)SLDictionaryWithOAuthAccessTokenResponseData:()SocialAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = v3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  v6 = [v5 componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndex:1];
          v13 = [v12 stringByReplacingPercentEscapesUsingEncoding:4];

          v14 = [v11 objectAtIndex:0];
          [v4 setObject:v13 forKey:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v4;
}

@end
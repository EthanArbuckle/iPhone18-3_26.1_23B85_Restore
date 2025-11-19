@interface SLYahooWebAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)a3;
+ (id)_parametersForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6;
+ (id)authCodeFromURLRequest:(id)a3;
+ (id)requestForURL:(id)a3;
+ (id)urlForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7 codeChallenge:(id)a8;
+ (id)urlRequestForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7;
+ (void)clearCookiesFromStorage:(id)a3 authRequestURL:(id)a4;
- (SLYahooWebAuthRequest)initWithCoder:(id)a3;
@end

@implementation SLYahooWebAuthRequest

- (SLYahooWebAuthRequest)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SLYahooWebAuthRequest;
  return [(SLYahooWebAuthRequest *)&v4 init];
}

+ (void)clearCookiesFromStorage:(id)a3 authRequestURL:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DFF8];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:a4];
  v9 = [v8 host];
  v10 = [v7 stringWithFormat:@"https://%@/", v9];
  v11 = [v6 URLWithString:v10];

  v12 = [v5 cookiesForURL:v11];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v5 deleteCookie:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

+ (id)requestForURL:(id)a3
{
  v3 = [MEMORY[0x1E696AD68] requestWithURL:a3];
  [v3 setCachePolicy:1];

  return v3;
}

+ (id)urlRequestForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7
{
  v8 = [a1 urlForClientID:a3 redirectURI:a4 scope:a5 username:a6 authRequestURL:a7];
  v9 = [a1 requestForURL:v8];

  return v9;
}

+ (BOOL)urlPageWillContainAuthorizationCode:(id)a3
{
  v3 = [a3 query];
  v4 = [v3 hasPrefix:@"code="];

  return v4;
}

+ (id)authCodeFromURLRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 query];
  v5 = [v4 substringFromIndex:{objc_msgSend(@"code=", "length")}];
  v6 = [v5 componentsSeparatedByString:@"&"];
  v7 = [v6 objectAtIndexedSubscript:0];

  return v7;
}

+ (id)urlForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7 codeChallenge:(id)a8
{
  v13 = a7;
  v14 = [a1 _parametersForClientID:a3 redirectURI:a4 scope:a5 username:a6];
  v15 = [v14 componentsJoinedByString:@"&"];
  v16 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v16];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@", v13, v17];

  v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];

  return v19;
}

+ (id)_parametersForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6
{
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = a6;
  v9 = MEMORY[0x1E695DF58];
  v10 = a4;
  v11 = a3;
  v12 = [v9 currentLocale];
  v13 = [v12 objectForKey:*MEMORY[0x1E695D9A8]];
  v14 = [v13 lowercaseString];
  v15 = [v14 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client_id=%@", v11, @"response_type=code"];

  v23[1] = v16;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirect_uri=%@", v10];

  v23[2] = v17;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"language=%@", v15];
  v23[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  if (v8)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"login_hint=%@", v8];
    v21 = [v19 arrayByAddingObject:v20];

    v19 = v21;
  }

  return v19;
}

@end
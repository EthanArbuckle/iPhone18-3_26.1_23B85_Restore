@interface SLYahooWebAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)code;
+ (id)_parametersForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username;
+ (id)authCodeFromURLRequest:(id)request;
+ (id)requestForURL:(id)l;
+ (id)urlForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l codeChallenge:(id)challenge;
+ (id)urlRequestForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l;
+ (void)clearCookiesFromStorage:(id)storage authRequestURL:(id)l;
- (SLYahooWebAuthRequest)initWithCoder:(id)coder;
@end

@implementation SLYahooWebAuthRequest

- (SLYahooWebAuthRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SLYahooWebAuthRequest;
  return [(SLYahooWebAuthRequest *)&v4 init];
}

+ (void)clearCookiesFromStorage:(id)storage authRequestURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v6 = MEMORY[0x1E695DFF8];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:l];
  host = [v8 host];
  v10 = [v7 stringWithFormat:@"https://%@/", host];
  v11 = [v6 URLWithString:v10];

  v12 = [storageCopy cookiesForURL:v11];
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

        [storageCopy deleteCookie:*(*(&v17 + 1) + 8 * v16++)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

+ (id)requestForURL:(id)l
{
  v3 = [MEMORY[0x1E696AD68] requestWithURL:l];
  [v3 setCachePolicy:1];

  return v3;
}

+ (id)urlRequestForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l
{
  v8 = [self urlForClientID:d redirectURI:i scope:scope username:username authRequestURL:l];
  v9 = [self requestForURL:v8];

  return v9;
}

+ (BOOL)urlPageWillContainAuthorizationCode:(id)code
{
  query = [code query];
  v4 = [query hasPrefix:@"code="];

  return v4;
}

+ (id)authCodeFromURLRequest:(id)request
{
  v3 = [request URL];
  query = [v3 query];
  v5 = [query substringFromIndex:{objc_msgSend(@"code=", "length")}];
  v6 = [v5 componentsSeparatedByString:@"&"];
  v7 = [v6 objectAtIndexedSubscript:0];

  return v7;
}

+ (id)urlForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l codeChallenge:(id)challenge
{
  lCopy = l;
  v14 = [self _parametersForClientID:d redirectURI:i scope:scope username:username];
  v15 = [v14 componentsJoinedByString:@"&"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@", lCopy, v17];

  v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];

  return v19;
}

+ (id)_parametersForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username
{
  v23[4] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  v9 = MEMORY[0x1E695DF58];
  iCopy = i;
  dCopy = d;
  currentLocale = [v9 currentLocale];
  v13 = [currentLocale objectForKey:*MEMORY[0x1E695D9A8]];
  lowercaseString = [v13 lowercaseString];
  v15 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client_id=%@", dCopy, @"response_type=code"];

  v23[1] = v16;
  iCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirect_uri=%@", iCopy];

  v23[2] = iCopy;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"language=%@", v15];
  v23[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  if (usernameCopy)
  {
    usernameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"login_hint=%@", usernameCopy];
    v21 = [v19 arrayByAddingObject:usernameCopy];

    v19 = v21;
  }

  return v19;
}

@end
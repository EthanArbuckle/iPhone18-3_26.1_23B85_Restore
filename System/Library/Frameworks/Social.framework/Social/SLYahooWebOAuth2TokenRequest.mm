@interface SLYahooWebOAuth2TokenRequest
+ (id)_urlRequestForParams:(id)params clientID:(id)d secret:(id)secret tokenURL:(id)l;
+ (id)urlRequestForClientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code tokenURL:(id)l;
+ (id)urlRequestForClientID:(id)d secret:(id)secret refreshToken:(id)token tokenURL:(id)l;
@end

@implementation SLYahooWebOAuth2TokenRequest

+ (id)urlRequestForClientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code tokenURL:(id)l
{
  lCopy = l;
  codeCopy = code;
  iCopy = i;
  secretCopy = secret;
  dCopy = d;
  v17 = objc_opt_new();
  [v17 setObject:codeCopy forKeyedSubscript:@"code"];

  [v17 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v17 setObject:iCopy forKeyedSubscript:@"redirect_uri"];

  v18 = [self _urlRequestForParams:v17 clientID:dCopy secret:secretCopy tokenURL:lCopy];

  return v18;
}

+ (id)urlRequestForClientID:(id)d secret:(id)secret refreshToken:(id)token tokenURL:(id)l
{
  lCopy = l;
  tokenCopy = token;
  secretCopy = secret;
  dCopy = d;
  v14 = objc_opt_new();
  [v14 setObject:tokenCopy forKeyedSubscript:@"refresh_token"];

  [v14 setObject:@"refresh_token" forKeyedSubscript:@"grant_type"];
  v15 = objc_alloc_init(SLYahooWebClient);
  clientRedirect = [(SLYahooWebClient *)v15 clientRedirect];
  [v14 setObject:clientRedirect forKeyedSubscript:@"redirect_uri"];

  v17 = [self _urlRequestForParams:v14 clientID:dCopy secret:secretCopy tokenURL:lCopy];

  return v17;
}

+ (id)_urlRequestForParams:(id)params clientID:(id)d secret:(id)secret tokenURL:(id)l
{
  v46 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  dCopy = d;
  secretCopy = secret;
  lCopy = l;
  v39 = paramsCopy;
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(paramsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [paramsCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v39 objectForKeyedSubscript:v14];
        v16 = MEMORY[0x1E696AEC0];
        uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v18 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v20 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
        v21 = [v16 stringWithFormat:@"%@=%@", v18, v20];

        [v40 addObject:v21];
      }

      v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }

  obja = [v40 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v22 = [obja componentsJoinedByString:@"&"];
  v23 = MEMORY[0x1E696AD68];
  v24 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
  v25 = [v23 requestWithURL:v24];

  v26 = [v22 dataUsingEncoding:4];
  [v25 setHTTPBody:v26];

  [v25 setCachePolicy:1];
  [v25 setHTTPMethod:@"POST"];
  secretCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", dCopy, secretCopy];
  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  v29 = [secretCopy dataUsingEncoding:4];
  v30 = [v29 base64EncodedDataWithOptions:0];
  v31 = [v28 initWithData:v30 encoding:4];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v31];

  [v25 setValue:v32 forHTTPHeaderField:@"Authorization"];
  [v25 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v25;
}

@end
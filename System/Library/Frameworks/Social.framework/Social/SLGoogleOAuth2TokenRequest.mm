@interface SLGoogleOAuth2TokenRequest
+ (id)_urlRequestForParams:(id)params tokenURL:(id)l;
+ (id)urlRequestForClientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code tokenURL:(id)l codeVerifier:(id)verifier;
+ (id)urlRequestForClientID:(id)d secret:(id)secret refreshToken:(id)token tokenURL:(id)l;
@end

@implementation SLGoogleOAuth2TokenRequest

+ (id)urlRequestForClientID:(id)d secret:(id)secret redirectURI:(id)i authCode:(id)code tokenURL:(id)l codeVerifier:(id)verifier
{
  secretCopy = secret;
  lCopy = l;
  verifierCopy = verifier;
  v17 = MEMORY[0x1E695DF90];
  codeCopy = code;
  iCopy = i;
  dCopy = d;
  dictionary = [v17 dictionary];
  [dictionary setObject:codeCopy forKeyedSubscript:@"code"];

  [dictionary setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [dictionary setObject:iCopy forKeyedSubscript:@"redirect_uri"];

  [dictionary setObject:dCopy forKeyedSubscript:@"client_id"];
  [dictionary setObject:@"true" forKeyedSubscript:@"enable_granular_consent"];
  [dictionary setObject:@"true" forKeyedSubscript:@"include_granted_scopes"];
  if (secretCopy)
  {
    [dictionary setObject:secretCopy forKeyedSubscript:@"client_secret"];
  }

  if (verifierCopy)
  {
    [dictionary setObject:verifierCopy forKeyedSubscript:@"code_verifier"];
  }

  v22 = [self _urlRequestForParams:dictionary tokenURL:lCopy];

  return v22;
}

+ (id)urlRequestForClientID:(id)d secret:(id)secret refreshToken:(id)token tokenURL:(id)l
{
  secretCopy = secret;
  lCopy = l;
  tokenCopy = token;
  dCopy = d;
  v14 = objc_opt_new();
  [v14 setObject:tokenCopy forKeyedSubscript:@"refresh_token"];

  [v14 setObject:@"refresh_token" forKeyedSubscript:@"grant_type"];
  [v14 setObject:dCopy forKeyedSubscript:@"client_id"];

  [v14 setObject:@"true" forKeyedSubscript:@"enable_granular_consent"];
  [v14 setObject:@"true" forKeyedSubscript:@"include_granted_scopes"];
  if (secretCopy)
  {
    [v14 setObject:secretCopy forKeyedSubscript:@"client_secret"];
  }

  v15 = [self _urlRequestForParams:v14 tokenURL:lCopy];

  return v15;
}

+ (id)_urlRequestForParams:(id)params tokenURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  lCopy = l;
  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(paramsCopy, "count")}];
  v28 = paramsCopy;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [paramsCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v28 objectForKeyedSubscript:v10];
        v12 = MEMORY[0x1E696AEC0];
        uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v14 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
        uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v16 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];
        v17 = [v12 stringWithFormat:@"%@=%@", v14, v16];

        [v27 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v18 = [v27 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v19 = [v18 componentsJoinedByString:@"&"];
  v20 = MEMORY[0x1E696AD68];
  v21 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
  v22 = [v20 requestWithURL:v21];

  v23 = [v19 dataUsingEncoding:4];
  [v22 setHTTPBody:v23];

  [v22 setCachePolicy:1];
  [v22 setHTTPMethod:@"POST"];
  [v22 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  return v22;
}

@end
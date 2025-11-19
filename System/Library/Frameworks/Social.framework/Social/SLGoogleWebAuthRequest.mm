@interface SLGoogleWebAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)a3;
+ (id)_parametersForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 codeChallenge:(id)a7;
+ (id)authCodeFromRedirectURL:(id)a3;
+ (id)authCodeFromWebPageTitle:(id)a3;
+ (id)requestForURL:(id)a3;
+ (id)urlForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7 codeChallenge:(id)a8;
+ (id)urlRequestForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7;
+ (void)clearCookiesFromStorage:(id)a3 authRequestURL:(id)a4;
@end

@implementation SLGoogleWebAuthRequest

+ (void)clearCookiesFromStorage:(id)a3 authRequestURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/", a4];
  v8 = [v6 URLWithString:v7];

  v9 = [v5 cookiesForURL:v8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 deleteCookie:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

+ (id)urlForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 authRequestURL:(id)a7 codeChallenge:(id)a8
{
  v14 = a7;
  v15 = [a1 _parametersForClientID:a3 redirectURI:a4 scope:a5 username:a6 codeChallenge:a8];
  v16 = [v15 componentsJoinedByString:@"&"];
  v17 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v17];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@", v14, v18];

  v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];

  return v20;
}

+ (id)_parametersForClientID:(id)a3 redirectURI:(id)a4 scope:(id)a5 username:(id)a6 codeChallenge:(id)a7
{
  v27[7] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [a5 componentsJoinedByString:@" "];
  v27[0] = @"response_type=code";
  v27[1] = @"enable_granular_consent=true";
  v27[2] = @"include_granted_scopes=true";
  v27[3] = @"prompt=consent";
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"client_id=%@", v14];

  v27[4] = v16;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirect_uri=%@", v13];

  v27[5] = v17;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scope=%@", v15];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  if (v11)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"login_hint=%@", v11];
    v21 = [v19 arrayByAddingObject:v20];

    v19 = v21;
  }

  if (v12)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"code_challenge=%@", v12];
    v26[0] = v22;
    v26[1] = @"code_challenge_method=S256";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v24 = [v19 arrayByAddingObjectsFromArray:v23];

    v19 = v24;
  }

  return v19;
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
  v3 = [a3 absoluteString];
  v4 = [v3 hasPrefix:@"https://accounts.google.com/o/oauth2/approval"];

  return v4;
}

+ (id)authCodeFromWebPageTitle:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"Success code="])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"Success code=", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)authCodeFromRedirectURL:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 queryItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SLGoogleWebAuthRequest_authCodeFromRedirectURL___block_invoke;
  v8[3] = &unk_1E8176210;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __50__SLGoogleWebAuthRequest_authCodeFromRedirectURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 name];
  v7 = [v6 caseInsensitiveCompare:@"code"];

  if (!v7)
  {
    v8 = [v11 value];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

@end
@interface SLGoogleWebAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)code;
+ (id)_parametersForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username codeChallenge:(id)challenge;
+ (id)authCodeFromRedirectURL:(id)l;
+ (id)authCodeFromWebPageTitle:(id)title;
+ (id)requestForURL:(id)l;
+ (id)urlForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l codeChallenge:(id)challenge;
+ (id)urlRequestForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l;
+ (void)clearCookiesFromStorage:(id)storage authRequestURL:(id)l;
@end

@implementation SLGoogleWebAuthRequest

+ (void)clearCookiesFromStorage:(id)storage authRequestURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/", l];
  v8 = [v6 URLWithString:v7];

  v9 = [storageCopy cookiesForURL:v8];
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

        [storageCopy deleteCookie:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

+ (id)urlForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username authRequestURL:(id)l codeChallenge:(id)challenge
{
  lCopy = l;
  v15 = [self _parametersForClientID:d redirectURI:i scope:scope username:username codeChallenge:challenge];
  v16 = [v15 componentsJoinedByString:@"&"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v18 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@", lCopy, v18];

  v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];

  return v20;
}

+ (id)_parametersForClientID:(id)d redirectURI:(id)i scope:(id)scope username:(id)username codeChallenge:(id)challenge
{
  v27[7] = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  challengeCopy = challenge;
  iCopy = i;
  dCopy = d;
  v15 = [scope componentsJoinedByString:@" "];
  v27[0] = @"response_type=code";
  v27[1] = @"enable_granular_consent=true";
  v27[2] = @"include_granted_scopes=true";
  v27[3] = @"prompt=consent";
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"client_id=%@", dCopy];

  v27[4] = dCopy;
  iCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"redirect_uri=%@", iCopy];

  v27[5] = iCopy;
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scope=%@", v15];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  if (usernameCopy)
  {
    usernameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"login_hint=%@", usernameCopy];
    v21 = [v19 arrayByAddingObject:usernameCopy];

    v19 = v21;
  }

  if (challengeCopy)
  {
    challengeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"code_challenge=%@", challengeCopy];
    v26[0] = challengeCopy;
    v26[1] = @"code_challenge_method=S256";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v24 = [v19 arrayByAddingObjectsFromArray:v23];

    v19 = v24;
  }

  return v19;
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
  absoluteString = [code absoluteString];
  v4 = [absoluteString hasPrefix:@"https://accounts.google.com/o/oauth2/approval"];

  return v4;
}

+ (id)authCodeFromWebPageTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy hasPrefix:@"Success code="])
  {
    v4 = [titleCopy substringFromIndex:{objc_msgSend(@"Success code=", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)authCodeFromRedirectURL:(id)l
{
  lCopy = l;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  queryItems = [v4 queryItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SLGoogleWebAuthRequest_authCodeFromRedirectURL___block_invoke;
  v8[3] = &unk_1E8176210;
  v8[4] = &v9;
  [queryItems enumerateObjectsUsingBlock:v8];

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
@interface SLWebTokenHandlerController
+ (id)emailAddressFromIdToken:(id)token;
- (SLWebTokenHandlerController)initWithWebClient:(id)client;
- (void)_exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forTokensWithCompletion:(id)completion;
- (void)_fetchNamesForAuthResponse:(id)response completion:(id)completion;
- (void)_fetchNamesForToken:(id)token usingFallbackURL:(id)l completion:(id)completion;
- (void)exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forAccountResponse:(id)response;
- (void)exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forTokensAndUsernameWithCompletion:(id)completion;
@end

@implementation SLWebTokenHandlerController

- (SLWebTokenHandlerController)initWithWebClient:(id)client
{
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = SLWebTokenHandlerController;
  v6 = [(SLWebTokenHandlerController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClient, client);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.social.exchangeAuthTokenQueue", v8);
    webClientQueue = v7->_webClientQueue;
    v7->_webClientQueue = v9;
  }

  return v7;
}

- (void)exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forTokensAndUsernameWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forTokensAndUsernameWithCompletion___block_invoke;
  v12[3] = &unk_1E8175810;
  v13 = completionCopy;
  v11 = completionCopy;
  [(SLWebTokenHandlerController *)self exchangeAuthCode:code usingRedirect:redirect codeVerifier:verifier forAccountResponse:v12];
}

void __110__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forTokensAndUsernameWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v12 = [v6 token];
  v7 = [v6 refreshToken];
  v8 = [v6 idToken];
  v9 = [v6 expiryDate];
  v10 = [v6 usernames];
  v11 = [v6 displayName];

  (*(v4 + 16))(v4, v12, v7, v8, v9, v10, v11, v5);
}

- (void)exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forAccountResponse:(id)response
{
  responseCopy = response;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forAccountResponse___block_invoke;
  v12[3] = &unk_1E8175860;
  v12[4] = self;
  v13 = responseCopy;
  v11 = responseCopy;
  [(SLWebTokenHandlerController *)self _exchangeAuthCode:code usingRedirect:redirect codeVerifier:verifier forTokensWithCompletion:v12];
}

void __94__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forAccountResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forAccountResponse___block_invoke_2;
    v5[3] = &unk_1E8175838;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 _fetchNamesForAuthResponse:v6 completion:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __94__SLWebTokenHandlerController_exchangeAuthCode_usingRedirect_codeVerifier_forAccountResponse___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = *(a1 + 40);
  if (v12)
  {
    v9 = a4;
    v10 = [[SLWebTokenHandlerResponse alloc] initWithTokenResponse:*(a1 + 32) usernames:v12 displayname:v7];
    (*(v8 + 16))(v8, v10, v9);
  }

  else
  {
    v11 = *(v8 + 16);
    v10 = a4;
    v11(v8, 0, v10);
  }
}

- (void)_exchangeAuthCode:(id)code usingRedirect:(id)redirect codeVerifier:(id)verifier forTokensWithCompletion:(id)completion
{
  codeCopy = code;
  redirectCopy = redirect;
  verifierCopy = verifier;
  completionCopy = completion;
  webClientQueue = self->_webClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SLWebTokenHandlerController__exchangeAuthCode_usingRedirect_codeVerifier_forTokensWithCompletion___block_invoke;
  block[3] = &unk_1E81758B0;
  block[4] = self;
  v20 = redirectCopy;
  v21 = codeCopy;
  v22 = verifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = verifierCopy;
  v17 = codeCopy;
  v18 = redirectCopy;
  dispatch_async(webClientQueue, block);
}

void __100__SLWebTokenHandlerController__exchangeAuthCode_usingRedirect_codeVerifier_forTokensWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) tokenRequestClass];
  v4 = [*(*(a1 + 32) + 16) clientID];
  v5 = [*(*(a1 + 32) + 16) clientSecret];
  v6 = *(a1 + 40);
  v7 = v6;
  if (!v6)
  {
    v7 = [*(*(a1 + 32) + 16) clientRedirect];
  }

  v8 = *(a1 + 48);
  v9 = [*(*(a1 + 32) + 16) tokenURL];
  v10 = [v3 urlRequestForClientID:v4 secret:v5 redirectURI:v7 authCode:v8 tokenURL:v9 codeVerifier:*(a1 + 56)];

  if (!v6)
  {
  }

  _SLLog(v1, 7, @"Sending SLWebOAuth2TokenRequest");
  v11 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v12 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v11];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __100__SLWebTokenHandlerController__exchangeAuthCode_usingRedirect_codeVerifier_forTokensWithCompletion___block_invoke_2;
  v17 = &unk_1E8175888;
  v18 = *(a1 + 32);
  v19 = *(a1 + 64);
  v13 = [v12 dataTaskWithRequest:v10 completionHandler:&v14];
  [v13 resume];
}

void __100__SLWebTokenHandlerController__exchangeAuthCode_usingRedirect_codeVerifier_forTokensWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 32) + 16);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [objc_alloc(objc_msgSend(v7 "tokenResponseClass"))];

  v12 = [v11 error];

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = [v11 error];
    (*(v13 + 16))(v13, 0, v14);
LABEL_8:

    goto LABEL_9;
  }

  if ([v11 statusCode] != 200 || (objc_msgSend(v11, "token"), (v15 = objc_claimAutoreleasedReturnValue()) == 0) || (v16 = v15, objc_msgSend(v11, "refreshToken"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "statusCode")}];
    v20 = [v11 errorMessage];
    v14 = [v18 stringWithFormat:@"Server failed to exchange auth code for tokens, with status code %@ and error message %@", v19, v20];

    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E6959978];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v24 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))();
LABEL_9:
}

+ (id)emailAddressFromIdToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (tokenCopy)
  {
    v6 = [tokenCopy componentsSeparatedByString:@"."];
    if ([v6 count] == 3)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [v7 stringByPaddingToLength:(objc_msgSend(v7 withString:"length") & 3) + objc_msgSend(v7 startingAtIndex:{"length"), @"=", 0}];

      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      if (v9)
      {
        v15 = 0;
        v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v15];
        v11 = v15;
        v12 = v11;
        if (!v10 || v11)
        {
          _SLLog(v3, 3, @"error decoding id token: %@");
          v13 = 0;
        }

        else
        {
          v13 = [v10 objectForKeyedSubscript:@"email"];
        }
      }

      else
      {
        _SLLog(v3, 3, @"error decoding base64 data ,got back nil: %{private}@");
        v13 = 0;
      }
    }

    else
    {
      [v6 count];
      _SLLog(v3, 3, @"id token has unexpected number of components: %d");
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_fetchNamesForAuthResponse:(id)response completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  webClientQueue = self->_webClientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SLWebTokenHandlerController__fetchNamesForAuthResponse_completion___block_invoke;
  block[3] = &unk_1E8175900;
  v12 = responseCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = responseCopy;
  dispatch_async(webClientQueue, block);
}

void __69__SLWebTokenHandlerController__fetchNamesForAuthResponse_completion___block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x1E696AF68];
  v4 = [*(a1 + 32) token];
  v5 = [*(*(a1 + 40) + 16) userInfoURL];
  v6 = [v3 sl_urlRequestWithToken:v4 forURLString:v5];

  v11 = [*(*(a1 + 40) + 16) userInfoURL];
  _SLLog(v1, 7, @"Sending SLWebUserInfoRequest to %@");

  v7 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v8 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__SLWebTokenHandlerController__fetchNamesForAuthResponse_completion___block_invoke_2;
  v12[3] = &unk_1E81758D8;
  v9 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v14 = v9;
  v13 = *(a1 + 32);
  v10 = [v8 dataTaskWithRequest:v6 completionHandler:v12];
  [v10 resume];
}

void __69__SLWebTokenHandlerController__fetchNamesForAuthResponse_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 32) + 16);
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [objc_alloc(objc_msgSend(v8 "webUserInfoResponseClass"))];

  v13 = [v12 error];

  if (!v13)
  {
    if ([v12 statusCode] == 200 && (objc_msgSend(v12, "emailAddresses"), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v12, "emailAddresses"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, v19))
    {
      v20 = *(a1 + 48);
      v15 = [v12 emailAddresses];
      v21 = [v12 displayName];
      (*(v20 + 16))(v20, v15, v21, 0);
    }

    else
    {
      _SLLog(v4, 3, @"Problem occurred with user info request. Extracting email address from id token.");
      v22 = [*(a1 + 40) idToken];
      v15 = [SLWebTokenHandlerController emailAddressFromIdToken:v22];

      if (v15)
      {
        v23 = *(a1 + 48);
        v36[0] = v15;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        v24 = [v12 displayName];
        (*(v23 + 16))(v23, v21, v24, 0);
      }

      else
      {
        _SLLog(v4, 3, @"Could not extract email address from id token.");
        v21 = [*(*(a1 + 32) + 16) fallbackUserInfoURL];
        if (v21)
        {
          _SLLog(v4, 3, @"Trying fallbackUserInfoURL.");
          v25 = *(a1 + 32);
          v26 = [*(a1 + 40) token];
          [v25 _fetchNamesForToken:v26 usingFallbackURL:v21 completion:*(a1 + 48)];

          goto LABEL_12;
        }

        _SLLog(v4, 3, @"No fallbackUserInfoURL. Fetch names failed.");
        v27 = MEMORY[0x1E696AEC0];
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
        v29 = [v12 errorMessage];
        v24 = [v27 stringWithFormat:@"Server failed to return user info emailAddresses, with status code %@ and error message %@", v28, v29];

        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E6959978];
        v34 = *MEMORY[0x1E696A578];
        v35 = v24;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v33 = [v30 errorWithDomain:v31 code:1 userInfo:v32];

        (*(*(a1 + 48) + 16))();
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v14 = *(a1 + 48);
  v15 = [v12 error];
  (*(v14 + 16))(v14, 0, 0, v15);
LABEL_13:
}

- (void)_fetchNamesForToken:(id)token usingFallbackURL:(id)l completion:(id)completion
{
  tokenCopy = token;
  lCopy = l;
  completionCopy = completion;
  webClientQueue = self->_webClientQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__SLWebTokenHandlerController__fetchNamesForToken_usingFallbackURL_completion___block_invoke;
  v15[3] = &unk_1E8175928;
  v16 = tokenCopy;
  v17 = lCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = tokenCopy;
  dispatch_async(webClientQueue, v15);
}

void __79__SLWebTokenHandlerController__fetchNamesForToken_usingFallbackURL_completion___block_invoke(void *a1)
{
  v3 = [MEMORY[0x1E696AF68] sl_urlRequestWithToken:a1[4] forURLString:a1[5]];
  _SLLog(v1, 7, @"Fallback: Sending SLWebUserInfoRequest");
  v4 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  v5 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v4];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __79__SLWebTokenHandlerController__fetchNamesForToken_usingFallbackURL_completion___block_invoke_2;
  v11 = &unk_1E8175888;
  v6 = a1[7];
  v12 = a1[6];
  v13 = v6;
  v7 = [v5 dataTaskWithRequest:v3 completionHandler:&v8];
  [v7 resume];
}

void __79__SLWebTokenHandlerController__fetchNamesForToken_usingFallbackURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 32) + 16);
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [objc_alloc(objc_msgSend(v8 "fallbackWebUserInfoResponseClass"))];

  v13 = [v12 error];

  if (v13)
  {
    v14 = *(a1 + 40);
    v15 = [v12 error];
    (*(v14 + 16))(v14, 0, 0, v15);
  }

  else
  {
    if ([v12 statusCode] == 200 && (objc_msgSend(v12, "emailAddresses"), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v12, "emailAddresses"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, v19))
    {
      v20 = *(a1 + 40);
      v15 = [v12 emailAddresses];
      v21 = [v12 displayName];
      (*(v20 + 16))(v20, v15, v21, 0);
    }

    else
    {
      _SLLog(v4, 3, @"Fallback: Problem occurred with user info request. Fetch names failed.");
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
      v24 = [v12 errorMessage];
      v15 = [v22 stringWithFormat:@"Server failed to return user info emailAddresses, with status code %@ and error message %@", v23, v24];

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E6959978];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = v15;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v21 = [v25 errorWithDomain:v26 code:1 userInfo:v27];

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, v21);
    }
  }
}

@end
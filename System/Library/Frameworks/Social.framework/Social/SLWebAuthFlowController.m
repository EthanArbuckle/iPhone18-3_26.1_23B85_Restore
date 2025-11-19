@interface SLWebAuthFlowController
- (BOOL)shouldHideWebViewForLoadWithRequest:(id)a3;
- (SLWebAuthFlowController)initWithWebClient:(id)a3;
- (id)authURLForUsername:(id)a3;
- (id)requestForAuthURL:(id)a3;
- (void)setAuthFlowCompletion:(id)a3;
- (void)webViewDidFinishLoadWithPageTitleSupplier:(id)a3;
@end

@implementation SLWebAuthFlowController

- (SLWebAuthFlowController)initWithWebClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SLWebAuthFlowController;
  v6 = [(SLWebAuthFlowController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClient, a3);
  }

  return v7;
}

- (void)setAuthFlowCompletion:(id)a3
{
  self->_completion = MEMORY[0x1C6917BF0](a3, a2);

  MEMORY[0x1EEE66BB8]();
}

- (id)authURLForUsername:(id)a3
{
  v4 = a3;
  v5 = [(SLWebAuthFlowController *)self webClient];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SLWebClient *)self->_webClient defaultScope];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SLWebClient *)self->_webClient webAuthRequestClass];
  v9 = [(SLWebClient *)self->_webClient clientID];
  v10 = [(SLWebClient *)self->_webClient clientRedirect];
  v11 = [(SLWebClient *)self->_webClient authRequestURL];
  v12 = [v8 urlForClientID:v9 redirectURI:v10 scope:v7 username:v4 authRequestURL:v11];

  return v12;
}

- (id)requestForAuthURL:(id)a3
{
  webClient = self->_webClient;
  v4 = a3;
  v5 = [-[SLWebClient webAuthRequestClass](webClient "webAuthRequestClass")];

  v6 = [v5 mutableCopy];

  return v6;
}

- (BOOL)shouldHideWebViewForLoadWithRequest:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(SLWebClient *)self->_webClient webAuthRequestClass];
  v8 = [v6 URL];
  LODWORD(v7) = [v7 urlPageWillContainAuthorizationCode:v8];

  if (v7)
  {
    _SLLog(v3, 7, @"SLWebAuthFlowController shouldHideWebViewForLoadWithRequest: waiting for authentication code in page load url");
    objc_storeStrong(&self->_requestWithAuthorizationCode, a3);
    v9 = 1;
  }

  else
  {
    v10 = MEMORY[0x1E696AF20];
    v11 = [v6 URL];
    v12 = [v10 componentsWithURL:v11 resolvingAgainstBaseURL:0];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v12 queryItems];
    v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    v9 = v13 != 0;
    if (v13)
    {
      v14 = v13;
      v28 = v13 != 0;
      v29 = self;
      v30 = v12;
      v31 = v6;
      v15 = 0;
      v16 = 0;
      v17 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = [v19 name];
          v21 = [@"account" isEqualToString:v20];

          if (v21)
          {
            v22 = [v19 value];

            v15 = v22;
          }

          v23 = [v19 name];
          v24 = [@"email" isEqualToString:v23];

          if (v24)
          {
            v25 = [v19 value];

            v16 = v25;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);

      v9 = 0;
      if (v16)
      {
        v12 = v30;
        v6 = v31;
        if (v15)
        {
          if ([v15 isEqualToString:@"yahoo_japan"])
          {
            v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v16];
            obja = v29->_yahooJapanUserName;
            v29->_yahooJapanUserName = v26;
            v9 = v28;
          }

          else
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v12 = v30;
        v6 = v31;
      }
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }
  }

  return v9;
}

- (void)webViewDidFinishLoadWithPageTitleSupplier:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_requestWithAuthorizationCode)
  {
    v5 = [-[SLWebClient webAuthRequestClass](self->_webClient "webAuthRequestClass")];
    if ([v5 length])
    {
      v6 = [[SLWebTokenHandlerController alloc] initWithWebClient:self->_webClient];
      v7 = [(SLWebClient *)self->_webClient clientRedirect];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke;
      v11[3] = &unk_1E81762A8;
      v5 = v5;
      v12 = v5;
      v13 = self;
      [(SLWebTokenHandlerController *)v6 exchangeAuthCode:v5 usingRedirect:v7 codeVerifier:0 forTokensAndUsernameWithCompletion:v11];

LABEL_8:
      goto LABEL_9;
    }

    v10 = *(self->_completion + 2);
LABEL_7:
    v10();
    goto LABEL_8;
  }

  if (self->_yahooJapanUserName)
  {
    v8 = MEMORY[0x1E695DF20];
    v14[0] = self->_yahooJapanUserName;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v5 = [v8 dictionaryWithObject:v9 forKey:@"usernames"];

    v10 = *(self->_completion + 2);
    goto LABEL_7;
  }

LABEL_9:
}

void __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke_2;
  block[3] = &unk_1E8176280;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = *(a1 + 32);
  v28 = v16;
  v29 = *(a1 + 40);
  v30 = v17;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 40)) != 0 && (v4 = *(a1 + 48)) != 0)
  {
    v8[0] = @"authCode";
    v8[1] = @"token";
    v9[0] = *(a1 + 56);
    v9[1] = v2;
    v8[2] = @"refreshToken";
    v8[3] = @"usernames";
    v9[2] = v3;
    v9[3] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
    if ([*(a1 + 64) length])
    {
      v6 = [v5 mutableCopy];
      [v6 setObject:*(a1 + 64) forKey:@"displayName"];

      v5 = v6;
    }

    (*(*(*(a1 + 72) + 16) + 16))();
  }

  else
  {
    v7 = *(*(*(a1 + 72) + 16) + 16);

    v7();
  }
}

@end
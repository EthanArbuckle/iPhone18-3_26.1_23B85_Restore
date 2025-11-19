@interface AKIDPHandler
- (AKIDPHandler)initWithConfiguration:(id)a3 withCompletionHandler:(id)a4;
- (AKIDPHandlerDelegate)delegate;
- (id)_safeACSDictionaryFromResult:(id)a3;
- (id)_samlJavaScriptQuery;
- (id)_sanitizeError:(id)a3;
- (void)_completeFlowWithError:(id)a3;
- (void)_completeWithACSPostRequestFromWebView:(id)a3;
- (void)cancel;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5;
@end

@implementation AKIDPHandler

- (AKIDPHandler)initWithConfiguration:(id)a3 withCompletionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v4 = v18;
  v18 = 0;
  v15.receiver = v4;
  v15.super_class = AKIDPHandler;
  v14 = [(AKIDPHandler *)&v15 init];
  v18 = v14;
  objc_storeStrong(&v18, v14);
  if (v14)
  {
    objc_storeStrong(&v18->_configuration, location[0]);
    v5 = MEMORY[0x223DB6C90](v16);
    completion = v18->_completion;
    v18->_completion = v5;
    MEMORY[0x277D82BD8](completion);
    v11 = [AKURLRequestApprover alloc];
    v12 = [location[0] whitelistedPathURLs];
    v7 = [(AKURLRequestApprover *)v11 initWithWhitelistedPaths:?];
    redirectApprover = v18->_redirectApprover;
    v18->_redirectApprover = v7;
    MEMORY[0x277D82BD8](redirectApprover);
    MEMORY[0x277D82BD8](v12);
  }

  v10 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v10;
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKIDPHandler *)self _completeFlowWithError:?];
  MEMORY[0x277D82BD8](v3);
}

- (id)_safeACSDictionaryFromResult:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] mutableCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKIDPHandler *)v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 IDPHandler:v8 didFinishLoadingPageInWebView:location[0]];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_samlJavaScriptQuery
{
  v10[2] = self;
  v10[1] = a2;
  v6 = MEMORY[0x277CCACA8];
  v5 = v10[0];
  v8 = [MEMORY[0x277CF02F0] bagForAltDSID:?];
  v7 = [v8 acsURL];
  v2 = [v6 stringWithFormat:v5, v7];
  v3 = v10[0];
  v10[0] = v2;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v9;
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  redirectApprover = v41->_redirectApprover;
  v29 = [v39 request];
  v30 = [(AKURLRequestApprover *)redirectApprover shouldAllowRequest:?];
  MEMORY[0x277D82BD8](v29);
  v37 = v30;
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v39 request];
    __os_log_helper_16_2_1_8_64(v44, v25);
    _os_log_debug_impl(&dword_222379000, v36, v35, "Processing IDP URL navigation: %@", v44, 0xCu);
    MEMORY[0x277D82BD8](v25);
  }

  objc_storeStrong(&v36, 0);
  v23 = [v39 request];
  v22 = [v23 URL];
  v21 = [v22 absoluteString];
  v20 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
  v19 = [v20 acsURL];
  v18 = [v19 absoluteString];
  v24 = [v21 hasPrefix:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v5 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if (v24)
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v34;
      v17 = v33;
      __os_log_helper_16_0_0(v32);
      _os_log_impl(&dword_222379000, v16, v17, "We reached the acsURL path, canceling the webView and providing the request to idMS", v32, 2u);
    }

    objc_storeStrong(&v34, 0);
    v37 = 0;
    v14 = [v39 request];
    v13 = [v14 HTTPMethod];
    v15 = [v13 isEqualToString:@"GET"];
    MEMORY[0x277D82BD8](v13);
    *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if (v15)
    {
      v12 = [(AKIDPHandler *)v41 completion];
      v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
      if (v12)
      {
        v11 = [(AKIDPHandler *)v41 completion];
        v42 = *MEMORY[0x277CF0088];
        v10 = [v39 request];
        v9 = [v10 URL];
        v43 = v9;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v11[2](v11, 0);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        *&v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
        [(AKIDPHandler *)v41 setCompletion:0, v7];
      }
    }

    else
    {
      [(AKIDPHandler *)v41 _completeWithACSPostRequestFromWebView:location[0], v6];
    }
  }

  v31 = [(AKIDPHandler *)v41 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v31 IDPHandler:v41 didStartLoadingPageInWebView:location[0]];
  }

  (*(v38 + 2))(v38, v37);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKIDPHandler *)v10 _completeFlowWithError:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)a3 didReceiveAuthenticationChallenge:(id)a4 completionHandler:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  (*(v7 + 2))(v7, 1, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_completeWithACSPostRequestFromWebView:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(AKIDPHandler *)v13 _samlJavaScriptQuery];
  v4 = location[0];
  v3 = v11;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__AKIDPHandler__completeWithACSPostRequestFromWebView___block_invoke;
  v9 = &unk_2784A7628;
  v10 = MEMORY[0x277D82BE0](v13);
  [v4 evaluateJavaScript:v3 completionHandler:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __55__AKIDPHandler__completeWithACSPostRequestFromWebView___block_invoke(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[1] = a1;
  v14[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v19, location[0], v15);
    _os_log_debug_impl(&dword_222379000, v14[0], v13, "Evaluating ACS result: %@, error: %@", v19, 0x16u);
  }

  objc_storeStrong(v14, 0);
  v12 = [a1[4] _safeACSDictionaryFromResult:location[0]];
  if (v12)
  {
    v11 = [v12 objectForKeyedSubscript:?];
    [v12 removeObjectForKey:@"acs_action"];
    v10 = [v12 aaf_toUrlQueryString];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    if (v10 && v9)
    {
      v6 = [a1[4] completion];
      *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (v6)
      {
        v5 = [a1[4] completion];
        v17[0] = *MEMORY[0x277CF0080];
        v18[0] = v10;
        v17[1] = *MEMORY[0x277CF0088];
        v18[1] = v9;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
        v5[2](v5, 0);
        MEMORY[0x277D82BD8](v4);
        [a1[4] setCompletion:{0, MEMORY[0x277D82BD8](v5).n128_f64[0]}];
      }
    }

    else
    {
      [a1[4] _completeFlowWithError:v15];
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    [a1[4] _completeFlowWithError:v15];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_sanitizeError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = MEMORY[0x277D82BE0](location[0]);
  if (v14)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v19, location[0]);
      _os_log_error_impl(&dword_222379000, v12, v11, "IDP error: %@", v19, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v10 = [(AKIDPHandler *)v16 delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [v10 IDPHandler:v16 sanitizeError:v14];
      v4 = v14;
      v14 = v3;
      MEMORY[0x277D82BD8](v4);
    }

    if (![location[0] ak_isAuthenticationErrorWithCode:{objc_msgSend(location[0], "code")}])
    {
      v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7019];
      v6 = v14;
      v14 = v5;
      MEMORY[0x277D82BD8](v6);
    }

    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, v14);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Sanitized IDP error: %@", v18, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v17 = MEMORY[0x277D82BE0](v14);
    v13 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v17 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v17;

  return v7;
}

- (void)_completeFlowWithError:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(AKIDPHandler *)v9 completion];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(AKIDPHandler *)v9 completion];
    v5 = [(AKIDPHandler *)v9 _sanitizeError:location[0]];
    v6[2](v6, 0);
    MEMORY[0x277D82BD8](v5);
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(AKIDPHandler *)v9 setCompletion:0, v4];
  }

  objc_storeStrong(location, 0);
}

- (AKIDPHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
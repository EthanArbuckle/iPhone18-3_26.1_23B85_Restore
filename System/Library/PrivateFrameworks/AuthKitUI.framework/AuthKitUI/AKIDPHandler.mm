@interface AKIDPHandler
- (AKIDPHandler)initWithConfiguration:(id)configuration withCompletionHandler:(id)handler;
- (AKIDPHandlerDelegate)delegate;
- (id)_safeACSDictionaryFromResult:(id)result;
- (id)_samlJavaScriptQuery;
- (id)_sanitizeError:(id)error;
- (void)_completeFlowWithError:(id)error;
- (void)_completeWithACSPostRequestFromWebView:(id)view;
- (void)cancel;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler;
@end

@implementation AKIDPHandler

- (AKIDPHandler)initWithConfiguration:(id)configuration withCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v16 = 0;
  objc_storeStrong(&v16, handler);
  v4 = selfCopy;
  selfCopy = 0;
  v15.receiver = v4;
  v15.super_class = AKIDPHandler;
  v14 = [(AKIDPHandler *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    objc_storeStrong(&selfCopy->_configuration, location[0]);
    v5 = MEMORY[0x223DB6C90](v16);
    completion = selfCopy->_completion;
    selfCopy->_completion = v5;
    MEMORY[0x277D82BD8](completion);
    v11 = [AKURLRequestApprover alloc];
    whitelistedPathURLs = [location[0] whitelistedPathURLs];
    v7 = [(AKURLRequestApprover *)v11 initWithWhitelistedPaths:?];
    redirectApprover = selfCopy->_redirectApprover;
    selfCopy->_redirectApprover = v7;
    MEMORY[0x277D82BD8](redirectApprover);
    MEMORY[0x277D82BD8](whitelistedPathURLs);
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKIDPHandler *)self _completeFlowWithError:?];
  MEMORY[0x277D82BD8](v3);
}

- (id)_safeACSDictionaryFromResult:(id)result
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
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

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, navigation);
  delegate = [(AKIDPHandler *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate IDPHandler:selfCopy didFinishLoadingPageInWebView:location[0]];
  }

  objc_storeStrong(&delegate, 0);
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
  acsURL = [v8 acsURL];
  v2 = [v6 stringWithFormat:v5, acsURL];
  v3 = v10[0];
  v10[0] = v2;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](acsURL);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v9;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v39 = 0;
  objc_storeStrong(&v39, action);
  v38 = 0;
  objc_storeStrong(&v38, handler);
  redirectApprover = selfCopy->_redirectApprover;
  request = [v39 request];
  v30 = [(AKURLRequestApprover *)redirectApprover shouldAllowRequest:?];
  MEMORY[0x277D82BD8](request);
  v37 = v30;
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    request2 = [v39 request];
    __os_log_helper_16_2_1_8_64(v44, request2);
    _os_log_debug_impl(&dword_222379000, v36, v35, "Processing IDP URL navigation: %@", v44, 0xCu);
    MEMORY[0x277D82BD8](request2);
  }

  objc_storeStrong(&v36, 0);
  request3 = [v39 request];
  v22 = [request3 URL];
  absoluteString = [v22 absoluteString];
  v20 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
  acsURL = [v20 acsURL];
  absoluteString2 = [acsURL absoluteString];
  v24 = [absoluteString hasPrefix:?];
  MEMORY[0x277D82BD8](absoluteString2);
  MEMORY[0x277D82BD8](acsURL);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](absoluteString);
  MEMORY[0x277D82BD8](v22);
  v5 = MEMORY[0x277D82BD8](request3).n128_u64[0];
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
    request4 = [v39 request];
    hTTPMethod = [request4 HTTPMethod];
    v15 = [hTTPMethod isEqualToString:@"GET"];
    MEMORY[0x277D82BD8](hTTPMethod);
    *&v6 = MEMORY[0x277D82BD8](request4).n128_u64[0];
    if (v15)
    {
      completion = [(AKIDPHandler *)selfCopy completion];
      v5 = MEMORY[0x277D82BD8](completion).n128_u64[0];
      if (completion)
      {
        completion2 = [(AKIDPHandler *)selfCopy completion];
        v42 = *MEMORY[0x277CF0088];
        request5 = [v39 request];
        v9 = [request5 URL];
        v43 = v9;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        completion2[2](completion2, 0);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](request5);
        *&v7 = MEMORY[0x277D82BD8](completion2).n128_u64[0];
        [(AKIDPHandler *)selfCopy setCompletion:0, v7];
      }
    }

    else
    {
      [(AKIDPHandler *)selfCopy _completeWithACSPostRequestFromWebView:location[0], v6];
    }
  }

  delegate = [(AKIDPHandler *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate IDPHandler:selfCopy didStartLoadingPageInWebView:location[0]];
  }

  (*(v38 + 2))(v38, v37);
  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, navigation);
  v7 = 0;
  objc_storeStrong(&v7, error);
  [(AKIDPHandler *)selfCopy _completeFlowWithError:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)webView:(id)view didReceiveAuthenticationChallenge:(id)challenge completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v8 = 0;
  objc_storeStrong(&v8, challenge);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  (*(v7 + 2))(v7, 1, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_completeWithACSPostRequestFromWebView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  _samlJavaScriptQuery = [(AKIDPHandler *)selfCopy _samlJavaScriptQuery];
  v4 = location[0];
  v3 = _samlJavaScriptQuery;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__AKIDPHandler__completeWithACSPostRequestFromWebView___block_invoke;
  v9 = &unk_2784A7628;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  [v4 evaluateJavaScript:v3 completionHandler:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&_samlJavaScriptQuery, 0);
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

- (id)_sanitizeError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
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
    delegate = [(AKIDPHandler *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [delegate IDPHandler:selfCopy sanitizeError:v14];
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
    objc_storeStrong(&delegate, 0);
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

- (void)_completeFlowWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  completion = [(AKIDPHandler *)selfCopy completion];
  *&v3 = MEMORY[0x277D82BD8](completion).n128_u64[0];
  if (completion)
  {
    completion2 = [(AKIDPHandler *)selfCopy completion];
    v5 = [(AKIDPHandler *)selfCopy _sanitizeError:location[0]];
    completion2[2](completion2, 0);
    MEMORY[0x277D82BD8](v5);
    *&v4 = MEMORY[0x277D82BD8](completion2).n128_u64[0];
    [(AKIDPHandler *)selfCopy setCompletion:0, v4];
  }

  objc_storeStrong(location, 0);
}

- (AKIDPHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface SL
@end

@implementation SL

void __48__SL_OOPAWebViewController_setAuthFlowDelegate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didFinishWithSuccess:a2 response:v10 error:v7];
  }
}

void __40__SL_OOPAWebViewController__loadWebView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1048);
  v9 = v3;
  if (v4)
  {
    [v4 requestForAuthURL:v3];
  }

  else
  {
    [MEMORY[0x1E696AD68] requestWithURL:v3 cachePolicy:1 timeoutInterval:30.0];
  }
  v5 = ;
  v6 = *(a1 + 32);
  v7 = *(v6 + 992);
  if (v7)
  {
    v8 = [v7 loadRequest:v5];
  }

  else
  {
    [*(v6 + 1000) loadRequest:v5];
  }
}

void __40__SL_OOPAWebViewController__loadWebView__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__SL_OOPAWebViewController__loadWebView__block_invoke_3;
  v10[3] = &unk_1E8175E98;
  v11 = v5;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  v12 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __40__SL_OOPAWebViewController__loadWebView__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 40) _didFinishWithSuccess:0 response:0 error:*(a1 + 48)];
  }
}

uint64_t __85__SL_OOPAWebViewController__evaluateDocumentTitleForUIWebView_retryCount_completion___block_invoke(void *a1)
{
  _SLLog(v1, 3, @"No title for webview, re-trying...");
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7] - 1;

  return [v3 _evaluateDocumentTitleForUIWebView:v4 retryCount:v6 completion:v5];
}

void __83__SL_OOPAWebViewController__evaluateDocumentTitleForWebView_retryCount_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    _SLLog(v3, 3, @"Found title for webview");
    (*(a1[6] + 16))();
  }

  else
  {
    if (v7)
    {
      _SLLog(v3, 3, @"Error evaluating document title: %@");
    }

    v8 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__SL_OOPAWebViewController__evaluateDocumentTitleForWebView_retryCount_completion___block_invoke_2;
    block[3] = &unk_1E8175F10;
    v9 = a1[5];
    block[4] = a1[4];
    v10 = v9;
    v12 = a1[6];
    v11 = a1[7];
    v14 = v10;
    v16 = v11;
    v15 = v12;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __83__SL_OOPAWebViewController__evaluateDocumentTitleForWebView_retryCount_completion___block_invoke_2(void *a1)
{
  _SLLog(v1, 7, @"No title for webview, re-trying...");
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7] - 1;

  return [v3 _evaluateDocumentTitleForWebView:v4 retryCount:v6 completion:v5];
}

@end
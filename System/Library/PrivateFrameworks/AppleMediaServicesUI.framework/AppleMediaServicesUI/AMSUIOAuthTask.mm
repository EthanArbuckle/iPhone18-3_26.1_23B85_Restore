@interface AMSUIOAuthTask
- (AMSUIOAuthTask)initWithOAuthURL:(id)a3 customScheme:(id)a4 presentingViewController:(id)a5;
- (AMSUIOAuthTask)initWithOAuthURL:(id)a3 host:(id)a4 path:(id)a5 presentingViewController:(id)a6;
- (id)performTask;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
@end

@implementation AMSUIOAuthTask

- (AMSUIOAuthTask)initWithOAuthURL:(id)a3 customScheme:(id)a4 presentingViewController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AMSUIOAuthTask;
  v12 = [(AMSTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_oAuthURL, a3);
    v14 = [getASWebAuthenticationSessionCallbackClass() callbackWithCustomScheme:v10];
    callback = v13->_callback;
    v13->_callback = v14;

    objc_storeStrong(&v13->_presentingViewController, a5);
  }

  return v13;
}

- (AMSUIOAuthTask)initWithOAuthURL:(id)a3 host:(id)a4 path:(id)a5 presentingViewController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AMSUIOAuthTask;
  v15 = [(AMSTask *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_oAuthURL, a3);
    v17 = [getASWebAuthenticationSessionCallbackClass() callbackWithHTTPSHost:v12 path:v13];
    callback = v16->_callback;
    v16->_callback = v17;

    objc_storeStrong(&v16->_presentingViewController, a6);
  }

  return v16;
}

- (id)performTask
{
  v3 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getASWebAuthenticationSessionClass_softClass;
  v20 = getASWebAuthenticationSessionClass_softClass;
  if (!getASWebAuthenticationSessionClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getASWebAuthenticationSessionClass_block_invoke;
    v16[3] = &unk_1E7F241B0;
    v16[4] = &v17;
    __getASWebAuthenticationSessionClass_block_invoke(v16);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = [v4 alloc];
  v7 = [(AMSUIOAuthTask *)self oAuthURL];
  v8 = [(AMSUIOAuthTask *)self callback];
  v9 = [v3 completionHandlerAdapter];
  v10 = [v6 initWithURL:v7 callback:v8 completionHandler:v9];

  [v10 setPresentationContextProvider:self];
  [v10 setPrefersEphemeralWebBrowserSession:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__AMSUIOAuthTask_performTask__block_invoke;
  block[3] = &unk_1E7F242D0;
  v15 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__AMSUIOAuthTask_performTask__block_invoke_2;
  v13[3] = &unk_1E7F253C8;
  v13[4] = self;
  [v3 addFinishBlock:v13];

  return v3;
}

void __29__AMSUIOAuthTask_performTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = v13;
      if (v10)
      {
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v14, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      v22 = AMSHashIfNeeded();
      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v22;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Task finished successfully with a URL. url = %{public}@", buf, 0x16u);
      if (v10)
      {

        v15 = a1;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = *(a1 + 32);
      v19 = objc_opt_class();
      v20 = v19;
      if (v16)
      {
        a1 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v20, a1];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v19];
      }
      v21 = ;
      *buf = 138543618;
      v25 = v21;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Task finished with error. error = %{public}@", buf, 0x16u);
      if (v16)
      {

        v21 = a1;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = [(AMSUIOAuthTask *)self presentingViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  return v5;
}

@end
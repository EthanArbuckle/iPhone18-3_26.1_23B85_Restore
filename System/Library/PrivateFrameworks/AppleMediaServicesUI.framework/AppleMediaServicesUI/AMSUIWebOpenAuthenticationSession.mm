@interface AMSUIWebOpenAuthenticationSession
- (AMSUIWebOpenAuthenticationSession)initWithJSObject:(id)object context:(id)context;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (id)runAction;
@end

@implementation AMSUIWebOpenAuthenticationSession

- (AMSUIWebOpenAuthenticationSession)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = AMSUIWebOpenAuthenticationSession;
  v8 = [(AMSUIWebAction *)&v21 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"callbackScheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v11 = getASWebAuthenticationSessionCallbackClass_softClass_0;
    v26 = getASWebAuthenticationSessionCallbackClass_softClass_0;
    if (!getASWebAuthenticationSessionCallbackClass_softClass_0)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getASWebAuthenticationSessionCallbackClass_block_invoke_0;
      v22[3] = &unk_1E7F241B0;
      v22[4] = &v23;
      __getASWebAuthenticationSessionCallbackClass_block_invoke_0(v22);
      v11 = v24[3];
    }

    v12 = v11;
    _Block_object_dispose(&v23, 8);
    v13 = [v11 callbackWithCustomScheme:v10];
    callback = v8->_callback;
    v8->_callback = v13;

    v15 = [objectCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&v8->_URL, v17);
    if (v16)
    {
    }

    v18 = [objectCopy objectForKeyedSubscript:@"ephemeral"];
    if (objc_opt_respondsToSelector())
    {
      v19 = [objectCopy objectForKeyedSubscript:@"ephemeral"];
      v8->_ephemeral = [v19 BOOLValue];
    }

    else
    {
      v8->_ephemeral = 0;
    }
  }

  return v8;
}

- (id)runAction
{
  v27.receiver = self;
  v27.super_class = AMSUIWebOpenAuthenticationSession;
  runAction = [(AMSUIWebAction *)&v27 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v5 = [(AMSUIWebOpenAuthenticationSession *)self URL];

  if (v5 && ([(AMSUIWebOpenAuthenticationSession *)self callback], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v7 = getASWebAuthenticationSessionClass_softClass_0;
    v31 = getASWebAuthenticationSessionClass_softClass_0;
    if (!getASWebAuthenticationSessionClass_softClass_0)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getASWebAuthenticationSessionClass_block_invoke_0;
      v22 = &unk_1E7F241B0;
      v23 = &v28;
      __getASWebAuthenticationSessionClass_block_invoke_0(&v19);
      v7 = v29[3];
    }

    v8 = v7;
    _Block_object_dispose(&v28, 8);
    v9 = [v7 alloc];
    v10 = [(AMSUIWebOpenAuthenticationSession *)self URL];
    callback = [(AMSUIWebOpenAuthenticationSession *)self callback];
    completionHandlerAdapter = [v4 completionHandlerAdapter];
    v13 = [v9 initWithURL:v10 callback:callback completionHandler:completionHandlerAdapter];

    [v13 setPresentationContextProvider:self];
    [v13 setPrefersEphemeralWebBrowserSession:{-[AMSUIWebOpenAuthenticationSession ephemeral](self, "ephemeral")}];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AMSUIWebOpenAuthenticationSession_runAction__block_invoke;
    block[3] = &unk_1E7F242D0;
    v14 = v13;
    v26 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__7;
    v23 = __Block_byref_object_dispose__7;
    selfCopy = self;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__AMSUIWebOpenAuthenticationSession_runAction__block_invoke_20;
    v18[3] = &unk_1E7F26908;
    v18[4] = selfCopy;
    v18[5] = &v19;
    [v4 addFinishBlock:v18];
    v15 = [v4 thenWithBlock:&__block_literal_global_31];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = AMSError();
    [v4 finishWithError:v16];

    v15 = v4;
  }

  return v15;
}

void __46__AMSUIWebOpenAuthenticationSession_runAction__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = [MEMORY[0x1E698C968] sharedAccountsConfig];
  v10 = v9;
  if (v5)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = *(a1 + 32);
      v15 = objc_opt_class();
      v16 = v15;
      if (v12)
      {
        a1 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v16, a1];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v24 = AMSHashIfNeeded();
      *buf = 138543618;
      v27 = v17;
      v28 = 2114;
      v29 = v24;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Action finished successfully with a URL. url = %{public}@", buf, 0x16u);
      if (v12)
      {

        v17 = a1;
      }
    }
  }

  else
  {
    if (!v9)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      v20 = *(a1 + 32);
      v21 = objc_opt_class();
      v22 = v21;
      if (v18)
      {
        a1 = AMSLogKey();
        [v19 stringWithFormat:@"%@: [%@] ", v22, a1];
      }

      else
      {
        [v19 stringWithFormat:@"%@: ", v21];
      }
      v23 = ;
      *buf = 138543618;
      v27 = v23;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Task finished with error. error = %{public}@", buf, 0x16u);
      if (v18)
      {

        v23 = a1;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

id __46__AMSUIWebOpenAuthenticationSession_runAction__block_invoke_29(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v10 = @"url";
  v3 = [a2 absoluteString];
  v4 = v3;
  v5 = &stru_1F3921360;
  if (v3)
  {
    v5 = v3;
  }

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v2 promiseWithResult:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];
  currentContainer = [flowController currentContainer];
  view = [currentContainer view];
  window = [view window];

  return window;
}

@end
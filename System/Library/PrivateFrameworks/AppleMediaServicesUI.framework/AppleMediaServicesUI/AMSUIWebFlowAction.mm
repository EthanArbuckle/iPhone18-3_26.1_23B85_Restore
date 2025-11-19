@interface AMSUIWebFlowAction
- (AMSUIWebFlowAction)initWithContext:(id)a3;
- (AMSUIWebFlowAction)initWithJSObject:(id)a3 context:(id)a4;
- (CGSize)modalWindowSize;
- (id)_runWithType:(int64_t)a3 options:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebFlowAction

- (AMSUIWebFlowAction)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = AMSUIWebFlowAction;
  result = [(AMSUIWebAction *)&v4 initWithContext:a3];
  if (result)
  {
    result->_presentationType = 5;
  }

  return result;
}

- (AMSUIWebFlowAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = AMSUIWebFlowAction;
  v8 = [(AMSUIWebAction *)&v43 initWithJSObject:v6 context:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"animationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v42 = v10;
    v11 = [v10 integerValue];
    v12 = [v6 objectForKeyedSubscript:@"actionData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    actionData = v8->_actionData;
    v8->_actionData = v13;

    v8->_animationType = v11;
    v15 = [v6 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    backgroundColor = v8->_backgroundColor;
    v8->_backgroundColor = v16;

    v18 = [v6 objectForKeyedSubscript:@"metrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    metrics = v8->_metrics;
    v8->_metrics = v19;

    [AMSUIWebModel windowSizeFromJSObject:v6 key:@"modalWindowSize"];
    v8->_modalWindowSize.width = v21;
    v8->_modalWindowSize.height = v22;
    v23 = [v6 objectForKeyedSubscript:@"deferredPresentation"];
    if (objc_opt_respondsToSelector())
    {
      v24 = [v23 BOOLValue];
    }

    else
    {
      v24 = 0;
    }

    v8->_deferredPresentation = v24;
    v25 = [v6 objectForKeyedSubscript:@"loadingPage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [[AMSUIWebLoadingPageModel alloc] initWithJSObject:v26 context:v7];
    loadingPage = v8->_loadingPage;
    v8->_loadingPage = v27;

    v29 = [v6 objectForKeyedSubscript:@"navigationBar"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = [[AMSUIWebNavigationBarModel alloc] initWithJSObject:v30 context:v7];
    navigationBar = v8->_navigationBar;
    v8->_navigationBar = v31;

    v33 = [v6 objectForKeyedSubscript:@"popToRelativeIndex"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [v6 objectForKeyedSubscript:@"popToRelativeIndex"];
      v8->_popToRelativeIndex = [v34 longLongValue];
    }

    else
    {
      v8->_popToRelativeIndex = 0x8000000000000000;
    }

    v35 = [v6 objectForKeyedSubscript:@"presentationType"];
    if (objc_opt_respondsToSelector())
    {
      v8->_presentationType = [v35 integerValue];
    }

    v36 = [v6 objectForKeyedSubscript:@"replacementPage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = [AMSUIWebModel pageModelFromJSObject:v37 context:v7];
      replacementPage = v8->_replacementPage;
      v8->_replacementPage = v38;
    }

    v40 = [v6 objectForKeyedSubscript:@"replacementType"];
    if (objc_opt_respondsToSelector())
    {
      v8->_replacementType = [v40 integerValue];
    }
  }

  return v8;
}

- (id)runAction
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = AMSUIWebFlowAction;
  v3 = [(AMSUIWebAction *)&v28 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [(AMSUIWebFlowAction *)self presentationType];
    *buf = 138543874;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    v33 = 2048;
    v34 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running flow action with type: %ld", buf, 0x20u);
  }

  v9 = [(AMSUIWebAction *)self context];
  if (([v9 bootstrapComplete] & 1) != 0 || -[AMSUIWebFlowAction presentationType](self, "presentationType") == 4)
  {

LABEL_8:
    v10 = objc_alloc_init(AMSUIWebFlowOptions);
    [(AMSUIWebFlowOptions *)v10 setAnimated:[(AMSUIWebFlowAction *)self animationType]!= 0];
    v11 = [(AMSUIWebFlowAction *)self backgroundColor];
    [(AMSUIWebFlowOptions *)v10 setBackgroundColor:v11];

    v12 = [(AMSUIWebFlowAction *)self loadingPage];
    [(AMSUIWebFlowOptions *)v10 setLoadingPage:v12];

    v13 = [(AMSUIWebFlowAction *)self navigationBar];
    [(AMSUIWebFlowOptions *)v10 setNavigationBar:v13];

    v14 = [(AMSUIWebFlowAction *)self actionData];
    [(AMSUIWebFlowOptions *)v10 setPageData:v14];

    [(AMSUIWebFlowOptions *)v10 setDeferredPresentation:[(AMSUIWebFlowAction *)self deferredPresentation]];
    v15 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AMSUIWebFlowAction_runAction__block_invoke;
    block[3] = &unk_1E7F24590;
    v16 = v15;
    v25 = v16;
    v26 = self;
    v27 = v10;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v18 = v27;
    v19 = v16;

    goto LABEL_9;
  }

  v22 = [(AMSUIWebFlowAction *)self presentationType];

  if (v22 == 5)
  {
    goto LABEL_8;
  }

  v23 = MEMORY[0x1E698CAD0];
  v17 = AMSError();
  v19 = [v23 promiseWithError:v17];
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __31__AMSUIWebFlowAction_runAction__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _runWithType:objc_msgSend(*(a1 + 40) options:{"presentationType"), *(a1 + 48)}];
  [v1 finishWithPromise:v2];
}

- (id)_runWithType:(int64_t)a3 options:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  v7 = [(AMSUIWebAction *)self context];
  v8 = [v7 flowController];

  v9 = [(AMSUIWebFlowAction *)self presentationType];
  if (v9 <= 2)
  {
    if (!v9)
    {
      if ([(AMSUIWebFlowAction *)self replacementType])
      {
        v10 = [(AMSUIWebFlowAction *)self replacementPage];
        v11 = [(AMSUIWebAction *)self context];
        v12 = [v11 flowController];
        v13 = [v12 currentContainer];
        v14 = [v8 replaceWithPageModel:v10 forContainer:v13 options:v5];
      }

      else
      {
        v17 = [(AMSUIWebAction *)self context];
        v18 = [v17 flowController];
        v19 = [v18 currentContainer];
        v20 = [v8 refreshPageForContainer:v19 options:v5];
      }

      goto LABEL_17;
    }

    if (v9 != 1)
    {
      if (v9 == 2)
      {
        [v8 pushWithOptions:v5];
      }

      goto LABEL_17;
    }

LABEL_11:
    [v5 setModalPresentationStyle:{-[AMSUIWebFlowAction presentationType](self, "presentationType") != 3}];
    [v5 setModalTransitionStyle:{-[AMSUIWebFlowAction animationType](self, "animationType") == 2}];
    [(AMSUIWebFlowAction *)self modalWindowSize];
    [v5 setModalWindowSize:?];
    [v8 presentWithOptions:v5];
    goto LABEL_17;
  }

  switch(v9)
  {
    case 3:
      goto LABEL_11;
    case 4:
      v15 = [v8 dismissViewController];
      v16 = [v15 promiseAdapter];

      v6 = v16;
      break;
    case 5:
      if ([(AMSUIWebFlowAction *)self popToRelativeIndex]== 0x8000000000000000)
      {
        [v8 popViewController];
      }

      else
      {
        [v8 popViewControllerToRelativeIndex:{-[AMSUIWebFlowAction popToRelativeIndex](self, "popToRelativeIndex")}];
      }

      break;
  }

LABEL_17:

  return v6;
}

- (CGSize)modalWindowSize
{
  width = self->_modalWindowSize.width;
  height = self->_modalWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
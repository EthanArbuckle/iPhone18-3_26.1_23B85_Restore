@interface AMSUIWebFlowAction
- (AMSUIWebFlowAction)initWithContext:(id)context;
- (AMSUIWebFlowAction)initWithJSObject:(id)object context:(id)context;
- (CGSize)modalWindowSize;
- (id)_runWithType:(int64_t)type options:(id)options;
- (id)runAction;
@end

@implementation AMSUIWebFlowAction

- (AMSUIWebFlowAction)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = AMSUIWebFlowAction;
  result = [(AMSUIWebAction *)&v4 initWithContext:context];
  if (result)
  {
    result->_presentationType = 5;
  }

  return result;
}

- (AMSUIWebFlowAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v43.receiver = self;
  v43.super_class = AMSUIWebFlowAction;
  v8 = [(AMSUIWebAction *)&v43 initWithJSObject:objectCopy context:contextCopy];
  if (v8)
  {
    v9 = [objectCopy objectForKeyedSubscript:@"animationType"];
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
    integerValue = [v10 integerValue];
    v12 = [objectCopy objectForKeyedSubscript:@"actionData"];
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

    v8->_animationType = integerValue;
    v15 = [objectCopy objectForKeyedSubscript:@"backgroundColor"];
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

    v18 = [objectCopy objectForKeyedSubscript:@"metrics"];
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

    [AMSUIWebModel windowSizeFromJSObject:objectCopy key:@"modalWindowSize"];
    v8->_modalWindowSize.width = v21;
    v8->_modalWindowSize.height = v22;
    v23 = [objectCopy objectForKeyedSubscript:@"deferredPresentation"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v23 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v8->_deferredPresentation = bOOLValue;
    v25 = [objectCopy objectForKeyedSubscript:@"loadingPage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [[AMSUIWebLoadingPageModel alloc] initWithJSObject:v26 context:contextCopy];
    loadingPage = v8->_loadingPage;
    v8->_loadingPage = v27;

    v29 = [objectCopy objectForKeyedSubscript:@"navigationBar"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = [[AMSUIWebNavigationBarModel alloc] initWithJSObject:v30 context:contextCopy];
    navigationBar = v8->_navigationBar;
    v8->_navigationBar = v31;

    v33 = [objectCopy objectForKeyedSubscript:@"popToRelativeIndex"];
    if (objc_opt_respondsToSelector())
    {
      v34 = [objectCopy objectForKeyedSubscript:@"popToRelativeIndex"];
      v8->_popToRelativeIndex = [v34 longLongValue];
    }

    else
    {
      v8->_popToRelativeIndex = 0x8000000000000000;
    }

    v35 = [objectCopy objectForKeyedSubscript:@"presentationType"];
    if (objc_opt_respondsToSelector())
    {
      v8->_presentationType = [v35 integerValue];
    }

    v36 = [objectCopy objectForKeyedSubscript:@"replacementPage"];
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
      v38 = [AMSUIWebModel pageModelFromJSObject:v37 context:contextCopy];
      replacementPage = v8->_replacementPage;
      v8->_replacementPage = v38;
    }

    v40 = [objectCopy objectForKeyedSubscript:@"replacementType"];
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
  runAction = [(AMSUIWebAction *)&v28 runAction];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    presentationType = [(AMSUIWebFlowAction *)self presentationType];
    *buf = 138543874;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    v33 = 2048;
    v34 = presentationType;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running flow action with type: %ld", buf, 0x20u);
  }

  context = [(AMSUIWebAction *)self context];
  if (([context bootstrapComplete] & 1) != 0 || -[AMSUIWebFlowAction presentationType](self, "presentationType") == 4)
  {

LABEL_8:
    v10 = objc_alloc_init(AMSUIWebFlowOptions);
    [(AMSUIWebFlowOptions *)v10 setAnimated:[(AMSUIWebFlowAction *)self animationType]!= 0];
    backgroundColor = [(AMSUIWebFlowAction *)self backgroundColor];
    [(AMSUIWebFlowOptions *)v10 setBackgroundColor:backgroundColor];

    loadingPage = [(AMSUIWebFlowAction *)self loadingPage];
    [(AMSUIWebFlowOptions *)v10 setLoadingPage:loadingPage];

    navigationBar = [(AMSUIWebFlowAction *)self navigationBar];
    [(AMSUIWebFlowOptions *)v10 setNavigationBar:navigationBar];

    actionData = [(AMSUIWebFlowAction *)self actionData];
    [(AMSUIWebFlowOptions *)v10 setPageData:actionData];

    [(AMSUIWebFlowOptions *)v10 setDeferredPresentation:[(AMSUIWebFlowAction *)self deferredPresentation]];
    v15 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AMSUIWebFlowAction_runAction__block_invoke;
    block[3] = &unk_1E7F24590;
    v16 = v15;
    v25 = v16;
    selfCopy = self;
    v27 = v10;
    v17 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v18 = v27;
    v19 = v16;

    goto LABEL_9;
  }

  presentationType2 = [(AMSUIWebFlowAction *)self presentationType];

  if (presentationType2 == 5)
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

- (id)_runWithType:(int64_t)type options:(id)options
{
  optionsCopy = options;
  v6 = [MEMORY[0x1E698CAD0] promiseWithResult:MEMORY[0x1E695E118]];
  context = [(AMSUIWebAction *)self context];
  flowController = [context flowController];

  presentationType = [(AMSUIWebFlowAction *)self presentationType];
  if (presentationType <= 2)
  {
    if (!presentationType)
    {
      if ([(AMSUIWebFlowAction *)self replacementType])
      {
        replacementPage = [(AMSUIWebFlowAction *)self replacementPage];
        context2 = [(AMSUIWebAction *)self context];
        flowController2 = [context2 flowController];
        currentContainer = [flowController2 currentContainer];
        v14 = [flowController replaceWithPageModel:replacementPage forContainer:currentContainer options:optionsCopy];
      }

      else
      {
        context3 = [(AMSUIWebAction *)self context];
        flowController3 = [context3 flowController];
        currentContainer2 = [flowController3 currentContainer];
        v20 = [flowController refreshPageForContainer:currentContainer2 options:optionsCopy];
      }

      goto LABEL_17;
    }

    if (presentationType != 1)
    {
      if (presentationType == 2)
      {
        [flowController pushWithOptions:optionsCopy];
      }

      goto LABEL_17;
    }

LABEL_11:
    [optionsCopy setModalPresentationStyle:{-[AMSUIWebFlowAction presentationType](self, "presentationType") != 3}];
    [optionsCopy setModalTransitionStyle:{-[AMSUIWebFlowAction animationType](self, "animationType") == 2}];
    [(AMSUIWebFlowAction *)self modalWindowSize];
    [optionsCopy setModalWindowSize:?];
    [flowController presentWithOptions:optionsCopy];
    goto LABEL_17;
  }

  switch(presentationType)
  {
    case 3:
      goto LABEL_11;
    case 4:
      dismissViewController = [flowController dismissViewController];
      promiseAdapter = [dismissViewController promiseAdapter];

      v6 = promiseAdapter;
      break;
    case 5:
      if ([(AMSUIWebFlowAction *)self popToRelativeIndex]== 0x8000000000000000)
      {
        [flowController popViewController];
      }

      else
      {
        [flowController popViewControllerToRelativeIndex:{-[AMSUIWebFlowAction popToRelativeIndex](self, "popToRelativeIndex")}];
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
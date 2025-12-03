@interface LNAppConnectionListener
+ (id)sharedListener;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (void)handleAction:(id)action completionHandler:(id)handler;
- (void)performOneShotAction:(id)action executorOptions:(id)options completionHandler:(id)handler;
@end

@implementation LNAppConnectionListener

void __41__LNAppConnectionListener_sharedListener__block_invoke()
{
  v0 = [LNAppConnectionListener alloc];
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  v1 = [(LNConnectionListener *)v0 initWithListener:v3 clientConnectionQueue:MEMORY[0x1E69E96A0]];
  v2 = sharedListener_value;
  sharedListener_value = v1;
}

+ (id)sharedListener
{
  if (sharedListener_onceToken[0] != -1)
  {
    dispatch_once(sharedListener_onceToken, &__block_literal_global);
  }

  v3 = sharedListener_value;

  return v3;
}

- (void)performOneShotAction:(id)action executorOptions:(id)options completionHandler:(id)handler
{
  actionCopy = action;
  optionsCopy = options;
  handlerCopy = handler;
  if (actionCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAppConnectionListener.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"executorOptions"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNAppConnectionListener.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNAppConnectionListener.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"action"}];

  if (!optionsCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [LNOneShotActionExecutor alloc];
  appContext = [(LNConnectionListener *)self appContext];
  v14 = [(LNOneShotActionExecutor *)v12 initWithAction:actionCopy executorOptions:optionsCopy appContext:appContext];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__LNAppConnectionListener_performOneShotAction_executorOptions_completionHandler___block_invoke;
  v20[3] = &unk_1E72B7488;
  v21 = v14;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v14;
  [(LNOneShotActionExecutor *)v16 performWithCompletionHandler:v20];
}

- (void)handleAction:(id)action completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v8 = getUILinkConnectionActionClass_softClass;
  v25 = getUILinkConnectionActionClass_softClass;
  if (!getUILinkConnectionActionClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v27 = __getUILinkConnectionActionClass_block_invoke;
    v28 = &unk_1E72B75A0;
    v29 = &v22;
    __getUILinkConnectionActionClass_block_invoke(&buf);
    v8 = v23[3];
  }

  v9 = v8;
  _Block_object_dispose(&v22, 8);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This method can only handle UILinkConnectionAction objects" userInfo:0];
    objc_exception_throw(v18);
  }

  v10 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = actionCopy;
    _os_log_impl(&dword_18F0E9000, v10, OS_LOG_TYPE_INFO, "Received UILinkConnectionAction: %{public}@)", &buf, 0xCu);
  }

  action = [actionCopy action];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__LNAppConnectionListener_handleAction_completionHandler___block_invoke;
  aBlock[3] = &unk_1E72B74D8;
  aBlock[4] = self;
  v12 = action;
  v20 = v12;
  v13 = handlerCopy;
  v21 = v13;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    action2 = [v15 action];
    executorOptions = [v15 executorOptions];
    [(LNAppConnectionListener *)self performOneShotAction:action2 executorOptions:executorOptions completionHandler:v14];
  }

  else
  {

    v14[2](v14);
  }
}

void __58__LNAppConnectionListener_handleAction_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69ACE50]);
  v3 = [*(a1 + 32) xpcListener];
  v4 = [v3 endpoint];
  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = v5;
  if (v5)
  {
    [v5 if_auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v7 = [v2 initWithXPCListenerEndpoint:v4 auditToken:buf];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getUILinkConnectionActionResponseClass_softClass;
  v17 = getUILinkConnectionActionResponseClass_softClass;
  if (!getUILinkConnectionActionResponseClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getUILinkConnectionActionResponseClass_block_invoke;
    *&buf[24] = &unk_1E72B75A0;
    v19 = &v14;
    __getUILinkConnectionActionResponseClass_block_invoke(buf);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v10 = [v8 alloc];
  v11 = [v10 initWithActionResponse:{v7, v14}];
  v12 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_18F0E9000, v12, OS_LOG_TYPE_INFO, "Sending UILinkConnectionActionResponse: %{public}@ for %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (NSXPCListenerEndpoint)listenerEndpoint
{
  xpcListener = [(LNConnectionListener *)self xpcListener];
  endpoint = [xpcListener endpoint];

  return endpoint;
}

@end
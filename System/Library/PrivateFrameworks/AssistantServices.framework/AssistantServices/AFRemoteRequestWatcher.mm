@interface AFRemoteRequestWatcher
- (AFRemoteRequestWatcher)init;
- (void)_dispatchSpeechRequestOptions:(id)options;
- (void)_setupRequestListener;
- (void)_setupSpeechRequestListener;
- (void)dealloc;
- (void)setActivationHandler:(id)handler;
- (void)setButtonEventHandler:(id)handler;
- (void)setDismissalHandler:(id)handler;
- (void)setIntentForwardingActionHandler:(id)handler;
- (void)setIntentHandler:(id)handler;
- (void)setNewRequestHandler:(id)handler;
- (void)setNewSpeechRequestHandler:(id)handler;
- (void)setPrewarmHandler:(id)handler;
- (void)setRequestHandler:(id)handler;
- (void)siriActivationListener:(id)listener activateWithRequestInfo:(id)info context:(id)context completion:(id)completion;
- (void)siriActivationListener:(id)listener deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion;
- (void)siriActivationListener:(id)listener handleButtonEventFromContext:(id)context completion:(id)completion;
- (void)siriActivationListener:(id)listener handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply;
- (void)siriActivationListener:(id)listener handleIntentForwardingAction:(id)action inBackgroundApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)siriActivationListener:(id)listener prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion;
@end

@implementation AFRemoteRequestWatcher

- (void)setNewSpeechRequestHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AFRemoteRequestWatcher_setNewSpeechRequestHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __53__AFRemoteRequestWatcher_setNewSpeechRequestHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = *(a1 + 32);

  return [v5 _setupSpeechRequestListener];
}

- (void)_dispatchSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  speechRequestHandler = self->_speechRequestHandler;
  if (speechRequestHandler)
  {
    v9 = optionsCopy;
    speechRequestHandler[2]();
  }

  else
  {
    if (!self->_requestHandler)
    {
      goto LABEL_8;
    }

    v9 = optionsCopy;
    v6 = [AFRequestInfo alloc];
    activationEventMachAbsoluteTime = [v9 activationEventMachAbsoluteTime];
    if (!activationEventMachAbsoluteTime)
    {
      activationEventMachAbsoluteTime = mach_absolute_time();
    }

    v8 = [(AFRequestInfo *)v6 initWithTimestamp:activationEventMachAbsoluteTime];
    [(AFRequestInfo *)v8 setSpeechRequestOptions:v9];
    (*(self->_requestHandler + 2))();
  }

  optionsCopy = v9;
LABEL_8:
}

- (void)_setupSpeechRequestListener
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_speechRequestToken == -1)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[AFRemoteRequestWatcher _setupSpeechRequestListener]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    out_token = -1;
    objc_initWeak(&location, self);
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__AFRemoteRequestWatcher__setupSpeechRequestListener__block_invoke;
    handler[3] = &unk_1E7347870;
    objc_copyWeak(&v9, &location);
    v5 = notify_register_dispatch("com.apple.assistant.speech-request", &out_token, queue, handler);
    if (v5)
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v13 = "[AFRemoteRequestWatcher _setupSpeechRequestListener]";
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s Notify register failed %u", buf, 0x12u);
      }
    }

    else
    {
      self->_speechRequestToken = out_token;
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __53__AFRemoteRequestWatcher__setupSpeechRequestListener__block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *v9 = 136315138;
    *&v9[4] = "[AFRemoteRequestWatcher _setupSpeechRequestListener]_block_invoke";
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s ", v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *v9 = 0;
    notify_get_state(a2, v9);
    v6 = [[AFSpeechRequestOptions alloc] initWithActivationEvent:0];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v9];
    [(AFSpeechRequestOptions *)v6 setNotifyState:v7];

    [WeakRetained _dispatchSpeechRequestOptions:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setActivationHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AFRemoteRequestWatcher_setActivationHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __47__AFRemoteRequestWatcher_setActivationHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
}

- (void)setButtonEventHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AFRemoteRequestWatcher_setButtonEventHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __48__AFRemoteRequestWatcher_setButtonEventHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

- (void)setIntentForwardingActionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__AFRemoteRequestWatcher_setIntentForwardingActionHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __59__AFRemoteRequestWatcher_setIntentForwardingActionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

- (void)setIntentHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AFRemoteRequestWatcher_setIntentHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __43__AFRemoteRequestWatcher_setIntentHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (void)setDismissalHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AFRemoteRequestWatcher_setDismissalHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __46__AFRemoteRequestWatcher_setDismissalHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setRequestHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AFRemoteRequestWatcher_setRequestHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __44__AFRemoteRequestWatcher_setRequestHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);

  return [v5 _setupRequestListener];
}

- (void)setNewRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__AFRemoteRequestWatcher_setNewRequestHandler___block_invoke;
    v6[3] = &unk_1E7345228;
    v7 = handlerCopy;
    [(AFRemoteRequestWatcher *)self setRequestHandler:v6];
  }

  else
  {
    [(AFRemoteRequestWatcher *)self setRequestHandler:0];
  }
}

void __47__AFRemoteRequestWatcher_setNewRequestHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)setPrewarmHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AFRemoteRequestWatcher_setPrewarmHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __44__AFRemoteRequestWatcher_setPrewarmHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (void)_setupRequestListener
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AFRemoteRequestWatcher _setupRequestListener]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, self, _StartUIRequest, @"com.apple.assistant.request", 0, CFNotificationSuspensionBehaviorDrop);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)siriActivationListener:(id)listener handleButtonEventFromContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__AFRemoteRequestWatcher_siriActivationListener_handleButtonEventFromContext_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v13 = contextCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = contextCopy;
  dispatch_async(queue, block);
}

void __89__AFRemoteRequestWatcher_siriActivationListener_handleButtonEventFromContext_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 80);
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5]);
    v3 = 0;
  }

  else
  {
    v3 = [AFError errorWithCode:2509];
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)siriActivationListener:(id)listener handleIntentForwardingAction:(id)action inBackgroundApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  actionCopy = action;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __140__AFRemoteRequestWatcher_siriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = actionCopy;
  v18 = identifierCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = identifierCopy;
  v15 = actionCopy;
  dispatch_async(queue, v16);
}

uint64_t __140__AFRemoteRequestWatcher_siriActivationListener_handleIntentForwardingAction_inBackgroundApplicationWithBundleIdentifier_completionHandler___block_invoke(void *a1)
{
  v1 = *(a1[4] + 56);
  if (v1)
  {
    return (*(v1 + 16))(*(a1[4] + 56), a1[5], a1[6], a1[7]);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)siriActivationListener:(id)listener handleIntent:(id)intent inBackgroundAppWithBundleId:(id)id reply:(id)reply
{
  intentCopy = intent;
  idCopy = id;
  replyCopy = reply;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__AFRemoteRequestWatcher_siriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke;
  v16[3] = &unk_1E73479F0;
  v16[4] = self;
  v17 = intentCopy;
  v18 = idCopy;
  v19 = replyCopy;
  v13 = replyCopy;
  v14 = idCopy;
  v15 = intentCopy;
  dispatch_async(queue, v16);
}

void __96__AFRemoteRequestWatcher_siriActivationListener_handleIntent_inBackgroundAppWithBundleId_reply___block_invoke(void *a1)
{
  v2 = *(a1[4] + 48);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = *(v2 + 16);
    v7 = *(a1[4] + 48);

    v6(v7, v3, v4, v5);
  }

  else
  {
    v8 = a1[7];
    v9 = [AFError errorWithCode:2509];
    (*(v8 + 16))(v8, 0, v9);
  }
}

- (void)siriActivationListener:(id)listener deactivateForReason:(int64_t)reason options:(unint64_t)options context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__AFRemoteRequestWatcher_siriActivationListener_deactivateForReason_options_context_completion___block_invoke;
  block[3] = &unk_1E7346668;
  reasonCopy = reason;
  optionsCopy = options;
  block[4] = self;
  v17 = contextCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = contextCopy;
  dispatch_async(queue, block);
}

void __96__AFRemoteRequestWatcher_siriActivationListener_deactivateForReason_options_context_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = [*(a1 + 40) userInfo];
    v6 = [v5 objectForKey:@"analyticsContext"];
    (*(v2 + 16))(v2, v3, v4, v6);

    v7 = 0;
  }

  else
  {
    v7 = [AFError errorWithCode:2509];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = v7;
    (*(v8 + 16))();
    v7 = v9;
  }
}

- (void)siriActivationListener:(id)listener activateWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  infoCopy = info;
  contextCopy = context;
  completionCopy = completion;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke;
  v16[3] = &unk_1E73479F0;
  v17 = infoCopy;
  selfCopy = self;
  v19 = contextCopy;
  v20 = completionCopy;
  v13 = contextCopy;
  v14 = completionCopy;
  v15 = infoCopy;
  dispatch_async(queue, v16);
}

void __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*(a1 + 40) + 32);
    if (v2)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2;
      v10[3] = &unk_1E7348AA8;
      v11 = *(a1 + 56);
      (*(v2 + 16))(v2, v1, v10);
      v3 = v11;
LABEL_7:

      return;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 88);
    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3;
      v8[3] = &unk_1E7348AA8;
      v9 = *(a1 + 56);
      (*(v5 + 16))(v5, v4, v8);
      v3 = v9;
      goto LABEL_7;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = [AFError errorWithCode:2509];
    (*(v6 + 16))(v6, v7);
  }
}

uint64_t __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __92__AFRemoteRequestWatcher_siriActivationListener_activateWithRequestInfo_context_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)siriActivationListener:(id)listener prewarmWithRequestInfo:(id)info context:(id)context completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__AFRemoteRequestWatcher_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v14 = infoCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = infoCopy;
  dispatch_async(queue, block);
}

void __91__AFRemoteRequestWatcher_siriActivationListener_prewarmWithRequestInfo_context_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5]);
    v3 = 0;
  }

  else
  {
    v3 = [AFError errorWithCode:2509];
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = v3;
    (*(v4 + 16))();
    v3 = v5;
  }
}

- (void)dealloc
{
  [(AFSiriActivationListener *)self->_siriActivationListener invalidate];
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.assistant.request", 0);
  speechRequestToken = self->_speechRequestToken;
  if (speechRequestToken != -1)
  {
    notify_cancel(speechRequestToken);
  }

  v5.receiver = self;
  v5.super_class = AFRemoteRequestWatcher;
  [(AFRemoteRequestWatcher *)&v5 dealloc];
}

- (AFRemoteRequestWatcher)init
{
  v12.receiver = self;
  v12.super_class = AFRemoteRequestWatcher;
  v2 = [(AFRemoteRequestWatcher *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("AFPersistentConnection", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_speechRequestToken = -1;
    v7 = [AFSiriActivationListener alloc];
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = [(AFSiriActivationListener *)v7 initWithServicePort:v8];
    siriActivationListener = v2->_siriActivationListener;
    v2->_siriActivationListener = v9;

    [(AFSiriActivationListener *)v2->_siriActivationListener startWithDelegate:v2];
  }

  return v2;
}

@end
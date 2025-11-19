@interface VSJSApp
+ (id)currentContext;
- (VSJSApp)initWithScriptURL:(id)a3;
- (VSJSAppDelegate)delegate;
- (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4;
- (id)_exceptionErrorWithCode:(int64_t)a3;
- (void)_configureWatchdogWithSeconds:(unint64_t)a3;
- (void)_initializeContext;
- (void)_invokeOnExit;
- (void)_invokeOnLaunch;
- (void)evaluateScript:(id)a3 withSourceURL:(id)a4;
- (void)evaluateWithBlock:(id)a3;
- (void)setExceptionWithMessage:(id)a3;
- (void)start;
- (void)stop;
- (void)transitionToErrorState;
- (void)transitionToReadyState;
- (void)transitionToStoppedState;
- (void)transitionToWaitingForBootScriptState;
- (void)transitionToWaitingForBootUrlState;
- (void)transitionToWaitingForOnExitCallbackState;
- (void)transitionToWaitingForOnLaunchCallbackState;
@end

@implementation VSJSApp

- (VSJSApp)initWithScriptURL:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = VSJSApp;
  v6 = [(VSJSApp *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = v7;
    v9 = [[VSSingleThreadDispatchQueue alloc] initWithName:@"VSJSContext JS"];
    jsSingleThreadQueue = v8->_jsSingleThreadQueue;
    v8->_jsSingleThreadQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v8->_privateQueue;
    v8->_privateQueue = v11;

    v13 = v8->_privateQueue;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(NSOperationQueue *)v13 setName:v15];

    v8->_state = 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    scriptEvaluators = v8->_scriptEvaluators;
    v8->_scriptEvaluators = v16;

    v18 = objc_alloc_init(VSStateMachine);
    stateMachine = v8->_stateMachine;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(VSStateMachine *)stateMachine setName:v21];

    v22 = v8->_stateMachine;
    v8->_stateMachine = v18;
    v23 = v18;

    [(VSStateMachine *)v23 setDelegate:v8];
    [(VSStateMachine *)v23 setDestinationState:@"Waiting For Boot URL" forEvent:@"Start" inState:@"Initial"];
    [(VSStateMachine *)v23 setDestinationState:@"Stopped" forEvent:@"Stop" inState:@"Initial"];
    [(VSStateMachine *)v23 setDestinationState:@"Waiting For Boot Script" forEvent:@"Fetched Boot URL" inState:@"Waiting For Boot URL"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Error" inState:@"Waiting For Boot URL"];
    [(VSStateMachine *)v23 setDestinationState:@"Waiting For On Launch Callback" forEvent:@"Fetching Boot Script" inState:@"Waiting For Boot Script"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Error" inState:@"Waiting For Boot Script"];
    [(VSStateMachine *)v23 setDestinationState:@"Ready" forEvent:@"Invoked OnLaunch Callback" inState:@"Waiting For On Launch Callback"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Error" inState:@"Waiting For On Launch Callback"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Timed Out" inState:@"Waiting For On Launch Callback"];
    [(VSStateMachine *)v23 setDestinationState:@"Waiting For On Exit Callback" forEvent:@"Stop" inState:@"Ready"];
    [(VSStateMachine *)v23 setDestinationState:@"Waiting For On Exit Callback" forEvent:@"Invoked OnExit" inState:@"Ready"];
    [(VSStateMachine *)v23 setDestinationState:@"Stopped" forEvent:@"Received OnExit Callback" inState:@"Waiting For On Exit Callback"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Error" inState:@"Waiting For On Exit Callback"];
    [(VSStateMachine *)v23 setDestinationState:@"Error" forEvent:@"Timed Out" inState:@"Waiting For On Exit Callback"];
    [(VSStateMachine *)v23 activateWithState:@"Initial"];
  }

  return v7;
}

+ (id)currentContext
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "currentContext thread=%@", &v8, 0xCu);
  }

  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKeyedSubscript:@"VSJSContextThread"];

  return v6;
}

- (void)setExceptionWithMessage:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v9];

  v7 = [(VSJSApp *)self context];
  v8 = [MEMORY[0x277CD4658] valueWithNewErrorFromMessage:v6 inContext:v7];
  [v7 setException:v8];
}

- (void)evaluateWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VSJSApp *)self jsSingleThreadQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__VSJSApp_evaluateWithBlock___block_invoke;
  v7[3] = &unk_278B74628;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 dispatchBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __29__VSJSApp_evaluateWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = (*(*(a1 + 32) + 16))();
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)evaluateScript:(id)a3 withSourceURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__VSJSApp_evaluateScript_withSourceURL___block_invoke;
  v10[3] = &unk_278B75478;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(VSJSApp *)self evaluateWithBlock:v10];
}

void __40__VSJSApp_evaluateScript_withSourceURL___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 context];
  v3 = [v4 evaluateScript:*(a1 + 32) withSourceURL:*(a1 + 40)];
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[VSJSApp start]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  [(VSJSApp *)self setState:1];
  v4 = [(VSJSApp *)self jsSingleThreadQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __16__VSJSApp_start__block_invoke;
  v5[3] = &unk_278B754A0;
  v5[4] = self;
  [v4 startWithCompletionHandler:v5];
}

void __16__VSJSApp_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 underlyingThread];
  v4 = [v3 threadDictionary];
  [v4 setObject:*(a1 + 32) forKey:@"VSJSContextThread"];

  [*(a1 + 32) _initializeContext];
  v5 = [*(a1 + 32) stateMachine];
  [v5 enqueueEvent:@"Start"];
}

- (void)stop
{
  v2 = [(VSJSApp *)self stateMachine];
  [v2 enqueueEvent:@"Stop"];
}

- (void)_initializeContext
{
  objc_initWeak(&location, self);
  v3 = [(VSJSApp *)self jsSingleThreadQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__VSJSApp__initializeContext__block_invoke;
  v4[3] = &unk_278B74110;
  objc_copyWeak(&v5, &location);
  [v3 dispatchBlockSync:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__VSJSApp__initializeContext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x277CD4640]);
    [WeakRetained setContext:v2];
    v3 = [WeakRetained jsSingleThreadQueue];
    [v2 _setDebuggerRunLoop:{objc_msgSend(v3, "underlyingRunLoop")}];

    [v2 setExceptionHandler:&__block_literal_global_53];
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v2 setObject:v4 forKeyedSubscript:@"App"];
    [v2 setObject:objc_opt_class() forKeyedSubscript:@"Error"];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v5 setObject:&__block_literal_global_100 forKey:@"log"];
    [v5 setObject:&__block_literal_global_103 forKey:@"error"];
    [v2 setObject:v5 forKeyedSubscript:@"console"];
    [v2 setObject:objc_opt_class() forKeyedSubscript:@"XMLHttpRequest"];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__VSJSApp__initializeContext__block_invoke_105;
    aBlock[3] = &unk_278B75508;
    aBlock[4] = WeakRetained;
    v6 = _Block_copy(aBlock);
    [v2 setObject:v6 forKeyedSubscript:@"makeXMLHttpRequest"];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__VSJSApp__initializeContext__block_invoke_2_107;
    v9[3] = &unk_278B75558;
    v9[4] = WeakRetained;
    v7 = _Block_copy(v9);
    [v2 setObject:v7 forKeyedSubscript:@"evaluateScripts"];

    v8 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 app:WeakRetained prewarmWithContext:v2];
    }
  }
}

void __29__VSJSApp__initializeContext__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __29__VSJSApp__initializeContext__block_invoke_2_cold_1();
  }
}

void __29__VSJSApp__initializeContext__block_invoke_97(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "[JS][LOG] %@", &v4, 0xCu);
  }
}

void __29__VSJSApp__initializeContext__block_invoke_101(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __29__VSJSApp__initializeContext__block_invoke_101_cold_1();
  }
}

VSJSXMLHTTPRequest *__29__VSJSApp__initializeContext__block_invoke_105(uint64_t a1)
{
  v1 = [[VSJSXMLHTTPRequest alloc] initWithContext:*(a1 + 32)];

  return v1;
}

void __29__VSJSApp__initializeContext__block_invoke_2_107(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[VSJSAppScriptEvaluator alloc] initWithApp:*(a1 + 32) urls:v5];
  objc_initWeak(&location, v7);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __29__VSJSApp__initializeContext__block_invoke_3;
  v15 = &unk_278B75530;
  v8 = v6;
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  objc_copyWeak(&v18, &location);
  [(VSJSAppScriptEvaluator *)v7 setCompletionBlock:&v12];
  [(VSJSAppScriptEvaluator *)v7 start:v12];
  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  v11 = [*(a1 + 32) scriptEvaluators];
  [v11 addObject:v7];

  objc_sync_exit(v10);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __29__VSJSApp__initializeContext__block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v17 + 1) + 8 * v6) loaded])
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CD4658];
  v10 = [*(a1 + 40) context];
  v11 = [v9 valueWithBool:v7 inContext:v10];
  v21 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v13 = [v8 callWithArguments:v12];

  v14 = *(a1 + 40);
  objc_sync_enter(v14);
  v15 = [*(a1 + 40) scriptEvaluators];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v15 removeObject:WeakRetained];

  objc_sync_exit(v14);
}

- (void)_invokeOnLaunch
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VSJSApp _invokeOnLaunch]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [(VSJSApp *)self url];
  v6 = [v5 absoluteString];
  v7 = v6 == 0;

  if (v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self url] absoluteString] parameter must not be nil."];
  }

  v8 = [(VSJSApp *)self url];
  v9 = [v8 absoluteString];

  [v4 setObject:v9 forKey:@"location"];
  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __26__VSJSApp__invokeOnLaunch__block_invoke;
  v11[3] = &unk_278B755A8;
  objc_copyWeak(&v13, buf);
  v10 = v4;
  v12 = v10;
  [(VSJSApp *)self evaluateWithBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __26__VSJSApp__invokeOnLaunch__block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = MEMORY[0x277CD4658];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __26__VSJSApp__invokeOnLaunch__block_invoke_2;
    aBlock[3] = &unk_278B75580;
    aBlock[4] = WeakRetained;
    v7 = _Block_copy(aBlock);
    v8 = [v3 context];
    v9 = [v6 valueWithObject:v7 inContext:v8];

    [*(a1 + 32) setObject:v9 forKey:@"callback"];
    [v5 _configureWatchdogWithSeconds:20];
    v10 = [v3 context];
    v11 = [v10 objectForKeyedSubscript:@"App"];

    v22[0] = *(a1 + 32);
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v13 = [v11 invokeMethod:@"onLaunch" withArguments:v12];

    v14 = [v3 context];
    v15 = [v14 exception];

    if (v15)
    {
      v16 = [v5 _exceptionErrorWithCode:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __26__VSJSApp__invokeOnLaunch__block_invoke_119;
      block[3] = &unk_278B73708;
      block[4] = v5;
      v20 = v16;
      v17 = v16;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v18 = [v5 stateMachine];
      [v18 enqueueEvent:@"Error"];
    }
  }
}

void __26__VSJSApp__invokeOnLaunch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "onLaunch callback invoked", v12, 2u);
  }

  [*(a1 + 32) _configureWatchdogWithSeconds:0];
  v8 = [v6 toBool];

  if ((v8 & 1) == 0)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __26__VSJSApp__invokeOnLaunch__block_invoke_2_cold_1(v5, v9);
    }

    v10 = [*(a1 + 32) stateMachine];
    [v10 enqueueEvent:@"Error"];
  }

  v11 = [*(a1 + 32) stateMachine];
  [v11 enqueueEvent:@"Invoked OnLaunch Callback"];
}

void __26__VSJSApp__invokeOnLaunch__block_invoke_119(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

- (void)_invokeOnExit
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __24__VSJSApp__invokeOnExit__block_invoke;
  v3[3] = &unk_278B74FD0;
  objc_copyWeak(&v4, &location);
  [(VSJSApp *)self evaluateWithBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __24__VSJSApp__invokeOnExit__block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = MEMORY[0x277CD4658];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __24__VSJSApp__invokeOnExit__block_invoke_2;
    aBlock[3] = &unk_278B733D8;
    aBlock[4] = WeakRetained;
    v7 = _Block_copy(aBlock);
    v8 = [v3 context];
    v9 = [v6 valueWithObject:v7 inContext:v8];

    [v5 _configureWatchdogWithSeconds:10];
    v10 = [v3 context];
    v11 = [v10 objectForKeyedSubscript:@"App"];

    v15[0] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v13 = [v11 invokeMethod:@"onExit" withArguments:v12];
  }
}

void __24__VSJSApp__invokeOnExit__block_invoke_2(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "onExit callback invoked", v4, 2u);
  }

  [*(a1 + 32) _configureWatchdogWithSeconds:0];
  v3 = [*(a1 + 32) stateMachine];
  [v3 enqueueEvent:@"Received OnExit Callback"];
}

- (void)_configureWatchdogWithSeconds:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(VSJSApp *)self watchdog];
  v6 = VSDefaultLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Configuring watchdog timer for %lu seconds", buf, 0xCu);
    }

    if (v5)
    {
      dispatch_source_cancel(v5);
      [(VSJSApp *)self setWatchdog:0];
    }

    v8 = [(VSJSApp *)self privateQueue];
    v9 = [v8 underlyingQueue];
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);

    v11 = dispatch_time(0, 1000000000 * a3);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __41__VSJSApp__configureWatchdogWithSeconds___block_invoke;
    handler[3] = &unk_278B74110;
    objc_copyWeak(&v13, buf);
    dispatch_source_set_event_handler(v10, handler);
    [(VSJSApp *)self setWatchdog:v10];
    dispatch_activate(v10);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling watchdog timer", buf, 2u);
  }

  if (v5)
  {
    dispatch_source_cancel(v5);
    [(VSJSApp *)self setWatchdog:0];
    v10 = v5;
LABEL_11:
  }
}

void __41__VSJSApp__configureWatchdogWithSeconds___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Watchdog timer fired.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stateMachine];
    [v5 enqueueEvent:@"Timed Out"];
  }
}

- (void)transitionToWaitingForBootUrlState
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[VSJSApp transitionToWaitingForBootUrlState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = [VSApplicationBootURLOperation alloc];
  v5 = [(VSJSApp *)self url];
  v6 = [(VSApplicationBootURLOperation *)v4 initWithBootURL:v5 isDeveloper:0];

  [(VSApplicationBootURLOperation *)v6 setSkipSystemTrustVerification:[(VSJSApp *)self enforceSystemTrust]^ 1];
  objc_initWeak(buf, self);
  v7 = MEMORY[0x277CCA8C8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke;
  v15 = &unk_278B73690;
  objc_copyWeak(&v17, buf);
  v8 = v6;
  v16 = v8;
  v9 = [v7 blockOperationWithBlock:&v12];
  [v9 addDependency:{v8, v12, v13, v14, v15}];
  v10 = [(VSJSApp *)self privateQueue];
  [v10 addOperation:v8];

  v11 = [(VSJSApp *)self privateQueue];
  [v11 addOperation:v9];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) urlOrError];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_2;
    v5[3] = &unk_278B755D0;
    v5[4] = WeakRetained;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_123;
    v4[3] = &unk_278B732E0;
    v4[4] = WeakRetained;
    [v3 unwrapObject:v5 error:v4];
  }
}

void __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Fetched final boot URL: %@", &v6, 0xCu);
  }

  [*(a1 + 32) setEffectiveURL:v3];
  v5 = [*(a1 + 32) stateMachine];
  [v5 enqueueEvent:@"Fetched Boot URL"];
}

void __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_123(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_123_cold_1();
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = VSJSAppErrorDomain;
  v13 = *MEMORY[0x277CCA7E8];
  v14[0] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v5 errorWithDomain:v6 code:1 userInfo:v7];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_126;
  block[3] = &unk_278B73708;
  block[4] = *(a1 + 32);
  v12 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10 = [*(a1 + 32) stateMachine];
  [v10 enqueueEvent:@"Error"];
}

void __45__VSJSApp_transitionToWaitingForBootUrlState__block_invoke_126(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

- (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:VSJSAppErrorDomain code:a3 userInfo:v7];

  return v8;
}

- (id)_exceptionErrorWithCode:(int64_t)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = VSJSAppErrorDomain;
  v6 = [(VSJSApp *)self context];
  v7 = [v6 exception];
  v8 = [v7 toDictionary];
  v9 = [v4 errorWithDomain:v5 code:a3 userInfo:v8];

  return v9;
}

- (void)transitionToWaitingForBootScriptState
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VSJSApp transitionToWaitingForBootScriptState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = [(VSJSApp *)self effectiveURL];
  v5 = v4 == 0;

  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self effectiveURL] parameter must not be nil."];
  }

  v6 = [(VSJSApp *)self effectiveURL];
  v7 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v7 delegate:0 delegateQueue:0];
  objc_initWeak(buf, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke;
  v14 = &unk_278B74F80;
  objc_copyWeak(&v16, buf);
  v9 = v6;
  v15 = v9;
  v10 = [v8 dataTaskWithURL:v9 completionHandler:&v11];
  [v10 resume];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v8;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Got response for boot script: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v9)
    {
      v12 = VSErrorLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_cold_1();
      }

      v13 = [WeakRetained _errorWithCode:1 underlyingError:v9];
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_140;
      v42 = &unk_278B73708;
      v43 = WeakRetained;
      v44 = v13;
      v14 = v13;
      dispatch_async(MEMORY[0x277D85CD0], &v39);
      v15 = [WeakRetained stateMachine];
      [v15 enqueueEvent:@"Error"];

      v16 = v44;
    }

    else
    {
      if (v7)
      {
        v14 = v7;
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
        if (v17)
        {
          [WeakRetained setScript:v17];
          v18 = VSDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "Will evaluate boot script", buf, 2u);
          }

          v19 = [WeakRetained jsSingleThreadQueue];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_136;
          v49[3] = &unk_278B73708;
          v49[4] = WeakRetained;
          v50 = v17;
          [v19 dispatchBlock:v49];
        }

        else
        {
          v29 = VSErrorLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_cold_2(a1, v29, v30, v31, v32, v33, v34, v35);
          }

          v36 = [WeakRetained _errorWithCode:2 underlyingError:0];
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_138;
          v47[3] = &unk_278B73708;
          v47[4] = WeakRetained;
          v48 = v36;
          v37 = v36;
          dispatch_async(MEMORY[0x277D85CD0], v47);
          v38 = [WeakRetained stateMachine];
          [v38 enqueueEvent:@"Error"];
        }

        goto LABEL_21;
      }

      v20 = VSErrorLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_cold_3(a1, v20, v21, v22, v23, v24, v25, v26);
      }

      v27 = [WeakRetained _errorWithCode:2 underlyingError:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_139;
      block[3] = &unk_278B73708;
      block[4] = WeakRetained;
      v46 = v27;
      v14 = v27;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v28 = [WeakRetained stateMachine];
      [v28 enqueueEvent:@"Error"];

      v16 = v46;
    }

LABEL_21:
  }
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_136(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Evaluating boot script...", buf, 2u);
  }

  v3 = [*(a1 + 32) context];
  v4 = [v3 evaluateScript:*(a1 + 40)];

  v5 = [*(a1 + 32) context];
  v6 = [v5 exception];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 _exceptionErrorWithCode:0];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_137;
    v14 = &unk_278B73708;
    v15 = *(a1 + 32);
    v16 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], &v11);
    v10 = [*(a1 + 32) stateMachine];
    [v10 enqueueEvent:@"Error"];
  }

  else
  {
    v9 = [v7 stateMachine];
    [v9 enqueueEvent:@"Fetching Boot Script"];
  }
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_137(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_138(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

void __48__VSJSApp_transitionToWaitingForBootScriptState__block_invoke_140(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 app:*(a1 + 32) didFailToStartWithError:*(a1 + 40)];
}

- (void)transitionToWaitingForOnLaunchCallbackState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[VSJSApp transitionToWaitingForOnLaunchCallbackState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v4, 0xCu);
  }

  [(VSJSApp *)self _invokeOnLaunch];
}

- (void)transitionToWaitingForOnExitCallbackState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[VSJSApp transitionToWaitingForOnExitCallbackState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v4, 0xCu);
  }

  [(VSJSApp *)self _invokeOnExit];
}

- (void)transitionToReadyState
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[VSJSApp transitionToReadyState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__VSJSApp_transitionToReadyState__block_invoke;
  block[3] = &unk_278B733D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__VSJSApp_transitionToReadyState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 appDidStart:*(a1 + 32)];
}

- (void)transitionToErrorState
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[VSJSApp transitionToErrorState]";
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Entering %s", &v4, 0xCu);
  }

  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(VSJSApp *)v3 transitionToErrorState];
  }
}

- (void)transitionToStoppedState
{
  v3 = [(VSJSApp *)self jsSingleThreadQueue];
  [v3 stop];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__VSJSApp_transitionToStoppedState__block_invoke;
  block[3] = &unk_278B733D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__VSJSApp_transitionToStoppedState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 appDidStop:*(a1 + 32)];
}

- (VSJSAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __26__VSJSApp__invokeOnLaunch__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 message];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "App indicated it is not ready to receive requests with error %@", v4, 0xCu);
}

@end
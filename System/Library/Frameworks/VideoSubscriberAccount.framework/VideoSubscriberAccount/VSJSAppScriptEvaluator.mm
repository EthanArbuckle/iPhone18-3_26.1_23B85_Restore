@interface VSJSAppScriptEvaluator
- (VSJSAppScriptEvaluator)initWithApp:(id)app urls:(id)urls;
- (void)start;
- (void)transitionToDoneState;
- (void)transitionToEnqueueingNextUrlState;
- (void)transitionToFetchingScriptState;
@end

@implementation VSJSAppScriptEvaluator

- (VSJSAppScriptEvaluator)initWithApp:(id)app urls:(id)urls
{
  appCopy = app;
  urlsCopy = urls;
  v23.receiver = self;
  v23.super_class = VSJSAppScriptEvaluator;
  v9 = [(VSJSAppScriptEvaluator *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_app, app);
    v11 = [urlsCopy copy];
    urls = v10->_urls;
    v10->_urls = v11;

    v13 = [(NSArray *)v10->_urls mutableCopy];
    remainingURLs = v10->_remainingURLs;
    v10->_remainingURLs = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v10->_results;
    v10->_results = v15;

    v17 = objc_alloc_init(VSStateMachine);
    stateMachine = v10->_stateMachine;
    v10->_stateMachine = v17;

    v19 = v10->_stateMachine;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [(VSStateMachine *)v19 setName:v21];

    [(VSStateMachine *)v10->_stateMachine setDelegate:v10];
    [(VSStateMachine *)v10->_stateMachine setDestinationState:@"Enqueueing Next URL" forEvent:@"Start" inState:@"Idle"];
    [(VSStateMachine *)v10->_stateMachine setDestinationState:@"Fetching Script" forEvent:@"Enqueued Next URL" inState:@"Enqueueing Next URL"];
    [(VSStateMachine *)v10->_stateMachine setDestinationState:@"Done" forEvent:@"Done" inState:@"Enqueueing Next URL"];
    [(VSStateMachine *)v10->_stateMachine setDestinationState:@"Enqueueing Next URL" forEvent:@"Done" inState:@"Fetching Script"];
    [(VSStateMachine *)v10->_stateMachine setDestinationState:@"Enqueueing Next URL" forEvent:@"Error" inState:@"Fetching Script"];
    [(VSStateMachine *)v10->_stateMachine activateWithState:@"Idle"];
  }

  return v10;
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  stateMachine = [(VSJSAppScriptEvaluator *)self stateMachine];
  currentState = [stateMachine currentState];
  forceUnwrapObject = [currentState forceUnwrapObject];
  v6 = [forceUnwrapObject isEqual:@"Idle"];

  if ((v6 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-start invoked in non-idle state."];
  }

  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    urls = [(VSJSAppScriptEvaluator *)self urls];
    v9 = 134217984;
    v10 = [urls count];
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Starting script evaluation for %lu URLs", &v9, 0xCu);
  }

  [stateMachine enqueueEvent:@"Start"];
}

- (void)transitionToEnqueueingNextUrlState
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSJSAppScriptEvaluator transitionToEnqueueingNextUrlState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  remainingURLs = [(VSJSAppScriptEvaluator *)self remainingURLs];
  firstObject = [remainingURLs firstObject];

  v6 = VSDefaultLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (firstObject)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = firstObject;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Enqueued URL: %@", &v11, 0xCu);
    }

    remainingURLs2 = [(VSJSAppScriptEvaluator *)self remainingURLs];
    [remainingURLs2 removeObject:firstObject];

    [(VSJSAppScriptEvaluator *)self setCurrentURL:firstObject];
    v9 = @"Enqueued Next URL";
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "No remaining URLs for evaluation.", &v11, 2u);
    }

    v9 = @"Done";
  }

  stateMachine = [(VSJSAppScriptEvaluator *)self stateMachine];
  [stateMachine enqueueEvent:v9];
}

- (void)transitionToFetchingScriptState
{
  v6 = *MEMORY[0x277D85DE8];
  currentURL = [self currentURL];
  v4 = 138412290;
  v5 = currentURL;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Invalid URL: %@", &v4, 0xCu);
}

void __57__VSJSAppScriptEvaluator_transitionToFetchingScriptState__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57__VSJSAppScriptEvaluator_transitionToFetchingScriptState__block_invoke_cold_1(a1, v7, v10);
      }

      [*(a1 + 40) setLoadError:v7];
      [*(a1 + 40) setLoaded:0];
    }

    else
    {
      if (v6)
      {
        v11 = [WeakRetained app];
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
        if (v12)
        {
          [v11 evaluateScript:v12 withSourceURL:*(a1 + 32)];
          [*(a1 + 40) setLoaded:1];
        }
      }

      else
      {
        v11 = VSErrorLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __57__VSJSAppScriptEvaluator_transitionToFetchingScriptState__block_invoke_cold_2(a1, v11);
        }
      }
    }

    v13 = [v9 results];
    [v13 addObject:*(a1 + 40)];

    v14 = [v9 stateMachine];
    [v14 enqueueEvent:@"Done"];
  }
}

- (void)transitionToDoneState
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VSJSAppScriptEvaluator transitionToDoneState]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v6, 0xCu);
  }

  completionBlock = [(VSJSAppScriptEvaluator *)self completionBlock];
  if (completionBlock)
  {
    results = [(VSJSAppScriptEvaluator *)self results];
    (completionBlock)[2](completionBlock, results);
  }
}

void __57__VSJSAppScriptEvaluator_transitionToFetchingScriptState__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Error fetching script for evaluation with URL: %@ error: %@", &v4, 0x16u);
}

void __57__VSJSAppScriptEvaluator_transitionToFetchingScriptState__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Reived no data for script evaluation with URL: %@", &v3, 0xCu);
}

@end
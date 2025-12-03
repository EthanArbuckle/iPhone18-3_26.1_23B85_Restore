@interface LPFetcherGroup
- (LPFetcherGroup)initWithPolicy:(int64_t)policy configuration:(id)configuration description:(id)description completionHandler:(id)handler;
- (id)_responsesRespectingPolicy;
- (unint64_t)numberOfActiveFetches;
- (void)_addFetcher:(id)fetcher atIndex:(unint64_t)index;
- (void)_completed;
- (void)appendFetcher:(id)fetcher;
- (void)cancel;
- (void)evaluateCompleteness;
- (void)startFetchesIfNeeded;
@end

@implementation LPFetcherGroup

- (LPFetcherGroup)initWithPolicy:(int64_t)policy configuration:(id)configuration description:(id)description completionHandler:(id)handler
{
  configurationCopy = configuration;
  descriptionCopy = description;
  handlerCopy = handler;
  v30.receiver = self;
  v30.super_class = LPFetcherGroup;
  v13 = [(LPFetcherGroup *)&v30 init];
  v14 = v13;
  v15 = v13;
  if (v13)
  {
    v13->_loggingID = ++initWithPolicy_configuration_description_completionHandler__nextLoggingID;
    v13->_responsePolicy = policy;
    v16 = [configurationCopy copy];
    configuration = v15->_configuration;
    v15->_configuration = v16;

    v18 = _Block_copy(handlerCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    objc_storeStrong(&v14->_description, description);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tasks = v15->_tasks;
    v15->_tasks = v20;

    webViewForProcessSharing = [(LPFetcherConfiguration *)v15->_configuration webViewForProcessSharing];

    if (!webViewForProcessSharing)
    {
      v23 = objc_alloc(MEMORY[0x1E69853A0]);
      v24 = +[LPMetadataProvider _copyDefaultWebViewConfiguration];
      v25 = [v23 initWithFrame:v24 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(LPFetcherConfiguration *)v15->_configuration setWebViewForProcessSharing:v25];
    }

    rootEvent = [(LPFetcherConfiguration *)v15->_configuration rootEvent];
    v27 = [rootEvent childWithType:1 subtitle:descriptionCopy];
    [(LPFetcherConfiguration *)v15->_configuration setRootEvent:v27];

    v28 = v15;
  }

  return v15;
}

- (void)_addFetcher:(id)fetcher atIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  if (self->_done)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to add a fetcher to an already-complete LPFetcherGroup."];
  }

  if (self->_doneAddingFetchers)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Trying to add a fetcher to an LPFetcherGroup on which -doneAddingFetchers was already called."];
  }

  v7 = objc_alloc_init(LPFetcherGroupTask);
  [(LPFetcherGroupTask *)v7 setFetcher:fetcherCopy];
  v8 = LPLogChannelFetching();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    loggingID = self->_loggingID;
    _loggingID = [fetcherCopy _loggingID];
    description = self->_description;
    v12[0] = 67109634;
    v12[1] = loggingID;
    v13 = 1024;
    v14 = _loggingID;
    v15 = 2112;
    v16 = description;
    _os_log_impl(&dword_1AE886000, v8, OS_LOG_TYPE_DEFAULT, "LPFetcherGroup<%d>: adding LPFetcher<%d> for %@", v12, 0x18u);
  }

  [(NSMutableArray *)self->_tasks insertObject:v7 atIndex:index];
  [(LPFetcherGroup *)self startFetchesIfNeeded];
}

- (void)appendFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  [(LPFetcherGroup *)self _addFetcher:fetcherCopy atIndex:[(NSMutableArray *)self->_tasks count]];
}

- (unint64_t)numberOfActiveFetches
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_tasks;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 hasStarted])
        {
          response = [v7 response];
          v9 = response == 0;

          v3 += v9;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)startFetchesIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_done)
  {
    numberOfActiveFetches = [(LPFetcherGroup *)self numberOfActiveFetches];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_tasks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if (([v8 hasStarted] & 1) == 0)
          {
            if (numberOfActiveFetches > 5)
            {
              goto LABEL_12;
            }

            [v8 setHasStarted:1];
            fetcher = [v8 fetcher];
            configuration = self->_configuration;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __38__LPFetcherGroup_startFetchesIfNeeded__block_invoke;
            v11[3] = &unk_1E7A37158;
            v11[4] = v8;
            v11[5] = self;
            [fetcher fetchWithConfiguration:configuration completionHandler:v11];

            ++numberOfActiveFetches;
          }
        }

        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

LABEL_12:
  }
}

void __38__LPFetcherGroup_startFetchesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setResponse:?];
  [*(a1 + 40) evaluateCompleteness];
  [*(a1 + 40) startFetchesIfNeeded];
}

- (void)evaluateCompleteness
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE886000, v0, v1, "LPFetcherGroup<%d>: complete, but without successful fetcher", v2, v3, v4, v5, v6);
}

- (id)_responsesRespectingPolicy
{
  v50 = *MEMORY[0x1E69E9840];
  responsePolicy = self->_responsePolicy;
  if (responsePolicy)
  {
    if (responsePolicy == 2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v5 = self->_tasks;
      v14 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v14)
      {
        v15 = *v39;
LABEL_16:
        v16 = 0;
        while (1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v5);
          }

          v17 = *(*(&v38 + 1) + 8 * v16);
          v18 = [v2 count];
          if (v18 >= [(LPFetcherConfiguration *)self->_configuration maximumResponseCount])
          {
            break;
          }

          response = [v17 response];
          v20 = response == 0;

          if (!v20)
          {
            response2 = [v17 response];
            state = [response2 state];

            if (state == 2)
            {
              response3 = [v17 response];
              [v2 addObject:response3];
            }
          }

          if (v14 == ++v16)
          {
            v14 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v14)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }
    }

    else
    {
      if (responsePolicy != 1)
      {
        goto LABEL_40;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v5 = self->_tasks;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v6)
      {
        v7 = *v43;
        v2 = MEMORY[0x1E695E0F0];
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v43 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v42 + 1) + 8 * i);
            response4 = [v9 response];
            v11 = response4 == 0;

            if (!v11)
            {
              response5 = [v9 response];
              state2 = [response5 state];

              if (state2 == 2)
              {
                response6 = [v9 response];
                v48 = response6;
                v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];

                goto LABEL_39;
              }
            }
          }

          v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v2 = MEMORY[0x1E695E0F0];
      }
    }
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_tasks;
    v24 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v5);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          response7 = [v27 response];
          if (response7)
          {
            response8 = [v27 response];
            v30 = [response8 state] == 2;

            if (v30)
            {
              response9 = [v27 response];
              [v2 addObject:response9];
            }
          }
        }

        v24 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v24);
    }
  }

LABEL_39:

LABEL_40:

  return v2;
}

- (void)cancel
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  self->_cancelled = 1;

  [(LPFetcherGroup *)self _completed];
}

- (void)_completed
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 2048;
  *(buf + 10) = a3;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPFetcherGroup<%d>: complete with %lu responses", buf, 0x12u);
}

@end
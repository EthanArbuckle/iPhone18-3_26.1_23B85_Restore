@interface VCLinkProbingHandler
- (BOOL)isValidProbingResult:(id)result;
- (VCLinkProbingHandler)initWithDelegate:(id)delegate;
- (id)getProbingResultsForLinkID:(id)d;
- (void)dealloc;
- (void)dispatchedUpdateProbingResults:(id)results;
- (void)dispatchedUpdateQRProbingResult:(id)result;
- (void)flushProbingResults:(id)results;
- (void)loadStorebagValues;
- (void)probingLockdownEnded;
- (void)queryProbingResults;
- (void)removeProbingResultsForLinks:(id)links;
- (void)requestStats;
- (void)resetAggregatedProbingResults;
- (void)setLinkProbingResultConfig;
- (void)setQRLinkID:(id)d;
- (void)startActiveProbingOnLinks:(id)links;
- (void)startActiveProbingQRLink;
- (void)stopActiveProbingOnLinks:(id)links resetStats:(BOOL)stats;
- (void)stopActiveProbingQRLink;
- (void)updateLinkPreferenceOrder;
- (void)updateProbingResults:(id)results;
- (void)updateQRProbingResult:(id)result;
@end

@implementation VCLinkProbingHandler

- (VCLinkProbingHandler)initWithDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCLinkProbingHandler;
  v4 = [(VCLinkProbingHandler *)&v18 init];
  v5 = v4;
  if (v4)
  {
    [(VCLinkProbingHandler *)v4 loadStorebagValues];
    [(VCLinkProbingHandler *)v5 setLinkProbingHandlerDelegate:delegate];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v5->_delegateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcLinkProbing.delegateQueue", 0, CustomRootQueue);
    v5->_serialQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcLinkProbing.serialQueue", 0, CustomRootQueue);
    v7 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v5];
    v8 = [VCDispatchTimer alloc];
    linkProbingQueryResultsInterval = v5->_linkProbingQueryResultsInterval;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__VCLinkProbingHandler_initWithDelegate___block_invoke;
    v17[3] = &unk_1E85F3778;
    v17[4] = v7;
    v5->_queryProbingResultsTimer = [(VCDispatchTimer *)v8 initWithIntervalSeconds:linkProbingQueryResultsInterval callbackBlock:v17 clientQueue:v5->_serialQueue];
    v10 = [VCDispatchTimer alloc];
    linkProbingLockdownPeriod = v5->_linkProbingLockdownPeriod;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __41__VCLinkProbingHandler_initWithDelegate___block_invoke_2;
    v16[3] = &unk_1E85F3778;
    v16[4] = v7;
    v5->_probingLockdownTimer = [(VCDispatchTimer *)v10 initWithIntervalSeconds:linkProbingLockdownPeriod callbackBlock:v16 clientQueue:v5->_serialQueue];
    v5->_aggregatedProbingResults = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_linkPreferenceOrder = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v5->_activelyProbingLinkIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = [VCDispatchTimer alloc];
    linkProbingQRStatFrequency = v5->_linkProbingQRStatFrequency;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__VCLinkProbingHandler_initWithDelegate___block_invoke_3;
    v15[3] = &unk_1E85F3778;
    v15[4] = v7;
    v5->_requestStatsTimer = [(VCDispatchTimer *)v12 initWithIntervalMilliseconds:linkProbingQRStatFrequency callbackBlock:v15 clientQueue:v5->_serialQueue];
    v5->_activeQRStatRequests = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v5;
}

uint64_t __41__VCLinkProbingHandler_initWithDelegate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 queryProbingResults];
}

uint64_t __41__VCLinkProbingHandler_initWithDelegate___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 probingLockdownEnded];
}

uint64_t __41__VCLinkProbingHandler_initWithDelegate___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) strong];

  return [v1 requestStats];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCDispatchTimer *)self->_queryProbingResultsTimer stop];
  [(VCDispatchTimer *)self->_probingLockdownTimer stop];

  objc_storeWeak(&self->_linkProbingHandlerDelegate, 0);
  dispatch_release(self->_delegateQueue);
  self->_delegateQueue = 0;
  dispatch_release(self->_serialQueue);
  self->_serialQueue = 0;

  [(VCDispatchTimer *)self->_requestStatsTimer stop];
  v3.receiver = self;
  v3.super_class = VCLinkProbingHandler;
  [(VCLinkProbingHandler *)&v3 dealloc];
}

- (void)startActiveProbingOnLinks:(id)links
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_linkProbingCapabilityVersion)
  {
    if (links && [links count])
    {
      delegateQueue = self->_delegateQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__VCLinkProbingHandler_startActiveProbingOnLinks___block_invoke;
      v9[3] = &unk_1E85F37F0;
      v9[4] = self;
      v9[5] = links;
      dispatch_async(delegateQueue, v9);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCLinkProbingHandler startActiveProbingOnLinks:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCLinkProbingHandler startActiveProbingOnLinks:]";
        v14 = 1024;
        v15 = 158;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: startActiveProbing failed: Link probing not enabled", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCLinkProbingHandler startActiveProbingOnLinks:];
    }
  }
}

void __50__VCLinkProbingHandler_startActiveProbingOnLinks___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 184) count])
  {
    *(*(a1 + 32) + 200) = micro();
  }

  [*(*(a1 + 32) + 184) addObjectsFromArray:*(a1 + 40)];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(*(a1 + 32) + 184) allObjects];
  [v6 setObject:v2 forKeyedSubscript:*MEMORY[0x1E69A4AB8]];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + 76)];
  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69A4AB0]];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1 + 32) + 80)];
  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69A4AC8]];
  if ([*(a1 + 32) linkProbingHandlerDelegate])
  {
    [objc_msgSend(*(a1 + 32) "linkProbingHandlerDelegate")];
  }

  [*(a1 + 32) setLinkProbingResultConfig];
  v5 = *(a1 + 32);
  if (!*(v5 + 92))
  {
    [*(v5 + 16) start];
    *(*(a1 + 32) + 92) = 1;
  }
}

- (void)stopActiveProbingOnLinks:(id)links resetStats:(BOOL)stats
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_linkProbingCapabilityVersion)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke;
    block[3] = &unk_1E85F37C8;
    block[4] = self;
    block[5] = links;
    statsCopy = stats;
    dispatch_async(delegateQueue, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCLinkProbingHandler stopActiveProbingOnLinks:resetStats:]";
      v13 = 1024;
      v14 = 191;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: stopActiveProbing failed: Link probing not enabled", buf, 0x1Cu);
    }
  }
}

void __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 92) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 && [v2 count] && (objc_msgSend(objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(a1 + 40)), "isSubsetOfSet:", *(*(a1 + 32) + 184)) & 1) != 0)
    {
      [*(*(a1 + 32) + 184) minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", *(a1 + 40))}];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = [*(*(a1 + 32) + 184) count];
      v5 = *MEMORY[0x1E69A4AB8];
      if (v4)
      {
        [v3 setObject:*(a1 + 40) forKeyedSubscript:v5];
        [*(a1 + 32) removeProbingResultsForLinks:*(a1 + 40)];
      }

      else
      {
        [v3 setObject:*MEMORY[0x1E69A4AA8] forKeyedSubscript:v5];
        if (*(a1 + 48) == 1)
        {
          [*(a1 + 32) resetAggregatedProbingResults];
        }

        [*(*(a1 + 32) + 16) stop];
        *(*(a1 + 32) + 92) = 0;
      }

      if ([*(a1 + 32) linkProbingHandlerDelegate])
      {
        [objc_msgSend(*(a1 + 32) "linkProbingHandlerDelegate")];
      }

      *(*(a1 + 32) + 200) = 0;
      *(*(a1 + 32) + 232) = 0;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 flushProbingResults:v7];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke_cold_1();
    }
  }
}

- (void)updateProbingResults:(id)results
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCLinkProbingHandler_updateProbingResults___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = results;
  dispatch_async(delegateQueue, block);
}

- (void)dispatchedUpdateProbingResults:(id)results
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_linkProbingState == 1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [results allKeys];
    v22 = [allKeys countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v22)
    {
      v21 = *v30;
      v20 = allKeys;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v7 = *(*(&v29 + 1) + 8 * i);
          v8 = -[VCLinkProbingHandler isValidProbingResult:](self, "isValidProbingResult:", [results objectForKeyedSubscript:v7]);
          v9 = [(NSMutableDictionary *)self->_aggregatedProbingResults objectForKeyedSubscript:v7];
          if (v8)
          {
            if (v9)
            {
              [-[NSMutableDictionary objectForKeyedSubscript:](self->_aggregatedProbingResults objectForKeyedSubscript:{v7), "mergeProbingResults:", objc_msgSend(results, "objectForKeyedSubscript:", v7)}];
            }

            else
            {
              v10 = [VCLinkProbingResult alloc];
              v11 = [results objectForKeyedSubscript:v7];
              v12 = *&self->_linkProbingResultConfig.envelopeAttackFactor;
              *buf = *&self->_linkProbingResultConfig.linkProbingCapabilityVersion;
              *&buf[16] = v12;
              *&buf[32] = self->_linkProbingResultConfig.plrBuckets;
              [(NSMutableDictionary *)self->_aggregatedProbingResults setObject:[(VCLinkProbingResult *)v10 initWithProbingResults:v11 linkProbingResultConfig:buf] forKeyedSubscript:v7];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              __str = 0;
              intValue = [v7 intValue];
              if ([(NSMutableDictionary *)self->_aggregatedProbingResults objectForKeyedSubscript:v7])
              {
                v14 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_aggregatedProbingResults objectForKeyedSubscript:{v7), "description"), "UTF8String"}];
              }

              else
              {
                v14 = "<nil>";
              }

              asprintf(&__str, "LinkProbing: Updated probing results for linkID: %d -> %s", intValue, v14);
              if (__str)
              {
                __lasts = 0;
                v15 = strtok_r(__str, "\n", &__lasts);
                do
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v16 = VRTraceErrorLogLevelToCSTR();
                    v17 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136316162;
                      *&buf[4] = v16;
                      *&buf[12] = 2080;
                      *&buf[14] = "[VCLinkProbingHandler dispatchedUpdateProbingResults:]";
                      *&buf[22] = 1024;
                      *&buf[24] = 255;
                      *&buf[28] = 2080;
                      *&buf[30] = "[VCLinkProbingHandler dispatchedUpdateProbingResults:]";
                      *&buf[38] = 2080;
                      v26 = v15;
                      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
                    }
                  }

                  v15 = strtok_r(0, "\n", &__lasts);
                }

                while (v15);
                free(__str);
              }

              allKeys = v20;
            }
          }

          else if (v9)
          {
            v27 = v7;
            -[VCLinkProbingHandler removeProbingResultsForLinks:](self, "removeProbingResultsForLinks:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1]);
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v22);
    }

    [(VCLinkProbingHandler *)self updateLinkPreferenceOrder];
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "[VCLinkProbingHandler dispatchedUpdateProbingResults:]";
      *&buf[22] = 1024;
      *&buf[24] = 238;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: updateProbingResults failed: Link probing not in progress", buf, 0x1Cu);
    }
  }
}

- (void)flushProbingResults:(id)results
{
  if ([(VCLinkProbingHandler *)self linkProbingHandlerDelegate])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(NSMutableSet *)self->_activelyProbingLinkIDs count])
    {
      resultsCopy = results;
    }

    else
    {
      resultsCopy = *MEMORY[0x1E69A4AA8];
    }

    [v6 setObject:resultsCopy forKeyedSubscript:*MEMORY[0x1E69A4AB8]];
    [(VCLinkProbingHandlerDelegate *)[(VCLinkProbingHandler *)self linkProbingHandlerDelegate] flushLinkProbingStatusWithOptions:v6];
  }
}

- (BOOL)isValidProbingResult:(id)result
{
  v5 = *MEMORY[0x1E69A4A70];
  v6 = [result objectForKey:*MEMORY[0x1E69A4A70]];
  if (v6)
  {
    LOBYTE(v6) = [objc_msgSend(result objectForKeyedSubscript:{v5), "unsignedIntValue"}] >= self->_minSentRequestCountThreshold;
  }

  return v6;
}

- (void)removeProbingResultsForLinks:(id)links
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [links countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(links);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(NSMutableDictionary *)self->_aggregatedProbingResults objectForKeyedSubscript:v9])
        {
          [(NSMutableDictionary *)self->_aggregatedProbingResults removeObjectForKey:v9];
        }
      }

      v6 = [links countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (id)getProbingResultsForLinkID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__37;
  v11 = __Block_byref_object_dispose__37;
  v12 = 0;
  delegateQueue = self->_delegateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VCLinkProbingHandler_getProbingResultsForLinkID___block_invoke;
  v6[3] = &unk_1E85F6638;
  v6[4] = self;
  v6[5] = d;
  v6[6] = &v7;
  dispatch_sync(delegateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __51__VCLinkProbingHandler_getProbingResultsForLinkID___block_invoke(void *a1)
{
  result = *(a1[4] + 56);
  if (result)
  {
    result = [result objectForKeyedSubscript:a1[5]];
    if (result)
    {
      result = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
      *(*(a1[6] + 8) + 40) = result;
    }
  }

  return result;
}

- (void)setQRLinkID:(id)d
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__VCLinkProbingHandler_setQRLinkID___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = d;
  block[5] = self;
  dispatch_async(delegateQueue, block);
}

void __36__VCLinkProbingHandler_setQRLinkID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {

    *(*(a1 + 40) + 264) = [*(a1 + 32) copy];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1 + 40) + 264);
        v5 = 136315906;
        v6 = v2;
        v7 = 2080;
        v8 = "[VCLinkProbingHandler setQRLinkID:]_block_invoke";
        v9 = 1024;
        v10 = 303;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: QR link ID=%@", &v5, 0x26u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __36__VCLinkProbingHandler_setQRLinkID___block_invoke_cold_1();
    }
  }
}

- (void)startActiveProbingQRLink
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__VCLinkProbingHandler_startActiveProbingQRLink__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

void __48__VCLinkProbingHandler_startActiveProbingQRLink__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 256) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v2;
        v13 = 2080;
        v14 = "[VCLinkProbingHandler startActiveProbingQRLink]_block_invoke";
        v15 = 1024;
        v16 = 310;
        v4 = " [%s] %s:%d LinkProbing: startActiveProbingQRLink failed: QR link probing already in progress";
        v5 = v3;
        v6 = 28;
LABEL_9:
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, v4, &v11, v6);
      }
    }
  }

  else if (*(v1 + 264))
  {
    *(v1 + 256) = 1;
    [*(*(a1 + 32) + 280) removeAllObjects];
    [*(*(a1 + 32) + 32) start];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 264);
        v11 = 136315906;
        v12 = v8;
        v13 = 2080;
        v14 = "[VCLinkProbingHandler startActiveProbingQRLink]_block_invoke";
        v15 = 1024;
        v16 = 320;
        v17 = 2112;
        v18 = v10;
        v4 = " [%s] %s:%d LinkProbing: startActiveProbingQRLink success: QR link probing started on linkID=%@";
        v5 = v9;
        v6 = 38;
        goto LABEL_9;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __48__VCLinkProbingHandler_startActiveProbingQRLink__block_invoke_cold_1();
    }
  }
}

- (void)stopActiveProbingQRLink
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VCLinkProbingHandler_stopActiveProbingQRLink__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(delegateQueue, v3);
}

void __47__VCLinkProbingHandler_stopActiveProbingQRLink__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 256) == 1)
  {
    *(v1 + 256) = 0;
    [*(*(a1 + 32) + 32) stop];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v2;
        v6 = 2080;
        v7 = "[VCLinkProbingHandler stopActiveProbingQRLink]_block_invoke";
        v8 = 1024;
        v9 = 332;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: stopActiveProbingQRLink success: QR link probing stopped", &v4, 0x1Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __47__VCLinkProbingHandler_stopActiveProbingQRLink__block_invoke_cold_1();
    }
  }
}

- (void)updateQRProbingResult:(id)result
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCLinkProbingHandler_updateQRProbingResult___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = result;
  dispatch_async(delegateQueue, block);
}

- (void)loadStorebagValues
{
  v61 = *MEMORY[0x1E69E9840];
  self->_linkProbingInterval = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-interval" userDefaultKey:@"linkProbingInterval" defaultValue:&unk_1F579BB68 isDoubleType:{0), "unsignedIntValue"}];
  self->_linkProbingTimeout = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-timeout" userDefaultKey:@"linkProbingTimeout" defaultValue:&unk_1F579BB80 isDoubleType:{0), "unsignedIntValue"}];
  self->_linkProbingQueryResultsInterval = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-query-results-interval" userDefaultKey:@"linkProbingQueryResultsInterval" defaultValue:&unk_1F579BB98 isDoubleType:{0), "unsignedIntValue"}];
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-connection-lockdown-period" userDefaultKey:@"linkProbingConnectionLockdownPeriod" defaultValue:&unk_1F579BBB0 isDoubleType:{1), "doubleValue"}];
  self->_linkProbingConnectionLockdownPeriod = v3;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-exponential-moving-mean-factor" userDefaultKey:@"linkProbingExponentialMovingMeanFactor" defaultValue:&unk_1F579E550 isDoubleType:{1), "doubleValue"}];
  self->_expMovMeanFactor = v4;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-envelope-attack-factor" userDefaultKey:@"linkProbingEnvelopeAttackFactor" defaultValue:&unk_1F579E550 isDoubleType:{1), "doubleValue"}];
  self->_plrEnvelopeAttackFactor = v5;
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-envelope-decay-factor" userDefaultKey:@"linkProbingEnvelopeDecayFactor" defaultValue:&unk_1F579E560 isDoubleType:{1), "doubleValue"}];
  self->_plrEnvelopeDecayFactor = v6;
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(+[GKSConnectivitySettings getStorebagValueStorebagKey:defaultValue:](GKSConnectivitySettings, "getStorebagValueStorebagKey:defaultValue:", @"vc-link-probing-plr-buckets", @"0.25, 2.5, 10, 20, 30, 100"), "componentsSeparatedByString:", @", ")}];
  v8 = llround(vcvtd_n_f64_u32(1000 * self->_linkProbingQueryResultsInterval / self->_linkProbingInterval, 2uLL));
  self->_plrBuckets = v7;
  self->_minSentRequestCountThreshold = v8;
  self->_linkProbingDuplicationWaitTimeout = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-duplication-wait-timeout" userDefaultKey:@"linkProbingDuplicationWaitTimeout" defaultValue:&unk_1F579BBC8 isDoubleType:{0), "unsignedIntValue"}];
  self->_consecutiveIdenticalQueryResultMax = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-identical-query-result-max" userDefaultKey:@"linkProbingIdenticalQueryResultMax" defaultValue:&unk_1F579BBB0 isDoubleType:{0), "unsignedIntValue"}];
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-lockdown-period" userDefaultKey:@"linkProbingLockdownPeriod" defaultValue:&unk_1F579BBE0 isDoubleType:{1), "doubleValue"}];
  self->_linkProbingLockdownPeriod = v9;
  self->_linkProbingQRStatFrequency = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-qr-stat-request-frequency" userDefaultKey:@"linkProbingQRStatRequestFrequency" defaultValue:&unk_1F579BBF8 isDoubleType:{0), "unsignedIntValue"}];
  self->_linkProbingQRStatRequestMaxCount = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-qr-stat-request-max-count" userDefaultKey:@"linkProbingQRStatRequestMaxCount" defaultValue:&unk_1F579BC10 isDoubleType:{0), "unsignedIntValue"}];
  [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-link-probing-qr-stat-request-max-rtt" userDefaultKey:@"linkProbingQRStatRequestMaxRTT" defaultValue:&unk_1F579BC28 isDoubleType:{1), "doubleValue"}];
  self->_inkProbingQRStatRequestMaxRTT = v10;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      linkProbingInterval = self->_linkProbingInterval;
      linkProbingTimeout = self->_linkProbingTimeout;
      linkProbingQueryResultsInterval = self->_linkProbingQueryResultsInterval;
      expMovMeanFactor = self->_expMovMeanFactor;
      plrEnvelopeAttackFactor = self->_plrEnvelopeAttackFactor;
      plrEnvelopeDecayFactor = self->_plrEnvelopeDecayFactor;
      v19 = [(NSArray *)self->_plrBuckets componentsJoinedByString:@", "];
      minSentRequestCountThreshold = self->_minSentRequestCountThreshold;
      linkProbingDuplicationWaitTimeout = self->_linkProbingDuplicationWaitTimeout;
      consecutiveIdenticalQueryResultMax = self->_consecutiveIdenticalQueryResultMax;
      linkProbingLockdownPeriod = self->_linkProbingLockdownPeriod;
      linkProbingQRStatFrequency = self->_linkProbingQRStatFrequency;
      linkProbingQRStatRequestMaxCount = self->_linkProbingQRStatRequestMaxCount;
      inkProbingQRStatRequestMaxRTT = self->_inkProbingQRStatRequestMaxRTT;
      v27 = 136319234;
      v28 = v11;
      v29 = 2080;
      v30 = "[VCLinkProbingHandler loadStorebagValues]";
      v31 = 1024;
      v32 = 375;
      v33 = 1024;
      v34 = linkProbingInterval;
      v35 = 1024;
      v36 = linkProbingTimeout;
      v37 = 1024;
      v38 = linkProbingQueryResultsInterval;
      v39 = 2048;
      v40 = expMovMeanFactor;
      v41 = 2048;
      v42 = plrEnvelopeAttackFactor;
      v43 = 2048;
      v44 = plrEnvelopeDecayFactor;
      v45 = 2112;
      v46 = v19;
      v47 = 1024;
      v48 = minSentRequestCountThreshold;
      v49 = 1024;
      v50 = linkProbingDuplicationWaitTimeout;
      v51 = 1024;
      v52 = consecutiveIdenticalQueryResultMax;
      v53 = 2048;
      v54 = linkProbingLockdownPeriod;
      v55 = 1024;
      v56 = linkProbingQRStatFrequency;
      v57 = 1024;
      v58 = linkProbingQRStatRequestMaxCount;
      v59 = 2048;
      v60 = inkProbingQRStatRequestMaxRTT;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Loaded storebag values linkProbingInterval=%d linkProbingTimeout=%d linkProbingQueryResultsInterval=%d exponentialMovingMeanFactor=%f plrEnvelopeAttackFactor=%f plrEnvelopeDecayFactor=%f plrBuckets=%@ minSentRequestCountThreshold=%d _linkProbingDuplicationWaitTimeout=%d _consecutiveIdenticalQueryResultMax=%d _linkProbingLockdownPeriod=%f _linkProbingQRStatFrequency=%d _linkProbingQRStatRequestMaxCount=%d _inkProbingQRStatRequestMaxRTT=%f", &v27, 0x88u);
    }
  }
}

- (void)setLinkProbingResultConfig
{
  self->_linkProbingResultConfig.linkProbingCapabilityVersion = self->_linkProbingCapabilityVersion;
  self->_linkProbingResultConfig.linkProbingQueryResultsInterval = self->_linkProbingInterval;
  *&self->_linkProbingResultConfig.expMovMeanFactor = *&self->_expMovMeanFactor;
  self->_linkProbingResultConfig.envelopeDecayFactor = self->_plrEnvelopeDecayFactor;
  self->_linkProbingResultConfig.plrBuckets = self->_plrBuckets;
}

- (void)queryProbingResults
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = micro();
  if (self->_linkProbingState == 1)
  {
    v5 = v3;
    LODWORD(v4) = self->_linkProbingDuplicationWaitTimeout;
    if (v3 - self->_probingStartTime > v4 && !self->_isDuplicationEnabled)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = v5 - self->_probingStartTime;
          *buf = 136315906;
          v12 = v6;
          v13 = 2080;
          v14 = "[VCLinkProbingHandler queryProbingResults]";
          v15 = 1024;
          v16 = 391;
          v17 = 2048;
          v18 = v8;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Stop active probing because duplication did not start in %f seconds after starting probing.", buf, 0x26u);
        }
      }

      [(VCLinkProbingHandler *)self stopActiveProbingOnLinks:[(NSMutableSet *)self->_activelyProbingLinkIDs allObjects] resetStats:0];
    }
  }

  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VCLinkProbingHandler_queryProbingResults__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __43__VCLinkProbingHandler_queryProbingResults__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 92) == 1)
  {
    v3 = *(v1 + 184);
    if (v3 && [v3 count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = [*(*(a1 + 32) + 184) allObjects];
      [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69A4AB8]];
      if ([*(a1 + 32) linkProbingHandlerDelegate])
      {
        [objc_msgSend(*(a1 + 32) "linkProbingHandlerDelegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __43__VCLinkProbingHandler_queryProbingResults__block_invoke_cold_2();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __43__VCLinkProbingHandler_queryProbingResults__block_invoke_cold_1();
    }
  }
}

- (void)updateLinkPreferenceOrder
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = micro();
  v4 = [(NSMutableDictionary *)self->_aggregatedProbingResults keysSortedByValueUsingComparator:&__block_literal_global_104];
  if ([v4 count] && -[NSArray count](self->_linkPreferenceOrder, "count") && objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 0), "isEqualToNumber:", -[NSArray objectAtIndexedSubscript:](self->_linkPreferenceOrder, "objectAtIndexedSubscript:", 0)))
  {
    v5 = self->_consecutiveIdenticalQueryResultCount + 1;
    self->_consecutiveIdenticalQueryResultCount = v5;
  }

  else
  {
    v5 = 0;
    self->_consecutiveIdenticalQueryResultCount = 0;
  }

  if (v5 == self->_consecutiveIdenticalQueryResultMax - 1 && self->_linkProbingState == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_consecutiveIdenticalQueryResultCount + 1;
        v9 = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCLinkProbingHandler updateLinkPreferenceOrder]";
        v13 = 1024;
        v14 = 438;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Stop active probing because the same connection chosen for duplication after %d consecutive queries", &v9, 0x22u);
      }
    }

    [(VCLinkProbingHandler *)self stopActiveProbingOnLinks:[(NSMutableSet *)self->_activelyProbingLinkIDs allObjects] resetStats:0];
    [(VCDispatchTimer *)self->_probingLockdownTimer start];
  }

  if (v3 - self->_lastLinkPreferenceUpdateNotificationTime >= self->_linkProbingConnectionLockdownPeriod)
  {
    self->_lastLinkPreferenceUpdateNotificationTime = v3;
    if (([v4 isEqualToArray:self->_linkPreferenceOrder] & 1) == 0)
    {
      if ([(VCLinkProbingHandler *)self linkProbingHandlerDelegate])
      {

        self->_linkPreferenceOrder = [v4 copy];
        [(VCLinkProbingHandlerDelegate *)[(VCLinkProbingHandler *)self linkProbingHandlerDelegate] didUpdateLinkPreferenceOrder:self->_linkPreferenceOrder];
      }
    }
  }
}

uint64_t __49__VCLinkProbingHandler_updateLinkPreferenceOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_msgSend(a2 "plrTier")];
  if (v5 > [objc_msgSend(a3 "plrTier")])
  {
    return 1;
  }

  v7 = [objc_msgSend(a2 "plrTier")];
  if (v7 < [objc_msgSend(a3 "plrTier")])
  {
    return -1;
  }

  [objc_msgSend(a2 "expMovMeanRTT")];
  v9 = v8;
  [objc_msgSend(a3 "expMovMeanRTT")];
  if (v9 > v10)
  {
    return 1;
  }

  [objc_msgSend(a2 "expMovMeanRTT")];
  v12 = v11;
  [objc_msgSend(a3 "expMovMeanRTT")];
  if (v12 >= v13)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)probingLockdownEnded
{
  v14 = *MEMORY[0x1E69E9840];
  [(VCDispatchTimer *)self->_probingLockdownTimer stop];
  if (self->_isDuplicationEnabled && !self->_linkProbingState)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        linkProbingLockdownPeriod = self->_linkProbingLockdownPeriod;
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCLinkProbingHandler probingLockdownEnded]";
        v10 = 1024;
        v11 = 456;
        v12 = 2048;
        v13 = linkProbingLockdownPeriod;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Start active probing because connection for duplication was last updated using probing results %f seconds ago, and duplication is still active.", &v6, 0x26u);
      }
    }

    [(VCLinkProbingHandlerDelegate *)[(VCLinkProbingHandler *)self linkProbingHandlerDelegate] didLinkProbingLockdownEnd];
  }
}

- (void)resetAggregatedProbingResults
{
  v4[5] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_linkPreferenceOrder count])
  {

    self->_linkPreferenceOrder = objc_alloc_init(MEMORY[0x1E695DEC8]);
    if ([(VCLinkProbingHandler *)self linkProbingHandlerDelegate])
    {
      delegateQueue = self->_delegateQueue;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __53__VCLinkProbingHandler_resetAggregatedProbingResults__block_invoke;
      v4[3] = &unk_1E85F3778;
      v4[4] = self;
      dispatch_async(delegateQueue, v4);
    }
  }

  [(NSMutableDictionary *)self->_aggregatedProbingResults removeAllObjects];
}

uint64_t __53__VCLinkProbingHandler_resetAggregatedProbingResults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) linkProbingHandlerDelegate];
  v3 = *(*(a1 + 32) + 64);

  return [v2 didUpdateLinkPreferenceOrder:v3];
}

- (void)requestStats
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: requestStats failed: Invalid linkID", v2, v3, v4, v5, v6);
}

void __36__VCLinkProbingHandler_requestStats__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:*(*(a1 + 32) + 264) forKeyedSubscript:*MEMORY[0x1E69A4A40]];
  v3 = MEMORY[0x1E696AD98];
  ++*(*(a1 + 32) + 272);
  v4 = [v3 numberWithUnsignedLongLong:?];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69A4B10]];
  if ([*(a1 + 32) linkProbingHandlerDelegate])
  {
    v5 = [*(*(a1 + 32) + 280) count];
    v6 = *(a1 + 32);
    if (v5 == v6[60])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 240);
          v17 = 136315906;
          v18 = v7;
          v19 = 2080;
          v20 = "[VCLinkProbingHandler requestStats]_block_invoke";
          v21 = 1024;
          v22 = 485;
          v23 = 1024;
          LODWORD(v24) = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Request count reached max=%d", &v17, 0x22u);
        }
      }

      [objc_msgSend(*(a1 + 32) "linkProbingHandlerDelegate")];
      v6 = *(a1 + 32);
    }

    [objc_msgSend(v6 "linkProbingHandlerDelegate")];
    v10 = micro();
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [*(*(a1 + 32) + 280) setObject:v11 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(*(a1 + 32) + 272))}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(v14 + 272);
        v16 = [*(v14 + 280) count];
        v17 = 136316418;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCLinkProbingHandler requestStats]_block_invoke";
        v21 = 1024;
        v22 = 491;
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = v10;
        v27 = 2048;
        v28 = v16;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Requesting stats with statsId=%llu at time=%f requestCount=%lu", &v17, 0x3Au);
      }
    }
  }
}

- (void)dispatchedUpdateQRProbingResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_qrLinkProbingState != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v22 = v13;
    v23 = 2080;
    v24 = "[VCLinkProbingHandler dispatchedUpdateQRProbingResult:]";
    v25 = 1024;
    v26 = 499;
    v12 = " [%s] %s:%d LinkProbing: dispatchedUpdateQRProbingResult failed: QR link probing not in progress";
LABEL_17:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x1Cu);
    return;
  }

  if (!result)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v22 = v14;
    v23 = 2080;
    v24 = "[VCLinkProbingHandler dispatchedUpdateQRProbingResult:]";
    v25 = 1024;
    v26 = 503;
    v12 = " [%s] %s:%d LinkProbing: dispatchedUpdateQRProbingResult failed: QR probing result is empty";
    goto LABEL_17;
  }

  v5 = *MEMORY[0x1E69A4B10];
  v6 = [result objectForKeyedSubscript:*MEMORY[0x1E69A4B10]];
  v7 = [result objectForKeyedSubscript:*MEMORY[0x1E69A4B18]];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (ErrorLogLevelForModule < 7)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v22 = v10;
    v23 = 2080;
    v24 = "[VCLinkProbingHandler dispatchedUpdateQRProbingResult:]";
    v25 = 1024;
    v26 = 509;
    v12 = " [%s] %s:%d LinkProbing: dispatchedUpdateQRProbingResult failed: QR probing result is invalid";
    goto LABEL_17;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [result objectForKeyedSubscript:v5];
      v18 = [result objectForKeyedSubscript:*MEMORY[0x1E69A4B20]];
      *buf = 136316162;
      v22 = v15;
      v23 = 2080;
      v24 = "[VCLinkProbingHandler dispatchedUpdateQRProbingResult:]";
      v25 = 1024;
      v26 = 512;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d LinkProbing: Received stat response with statsID=%@ at timestamp=%@", buf, 0x30u);
    }
  }

  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VCLinkProbingHandler_dispatchedUpdateQRProbingResult___block_invoke;
  block[3] = &unk_1E85F3E30;
  block[4] = self;
  block[5] = v6;
  block[6] = v7;
  dispatch_async(delegateQueue, block);
}

double *__56__VCLinkProbingHandler_dispatchedUpdateQRProbingResult___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 280) objectForKeyedSubscript:*(a1 + 40)];
  if (result)
  {
    v3 = [*(a1 + 48) unsignedLongValue];
    result = *(a1 + 32);
    if (result[31] >= v3)
    {
      if ([result linkProbingHandlerDelegate])
      {
        [objc_msgSend(*(a1 + 32) "linkProbingHandlerDelegate")];
      }

      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 280);

      return [v5 removeObjectForKey:v4];
    }
  }

  return result;
}

- (void)startActiveProbingOnLinks:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: startActiveProbing failed: Invalid linkID list", v2, v3, v4, v5, v6);
}

- (void)startActiveProbingOnLinks:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 158;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d LinkProbing: startActiveProbing failed: Link probing not enabled", v1, 0x1Cu);
}

void __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: stopActiveProbing failed: Link probing not in progress", v2, v3, v4, v5, v6);
}

void __60__VCLinkProbingHandler_stopActiveProbingOnLinks_resetStats___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: stopActiveProbing failed: Invalid linkID list", v2, v3, v4, v5, v6);
}

void __36__VCLinkProbingHandler_setQRLinkID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: setQRLinkID failed: Invalid linkID", v2, v3, v4, v5, v6);
}

void __48__VCLinkProbingHandler_startActiveProbingQRLink__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: startActiveProbingQRLink failed: linkID is not set", v2, v3, v4, v5, v6);
}

void __47__VCLinkProbingHandler_stopActiveProbingQRLink__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: stopActiveProbingQRLink failed: QR link probing not in progress", v2, v3, v4, v5, v6);
}

void __43__VCLinkProbingHandler_queryProbingResults__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: queryProbingResults failed: Link probing not in progress", v2, v3, v4, v5, v6);
}

void __43__VCLinkProbingHandler_queryProbingResults__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d LinkProbing: queryProbingResults failed: No links are currently being probed", v2, v3, v4, v5, v6);
}

@end
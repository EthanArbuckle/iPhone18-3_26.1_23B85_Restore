@interface AFSiriClientStateManager
+ (id)sharedManager;
- (AFSiriClientStateManager)initWithInstanceContext:(id)a3;
- (id)_stateForClient:(void *)a3 createIfAbsent:(BOOL)a4;
- (unint64_t)_aggregatedState;
- (void)_aggregateStatesAndPublishIfNeeded;
- (void)_beginListeningForClient:(void *)a3;
- (void)_beginPresentationTransition;
- (void)_beginRequestWithUUID:(id)a3 forClient:(void *)a4;
- (void)_beginSessionForClient:(void *)a3;
- (void)_beginSpeakingForClient:(void *)a3;
- (void)_endListeningForClient:(void *)a3;
- (void)_endPresentationTransitionForReason:(id)a3;
- (void)_endRequestWithUUID:(id)a3 forClient:(void *)a4;
- (void)_endSessionForClient:(void *)a3;
- (void)_endSpeakingForClient:(void *)a3;
- (void)_removeStateForClient:(void *)a3;
- (void)beginListeningForClient:(void *)a3;
- (void)beginPresentationTransition;
- (void)beginRequestWithUUID:(id)a3 forClient:(void *)a4;
- (void)beginSessionForClient:(void *)a3;
- (void)beginSpeakingForClient:(id)a3;
- (void)beginTransactionForReason:(int64_t)a3;
- (void)endListeningForClient:(void *)a3;
- (void)endPresentationTransition;
- (void)endRequestWithUUID:(id)a3 forClient:(void *)a4;
- (void)endSessionForClient:(void *)a3;
- (void)endSpeakingForClient:(id)a3;
- (void)endTransactionForReason:(int64_t)a3;
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)invalidateClient:(void *)a3;
@end

@implementation AFSiriClientStateManager

- (void)_aggregateStatesAndPublishIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  transactionDepth = self->_transactionDepth;
  if (transactionDepth < 1)
  {
    v5 = [(AFSiriClientStateManager *)self _aggregatedState];
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v11 = "[AFSiriClientStateManager _aggregateStatesAndPublishIfNeeded]";
      v12 = 1024;
      *v13 = (v5 >> 1) & 1;
      *&v13[4] = 1024;
      *&v13[6] = v5 & 1;
      v14 = 1024;
      v15 = (v5 >> 2) & 1;
      v16 = 1024;
      v17 = (v5 >> 3) & 1;
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s hasActiveSession = %d, hasActiveRequest = %d, isListening = %d, isSpeaking = %d", buf, 0x24u);
    }

    publisher = self->_publisher;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__AFSiriClientStateManager__aggregateStatesAndPublishIfNeeded__block_invoke;
    v9[3] = &__block_descriptor_40_e8_Q16__0Q8l;
    v9[4] = v5;
    [(AFNotifyStatePublisher *)publisher publishStateWithBlock:v9];
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[AFSiriClientStateManager _aggregateStatesAndPublishIfNeeded]";
      v12 = 2048;
      *v13 = transactionDepth;
      _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s Skipped because transaction depth is %ld", buf, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_aggregatedState
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSMapTable *)self->_statesByClient objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v10 + 1) + 8 * i) notifyState];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __62__AFSiriClientStateManager__aggregateStatesAndPublishIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v8 = 136315650;
    v9 = "[AFSiriClientStateManager _aggregateStatesAndPublishIfNeeded]_block_invoke";
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s state: %llu -> %llu", &v8, 0x20u);
  }

  result = *(a1 + 32);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_43419 != -1)
  {
    dispatch_once(&sharedManager_onceToken_43419, &__block_literal_global_43420);
  }

  v3 = sharedManager_sharedManager_43421;

  return v3;
}

void __56__AFSiriClientStateManager__beginPresentationTransition__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_group_leave(*(*(a1 + 32) + 56));
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = mach_absolute_time() - *(a1 + 40);
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v8 = 136315650;
    v9 = "[AFSiriClientStateManager _beginPresentationTransition]_block_invoke";
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = *&_AFMachAbsoluteTimeRate_rate * v6 / 1000000000.0;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Relinquished presentation transition assertion. (signal = %ld, duration = %f)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endPresentationTransition
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AFSiriClientStateManager_endPresentationTransition__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)beginPresentationTransition
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AFSiriClientStateManager_beginPresentationTransition__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_beginPresentationTransition
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[AFSiriClientStateManager _beginPresentationTransition]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  presentationTransitionWatchdogTimer = self->_presentationTransitionWatchdogTimer;
  if (presentationTransitionWatchdogTimer)
  {
    [(AFWatchdogTimer *)presentationTransitionWatchdogTimer cancel];
    v5 = self->_presentationTransitionWatchdogTimer;
    self->_presentationTransitionWatchdogTimer = 0;
  }

  if (self->_presentationTransitionAssertion)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[AFSiriClientStateManager _beginPresentationTransition]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Attempted to begin a presentation transition when there's already a current presentation transition.", buf, 0xCu);
    }
  }

  else
  {
    v7 = mach_absolute_time();
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[AFSiriClientStateManager _beginPresentationTransition]";
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s Acquired presentation transition assertion.", buf, 0xCu);
    }

    dispatch_group_enter(self->_presentationTransitionGroup);
    v9 = [AFSafetyBlock alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__AFSiriClientStateManager__beginPresentationTransition__block_invoke;
    v19[3] = &unk_1E7348530;
    v19[4] = self;
    v19[5] = v7;
    v10 = [(AFSafetyBlock *)v9 initWithBlock:v19];
    presentationTransitionAssertion = self->_presentationTransitionAssertion;
    self->_presentationTransitionAssertion = v10;
  }

  objc_initWeak(buf, self);
  v12 = [AFWatchdogTimer alloc];
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__AFSiriClientStateManager__beginPresentationTransition__block_invoke_12;
  v17[3] = &unk_1E7348A80;
  objc_copyWeak(&v18, buf);
  v14 = [(AFWatchdogTimer *)v12 initWithTimeoutInterval:queue onQueue:v17 timeoutHandler:4.0];
  v15 = self->_presentationTransitionWatchdogTimer;
  self->_presentationTransitionWatchdogTimer = v14;

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_endPresentationTransitionForReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[AFSiriClientStateManager _endPresentationTransitionForReason:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s reason = %@", &v12, 0x16u);
  }

  presentationTransitionWatchdogTimer = self->_presentationTransitionWatchdogTimer;
  if (presentationTransitionWatchdogTimer)
  {
    [(AFWatchdogTimer *)presentationTransitionWatchdogTimer cancel];
    v7 = self->_presentationTransitionWatchdogTimer;
    self->_presentationTransitionWatchdogTimer = 0;
  }

  presentationTransitionAssertion = self->_presentationTransitionAssertion;
  if (presentationTransitionAssertion)
  {
    [(AFSafetyBlock *)presentationTransitionAssertion invokeWithSignal:0];
    v9 = self->_presentationTransitionAssertion;
    self->_presentationTransitionAssertion = 0;
  }

  else
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[AFSiriClientStateManager _endPresentationTransitionForReason:]";
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, "%s Attempted to end a presentation transition when there's no current presentation transition.", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__AFSiriClientStateManager__beginPresentationTransition__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endPresentationTransitionForReason:@"Timeout"];
}

- (void)_endSpeakingForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:0];
  [v4 setIsSpeaking:0];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_beginSpeakingForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:1];
  [v4 setIsSpeaking:1];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_endListeningForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:0];
  [v4 setIsListening:0];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_beginListeningForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:1];
  [v4 setIsListening:1];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_endRequestWithUUID:(id)a3 forClient:(void *)a4
{
  v6 = a3;
  v7 = [(AFSiriClientStateManager *)self _stateForClient:a4 createIfAbsent:0];
  [v7 removeRequestUUID:v6];

  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_beginRequestWithUUID:(id)a3 forClient:(void *)a4
{
  v6 = a3;
  v7 = [(AFSiriClientStateManager *)self _stateForClient:a4 createIfAbsent:1];
  [v7 addRequestUUID:v6];

  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_endSessionForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:0];
  [v4 setHasActiveSession:0];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_beginSessionForClient:(void *)a3
{
  v4 = [(AFSiriClientStateManager *)self _stateForClient:a3 createIfAbsent:1];
  [v4 setHasActiveSession:1];
  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
}

- (void)_removeStateForClient:(void *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  NSMapRemove(self->_statesByClient, a3);
  if (![(NSMapTable *)self->_statesByClient count])
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[AFSiriClientStateManager _removeStateForClient:]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Resetting transaction depth since last client has been invalidated", &v7, 0xCu);
    }

    if (self->_transactionDepth >= 1)
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = "[AFSiriClientStateManager _removeStateForClient:]";
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s last client was removed before all transactions ended", &v7, 0xCu);
      }
    }

    self->_transactionDepth = 0;
  }

  [(AFSiriClientStateManager *)self _aggregateStatesAndPublishIfNeeded];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)_stateForClient:(void *)a3 createIfAbsent:(BOOL)a4
{
  v4 = a4;
  v7 = NSMapGet(self->_statesByClient, a3);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(_AFSiriClientState);
    NSMapInsert(self->_statesByClient, a3, v7);
  }

  return v7;
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = mach_absolute_time();
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AFSiriClientStateManager_getCurrentStateWithCompletion___block_invoke;
    block[3] = &unk_1E73484E8;
    block[4] = self;
    v9 = v5;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

void __58__AFSiriClientStateManager_getCurrentStateWithCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 56);
  v4 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AFSiriClientStateManager_getCurrentStateWithCompletion___block_invoke_2;
  block[3] = &unk_1E73484E8;
  v5 = a1[5];
  v9 = a1[6];
  v6 = v5;
  block[4] = a1[4];
  v8 = v6;
  dispatch_group_notify(v3, v4, block);
}

uint64_t __58__AFSiriClientStateManager_getCurrentStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    v4 = mach_absolute_time() - *(a1 + 48);
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v7 = 136315394;
    v8 = "[AFSiriClientStateManager getCurrentStateWithCompletion:]_block_invoke_2";
    v9 = 2048;
    v10 = *&_AFMachAbsoluteTimeRate_rate * v4 / 1000000000.0;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Took %f seconds to access current state.", &v7, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) _aggregatedState]);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)endTransactionForReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AFSiriClientStateManager_endTransactionForReason___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

uint64_t __52__AFSiriClientStateManager_endTransactionForReason___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = AFSiriLogContextConnection;
  if (v3 < 1)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[AFSiriClientStateManager endTransactionForReason:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Attempting to decrement transaction depth below 0", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 40);
      v8 = v4;
      if (v7 > 4)
      {
        v9 = @"(unknown)";
      }

      else
      {
        v9 = off_1E7344A80[v7];
      }

      v10 = v9;
      v11 = 136315394;
      v12 = "[AFSiriClientStateManager endTransactionForReason:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Ending transaction for reason: %@", &v11, 0x16u);

      v2 = *(a1 + 32);
      v3 = *(v2 + 32);
    }

    *(v2 + 32) = v3 - 1;
  }

  result = [*(a1 + 32) _aggregateStatesAndPublishIfNeeded];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)beginTransactionForReason:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AFSiriClientStateManager_beginTransactionForReason___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __54__AFSiriClientStateManager_beginTransactionForReason___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) count];
  v3 = AFSiriLogContextConnection;
  if (v2)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v6 = v3;
      if (v5 > 4)
      {
        v7 = @"(unknown)";
      }

      else
      {
        v7 = off_1E7344A80[v5];
      }

      v11 = v7;
      v13 = 136315394;
      v14 = "[AFSiriClientStateManager beginTransactionForReason:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s Started transaction for reason: %@", &v13, 0x16u);
    }

    ++*(*(a1 + 32) + 32);
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    v9 = v3;
    if (v8 > 4)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_1E7344A80[v8];
    }

    v12 = v10;
    v13 = 136315394;
    v14 = "[AFSiriClientStateManager beginTransactionForReason:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Not begining transaction for reason: %@", &v13, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)endSpeakingForClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__AFSiriClientStateManager_endSpeakingForClient___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)beginSpeakingForClient:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__AFSiriClientStateManager_beginSpeakingForClient___block_invoke;
    v7[3] = &unk_1E7349860;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)endListeningForClient:(void *)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__AFSiriClientStateManager_endListeningForClient___block_invoke;
    v4[3] = &unk_1E7348498;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(queue, v4);
  }
}

- (void)beginListeningForClient:(void *)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__AFSiriClientStateManager_beginListeningForClient___block_invoke;
    v4[3] = &unk_1E7348498;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(queue, v4);
  }
}

- (void)endRequestWithUUID:(id)a3 forClient:(void *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AFSiriClientStateManager_endRequestWithUUID_forClient___block_invoke;
    block[3] = &unk_1E73484C0;
    block[4] = self;
    v10 = v6;
    v11 = a4;
    dispatch_async(queue, block);
  }
}

- (void)beginRequestWithUUID:(id)a3 forClient:(void *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__AFSiriClientStateManager_beginRequestWithUUID_forClient___block_invoke;
    block[3] = &unk_1E73484C0;
    block[4] = self;
    v10 = v6;
    v11 = a4;
    dispatch_async(queue, block);
  }
}

- (void)endSessionForClient:(void *)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__AFSiriClientStateManager_endSessionForClient___block_invoke;
    v4[3] = &unk_1E7348498;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(queue, v4);
  }
}

- (void)beginSessionForClient:(void *)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__AFSiriClientStateManager_beginSessionForClient___block_invoke;
    v4[3] = &unk_1E7348498;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(queue, v4);
  }
}

- (void)invalidateClient:(void *)a3
{
  if (a3)
  {
    queue = self->_queue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__AFSiriClientStateManager_invalidateClient___block_invoke;
    v4[3] = &unk_1E7348498;
    v4[4] = self;
    v4[5] = a3;
    dispatch_async(queue, v4);
  }
}

- (AFSiriClientStateManager)initWithInstanceContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AFSiriClientStateManager;
  v5 = [(AFSiriClientStateManager *)&v20 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);

    v8 = dispatch_queue_create("com.apple.siri.client-state-manager", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:1];
    statesByClient = v5->_statesByClient;
    v5->_statesByClient = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"com.apple.siri.client-state-changed"];
    AFNotifyGetEffectiveNotificationName(v12, v4);
    objc_claimAutoreleasedReturnValue();

    v13 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "[AFSiriClientStateManager initWithInstanceContext:]";
      v23 = 2048;
      v24 = v5;
      v25 = 2112;
      v26 = v12;
      _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s %p %@", buf, 0x20u);
    }

    v14 = [[AFNotifyStatePublisher alloc] initWithName:v12 queue:v5->_queue];
    publisher = v5->_publisher;
    v5->_publisher = v14;

    v16 = dispatch_group_create();
    presentationTransitionGroup = v5->_presentationTransitionGroup;
    v5->_presentationTransitionGroup = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void __41__AFSiriClientStateManager_sharedManager__block_invoke()
{
  v0 = [[AFSiriClientStateManager alloc] initWithInstanceContext:0];
  v1 = sharedManager_sharedManager_43421;
  sharedManager_sharedManager_43421 = v0;
}

@end
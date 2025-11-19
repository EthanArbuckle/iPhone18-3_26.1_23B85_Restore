@interface _SFSafariViewControllerPrewarmingRequestThrottler
- (_SFSafariViewControllerPrewarmingRequestThrottler)init;
- (id)_URLsToPrewarmForToken:(id)a3;
- (id)_nextTokenToPrewarm;
- (id)_prewarmedURLsWithValidTokens;
- (void)_didPrewarmToken:(id)a3;
- (void)_performNextRequest;
- (void)_prewarmURLs:(id)a3;
- (void)_startRequestTimer;
- (void)_stopRequestTimer;
- (void)dealloc;
- (void)invalidateTokenWithID:(unint64_t)a3;
- (void)requestToken:(id)a3;
@end

@implementation _SFSafariViewControllerPrewarmingRequestThrottler

- (_SFSafariViewControllerPrewarmingRequestThrottler)init
{
  v13.receiver = self;
  v13.super_class = _SFSafariViewControllerPrewarmingRequestThrottler;
  v2 = [(_SFSafariViewControllerPrewarmingRequestThrottler *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    requestedTokens = v2->_requestedTokens;
    v2->_requestedTokens = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    prewarmedTokens = v2->_prewarmedTokens;
    v2->_prewarmedTokens = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    prewarmedURLs = v2->_prewarmedURLs;
    v2->_prewarmedURLs = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    tokensByID = v2->_tokensByID;
    v2->_tokensByID = v9;

    v11 = v2;
  }

  return v2;
}

- (void)requestToken:(id)a3
{
  v8 = a3;
  if ([v8 isValid])
  {
    tokensByID = self->_tokensByID;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "requestID")}];
    [(NSMutableDictionary *)tokensByID setObject:v8 forKeyedSubscript:v5];

    v6 = [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _URLsToPrewarmForToken:v8];
    v7 = [v6 count];

    if (v7)
    {
      [(NSHashTable *)self->_requestedTokens addObject:v8];
      if (!self->_suspended)
      {
        [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _stopRequestTimer];
        [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _startRequestTimer];
      }
    }

    else
    {
      [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _didPrewarmToken:v8];
    }
  }
}

- (void)invalidateTokenWithID:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v4 = [(NSMutableDictionary *)self->_tokensByID objectForKeyedSubscript:v5];
  [v4 invalidate];

  [(NSMutableDictionary *)self->_tokensByID setObject:0 forKeyedSubscript:v5];
  if (!self->_requestDelayTimer && !self->_suspended)
  {
    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _performNextRequest];
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_requestDelayTimer invalidate];
  v3.receiver = self;
  v3.super_class = _SFSafariViewControllerPrewarmingRequestThrottler;
  [(_SFSafariViewControllerPrewarmingRequestThrottler *)&v3 dealloc];
}

- (void)_stopRequestTimer
{
  [(NSTimer *)self->_requestDelayTimer invalidate];
  requestDelayTimer = self->_requestDelayTimer;
  self->_requestDelayTimer = 0;
}

- (void)_startRequestTimer
{
  if (self->_minimumRequestDelay <= 0.0)
  {

    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _performNextRequest];
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    minimumRequestDelay = self->_minimumRequestDelay;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __71___SFSafariViewControllerPrewarmingRequestThrottler__startRequestTimer__block_invoke;
    v11 = &unk_1E8490860;
    objc_copyWeak(&v12, &location);
    v5 = [v3 timerWithTimeInterval:0 repeats:&v8 block:minimumRequestDelay];
    requestDelayTimer = self->_requestDelayTimer;
    self->_requestDelayTimer = v5;

    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v7 addTimer:self->_requestDelayTimer forMode:*MEMORY[0x1E695DA28]];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_performNextRequest
{
  v3 = [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _nextTokenToPrewarm];
  if (v3)
  {
    v12 = v3;
    v4 = [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _URLsToPrewarmForToken:v3];
    if ([v4 count])
    {
      maximumValidConnectionCount = self->_maximumValidConnectionCount;
      v6 = [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _prewarmedURLsWithValidTokens];
      v7 = [v6 count];

      if (self->_maximumValidConnectionCount)
      {
        v8 = maximumValidConnectionCount - v7;
        if (maximumValidConnectionCount - v7 < [v4 count])
        {
          if (maximumValidConnectionCount != v7)
          {
            v9 = [v4 mutableCopy];
            [v9 removeObjectsInRange:{v8, objc_msgSend(v4, "count") - v8}];
            v10 = [v9 array];
            [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _prewarmURLs:v10];

            [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _didPartiallyPrewarmToken:v12];
          }

          goto LABEL_9;
        }
      }

      v11 = [v4 array];
      [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _prewarmURLs:v11];
    }

    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _didPrewarmToken:v12];
    [(_SFSafariViewControllerPrewarmingRequestThrottler *)self _performNextRequest];
LABEL_9:

    v3 = v12;
  }
}

- (void)_prewarmURLs:(id)a3
{
  v5 = a3;
  [(NSMutableSet *)self->_prewarmedURLs addObjectsFromArray:?];
  connectionHandler = self->_connectionHandler;
  if (connectionHandler)
  {
    connectionHandler[2](connectionHandler, v5);
  }
}

- (id)_nextTokenToPrewarm
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_requestedTokens;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isValid])
        {
          if (!v5 || (v9 = [v5 requestID], v9 < objc_msgSend(v8, "requestID")))
          {
            v10 = v8;

            v5 = v10;
          }
        }
      }

      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_URLsToPrewarmForToken:(id)a3
{
  v4 = [a3 URLs];
  v5 = [v4 mutableCopy];

  [v5 minusSet:self->_prewarmedURLs];

  return v5;
}

- (id)_prewarmedURLsWithValidTokens
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_prewarmedTokens;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isValid])
        {
          v10 = [v9 URLs];
          v11 = [v10 array];
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 intersectSet:self->_prewarmedURLs];

  return v3;
}

- (void)_didPrewarmToken:(id)a3
{
  requestedTokens = self->_requestedTokens;
  v5 = a3;
  [(NSHashTable *)requestedTokens removeObject:v5];
  [(NSHashTable *)self->_prewarmedTokens addObject:v5];
}

@end
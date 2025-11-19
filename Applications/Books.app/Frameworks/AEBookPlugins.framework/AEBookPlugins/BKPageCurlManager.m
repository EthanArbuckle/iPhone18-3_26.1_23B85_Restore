@interface BKPageCurlManager
- (BKPageCurlConfiguration)pageCurlConfiguration;
- (BKPageCurlManager)init;
- (BKPageCurlManager)initWithContext:(id)a3;
- (BKPageCurlManagerDelegate)delegate;
- (BOOL)killACurl:(BOOL)a3;
- (IMFrameEnvironment)configurationContext;
- (id)beginManualCurl:(BOOL)a3 atLocation:(CGPoint)a4 inPage:(id)a5 fromPages:(id)a6 backPage:(id)a7 inContainer:(id)a8;
- (id)enqueuePageCurlWithType:(int)a3;
- (void)_startQueuedCurls;
- (void)cancelManualCurl:(id)a3;
- (void)curlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5;
- (void)curlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5 curlPage:(BOOL)a6;
- (void)curlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5;
- (void)curlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5 curlPage:(BOOL)a6;
- (void)dealloc;
- (void)killAllCurls;
- (void)pageCurl:(id)a3 finished:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)unCurlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5;
- (void)uncurlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5;
@end

@implementation BKPageCurlManager

- (BKPageCurlManager)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector("initWithContext:");
  [NSException raise:NSInvalidArgumentException format:@"Please use the designated initializer [%@ %@]", v4, v5];

  return 0;
}

- (BKPageCurlManager)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKPageCurlManager;
  v5 = [(BKPageCurlManager *)&v9 init];
  if (v5)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:10];
    queue = v5->_queue;
    v5->_queue = v6;

    v5->_spineLocation = 1;
    objc_storeWeak(&v5->_configurationContext, v4);
  }

  return v5;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_queue makeObjectsPerformSelector:"setDelegate:" withObject:0];
  [(BKPageCurlManager *)self setDelegate:0];
  v3.receiver = self;
  v3.super_class = BKPageCurlManager;
  [(BKPageCurlManager *)&v3 dealloc];
}

- (BKPageCurlConfiguration)pageCurlConfiguration
{
  pageCurlConfiguration = self->_pageCurlConfiguration;
  if (!pageCurlConfiguration)
  {
    v4 = [BKPageCurlConfiguration alloc];
    WeakRetained = objc_loadWeakRetained(&self->_configurationContext);
    v6 = [(BKPageCurlConfiguration *)v4 initWithContext:WeakRetained];
    v7 = self->_pageCurlConfiguration;
    self->_pageCurlConfiguration = v6;

    pageCurlConfiguration = self->_pageCurlConfiguration;
  }

  return pageCurlConfiguration;
}

- (void)setDelegate:(id)a3
{
  v18 = a3;
  v4 = objc_storeWeak(&self->_delegate, v18);
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | v5 & 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v7;

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v9;

  v10 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v11;

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v13;

  v14 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xDF | v15;

  v16 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xBF | v17;
}

- (id)enqueuePageCurlWithType:(int)a3
{
  v3 = *&a3;
  v5 = objc_alloc_init(BKPageCurl);
  [(BKPageCurl *)v5 setType:v3];
  [(BKPageCurl *)v5 setDelegate:self];
  v6 = [(BKPageCurlManager *)self pageColor];
  [(BKPageCurl *)v5 setPageColor:v6];

  v7 = [(BKPageCurlManager *)self backColor];
  [(BKPageCurl *)v5 setBackColor:v7];

  [(BKPageCurl *)v5 setSpineLocation:[(BKPageCurlManager *)self spineLocation]];
  v8 = [(BKPageCurlManager *)self pageCurlConfiguration];
  [(BKPageCurl *)v5 setConfiguration:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(BKPageCurlManager *)self delegate];
    [v11 pageCurlManagerStabilizationFactor];
    [(BKPageCurl *)v5 setStabilization:?];
  }

  [(NSMutableArray *)self->_queue addObject:v5];

  return v5;
}

- (void)_startQueuedCurls
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = self->_queue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 type])
        {
          if ([v9 type] != 1 || v6 > 3)
          {
            goto LABEL_25;
          }
        }

        else if (v6 > 3)
        {
          goto LABEL_25;
        }

        v11 = [v9 state];
        if (!v11)
        {
          v12 = [(BKPageCurlManager *)self delegate];
          [v12 pageCurlManager:self willBeginCurl:v9];

          delegateFlags = self->_delegateFlags;
          if (delegateFlags)
          {
            v14 = [(BKPageCurlManager *)self delegate];
            [v14 pageCurlManager:self delayForCurl:v9];
            [v9 setDelay:?];

            delegateFlags = self->_delegateFlags;
          }

          if ((delegateFlags & 2) != 0)
          {
            v15 = [(BKPageCurlManager *)self delegate];
            [v15 pageCurlManager:self durationForCurl:v9];
            [v9 setDuration:?];
          }

          [v9 startAutoCurl];
LABEL_22:
          ++v6;
          continue;
        }

        if (v11 == &dword_0 + 1)
        {
          goto LABEL_22;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

LABEL_25:
}

- (BOOL)killACurl:(BOOL)a3
{
  v3 = a3;
  if ((*&self->_delegateFlags & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained pageCurlManagerShouldKillLastOpposingCurl:self];

    if (!v6)
    {
      return 0;
    }
  }

  queue = self->_queue;
  v8 = [NSPredicate predicateWithFormat:@"type == %d", v3];
  v9 = [(NSMutableArray *)queue filteredArrayUsingPredicate:v8];

  v10 = [v9 count];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = [v9 lastObject];
    [v12 killCurl];
  }

  return v11;
}

- (void)curlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5 curlPage:(BOOL)a6
{
  if (a6)
  {
    [(BKPageCurlManager *)self curlPages:a3 backPages:a4 inContainer:a5];
  }

  else
  {
    [(BKPageCurlManager *)self unCurlPages:a3 backPages:a4 inContainer:a5];
  }
}

- (void)curlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 count];
  if (v9 && v10 && [v8 count] && objc_msgSend(v8, "count") >= 2 && !-[BKPageCurlManager killACurl:](self, "killACurl:", 1))
  {
    v11 = +[AETestDriver shared];
    [v11 postEvent:kBETestDriverPageTurnSetupEnd sender:self];

    v12 = +[AETestDriver shared];
    [v12 postEvent:kBETestDriverPageTurnAnimationStart sender:self];

    v13 = [(BKPageCurlManager *)self enqueuePageCurlWithType:0];
    [v13 setExistingPages:v14];
    [v13 setBackPages:v8];
    [v13 setContainer:v9];
    if ([v14 count] >= 2)
    {
      [v13 setSpineLocation:2];
    }

    [(BKPageCurlManager *)self _startQueuedCurls];
  }
}

- (void)unCurlPages:(id)a3 backPages:(id)a4 inContainer:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 count];
  if (v9 && v10 && [v8 count] && objc_msgSend(v8, "count") >= 2 && !-[BKPageCurlManager killACurl:](self, "killACurl:", 0))
  {
    v11 = +[AETestDriver shared];
    [v11 postEvent:kBETestDriverPageTurnSetupEnd sender:self];

    v12 = +[AETestDriver shared];
    [v12 postEvent:kBETestDriverPageTurnAnimationStart sender:self];

    v13 = [(BKPageCurlManager *)self enqueuePageCurlWithType:1];
    [v13 setExistingPages:v14];
    [v13 setBackPages:v8];
    [v13 setContainer:v9];
    if ([v14 count] >= 2)
    {
      [v13 setSpineLocation:2];
    }

    [(BKPageCurlManager *)self _startQueuedCurls];
  }
}

- (void)curlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5 curlPage:(BOOL)a6
{
  if (a6)
  {
    [(BKPageCurlManager *)self curlPages:a3 backPage:a4 inContainer:a5];
  }

  else
  {
    [(BKPageCurlManager *)self uncurlPages:a3 backPage:a4 inContainer:a5];
  }
}

- (void)curlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 count];
  if (v9 && v10 && ![(BKPageCurlManager *)self killACurl:1])
  {
    v11 = +[AETestDriver shared];
    [v11 postEvent:kBETestDriverPageTurnSetupEnd sender:self];

    v12 = +[AETestDriver shared];
    [v12 postEvent:kBETestDriverPageTurnAnimationStart sender:self];

    v13 = [(BKPageCurlManager *)self enqueuePageCurlWithType:0];
    [v13 setExistingPages:v14];
    [v13 setBackPage:v8];
    [v13 setContainer:v9];
    if ([v14 count] >= 2)
    {
      [v13 setSpineLocation:2];
    }

    [(BKPageCurlManager *)self _startQueuedCurls];
  }
}

- (void)uncurlPages:(id)a3 backPage:(id)a4 inContainer:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 count];
  if (v9 && v10 && ![(BKPageCurlManager *)self killACurl:0])
  {
    v11 = +[AETestDriver shared];
    [v11 postEvent:kBETestDriverPageTurnSetupEnd sender:self];

    v12 = +[AETestDriver shared];
    [v12 postEvent:kBETestDriverPageTurnAnimationStart sender:self];

    v13 = [(BKPageCurlManager *)self enqueuePageCurlWithType:1];
    [v13 setExistingPages:v14];
    [v13 setBackPage:v8];
    [v13 setContainer:v9];
    if ([v14 count] >= 2)
    {
      [v13 setSpineLocation:2];
    }

    [(BKPageCurlManager *)self _startQueuedCurls];
  }
}

- (id)beginManualCurl:(BOOL)a3 atLocation:(CGPoint)a4 inPage:(id)a5 fromPages:(id)a6 backPage:(id)a7 inContainer:(id)a8
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    v19 = [v16 count];
    v20 = 0;
    if (v18 && v19)
    {
      if (v13)
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }

      v20 = [(BKPageCurlManager *)self enqueuePageCurlWithType:v21];
      v22 = [NSArray arrayWithObject:v15];
      [v20 setCurlPages:v22];

      [v20 setExistingPages:v16];
      [v20 setBackPage:v17];
      [v20 setContainer:v18];
      if ([v16 count] >= 2)
      {
        [v20 setSpineLocation:2];
      }

      v23 = [(BKPageCurlManager *)self delegate];
      [v23 pageCurlManager:self willBeginCurl:v20];

      [v20 beginManualCurlAtLocation:{x, y}];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)cancelManualCurl:(id)a3
{
  v5 = a3;
  if ((*&self->_delegateFlags & 0x40) != 0)
  {
    v4 = [(BKPageCurlManager *)self delegate];
    [v4 pageCurlManager:self willCancelCurl:v5];
  }

  [v5 cancelManualCurl];
}

- (void)pageCurl:(id)a3 finished:(BOOL)a4
{
  v5 = [(NSMutableArray *)self->_queue copy:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = kBETestDriverPageTurnAnimationEnd;
    v10 = kBETestDriverPageTurnEnd;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      if ([v12 state] < 2)
      {
        break;
      }

      v13 = +[AETestDriver shared];
      [v13 postEvent:v9 sender:self];

      v14 = +[AETestDriver shared];
      [v14 postEvent:v10 sender:self];

      [(NSMutableArray *)self->_queue removeObject:v12];
      [v12 setDelegate:0];
      v15 = [v12 state] == &dword_0 + 2 || objc_msgSend(v12, "state") == &dword_4;
      v16 = [(BKPageCurlManager *)self delegate];
      [v16 pageCurlManager:self didFinishCurl:v12 transitionCompleted:v15];

      if ((*&self->_delegateFlags & 0x10) != 0 && (-[BKPageCurlManager delegate](self, "delegate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 pageCurlManagerRemovesViews:self], v17, !v18))
      {
        [v12 cleanup];
      }

      else
      {
        [v12 fullCleanup];
      }

      if (v7 == ++v11)
      {
        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(BKPageCurlManager *)self _startQueuedCurls];
}

- (void)killAllCurls
{
  v3 = [(NSMutableArray *)self->_queue copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 killCurl];
        [v9 setDelegate:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_queue removeAllObjects];
}

- (BKPageCurlManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IMFrameEnvironment)configurationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_configurationContext);

  return WeakRetained;
}

@end
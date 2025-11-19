@interface FigNSURLSessionRegistry
- (FigNSURLSessionRegistry)init;
- (void)_checkForDoom:(id)a3;
- (void)copySessionAndAssertionForCreateOptions:(id)a3 dispatchQueue:(id)a4 outSession:(id *)a5 outAssertion:(FigOpaqueAssertion *)a6;
- (void)dealloc;
- (void)init;
- (void)releaseSession:(id)a3;
@end

@implementation FigNSURLSessionRegistry

- (void)copySessionAndAssertionForCreateOptions:(id)a3 dispatchQueue:(id)a4 outSession:(id *)a5 outAssertion:(FigOpaqueAssertion *)a6
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = __Block_byref_object_copy__12;
  v18[4] = __Block_byref_object_dispose__12;
  v18[5] = 0;
  v11 = [a3 objectForKeyedSubscript:0x1F0B5F5F8];
  v12 = [a3 objectForKeyedSubscript:0x1F0B5F618];
  v17 = v12;
  v13 = [a3 objectForKeyedSubscript:0x1F0B5D698] != 0;
  if (!v11)
  {
    v11 = @"com.apple.coremedia";
  }

  if (!v12)
  {
    FigPersonaCopyCurrentID(&v17);
  }

  if (figNSURLSessionRegistryEnsureGlobalInit_sFigNSURLSessionInit != -1)
  {
    [FigNSURLSessionRegistry copySessionAndAssertionForCreateOptions:dispatchQueue:outSession:outAssertion:];
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__FigNSURLSessionRegistry_copySessionAndAssertionForCreateOptions_dispatchQueue_outSession_outAssertion___block_invoke;
  block[3] = &unk_1E74948D0;
  block[4] = self;
  block[5] = v11;
  block[6] = v17;
  block[7] = a4;
  v16 = v13;
  block[8] = v18;
  block[9] = a5;
  block[10] = a6;
  dispatch_sync(workQueue, block);

  _Block_object_dispose(v18, 8);
}

uint64_t __105__FigNSURLSessionRegistry_copySessionAndAssertionForCreateOptions_dispatchQueue_outSession_outAssertion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__FigNSURLSessionRegistry_copySessionAndAssertionForCreateOptions_dispatchQueue_outSession_outAssertion___block_invoke_2;
  v7[3] = &unk_1E74948A8;
  v3 = *(a1 + 40);
  v10 = *(a1 + 88);
  v4 = *(a1 + 56);
  v8 = v3;
  v9 = v4;
  [v2 enumerateObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (v5)
  {
    **(a1 + 72) = v5;
  }

  else
  {
    **(a1 + 72) = [[FigNSURLSession alloc] initWithClientBundleIdentifier:*(a1 + 40) clientPersonaIdentifier:*(a1 + 48) dispatchQueue:*(a1 + 56) useNWLoader:*(a1 + 88)];
    [*(*(a1 + 32) + 16) addObject:**(a1 + 72)];
  }

  result = [**(a1 + 72) acquireAssertion];
  **(a1 + 80) = result;
  return result;
}

- (void)_checkForDoom:(id)a3
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if ([a3 assertionCount] <= 0 && objc_msgSend(a3, "doomTime"))
  {
    if (UpTimeNanoseconds < [a3 doomTime])
    {
      v6 = [a3 doomTime] - UpTimeNanoseconds;
      [a3 setDoomCheckScheduled:1];
      v7 = self;
      v8 = a3;
      v9 = dispatch_time(0, v6);
      workQueue = self->_workQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __41__FigNSURLSessionRegistry__checkForDoom___block_invoke;
      v11[3] = &unk_1E7483A30;
      v11[4] = self;
      v11[5] = a3;
      dispatch_after(v9, workQueue, v11);
      return;
    }

    [a3 releaseOSTransaction];
    [(NSMutableArray *)self->_sessionArray removeObject:a3];
  }

  [a3 setDoomCheckScheduled:0];
}

void __41__FigNSURLSessionRegistry__checkForDoom___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkForDoom:*(a1 + 40)];

  v2 = *(a1 + 32);
}

- (void)releaseSession:(id)a3
{
  v5 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FigNSURLSessionRegistry_releaseSession___block_invoke;
  v7[3] = &unk_1E7483A30;
  v7[4] = a3;
  v7[5] = self;
  dispatch_async(workQueue, v7);
}

void __42__FigNSURLSessionRegistry_releaseSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssertionCount:{objc_msgSend(*(a1 + 32), "assertionCount") - 1}];
  if ([*(a1 + 32) assertionCount] <= 0)
  {
    [*(a1 + 32) setDoomTime:{FigGetUpTimeNanoseconds() + 1000000000 * objc_msgSend(*(a1 + 32), "deferReleaseSeconds")}];
    if (([*(a1 + 32) doomCheckScheduled] & 1) == 0)
    {
      [*(a1 + 32) setDoomCheckScheduled:1];
      if ([*(a1 + 32) deferReleaseSeconds] >= 1 && objc_msgSend(*(a1 + 32), "acquireOSTransaction"))
      {
        v2 = *(a1 + 40);
        v3 = *(a1 + 32);
        v4 = dispatch_time(0, 1000000000 * [*(a1 + 32) deferReleaseSeconds]);
        v5 = *(a1 + 40);
        v6 = *(v5 + 8);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __42__FigNSURLSessionRegistry_releaseSession___block_invoke_2;
        v8[3] = &unk_1E7483A30;
        v7 = *(a1 + 32);
        v8[4] = v5;
        v8[5] = v7;
        dispatch_after(v4, v6, v8);
      }

      else
      {
        [*(a1 + 40) _checkForDoom:*(a1 + 32)];
      }
    }
  }
}

void __42__FigNSURLSessionRegistry_releaseSession___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _checkForDoom:*(a1 + 40)];

  v2 = *(a1 + 32);
}

- (FigNSURLSessionRegistry)init
{
  v7.receiver = self;
  v7.super_class = FigNSURLSessionRegistry;
  v2 = [(FigNSURLSessionRegistry *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coremedia.fignsurlsessionregistry.work", 0);
    v2->_workQueue = v3;
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2->_sessionArray = v4;
      if (v4)
      {
        return v2;
      }

      v6 = 595;
    }

    else
    {
      v6 = 592;
    }

    [(FigNSURLSessionRegistry *)v2 init];
    return v8;
  }

  return v2;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
  }

  v4.receiver = self;
  v4.super_class = FigNSURLSessionRegistry;
  [(FigNSURLSessionRegistry *)&v4 dealloc];
}

uint64_t __105__FigNSURLSessionRegistry_copySessionAndAssertionForCreateOptions_dispatchQueue_outSession_outAssertion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 "clientBundleIdentifier")];
    if (result)
    {
      if (([objc_msgSend(a2 "clientPersonaIdentifier")] & 1) != 0 || (result = objc_msgSend(a2, "clientPersonaIdentifier")) == 0 && !*(a1 + 40))
      {
        result = [a2 dispatchQueue];
        if (result == *(a1 + 48))
        {
          result = [a2 usesNWLoader];
          if (*(a1 + 64) == result)
          {
            result = a2;
            *(*(*(a1 + 56) + 8) + 40) = result;
            *a4 = 1;
          }
        }
      }
    }
  }

  return result;
}

- (void)init
{
  fig_log_get_emitter();
  if (FigSignalErrorAtGM())
  {

    a1 = 0;
  }

  *a3 = a1;
}

@end
@interface CTCallCenter
- (BOOL)calculateCallStateChanges_sync:(id)changes_sync;
- (BOOL)getCurrentCallSetFromServer_sync:(id)server_sync;
- (CTCallCenter)init;
- (CTCallCenter)initWithQueue:(dispatch_queue_s *)queue;
- (NSSet)currentCalls;
- (NSString)description;
- (id).cxx_construct;
- (void)callEventHandler;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)dealloc;
- (void)handleCallStatusChange_sync:(id)change_sync;
- (void)setCallEventHandler:(void *)callEventHandler;
- (void)setCurrentCalls:(id)calls;
@end

@implementation CTCallCenter

- (CTCallCenter)initWithQueue:(dispatch_queue_s *)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  fObj = self->clientQueue.fObj.fObj;
  self->clientQueue.fObj.fObj = queue;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  return [(CTCallCenter *)self init];
}

- (CTCallCenter)init
{
  v11.receiver = self;
  v11.super_class = CTCallCenter;
  v2 = [(CTCallCenter *)&v11 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->clientQueue.fObj.fObj)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v7 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
        fObj = v3->clientQueue.fObj.fObj;
        v3->clientQueue.fObj.fObj = v7;
        if (fObj)
        {
          dispatch_release(fObj);
        }
      }

      else
      {
        v3->clientQueue.fObj.fObj = 0;
      }
    }

    v4 = dispatch_queue_create("CTCallCenter", 0);
    v5 = v3->_queue.fObj.fObj;
    v3->_queue.fObj.fObj = v4;
    if (v5)
    {
      dispatch_release(v5);
    }

    v3->_currentCalls = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (CUTWeakLinkClass())
    {
      v3->_callKitObserver = objc_opt_new();
      if (![(CTCallCenter *)v3 calculateCallStateChanges_sync:0])
      {
        syslog(3, "Could not successfully update call center during initialization, CTCallCenter: %s.", [(NSString *)[(CTCallCenter *)v3 description] UTF8String]);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __20__CTCallCenter_init__block_invoke;
      block[3] = &unk_1E6A47358;
      block[4] = v3;
      dispatch_async(v3->_queue.fObj.fObj, block);
    }

    else
    {
      syslog(3, "CXCallObserver could not be weak linked. Return nil.");
      return 0;
    }
  }

  return v3;
}

uint64_t __20__CTCallCenter_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callKitObserver];
  v3 = *(a1 + 32);

  return [v2 setDelegate:v3 queue:0];
}

- (void)handleCallStatusChange_sync:(id)change_sync
{
  v4 = [CTCall callForCXCall:change_sync];
  if (v4)
  {
    v5 = v4;
    currentCalls = self->_currentCalls;
    v7 = [(NSSet *)currentCalls member:v4];
    callState = [v5 callState];
    if (v7)
    {
      if (([callState isEqualToString:{objc_msgSend(v7, "callState")}] & 1) == 0)
      {
        [(NSSet *)currentCalls removeObject:v7];
        if ([objc_msgSend(v5 "callState")])
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if (([callState isEqualToString:@"CTCallStateDisconnected"] & 1) == 0)
    {
LABEL_7:
      [(NSSet *)currentCalls addObject:v5];
LABEL_8:
      v9 = v5;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CTCallCenter_handleCallStatusChange_sync___block_invoke;
      v10[3] = &unk_1E6A47380;
      v10[4] = self;
      v10[5] = v5;
      dispatch_async(self->clientQueue.fObj.fObj, v10);
    }
  }
}

void __44__CTCallCenter_handleCallStatusChange_sync___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }

  v3 = *(a1 + 40);
}

- (void)dealloc
{
  callKitObserver = self->_callKitObserver;
  if (callKitObserver)
  {
  }

  v4.receiver = self;
  v4.super_class = CTCallCenter;
  [(CTCallCenter *)&v4 dealloc];
}

- (void)callEventHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__CTCallCenter_callEventHandler__block_invoke;
  v4[3] = &unk_1E6A473A8;
  v4[4] = self;
  v5 = v4;
  fObj = self->_queue.fObj.fObj;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIU13block_pointerFU13block_pointerFvP6CTCallEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(fObj, block);
  return v7;
}

- (void)setCallEventHandler:(void *)callEventHandler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CTCallCenter_setCallEventHandler___block_invoke;
  v3[3] = &unk_1E6A473D0;
  v3[4] = self;
  v3[5] = callEventHandler;
  dispatch_async(self->_queue.fObj.fObj, v3);
}

void __36__CTCallCenter_setCallEventHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 32) != v2)
  {
    v4 = *(v3 + 32);
    *(*(a1 + 32) + 32) = [v2 copyWithZone:0];
  }
}

- (BOOL)getCurrentCallSetFromServer_sync:(id)server_sync
{
  v19 = *MEMORY[0x1E69E9840];
  if (server_sync)
  {
    v5 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    calls = [(CXCallObserver *)[(CTCallCenter *)self callKitObserver] calls];
    v7 = [(NSArray *)calls countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(calls);
          }

          v11 = [CTCall callForCXCall:*(*(&v14 + 1) + 8 * v10)];
          if (v11)
          {
            [server_sync addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)calls countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(v5);
  }

  result = server_sync != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)calculateCallStateChanges_sync:(id)changes_sync
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  currentCalls = self->_currentCalls;
  changes_syncCopy = changes_sync;
  if (!changes_sync)
  {
    changes_syncCopy = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [(CTCallCenter *)self getCurrentCallSetFromServer_sync:v8];
  if (v9)
  {
    if ([v8 count])
    {
      objectEnumerator = [v8 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        while (1)
        {
          v13 = [(NSSet *)currentCalls member:nextObject2];
          if (!v13)
          {
            goto LABEL_10;
          }

          v14 = v13;
          if (([objc_msgSend(v13 "callState")] & 1) == 0)
          {
            break;
          }

LABEL_13:
          nextObject2 = [objectEnumerator nextObject];
          if (!nextObject2)
          {
            goto LABEL_14;
          }
        }

        [(NSSet *)currentCalls removeObject:v14];
LABEL_10:
        if (([objc_msgSend(nextObject2 "callState")] & 1) == 0)
        {
          [(NSSet *)currentCalls addObject:nextObject2];
        }

        [changes_syncCopy addObject:nextObject2];
        goto LABEL_13;
      }

LABEL_14:
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objectEnumerator2 = [(NSSet *)currentCalls objectEnumerator];
      nextObject3 = [(NSEnumerator *)objectEnumerator2 nextObject];
      if (nextObject3)
      {
        nextObject4 = nextObject3;
        do
        {
          if (![v8 member:nextObject4])
          {
            [v15 addObject:nextObject4];
          }

          nextObject4 = [(NSEnumerator *)objectEnumerator2 nextObject];
        }

        while (nextObject4);
      }

      if ([v15 count])
      {
        objectEnumerator3 = [v15 objectEnumerator];
        nextObject5 = [objectEnumerator3 nextObject];
        if (nextObject5)
        {
          nextObject6 = nextObject5;
          do
          {
            if (changes_sync)
            {
              [nextObject6 setCallState:@"CTCallStateDisconnected"];
              [changes_sync addObject:nextObject6];
            }

            [(NSSet *)currentCalls removeObject:nextObject6];
            nextObject6 = [objectEnumerator3 nextObject];
          }

          while (nextObject6);
        }
      }
    }

    else if ([(NSSet *)currentCalls count])
    {
      objectEnumerator4 = [(NSSet *)currentCalls objectEnumerator];
      nextObject7 = [(NSEnumerator *)objectEnumerator4 nextObject];
      if (nextObject7)
      {
        nextObject8 = nextObject7;
        do
        {
          [nextObject8 setCallState:@"CTCallStateDisconnected"];
          [changes_syncCopy addObject:nextObject8];
          nextObject8 = [(NSEnumerator *)objectEnumerator4 nextObject];
        }

        while (nextObject8);
      }

      [(NSSet *)currentCalls removeAllObjects];
    }
  }

  if (!changes_sync && changes_syncCopy)
  {
  }

  return v9;
}

- (NSSet)currentCalls
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__CTCallCenter_currentCalls__block_invoke;
  v4[3] = &unk_1E6A473F8;
  v4[4] = self;
  v5 = v4;
  fObj = self->_queue.fObj.fObj;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIU13block_pointerFP5NSSetvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(fObj, block);
  return v7;
}

uint64_t __28__CTCallCenter_currentCalls__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    [v2 calculateCallStateChanges_sync:0];
    v2 = *(a1 + 32);
  }

  result = [*(v2 + 24) count];
  if (result)
  {
    return *(*(a1 + 32) + 24);
  }

  return result;
}

- (void)setCurrentCalls:(id)calls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CTCallCenter_setCurrentCalls___block_invoke;
  v3[3] = &unk_1E6A47380;
  v3[4] = calls;
  v3[5] = self;
  dispatch_async(self->_queue.fObj.fObj, v3);
}

void __32__CTCallCenter_setCurrentCalls___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(a1 + 40) + 24) = *(a1 + 32);
}

- (NSString)description
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__CTCallCenter_description__block_invoke;
  v4[3] = &unk_1E6A47420;
  v4[4] = self;
  v5 = v4;
  fObj = self->_queue.fObj.fObj;
  v7 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN8dispatch9sync_implIU13block_pointerFP8NSStringvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(fObj, block);
  return v7;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CTCallCenter_callObserver_callChanged___block_invoke;
  block[3] = &unk_1E6A47448;
  block[4] = observer;
  block[5] = self;
  block[6] = changed;
  dispatch_async(self->_queue.fObj.fObj, block);
}

void __41__CTCallCenter_callObserver_callChanged___block_invoke(void *a1)
{
  if (a1[4])
  {
    v3 = a1[6];
    v4 = a1[5];

    [v4 handleCallStatusChange_sync:v3];
  }

  else
  {
    syslog(3, "Error: Call Center is null. Dropping call update.", v1, v2);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end
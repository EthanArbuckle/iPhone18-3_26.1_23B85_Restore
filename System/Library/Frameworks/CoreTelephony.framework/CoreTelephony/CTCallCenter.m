@interface CTCallCenter
- (BOOL)calculateCallStateChanges_sync:(id)a3;
- (BOOL)getCurrentCallSetFromServer_sync:(id)a3;
- (CTCallCenter)init;
- (CTCallCenter)initWithQueue:(dispatch_queue_s *)a3;
- (NSSet)currentCalls;
- (NSString)description;
- (id).cxx_construct;
- (void)callEventHandler;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)dealloc;
- (void)handleCallStatusChange_sync:(id)a3;
- (void)setCallEventHandler:(void *)callEventHandler;
- (void)setCurrentCalls:(id)a3;
@end

@implementation CTCallCenter

- (CTCallCenter)initWithQueue:(dispatch_queue_s *)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  fObj = self->clientQueue.fObj.fObj;
  self->clientQueue.fObj.fObj = a3;
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

- (void)handleCallStatusChange_sync:(id)a3
{
  v4 = [CTCall callForCXCall:a3];
  if (v4)
  {
    v5 = v4;
    currentCalls = self->_currentCalls;
    v7 = [(NSSet *)currentCalls member:v4];
    v8 = [v5 callState];
    if (v7)
    {
      if (([v8 isEqualToString:{objc_msgSend(v7, "callState")}] & 1) == 0)
      {
        [(NSSet *)currentCalls removeObject:v7];
        if ([objc_msgSend(v5 "callState")])
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    else if (([v8 isEqualToString:@"CTCallStateDisconnected"] & 1) == 0)
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

- (BOOL)getCurrentCallSetFromServer_sync:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(CXCallObserver *)[(CTCallCenter *)self callKitObserver] calls];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [CTCall callForCXCall:*(*(&v14 + 1) + 8 * v10)];
          if (v11)
          {
            [a3 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(v5);
  }

  result = a3 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)calculateCallStateChanges_sync:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  currentCalls = self->_currentCalls;
  v7 = a3;
  if (!a3)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = [(CTCallCenter *)self getCurrentCallSetFromServer_sync:v8];
  if (v9)
  {
    if ([v8 count])
    {
      v10 = [v8 objectEnumerator];
      v11 = [v10 nextObject];
      if (v11)
      {
        v12 = v11;
        while (1)
        {
          v13 = [(NSSet *)currentCalls member:v12];
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
          v12 = [v10 nextObject];
          if (!v12)
          {
            goto LABEL_14;
          }
        }

        [(NSSet *)currentCalls removeObject:v14];
LABEL_10:
        if (([objc_msgSend(v12 "callState")] & 1) == 0)
        {
          [(NSSet *)currentCalls addObject:v12];
        }

        [v7 addObject:v12];
        goto LABEL_13;
      }

LABEL_14:
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v16 = [(NSSet *)currentCalls objectEnumerator];
      v17 = [(NSEnumerator *)v16 nextObject];
      if (v17)
      {
        v18 = v17;
        do
        {
          if (![v8 member:v18])
          {
            [v15 addObject:v18];
          }

          v18 = [(NSEnumerator *)v16 nextObject];
        }

        while (v18);
      }

      if ([v15 count])
      {
        v19 = [v15 objectEnumerator];
        v20 = [v19 nextObject];
        if (v20)
        {
          v21 = v20;
          do
          {
            if (a3)
            {
              [v21 setCallState:@"CTCallStateDisconnected"];
              [a3 addObject:v21];
            }

            [(NSSet *)currentCalls removeObject:v21];
            v21 = [v19 nextObject];
          }

          while (v21);
        }
      }
    }

    else if ([(NSSet *)currentCalls count])
    {
      v22 = [(NSSet *)currentCalls objectEnumerator];
      v23 = [(NSEnumerator *)v22 nextObject];
      if (v23)
      {
        v24 = v23;
        do
        {
          [v24 setCallState:@"CTCallStateDisconnected"];
          [v7 addObject:v24];
          v24 = [(NSEnumerator *)v22 nextObject];
        }

        while (v24);
      }

      [(NSSet *)currentCalls removeAllObjects];
    }
  }

  if (!a3 && v7)
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

- (void)setCurrentCalls:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CTCallCenter_setCurrentCalls___block_invoke;
  v3[3] = &unk_1E6A47380;
  v3[4] = a3;
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

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CTCallCenter_callObserver_callChanged___block_invoke;
  block[3] = &unk_1E6A47448;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
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
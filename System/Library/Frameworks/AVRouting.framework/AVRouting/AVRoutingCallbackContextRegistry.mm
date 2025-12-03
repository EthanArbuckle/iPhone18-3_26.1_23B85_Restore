@interface AVRoutingCallbackContextRegistry
+ (void)initialize;
- (AVRoutingCallbackContextRegistry)init;
- (id)callbackContextForToken:(void *)token;
- (void)dealloc;
- (void)registerCallbackContextObject:(id)object;
- (void)unregisterCallbackContextForToken:(void *)token;
@end

@implementation AVRoutingCallbackContextRegistry

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _sSharedCallbackContextRegistry = objc_alloc_init(AVRoutingCallbackContextRegistry);
  }
}

- (AVRoutingCallbackContextRegistry)init
{
  v5.receiver = self;
  v5.super_class = AVRoutingCallbackContextRegistry;
  v2 = [(AVRoutingCallbackContextRegistry *)&v5 init];
  if (v2)
  {
    v2->_contextsForTokens = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = av_readwrite_dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@ read/write queue", v2), "UTF8String"]);
    v2->_currentToken = 0;
    v2->_readWriteQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  readWriteQueue = self->_readWriteQueue;
  if (readWriteQueue)
  {
    dispatch_release(readWriteQueue);
  }

  v4.receiver = self;
  v4.super_class = AVRoutingCallbackContextRegistry;
  [(AVRoutingCallbackContextRegistry *)&v4 dealloc];
}

- (void)registerCallbackContextObject:(id)object
{
  if (!object)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "callbackContext != nil"), 0}];
    objc_exception_throw(v13);
  }

  v9 = [[AVRoutingWeakReference alloc] initWithReferencedObject:object];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVRoutingCallbackContextRegistry_registerCallbackContextObject___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = v9;
  block[6] = &v15;
  block[4] = self;
  av_readwrite_dispatch_queue_write(readWriteQueue, block);

  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t __66__AVRoutingCallbackContextRegistry_registerCallbackContextObject___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 16) + 1;
  *(v2 + 16) = v3;
  *(*(a1[6] + 8) + 24) = v3;
  v4 = [MEMORY[0x1E696B098] valueWithPointer:*(*(a1[6] + 8) + 24)];
  v5 = a1[5];
  v6 = *(a1[4] + 8);

  return [v6 setObject:v5 forKey:v4];
}

- (void)unregisterCallbackContextForToken:(void *)token
{
  if (!token)
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "callbackContextToken != AVCallbackContextTokenInvalid"), 0}];
    objc_exception_throw(v19);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v11 = [MEMORY[0x1E696B098] valueWithPointer:?];
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVRoutingCallbackContextRegistry_unregisterCallbackContextForToken___block_invoke;
  block[3] = &unk_1E794F6A0;
  block[4] = self;
  block[5] = v11;
  block[6] = &v21;
  av_readwrite_dispatch_queue_write(readWriteQueue, block);
  if (v22[3] < token)
  {
    v18 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot unregister token %p that was not vended by %@.  Break on AVRoutingCallbackContextRegistryUnrecognizedTokenBreak() to debug.", v13, v14, v15, v16, v17, token);
    NSLog(&stru_1F2027F60.isa, v18, self);
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __70__AVRoutingCallbackContextRegistry_unregisterCallbackContextForToken___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) removeObjectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = *(a1[4] + 16);
  return result;
}

- (id)callbackContextForToken:(void *)token
{
  if (!token)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "callbackContextToken != AVCallbackContextTokenInvalid"), 0}];
    objc_exception_throw(v21);
  }

  v11 = [MEMORY[0x1E696B098] valueWithPointer:?];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__11;
  v31 = __Block_byref_object_dispose__11;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  readWriteQueue = self->_readWriteQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVRoutingCallbackContextRegistry_callbackContextForToken___block_invoke;
  block[3] = &unk_1E794F6C8;
  block[4] = self;
  block[5] = v11;
  block[6] = &v27;
  block[7] = &v23;
  av_readwrite_dispatch_queue_read(readWriteQueue, block);
  if (v24[3] < token)
  {
    v18 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot look up token %p that was not vended by %@.  Break on AVRoutingCallbackContextRegistryUnrecognizedTokenBreak() to debug.", v13, v14, v15, v16, v17, token);
    NSLog(&stru_1F2027F60.isa, v18, self);
  }

  referencedObject = [v28[5] referencedObject];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  return referencedObject;
}

id __60__AVRoutingCallbackContextRegistry_callbackContextForToken___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 16);
  return result;
}

@end
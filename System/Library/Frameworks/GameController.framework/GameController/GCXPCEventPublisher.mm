@interface GCXPCEventPublisher
- (GCXPCEventPublisher)initWithStreamName:(id)name isStatefulEventPublisher:(BOOL)publisher;
- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)sendEvent:(id)event;
- (void)sendEvent:(id)event toSubscriber:(id)subscriber;
@end

@implementation GCXPCEventPublisher

- (GCXPCEventPublisher)initWithStreamName:(id)name isStatefulEventPublisher:(BOOL)publisher
{
  nameCopy = name;
  v29.receiver = self;
  v29.super_class = GCXPCEventPublisher;
  v8 = [(GCXPCEventPublisher *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_streamName, name);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create([(NSString *)v9->_streamName UTF8String], v10);
    queue = v9->_queue;
    v9->_queue = v11;

    [nameCopy UTF8String];
    v13 = v9->_queue;
    v14 = xpc_event_publisher_create();
    publisher = v9->_publisher;
    v9->_publisher = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    tokens = v9->_tokens;
    v9->_tokens = v16;

    v9->_statefulEventPublisher = publisher;
    if (!publisher)
    {
      array = [MEMORY[0x1E695DF70] array];
      pendingSendEvents = v9->_pendingSendEvents;
      v9->_pendingSendEvents = array;
    }

    if (v9->_publisher)
    {
      objc_initWeak(&location, v9);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke;
      aBlock[3] = &unk_1E841A320;
      objc_copyWeak(&v27, &location);
      v20 = _Block_copy(aBlock);
      v21 = v9->_publisher;
      xpc_event_publisher_set_handler();
      v22 = v9->_publisher;
      v25 = nameCopy;
      xpc_event_publisher_set_error_handler();
      v23 = v9->_publisher;
      xpc_event_publisher_activate();

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  return v9;
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEventWithAction:a2 token:a3 descriptor:v7];
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2_cold_1(a1);
  }
}

- (void)handleEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v37 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v9 = descriptorCopy;
  if (descriptorCopy)
  {
    v10 = MEMORY[0x1D38AD550](descriptorCopy);
    if (!gc_isInternalBuild())
    {
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    v22 = getGCLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      streamName = self->_streamName;
      *buf = 138544130;
      v30 = streamName;
      v31 = 1024;
      actionCopy = action;
      v33 = 2048;
      tokenCopy = token;
      v35 = 2080;
      v36 = v10;
      _os_log_impl(&dword_1D2CD5000, v22, OS_LOG_TYPE_INFO, "XPC event publisher for stream %{public}@ received xpc event with action %d and token %llu: %s", buf, 0x26u);
    }

    if (v10)
    {
LABEL_4:
      free(v10);
    }
  }

  else if (gc_isInternalBuild())
  {
    [GCXPCEventPublisher handleEventWithAction:? token:? descriptor:?];
  }

LABEL_7:
  if (action)
  {
    if (action == 1)
    {
      tokens = self->_tokens;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
      [(NSMutableSet *)tokens removeObject:v12];
      goto LABEL_27;
    }

    if (action == 2)
    {
      if (gc_isInternalBuild())
      {
        [GCXPCEventPublisher handleEventWithAction:? token:? descriptor:?];
      }

      self->_receivedInitialBarrier = 1;
      if (self->_statefulEventPublisher && self->_stateEvent)
      {
        [(GCXPCEventPublisher *)self sendEvent:?];
        goto LABEL_28;
      }

      v16 = [(NSMutableArray *)self->_pendingSendEvents copy];
      [(NSMutableArray *)self->_pendingSendEvents removeAllObjects];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v16;
      v17 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v12);
            }

            [(GCXPCEventPublisher *)self sendEvent:*(*(&v24 + 1) + 8 * i), v24];
          }

          v18 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }

LABEL_27:
    }
  }

  else
  {
    v13 = self->_tokens;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
    [(NSMutableSet *)v13 addObject:v14];

    if (self->_statefulEventPublisher)
    {
      stateEvent = self->_stateEvent;
      if (stateEvent)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:token];
        [(GCXPCEventPublisher *)self sendEvent:stateEvent toSubscriber:v12];
        goto LABEL_27;
      }
    }
  }

LABEL_28:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__GCXPCEventPublisher_sendEvent___block_invoke;
  v7[3] = &unk_1E8418C50;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    objc_storeStrong((v2 + 48), *(a1 + 40));
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 9);
  isInternalBuild = gc_isInternalBuild();
  if (v4 == 1)
  {
    if (isInternalBuild)
    {
      __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_2(v3, a1);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(*v3 + 56);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v12 = *(*(a1 + 32) + 16);
          [v11 unsignedLongLongValue];
          v13 = *(a1 + 40);
          if (xpc_event_publisher_fire() && gc_isInternalBuild())
          {
            v14 = getGCLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v18 = *(*v3 + 24);
              v15 = xpc_strerror();
              *buf = 138543874;
              v24 = v18;
              v25 = 2112;
              v26 = v11;
              v27 = 2080;
              v28 = v15;
              _os_log_error_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_ERROR, "Failed to send event to XPC event stream %{public}@ for token %@: %s", buf, 0x20u);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v16 = [v6 countByEnumeratingWithState:&v19 objects:v29 count:16];
        v8 = v16;
      }

      while (v16);
    }
  }

  else
  {
    if (isInternalBuild)
    {
      __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_1(a1);
    }

    if ((*(*v3 + 8) & 1) == 0)
    {
      [*(*v3 + 40) addObject:*(a1 + 40)];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)sendEvent:(id)event toSubscriber:(id)subscriber
{
  eventCopy = event;
  subscriberCopy = subscriber;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke;
  block[3] = &unk_1E8419BC0;
  block[4] = self;
  v12 = eventCopy;
  v13 = subscriberCopy;
  v9 = subscriberCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(a1 + 32) + 9) == 1)
  {
    if (gc_isInternalBuild())
    {
      __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_1(v1, a1);
    }

    v4 = *(a1 + 48);
    v3 = (a1 + 48);
    v5 = *(*(v3 - 2) + 16);
    [v4 unsignedLongLongValue];
    v6 = *(v3 - 1);
    if (xpc_event_publisher_fire())
    {
      if (gc_isInternalBuild())
      {
        __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_2(v1, v3);
      }
    }
  }
}

void __67__GCXPCEventPublisher_initWithStreamName_isStatefulEventPublisher___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2080;
    v8 = xpc_strerror();
    _os_log_error_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_ERROR, "Unexpected error from XPC event publisher for stream %{public}@: %s", &v5, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleEventWithAction:(uint64_t)a1 token:descriptor:.cold.1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleEventWithAction:(uint64_t)a1 token:descriptor:.cold.2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __33__GCXPCEventPublisher_sendEvent___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v5))
  {
    v12 = *(*a1 + 24);
    v13 = *(a2 + 40);
    [*(*a1 + 56) count];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v5))
  {
    v6 = *(*a1 + 24);
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __46__GCXPCEventPublisher_sendEvent_toSubscriber___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*a1 + 24);
    v7 = *a2;
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2080;
    v13 = xpc_strerror();
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Failed to send event to XPC event stream %{public}@ for token %@: %s", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end
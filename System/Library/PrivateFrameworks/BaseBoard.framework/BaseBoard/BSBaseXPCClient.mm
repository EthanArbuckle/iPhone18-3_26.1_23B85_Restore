@interface BSBaseXPCClient
- (BOOL)isSuspended;
- (BSBaseXPCClient)initWithServiceName:(id)name endpoint:(id)endpoint;
- (id)_connection;
- (id)_errorFromMessageIfAny:(id)any;
- (id)_getStringFromMessage:(id)message key:(char *)key;
- (void)_sendMessage:(id)message withReplyHandler:(id)handler waitForReply:(BOOL)reply waitDuration:(unint64_t)duration;
- (void)_sendMessageReply:(id)reply messagePacker:(id)packer;
- (void)_sendReplyForMessage:(id)message messagePacker:(id)packer;
- (void)_setEndpoint:(id)endpoint;
- (void)dealloc;
- (void)invalidate;
- (void)queue_invalidateAndFlush:(uint64_t)flush;
- (void)queue_registerWithServerIfNecessary;
- (void)queue_resumeConnection;
- (void)reconnectIfNecessary;
- (void)resumeConnection;
- (void)suspendConnection;
@end

@implementation BSBaseXPCClient

- (BSBaseXPCClient)initWithServiceName:(id)name endpoint:(id)endpoint
{
  v9.receiver = self;
  v9.super_class = BSBaseXPCClient;
  v6 = [(BSBaseXPCClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_notifyToken = -1;
    v6->_serviceName = [name copy];
    v7->_queue = BSDispatchQueueCreateWithQualityOfService([name UTF8String], 0, QOS_CLASS_USER_INITIATED, 0);
    v7->_serverEndpoint = endpoint;
    v7->_clientInvalidated = 0;
  }

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connection)
  {
    if (![(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled])
    {
      v3 = BSLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v7 = "[BSBaseXPCClient dealloc]";
        v8 = 2114;
        selfCopy = self;
        _os_log_error_impl(&dword_18FEF6000, v3, OS_LOG_TYPE_ERROR, "%s API violation: %{public}@ released before calling -invalidate", buf, 0x16u);
      }
    }
  }

  dispatch_release(self->_queue);
  self->_queue = 0;
  [(BSBaseXPCClient *)self queue_invalidateAndFlush:?];

  self->_invalidationSignal = 0;
  serverEndpoint = self->_serverEndpoint;
  if (serverEndpoint)
  {
    xpc_release(serverEndpoint);
    self->_serverEndpoint = 0;
  }

  if (notify_is_valid_token(self->_notifyToken))
  {
    notify_cancel(self->_notifyToken);
    self->_notifyToken = -1;
  }

  v5.receiver = self;
  v5.super_class = BSBaseXPCClient;
  [(BSBaseXPCClient *)&v5 dealloc];
}

- (void)queue_invalidateAndFlush:(uint64_t)flush
{
  if (flush)
  {
    [*(flush + 16) signal];
    v4 = *(flush + 48);
    if (v4)
    {
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3052000000;
      v6[3] = __Block_byref_object_copy__4;
      v6[4] = __Block_byref_object_dispose__4;
      v6[5] = v4;
      *(flush + 48) = 0;
      if (a2)
      {
        barrier[0] = MEMORY[0x1E69E9820];
        barrier[1] = 3221225472;
        barrier[2] = __44__BSBaseXPCClient_queue_invalidateAndFlush___block_invoke;
        barrier[3] = &unk_1E72CB600;
        barrier[4] = v6;
        xpc_connection_send_barrier(v4, barrier);
      }

      else
      {
        xpc_release(v4);
      }

      [flush queue_connectionWasDestroyed];
      _Block_object_dispose(v6, 8);
    }
  }
}

- (BOOL)isSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__BSBaseXPCClient_isSuspended__block_invoke;
  v5[3] = &unk_1E72CAEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__BSBaseXPCClient_isSuspended__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 56);
  }

  *(*(*(result + 40) + 8) + 24) = v1 & 1;
  return result;
}

- (void)reconnectIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BSBaseXPCClient_reconnectIfNecessary__block_invoke;
  block[3] = &unk_1E72CAE38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)queue_registerWithServerIfNecessary
{
  location[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    BSDispatchQueueAssert(*(self + 8));
    if (!*(self + 48))
    {
      v2 = 1;
      atomic_compare_exchange_strong_explicit((self + 40), &v2, v2, memory_order_relaxed, memory_order_relaxed);
      if (v2 != 1)
      {
        *(self + 56) = 1;
        v3 = *(self + 24);
        if (v3)
        {
          mach_service = xpc_connection_create_from_endpoint(v3);
        }

        else
        {
          mach_service = xpc_connection_create_mach_service([*(self + 32) UTF8String], 0, 0);
        }

        *(self + 48) = mach_service;
        _connectionInstanceUUID = [self _connectionInstanceUUID];
        if (_connectionInstanceUUID)
        {
          location[0] = 0;
          location[1] = 0;
          [_connectionInstanceUUID getUUIDBytes:location];
          xpc_connection_set_oneshot_instance();
        }

        v6 = *(self + 16);
        if (v6)
        {

          *(self + 16) = 0;
        }

        *(self + 16) = objc_alloc_init(BSAtomicSignal);
        objc_initWeak(location, self);
        v7 = *(self + 16);
        xpc_connection_set_target_queue(*(self + 48), *(self + 8));
        v8 = *(self + 48);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __54__BSBaseXPCClient_queue_registerWithServerIfNecessary__block_invoke;
        handler[3] = &unk_1E72CB5B0;
        handler[4] = v7;
        objc_copyWeak(&v14, location);
        xpc_connection_set_event_handler(v8, handler);
        if (!notify_is_valid_token(*(self + 44)))
        {
          v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.serverNotifyToken", *(self + 32)), "UTF8String"];
          v10 = *(self + 8);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __54__BSBaseXPCClient_queue_registerWithServerIfNecessary__block_invoke_37;
          v11[3] = &unk_1E72CB5D8;
          objc_copyWeak(&v12, location);
          notify_register_dispatch(v9, (self + 44), v10, v11);
          objc_destroyWeak(&v12);
        }

        [self queue_connectionWasCreated];
        [(BSBaseXPCClient *)self queue_resumeConnection];
        objc_destroyWeak(&v14);
        objc_destroyWeak(location);
      }
    }
  }
}

- (void)suspendConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BSBaseXPCClient_suspendConnection__block_invoke;
  block[3] = &unk_1E72CAE38;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__BSBaseXPCClient_suspendConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    BSDispatchQueueAssert(*(v1 + 8));
    if ((*(v1 + 56) & 1) == 0)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        xpc_connection_suspend(v2);
        *(v1 + 56) = 1;

        [v1 queue_connectionWasSuspended];
      }
    }
  }
}

- (void)resumeConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__BSBaseXPCClient_resumeConnection__block_invoke;
  block[3] = &unk_1E72CAE38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)queue_resumeConnection
{
  if (self)
  {
    BSDispatchQueueAssert(*(self + 8));
    if (*(self + 56) == 1)
    {
      v2 = *(self + 48);
      if (v2)
      {
        xpc_connection_resume(v2);
        *(self + 56) = 0;

        [self queue_connectionWasResumed];
      }
    }
  }
}

- (void)invalidate
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(&self->_clientInvalidated, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  v4 = v3 == 0;
  [(BSAtomicSignal *)self->_invalidationSignal signal];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__BSBaseXPCClient_invalidate__block_invoke;
  v6[3] = &unk_1E72CB4E8;
  v7 = v4;
  v6[4] = self;
  dispatch_async(queue, v6);
}

void __29__BSBaseXPCClient_invalidate__block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) queue_clientWasInvalidated];
  }

  v2 = *(a1 + 32);

  [(BSBaseXPCClient *)v2 queue_invalidateAndFlush:?];
}

- (id)_errorFromMessageIfAny:(id)any
{
  if (object_getClass(any) != MEMORY[0x1E69E9E98])
  {
    return 0;
  }

  v5 = MEMORY[0x1E696ABC0];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:any forKey:*MEMORY[0x1E696AA08]];

  return [v5 errorWithDomain:@"BSErrorDomain" code:1 userInfo:v6];
}

- (id)_getStringFromMessage:(id)message key:(char *)key
{
  result = xpc_dictionary_get_string(message, key);
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E696AEC0];

    return [v6 stringWithUTF8String:v5];
  }

  return result;
}

- (void)_sendMessageReply:(id)reply messagePacker:(id)packer
{
  if (packer)
  {
    if (!reply)
    {
      return;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (!reply)
    {
      return;
    }
  }

  (*(packer + 2))(packer, reply);
  remote_connection = xpc_dictionary_get_remote_connection(reply);

  xpc_connection_send_message(remote_connection, reply);
}

- (void)_sendReplyForMessage:(id)message messagePacker:(id)packer
{
  reply = xpc_dictionary_create_reply(message);
  if (reply)
  {
    v7 = reply;
    [(BSBaseXPCClient *)self _sendMessageReply:reply messagePacker:packer];

    xpc_release(v7);
  }
}

- (void)_sendMessage:(id)message withReplyHandler:(id)handler waitForReply:(BOOL)reply waitDuration:(unint64_t)duration
{
  v10 = duration == -1 && reply;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke;
  v31 = &unk_1E72CB510;
  handlerCopy = handler;
  v11 = [BSXPCMessage messageWithPacker:message];
  queue = self->_queue;
  if (handler && reply)
  {
    BSDispatchQueueAssertNot(queue);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__4;
    v26 = __Block_byref_object_dispose__4;
    v27 = 0;
    v13 = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_30;
    block[3] = &unk_1E72CB560;
    block[4] = self;
    block[5] = &v22;
    dispatch_sync(v13, block);
    if (v23[5])
    {
      if (v10)
      {
        v20 = 0;
        v14 = objc_autoreleasePoolPush();
        v15 = [(BSXPCMessage *)v11 sendSynchronouslyToConnection:v23[5] error:&v20];
        v30(v29, v15, v20);
        objc_autoreleasePoolPop(v14);
      }

      else
      {
        v16 = dispatch_semaphore_create(0);
        connection = self->_connection;
        v18 = self->_queue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_2_31;
        v19[3] = &unk_1E72CB588;
        v19[4] = v16;
        v19[5] = v29;
        [(BSXPCMessage *)v11 sendToConnection:connection replyQueue:v18 replyHandler:v19];
        dispatch_semaphore_wait(v16, duration);
        dispatch_release(v16);
      }
    }

    else
    {
      (*(handler + 2))(handler, 0);
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_2;
    v28[3] = &unk_1E72CB538;
    v28[4] = self;
    v28[5] = v11;
    v28[6] = handler;
    v28[7] = v29;
    dispatch_async(queue, v28);
  }
}

uint64_t __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (!a2 || a3)
  {
    if (!v3)
    {
      return result;
    }

    v4 = 0;
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    v4 = [a2 payload];
  }

  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_2(uint64_t *a1)
{
  [(BSBaseXPCClient *)a1[4] queue_registerWithServerIfNecessary];
  v2 = a1[6];
  if (*(a1[4] + 48))
  {
    v3 = a1[5];
    if (v2)
    {
      [v3 sendToConnection:? replyQueue:? replyHandler:?];
    }

    else
    {

      [v3 sendToConnection:?];
    }
  }

  else if (v2)
  {
    v4 = *(v2 + 16);
    v5 = a1[6];

    v4(v5, 0);
  }
}

id __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_30(uint64_t a1)
{
  [(BSBaseXPCClient *)*(a1 + 32) queue_registerWithServerIfNecessary];
  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 48);
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return v2;
}

intptr_t __75__BSBaseXPCClient__sendMessage_withReplyHandler_waitForReply_waitDuration___block_invoke_2_31(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)_connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__BSBaseXPCClient__connection__block_invoke;
  v5[3] = &unk_1E72CAEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__BSBaseXPCClient__connection__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setEndpoint:(id)endpoint
{
  serverEndpoint = self->_serverEndpoint;
  if (serverEndpoint)
  {
    xpc_release(serverEndpoint);
  }

  xpc_retain(endpoint);
  self->_serverEndpoint = endpoint;
}

void __54__BSBaseXPCClient_queue_registerWithServerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) hasBeenSignalled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_autoreleasePoolPush();
      Class = object_getClass(a2);
      if (Class == MEMORY[0x1E69E9E98])
      {
        [v5 queue_handleError:a2];
        if (a2 == MEMORY[0x1E69E9E18])
        {
          [v5 queue_connectionWasInterrupted];
          [(BSBaseXPCClient *)v5 queue_invalidateAndFlush:?];
          [(BSBaseXPCClient *)v5 queue_registerWithServerIfNecessary];
        }

        else if (a2 == MEMORY[0x1E69E9E20])
        {
          [v5 queue_connectionWasInvalidated];
          [(BSBaseXPCClient *)v5 queue_invalidateAndFlush:?];
        }

        else
        {
          v8 = BSLogCommon();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = 138543362;
            v10 = [a2 description];
            _os_log_error_impl(&dword_18FEF6000, v8, OS_LOG_TYPE_ERROR, "Connection closed unexpectedly: %{public}@", &v9, 0xCu);
          }
        }
      }

      else if (Class == MEMORY[0x1E69E9E80])
      {
        [v5 queue_handleMessage:a2];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

uint64_t __54__BSBaseXPCClient_queue_registerWithServerIfNecessary__block_invoke_37(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (state64)
  {
    result = objc_loadWeak((a1 + 32));
    if (result)
    {
      v4 = result;
      v5 = 1;
      atomic_compare_exchange_strong_explicit((result + 40), &v5, v5, memory_order_relaxed, memory_order_relaxed);
      if (v5 != 1)
      {
        result = [*(result + 16) hasBeenSignalled];
        if (result)
        {
          return [v4 reconnectIfNecessary];
        }
      }
    }
  }

  return result;
}

void __44__BSBaseXPCClient_queue_invalidateAndFlush___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__BSBaseXPCClient_queue_invalidateAndFlush___block_invoke_2;
  handler[3] = &unk_1E72CAE60;
  handler[4] = v2;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_cancel(*(*(*(a1 + 32) + 8) + 40));
}

void __44__BSBaseXPCClient_queue_invalidateAndFlush___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == MEMORY[0x1E69E9E20])
  {
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
  }
}

@end
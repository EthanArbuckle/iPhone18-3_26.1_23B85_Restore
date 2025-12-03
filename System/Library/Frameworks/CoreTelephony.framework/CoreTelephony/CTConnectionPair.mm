@interface CTConnectionPair
- (BOOL)sendData:(id)data usingConnection:(int64_t)connection completion:(id)completion;
- (BOOL)start;
- (CTConnectionPair)initWithQueue:(id)queue delegate:(id)delegate endpoint1:(id)endpoint1 parameters1:(id)parameters1 endpoint2:(id)endpoint2 parameter2:(id)parameter2;
- (void)connectionStateChanged:(int)changed connectionId:(int64_t)id;
- (void)dealloc;
- (void)receiveData:(int64_t)data;
- (void)updatePairState:(int64_t)state;
@end

@implementation CTConnectionPair

- (CTConnectionPair)initWithQueue:(id)queue delegate:(id)delegate endpoint1:(id)endpoint1 parameters1:(id)parameters1 endpoint2:(id)endpoint2 parameter2:(id)parameter2
{
  queueCopy = queue;
  delegateCopy = delegate;
  endpoint1Copy = endpoint1;
  parameters1Copy = parameters1;
  endpoint2Copy = endpoint2;
  parameter2Copy = parameter2;
  v27.receiver = self;
  v27.super_class = CTConnectionPair;
  v18 = [(CTConnectionPair *)&v27 init];
  if (!v18)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  if (([objc_opt_class() conformsToProtocol:&unk_1EF07D270] & 1) == 0)
  {
    v22 = CTLogConnectionPair();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CTConnectionPair initWithQueue:delegate:endpoint1:parameters1:endpoint2:parameter2:];
    }

    goto LABEL_7;
  }

  v18->fStarted = 0;
  objc_storeStrong(&v18->fQueue, queue);
  objc_storeWeak(&v18->fDelegate, delegateCopy);
  fConnection1 = v18->fConnection1;
  v18->fConnectionPairState = 0;
  v18->fConnection1 = 0;

  objc_storeStrong(&v18->fEndpoint1, endpoint1);
  objc_storeStrong(&v18->fParameters1, parameters1);
  v18->fConnectionState1 = 0;
  fConnection2 = v18->fConnection2;
  v18->fConnection2 = 0;

  objc_storeStrong(&v18->fEndpoint2, endpoint2);
  objc_storeStrong(&v18->fParameters2, parameter2);
  v18->fConnectionState2 = 0;
  v21 = v18;
LABEL_8:

  return v21;
}

- (void)receiveData:(int64_t)data
{
  dispatch_assert_queue_V2(self->fQueue);
  v5 = self->fQueue;
  objc_initWeak(&location, self);
  v6 = 72;
  if (!data)
  {
    v6 = 40;
  }

  v7 = *(&self->super.isa + v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__CTConnectionPair_receiveData___block_invoke;
  v9[3] = &unk_1E6A47230;
  v11[1] = data;
  v8 = v5;
  v10 = v8;
  objc_copyWeak(v11, &location);
  nw_connection_receive_message(v7, v9);
  objc_destroyWeak(v11);

  objc_destroyWeak(&location);
}

void __32__CTConnectionPair_receiveData___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = CTLogConnectionPair();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __32__CTConnectionPair_receiveData___block_invoke_cold_1(a1);
    }
  }

  else
  {
    if (v8)
    {
      v12 = v8;
      v13 = *(a1 + 32);
      objc_copyWeak(to, (a1 + 40));
      v14 = v12;
      v15 = *(a1 + 48);
      to[1] = v14;
      to[2] = v15;
      v16 = v13;
      operator new();
    }

    v11 = CTLogConnectionPair();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __32__CTConnectionPair_receiveData___block_invoke_cold_2(a1);
    }
  }
}

- (void)updatePairState:(int64_t)state
{
  dispatch_assert_queue_V2(self->fQueue);
  if (self->fConnectionPairState != state)
  {
    self->fConnectionPairState = state;
    if (state == 2)
    {
      nw_connection_cancel(self->fConnection1);
      nw_connection_cancel(self->fConnection2);
      fConnection1 = self->fConnection1;
      self->fConnection1 = 0;

      fConnection2 = self->fConnection2;
      self->fConnection2 = 0;
    }

    else if (state == 1)
    {
      [(CTConnectionPair *)self receiveData:0];
      [(CTConnectionPair *)self receiveData:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->fDelegate);
    [WeakRetained connectionPairStateChanged:state];
  }
}

- (void)connectionStateChanged:(int)changed connectionId:(int64_t)id
{
  dispatch_assert_queue_V2(self->fQueue);
  if (id == 1)
  {
    p_fConnectionState2 = &self->fConnectionState2;
    fConnectionState2 = self->fConnectionState2;
  }

  else
  {
    if (id)
    {
      goto LABEL_7;
    }

    p_fConnectionState2 = &self->fConnectionState1;
    fConnectionState2 = self->fConnectionState1;
  }

  if (fConnectionState2 == changed)
  {
    return;
  }

  *p_fConnectionState2 = changed;
LABEL_7:
  fConnectionState1 = self->fConnectionState1;
  if ((fConnectionState1 & 0xFFFFFFFE) == 4 || (self->fConnectionState2 & 0xFFFFFFFE) == 4)
  {
    [(CTConnectionPair *)self updatePairState:2];
    fConnectionState1 = self->fConnectionState1;
  }

  if (fConnectionState1 == 3 && self->fConnectionState2 == 3)
  {

    [(CTConnectionPair *)self updatePairState:1];
  }
}

- (BOOL)start
{
  dispatch_assert_queue_V2(self->fQueue);
  if (!self->fStarted)
  {
    v4 = nw_connection_create(self->fEndpoint1, self->fParameters1);
    fConnection1 = self->fConnection1;
    self->fConnection1 = v4;

    if (self->fConnection1)
    {
      v6 = nw_connection_create(self->fEndpoint2, self->fParameters2);
      fConnection2 = self->fConnection2;
      self->fConnection2 = v6;

      v8 = self->fConnection1;
      if (self->fConnection2)
      {
        nw_connection_set_queue(v8, self->fQueue);
        nw_connection_set_queue(self->fConnection2, self->fQueue);
        objc_initWeak(&location, self);
        v9 = self->fConnection1;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __25__CTConnectionPair_start__block_invoke;
        handler[3] = &unk_1E6A47258;
        objc_copyWeak(&v15, &location);
        nw_connection_set_state_changed_handler(v9, handler);
        v10 = self->fConnection2;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __25__CTConnectionPair_start__block_invoke_54;
        v12[3] = &unk_1E6A47258;
        objc_copyWeak(&v13, &location);
        nw_connection_set_state_changed_handler(v10, v12);
        nw_connection_start(self->fConnection1);
        nw_connection_start(self->fConnection2);
        v3 = 1;
        self->fStarted = 1;
        objc_destroyWeak(&v13);
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
        return v3;
      }

      self->fConnection1 = 0;
    }

    return 0;
  }

  return 1;
}

void __25__CTConnectionPair_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = CTLogConnectionPair();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __25__CTConnectionPair_start__block_invoke_cold_1();
      }
    }

    else
    {
      [WeakRetained connectionStateChanged:a2 connectionId:0];
    }
  }
}

void __25__CTConnectionPair_start__block_invoke_54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = CTLogConnectionPair();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __25__CTConnectionPair_start__block_invoke_54_cold_1();
      }
    }

    else
    {
      [WeakRetained connectionStateChanged:a2 connectionId:1];
    }
  }
}

- (BOOL)sendData:(id)data usingConnection:(int64_t)connection completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->fQueue);
  if (self->fConnection1 && self->fConnection2 && self->fConnectionPairState == 1)
  {
    if (connection)
    {
      fConnection2 = self->fConnection2;
    }

    else
    {
      fConnection2 = self->fConnection1;
    }

    v11 = dispatch_data_create([dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0);
    nw_connection_send(fConnection2, v11, *MEMORY[0x1E6977E88], 1, completionCopy);

    v12 = 1;
  }

  else
  {
    v13 = CTLogConnectionPair();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTConnectionPair sendData:? usingConnection:? completion:?];
    }

    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  fConnection1 = self->fConnection1;
  if (fConnection1)
  {
    nw_connection_cancel(fConnection1);
  }

  fConnection2 = self->fConnection2;
  if (fConnection2)
  {
    nw_connection_cancel(fConnection2);
  }

  v5.receiver = self;
  v5.super_class = CTConnectionPair;
  [(CTConnectionPair *)&v5 dealloc];
}

@end
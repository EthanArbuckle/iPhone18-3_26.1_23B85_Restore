@interface AWClientPollWaiter
- (AWClientPollWaiter)initWithClient:(id)client timeout:(unint64_t)timeout queue:(id)queue block:(id)block;
- (void)invalidate;
- (void)invokeClientBlock:(unint64_t)block event:(id)event;
- (void)notifyPollEventType:(unint64_t)type event:(id)event;
@end

@implementation AWClientPollWaiter

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AWClientPollWaiter_invalidate__block_invoke;
  block[3] = &unk_1E7F38038;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)notifyPollEventType:(unint64_t)type event:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AWClientPollWaiter_notifyPollEventType_event___block_invoke;
  block[3] = &unk_1E7F37FA0;
  v10 = eventCopy;
  typeCopy = type;
  block[4] = self;
  v8 = eventCopy;
  dispatch_async(queue, block);
}

void __48__AWClientPollWaiter_notifyPollEventType_event___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[12];
  if (v3 == 2)
  {
    v6 = 4;
    v7 = 0;
  }

  else
  {
    if (v3 != 1)
    {
      if (v3)
      {
        goto LABEL_12;
      }

      [v2 invokeClientBlock:a1[6] event:a1[5]];
      v4 = a1[6];
      v5 = a1[4];
      if (v4 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v6 = a1[6];
    if (v6 == 1)
    {
      goto LABEL_12;
    }

    v7 = a1[5];
  }

  [v2 invokeClientBlock:v6 event:v7];
  v5 = a1[4];
LABEL_10:
  LODWORD(v4) = 3;
LABEL_11:
  *(v5 + 48) = v4;
LABEL_12:
  v8 = a1[4];
  if (*(v8 + 48) == 3)
  {
    v9 = *(v8 + 40);

    dispatch_source_cancel(v9);
  }
}

- (void)invokeClientBlock:(unint64_t)block event:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AWClientPollWaiter_invokeClientBlock_event___block_invoke;
  block[3] = &unk_1E7F37FA0;
  v11 = eventCopy;
  blockCopy = block;
  block[4] = self;
  v8 = eventCopy;
  dispatch_async(clientQueue, block);
  WeakRetained = objc_loadWeakRetained(&self->_client);
  [AWSampleLogger client:WeakRetained pollEventType:block event:v8];
}

- (AWClientPollWaiter)initWithClient:(id)client timeout:(unint64_t)timeout queue:(id)queue block:(id)block
{
  clientCopy = client;
  queueCopy = queue;
  blockCopy = block;
  v30.receiver = self;
  v30.super_class = AWClientPollWaiter;
  v13 = [(AWClientPollWaiter *)&v30 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_client, clientCopy);
    v15 = dispatch_queue_create("com.apple.AttentionAwareness.pollWaiterQueue", 0);
    queue = v14->_queue;
    v14->_queue = v15;

    v17 = dispatch_queue_create("com.apple.AttentionAwareness.clientPollQueue", 0);
    clientQueue = v14->_clientQueue;
    v14->_clientQueue = v17;

    dispatch_set_target_queue(v14->_clientQueue, queueCopy);
    v19 = [blockCopy copy];
    clientBlock = v14->_clientBlock;
    v14->_clientBlock = v19;

    v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14->_queue);
    timer = v14->_timer;
    v14->_timer = v21;

    v23 = v14->_timer;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __57__AWClientPollWaiter_initWithClient_timeout_queue_block___block_invoke;
    v27[3] = &unk_1E7F38060;
    v28 = v14;
    v29 = clientCopy;
    dispatch_source_set_event_handler(v23, v27);
    v24 = v14->_timer;
    v25 = dispatch_time(0, timeout);
    dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(v14->_timer);
  }

  return v14;
}

uint64_t __57__AWClientPollWaiter_initWithClient_timeout_queue_block___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 48) != 3)
  {
    return [*(result + 40) notifyPollEventType:3 event:0];
  }

  return result;
}

@end
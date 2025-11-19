@interface AVAirTransport
+ (NSRunLoop)eventRunLoop;
+ (id)airTransportQueue;
+ (id)channelWithInput:(id)a3 output:(id)a4;
+ (void)performAsync:(id)a3;
+ (void)performSync:(id)a3;
+ (void)startEventThreadIfNecessary;
- (AVAirTransportDelegate)delegate;
- (id)_initPrivate;
- (id)description;
- (void)close;
- (void)dealloc;
- (void)performOnAirChannelQueueSync:(id)a3;
- (void)sendObject:(id)a3 receiveResponse:(id)a4;
- (void)sendResponse:(id)a3;
- (void)terminatePendingRequests;
- (void)writeData:(id)a3;
- (void)writeMore;
@end

@implementation AVAirTransport

- (AVAirTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendResponse:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(AVAirTransport *)self streamDataTransformer];
    v6 = [v5 dataForMessage:v4];

    if (v6)
    {
      if ([v6 length])
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __31__AVAirTransport_sendResponse___block_invoke;
        v8[3] = &unk_1E7209FB0;
        v8[4] = self;
        v9 = v6;
        [AVAirTransport performSync:v8];
      }
    }

    else
    {
      v7 = _avairlog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "[AVAirTransport sendResponse:]";
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s failed to transform response object (%@)", buf, 0x16u);
      }
    }
  }
}

- (void)sendObject:(id)a3 receiveResponse:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  [(AVAirTransport *)self open];
  v8 = +[AVAirTransport airTransportQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVAirTransport_sendObject_receiveResponse___block_invoke;
  block[3] = &unk_1E720A068;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __45__AVAirTransport_sendObject_receiveResponse___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) streamDataTransformer];
  v3 = [v2 dataForMessage:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) receiveResponseBlocks];
    v5 = _Block_copy(*(a1 + 48));
    [v4 addObject:v5];

    v6 = _avairlog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[AVAirTransport sendObject:receiveResponse:]_block_invoke";
      v14 = 2048;
      v15 = [v3 length];
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s sending %ld bytes...", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__AVAirTransport_sendObject_receiveResponse___block_invoke_133;
    v10[3] = &unk_1E7209FB0;
    v10[4] = *(a1 + 32);
    v11 = v3;
    [AVAirTransport performSync:v10];
    v7 = _avairlog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[AVAirTransport sendObject:receiveResponse:]_block_invoke_2";
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s ...succeeded, now waiting for/reading the response...", buf, 0xCu);
    }
  }

  else
  {
    v8 = _avairlog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 136315394;
      v13 = "[AVAirTransport sendObject:receiveResponse:]_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s failed to transform message object (%@)", buf, 0x16u);
    }
  }
}

- (void)performOnAirChannelQueueSync:(id)a3
{
  v5 = a3;
  if (+[AVAirTransport _isRunningOnAirChannelQueue])
  {
    v5[2]();
  }

  else
  {
    v3 = [v5 copy];

    v4 = +[AVAirTransport airTransportQueue];
    dispatch_sync(v4, v3);

    v5 = v3;
  }
}

- (void)writeData:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[AVAirTransport writeData:]";
    v9 = 2048;
    v10 = [v4 length];
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s writing %ld bytes...", buf, 0x16u);
  }

  [(NSMutableArray *)self->_outputQueue addObject:v4];
  if ([(AVAirTransport *)self canWrite])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__AVAirTransport_writeData___block_invoke;
    v6[3] = &unk_1E720A090;
    v6[4] = self;
    [AVAirTransport performAsync:v6];
  }
}

- (void)writeMore
{
  v17 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  if ([(AVAirTransport *)self canWrite])
  {
    *&v3 = 136315138;
    v12 = v3;
    do
    {
      if (![(NSMutableArray *)self->_outputQueue count])
      {
        return;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v4 = [(NSMutableArray *)self->_outputQueue firstObject];
      if (v4)
      {
        v5 = [(AVAirTransport *)self _writeData:v4];
        v6 = _avairlog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v14 = "[AVAirTransport writeMore]";
          v15 = 2048;
          v16 = v5;
          _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s wrote %ld bytes", buf, 0x16u);
        }

        if (v5 == [v4 length])
        {
          [(NSMutableArray *)self->_outputQueue removeObject:v4];
        }

        else
        {
          if (v5 < 1)
          {
            v8 = _avairlog();
            v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
            if (v5 < 0)
            {
              if (v9)
              {
                *buf = v12;
                v14 = "[AVAirTransport writeMore]";
                v10 = v8;
                v11 = "%s write error occurred";
LABEL_16:
                _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
              }
            }

            else if (v9)
            {
              *buf = v12;
              v14 = "[AVAirTransport writeMore]";
              v10 = v8;
              v11 = "%s write error: stream closed";
              goto LABEL_16;
            }

            goto LABEL_18;
          }

          v7 = [v4 subdataWithRange:{v5, objc_msgSend(v4, "length") - v5}];
          [(NSMutableArray *)self->_outputQueue setObject:v7 atIndexedSubscript:0];
        }
      }

LABEL_18:
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    }

    while ([(AVAirTransport *)self canWrite]);
  }
}

- (void)terminatePendingRequests
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__AVAirTransport_terminatePendingRequests__block_invoke;
  v2[3] = &unk_1E720A090;
  v2[4] = self;
  [(AVAirTransport *)self performOnAirChannelQueueSync:v2];
}

void __42__AVAirTransport_terminatePendingRequests__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) receiveResponseBlocks];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = _avairlog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = "[AVAirTransport terminatePendingRequests]_block_invoke";
          _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s response never received", buf, 0xCu);
        }

        (*(v7 + 16))(v7, 0, -3);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 32) receiveResponseBlocks];
  [v9 removeAllObjects];
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v4 stringWithFormat:@"<%@ %p>", v7, v8];
  }

  else
  {
    v9 = @"nil";
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"<%@ %p: delegate=%@>", v12, self, v9];

  return v13;
}

- (void)close
{
  [(AVAirTransport *)self invalidate];

  [(AVAirTransport *)self terminatePendingRequests];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  [(AVAirTransport *)self invalidate];
  v3 = _avairlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[AVAirTransport dealloc]";
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s bye bye", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = AVAirTransport;
  [(AVAirTransport *)&v4 dealloc];
}

- (id)_initPrivate
{
  v8.receiver = self;
  v8.super_class = AVAirTransport;
  v2 = [(AVAirTransport *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    outputQueue = v2->_outputQueue;
    v2->_outputQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requestCompletions = v2->_requestCompletions;
    v2->_requestCompletions = v5;
  }

  return v2;
}

+ (id)airTransportQueue
{
  if (airTransportQueue_onceToken != -1)
  {
    dispatch_once(&airTransportQueue_onceToken, &__block_literal_global_115);
  }

  v3 = airTransportQueue__queue;

  return v3;
}

void __35__AVAirTransport_airTransportQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.avkit.AirChannel", attr);
  v2 = airTransportQueue__queue;
  airTransportQueue__queue = v1;

  dispatch_queue_set_specific(airTransportQueue__queue, AirChannelQueueSpecificKey, AirChannelQueueIsCurrentValue, 0);
}

+ (NSRunLoop)eventRunLoop
{
  [a1 startEventThreadIfNecessary];
  v2 = _eventRunLoop;

  return v2;
}

+ (void)performAsync:(id)a3
{
  v6 = [a3 copy];
  v4 = _eventThread;
  v5 = _Block_copy(v6);
  [a1 performSelector:sel___performBlock_ onThread:v4 withObject:v5 waitUntilDone:0];
}

+ (void)performSync:(id)a3
{
  aBlock = a3;
  if (isRunningEventThread())
  {
    aBlock[2]();
  }

  else
  {
    v4 = _eventThread;
    v5 = _Block_copy(aBlock);

    [a1 performSelector:sel___performBlock_ onThread:v4 withObject:v5 waitUntilDone:1];
    aBlock = v5;
  }
}

+ (void)startEventThreadIfNecessary
{
  if (startEventThreadIfNecessary_onceToken != -1)
  {
    dispatch_once(&startEventThreadIfNecessary_onceToken, &__block_literal_global_7301);
  }
}

uint64_t __45__AVAirTransport_startEventThreadIfNecessary__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AF00]) initWithBlock:&__block_literal_global_98];
  v1 = _eventThread;
  _eventThread = v0;

  [_eventThread setName:@"com.apple.avkit.AirChannel"];
  [_eventThread start];

  return [AVAirTransport performSync:&__block_literal_global_111];
}

uint64_t __45__AVAirTransport_startEventThreadIfNecessary__block_invoke_109()
{
  v0 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v1 = _eventRunLoop;
  _eventRunLoop = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __45__AVAirTransport_startEventThreadIfNecessary__block_invoke_2()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v1 = _avairlog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "+[AVAirTransport startEventThreadIfNecessary]_block_invoke_2";
    _os_log_impl(&dword_18B49C000, v1, OS_LOG_TYPE_DEFAULT, "%s Starting event thread..", &v9, 0xCu);
  }

  v2 = MEMORY[0x1E695DFF0];
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  [v3 timeIntervalSinceNow];
  v4 = [v2 timerWithTimeInterval:1 repeats:&__block_literal_global_104 block:?];

  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v5 addTimer:v4 forMode:*MEMORY[0x1E695DA28]];

  v6 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v6 run];

  v7 = _avairlog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "+[AVAirTransport startEventThreadIfNecessary]_block_invoke_2";
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Ending event thread..", &v9, 0xCu);
  }

  v8 = _eventThread;
  _eventThread = 0;

  objc_autoreleasePoolPop(v0);
}

+ (id)channelWithInput:(id)a3 output:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AVAirTransportStreams alloc] initWithInput:v6 output:v5];

  return v7;
}

@end
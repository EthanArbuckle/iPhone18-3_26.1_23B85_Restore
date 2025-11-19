@interface VSSingleThreadDispatchQueue
+ (id)currentQueue;
- (VSSingleThreadDispatchQueue)initWithName:(id)a3;
- (int64_t)state;
- (void)_threadMain;
- (void)dispatchBlock:(id)a3;
- (void)dispatchBlockSync:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation VSSingleThreadDispatchQueue

- (VSSingleThreadDispatchQueue)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VSSingleThreadDispatchQueue;
  v5 = [(VSSingleThreadDispatchQueue *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocks = v5->_blocks;
    v5->_blocks = v6;

    v8 = [v4 copy];
    name = v5->_name;
    v5->_name = v8;
  }

  return v5;
}

+ (id)currentQueue
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"VSSingleThreadDispatchQueueThreadKey"];

  return v4;
}

- (void)startWithCompletionHandler:(id)a3
{
  [(VSSingleThreadDispatchQueue *)self setStartCompletionBlock:a3];
  v9 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel__threadMain object:0];
  [(VSSingleThreadDispatchQueue *)self setUnderlyingThread:?];
  v4 = [(VSSingleThreadDispatchQueue *)self name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
  }

  v8 = v6;

  [v9 setName:v8];
  [v9 start];
}

- (void)dispatchBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VSSingleThreadDispatchQueue *)v4 blocks];
  v6 = [v7 copy];
  [v5 addObject:v6];

  CFRunLoopSourceSignal([(VSSingleThreadDispatchQueue *)v4 runLoopSource]);
  CFRunLoopWakeUp([(VSSingleThreadDispatchQueue *)v4 underlyingRunLoop]);
  objc_sync_exit(v4);
}

- (void)dispatchBlockSync:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VSSemaphore);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__VSSingleThreadDispatchQueue_dispatchBlockSync___block_invoke;
  v11 = &unk_278B737F8;
  v12 = v5;
  v13 = v4;
  v6 = v5;
  v7 = v4;
  [(VSSingleThreadDispatchQueue *)self dispatchBlock:&v8];
  [(VSSemaphore *)v6 wait:v8];
}

uint64_t __49__VSSingleThreadDispatchQueue_dispatchBlockSync___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 signal];
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_state)
  {
    CFRunLoopStop([(VSSingleThreadDispatchQueue *)obj underlyingRunLoop]);
  }

  objc_sync_exit(obj);
}

- (int64_t)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (void)_threadMain
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.version) = 136315138;
    *(&buf.version + 4) = "[VSSingleThreadDispatchQueue _threadMain]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  buf.version = 0;
  buf.info = self;
  memset(&buf.retain, 0, 40);
  buf.schedule = runLoopSourceScheduleCallback;
  buf.cancel = runLoopSourceCancellCallback;
  buf.perform = runLoopSourcePerformCallback;
  Current = CFRunLoopGetCurrent();
  [(VSSingleThreadDispatchQueue *)self setUnderlyingRunLoop:Current];
  CFRetain(Current);
  v6 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &buf);
  [(VSSingleThreadDispatchQueue *)self setRunLoopSource:v6];
  v7 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(Current, v6, *MEMORY[0x277CBF058]);
  v8 = [MEMORY[0x277CCACC8] currentThread];
  v9 = [v8 threadDictionary];
  [v9 setObject:self forKey:@"VSSingleThreadDispatchQueueThreadKey"];

  v10 = [(VSSingleThreadDispatchQueue *)self startCompletionBlock];

  if (v10)
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__VSSingleThreadDispatchQueue__threadMain__block_invoke;
    v14[3] = &unk_278B74110;
    objc_copyWeak(&v15, &location);
    dispatch_async(MEMORY[0x277D85CD0], v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  do
  {
    v11 = objc_autoreleasePoolPush();
    v12 = CFRunLoopRunInMode(v7, 1.0e10, 1u);
    objc_autoreleasePoolPop(v11);
  }

  while ((v12 - 3) < 0xFFFFFFFE);
  CFRelease(Current);
  CFRunLoopSourceInvalidate(v6);
  [(VSSingleThreadDispatchQueue *)self setRunLoopSource:0];
  [(VSSingleThreadDispatchQueue *)self setUnderlyingRunLoop:0];
  v13 = self;
  objc_sync_enter(v13);
  [(VSSingleThreadDispatchQueue *)v13 setState:1];
  objc_sync_exit(v13);

  objc_autoreleasePoolPop(v4);
}

void __42__VSSingleThreadDispatchQueue__threadMain__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained startCompletionBlock];
    (v2)[2](v2, v3);

    [v3 setStartCompletionBlock:0];
    WeakRetained = v3;
  }
}

@end
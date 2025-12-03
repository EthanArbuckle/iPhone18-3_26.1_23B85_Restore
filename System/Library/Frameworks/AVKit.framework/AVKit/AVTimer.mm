@interface AVTimer
- (AVTimer)init;
- (AVTimer)initWithTimeInterval:(double)interval queue:(id)queue block:(id)block repeats:(BOOL)repeats;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AVTimer

- (void)invalidate
{
  self->_invalidated = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__AVTimer_invalidate__block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __21__AVTimer_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__AVTimer_dealloc__block_invoke;
  block[3] = &unk_1E720A090;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = AVTimer;
  [(AVTimer *)&v4 dealloc];
}

void __18__AVTimer_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    dispatch_source_cancel(v1);
  }
}

- (AVTimer)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _AVMethodProem(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithTimeInterval:queue:block:repeats:].", v5, v7}];

  return [(AVTimer *)self initWithTimeInterval:0 queue:0 block:0 repeats:0.0];
}

- (AVTimer)initWithTimeInterval:(double)interval queue:(id)queue block:(id)block repeats:(BOOL)repeats
{
  queueCopy = queue;
  blockCopy = block;
  v27.receiver = self;
  v27.super_class = AVTimer;
  v12 = [(AVTimer *)&v27 init];
  if (v12)
  {
    intervalCopy = interval;
    if (interval <= 0.0)
    {
      v14 = _AVLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v14, OS_LOG_TYPE_ERROR, "Error: invalid timer update interval. Interval must be greater than 0.", buf, 2u);
      }

      intervalCopy = 0.0;
    }

    *(v12 + 4) = intervalCopy;
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avkit.AVTimer.manage %p", v12];
    v16 = dispatch_queue_create([v15 UTF8String], 0);
    v17 = *(v12 + 1);
    *(v12 + 1) = v16;

    v18 = *(v12 + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke;
    block[3] = &unk_1E72094F8;
    v21 = v12;
    intervalCopy2 = interval;
    repeatsCopy = repeats;
    v22 = queueCopy;
    v23 = blockCopy;
    dispatch_sync(v18, block);
  }

  return v12;
}

void __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.avkit.AVTimer.timer %p", *(a1 + 32)];
  v3 = dispatch_queue_create([v2 UTF8String], 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  v7 = *(*(a1 + 32) + 16);
  v8 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
  dispatch_source_set_timer(v7, v8, (*(a1 + 56) * 1000000000.0), 0x5F5E100uLL);
  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 16);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke_2;
  handler[3] = &unk_1E72094D0;
  objc_copyWeak(&v13, &location);
  v14 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(*(*(a1 + 32) + 16));

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      v4 = *(WeakRetained + 2);
      if (v4)
      {
        dispatch_source_cancel(v4);
        v5 = v3[2];
        v3[2] = 0;
      }
    }

    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke_3;
    v7[3] = &unk_1E720A040;
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_sync(v6, v7);
  }
}

uint64_t __52__AVTimer_initWithTimeInterval_queue_block_repeats___block_invoke_3(uint64_t result)
{
  if ((*(*(result + 32) + 24) & 1) == 0)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

@end
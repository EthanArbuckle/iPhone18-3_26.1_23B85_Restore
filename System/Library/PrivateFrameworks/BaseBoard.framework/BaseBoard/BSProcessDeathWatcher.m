@interface BSProcessDeathWatcher
- (BSProcessDeathWatcher)initWithPID:(int)a3 queue:(id)a4 deathHandler:(id)a5;
- (void)dealloc;
@end

@implementation BSProcessDeathWatcher

- (void)dealloc
{
  [(BSDispatchSource *)self->_source invalidate];
  v3.receiver = self;
  v3.super_class = BSProcessDeathWatcher;
  [(BSProcessDeathWatcher *)&v3 dealloc];
}

- (BSProcessDeathWatcher)initWithPID:(int)a3 queue:(id)a4 deathHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BSProcessDeathWatcher *)self init];
  if (v10)
  {
    v11 = [v9 copy];
    deathHandler = v10->_deathHandler;
    v10->_deathHandler = v11;

    v13 = [BSDispatchSource alloc];
    v14 = [(BSDispatchSource *)v13 initWithType:a3 handle:0x80000000uLL mask:v8 queue:0 configureSourceBlock:?];
    source = v10->_source;
    v10->_source = v14;

    objc_initWeak(&location, v10);
    v16 = v10->_source;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__BSProcessDeathWatcher_initWithPID_queue_deathHandler___block_invoke;
    v19[3] = &unk_1E72CB830;
    objc_copyWeak(&v20, &location);
    if (v16)
    {
      objc_setProperty_nonatomic_copy(v16, v17, v19, 32);
    }

    [(BSDispatchSource *)v10->_source resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __56__BSProcessDeathWatcher_initWithPID_queue_deathHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 2);
    if (v3)
    {
      (*(v3 + 16))(v3, v2);
      v4 = v5[2];
      v5[2] = 0;

      v2 = v5;
    }
  }

  [v2 invalidate];
}

@end
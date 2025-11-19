@interface ANTimer
+ (id)timerWithLabel:(id)a3 identifier:(id)a4;
- (ANTimer)initWithLabel:(id)a3 identifier:(id)a4;
- (id)description;
- (void)_createAndStartTimerWithQueue:(id)a3 handler:(id)a4;
- (void)_startTimer;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)startWithValue:(double)a3 queue:(id)a4 handler:(id)a5;
@end

@implementation ANTimer

+ (id)timerWithLabel:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ANTimer alloc] initWithLabel:v6 identifier:v5];

  return v7;
}

- (ANTimer)initWithLabel:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ANTimer;
  v9 = [(ANTimer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Timer", v7];
    v12 = ANLogBuildCategoryName(v11, v8);
    v13 = ANLogWithCategory(v12);
    log = v10->_log;
    v10->_log = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(ANTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = ANTimer;
  [(ANTimer *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANTimer *)self timer];
  v5 = [(ANTimer *)self label];
  [(ANTimer *)self timeoutValue];
  v7 = [v3 stringWithFormat:@"Timer = %@, Label = %@, Timeout Value = %f", v4, v5, v6];

  return v7;
}

- (void)startWithValue:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(ANTimer *)self setTimeoutValue:a3];
  [(ANTimer *)self cancel];
  [(ANTimer *)self _createAndStartTimerWithQueue:v9 handler:v8];
}

- (void)_createAndStartTimerWithQueue:(id)a3 handler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a3);
  [(ANTimer *)self setTimer:v7];

  v8 = [(ANTimer *)self timer];

  if (v8)
  {
    v9 = [(ANTimer *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(ANTimer *)self timer];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_DEFAULT, "Created Timer %@", &v13, 0xCu);
    }

    v11 = [(ANTimer *)self timer];
    dispatch_source_set_event_handler(v11, v6);

    [(ANTimer *)self _startTimer];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ANTimer *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ANTimer *)self timer];
    [(ANTimer *)self timeoutValue];
    v12 = 138412546;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    _os_log_impl(&dword_2237C8000, v3, OS_LOG_TYPE_DEFAULT, "Starting Timer (%@) for %f seconds", &v12, 0x16u);
  }

  v6 = [(ANTimer *)self timer];
  [(ANTimer *)self timeoutValue];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  [(ANTimer *)self timeoutValue];
  dispatch_source_set_timer(v6, v8, (v9 * 1000000000.0), 0);

  v10 = [(ANTimer *)self timer];
  dispatch_resume(v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(ANTimer *)self timer];

  if (v3)
  {
    v4 = [(ANTimer *)self timer];
    dispatch_suspend(v4);

    v5 = [(ANTimer *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ANTimer *)self timer];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_2237C8000, v5, OS_LOG_TYPE_DEFAULT, "Restarting Timer %@", &v8, 0xCu);
    }

    [(ANTimer *)self _startTimer];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(ANTimer *)self timer];

  if (v3)
  {
    v4 = [(ANTimer *)self log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(ANTimer *)self timer];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_2237C8000, v4, OS_LOG_TYPE_DEFAULT, "Canceling and removing Timer %@", &v8, 0xCu);
    }

    v6 = [(ANTimer *)self timer];
    dispatch_source_cancel(v6);

    [(ANTimer *)self setTimer:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end
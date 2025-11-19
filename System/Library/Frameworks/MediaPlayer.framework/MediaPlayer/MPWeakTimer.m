@interface MPWeakTimer
+ (MPWeakTimer)timerWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (MPWeakTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MPWeakTimer

- (void)invalidate
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (void)dealloc
{
  [(MPWeakTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = MPWeakTimer;
  [(MPWeakTimer *)&v3 dealloc];
}

- (MPWeakTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v9 = a5;
  v10 = a6;
  v17.receiver = self;
  v17.super_class = MPWeakTimer;
  v11 = [(MPWeakTimer *)&v17 init];
  if (v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = a3 * 1000000000.0;
    v15 = dispatch_time(0, v14);
    dispatch_source_set_timer(*(v11 + 1), v15, v14, 0x989680uLL);
    dispatch_source_set_event_handler(*(v11 + 1), v10);
    dispatch_resume(*(v11 + 1));
  }

  return v11;
}

+ (MPWeakTimer)timerWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [[a1 alloc] initWithInterval:v7 repeats:v11 queue:v10 block:a3];

  return v12;
}

@end
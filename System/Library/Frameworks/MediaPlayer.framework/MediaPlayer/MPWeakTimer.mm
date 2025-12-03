@interface MPWeakTimer
+ (MPWeakTimer)timerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block;
- (MPWeakTimer)initWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block;
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

- (MPWeakTimer)initWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = MPWeakTimer;
  v11 = [(MPWeakTimer *)&v17 init];
  if (v11)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    v14 = interval * 1000000000.0;
    v15 = dispatch_time(0, v14);
    dispatch_source_set_timer(*(v11 + 1), v15, v14, 0x989680uLL);
    dispatch_source_set_event_handler(*(v11 + 1), blockCopy);
    dispatch_resume(*(v11 + 1));
  }

  return v11;
}

+ (MPWeakTimer)timerWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block
{
  repeatsCopy = repeats;
  blockCopy = block;
  queueCopy = queue;
  v12 = [[self alloc] initWithInterval:repeatsCopy repeats:queueCopy queue:blockCopy block:interval];

  return v12;
}

@end
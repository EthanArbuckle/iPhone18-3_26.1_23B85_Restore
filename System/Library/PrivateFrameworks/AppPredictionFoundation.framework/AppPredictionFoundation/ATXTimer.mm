@interface ATXTimer
+ (id)fireAtDate:(id)date block:(id)block;
- (ATXTimer)initWithDate:(id)date block:(id)block;
- (void)dealloc;
@end

@implementation ATXTimer

- (ATXTimer)initWithDate:(id)date block:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = ATXTimer;
  v8 = [(ATXTimer *)&v17 init];
  if (v8)
  {
    [dateCopy timeIntervalSince1970];
    v16.tv_sec = v9;
    v16.tv_nsec = 0;
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, MEMORY[0x277D85CD0]);
    v11 = *(v8 + 1);
    *(v8 + 1) = v10;

    v12 = *(v8 + 1);
    v13 = dispatch_walltime(&v16, 0);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*(v8 + 1), blockCopy);
    dispatch_resume(*(v8 + 1));
    v14 = v8;
  }

  return v8;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->_source;
    self->_source = 0;
  }

  v5.receiver = self;
  v5.super_class = ATXTimer;
  [(ATXTimer *)&v5 dealloc];
}

+ (id)fireAtDate:(id)date block:(id)block
{
  blockCopy = block;
  dateCopy = date;
  v8 = [[self alloc] initWithDate:dateCopy block:blockCopy];

  return v8;
}

@end
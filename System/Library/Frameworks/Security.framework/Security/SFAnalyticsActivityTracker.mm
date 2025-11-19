@interface SFAnalyticsActivityTracker
- (SFAnalyticsActivityTracker)initWithName:(id)a3 clientClass:(Class)a4;
- (void)dealloc;
- (void)performAction:(id)a3;
- (void)start;
- (void)stop;
- (void)stopWithEvent:(id)a3 result:(id)a4;
@end

@implementation SFAnalyticsActivityTracker

- (void)dealloc
{
  if (self->_start)
  {
    [(SFAnalyticsActivityTracker *)self stop];
  }

  if (!self->_canceled && self->_measurement)
  {
    v3 = [(objc_class *)self->_clientClass logger];
    [v3 logMetric:self->_measurement withName:self->_name];
  }

  v4.receiver = self;
  v4.super_class = SFAnalyticsActivityTracker;
  [(SFAnalyticsActivityTracker *)&v4 dealloc];
}

- (void)stopWithEvent:(id)a3 result:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SFAnalyticsActivityTracker *)self stop];
  v8 = [(objc_class *)self->_clientClass logger];
  [v8 logResultForEvent:v7 hardFailure:0 result:v6];
}

- (void)stop
{
  v4 = mach_absolute_time();
  if (!self->_canceled)
  {
    v5 = v4;
    if (!self->_start)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SFAnalyticsActivityTracker.m" lineNumber:89 description:@"SFAnalyticsActivityTracker user called stop w/o calling start"];
    }

    if (!dword_1EA91CB5C)
    {
      mach_timebase_info(&stop_sTimebaseInfo);
    }

    v6 = MEMORY[0x1E696AD98];
    [(NSNumber *)self->_measurement doubleValue];
    v8 = [v6 numberWithDouble:v7 + ((stop_sTimebaseInfo / dword_1EA91CB5C) * (v5 - self->_start))];
    measurement = self->_measurement;
    self->_measurement = v8;
  }

  self->_start = 0;
}

- (void)start
{
  if (!self->_canceled)
  {
    if (self->_start)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"SFAnalyticsActivityTracker.m" lineNumber:77 description:@"SFAnalyticsActivityTracker user called start twice"];
    }

    self->_start = mach_absolute_time();
  }
}

- (void)performAction:(id)a3
{
  v4 = a3;
  [(SFAnalyticsActivityTracker *)self start];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFAnalyticsActivityTracker_performAction___block_invoke;
  block[3] = &unk_1E70D4A38;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
  [(SFAnalyticsActivityTracker *)self stop];
}

- (SFAnalyticsActivityTracker)initWithName:(id)a3 clientClass:(Class)a4
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v16.receiver = self;
    v16.super_class = SFAnalyticsActivityTracker;
    v8 = [(SFAnalyticsActivityTracker *)&v16 init];
    if (v8)
    {
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create("SFAnalyticsActivityTracker queue", v9);
      queue = v8->_queue;
      v8->_queue = v10;

      objc_storeStrong(&v8->_name, a3);
      v8->_clientClass = a4;
      measurement = v8->_measurement;
      v8->_measurement = 0;

      v8->_canceled = 0;
      v8->_start = 0;
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "Cannot instantiate SFActivityTracker without name and client class", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

@end
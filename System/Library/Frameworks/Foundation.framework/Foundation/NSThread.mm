@interface NSThread
+ (BOOL)isDying;
+ (BOOL)setThreadPriority:(double)p;
+ (NSArray)callStackReturnAddresses;
+ (NSArray)callStackSymbols;
+ (NSThread)currentThread;
+ (NSThread)mainThread;
+ (double)threadPriority;
+ (void)detachNewThreadSelector:(SEL)selector toTarget:(id)target withObject:(id)argument;
+ (void)detachNewThreadWithBlock:(void *)block;
+ (void)sleepForTimeInterval:(NSTimeInterval)ti;
+ (void)sleepUntilDate:(NSDate *)date;
- (BOOL)_setThreadPriority:(double)priority;
- (BOOL)startAndReturnError:(id *)error;
- (NSQualityOfService)qualityOfService;
- (NSString)name;
- (NSThread)init;
- (NSThread)initWithBlock:(void *)block;
- (NSThread)initWithTarget:(id)target selector:(SEL)selector object:(id)argument;
- (NSUInteger)stackSize;
- (double)threadPriority;
- (id)description;
- (id)runLoop;
- (pthread_override_s)_beginQoSOverride:(unsigned int)override relativePriority:(int)priority;
- (void)_endQoSOverride:(pthread_override_s *)override;
- (void)_nq:(id)_nq;
- (void)cancel;
- (void)dealloc;
- (void)main;
- (void)setName:(NSString *)name;
- (void)setQualityOfService:(NSQualityOfService)qualityOfService;
- (void)setStackSize:(NSUInteger)stackSize;
@end

@implementation NSThread

- (NSThread)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  *(v3 + 40) = objc_opt_new();
  *(v3 + 48) = 0;
  [(_NSThreadData *)v3 setTarget:?];
  [(_NSThreadData *)v3 setSelector:?];
  [(_NSThreadData *)v3 setArgument:?];
  *(v3 + 60) = 0;
  *(v3 + 56) = atomic_fetch_add(init_seqNum, 1u) + 1;
  *(v3 + 62) = 0;
  atomic_store(0, (v3 + 63));
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v3 + 152) = _Q0;
  pthread_attr_init((v3 + 80));
  pthread_attr_setscope((v3 + 80), 1);
  pthread_attr_setdetachstate((v3 + 80), 2);
  *(v3 + 144) = 0;
  self->_private = v3;
  v11[0] = 0;
  if (pthread_attr_getschedparam((v3 + 80), v11))
  {
    v9 = *(v3 + 160);
  }

  else
  {
    v9 = v11[0].sched_priority / 62.0;
    *(v3 + 160) = v9;
  }

  *(v3 + 152) = v9;
  return self;
}

+ (NSThread)currentThread
{
  if ((_NSIsMultiThreaded & 1) == 0 && pthread_main_np() != 1)
  {
    _NSIsMultiThreaded = 1;
    [+[NSNotificationCenter _defaultCenterWithoutCreating](NSNotificationCenter "_defaultCenterWithoutCreating")];
  }

  return _NSThreadGet0(1);
}

+ (NSThread)mainThread
{
  if ((_NSIsMultiThreaded & 1) == 0 && pthread_main_np() != 1)
  {
    _NSIsMultiThreaded = 1;
    [+[NSNotificationCenter _defaultCenterWithoutCreating](NSNotificationCenter "_defaultCenterWithoutCreating")];
  }

  return _NSThreadGet0(0);
}

- (NSString)name
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  result = *(v3 + 6);
  if (!result)
  {
    if (pthread_getname_np(*(v3 + 18), v5, 0x12CuLL))
    {
      return *(self->_private + 6);
    }

    else
    {
      return [NSString stringWithUTF8String:v5];
    }
  }

  return result;
}

- (void)main
{
  v3 = self->_private;
  if (v3 && v3[2] && v3[1])
  {
    v4 = v3 + 4;
    v5 = v3[3];
    v6 = atomic_load(v4);
    if (v5 != v6)
    {
      _NSThreadPoisoned();
    }

    v7 = self->_private;
    if (v7)
    {
      v8 = v7[1];
      if (v7[2])
      {
        v9 = v7[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v7[3];
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v10 = 0;
    }

    [v8 v9];
  }
}

+ (NSArray)callStackSymbols
{
  v2 = malloc_type_malloc(0x800uLL, 0x80040B8603338uLL);
  if (v2)
  {
    thread_stack_async_pcs();
  }

  return [_NSCallStackArray arrayWithFrames:v2 count:0 symbols:1];
}

- (NSQualityOfService)qualityOfService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  v4 = *(v3 + 61);
  if (!pthread_equal(v3[18], 0))
  {
    *__qos_class = 0;
    pthread_get_qos_class_np(*(self->_private + 18), &__qos_class[1], __qos_class);
    v4 = __qos_class[1];
  }

  if (v4 == (NSQualityOfServiceUtility|0x4) || v4 == 0)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

- (double)threadPriority
{
  v9 = *MEMORY[0x1E69E9840];
  if (!pthread_equal(*(self->_private + 18), 0))
  {
    policy_infoCnt = 1;
    policy_info = 0;
    get_default = 0;
    v3 = pthread_mach_thread_np(*(self->_private + 18));
    if (!thread_policy_get(v3, 3u, &policy_info, &policy_infoCnt, &get_default))
    {
      v4 = policy_info;
      if (policy_info >= 31)
      {
        v4 = 31;
      }

      if (v4 <= -31)
      {
        v4 = -31;
      }

      *(self->_private + 19) = (v4 + 31) / 62.0;
    }
  }

  return *(self->_private + 19);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (v3)
  {

    *(self->_private + 6) = 0;
  }

  v4.receiver = self;
  v4.super_class = NSThread;
  [(NSThread *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = self->_private;
  v5 = v4[14];
  v6 = *(v4 + 6);
  if (!v6)
  {
    v7 = pthread_main_np();
    v6 = @"main";
    if (v7 != 1)
    {
      v6 = 0;
    }
  }

  return [NSString stringWithFormat:@"<%@: %p>{number = %d, name = %@}", v3, self, v5, v6];
}

+ (NSArray)callStackReturnAddresses
{
  v2 = malloc_type_malloc(0x800uLL, 0x80040B8603338uLL);
  if (v2)
  {
    thread_stack_async_pcs();
  }

  return [_NSCallStackArray arrayWithFrames:v2 count:0 symbols:0];
}

+ (double)threadPriority
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = qos_class_self();
  if (v2 != QOS_CLASS_DEFAULT && v2)
  {
    *__qos_class = 0;
    v5 = pthread_self();
    qos_class_np = pthread_get_qos_class_np(v5, &__qos_class[1], __qos_class);
    result = -1.0;
    if (!qos_class_np)
    {
      return (__qos_class[0] + 15) / 30.0;
    }
  }

  else
  {
    v3 = +[NSThread currentThread];

    [(NSThread *)v3 threadPriority];
  }

  return result;
}

+ (BOOL)setThreadPriority:(double)p
{
  v4 = qos_class_self();
  if (v4 != QOS_CLASS_DEFAULT && v4)
  {
    v7 = 0.0;
    if (p >= 0.0)
    {
      v7 = p;
    }

    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    v8 = vcvtmd_s64_f64(v7 * -2.0 * -15.0);
    if (v8 >= 15)
    {
      v8 = 15;
    }

    v9 = (v8 & ~(v8 >> 31)) - 15;
    v10 = qos_class_self();
    return pthread_set_qos_class_self_np(v10, v9) == 0;
  }

  else
  {
    v5 = +[NSThread currentThread];

    return [(NSThread *)v5 _setThreadPriority:p];
  }
}

+ (void)sleepUntilDate:(NSDate *)date
{
  v14 = *MEMORY[0x1E69E9840];
  CFGetSystemUptime();
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  [(NSDate *)date timeIntervalSinceReferenceDate];
  v8 = v7 - Current;
  if (v8 > 0.0)
  {
    v9 = v5 + v8;
    do
    {
      __rqtp = xmmword_181406480;
      if (v8 < 9.22337204e18)
      {
        __y = 0.0;
        v10 = modf(v8, &__y);
        __rqtp.tv_sec = __y;
        __rqtp.tv_nsec = (v10 * 1000000000.0);
      }

      nanosleep(&__rqtp, 0);
      CFGetSystemUptime();
      v8 = v9 - v11;
    }

    while (v8 > 0.0);
  }
}

+ (void)sleepForTimeInterval:(NSTimeInterval)ti
{
  v10 = *MEMORY[0x1E69E9840];
  CFGetSystemUptime();
  if (ti > 0.0)
  {
    v5 = v4 + ti;
    do
    {
      __rqtp = xmmword_181406480;
      if (ti < 9.22337204e18)
      {
        __y = 0.0;
        v6 = modf(ti, &__y);
        __rqtp.tv_sec = __y;
        __rqtp.tv_nsec = (v6 * 1000000000.0);
      }

      nanosleep(&__rqtp, 0);
      CFGetSystemUptime();
      ti = v5 - v7;
    }

    while (v5 - v7 > 0.0);
  }
}

- (id)runLoop
{
  if (*(self->_private + 60) > 1u)
  {
    return 0;
  }

  _CFAutoreleasePoolPush();
  if (threadRunLoop(*(self->_private + 18)))
  {
    v2 = _CFRunLoopGet2();
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop();
  return v2;
}

+ (BOOL)isDying
{
  v2 = +[NSThread currentThread];

  return [(NSThread *)v2 isDying];
}

+ (void)detachNewThreadSelector:(SEL)selector toTarget:(id)target withObject:(id)argument
{
  v5 = [objc_allocWithZone(NSThread) initWithTarget:target selector:selector object:argument];

  [v5 start];
}

+ (void)detachNewThreadWithBlock:(void *)block
{
  v8 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: block targets for threads cannot be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v5);
  }

  v6 = 0;
  memset(&v7, 0, sizeof(v7));
  pthread_attr_init(&v7);
  pthread_attr_setscope(&v7, 1);
  pthread_attr_setdetachstate(&v7, 2);
  v4 = _Block_copy(block);
  pthread_create(&v6, &v7, __NSThread__block_start__, v4);
}

- (NSThread)initWithBlock:(void *)block
{
  if (!block)
  {
    v7 = [NSString stringWithFormat:@"%@: block targets for threads cannot be nil", _NSMethodExceptionProem(self, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  v4 = _Block_copy(block);
  v5 = [(NSThread *)self initWithTarget:v4 selector:sel_invoke object:0];
  _Block_release(v4);
  return v5;
}

- (NSThread)initWithTarget:(id)target selector:(SEL)selector object:(id)argument
{
  if (target && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v13 = [NSString stringWithFormat:@"%@: target does not implement selector (%@)", v12, _NSMethodExceptionProem(target, selector)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v10 = [(NSThread *)self init];
  [(_NSThreadData *)v10->_private setTarget:?];
  [(_NSThreadData *)v10->_private setSelector:?];
  [(_NSThreadData *)v10->_private setArgument:?];
  return v10;
}

- (void)setName:(NSString *)name
{
  v3 = *(self->_private + 6);
  if (v3 != name)
  {

    *(self->_private + 6) = [(NSString *)name copy];
    if (+[NSThread currentThread]== self)
    {
      v6 = *(self->_private + 6);
      if (v6)
      {
        uTF8String = [v6 UTF8String];
      }

      else
      {
        uTF8String = "";
      }

      pthread_setname_np(uTF8String);
    }
  }
}

- (void)setStackSize:(NSUInteger)stackSize
{
  v3 = stackSize;
  if (stackSize >> 14)
  {
    if (stackSize >= 0x40000000)
    {
      v3 = 0x40000000;
    }

    if (pthread_attr_setstacksize((self->_private + 80), v3) && dyld_program_sdk_at_least())
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      0x4000 = [NSString stringWithFormat:@"Can't set stack size to %lu (it must be a multiple of the system page size and greater than %d)", v3, 0x4000];
LABEL_9:
      objc_exception_throw([v4 exceptionWithName:v5 reason:0x4000 userInfo:0]);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    0x4000 = [NSString stringWithFormat:@"Can't set stack size to a value lower than %d (requested %lu)", 0x4000, v3];
    goto LABEL_9;
  }
}

- (NSUInteger)stackSize
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  pthread_attr_getstacksize((self->_private + 80), v3);
  return v3[0];
}

- (void)setQualityOfService:(NSQualityOfService)qualityOfService
{
  if (pthread_equal(*(self->_private + 18), 0))
  {
    if ((qualityOfService + 1) > 0x22 || ((1 << (qualityOfService + 1)) & 0x404040401) == 0)
    {
      LOBYTE(qualityOfService) = -1;
    }

    *(self->_private + 19) = *(self->_private + 20);
    *(self->_private + 61) = qualityOfService;
  }
}

- (pthread_override_s)_beginQoSOverride:(unsigned int)override relativePriority:(int)priority
{
  v7 = *(self->_private + 18);
  if (v7 == pthread_main_thread_np())
  {
    return 0;
  }

  v8 = *(self->_private + 18);

  return pthread_override_qos_class_start_np(v8, override, priority);
}

- (void)_endQoSOverride:(pthread_override_s *)override
{
  if (override)
  {
    pthread_override_qos_class_end_np(override);
  }
}

- (BOOL)_setThreadPriority:(double)priority
{
  v11 = *MEMORY[0x1E69E9840];
  if (priority < 0.0)
  {
    priority = 0.0;
  }

  if (priority <= 1.0)
  {
    priorityCopy = priority;
  }

  else
  {
    priorityCopy = 1.0;
  }

  *(self->_private + 19) = priorityCopy;
  if (pthread_equal(*(self->_private + 18), 0))
  {
    *(self->_private + 61) = 0;
  }

  if (pthread_equal(*(self->_private + 18), 0))
  {
    pthread_attr_setschedpolicy((self->_private + 80), 1);
    *v10.__opaque = 0;
    v10.sched_priority = (priorityCopy * 62.0 + 0.5);
    v5 = pthread_attr_setschedparam((self->_private + 80), &v10);
  }

  else
  {
    v10.sched_priority = 1;
    v6 = pthread_mach_thread_np(*(self->_private + 18));
    thread_policy_set(v6, 1u, &v10, 1u);
    policy_info = (priorityCopy * 62.0 + 0.5) - 31;
    v7 = pthread_mach_thread_np(*(self->_private + 18));
    v5 = thread_policy_set(v7, 3u, &policy_info, 1u);
  }

  return v5 == 0;
}

- (void)cancel
{
  if (+[NSThread mainThread]!= self)
  {
    *(self->_private + 62) = -86;
  }
}

- (BOOL)startAndReturnError:(id *)error
{
  v5 = 0;
  v18 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(self->_private + 63, &v5, 0xDu);
  if (v5)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to start the thread again", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  v6 = self->_private;
  if (v6[62])
  {
    atomic_store(0xFu, v6 + 63);
  }

  else
  {
    if ((_NSIsMultiThreaded & 1) == 0)
    {
      _NSIsMultiThreaded = 1;
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSWillBecomeMultiThreadedNotification" userInfo:0, 0];
      v6 = self->_private;
    }

    v9 = v6[61];
    if (v6[61])
    {
      if (v9 == 255)
      {
        LOBYTE(v9) = 21;
      }

      pthread_attr_set_qos_class_np((v6 + 80), v9, 0);
      v6 = self->_private;
    }

    v10 = pthread_create(v6 + 18, (v6 + 80), __NSThread__start__, self);
    if (v10)
    {
      v11 = v10;
      if (error)
      {
        *error = [NSError errorWithDomain:@"NSPOSIXErrorDomain" code:v10 userInfo:0];
      }

      else
      {
        v12 = _NSOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = _NSMethodExceptionProem(self, a2);
          v16 = 1024;
          v17 = v11;
          _os_log_error_impl(&dword_18075C000, v12, OS_LOG_TYPE_ERROR, "%@: Thread creation failed with error %d", buf, 0x12u);
        }
      }
    }
  }

  return 1;
}

- (void)_nq:(id)_nq
{
  v19 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v5 = *(self->_private + 8);
  if (!v5)
  {
    *(self->_private + 8) = objc_opt_new();
    v5 = *(self->_private + 8);
  }

  [v5 addObject:_nq];
  v6 = threadRunLoop(*(self->_private + 18));
  if (v6)
  {
    if (!*(self->_private + 9))
    {
      *(self->_private + 9) = objc_opt_new();
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (_nq)
    {
      _nq = *(_nq + 5);
    }

    v7 = [_nq countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = *v16;
      v9 = *MEMORY[0x1E695E4A8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(_nq);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [*(self->_private + 9) objectForKey:v11];
          if (!v12)
          {
            memset(&v13, 0, 72);
            v13.perform = __NSThreadPerformPerform;
            v13.info = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
            v12 = CFRunLoopSourceCreate(v9, 0, &v13);
            *v13.info = v12;
            CFRunLoopAddSource(v6, v12, v11);
            [*(self->_private + 9) setObject:v12 forKey:v11];
            CFRelease(v12);
          }

          CFRunLoopSourceSignal(v12);
        }

        v7 = [_nq countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }

    CFRunLoopWakeUp(v6);
  }

  objc_sync_exit(self);
}

@end
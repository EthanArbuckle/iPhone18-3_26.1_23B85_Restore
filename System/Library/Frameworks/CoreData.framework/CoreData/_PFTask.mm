@interface _PFTask
+ (uint64_t)getNumActiveProcessors;
+ (uint64_t)getPhysicalMemory;
- (_PFTask)initWithFunction:(void *)function withArgument:(void *)argument andPriority:(int)priority;
- (void)dealloc;
- (void)release;
@end

@implementation _PFTask

+ (uint64_t)getNumActiveProcessors
{
  objc_opt_self();
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.activecpu", &v2, &v1, 0, 0);
  return v2;
}

+ (uint64_t)getPhysicalMemory
{
  objc_opt_self();
  v1 = 8;
  v2 = 0;
  if (sysctlbyname("hw.memsize", &v2, &v1, 0, 0))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    atomic_fetch_add_explicit(&self->_cd_rc, 0x20000000u, memory_order_relaxed);
    [(_PFTask *)self dealloc];
  }
}

- (void)dealloc
{
  pthread_cond_destroy(&self->condition);
  pthread_mutex_destroy(&self->lock);
  arguments = self->arguments;
  if (arguments)
  {
    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
      arguments = self->arguments;
    }

    malloc_zone_free(v4, arguments);
    self->arguments = 0;
  }

  v5.receiver = self;
  v5.super_class = _PFTask;
  [(_PFTask *)&v5 dealloc];
}

- (_PFTask)initWithFunction:(void *)function withArgument:(void *)argument andPriority:(int)priority
{
  selfCopy = self;
  pthread_mutex_init(&self->lock, 0);
  pthread_cond_init(&selfCopy->condition, 0);
  selfCopy->isFinishedFlag = 0;
  selfCopy->_task = function;
  selfCopy->arguments = argument;
  CFRetain(selfCopy);
  __dmb(0xBu);
  global_queue = dispatch_get_global_queue(priority, 2uLL);
  if (global_queue)
  {
    dispatch_async_f(global_queue, selfCopy, minion_duties2);
  }

  else
  {
    CFRelease(selfCopy);

    return 0;
  }

  return selfCopy;
}

@end
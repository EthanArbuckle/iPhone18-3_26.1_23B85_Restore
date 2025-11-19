@interface _PFMutex
+ (void)initialize;
- (_PFMutex)init;
- (void)dealloc;
@end

@implementation _PFMutex

- (void)dealloc
{
  if (pthread_mutex_destroy(&self->_lock) == 16)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _PFMutex deallocated while in use\n", buf, 2u);
    }

    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v4, OS_LOG_TYPE_FAULT, "CoreData: _PFMutex deallocated while in use", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = _PFMutex;
  [(_PFMutex *)&v5 dealloc];
}

+ (void)initialize
{
  objc_opt_self();

  objc_opt_class();
}

- (_PFMutex)init
{
  v6.receiver = self;
  v6.super_class = _PFMutex;
  v2 = [(_PFMutex *)&v6 init];
  v3 = v2;
  if (v2 && pthread_mutex_init(&v2->_lock, 0))
  {
    v5.receiver = v3;
    v5.super_class = _PFMutex;
    [(_PFMutex *)&v5 dealloc];
    return 0;
  }

  return v3;
}

@end
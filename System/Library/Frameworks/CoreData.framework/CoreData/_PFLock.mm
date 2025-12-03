@interface _PFLock
+ (void)initialize;
- (BOOL)tryLock;
- (_PFLock)init;
- (void)dealloc;
- (void)lock;
- (void)unlock;
@end

@implementation _PFLock

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {
    pthread_mutexattr_init(&__PFLockNMAttr);

    pthread_mutexattr_settype(&__PFLockNMAttr, 2);
  }
}

- (_PFLock)init
{
  v6.receiver = self;
  v6.super_class = _PFLock;
  v2 = [(_PFLock *)&v6 init];
  v3 = v2;
  if (v2)
  {
    if (pthread_mutex_init(&v2->_lock, &__PFLockNMAttr))
    {
      v5.receiver = v3;
      v5.super_class = _PFLock;
      [(_PFLock *)&v5 dealloc];
      return 0;
    }

    else
    {
      v3->_owner = 0;
      v3->_count = 0;
    }
  }

  return v3;
}

- (void)lock
{
  pthread_mutex_lock(&self->_lock);
  v3 = pthread_self();
  v4 = self->_count + 1;
  self->_owner = v3;
  self->_count = v4;
}

- (void)unlock
{
  v2 = self->_count - 1;
  self->_count = v2;
  if (!v2)
  {
    self->_owner = 0;
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)dealloc
{
  if (pthread_mutex_destroy(&self->_lock) == 16 || self->_owner)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _PFLock deallocated while in use\n", buf, 2u);
    }

    v4 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v4, OS_LOG_TYPE_FAULT, "CoreData: _PFLock deallocated while in use", buf, 2u);
    }
  }

  v5.receiver = self;
  v5.super_class = _PFLock;
  [(_PFLock *)&v5 dealloc];
}

- (BOOL)tryLock
{
  v3 = pthread_mutex_trylock(&self->_lock);
  if (!v3)
  {
    v4 = pthread_self();
    v5 = self->_count + 1;
    self->_owner = v4;
    self->_count = v5;
  }

  return v3 == 0;
}

@end
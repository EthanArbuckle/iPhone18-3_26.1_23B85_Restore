@interface NSRecursiveLock
- (BOOL)isLocking;
- (BOOL)lockBeforeDate:(NSDate *)limit;
- (BOOL)tryLock;
- (NSRecursiveLock)init;
- (id)description;
- (void)dealloc;
- (void)lock;
- (void)setName:(NSString *)name;
- (void)unlock;
@end

@implementation NSRecursiveLock

- (void)lock
{
  pthread_mutex_lock(&self->_priv.m);
  v3 = pthread_self();
  v4 = self->_priv.cnt + 1;
  self->_priv.t = v3;
  self->_priv.cnt = v4;
}

- (void)unlock
{
  v3 = self->_priv.cnt - 1;
  self->_priv.cnt = v3;
  if (!v3)
  {
    self->_priv.t = 0;
  }

  pthread_mutex_unlock(&self->_priv.m);
  cd = self->_priv.cd;
  if (cd)
  {
    pthread_mutex_lock(cd);
    pthread_cond_broadcast((cd + 64));

    pthread_mutex_unlock(cd);
  }
}

- (NSRecursiveLock)init
{
  v5 = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_107 != -1)
  {
    dispatch_once(&_MergedGlobals_107, &__block_literal_global_24);
  }

  if (pthread_mutex_init(&self->_priv.m, &stru_1ED43F7A0))
  {
    v4.receiver = self;
    v4.super_class = NSRecursiveLock;
    [(NSRecursiveLock *)&v4 dealloc];
    return 0;
  }

  else
  {
    self->_priv.n = 0;
    self->_priv.t = 0;
    self->_priv.cnt = 0;
  }

  return self;
}

uint64_t __23__NSRecursiveLock_init__block_invoke()
{
  pthread_mutexattr_init(&stru_1ED43F7A0);

  return pthread_mutexattr_settype(&stru_1ED43F7A0, 2);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_priv.m);
  cd = self->_priv.cd;
  if (cd)
  {
    pthread_cond_destroy((cd + 64));
    pthread_mutex_destroy(cd);
    free(cd);
  }

  v4.receiver = self;
  v4.super_class = NSRecursiveLock;
  [(NSRecursiveLock *)&v4 dealloc];
}

- (BOOL)tryLock
{
  v3 = pthread_mutex_trylock(&self->_priv.m);
  if (!v3)
  {
    v4 = pthread_self();
    v5 = self->_priv.cnt + 1;
    self->_priv.t = v4;
    self->_priv.cnt = v5;
  }

  return v3 == 0;
}

- (BOOL)lockBeforeDate:(NSDate *)limit
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSDate *)limit timeIntervalSinceReferenceDate];
  v5 = v4;
  cd = self->_priv.cd;
  if (!cd)
  {
    v7 = malloc_type_malloc(0x70uLL, 0x1000040AC4F46D1uLL);
    cd = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    if (!pthread_mutex_init(v7, 0))
    {
      if (!pthread_cond_init((cd + 64), 0))
      {
        goto LABEL_7;
      }

      pthread_mutex_destroy(cd);
    }

    free(cd);
    cd = 0;
LABEL_7:
    v8 = 0;
    atomic_compare_exchange_strong(&self->_priv.cd, &v8, cd);
    if (v8)
    {
      pthread_cond_destroy((cd + 64));
      pthread_mutex_destroy(cd);
      free(cd);
      cd = self->_priv.cd;
    }
  }

  pthread_mutex_lock(cd);
  if (pthread_mutex_trylock(&self->_priv.m) == 16)
  {
    while (1)
    {
      v9 = v5 - CFAbsoluteTimeGetCurrent();
      if (v9 < 0.0)
      {
        break;
      }

      v13.tv_sec = vcvtmd_s64_f64(v9);
      v13.tv_nsec = ((v9 - floor(v9)) * 1000000000.0);
      pthread_cond_timedwait_relative_np((cd + 64), cd, &v13);
      if (pthread_mutex_trylock(&self->_priv.m) != 16)
      {
        goto LABEL_12;
      }
    }

    pthread_mutex_unlock(cd);
    return 0;
  }

  else
  {
LABEL_12:
    pthread_mutex_unlock(cd);
    v10 = pthread_self();
    v11 = self->_priv.cnt + 1;
    self->_priv.t = v10;
    self->_priv.cnt = v11;
    return 1;
  }
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSRecursiveLock;
  v3 = [(NSRecursiveLock *)&v8 description];
  v4 = "'";
  n = self->_priv.n;
  if (!n)
  {
    v4 = "";
  }

  v6 = @"nil";
  if (n)
  {
    v6 = self->_priv.n;
  }

  return [NSString stringWithFormat:@"%@{recursion count = %ld, name = %s%@%s}", v3, self->_priv.cnt, v4, v6, v4];
}

- (void)setName:(NSString *)name
{
  n = self->_priv.n;
  if (n != name)
  {

    self->_priv.n = [(NSString *)name copy];
  }
}

- (BOOL)isLocking
{
  if (pthread_equal(0, self->_priv.t))
  {
    return 0;
  }

  v4 = pthread_self();
  return pthread_equal(v4, self->_priv.t) != 0;
}

@end
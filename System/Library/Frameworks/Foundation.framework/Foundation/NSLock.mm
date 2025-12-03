@interface NSLock
- (BOOL)lockBeforeDate:(NSDate *)limit;
- (NSLock)init;
- (id)description;
- (void)dealloc;
- (void)setName:(NSString *)name;
- (void)unlock;
@end

@implementation NSLock

- (void)unlock
{
  pthread_mutex_unlock(&self->_priv.m);
  cd = self->_priv.cd;
  if (cd)
  {
    pthread_mutex_lock(cd);
    pthread_cond_broadcast((cd + 64));

    pthread_mutex_unlock(cd);
  }
}

- (NSLock)init
{
  selfCopy = self;
  v5 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_init(&self->_priv.m, 0))
  {
    v4.receiver = selfCopy;
    v4.super_class = NSLock;
    [(NSLock *)&v4 dealloc];
    return 0;
  }

  else
  {
    selfCopy->_priv.n = 0;
  }

  return selfCopy;
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
  v4.super_class = NSLock;
  [(NSLock *)&v4 dealloc];
}

- (BOOL)lockBeforeDate:(NSDate *)limit
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSDate *)limit timeIntervalSinceReferenceDate];
  v5 = v4;
  cd = self->_priv.cd;
  if (cd)
  {
    goto LABEL_9;
  }

  v7 = malloc_type_malloc(0x70uLL, 0x1000040AC4F46D1uLL);
  cd = v7;
  if (v7)
  {
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
  }

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

LABEL_9:
  pthread_mutex_lock(cd);
  if (pthread_mutex_trylock(&self->_priv.m) == 16)
  {
    do
    {
      v9 = v5 - CFAbsoluteTimeGetCurrent();
      v10 = v9 >= 0.0;
      if (v9 < 0.0)
      {
        break;
      }

      v12.tv_sec = vcvtmd_s64_f64(v9);
      v12.tv_nsec = ((v9 - floor(v9)) * 1000000000.0);
      pthread_cond_timedwait_relative_np((cd + 64), cd, &v12);
    }

    while (pthread_mutex_trylock(&self->_priv.m) == 16);
  }

  else
  {
    v10 = 1;
  }

  pthread_mutex_unlock(cd);
  return v10;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSLock;
  v3 = [(NSLock *)&v8 description];
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

  return [NSString stringWithFormat:@"%@{name = %s%@%s}", v3, v4, v6, v4];
}

- (void)setName:(NSString *)name
{
  n = self->_priv.n;
  if (n != name)
  {

    self->_priv.n = [(NSString *)name copy];
  }
}

@end
@interface NSCondition
- (BOOL)waitUntilDate:(NSDate *)limit;
- (NSCondition)init;
- (id)description;
- (void)dealloc;
- (void)setName:(NSString *)name;
@end

@implementation NSCondition

- (NSCondition)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSCondition;
  v2 = [(NSCondition *)&v5 init];
  if (pthread_mutex_init(&v2->m, 0))
  {
    v4.receiver = v2;
    v4.super_class = NSCondition;
    [(NSCondition *)&v4 dealloc];
    return 0;
  }

  else
  {
    pthread_cond_init(&v2->c, 0);
    v2->n = 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->m);
  pthread_cond_destroy(&self->c);

  v3.receiver = self;
  v3.super_class = NSCondition;
  [(NSCondition *)&v3 dealloc];
}

- (BOOL)waitUntilDate:(NSDate *)limit
{
  v8 = *MEMORY[0x1E69E9840];
  [(NSDate *)limit timeIntervalSinceReferenceDate];
  v5 = v4 - CFAbsoluteTimeGetCurrent();
  if (v5 < 0.0)
  {
    return 0;
  }

  v7.tv_sec = vcvtmd_s64_f64(v5);
  v7.tv_nsec = ((v5 - floor(v5)) * 1000000000.0);
  return pthread_cond_timedwait_relative_np(&self->c, &self->m, &v7) == 0;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSCondition;
  v3 = [(NSCondition *)&v8 description];
  v4 = "'";
  n = self->n;
  if (!n)
  {
    v4 = "";
  }

  v6 = @"nil";
  if (n)
  {
    v6 = self->n;
  }

  return [NSString stringWithFormat:@"%@{name = %s%@%s}", v3, v4, v6, v4];
}

- (void)setName:(NSString *)name
{
  n = self->n;
  if (n != name)
  {

    self->n = [(NSString *)name copy];
  }
}

@end
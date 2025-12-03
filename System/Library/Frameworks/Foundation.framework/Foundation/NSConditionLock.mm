@interface NSConditionLock
- (BOOL)lockBeforeDate:(NSDate *)limit;
- (BOOL)lockWhenCondition:(NSInteger)condition beforeDate:(NSDate *)limit;
- (BOOL)tryLock;
- (BOOL)tryLockWhenCondition:(NSInteger)condition;
- (NSConditionLock)initWithCondition:(NSInteger)condition;
- (id)description;
- (void)dealloc;
- (void)lock;
- (void)lockWhenCondition:(NSInteger)condition;
- (void)setName:(NSString *)name;
- (void)unlock;
- (void)unlockWithCondition:(NSInteger)condition;
@end

@implementation NSConditionLock

- (void)unlock
{
  [(NSCondition *)self->cond lock];
  self->t = 0;
  [(NSCondition *)self->cond broadcast];
  cond = self->cond;

  [(NSCondition *)cond unlock];
}

- (void)lock
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];

  [(NSConditionLock *)self lockBeforeDate:distantFuture];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConditionLock;
  [(NSConditionLock *)&v3 dealloc];
}

- (BOOL)tryLock
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];

  return [(NSConditionLock *)self lockBeforeDate:distantPast];
}

- (NSConditionLock)initWithCondition:(NSInteger)condition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSConditionLock;
  v4 = [(NSConditionLock *)&v6 init];
  v4->cond = [[NSCondition allocWithZone:?]];
  v4->t = 0;
  v4->v = condition;
  v4->n = 0;
  return v4;
}

- (BOOL)lockBeforeDate:(NSDate *)limit
{
  [(NSCondition *)self->cond lock];
  while (1)
  {
    v5 = pthread_equal(0, self->t);
    if (v5)
    {
      break;
    }

    if (![(NSCondition *)self->cond waitUntilDate:limit])
    {
      goto LABEL_6;
    }
  }

  self->t = pthread_self();
LABEL_6:
  [(NSCondition *)self->cond unlock];
  return v5 != 0;
}

- (void)lockWhenCondition:(NSInteger)condition
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];

  [(NSConditionLock *)self lockWhenCondition:condition beforeDate:distantFuture];
}

- (BOOL)lockWhenCondition:(NSInteger)condition beforeDate:(NSDate *)limit
{
  [(NSCondition *)self->cond lock];
  while (!pthread_equal(0, self->t) || self->v != condition)
  {
    if (![(NSCondition *)self->cond waitUntilDate:limit])
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  self->t = pthread_self();
  v7 = 1;
LABEL_7:
  [(NSCondition *)self->cond unlock];
  return v7;
}

- (BOOL)tryLockWhenCondition:(NSInteger)condition
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];

  return [(NSConditionLock *)self lockWhenCondition:condition beforeDate:distantPast];
}

- (void)unlockWithCondition:(NSInteger)condition
{
  [(NSCondition *)self->cond lock];
  self->t = 0;
  self->v = condition;
  [(NSCondition *)self->cond broadcast];
  cond = self->cond;

  [(NSCondition *)cond unlock];
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSConditionLock;
  v3 = [(NSConditionLock *)&v8 description];
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

  return [NSString stringWithFormat:@"%@{condition = %ld, name = %s%@%s}", v3, self->v, v4, v6, v4];
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
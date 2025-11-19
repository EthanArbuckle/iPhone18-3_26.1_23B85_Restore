@interface _NSFileAccessAsynchronousProcessAssertionScheduler
+ (id)sharedInstance;
- (_NSFileAccessAsynchronousProcessAssertionScheduler)init;
- (id)addAssertionWithName:(id)a3 forPID:(int)a4;
- (void)removeAssertionWithToken:(id)a3;
@end

@implementation _NSFileAccessAsynchronousProcessAssertionScheduler

+ (id)sharedInstance
{
  if (qword_1ED43FDD8 != -1)
  {
    dispatch_once(&qword_1ED43FDD8, &__block_literal_global_69);
  }

  return qword_1ED43FDE0;
}

- (_NSFileAccessAsynchronousProcessAssertionScheduler)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSFileAccessAsynchronousProcessAssertionScheduler;
  v2 = [(_NSFileAccessAsynchronousProcessAssertionScheduler *)&v4 init];
  if (v2)
  {
    v2->_assertionsPerPID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)addAssertionWithName:(id)a3 forPID:(int)a4
{
  v4 = *&a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_assertionsPerPID objectForKey:[NSNumber numberWithInt:v4]];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_assertionsPerPID setObject:v7 forKey:[NSNumber numberWithInt:v4]];
  }

  v8 = [v7 count];
  v9 = [[_NSFileAccessAsynchronousProcessAssertion alloc] initWithPID:v4 name:a3];
  [v7 addObject:v9];
  os_unfair_lock_unlock(&self->_lock);
  if (v8 <= 1)
  {
    [(_NSFileAccessAsynchronousProcessAssertion *)v9 beginAssertion];
  }

  return v9;
}

- (void)removeAssertionWithToken:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = -[NSMutableDictionary objectForKey:](self->_assertionsPerPID, "objectForKey:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 PID]));
  v6 = [v5 indexOfObjectIdenticalTo:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = v6;
    v8 = [v5 count];
    if (v7 <= 1 && v8 >= 3)
    {
      v10 = [v5 objectAtIndex:2];
    }

    else
    {
      v10 = 0;
    }

    [a3 invalidate];
    [v5 removeObjectAtIndex:v7];
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {

      [v10 beginAssertion];
    }
  }
}

@end
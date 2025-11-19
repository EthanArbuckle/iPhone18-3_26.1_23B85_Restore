@interface BLSHPresentationUpdates
- (BLSHPresentationUpdates)initWithStartDate:(id)a3 updates:(id)a4 nextUpdatesStart:(id)a5;
- (BOOL)isCompleted;
- (BOOL)isValidWithNowDate:(id)a3;
- (id)dequeueAllUpdates;
- (id)dequeueNextUpdate;
- (id)description;
- (id)invalidate;
- (id)peekNextUpdate;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation BLSHPresentationUpdates

- (BLSHPresentationUpdates)initWithStartDate:(id)a3 updates:(id)a4 nextUpdatesStart:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BLSHPresentationUpdates;
  v12 = [(BLSHPresentationUpdates *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_startDate, a3);
    v14 = [v10 mutableCopy];
    updates = v13->_updates;
    v13->_updates = v14;

    objc_storeStrong(&v13->_nextUpdatesStart, a5);
  }

  return v13;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHPresentationUpdates.m";
    v16 = 1024;
    v17 = 37;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)isCompleted
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_updates count]== 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_updates count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)dequeueNextUpdate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_updates firstObject];
    if (v3)
    {
      [(NSMutableArray *)self->_updates removeObjectAtIndex:0];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dequeueAllUpdates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_updates copy];
  [(NSMutableArray *)self->_updates removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isValidWithNowDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 bls_isOnOrAfter:self->_startDate andOnOrBefore:self->_nextUpdatesStart];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)peekNextUpdate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_updates count])
  {
    v3 = [(NSMutableArray *)self->_updates firstObject];
    v4 = [v3 presentationDate];
  }

  else
  {
    v4 = self->_nextUpdatesStart;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_updates count])
  {
    v3 = [(NSMutableArray *)self->_updates firstObject];
    v4 = [v3 presentationDate];
  }

  else
  {
    v4 = self->_nextUpdatesStart;
  }

  self->_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:v4 withName:@"start"];

  v5 = [(NSDate *)self->_nextUpdatesStart bls_shortLoggingString];
  [v3 appendString:v5 withName:@"nextStart"];

  v6 = [(NSMutableArray *)self->_updates bls_boundedDescription];
  [v3 appendString:v6 withName:@"updates"];

  v7 = [v3 appendBool:self->_invalidated withName:@"invalidated" ifEqualTo:1];
  v8 = [v3 build];

  return v8;
}

@end
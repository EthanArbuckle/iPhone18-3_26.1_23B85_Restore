@interface BLSHPresentationUpdates
- (BLSHPresentationUpdates)initWithStartDate:(id)date updates:(id)updates nextUpdatesStart:(id)start;
- (BOOL)isCompleted;
- (BOOL)isValidWithNowDate:(id)date;
- (id)dequeueAllUpdates;
- (id)dequeueNextUpdate;
- (id)description;
- (id)invalidate;
- (id)peekNextUpdate;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation BLSHPresentationUpdates

- (BLSHPresentationUpdates)initWithStartDate:(id)date updates:(id)updates nextUpdatesStart:(id)start
{
  dateCopy = date;
  updatesCopy = updates;
  startCopy = start;
  v17.receiver = self;
  v17.super_class = BLSHPresentationUpdates;
  v12 = [(BLSHPresentationUpdates *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_startDate, date);
    v14 = [updatesCopy mutableCopy];
    updates = v13->_updates;
    v13->_updates = v14;

    objc_storeStrong(&v13->_nextUpdatesStart, start);
  }

  return v13;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
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
    firstObject = 0;
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_updates firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_updates removeObjectAtIndex:0];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (id)dequeueAllUpdates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_updates copy];
  [(NSMutableArray *)self->_updates removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isValidWithNowDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v5 = 0;
  }

  else
  {
    v5 = [dateCopy bls_isOnOrAfter:self->_startDate andOnOrBefore:self->_nextUpdatesStart];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)peekNextUpdate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_updates count])
  {
    firstObject = [(NSMutableArray *)self->_updates firstObject];
    presentationDate = [firstObject presentationDate];
  }

  else
  {
    presentationDate = self->_nextUpdatesStart;
  }

  os_unfair_lock_unlock(&self->_lock);

  return presentationDate;
}

- (id)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableArray *)self->_updates count])
  {
    firstObject = [(NSMutableArray *)self->_updates firstObject];
    presentationDate = [firstObject presentationDate];
  }

  else
  {
    presentationDate = self->_nextUpdatesStart;
  }

  self->_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);

  return presentationDate;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"start"];

  bls_shortLoggingString2 = [(NSDate *)self->_nextUpdatesStart bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString2 withName:@"nextStart"];

  bls_boundedDescription = [(NSMutableArray *)self->_updates bls_boundedDescription];
  [v3 appendString:bls_boundedDescription withName:@"updates"];

  v7 = [v3 appendBool:self->_invalidated withName:@"invalidated" ifEqualTo:1];
  build = [v3 build];

  return build;
}

@end
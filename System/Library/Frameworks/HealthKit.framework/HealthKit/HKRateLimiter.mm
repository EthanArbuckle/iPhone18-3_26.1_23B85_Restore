@interface HKRateLimiter
- (BOOL)perform:(id)a3 cost:(unint64_t)a4;
- (HKRateLimiter)initWithLimit:(unint64_t)a3 timeInterval:(double)a4;
- (uint64_t)_lock_usedBudget;
@end

@implementation HKRateLimiter

- (HKRateLimiter)initWithLimit:(unint64_t)a3 timeInterval:(double)a4
{
  v11.receiver = self;
  v11.super_class = HKRateLimiter;
  v6 = [(HKRateLimiter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_limit = a3;
    v6->_timeInterval = a4;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    history = v7->_history;
    v7->_history = v8;
  }

  return v7;
}

- (BOOL)perform:(id)a3 cost:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(HKRateLimiter *)self _lock_usedBudget]+ a4;
  limit = self->_limit;
  if (v7 <= limit)
  {
    [(HKRateLimiter *)self perform:a4 cost:&self->_lock, v6];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v7 <= limit;
}

BOOL __33__HKRateLimiter__lock_usedBudget__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 datePerformed];
  v4 = [v3 compare:*(a1 + 32)] == -1;

  return v4;
}

- (uint64_t)_lock_usedBudget
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*(a1 + 32)];
    v3 = *(v1 + 16);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __33__HKRateLimiter__lock_usedBudget__block_invoke;
    v16[3] = &unk_1E737D0B0;
    v4 = v2;
    v17 = v4;
    [v3 hk_removeObjectsPassingTest:v16];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(v1 + 16);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v1 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v1 += [*(*(&v12 + 1) + 8 * i) cost];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v1 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v1;
}

- (uint64_t)perform:(os_unfair_lock_s *)a3 cost:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = [_HKRateLimiterOperationRecord alloc];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [(_HKRateLimiterOperationRecord *)v8 initWithDatePerformed:v9 cost:a2];
  [v7 addObject:v10];

  os_unfair_lock_unlock(a3);
  v11 = *(a4 + 16);

  return v11(a4);
}

@end
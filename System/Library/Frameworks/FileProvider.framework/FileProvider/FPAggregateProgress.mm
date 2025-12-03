@interface FPAggregateProgress
- (void)addChild:(id)child;
- (void)cancel;
- (void)startReportingProgress;
@end

@implementation FPAggregateProgress

- (void)addChild:(id)child
{
  childCopy = child;
  if ([(FPAggregateProgress *)self totalUnitCount]&& [(FPAggregateProgress *)self totalUnitCount])
  {
    [(FPAggregateProgress *)a2 addChild:?];
  }

  if ([(FPAggregateProgress *)self isCancelled])
  {
    [childCopy cancel];
  }

  else
  {
    childProgresses = self->_childProgresses;
    v6 = childCopy;
    if (!childProgresses)
    {
      v7 = objc_opt_new();
      v8 = self->_childProgresses;
      self->_childProgresses = v7;

      v6 = childCopy;
      childProgresses = self->_childProgresses;
    }

    [(NSMutableArray *)childProgresses addObject:v6];
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_childProgresses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = FPAggregateProgress;
  [(FPAggregateProgress *)&v9 cancel];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startReportingProgress
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(FPAggregateProgress *)self totalUnitCount]<= 0 && ([(FPAggregateProgress *)self isCancelled]& 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    childProgresses = self->_childProgresses;
    v4 = 0;
    v5 = [(NSMutableArray *)childProgresses countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = *v29;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(childProgresses);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          if (![v8 totalUnitCount])
          {
            v22 = 0;
            v23 = &v22;
            v24 = 0x3032000000;
            v25 = __Block_byref_object_copy__8;
            v26 = __Block_byref_object_dispose__8;
            v27 = 0;
            v13 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v8 path:"totalUnitCount"];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __45__FPAggregateProgress_startReportingProgress__block_invoke;
            v21[3] = &unk_1E793B820;
            v21[5] = self;
            v21[6] = &v22;
            v21[4] = v8;
            v14 = [v13 addObserverBlock:v21];
            v15 = v23[5];
            v23[5] = v14;

            _Block_object_dispose(&v22, 8);
            goto LABEL_20;
          }

          v4 += [v8 totalUnitCount];
        }

        v5 = [(NSMutableArray *)childProgresses countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [(FPAggregateProgress *)self setTotalUnitCount:v4];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = self->_childProgresses;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v32 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          -[FPAggregateProgress addChild:withPendingUnitCount:](self, "addChild:withPendingUnitCount:", *(*(&v17 + 1) + 8 * j), [*(*(&v17 + 1) + 8 * j) totalUnitCount]);
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v32 count:16];
      }

      while (v10);
    }

    childProgresses = self->_childProgresses;
    self->_childProgresses = 0;
LABEL_20:
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __45__FPAggregateProgress_startReportingProgress__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) totalUnitCount];
  if (result >= 1)
  {
    [*(*(*(a1 + 48) + 8) + 40) finishObserving];
    v3 = *(a1 + 40);

    return [v3 startReportingProgress];
  }

  return result;
}

- (void)addChild:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPAggregateProgress.m" lineNumber:20 description:@"addChild: method should only be invoked while progress is indeterminate"];
}

@end
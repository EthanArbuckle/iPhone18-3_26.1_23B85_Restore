@interface SHLTaskOutcome
+ (id)outcomeWithPendingZoneBatchChanges;
+ (id)outcomeWithPendingZoneBatchChangesProducedError:(id)a3;
- (NSArray)failedItemIdentifiers;
- (id)_initWithTasksToRetry:(id)a3 hasPendingZoneBatchChanges:(BOOL)a4 error:(id)a5;
@end

@implementation SHLTaskOutcome

+ (id)outcomeWithPendingZoneBatchChanges
{
  v2 = [[SHLTaskOutcome alloc] _initWithTasksToRetry:0 hasPendingZoneBatchChanges:1 error:0];

  return v2;
}

+ (id)outcomeWithPendingZoneBatchChangesProducedError:(id)a3
{
  v3 = a3;
  v4 = [[SHLTaskOutcome alloc] _initWithTasksToRetry:0 hasPendingZoneBatchChanges:1 error:v3];

  return v4;
}

- (id)_initWithTasksToRetry:(id)a3 hasPendingZoneBatchChanges:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = SHLTaskOutcome;
  v10 = [(SHLTaskOutcome *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    objc_storeStrong(&v10->_tasksToRetry, v12);
    objc_storeStrong(&v11->_error, a5);
    v11->_hasPendingZoneBatchChanges = a4;
  }

  return v11;
}

- (NSArray)failedItemIdentifiers
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SHLTaskOutcome *)self tasksToRetry];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 type])
        {
          v10 = [v9 allItemIdentifiers];
          [v3 addObjectsFromArray:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
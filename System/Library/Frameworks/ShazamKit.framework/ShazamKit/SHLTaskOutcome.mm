@interface SHLTaskOutcome
+ (id)outcomeWithPendingZoneBatchChanges;
+ (id)outcomeWithPendingZoneBatchChangesProducedError:(id)error;
- (NSArray)failedItemIdentifiers;
- (id)_initWithTasksToRetry:(id)retry hasPendingZoneBatchChanges:(BOOL)changes error:(id)error;
@end

@implementation SHLTaskOutcome

+ (id)outcomeWithPendingZoneBatchChanges
{
  v2 = [[SHLTaskOutcome alloc] _initWithTasksToRetry:0 hasPendingZoneBatchChanges:1 error:0];

  return v2;
}

+ (id)outcomeWithPendingZoneBatchChangesProducedError:(id)error
{
  errorCopy = error;
  v4 = [[SHLTaskOutcome alloc] _initWithTasksToRetry:0 hasPendingZoneBatchChanges:1 error:errorCopy];

  return v4;
}

- (id)_initWithTasksToRetry:(id)retry hasPendingZoneBatchChanges:(BOOL)changes error:(id)error
{
  retryCopy = retry;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = SHLTaskOutcome;
  v10 = [(SHLTaskOutcome *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (retryCopy)
    {
      v12 = retryCopy;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    objc_storeStrong(&v10->_tasksToRetry, v12);
    objc_storeStrong(&v11->_error, error);
    v11->_hasPendingZoneBatchChanges = changes;
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
  tasksToRetry = [(SHLTaskOutcome *)self tasksToRetry];
  v5 = [tasksToRetry countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(tasksToRetry);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 type])
        {
          allItemIdentifiers = [v9 allItemIdentifiers];
          [v3 addObjectsFromArray:allItemIdentifiers];
        }
      }

      v6 = [tasksToRetry countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
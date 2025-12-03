@interface SHLSyncSessionModifyTask
- (NSArray)allItemIdentifiers;
- (SHLSyncSession)session;
- (SHLSyncSessionModifyTask)initWithCoder:(id)coder;
- (SHLSyncSessionModifyTask)initWithTracksToModify:(id)modify groupsToModify:(id)toModify;
- (SHLSyncSessionModifyTaskDelegate)delegate;
- (id)_init;
- (id)subdivideTaskIntoBatchesOfSize:(int64_t)size;
- (int64_t)size;
- (void)encodeWithCoder:(id)coder;
- (void)updateProgress;
@end

@implementation SHLSyncSessionModifyTask

- (SHLSyncSessionModifyTask)initWithTracksToModify:(id)modify groupsToModify:(id)toModify
{
  modifyCopy = modify;
  toModifyCopy = toModify;
  v21.receiver = self;
  v21.super_class = SHLSyncSessionModifyTask;
  v9 = [(SHLSyncSessionModifyTask *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracksToModify, modify);
    objc_storeStrong(&v10->_groupsToModify, toModify);
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = uUIDString;

    v10->_retryCount = 0;
    insertions = [modifyCopy insertions];
    v15 = [insertions count];
    insertions2 = [toModifyCopy insertions];
    v17 = [insertions2 count];

    v18 = [NSProgress progressWithTotalUnitCount:&v15[v17]];
    progress = v10->_progress;
    v10->_progress = v18;
  }

  return v10;
}

- (id)_init
{
  v3 = [SHLLibraryBatch alloc];
  v4 = +[NSSet set];
  v5 = +[NSSet set];
  v6 = [(SHLLibraryBatch *)v3 initWithInsertions:v4 deletions:v5];

  v7 = [SHLLibraryBatch alloc];
  v8 = +[NSSet set];
  v9 = +[NSSet set];
  v10 = [(SHLLibraryBatch *)v7 initWithInsertions:v8 deletions:v9];

  v11 = [(SHLSyncSessionModifyTask *)self initWithTracksToModify:v6 groupsToModify:v10];
  return v11;
}

- (id)subdivideTaskIntoBatchesOfSize:(int64_t)size
{
  v5 = +[NSMutableArray array];
  groupsToModify = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v7 = [groupsToModify subdivideIntoBatchesOfSize:size];
  v8 = [v7 mutableCopy];

  [v8 sortUsingComparator:&stru_10007E2E8];
  tracksToModify = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v10 = [tracksToModify subdivideIntoBatchesOfSize:size];
  v11 = [v10 mutableCopy];

  [v11 sortUsingComparator:&stru_10007E308];
LABEL_2:
  if ([v8 count] || objc_msgSend(v11, "count"))
  {
    _init = [[SHLSyncSessionModifyTask alloc] _init];
    syncStartCondition = [(SHLSyncSessionModifyTask *)self syncStartCondition];
    [_init setSyncStartCondition:syncStartCondition];

    v14 = 1;
    while (![v8 count])
    {
      if ([v11 count])
      {
        firstObject = [v11 firstObject];
        v19 = [_init size];
        v20 = &v19[[firstObject numberOfItems]];
        v14 = v20 <= size;
        if (v20 <= size)
        {
          [_init setTracksToModify:firstObject];
          v18 = v11;
LABEL_11:
          [v18 removeObjectAtIndex:0];
          v14 = 1;
        }

LABEL_12:

        v21 = 0;
        goto LABEL_13;
      }

      v21 = 1;
LABEL_13:
      v22 = [_init size];
      if ((v21 & 1) != 0 || v22 >= size || !v14)
      {
        [_init updateProgress];
        [v5 addObject:_init];

        goto LABEL_2;
      }
    }

    firstObject = [v8 firstObject];
    v16 = [_init size];
    v17 = &v16[[firstObject numberOfItems]];
    v14 = v17 <= size;
    if (v17 <= size)
    {
      [_init setGroupsToModify:firstObject];
      v18 = v8;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v23 = [v5 copy];

  return v23;
}

- (int64_t)size
{
  groupsToModify = [(SHLSyncSessionModifyTask *)self groupsToModify];
  numberOfItems = [groupsToModify numberOfItems];
  tracksToModify = [(SHLSyncSessionModifyTask *)self tracksToModify];
  numberOfItems2 = [tracksToModify numberOfItems];

  return numberOfItems + numberOfItems2;
}

- (NSArray)allItemIdentifiers
{
  groupsToModify = [(SHLSyncSessionModifyTask *)self groupsToModify];
  numberOfItems = [groupsToModify numberOfItems];
  tracksToModify = [(SHLSyncSessionModifyTask *)self tracksToModify];
  numberOfItems2 = [tracksToModify numberOfItems];

  v7 = [NSMutableArray arrayWithCapacity:&numberOfItems[numberOfItems2]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  groupsToModify2 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  insertions = [groupsToModify2 insertions];

  v10 = [insertions countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(insertions);
        }

        identifier = [*(*(&v35 + 1) + 8 * i) identifier];
        v15 = [identifier copy];
        [v7 addObject:v15];
      }

      v11 = [insertions countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  groupsToModify3 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  deletions = [groupsToModify3 deletions];
  allObjects = [deletions allObjects];
  [v7 addObjectsFromArray:allObjects];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  tracksToModify2 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  insertions2 = [tracksToModify2 insertions];

  v21 = [insertions2 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(insertions2);
        }

        identifier2 = [*(*(&v31 + 1) + 8 * j) identifier];
        v26 = [identifier2 copy];
        [v7 addObject:v26];
      }

      v22 = [insertions2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  tracksToModify3 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  deletions2 = [tracksToModify3 deletions];
  allObjects2 = [deletions2 allObjects];
  [v7 addObjectsFromArray:allObjects2];

  return v7;
}

- (SHLSyncSessionModifyTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SHLSyncSessionModifyTask;
  v5 = [(SHLSyncSessionModifyTask *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SHLSyncSessionModifyTaskTracksToModify"];
    tracksToModify = v5->_tracksToModify;
    v5->_tracksToModify = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SHLSyncSessionModifyTaskGroupsToModify"];
    groupsToModify = v5->_groupsToModify;
    v5->_groupsToModify = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionModifyTaskIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", [coderCopy decodeInt64ForKey:@"SHLSyncSessionModifyTaskProgress"]);
    progress = v5->_progress;
    v5->_progress = v15;

    v5->_retryCount = [coderCopy decodeIntegerForKey:@"SHLSyncSessionModifyTaskRetryCount"];
    v5->_syncStartCondition = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionModifyTaskSyncTrigger"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tracksToModify = self->_tracksToModify;
  coderCopy = coder;
  [coderCopy encodeObject:tracksToModify forKey:@"SHLSyncSessionModifyTaskTracksToModify"];
  [coderCopy encodeObject:self->_groupsToModify forKey:@"SHLSyncSessionModifyTaskGroupsToModify"];
  [coderCopy encodeObject:self->_identifier forKey:@"SHLSyncSessionModifyTaskIdentifier"];
  [coderCopy encodeInt64:-[NSProgress totalUnitCount](self->_progress forKey:{"totalUnitCount"), @"SHLSyncSessionModifyTaskProgress"}];
  [coderCopy encodeInteger:self->_retryCount forKey:@"SHLSyncSessionModifyTaskRetryCount"];
  [coderCopy encodeObject:self->_syncStartCondition forKey:@"SHLSyncSessionModifyTaskSyncTrigger"];
}

- (void)updateProgress
{
  tracksToModify = [(SHLSyncSessionModifyTask *)self tracksToModify];
  insertions = [tracksToModify insertions];
  v5 = [insertions count];
  groupsToModify = [(SHLSyncSessionModifyTask *)self groupsToModify];
  insertions2 = [groupsToModify insertions];
  v8 = [insertions2 count];

  progress = [(SHLSyncSessionModifyTask *)self progress];
  [progress setTotalUnitCount:&v5[v8]];
}

- (SHLSyncSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->session);

  return WeakRetained;
}

- (SHLSyncSessionModifyTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
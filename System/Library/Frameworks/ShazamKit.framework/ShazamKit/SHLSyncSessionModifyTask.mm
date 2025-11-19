@interface SHLSyncSessionModifyTask
- (NSArray)allItemIdentifiers;
- (SHLSyncSession)session;
- (SHLSyncSessionModifyTask)initWithCoder:(id)a3;
- (SHLSyncSessionModifyTask)initWithTracksToModify:(id)a3 groupsToModify:(id)a4;
- (SHLSyncSessionModifyTaskDelegate)delegate;
- (id)_init;
- (id)subdivideTaskIntoBatchesOfSize:(int64_t)a3;
- (int64_t)size;
- (void)encodeWithCoder:(id)a3;
- (void)updateProgress;
@end

@implementation SHLSyncSessionModifyTask

- (SHLSyncSessionModifyTask)initWithTracksToModify:(id)a3 groupsToModify:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = SHLSyncSessionModifyTask;
  v9 = [(SHLSyncSessionModifyTask *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracksToModify, a3);
    objc_storeStrong(&v10->_groupsToModify, a4);
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_retryCount = 0;
    v14 = [v7 insertions];
    v15 = [v14 count];
    v16 = [v8 insertions];
    v17 = [v16 count];

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

- (id)subdivideTaskIntoBatchesOfSize:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v7 = [v6 subdivideIntoBatchesOfSize:a3];
  v8 = [v7 mutableCopy];

  [v8 sortUsingComparator:&stru_10007E2E8];
  v9 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v10 = [v9 subdivideIntoBatchesOfSize:a3];
  v11 = [v10 mutableCopy];

  [v11 sortUsingComparator:&stru_10007E308];
LABEL_2:
  if ([v8 count] || objc_msgSend(v11, "count"))
  {
    v12 = [[SHLSyncSessionModifyTask alloc] _init];
    v13 = [(SHLSyncSessionModifyTask *)self syncStartCondition];
    [v12 setSyncStartCondition:v13];

    v14 = 1;
    while (![v8 count])
    {
      if ([v11 count])
      {
        v15 = [v11 firstObject];
        v19 = [v12 size];
        v20 = &v19[[v15 numberOfItems]];
        v14 = v20 <= a3;
        if (v20 <= a3)
        {
          [v12 setTracksToModify:v15];
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
      v22 = [v12 size];
      if ((v21 & 1) != 0 || v22 >= a3 || !v14)
      {
        [v12 updateProgress];
        [v5 addObject:v12];

        goto LABEL_2;
      }
    }

    v15 = [v8 firstObject];
    v16 = [v12 size];
    v17 = &v16[[v15 numberOfItems]];
    v14 = v17 <= a3;
    if (v17 <= a3)
    {
      [v12 setGroupsToModify:v15];
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
  v3 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v4 = [v3 numberOfItems];
  v5 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v6 = [v5 numberOfItems];

  return v4 + v6;
}

- (NSArray)allItemIdentifiers
{
  v3 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v4 = [v3 numberOfItems];
  v5 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v6 = [v5 numberOfItems];

  v7 = [NSMutableArray arrayWithCapacity:&v4[v6]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v9 = [v8 insertions];

  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v35 + 1) + 8 * i) identifier];
        v15 = [v14 copy];
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v16 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v17 = [v16 deletions];
  v18 = [v17 allObjects];
  [v7 addObjectsFromArray:v18];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v20 = [v19 insertions];

  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v31 + 1) + 8 * j) identifier];
        v26 = [v25 copy];
        [v7 addObject:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v22);
  }

  v27 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v28 = [v27 deletions];
  v29 = [v28 allObjects];
  [v7 addObjectsFromArray:v29];

  return v7;
}

- (SHLSyncSessionModifyTask)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SHLSyncSessionModifyTask;
  v5 = [(SHLSyncSessionModifyTask *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SHLSyncSessionModifyTaskTracksToModify"];
    tracksToModify = v5->_tracksToModify;
    v5->_tracksToModify = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"SHLSyncSessionModifyTaskGroupsToModify"];
    groupsToModify = v5->_groupsToModify;
    v5->_groupsToModify = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionModifyTaskIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", [v4 decodeInt64ForKey:@"SHLSyncSessionModifyTaskProgress"]);
    progress = v5->_progress;
    v5->_progress = v15;

    v5->_retryCount = [v4 decodeIntegerForKey:@"SHLSyncSessionModifyTaskRetryCount"];
    v5->_syncStartCondition = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHLSyncSessionModifyTaskSyncTrigger"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tracksToModify = self->_tracksToModify;
  v5 = a3;
  [v5 encodeObject:tracksToModify forKey:@"SHLSyncSessionModifyTaskTracksToModify"];
  [v5 encodeObject:self->_groupsToModify forKey:@"SHLSyncSessionModifyTaskGroupsToModify"];
  [v5 encodeObject:self->_identifier forKey:@"SHLSyncSessionModifyTaskIdentifier"];
  [v5 encodeInt64:-[NSProgress totalUnitCount](self->_progress forKey:{"totalUnitCount"), @"SHLSyncSessionModifyTaskProgress"}];
  [v5 encodeInteger:self->_retryCount forKey:@"SHLSyncSessionModifyTaskRetryCount"];
  [v5 encodeObject:self->_syncStartCondition forKey:@"SHLSyncSessionModifyTaskSyncTrigger"];
}

- (void)updateProgress
{
  v3 = [(SHLSyncSessionModifyTask *)self tracksToModify];
  v4 = [v3 insertions];
  v5 = [v4 count];
  v6 = [(SHLSyncSessionModifyTask *)self groupsToModify];
  v7 = [v6 insertions];
  v8 = [v7 count];

  v9 = [(SHLSyncSessionModifyTask *)self progress];
  [v9 setTotalUnitCount:&v5[v8]];
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
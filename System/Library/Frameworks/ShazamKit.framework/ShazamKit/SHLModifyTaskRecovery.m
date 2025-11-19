@interface SHLModifyTaskRecovery
- (NSArray)recoverableTasks;
- (SHLModifyTaskRecovery)initWithOriginalTask:(id)a3 savedGroups:(id)a4 savedTracks:(id)a5 deletedIDs:(id)a6 error:(id)a7;
- (id)recoverTaskFromLimitExceededError;
- (id)recoverTaskFromPartialError;
@end

@implementation SHLModifyTaskRecovery

- (SHLModifyTaskRecovery)initWithOriginalTask:(id)a3 savedGroups:(id)a4 savedTracks:(id)a5 deletedIDs:(id)a6 error:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SHLModifyTaskRecovery;
  v17 = [(SHLModifyTaskRecovery *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_originalTask, a3);
    objc_storeStrong(&v18->_savedGroups, a4);
    objc_storeStrong(&v18->_savedTracks, a5);
    objc_storeStrong(&v18->_deletedIDs, a6);
    objc_storeStrong(&v18->_error, a7);
  }

  return v18;
}

- (NSArray)recoverableTasks
{
  v3 = [(SHLModifyTaskRecovery *)self error];
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:CKErrorDomain];

  if (v5)
  {
    v6 = [(SHLModifyTaskRecovery *)self error];
    v7 = [v6 code];

    if (v7 == 27)
    {
      v8 = [(SHLModifyTaskRecovery *)self recoverTaskFromLimitExceededError];
      goto LABEL_7;
    }

    if (v7 == 2)
    {
      v8 = [(SHLModifyTaskRecovery *)self recoverTaskFromPartialError];
LABEL_7:
      v11 = v8;
      goto LABEL_10;
    }

    v9 = [(SHLModifyTaskRecovery *)self originalTask];
    v13 = v9;
    v10 = &v13;
  }

  else
  {
    v9 = [(SHLModifyTaskRecovery *)self originalTask];
    v14 = v9;
    v10 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v10 count:1];

LABEL_10:

  return v11;
}

- (id)recoverTaskFromPartialError
{
  v3 = [(SHLModifyTaskRecovery *)self savedGroups];
  v4 = [NSSet setWithArray:v3];

  v5 = [(SHLModifyTaskRecovery *)self deletedIDs];
  v6 = [NSMutableSet setWithArray:v5];

  v7 = [(SHLModifyTaskRecovery *)self originalTask];
  v8 = [v7 groupsToModify];
  v9 = [v8 deletions];
  [v6 intersectSet:v9];

  v10 = [[SHLLibraryBatch alloc] initWithInsertions:v4 deletions:v6];
  v11 = [(SHLModifyTaskRecovery *)self savedTracks];
  v12 = [NSSet setWithArray:v11];

  v13 = [(SHLModifyTaskRecovery *)self deletedIDs];
  v14 = [NSMutableSet setWithArray:v13];

  v15 = [(SHLModifyTaskRecovery *)self originalTask];
  v16 = [v15 tracksToModify];
  v17 = [v16 deletions];
  [v14 intersectSet:v17];

  v18 = [[SHLLibraryBatch alloc] initWithInsertions:v12 deletions:v14];
  v19 = [(SHLModifyTaskRecovery *)self originalTask];
  v20 = [v19 groupsToModify];
  v21 = [v20 differenceOfBatch:v10];

  v22 = [(SHLModifyTaskRecovery *)self originalTask];
  v23 = [v22 tracksToModify];
  v24 = [v23 differenceOfBatch:v18];

  v25 = [[SHLSyncSessionModifyTask alloc] initWithTracksToModify:v24 groupsToModify:v21];
  v28 = v25;
  v26 = [NSArray arrayWithObjects:&v28 count:1];

  return v26;
}

- (id)recoverTaskFromLimitExceededError
{
  v2 = [(SHLModifyTaskRecovery *)self originalTask];
  v3 = [v2 subdivideTaskIntoBatchesOfSize:200];

  return v3;
}

@end
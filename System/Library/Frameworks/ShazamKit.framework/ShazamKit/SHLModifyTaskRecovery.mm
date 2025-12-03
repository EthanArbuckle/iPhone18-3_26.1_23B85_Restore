@interface SHLModifyTaskRecovery
- (NSArray)recoverableTasks;
- (SHLModifyTaskRecovery)initWithOriginalTask:(id)task savedGroups:(id)groups savedTracks:(id)tracks deletedIDs:(id)ds error:(id)error;
- (id)recoverTaskFromLimitExceededError;
- (id)recoverTaskFromPartialError;
@end

@implementation SHLModifyTaskRecovery

- (SHLModifyTaskRecovery)initWithOriginalTask:(id)task savedGroups:(id)groups savedTracks:(id)tracks deletedIDs:(id)ds error:(id)error
{
  taskCopy = task;
  groupsCopy = groups;
  tracksCopy = tracks;
  dsCopy = ds;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = SHLModifyTaskRecovery;
  v17 = [(SHLModifyTaskRecovery *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_originalTask, task);
    objc_storeStrong(&v18->_savedGroups, groups);
    objc_storeStrong(&v18->_savedTracks, tracks);
    objc_storeStrong(&v18->_deletedIDs, ds);
    objc_storeStrong(&v18->_error, error);
  }

  return v18;
}

- (NSArray)recoverableTasks
{
  error = [(SHLModifyTaskRecovery *)self error];
  domain = [error domain];
  v5 = [domain isEqualToString:CKErrorDomain];

  if (v5)
  {
    error2 = [(SHLModifyTaskRecovery *)self error];
    code = [error2 code];

    if (code == 27)
    {
      recoverTaskFromLimitExceededError = [(SHLModifyTaskRecovery *)self recoverTaskFromLimitExceededError];
      goto LABEL_7;
    }

    if (code == 2)
    {
      recoverTaskFromLimitExceededError = [(SHLModifyTaskRecovery *)self recoverTaskFromPartialError];
LABEL_7:
      v11 = recoverTaskFromLimitExceededError;
      goto LABEL_10;
    }

    originalTask = [(SHLModifyTaskRecovery *)self originalTask];
    v13 = originalTask;
    v10 = &v13;
  }

  else
  {
    originalTask = [(SHLModifyTaskRecovery *)self originalTask];
    v14 = originalTask;
    v10 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v10 count:1];

LABEL_10:

  return v11;
}

- (id)recoverTaskFromPartialError
{
  savedGroups = [(SHLModifyTaskRecovery *)self savedGroups];
  v4 = [NSSet setWithArray:savedGroups];

  deletedIDs = [(SHLModifyTaskRecovery *)self deletedIDs];
  v6 = [NSMutableSet setWithArray:deletedIDs];

  originalTask = [(SHLModifyTaskRecovery *)self originalTask];
  groupsToModify = [originalTask groupsToModify];
  deletions = [groupsToModify deletions];
  [v6 intersectSet:deletions];

  v10 = [[SHLLibraryBatch alloc] initWithInsertions:v4 deletions:v6];
  savedTracks = [(SHLModifyTaskRecovery *)self savedTracks];
  v12 = [NSSet setWithArray:savedTracks];

  deletedIDs2 = [(SHLModifyTaskRecovery *)self deletedIDs];
  v14 = [NSMutableSet setWithArray:deletedIDs2];

  originalTask2 = [(SHLModifyTaskRecovery *)self originalTask];
  tracksToModify = [originalTask2 tracksToModify];
  deletions2 = [tracksToModify deletions];
  [v14 intersectSet:deletions2];

  v18 = [[SHLLibraryBatch alloc] initWithInsertions:v12 deletions:v14];
  originalTask3 = [(SHLModifyTaskRecovery *)self originalTask];
  groupsToModify2 = [originalTask3 groupsToModify];
  v21 = [groupsToModify2 differenceOfBatch:v10];

  originalTask4 = [(SHLModifyTaskRecovery *)self originalTask];
  tracksToModify2 = [originalTask4 tracksToModify];
  v24 = [tracksToModify2 differenceOfBatch:v18];

  v25 = [[SHLSyncSessionModifyTask alloc] initWithTracksToModify:v24 groupsToModify:v21];
  v28 = v25;
  v26 = [NSArray arrayWithObjects:&v28 count:1];

  return v26;
}

- (id)recoverTaskFromLimitExceededError
{
  originalTask = [(SHLModifyTaskRecovery *)self originalTask];
  v3 = [originalTask subdivideTaskIntoBatchesOfSize:200];

  return v3;
}

@end
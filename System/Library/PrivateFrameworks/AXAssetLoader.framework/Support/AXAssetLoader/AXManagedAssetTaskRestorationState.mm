@interface AXManagedAssetTaskRestorationState
+ (id)idleStateWithTaskID:(id)d assetType:(id)type;
+ (id)restoreOrCreateStateFromStore:(id)store taskID:(id)d assetType:(id)type;
- (BOOL)isIdle;
- (BOOL)previousTaskDidFail;
- (BOOL)previousTaskWasDeferred;
- (BOOL)previousTaskWasSuccessful;
- (id)_initWithPhase:(id)phase lastExitStatus:(id)status date:(id)date taskID:(id)d assetType:(id)type;
- (id)_restorationDictionary;
- (id)_restorationKey;
- (id)description;
- (void)updatePhase:(id)phase exitStatus:(id)status saveToStore:(id)store;
@end

@implementation AXManagedAssetTaskRestorationState

+ (id)idleStateWithTaskID:(id)d assetType:(id)type
{
  typeCopy = type;
  dCopy = d;
  v8 = [self alloc];
  v9 = +[NSDate date];
  v10 = [v8 _initWithPhase:@"Idle" lastExitStatus:0 date:v9 taskID:dCopy assetType:typeCopy];

  return v10;
}

+ (id)restoreOrCreateStateFromStore:(id)store taskID:(id)d assetType:(id)type
{
  dCopy = d;
  typeCopy = type;
  storeCopy = store;
  dCopy = [NSString stringWithFormat:@"%@_RestorationState", dCopy];
  v12 = [storeCopy valueForKey:dCopy forAssetType:typeCopy];

  if (v12)
  {
    v13 = [self alloc];
    v14 = [v12 objectForKeyedSubscript:@"Phase"];
    v15 = [v12 objectForKeyedSubscript:@"LastExitStatus"];
    v16 = [v12 objectForKeyedSubscript:@"Date"];
    v17 = [v13 _initWithPhase:v14 lastExitStatus:v15 date:v16 taskID:dCopy assetType:typeCopy];
  }

  else
  {
    v17 = [self idleStateWithTaskID:dCopy assetType:typeCopy];
  }

  return v17;
}

- (id)_initWithPhase:(id)phase lastExitStatus:(id)status date:(id)date taskID:(id)d assetType:(id)type
{
  phaseCopy = phase;
  statusCopy = status;
  dateCopy = date;
  dCopy = d;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = AXManagedAssetTaskRestorationState;
  v17 = [(AXManagedAssetTaskRestorationState *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(AXManagedAssetTaskRestorationState *)v17 setPhase:phaseCopy];
    [(AXManagedAssetTaskRestorationState *)v18 setLastExitStatus:statusCopy];
    [(AXManagedAssetTaskRestorationState *)v18 setTaskID:dCopy];
    [(AXManagedAssetTaskRestorationState *)v18 setAssetType:typeCopy];
    [(AXManagedAssetTaskRestorationState *)v18 setDate:dateCopy];
  }

  return v18;
}

- (id)description
{
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  lastExitStatus = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  date = [(AXManagedAssetTaskRestorationState *)self date];
  v6 = [NSString stringWithFormat:@"Phase: '%@'. LastExitStatus: '%@'. Timestamp: '%@'", phase, lastExitStatus, date];

  return v6;
}

- (id)_restorationKey
{
  taskID = [(AXManagedAssetTaskRestorationState *)self taskID];
  v3 = [NSString stringWithFormat:@"%@_RestorationState", taskID];

  return v3;
}

- (id)_restorationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  [v3 setObject:phase forKeyedSubscript:@"Phase"];

  date = [(AXManagedAssetTaskRestorationState *)self date];
  [v3 setObject:date forKeyedSubscript:@"Date"];

  lastExitStatus = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];

  if (lastExitStatus)
  {
    lastExitStatus2 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
    [v3 setObject:lastExitStatus2 forKeyedSubscript:@"LastExitStatus"];
  }

  return v3;
}

- (BOOL)isIdle
{
  phase = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [phase isEqualToString:@"Idle"];

  return v3;
}

- (void)updatePhase:(id)phase exitStatus:(id)status saveToStore:(id)store
{
  statusCopy = status;
  storeCopy = store;
  [(AXManagedAssetTaskRestorationState *)self setPhase:phase];
  if (statusCopy)
  {
    [(AXManagedAssetTaskRestorationState *)self setLastExitStatus:statusCopy];
  }

  v9 = +[NSDate date];
  [(AXManagedAssetTaskRestorationState *)self setDate:v9];

  _restorationDictionary = [(AXManagedAssetTaskRestorationState *)self _restorationDictionary];
  taskID = [(AXManagedAssetTaskRestorationState *)self taskID];
  v12 = [NSString stringWithFormat:@"%@_RestorationState", taskID];
  assetType = [(AXManagedAssetTaskRestorationState *)self assetType];
  [storeCopy setValue:_restorationDictionary forKey:v12 forAssetType:assetType];
}

- (BOOL)previousTaskWasSuccessful
{
  lastExitStatus = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [lastExitStatus isEqualToString:@"Success"];

  return v3;
}

- (BOOL)previousTaskDidFail
{
  lastExitStatus = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [lastExitStatus isEqualToString:@"Failed"];

  return v3;
}

- (BOOL)previousTaskWasDeferred
{
  lastExitStatus = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [lastExitStatus isEqualToString:@"Deferred"];

  return v3;
}

@end
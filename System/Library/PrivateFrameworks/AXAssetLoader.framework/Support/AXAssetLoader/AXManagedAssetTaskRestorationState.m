@interface AXManagedAssetTaskRestorationState
+ (id)idleStateWithTaskID:(id)a3 assetType:(id)a4;
+ (id)restoreOrCreateStateFromStore:(id)a3 taskID:(id)a4 assetType:(id)a5;
- (BOOL)isIdle;
- (BOOL)previousTaskDidFail;
- (BOOL)previousTaskWasDeferred;
- (BOOL)previousTaskWasSuccessful;
- (id)_initWithPhase:(id)a3 lastExitStatus:(id)a4 date:(id)a5 taskID:(id)a6 assetType:(id)a7;
- (id)_restorationDictionary;
- (id)_restorationKey;
- (id)description;
- (void)updatePhase:(id)a3 exitStatus:(id)a4 saveToStore:(id)a5;
@end

@implementation AXManagedAssetTaskRestorationState

+ (id)idleStateWithTaskID:(id)a3 assetType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = +[NSDate date];
  v10 = [v8 _initWithPhase:@"Idle" lastExitStatus:0 date:v9 taskID:v7 assetType:v6];

  return v10;
}

+ (id)restoreOrCreateStateFromStore:(id)a3 taskID:(id)a4 assetType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [NSString stringWithFormat:@"%@_RestorationState", v8];
  v12 = [v10 valueForKey:v11 forAssetType:v9];

  if (v12)
  {
    v13 = [a1 alloc];
    v14 = [v12 objectForKeyedSubscript:@"Phase"];
    v15 = [v12 objectForKeyedSubscript:@"LastExitStatus"];
    v16 = [v12 objectForKeyedSubscript:@"Date"];
    v17 = [v13 _initWithPhase:v14 lastExitStatus:v15 date:v16 taskID:v8 assetType:v9];
  }

  else
  {
    v17 = [a1 idleStateWithTaskID:v8 assetType:v9];
  }

  return v17;
}

- (id)_initWithPhase:(id)a3 lastExitStatus:(id)a4 date:(id)a5 taskID:(id)a6 assetType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = AXManagedAssetTaskRestorationState;
  v17 = [(AXManagedAssetTaskRestorationState *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(AXManagedAssetTaskRestorationState *)v17 setPhase:v12];
    [(AXManagedAssetTaskRestorationState *)v18 setLastExitStatus:v13];
    [(AXManagedAssetTaskRestorationState *)v18 setTaskID:v15];
    [(AXManagedAssetTaskRestorationState *)v18 setAssetType:v16];
    [(AXManagedAssetTaskRestorationState *)v18 setDate:v14];
  }

  return v18;
}

- (id)description
{
  v3 = [(AXManagedAssetTaskRestorationState *)self phase];
  v4 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v5 = [(AXManagedAssetTaskRestorationState *)self date];
  v6 = [NSString stringWithFormat:@"Phase: '%@'. LastExitStatus: '%@'. Timestamp: '%@'", v3, v4, v5];

  return v6;
}

- (id)_restorationKey
{
  v2 = [(AXManagedAssetTaskRestorationState *)self taskID];
  v3 = [NSString stringWithFormat:@"%@_RestorationState", v2];

  return v3;
}

- (id)_restorationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(AXManagedAssetTaskRestorationState *)self phase];
  [v3 setObject:v4 forKeyedSubscript:@"Phase"];

  v5 = [(AXManagedAssetTaskRestorationState *)self date];
  [v3 setObject:v5 forKeyedSubscript:@"Date"];

  v6 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];

  if (v6)
  {
    v7 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
    [v3 setObject:v7 forKeyedSubscript:@"LastExitStatus"];
  }

  return v3;
}

- (BOOL)isIdle
{
  v2 = [(AXManagedAssetTaskRestorationState *)self phase];
  v3 = [v2 isEqualToString:@"Idle"];

  return v3;
}

- (void)updatePhase:(id)a3 exitStatus:(id)a4 saveToStore:(id)a5
{
  v14 = a4;
  v8 = a5;
  [(AXManagedAssetTaskRestorationState *)self setPhase:a3];
  if (v14)
  {
    [(AXManagedAssetTaskRestorationState *)self setLastExitStatus:v14];
  }

  v9 = +[NSDate date];
  [(AXManagedAssetTaskRestorationState *)self setDate:v9];

  v10 = [(AXManagedAssetTaskRestorationState *)self _restorationDictionary];
  v11 = [(AXManagedAssetTaskRestorationState *)self taskID];
  v12 = [NSString stringWithFormat:@"%@_RestorationState", v11];
  v13 = [(AXManagedAssetTaskRestorationState *)self assetType];
  [v8 setValue:v10 forKey:v12 forAssetType:v13];
}

- (BOOL)previousTaskWasSuccessful
{
  v2 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [v2 isEqualToString:@"Success"];

  return v3;
}

- (BOOL)previousTaskDidFail
{
  v2 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [v2 isEqualToString:@"Failed"];

  return v3;
}

- (BOOL)previousTaskWasDeferred
{
  v2 = [(AXManagedAssetTaskRestorationState *)self lastExitStatus];
  v3 = [v2 isEqualToString:@"Deferred"];

  return v3;
}

@end
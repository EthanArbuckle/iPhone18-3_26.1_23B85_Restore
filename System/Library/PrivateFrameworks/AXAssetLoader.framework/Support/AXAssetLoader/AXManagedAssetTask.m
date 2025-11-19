@interface AXManagedAssetTask
+ (id)taskWithName:(id)a3 policy:(id)a4 context:(id)a5 block:(id)a6;
- (AXAssetController)assetController;
- (AXManagedAssetTask)initWithName:(id)a3 policy:(id)a4 context:(id)a5 block:(id)a6;
- (BOOL)_deferIfNeeded;
- (NSString)description;
- (id)_restorationExitStatusForResult:(unint64_t)a3;
- (void)_completeWithResult:(unint64_t)a3;
@end

@implementation AXManagedAssetTask

+ (id)taskWithName:(id)a3 policy:(id)a4 context:(id)a5 block:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithName:v13 policy:v12 context:v11 block:v10];

  return v14;
}

- (AXManagedAssetTask)initWithName:(id)a3 policy:(id)a4 context:(id)a5 block:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AXManagedAssetTask;
  v14 = [(AXManagedAssetTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(AXManagedAssetTask *)v14 setTaskBlock:v13];
    [(AXManagedAssetTask *)v15 setPolicy:v11];
    [(AXManagedAssetTask *)v15 setName:v10];
    [(AXManagedAssetTask *)v15 setContext:v12];
  }

  return v15;
}

- (NSString)description
{
  v3 = [(AXManagedAssetTask *)self context];
  v4 = [v3 environment];
  v5 = @"XPCActivity";
  if (!v4)
  {
    v5 = @"XPCClientReq";
  }

  v6 = v5;

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(AXManagedAssetTask *)self name];
  v10 = [(AXManagedAssetTask *)self policy];
  v11 = [v10 assetType];
  v12 = [(AXManagedAssetTask *)self finished];
  v13 = @"Active";
  if (v12)
  {
    v13 = @"Finished";
  }

  v14 = [NSString stringWithFormat:@"%@<%p> [%@:%@:%@ - Status:%@]", v8, self, v6, v9, v11, v13];

  return v14;
}

- (AXAssetController)assetController
{
  assetController = self->_assetController;
  if (!assetController)
  {
    v4 = [(AXManagedAssetTask *)self policy];
    v5 = [AXAssetController assetControllerWithPolicy:v4 qosClass:33 shouldRefreshForAssetInstallNotifications:0];
    v6 = self->_assetController;
    self->_assetController = v5;

    [(AXAssetController *)self->_assetController setUserInitiated:1];
    [(AXAssetController *)self->_assetController addObserver:self];
    assetController = self->_assetController;
  }

  return assetController;
}

- (void)_completeWithResult:(unint64_t)a3
{
  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Deferred";
    if (a3 == 1)
    {
      v6 = @"Failed";
    }

    if (!a3)
    {
      v6 = @"Success";
    }

    v15 = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will complete task [%@] with result : %@", &v15, 0x16u);
  }

  if ([(AXManagedAssetTask *)self finished])
  {
    v7 = AXLogAssetDaemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10000DB1C(self, v7);
    }
  }

  else
  {
    v8 = [(AXManagedAssetTask *)self assetController];
    [v8 removeObserver:self];

    [(AXManagedAssetTask *)self setAssetController:0];
    v9 = [(AXManagedAssetTask *)self restorationState];
    if (a3 > 1)
    {
      v10 = [(AXManagedAssetTask *)self restorationState];
      v11 = [v10 phase];
      v12 = [(AXManagedAssetTask *)self _restorationExitStatusForResult:a3];
      v13 = +[AXAssetMetadataStore store];
      [v9 updatePhase:v11 exitStatus:v12 saveToStore:v13];
    }

    else
    {
      v10 = [(AXManagedAssetTask *)self _restorationExitStatusForResult:a3];
      v11 = +[AXAssetMetadataStore store];
      [v9 updatePhase:@"Idle" exitStatus:v10 saveToStore:v11];
    }

    v14 = [(AXManagedAssetTask *)self context];
    [v14 finishWithResult:a3];

    [(AXManagedAssetTask *)self setFinished:1];
  }
}

- (id)_restorationExitStatusForResult:(unint64_t)a3
{
  v3 = @"Success";
  if (a3 == 1)
  {
    v3 = @"Failed";
  }

  if (a3 == 2)
  {
    return @"Deferred";
  }

  else
  {
    return v3;
  }
}

- (BOOL)_deferIfNeeded
{
  if ([(AXManagedAssetTask *)self finished])
  {
    v3 = AXLogAssetDaemon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Already finixhed, returning true ", &v9, 0xCu);
    }

    return 1;
  }

  v4 = [(AXManagedAssetTask *)self context];
  v5 = [v4 shouldDefer];

  v6 = AXLogAssetDaemon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Returning true", &v9, 0xCu);
    }

    [(AXManagedAssetTask *)self _completeWithResult:2];
    return 1;
  }

  if (v7)
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Returning false", &v9, 0xCu);
  }

  return 0;
}

@end
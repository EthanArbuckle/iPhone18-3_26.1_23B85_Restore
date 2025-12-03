@interface AXManagedAssetTask
+ (id)taskWithName:(id)name policy:(id)policy context:(id)context block:(id)block;
- (AXAssetController)assetController;
- (AXManagedAssetTask)initWithName:(id)name policy:(id)policy context:(id)context block:(id)block;
- (BOOL)_deferIfNeeded;
- (NSString)description;
- (id)_restorationExitStatusForResult:(unint64_t)result;
- (void)_completeWithResult:(unint64_t)result;
@end

@implementation AXManagedAssetTask

+ (id)taskWithName:(id)name policy:(id)policy context:(id)context block:(id)block
{
  blockCopy = block;
  contextCopy = context;
  policyCopy = policy;
  nameCopy = name;
  v14 = [[self alloc] initWithName:nameCopy policy:policyCopy context:contextCopy block:blockCopy];

  return v14;
}

- (AXManagedAssetTask)initWithName:(id)name policy:(id)policy context:(id)context block:(id)block
{
  nameCopy = name;
  policyCopy = policy;
  contextCopy = context;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = AXManagedAssetTask;
  v14 = [(AXManagedAssetTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(AXManagedAssetTask *)v14 setTaskBlock:blockCopy];
    [(AXManagedAssetTask *)v15 setPolicy:policyCopy];
    [(AXManagedAssetTask *)v15 setName:nameCopy];
    [(AXManagedAssetTask *)v15 setContext:contextCopy];
  }

  return v15;
}

- (NSString)description
{
  context = [(AXManagedAssetTask *)self context];
  environment = [context environment];
  v5 = @"XPCActivity";
  if (!environment)
  {
    v5 = @"XPCClientReq";
  }

  v6 = v5;

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  name = [(AXManagedAssetTask *)self name];
  policy = [(AXManagedAssetTask *)self policy];
  assetType = [policy assetType];
  finished = [(AXManagedAssetTask *)self finished];
  v13 = @"Active";
  if (finished)
  {
    v13 = @"Finished";
  }

  v14 = [NSString stringWithFormat:@"%@<%p> [%@:%@:%@ - Status:%@]", v8, self, v6, name, assetType, v13];

  return v14;
}

- (AXAssetController)assetController
{
  assetController = self->_assetController;
  if (!assetController)
  {
    policy = [(AXManagedAssetTask *)self policy];
    v5 = [AXAssetController assetControllerWithPolicy:policy qosClass:33 shouldRefreshForAssetInstallNotifications:0];
    v6 = self->_assetController;
    self->_assetController = v5;

    [(AXAssetController *)self->_assetController setUserInitiated:1];
    [(AXAssetController *)self->_assetController addObserver:self];
    assetController = self->_assetController;
  }

  return assetController;
}

- (void)_completeWithResult:(unint64_t)result
{
  v5 = AXLogAssetDaemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"Deferred";
    if (result == 1)
    {
      v6 = @"Failed";
    }

    if (!result)
    {
      v6 = @"Success";
    }

    v15 = 138412546;
    selfCopy = self;
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
    assetController = [(AXManagedAssetTask *)self assetController];
    [assetController removeObserver:self];

    [(AXManagedAssetTask *)self setAssetController:0];
    restorationState = [(AXManagedAssetTask *)self restorationState];
    if (result > 1)
    {
      restorationState2 = [(AXManagedAssetTask *)self restorationState];
      phase = [restorationState2 phase];
      v12 = [(AXManagedAssetTask *)self _restorationExitStatusForResult:result];
      v13 = +[AXAssetMetadataStore store];
      [restorationState updatePhase:phase exitStatus:v12 saveToStore:v13];
    }

    else
    {
      restorationState2 = [(AXManagedAssetTask *)self _restorationExitStatusForResult:result];
      phase = +[AXAssetMetadataStore store];
      [restorationState updatePhase:@"Idle" exitStatus:restorationState2 saveToStore:phase];
    }

    context = [(AXManagedAssetTask *)self context];
    [context finishWithResult:result];

    [(AXManagedAssetTask *)self setFinished:1];
  }
}

- (id)_restorationExitStatusForResult:(unint64_t)result
{
  v3 = @"Success";
  if (result == 1)
  {
    v3 = @"Failed";
  }

  if (result == 2)
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
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Already finixhed, returning true ", &v9, 0xCu);
    }

    return 1;
  }

  context = [(AXManagedAssetTask *)self context];
  shouldDefer = [context shouldDefer];

  v6 = AXLogAssetDaemon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (shouldDefer)
  {
    if (v7)
    {
      v9 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Returning true", &v9, 0xCu);
    }

    [(AXManagedAssetTask *)self _completeWithResult:2];
    return 1;
  }

  if (v7)
  {
    v9 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ - Checking _deferIfNeeded: Returning false", &v9, 0xCu);
  }

  return 0;
}

@end
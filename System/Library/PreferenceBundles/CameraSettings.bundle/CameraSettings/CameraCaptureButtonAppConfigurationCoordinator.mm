@interface CameraCaptureButtonAppConfigurationCoordinator
- (BOOL)isBundleIDCameraTTCAuthorized:(id)authorized;
- (CameraCaptureButtonAppConfigurationCoordinator)init;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_setAssociatedAppBundleID:(id)d notifySpringBoard:(BOOL)board notifyDelegates:(BOOL)delegates;
- (void)_setEligibleAppsBundleIDs:(id)ds withAuthorizedBundleIds:(id)ids;
- (void)dealloc;
@end

@implementation CameraCaptureButtonAppConfigurationCoordinator

- (CameraCaptureButtonAppConfigurationCoordinator)init
{
  v34.receiver = self;
  v34.super_class = CameraCaptureButtonAppConfigurationCoordinator;
  v2 = [(CameraCaptureButtonAppConfigurationCoordinator *)&v34 init];
  v3 = v2;
  if (v2)
  {
    associatedAppBundleID = v2->_associatedAppBundleID;
    v2->_associatedAppBundleID = @"com.apple.camera";

    v5 = [NSSet setWithObject:v3->_associatedAppBundleID];
    eligibleAppsBundleIDs = v3->_eligibleAppsBundleIDs;
    v3->_eligibleAppsBundleIDs = v5;

    v7 = [NSSet setWithObject:v3->_associatedAppBundleID];
    authorizedAppsBundleIDs = v3->__authorizedAppsBundleIDs;
    v3->__authorizedAppsBundleIDs = v7;

    v9 = objc_alloc_init(SBSCaptureButtonAppConfigurationCoordinator);
    appConfigurationController = v3->__appConfigurationController;
    v3->__appConfigurationController = v9;

    objc_initWeak(&location, v3);
    v11 = v3->__appConfigurationController;
    v12 = objc_opt_respondsToSelector();
    v13 = v3->__appConfigurationController;
    if (v12)
    {
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_4000;
      v31[3] = &unk_2CB60;
      v14 = &v32;
      objc_copyWeak(&v32, &location);
      v15 = [(SBSCaptureButtonAppConfigurationCoordinator *)v13 addObserverForEligibleCaptureAppsUpdatesUsingBlock:v31];
    }

    else
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_4190;
      v29[3] = &unk_2CB60;
      v14 = &v30;
      objc_copyWeak(&v30, &location);
      v15 = [(SBSCaptureButtonAppConfigurationCoordinator *)v13 addObserverForEligibleCaptureAppsUpdatesUsingBlock:v29];
    }

    eligibleAppsObserver = v3->__eligibleAppsObserver;
    v3->__eligibleAppsObserver = v15;

    objc_destroyWeak(v14);
    v17 = v3->__appConfigurationController;
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_41EC;
    v27 = &unk_2CB88;
    objc_copyWeak(&v28, &location);
    v18 = [(SBSCaptureButtonAppConfigurationCoordinator *)v17 addObserverForAssociatedAppUpdatesUsingBlock:&v24];
    associatedAppObserver = v3->__associatedAppObserver;
    v3->__associatedAppObserver = v18;

    v20 = [NSHashTable weakObjectsHashTable:v24];
    coordinatorObservers = v3->__coordinatorObservers;
    v3->__coordinatorObservers = v20;

    v22 = v3;
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->__eligibleAppsObserver invalidate];
  [(BSInvalidatable *)self->__associatedAppObserver invalidate];
  v3.receiver = self;
  v3.super_class = CameraCaptureButtonAppConfigurationCoordinator;
  [(CameraCaptureButtonAppConfigurationCoordinator *)&v3 dealloc];
}

- (BOOL)isBundleIDCameraTTCAuthorized:(id)authorized
{
  authorizedCopy = authorized;
  _authorizedAppsBundleIDs = [(CameraCaptureButtonAppConfigurationCoordinator *)self _authorizedAppsBundleIDs];
  v6 = [_authorizedAppsBundleIDs containsObject:authorizedCopy];

  return v6;
}

- (void)_setAssociatedAppBundleID:(id)d notifySpringBoard:(BOOL)board notifyDelegates:(BOOL)delegates
{
  delegatesCopy = delegates;
  boardCopy = board;
  dCopy = d;
  v10 = dCopy;
  if (self->_associatedAppBundleID != dCopy && ![(NSString *)dCopy isEqualToString:?])
  {
    objc_storeStrong(&self->_associatedAppBundleID, d);
    if (delegatesCopy)
    {
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = +[NSNull null];
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_44C0;
      v15[3] = &unk_2CBB0;
      v15[4] = self;
      v16 = v11;
      v12 = v11;
      [(CameraCaptureButtonAppConfigurationCoordinator *)self _enumerateObserversWithBlock:v15];
    }

    if (boardCopy)
    {
      v13 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Calling setAssociatedAppBundleIdentifier: %{public}@", buf, 0xCu);
      }

      _appConfigurationController = [(CameraCaptureButtonAppConfigurationCoordinator *)self _appConfigurationController];
      [_appConfigurationController setAssociatedAppBundleIdentifier:v10];
    }
  }
}

- (void)_setEligibleAppsBundleIDs:(id)ds withAuthorizedBundleIds:(id)ids
{
  dsCopy = ds;
  idsCopy = ids;
  if (self->_eligibleAppsBundleIDs != dsCopy && ![(NSSet *)dsCopy isEqualToSet:?]|| self->__authorizedAppsBundleIDs != idsCopy && ![(NSSet *)idsCopy isEqualToSet:?])
  {
    objc_storeStrong(&self->_eligibleAppsBundleIDs, ds);
    objc_storeStrong(&self->__authorizedAppsBundleIDs, ids);
    if (dsCopy)
    {
      v9 = dsCopy;
    }

    else
    {
      v9 = +[NSNull null];
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_45FC;
    v11[3] = &unk_2CBB0;
    v11[4] = self;
    v12 = v9;
    v10 = v9;
    [(CameraCaptureButtonAppConfigurationCoordinator *)self _enumerateObserversWithBlock:v11];
  }
}

- (void)_enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  _coordinatorObservers = [(CameraCaptureButtonAppConfigurationCoordinator *)self _coordinatorObservers];
  v6 = [_coordinatorObservers copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end
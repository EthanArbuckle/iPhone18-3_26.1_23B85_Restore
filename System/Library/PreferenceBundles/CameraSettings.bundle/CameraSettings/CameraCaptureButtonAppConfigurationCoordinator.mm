@interface CameraCaptureButtonAppConfigurationCoordinator
- (BOOL)isBundleIDCameraTTCAuthorized:(id)a3;
- (CameraCaptureButtonAppConfigurationCoordinator)init;
- (void)_enumerateObserversWithBlock:(id)a3;
- (void)_setAssociatedAppBundleID:(id)a3 notifySpringBoard:(BOOL)a4 notifyDelegates:(BOOL)a5;
- (void)_setEligibleAppsBundleIDs:(id)a3 withAuthorizedBundleIds:(id)a4;
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

- (BOOL)isBundleIDCameraTTCAuthorized:(id)a3
{
  v4 = a3;
  v5 = [(CameraCaptureButtonAppConfigurationCoordinator *)self _authorizedAppsBundleIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_setAssociatedAppBundleID:(id)a3 notifySpringBoard:(BOOL)a4 notifyDelegates:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v10 = v9;
  if (self->_associatedAppBundleID != v9 && ![(NSString *)v9 isEqualToString:?])
  {
    objc_storeStrong(&self->_associatedAppBundleID, a3);
    if (v5)
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

    if (v6)
    {
      v13 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Calling setAssociatedAppBundleIdentifier: %{public}@", buf, 0xCu);
      }

      v14 = [(CameraCaptureButtonAppConfigurationCoordinator *)self _appConfigurationController];
      [v14 setAssociatedAppBundleIdentifier:v10];
    }
  }
}

- (void)_setEligibleAppsBundleIDs:(id)a3 withAuthorizedBundleIds:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_eligibleAppsBundleIDs != v7 && ![(NSSet *)v7 isEqualToSet:?]|| self->__authorizedAppsBundleIDs != v8 && ![(NSSet *)v8 isEqualToSet:?])
  {
    objc_storeStrong(&self->_eligibleAppsBundleIDs, a3);
    objc_storeStrong(&self->__authorizedAppsBundleIDs, a4);
    if (v7)
    {
      v9 = v7;
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

- (void)_enumerateObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CameraCaptureButtonAppConfigurationCoordinator *)self _coordinatorObservers];
  v6 = [v5 copy];

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

        v4[2](v4, *(*(&v12 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end
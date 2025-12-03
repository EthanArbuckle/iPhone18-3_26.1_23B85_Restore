@interface PairedDeviceApplicationCatalog
- (LibraryCatalogObserver)observer;
- (id)resultsMatchingPredicate:(id)predicate error:(id *)error;
- (id)resultsWithBundleIDs:(id)ds error:(id *)error;
- (id)resultsWithItemIDs:(id)ds error:(id *)error;
- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d;
- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d;
- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d;
- (void)dealloc;
- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler;
@end

@implementation PairedDeviceApplicationCatalog

- (void)dealloc
{
  v3 = sub_100394290();
  sub_100394B18(v3, self);

  v4.receiver = self;
  v4.super_class = PairedDeviceApplicationCatalog;
  [(PairedDeviceApplicationCatalog *)&v4 dealloc];
}

- (void)executeQuery:(id)query excludingBundleIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  queryCopy = query;
  v11 = sub_100213C7C([LibraryExpressionClassifier alloc], self);
  v9 = sub_100341894([LibraryQueryPlanner alloc], v11);
  v10 = sub_10034190C(v9, queryCopy);

  handlerCopy[2](handlerCopy, v10, 0);
}

- (id)resultsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10029D028;
  v10[3] = &unk_1005204B8;
  v10[4] = self;
  v11 = predicateCopy;
  v7 = predicateCopy;
  v8 = sub_1002669D8(v6, 1, v10);

  return v8;
}

- (id)resultsWithBundleIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v6 = [LibraryLazyResultsEnumerator alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10029DA30;
  v10[3] = &unk_1005204B8;
  v10[4] = self;
  v11 = dsCopy;
  v7 = dsCopy;
  v8 = sub_1002669D8(v6, 0, v10);

  return v8;
}

- (id)resultsWithItemIDs:(id)ds error:(id *)error
{
  v6 = [NSPredicate predicateWithFormat:@"storeItemID IN %@", ds];
  v7 = [(PairedDeviceApplicationCatalog *)self resultsMatchingPredicate:v6 error:error];

  return v7;
}

- (void)applicationsInstalled:(id)installed onDeviceWithPairingID:(id)d
{
  installedCopy = installed;
  dCopy = d;
  pairingID = [(NRDevice *)self->_device pairingID];
  v9 = [dCopy isEqual:pairingID];

  if (v9)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10029E380;
    v29[3] = &unk_100520508;
    v29[4] = self;
    v10 = sub_10036FDEC(installedCopy, v29);
    v11 = v10;
    if (dCopy && [v10 count])
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v32 = dCopy;
        v33 = 2114;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Posting register notification for device: %{public}@ with apps: %{public}@", buf, 0x16u);
      }

      v13 = sub_1002A2390(ASDNotification, v11, dCopy);
      v14 = sub_100003984();
      sub_1003B8178(v14, v13);

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = v11;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * v19);
            v21 = sub_1003649C8();
            bundleID = [v20 bundleID];
            sub_10036689C(v21, bundleID);

            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v17);
      }

      v11 = v24;
    }

    else
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = [installedCopy count];
        *buf = 138543618;
        v32 = dCopy;
        v33 = 2048;
        v34 = v23;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid install notification received for: %{public}@ with %lu applications", buf, 0x16u);
      }
    }
  }
}

- (void)applicationsUninstalled:(id)uninstalled onDeviceWithPairingID:(id)d
{
  uninstalledCopy = uninstalled;
  dCopy = d;
  pairingID = [(NRDevice *)self->_device pairingID];
  v9 = [dCopy isEqual:pairingID];

  if (v9)
  {
    if (dCopy && [uninstalledCopy count])
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = dCopy;
        v15 = 2114;
        v16 = uninstalledCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Posting unregister notification for device: %{public}@ with apps: %{public}@", &v13, 0x16u);
      }

      v11 = sub_1002A25A4(ASDNotification, uninstalledCopy, dCopy);
      v12 = sub_100003984();
      sub_1003B8178(v12, v11);
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543618;
        v14 = dCopy;
        v15 = 2048;
        v16 = [uninstalledCopy count];
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid uninstall notification received for: %{public}@ with %lu applications", &v13, 0x16u);
      }
    }
  }
}

- (void)applicationsUpdated:(id)updated onDeviceWithPairingID:(id)d
{
  updatedCopy = updated;
  dCopy = d;
  pairingID = [(NRDevice *)self->_device pairingID];
  v9 = [dCopy isEqual:pairingID];

  if (v9)
  {
    v10 = ASDLogHandleForCategory();
    v11 = v10;
    if (dCopy)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = dCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Posting refresh notification for device: %{public}@", &v13, 0xCu);
      }

      v11 = sub_1002A21A0(ASDNotification, dCopy);
      v12 = sub_100003984();
      sub_1003B8178(v12, v11);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = 0;
      v15 = 2048;
      v16 = [updatedCopy count];
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid update notification received for: %{public}@ with %lu applications", &v13, 0x16u);
    }
  }
}

- (LibraryCatalogObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end
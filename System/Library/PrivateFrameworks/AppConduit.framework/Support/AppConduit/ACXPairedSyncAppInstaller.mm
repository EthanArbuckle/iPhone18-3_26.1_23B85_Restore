@interface ACXPairedSyncAppInstaller
- (ACXPairedSyncAppInstaller)initWithSyncSession:(id)session forConnection:(id)connection delegate:(id)delegate;
- (ACXPairedSyncAppInstallerDelegate)delegate;
- (void)_onQueue_applicationsChanged;
- (void)_onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:(id)list;
- (void)_onQueue_completeSyncIfDone;
- (void)_registerForAppsChangedNotification;
- (void)_unregisterForAppsChangedNotification;
- (void)applicationsAdded:(id)added;
- (void)applicationsRemoved:(id)removed;
- (void)applicationsUpdated:(id)updated;
- (void)dealloc;
- (void)reportAppInstallFailureForBundleID:(id)d;
- (void)resyncCompleted;
- (void)start;
@end

@implementation ACXPairedSyncAppInstaller

- (ACXPairedSyncAppInstaller)initWithSyncSession:(id)session forConnection:(id)connection delegate:(id)delegate
{
  sessionCopy = session;
  connectionCopy = connection;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = ACXPairedSyncAppInstaller;
  v12 = [(ACXPairedSyncAppInstaller *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_syncSession, session);
    objc_storeStrong(&v13->_connection, connection);
    device = [connectionCopy device];
    v13->_gizmoSupportsRemoteAppList = [device supportsRemoteAppList];

    v13->_gizmoAppsChangedNotificationToken = -1;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.appconduit.ACXPairedSyncAppInstaller", v15);
    queue = v13->_queue;
    v13->_queue = v16;

    v13->_waitingForInstallList = 1;
  }

  return v13;
}

- (void)dealloc
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [(ACXPairedSyncAppInstaller *)self _unregisterForAppsChangedNotification];
  v3.receiver = self;
  v3.super_class = ACXPairedSyncAppInstaller;
  [(ACXPairedSyncAppInstaller *)&v3 dealloc];
}

- (void)start
{
  if ([(ACXPairedSyncAppInstaller *)self gizmoSupportsRemoteAppList])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    connection = [(ACXPairedSyncAppInstaller *)self connection];
    availableSystemAppList = [connection availableSystemAppList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100018C1C;
    v10[3] = &unk_10008D3C8;
    v10[4] = self;
    [availableSystemAppList waitForInstallableSystemAppBundleIDs:v10];
  }

  else
  {
    [(ACXPairedSyncAppInstaller *)self _registerForAppsChangedNotification];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v5 = +[ACXAvailableApplicationManager sharedApplicationManager];
    bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix = [v5 bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];

    connection2 = [(ACXPairedSyncAppInstaller *)self connection];
    allObjects = [bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix allObjects];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018E1C;
    v9[3] = &unk_10008D3F0;
    v9[4] = self;
    [connection2 installSystemApplicationsWithBundleIDs:allObjects withCompletion:v9];
  }
}

- (void)reportAppInstallFailureForBundleID:(id)d
{
  dCopy = d;
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000190B8;
  v7[3] = &unk_10008CC38;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  sub_100005828(queue, v7);
}

- (void)_onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:(id)list
{
  listCopy = list;
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  v8 = [appsPendingInstallOnGizmo countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(appsPendingInstallOnGizmo);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v13 = [listCopy applicationIsInstalledWithBundleID:v12 error:&v21];
        v14 = v21;
        v15 = v14;
        if (v13)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v19 = v12;
            MOLogWrite();
          }

          [v6 addObject:{v12, v19}];
        }

        else if (v14)
        {
          domain = [v14 domain];
          if (([domain isEqualToString:@"ACXErrorDomain"] & 1) == 0)
          {

LABEL_18:
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              MOLogWrite();
            }

            goto LABEL_22;
          }

          code = [v15 code];

          if (code != 19)
          {
            goto LABEL_18;
          }
        }
      }

      v9 = [appsPendingInstallOnGizmo countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  appsPendingInstallOnGizmo2 = [(ACXPairedSyncAppInstaller *)selfCopy appsPendingInstallOnGizmo];
  [appsPendingInstallOnGizmo2 minusSet:v6];

  [(ACXPairedSyncAppInstaller *)selfCopy _onQueue_completeSyncIfDone];
}

- (void)_registerForAppsChangedNotification
{
  uTF8String = [@"com.apple.sockpuppet.applications.updated" UTF8String];
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100019464;
  handler[3] = &unk_10008D418;
  handler[4] = self;
  notify_register_dispatch(uTF8String, &self->_gizmoAppsChangedNotificationToken, queue, handler);
}

- (void)_unregisterForAppsChangedNotification
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  gizmoAppsChangedNotificationToken = self->_gizmoAppsChangedNotificationToken;
  if (gizmoAppsChangedNotificationToken != -1)
  {
    notify_cancel(gizmoAppsChangedNotificationToken);
    self->_gizmoAppsChangedNotificationToken = -1;
  }

  if ([(ACXPairedSyncAppInstaller *)self gizmoSupportsRemoteAppList])
  {
    connection = [(ACXPairedSyncAppInstaller *)self connection];
    remoteAppList = [connection remoteAppList];
    queue = [(ACXPairedSyncAppInstaller *)self queue];
    [remoteAppList removeObserver:self queue:queue];
  }
}

- (void)_onQueue_completeSyncIfDone
{
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ACXPairedSyncAppInstaller *)self waitingForInstallList])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {

      MOLogWrite();
    }
  }

  else
  {
    appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
    if (appsPendingInstallOnGizmo && (v5 = appsPendingInstallOnGizmo, -[ACXPairedSyncAppInstaller appsPendingInstallOnGizmo](self, "appsPendingInstallOnGizmo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        appsPendingInstallOnGizmo2 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      delegate = [(ACXPairedSyncAppInstaller *)self delegate];
      syncSession = [(ACXPairedSyncAppInstaller *)self syncSession];
      [delegate installCompleteForSyncSession:syncSession];

      [(ACXPairedSyncAppInstaller *)self _unregisterForAppsChangedNotification];
    }
  }
}

- (void)_onQueue_applicationsChanged
{
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[ACXGizmoStateManager sharedStateManager];
  connection = [(ACXPairedSyncAppInstaller *)self connection];
  device = [connection device];
  v7 = [v4 stateForDevice:device];

  v8 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  v10 = [appsPendingInstallOnGizmo countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(appsPendingInstallOnGizmo);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v7 installStatusForApp:v14] == 2)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [appsPendingInstallOnGizmo countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  appsPendingInstallOnGizmo2 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  [appsPendingInstallOnGizmo2 minusSet:v8];

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsAdded:(id)added
{
  addedCopy = added;
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = addedCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v14 = bundleIdentifier;
          MOLogWrite();
        }

        if ([v11 isDeletable] && objc_msgSend(v11, "isSystemApp"))
        {
          appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
          [appsPendingInstallOnGizmo removeObject:bundleIdentifier];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsRemoved:(id)removed
{
  removedCopy = removed;
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = removedCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v13 = *(*(&v14 + 1) + 8 * i);
          MOLogWrite();
        }

        appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
        [appsPendingInstallOnGizmo removeObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsUpdated:(id)updated
{
  updatedCopy = updated;
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = updatedCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v14 = bundleIdentifier;
          MOLogWrite();
        }

        if ([v11 isDeletable] && objc_msgSend(v11, "isSystemApp"))
        {
          appsPendingInstallOnGizmo = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
          [appsPendingInstallOnGizmo removeObject:bundleIdentifier];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)resyncCompleted
{
  queue = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = [(ACXPairedSyncAppInstaller *)self connection];
  remoteAppList = [connection remoteAppList];
  [(ACXPairedSyncAppInstaller *)self _onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:remoteAppList];
}

- (ACXPairedSyncAppInstallerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
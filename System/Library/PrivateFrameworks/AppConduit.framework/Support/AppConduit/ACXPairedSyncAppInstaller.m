@interface ACXPairedSyncAppInstaller
- (ACXPairedSyncAppInstaller)initWithSyncSession:(id)a3 forConnection:(id)a4 delegate:(id)a5;
- (ACXPairedSyncAppInstallerDelegate)delegate;
- (void)_onQueue_applicationsChanged;
- (void)_onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:(id)a3;
- (void)_onQueue_completeSyncIfDone;
- (void)_registerForAppsChangedNotification;
- (void)_unregisterForAppsChangedNotification;
- (void)applicationsAdded:(id)a3;
- (void)applicationsRemoved:(id)a3;
- (void)applicationsUpdated:(id)a3;
- (void)dealloc;
- (void)reportAppInstallFailureForBundleID:(id)a3;
- (void)resyncCompleted;
- (void)start;
@end

@implementation ACXPairedSyncAppInstaller

- (ACXPairedSyncAppInstaller)initWithSyncSession:(id)a3 forConnection:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ACXPairedSyncAppInstaller;
  v12 = [(ACXPairedSyncAppInstaller *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    objc_storeStrong(&v13->_syncSession, a3);
    objc_storeStrong(&v13->_connection, a4);
    v14 = [v10 device];
    v13->_gizmoSupportsRemoteAppList = [v14 supportsRemoteAppList];

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

    v3 = [(ACXPairedSyncAppInstaller *)self connection];
    v4 = [v3 availableSystemAppList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100018C1C;
    v10[3] = &unk_10008D3C8;
    v10[4] = self;
    [v4 waitForInstallableSystemAppBundleIDs:v10];
  }

  else
  {
    [(ACXPairedSyncAppInstaller *)self _registerForAppsChangedNotification];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v5 = +[ACXAvailableApplicationManager sharedApplicationManager];
    v6 = [v5 bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];

    v7 = [(ACXPairedSyncAppInstaller *)self connection];
    v8 = [v6 allObjects];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100018E1C;
    v9[3] = &unk_10008D3F0;
    v9[4] = self;
    [v7 installSystemApplicationsWithBundleIDs:v8 withCompletion:v9];
  }
}

- (void)reportAppInstallFailureForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncAppInstaller *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000190B8;
  v7[3] = &unk_10008CC38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  sub_100005828(v5, v7);
}

- (void)_onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = self;
  v7 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v13 = [v4 applicationIsInstalledWithBundleID:v12 error:&v21];
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
          v16 = [v14 domain];
          if (([v16 isEqualToString:@"ACXErrorDomain"] & 1) == 0)
          {

LABEL_18:
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              MOLogWrite();
            }

            goto LABEL_22;
          }

          v17 = [v15 code];

          if (v17 != 19)
          {
            goto LABEL_18;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v18 = [(ACXPairedSyncAppInstaller *)v20 appsPendingInstallOnGizmo];
  [v18 minusSet:v6];

  [(ACXPairedSyncAppInstaller *)v20 _onQueue_completeSyncIfDone];
}

- (void)_registerForAppsChangedNotification
{
  v3 = [@"com.apple.sockpuppet.applications.updated" UTF8String];
  v4 = [(ACXPairedSyncAppInstaller *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100019464;
  handler[3] = &unk_10008D418;
  handler[4] = self;
  notify_register_dispatch(v3, &self->_gizmoAppsChangedNotificationToken, v4, handler);
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
    v6 = [(ACXPairedSyncAppInstaller *)self connection];
    v4 = [v6 remoteAppList];
    v5 = [(ACXPairedSyncAppInstaller *)self queue];
    [v4 removeObserver:self queue:v5];
  }
}

- (void)_onQueue_completeSyncIfDone
{
  v3 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ACXPairedSyncAppInstaller *)self waitingForInstallList])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {

      MOLogWrite();
    }
  }

  else
  {
    v4 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
    if (v4 && (v5 = v4, -[ACXPairedSyncAppInstaller appsPendingInstallOnGizmo](self, "appsPendingInstallOnGizmo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v10 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v8 = [(ACXPairedSyncAppInstaller *)self delegate];
      v9 = [(ACXPairedSyncAppInstaller *)self syncSession];
      [v8 installCompleteForSyncSession:v9];

      [(ACXPairedSyncAppInstaller *)self _unregisterForAppsChangedNotification];
    }
  }
}

- (void)_onQueue_applicationsChanged
{
  v3 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[ACXGizmoStateManager sharedStateManager];
  v5 = [(ACXPairedSyncAppInstaller *)self connection];
  v6 = [v5 device];
  v7 = [v4 stateForDevice:v6];

  v8 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v7 installStatusForApp:v14] == 2)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
  [v15 minusSet:v8];

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsAdded:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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
        v12 = [v11 bundleIdentifier];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v14 = v12;
          MOLogWrite();
        }

        if ([v11 isDeletable] && objc_msgSend(v11, "isSystemApp"))
        {
          v13 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
          [v13 removeObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsRemoved:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
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

        v12 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
        [v12 removeObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(ACXPairedSyncAppInstaller *)self _onQueue_completeSyncIfDone];
}

- (void)applicationsUpdated:(id)a3
{
  v4 = a3;
  v5 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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
        v12 = [v11 bundleIdentifier];
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v14 = v12;
          MOLogWrite();
        }

        if ([v11 isDeletable] && objc_msgSend(v11, "isSystemApp"))
        {
          v13 = [(ACXPairedSyncAppInstaller *)self appsPendingInstallOnGizmo];
          [v13 removeObject:v12];
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
  v3 = [(ACXPairedSyncAppInstaller *)self queue];
  dispatch_assert_queue_V2(v3);

  v5 = [(ACXPairedSyncAppInstaller *)self connection];
  v4 = [v5 remoteAppList];
  [(ACXPairedSyncAppInstaller *)self _onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:v4];
}

- (ACXPairedSyncAppInstallerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface CloudSettingSyncCoordinator
- (BOOL)_isDataclassEnabledInOperationGroup:(id)a3;
- (BOOL)_updateAccountHashIfNeededInOperationGroup:(id)a3;
- (CloudSettingSyncCoordinator)initWithSettingStore:(id)a3 accountStore:(id)a4;
- (CloudSettingSyncCoordinatorDelegate)delegate;
- (id)_perSitePreferencesStore;
- (void)_beginSyncingInOperationGroup:(id)a3 completionHandlers:(id)a4;
- (void)_cleanUpAndCallCompletionHandlersWithError:(id)a3 inOperationGroup:(id)a4;
- (void)_clearCachedCloudSettingsRecordZoneIfNecessaryForError:(id)a3;
- (void)_clearPerSiteSettingsSyncDataInOperationGroup:(id)a3;
- (void)_continueFetchingSettingsInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)_continueSyncingAfterSyncingDown:(BOOL)a3 inOperationGroup:(id)a4;
- (void)_didFailToSyncWithError:(id)a3 inOperationGroup:(id)a4;
- (void)_handleExpiredChangeTokenError:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_pcsIdentitiesDidChangeNotification:(id)a3;
- (void)_performSyncDownInOperationGroup:(id)a3;
- (void)_readServerChangeTokenFromUserDefaultsInOperationGroup:(id)a3;
- (void)_savePerSiteCloudKitRecordsToDisk:(id)a3 inOperationGroup:(id)a4;
- (void)_saveServerChangeToken:(id)a3 inOperationGroup:(id)a4;
- (void)beginSyncingInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)clearServerChangeToken;
- (void)deleteRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)saveImageRecord:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5;
- (void)savePerSiteRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)saveRecords:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5;
- (void)setNeedsAccountHashCheck;
- (void)userAccountChanged;
@end

@implementation CloudSettingSyncCoordinator

- (CloudSettingSyncCoordinator)initWithSettingStore:(id)a3 accountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CloudSettingSyncCoordinator;
  v9 = [(CloudSettingSyncCoordinator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountStore, a4);
    objc_storeStrong(&v10->_settingStore, a3);
    *&v10->_needsDataclassEnabledCheck = 257;
    v11 = v10;
  }

  return v10;
}

- (void)userAccountChanged
{
  v3 = sub_10000300C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User account changed for iCloud Settings", v4, 2u);
  }

  self->_needsDataclassEnabledCheck = 1;
}

- (BOOL)_isDataclassEnabledInOperationGroup:(id)a3
{
  v4 = a3;
  if (!self->_needsDataclassEnabledCheck)
  {
LABEL_7:
    dataclassEnabled = self->_dataclassEnabled;
    goto LABEL_8;
  }

  self->_needsDataclassEnabledCheck = 0;
  v5 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isEnabledForDataclass:kAccountDataclassBookmarks];
    self->_dataclassEnabled = v7;
    if ((v7 & 1) == 0)
    {
      v8 = sub_10000300C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v4 safari_logDescription];
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iCloud Settings syncing not available because Safari's dataclass isn't enabled with %{public}@", &v16, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v13 = sub_10000300C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v4 safari_logDescription];
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "iCloud Settings syncing not available because user is not signed in with %{public}@", &v16, 0xCu);
  }

  dataclassEnabled = 0;
  self->_dataclassEnabled = 0;
LABEL_8:

  return dataclassEnabled;
}

- (BOOL)_updateAccountHashIfNeededInOperationGroup:(id)a3
{
  v4 = a3;
  if (self->_needsAccountHashCheck)
  {
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 safari_logDescription];
      *v34 = 138543362;
      *&v34[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking account hash with %{public}@", v34, 0xCu);
    }

    v8 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    v9 = [v8 safari_accountHash];

    v10 = +[NSUserDefaults safari_browserDefaults];
    v11 = [v10 objectForKey:@"settingsSyncAccountDSIDHash"];

    if (v11)
    {
      v12 = [v11 isEqualToData:v9];
      v13 = sub_10000300C();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = v14;
          v16 = [v4 safari_logDescription];
          *v34 = 138543362;
          *&v34[4] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Account hash matches with %{public}@", v34, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_100054464(v14);
        }

        v29 = +[NSUserDefaults safari_browserDefaults];
        [v29 setObject:v9 forKey:@"settingsSyncAccountDSIDHash"];
      }

      self->_needsAccountHashCheck = 0;
      goto LABEL_25;
    }

    v18 = +[NSUserDefaults safari_browserDefaults];
    v19 = [v18 objectForKey:@"settingsSyncAccountHash"];

    v20 = [v19 isEqualToData:v9];
    v21 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    v22 = [v21 safari_deprecatedUsernameAccountHash];
    v23 = [v19 isEqualToData:v22];

    v24 = sub_10000300C();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v25)
      {
        v26 = v24;
        v27 = [v4 safari_logDescription];
        *v34 = 138543362;
        *&v34[4] = v27;
        v28 = "Account hash matches. Storing account hash in new location with %{public}@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, v34, 0xCu);
      }
    }

    else
    {
      if (!v23)
      {
        if (v25)
        {
          v30 = v24;
          v31 = [v4 safari_logDescription];
          *v34 = 138543362;
          *&v34[4] = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Storing new account hash with %{public}@", v34, 0xCu);
        }

        v12 = 0;
        goto LABEL_24;
      }

      if (v25)
      {
        v26 = v24;
        v27 = [v4 safari_logDescription];
        *v34 = 138543362;
        *&v34[4] = v27;
        v28 = "Migrating deprecated account hash with %{public}@";
        goto LABEL_19;
      }
    }

    v12 = 1;
LABEL_24:
    v32 = +[NSUserDefaults safari_browserDefaults];
    [v32 setObject:v9 forKey:@"settingsSyncAccountDSIDHash"];

    self->_needsAccountHashCheck = 0;
LABEL_25:
    v17 = v12 ^ 1;

    goto LABEL_26;
  }

  v17 = 0;
LABEL_26:

  return v17;
}

- (void)setNeedsAccountHashCheck
{
  v3 = sub_10000300C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Needs account hash check", v4, 2u);
  }

  self->_needsAccountHashCheck = 1;
}

- (void)beginSyncingInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(CloudSettingSyncCoordinator *)self _beginSyncingInOperationGroup:v6 completionHandlers:v8];
}

- (void)_beginSyncingInOperationGroup:(id)a3 completionHandlers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 safari_logDescription];
    *buf = 138543362;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin syncing with %{public}@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050C2C;
  block[3] = &unk_100132D78;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_continueSyncingAfterSyncingDown:(BOOL)a3 inOperationGroup:(id)a4
{
  v6 = a4;
  if (![(CloudSettingSyncCoordinator *)self _isDataclassEnabledInOperationGroup:v6]|| (+[WBSFeatureAvailability isCustomizationSyncEnabled]& 1) == 0)
  {
    v10 = sub_10000300C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v6 safari_logDescription];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Stopping fetch of settings with %{public}@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    [(CloudSettingSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:0 inOperationGroup:v6];
    goto LABEL_10;
  }

  v7 = sub_10000300C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v6 safari_logDescription];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Have not performed a sync down yet; doing so now with %{public}@", &v13, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _performSyncDownInOperationGroup:v6];
LABEL_10:
}

- (void)_performSyncDownInOperationGroup:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000513EC;
  v5[3] = &unk_100132208;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(CloudSettingSyncCoordinator *)self _continueFetchingSettingsInOperationGroup:v4 completionHandler:v5];
}

- (void)_readServerChangeTokenFromUserDefaultsInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults safari_browserDefaults];
  v6 = [v5 objectForKey:@"customizationSyncServerToken"];

  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
  v8 = v11;
  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = v7;

  if (v8)
  {
    v10 = sub_10000300C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100054648();
    }
  }

  if (!self->_serverChangeToken)
  {
    self->_shouldPerformInitialSyncDown = 1;
  }
}

- (void)_saveServerChangeToken:(id)a3 inOperationGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v15 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];
    v10 = v15;
    if (v10)
    {
      v11 = sub_10000300C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000546F0();
      }
    }

    objc_storeStrong(&self->_serverChangeToken, a3);
    v12 = +[NSUserDefaults safari_browserDefaults];
    [v12 setObject:v9 forKey:@"customizationSyncServerToken"];
  }

  else
  {
    v13 = +[NSUserDefaults safari_browserDefaults];
    [v13 removeObjectForKey:@"customizationSyncServerToken"];

    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = 0;
  }
}

- (void)_continueFetchingSettingsInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CloudSettingSyncCoordinator *)self _readServerChangeTokenFromUserDefaultsInOperationGroup:v6];
  if (self->_isPerformingInitialSyncUp)
  {
    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = 0;
  }

  settingStore = self->_settingStore;
  v10 = self->_serverChangeToken;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000518B8;
  v17[3] = &unk_100132538;
  v17[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000519D4;
  v16[3] = &unk_100132560;
  v16[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051AC4;
  v13[3] = &unk_100133A30;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(CloudSettingStore *)settingStore fetchCloudSettingsRecordChangesSinceServerChangeToken:v10 inOperationGroup:v12 recordChangedBlock:v17 recordWithIDWasDeletedBlock:v16 completionHandler:v13];
}

- (void)_handleExpiredChangeTokenError:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_10000300C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 safari_logDescription];
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Change token is expired; trying a full sync down with %{public}@", &v12, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _saveServerChangeToken:0 inOperationGroup:v7];
  [(CloudSettingSyncCoordinator *)self _continueFetchingSettingsInOperationGroup:v7 completionHandler:v8];
}

- (void)_didFailToSyncWithError:(id)a3 inOperationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000549A0();
  }

  [(CloudSettingSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:v6 inOperationGroup:v7];
}

- (void)_cleanUpAndCallCompletionHandlersWithError:(id)a3 inOperationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_isSynchronizing = 0;
  if (v6)
  {
    [v6 safari_isOrContainsCloudKitMissingZoneError];
  }

  v8 = [(NSMutableArray *)self->_syncingCompletionHandlers copy];
  syncingCompletionHandlers = self->_syncingCompletionHandlers;
  self->_syncingCompletionHandlers = 0;

  if (!self->_didReceiveSyncRequestWhileSyncing)
  {
    v15 = sub_10000300C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v12 = v15;
      v13 = [v7 safari_logDescription];
      *buf = 138543362;
      v21 = v13;
      v14 = "Syncing done, calling completion handler with %{public}@";
      goto LABEL_9;
    }

LABEL_10:
    v18 = v8;
    v19 = v6;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    goto LABEL_11;
  }

  self->_didReceiveSyncRequestWhileSyncing = 0;
  v10 = sub_10000300C();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v11)
    {
      v12 = v10;
      v13 = [v7 safari_logDescription];
      *buf = 138543362;
      v21 = v13;
      v14 = "Not retrying sync after receiving synchronization request during sync since previous sync failed with %{public}@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v14, buf, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v11)
  {
    v16 = v10;
    v17 = [v7 safari_logDescription];
    *buf = 138543362;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Retrying sync after receiving synchronization request during synchronization with %{public}@", buf, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _beginSyncingInOperationGroup:v7 completionHandlers:v8];
LABEL_11:
}

- (void)_pcsIdentitiesDidChangeNotification:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CKIdentityUpdateNotification object:0];

  if (self->_isWaitingForPCSIdentityUpdate)
  {
    self->_isWaitingForPCSIdentityUpdate = 0;
    v5 = sub_10000300C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrying sync after receiving expected PCS identity change notification.", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 pcsIdentitiesDidChangeForCloudSettingSyncCoordinator:self];
    }
  }

  else
  {
    v9 = sub_10000300C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring PCS identity change notification because Customization Sync is not waiting for an identity update", buf, 2u);
    }
  }
}

- (void)saveImageRecord:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving Safari's background image for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v22 = v10;
  v15 = [NSArray arrayWithObjects:&v22 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005299C;
  v18[3] = &unk_100132CD8;
  v19 = v8;
  v20 = self;
  v21 = v9;
  v16 = v9;
  v17 = v8;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:v15 createCloudSettingsZoneIfMissing:0 inOperationGroup:v17 clientChangeTokenData:0 mergeHandler:&stru_100133A70 completionHandler:v18];
}

- (void)saveRecords:(id)a3 inOperationGroup:(id)a4 successCompletionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving setting for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100052D18;
  v17[3] = &unk_100132CD8;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v15 = v9;
  v16 = v8;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:v10 createCloudSettingsZoneIfMissing:0 inOperationGroup:v16 clientChangeTokenData:0 mergeHandler:&stru_100133A90 completionHandler:v17];
}

- (void)savePerSiteRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving Per-Site settings for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10005304C;
  v21[3] = &unk_100133B48;
  v21[4] = self;
  v22 = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000538E0;
  v17[3] = &unk_100132CD8;
  v18 = v22;
  v19 = self;
  v20 = v9;
  v15 = v9;
  v16 = v22;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:v10 createCloudSettingsZoneIfMissing:0 inOperationGroup:v16 clientChangeTokenData:0 mergeHandler:v21 completionHandler:v17];
}

- (id)_perSitePreferencesStore
{
  if (qword_100153FE0 != -1)
  {
    sub_100054CD0();
  }

  v3 = qword_100153FD8;

  return v3;
}

- (void)_savePerSiteCloudKitRecordsToDisk:(id)a3 inOperationGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(CloudSettingSyncCoordinator *)self _perSitePreferencesStore];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100053CA4;
        v15[3] = &unk_100133AF8;
        v15[4] = v12;
        v16 = v7;
        [v13 savePerSiteSettingCloudKitRecordToDisk:v12 completionHandler:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_clearPerSiteSettingsSyncDataInOperationGroup:(id)a3
{
  v4 = a3;
  v5 = sub_10000300C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 safari_logDescription];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Clearing cached Per-Site Settings sync data with %{public}@", buf, 0xCu);
  }

  v8 = [(CloudSettingSyncCoordinator *)self _perSitePreferencesStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100053F0C;
  v10[3] = &unk_100132058;
  v11 = v4;
  v9 = v4;
  [v8 removeAllCloudKitRecordsWithCompletionHandler:v10];
}

- (void)deleteRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Deleting settings from CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100054180;
  v17[3] = &unk_100131A70;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [(CloudSettingStore *)settingStore deleteCloudSettingsRecords:v10 inOperationGroup:v16 completionHandler:v17];
}

- (void)_clearCachedCloudSettingsRecordZoneIfNecessaryForError:(id)a3
{
  if ([a3 safari_isOrContainsCloudKitMissingZoneError])
  {
    settingStore = self->_settingStore;

    [(CloudSettingStore *)settingStore clearCachedCloudSettingsRecordZone];
  }
}

- (void)clearServerChangeToken
{
  v3 = sub_10000300C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached CloudSettings server change token", v6, 2u);
  }

  v4 = +[NSUserDefaults safari_browserDefaults];
  [v4 removeObjectForKey:@"customizationSyncServerToken"];

  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = 0;
}

- (CloudSettingSyncCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
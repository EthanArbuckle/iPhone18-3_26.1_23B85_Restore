@interface CloudBookmarksMigrationCoordinator
- (BOOL)_hasValidDeviceIdentifier;
- (CloudBookmarksMigrationCoordinator)initWithBookmarkStore:(id)a3 databaseAccessor:(id)a4 syncMigrationCoordinator:(id)a5;
- (void)_attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_becameResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_resetToIdleAfterMigrationFailureInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_transitionToMigrationState:(int64_t)a3;
- (void)_tryToBecomeResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4;
- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)a3 inOperationGroup:(id)a4 externalCompletionHandler:(id)a5;
- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)a3 inOperationGroup:(id)a4 externalCompletionHandler:(id)a5;
- (void)invalidateCachedDataclassEnabledness;
- (void)startCoordinatingMigrationInOperationGroup:(id)a3 completionHandler:(id)a4;
@end

@implementation CloudBookmarksMigrationCoordinator

- (CloudBookmarksMigrationCoordinator)initWithBookmarkStore:(id)a3 databaseAccessor:(id)a4 syncMigrationCoordinator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CloudBookmarksMigrationCoordinator;
  v12 = [(CloudBookmarksMigrationCoordinator *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkStore, a3);
    objc_storeStrong(&v13->_databaseAccessor, a4);
    objc_storeStrong(&v13->_syncMigrationCoordinator, a5);
    v14 = v13;
  }

  return v13;
}

- (void)startCoordinatingMigrationInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();
}

- (void)invalidateCachedDataclassEnabledness
{
  v2 = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  [v2 setNeedsDataclassEnabledCheck];
}

- (BOOL)_hasValidDeviceIdentifier
{
  v2 = sub_1000328C4(self->_databaseAccessor);
  v3 = [v2 length] != 0;

  return v3;
}

- (void)_determineCourseOfActionFromLocalStateInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier])
  {
    v8 = [(CloudBookmarksMigrationCoordinator *)self migrationState];
    if (v8 <= 0)
    {
      if (v8 != -1)
      {
        if (v8)
        {
          goto LABEL_23;
        }

LABEL_14:
        v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will attempt secondary migration", v15, 2u);
        }

        [(CloudBookmarksMigrationCoordinator *)self _attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:v6 externalCompletionHandler:v7];
        goto LABEL_23;
      }

      v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10004B67C();
      }

      [(CloudBookmarksMigrationCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:v6 externalCompletionHandler:v7];
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          if (v8 == 3)
          {
            v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Not migrating because we've already migrated", buf, 2u);
            }

            v7[2](v7, 1);
          }

          goto LABEL_23;
        }

        goto LABEL_14;
      }

      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14[0] = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will attempt primary migration", v14, 2u);
      }

      [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationInOperationGroup:v6 externalCompletionHandler:v7];
    }
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004B648();
    }

    v7[2](v7, 0);
  }

LABEL_23:
}

- (void)_attemptLocalMigrationBeforeTryingToBecomeResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Determining eligibility for local-only migration", buf, 2u);
  }

  if (![(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier])
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004B6B0();
    }

    goto LABEL_10;
  }

  v9 = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  v10 = [v9 isDataclassEnabled];

  if ((v10 & 1) == 0)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bailing out from secondary migration without fetching remote migration info because Safari sync is disabled", buf, 2u);
    }

LABEL_10:
    v7[2](v7, 0);
    goto LABEL_11;
  }

  objc_initWeak(buf, self);
  bookmarkStore = self->_bookmarkStore;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000499F0;
  v14[3] = &unk_100133730;
  objc_copyWeak(&v17, buf);
  v16 = v7;
  v15 = v6;
  [(CloudBookmarkStore *)bookmarkStore fetchRemoteMigrationInfoInOperationGroup:v15 withCompletionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
LABEL_11:
}

- (void)_tryToBecomeResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to become responsible for migration by pushing state to the server", v11, 2u);
  }

  if ([(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier])
  {
    v9 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:-[CloudTabGroupSyncCoordinator _bookmarksLog]_0()];
    [v9 setTimeout:30.0];
    [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationWithRetryManager:v9 inOperationGroup:v6 externalCompletionHandler:v7];
  }

  else
  {
    v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004B7B0();
    }

    v7[2](v7, 0);
  }
}

- (void)_tryToBecomeResponsibleForMigrationWithRetryManager:(id)a3 inOperationGroup:(id)a4 externalCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  bookmarkStore = self->_bookmarkStore;
  v12 = sub_1000328C4(self->_databaseAccessor);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100049F9C;
  v16[3] = &unk_100133758;
  objc_copyWeak(&v20, &location);
  v13 = v10;
  v19 = v13;
  v14 = v9;
  v17 = v14;
  v15 = v8;
  v18 = v15;
  [(CloudBookmarkStore *)bookmarkStore setRemoteMigrationState:1 deviceIdentifier:v12 inOperationGroup:v14 completionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_becameResponsibleForMigrationInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Pushed migration state successfully; assuming we are now responsible for migration", buf, 2u);
  }

  v9 = [(CloudBookmarkSyncMigrationCoordinator *)self->_syncMigrationCoordinator accountPropertiesStore];
  v10 = [v9 isDataclassEnabled];

  if (v10)
  {
    v11 = self->_syncMigrationCoordinator;
    v12 = [(CloudBookmarkSyncMigrationCoordinator *)v11 databaseCoordinator];
    v13 = [v12 lockForClient:@"Migration coordinator"];

    if (v13)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10004A5AC;
      v20 = &unk_100132030;
      v21 = v11;
      v22 = v7;
      v14 = objc_retainBlock(&v17);
      [(CloudBookmarksMigrationCoordinator *)self _performMigrationAsPrimaryDevice:1 inOperationGroup:v6 externalCompletionHandler:v14, v17, v18, v19, v20];
    }

    else
    {
      v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004B9C0();
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Bailing out from primary migration because Safari sync is disabled", buf, 2u);
    }

    [(CloudBookmarksMigrationCoordinator *)self _transitionToMigrationState:0];
    (*(v7 + 2))(v7, 0);
  }
}

- (void)_handleFailureToBecomeResponsibleForMigrationDueToConflictInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10004B9F4();
  }

  v9 = [(CloudBookmarksMigrationCoordinator *)self migrationState];
  if (v9 > 0)
  {
    if (v9 == 1)
    {
      [(CloudBookmarksMigrationCoordinator *)self _handlePreemptionInOperationGroup:v6 externalCompletionHandler:v7];
      goto LABEL_13;
    }

    if (v9 == 2)
    {
      [(CloudBookmarksMigrationCoordinator *)self _resetToIdleAfterMigrationFailureInOperationGroup:v6 externalCompletionHandler:v7];
      goto LABEL_13;
    }

    if (v9 != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v9 == -1 || !v9)
  {
LABEL_10:
    v7[2](v7, 0);
  }

LABEL_13:
}

- (void)_tryToResumePendingRemoteMigrationFromMigrationInfo:(id)a3 inOperationGroup:(id)a4 externalCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CloudBookmarksMigrationCoordinator *)self _hasValidDeviceIdentifier])
  {
    v11 = [v8 migratorDeviceIdentifier];
    if (!v11)
    {
      v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004BA5C();
      }
    }

    v13 = sub_1000328C4(self->_databaseAccessor);
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
      v15 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Migration record indicates that we are the migrating device; attempting to resume migration", buf, 2u);
      }

      [(CloudBookmarksMigrationCoordinator *)self _tryToBecomeResponsibleForMigrationInOperationGroup:v9 externalCompletionHandler:v10];
      goto LABEL_26;
    }

    v17 = [v8 serverModificationDate];
    if (v17)
    {
      v18 = +[NSUserDefaults safari_cloudBookmarksDefaults];
      [v18 doubleForKey:@"CloudBookmarksDebugDelayInSecondsBeforeStealingRightToMigrate"];
      v20 = v19;

      v21 = +[NSDate date];
      v22 = v21;
      v23 = -v20;
      if (v20 == 0.0)
      {
        v23 = -604800.0;
      }

      v24 = [v21 dateByAddingTimeInterval:v23];

      v25 = [v17 compare:v24];
      v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (v25 == -1)
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Deleting existing record zone in preparation for stealing right to migrate", buf, 2u);
        }

        bookmarkStore = self->_bookmarkStore;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10004AAA8;
        v32[3] = &unk_100130E78;
        v34 = v10;
        v32[4] = self;
        v33 = v9;
        [(CloudBookmarkStore *)bookmarkStore deleteBookmarksZoneInOperationGroup:v33 completionHandler:v32];

        goto LABEL_25;
      }

      if (v27)
      {
        *buf = 0;
        v28 = "Not stealing right to migrate since migration state was updated recently by another device";
        v29 = v26;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v28, buf, 2u);
      }
    }

    else
    {
      v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v28 = "Not stealing right to migrate since no last modification date was stored in the migration record";
        v29 = v30;
        goto LABEL_20;
      }
    }

    (*(v10 + 2))(v10, 0);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10004BA28();
  }

  (*(v10 + 2))(v10, 0);
LABEL_27:
}

- (void)_resetToIdleAfterMigrationFailureInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CloudBookmarksMigrationCoordinator *)self _transitionToMigrationState:0];
  [(CloudBookmarksMigrationCoordinator *)self _scheduleMigrationRetryIfNeededInOperationGroup:v7 externalCompletionHandler:v6];
}

- (void)_scheduleMigrationRetryIfNeededInOperationGroup:(id)a3 externalCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_numberOfRetryAttempts + 1;
  self->_numberOfRetryAttempts = v8;
  v9 = [(CloudBookmarksMigrationCoordinator *)self _maximumNumberOfRetryAttempts];
  v10 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  v11 = v10;
  if (v8 <= v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scheduling migration retry", buf, 2u);
    }

    objc_initWeak(buf, self);
    [(CloudBookmarksMigrationCoordinator *)self _delayBetweenRetryAttempts];
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AE50;
    block[3] = &unk_100133780;
    objc_copyWeak(&v17, buf);
    v15 = v6;
    v16 = v7;
    dispatch_after(v13, &_dispatch_main_q, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB28();
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)_transitionToMigrationState:(int64_t)a3
{
  v5 = [(CloudBookmarksMigrationCoordinator *)self migrationState];
  if (v5 != a3)
  {
    v6 = v5;
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134218240;
      v9 = v6;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Migration coordinator transitioning from state %zd to state %zd", &v8, 0x16u);
    }

    [(CloudBookmarksMigrationCoordinator *)self setMigrationState:a3];
  }
}

@end
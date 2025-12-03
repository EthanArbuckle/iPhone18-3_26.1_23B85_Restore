@interface PLBackgroundMigrationActivity
+ (id)_backgroundMigrationUniqueID:(const char *)d;
+ (id)_taskRequestForBackgroundMigrationWithIdentifier:(id)identifier;
+ (void)installBackgroundMigrationActivity:(id)activity;
+ (void)registerIncompleteBackgroundMigrationActivity;
- (PLBackgroundMigrationActivity)initWithLibraryBundle:(id)bundle task:(id)task description:(id)description;
- (int64_t)_runTask;
- (void)_runBackgroundMigrationActions;
- (void)_submitProgresssMetricsForCategory:(id)category completedCount:(int64_t)count totalCount:(int64_t)totalCount;
@end

@implementation PLBackgroundMigrationActivity

- (void)_runBackgroundMigrationActions
{
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "running background migration tasks...", buf, 2u);
  }

  _runTask = [(PLBackgroundMigrationActivity *)self _runTask];
  v5 = PLBackendGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (_runTask == 1)
  {
    if (v6)
    {
      v7 = PLStringFromModelMigrationActionResultShort();
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Background migration finished, result: %@", buf, 0xCu);
    }

    [(BGSystemTask *)self->_task setTaskCompleted];
    v8 = +[BGSystemTaskScheduler sharedScheduler];
    identifier = [(BGSystemTask *)self->_task identifier];
    [v8 deregisterTaskWithIdentifier:identifier];
LABEL_13:

    goto LABEL_14;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Expiring background migration", buf, 2u);
  }

  task = self->_task;
  v16 = 0;
  v11 = [(BGSystemTask *)task setTaskExpiredWithRetryAfter:&v16 error:0.0];
  v8 = v16;
  if ((v11 & 1) == 0)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to expire background migration task. Error: %@", buf, 0xCu);
    }

    [(BGSystemTask *)self->_task setTaskCompleted];
    v13 = +[BGSystemTaskScheduler sharedScheduler];
    identifier2 = [(BGSystemTask *)self->_task identifier];
    [v13 deregisterTaskWithIdentifier:identifier2];

    v15 = objc_opt_class();
    identifier = [(PLPhotoLibraryBundle *)self->_bundle libraryURL];
    [v15 installBackgroundMigrationActivity:identifier];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_submitProgresssMetricsForCategory:(id)category completedCount:(int64_t)count totalCount:(int64_t)totalCount
{
  categoryCopy = category;
  v9 = [PLXPCTransaction transaction:"[PLBackgroundMigrationActivity _submitProgresssMetricsForCategory:completedCount:totalCount:]"];
  progressReportQueue = self->_progressReportQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D74;
  block[3] = &unk_10002CFC8;
  block[4] = self;
  v14 = categoryCopy;
  countCopy = count;
  totalCountCopy = totalCount;
  v15 = v9;
  v11 = v9;
  v12 = categoryCopy;
  dispatch_async(progressReportQueue, block);
}

- (int64_t)_runTask
{
  v3 = [PLFileBackedLogger setupWithLibraryIdentifier:0 type:1];
  if (self->_bundle)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000A3FC;
    v28[3] = &unk_10002CF78;
    v28[4] = self;
    v4 = objc_retainBlock(v28);
    bundle = self->_bundle;
    v27 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10000A410;
    v24 = &unk_10002CFA0;
    selfCopy = self;
    v6 = v3;
    v26 = v6;
    v7 = [PLBackgroundModelMigration migrateBackgroundActionsWithPhotoLibraryBundle:bundle logger:v6 error:&v27 reportProgressUsingBlock:v4 continuationHandler:&v21];
    v8 = v27;
    if (v7 == 3)
    {
      v9 = PLMigrationGetLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        if (v6)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          *buf = 0u;
          v32 = 0u;
          v11 = PLMigrationGetLog();
          os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          v29 = 138412290;
          v30 = v8;
          LODWORD(v20) = 12;
          v12 = _os_log_send_and_compose_impl();

          [v6 logWithMessage:v12 fromCodeLocation:"PLBackgroundMigrationActivity.m" type:{53, 16, &v29, v20, v21, v22, v23, v24, selfCopy}];
          if (v12 != buf)
          {
            free(v12);
          }
        }

        else
        {
          v18 = PLMigrationGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to perform background migration tasks. Error: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v13 = PLMigrationGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      if (v3)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        v32 = 0u;
        v15 = PLMigrationGetLog();
        os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        LOWORD(v29) = 0;
        LODWORD(v20) = 2;
        v16 = _os_log_send_and_compose_impl();

        [v3 logWithMessage:v16 fromCodeLocation:"PLBackgroundMigrationActivity.m" type:{56, 16, &v29, v20}];
        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Missing bundle for background migration actions", buf, 2u);
        }
      }
    }

    v7 = 3;
  }

  [v3 close];

  return v7;
}

- (PLBackgroundMigrationActivity)initWithLibraryBundle:(id)bundle task:(id)task description:(id)description
{
  bundleCopy = bundle;
  taskCopy = task;
  v16.receiver = self;
  v16.super_class = PLBackgroundMigrationActivity;
  v10 = [(PLBackgroundMigrationActivity *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bundle, bundle);
    objc_storeStrong(&v11->_task, task);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.photos.migration_activity_report", v12);
    progressReportQueue = v11->_progressReportQueue;
    v11->_progressReportQueue = v13;
  }

  return v11;
}

+ (void)installBackgroundMigrationActivity:(id)activity
{
  activityCopy = activity;
  v5 = [self _backgroundMigrationUniqueID:{objc_msgSend(activityCopy, "fileSystemRepresentation")}];
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"com.apple.%s.migration.%@", "assetsd", v5];
    v7 = [NSString stringWithFormat:@"BackgroundMigrationTasks: Migrate library: %@", v5];
    PLRegisterBackgroundMigrationLibraryURL();
    v8 = +[BGSystemTaskScheduler sharedScheduler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000AA14;
    v23[3] = &unk_10002CFF0;
    v9 = activityCopy;
    v24 = v9;
    v10 = v7;
    v25 = v10;
    v11 = v6;
    v26 = v11;
    selfCopy = self;
    v12 = [v8 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v23];

    if ((v12 & 1) == 0)
    {
      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to register background migration task for library URL %@", buf, 0xCu);
      }
    }

    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Submitting task request for background migration with identifier %@", buf, 0xCu);
    }

    v15 = +[BGSystemTaskScheduler sharedScheduler];
    v16 = [v15 taskRequestForIdentifier:v11];

    if (v16)
    {
      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "A background migration task with identifier %@ is already submitted", buf, 0xCu);
      }
    }

    else
    {
      v18 = +[BGSystemTaskScheduler sharedScheduler];
      v19 = [self _taskRequestForBackgroundMigrationWithIdentifier:v11];
      v22 = 0;
      v20 = [v18 submitTaskRequest:v19 error:&v22];
      v17 = v22;

      if ((v20 & 1) == 0)
      {
        v21 = PLBackendGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to submit task request for background migration with identifier %@. Error: %@", buf, 0x16u);
        }
      }
    }
  }
}

+ (void)registerIncompleteBackgroundMigrationActivity
{
  v2 = PLRegisteredBackgroundMigrationPaths();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [NSURL fileURLWithPath:*(*(&v8 + 1) + 8 * v6) isDirectory:1];
        [PLBackgroundMigrationActivity installBackgroundMigrationActivity:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

+ (id)_backgroundMigrationUniqueID:(const char *)d
{
  memset(&v9, 0, sizeof(v9));
  if (stat(d, &v9))
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 67109378;
      v11 = v4;
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to obtain uniqueID for background migration registration. Error: [%d] %s", buf, 0x12u);
    }

    v7 = 0;
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%d.%llu", v9.st_dev, v9.st_ino];
  }

  return v7;
}

+ (id)_taskRequestForBackgroundMigrationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:identifierCopy];

  v5 = +[PLConcurrencyLimiter backgroundSystemTasksConcurrencyGroupName];
  [v4 setGroupName:v5];

  [v4 setGroupConcurrencyLimit:{+[PLConcurrencyLimiter backgroundSystemTasksConcurrencyLimit](PLConcurrencyLimiter, "backgroundSystemTasksConcurrencyLimit")}];
  [v4 setPriority:1];
  [v4 setTrySchedulingBefore:1800.0];
  [v4 setRequiresUserInactivity:1];

  return v4;
}

@end
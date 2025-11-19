@interface PLLibraryRepairSupport
- (BOOL)_isValidProcessingURL:(id)a3 interruptedPaths:(id)a4;
- (BOOL)_runCriticalPeriodicMaintenanceTasksDeferActivityIfRequired:(id)a3;
- (BOOL)_shouldDeferTaskIfRequiredForClassName:(id)a3;
- (BOOL)_updateDeferredCriticalMaintenanceTaskMarker:(id)a3;
- (BOOL)_updateMaintenanceTaskMarker:(id)a3 key:(id)a4 value:(id)a5;
- (BOOL)shouldRunLocationOfInterestUpdateTaskWithGlobalValues:(id)a3;
- (PLLibraryRepairSupport)initWithTask:(id)a3 description:(id)a4;
- (id)_buildIncompleteMaintenanceTaskPathsKey;
- (id)_interruptedProcessingURLs;
- (id)_registeredCriticalMaintenaceTaskClasses;
- (id)_registeredMaintenanceTaskClasses;
- (unint64_t)_indexOfRegisteredMaintenanceTaskForMarker:(id)a3;
- (void)_maintainLibrary:(id)a3 executionBlock:(id)a4;
- (void)_saveInterruptedProcessingURLs:(id)a3;
- (void)runCuratedLibraryPeriodicMaintenanceTasksWithProgressReportBlock:(id)a3;
- (void)runPeriodicMaintenanceActivityOnAllLibrariesWithExecutionBlock:(id)a3;
- (void)runPeriodicMaintenanceWithProgressReportBlock:(id)a3;
@end

@implementation PLLibraryRepairSupport

- (void)runPeriodicMaintenanceActivityOnAllLibrariesWithExecutionBlock:(id)a3
{
  v38 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    description = self->_description;
    *buf = 138543362;
    v59 = description;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Maintenance task: processing all libraries for %{public}@", buf, 0xCu);
  }

  v37 = +[PLLibraryBookmarkManager sharedBookmarkManager];
  v6 = [v37 allKnownLibraryURLs];
  v7 = [PLPhotoLibraryPathManager wellKnownPhotoLibraryURLForIdentifier:1];
  v57[0] = v7;
  v8 = [PLPhotoLibraryPathManager wellKnownPhotoLibraryURLForIdentifier:3];
  v57[1] = v8;
  v9 = [NSArray arrayWithObjects:v57 count:2];

  v10 = objc_alloc_init(NSMutableSet);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v50 + 1) + 8 * i) path];
        v17 = [PLFileUtilities realPathForPath:v16 error:0];

        if (v17)
        {
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc_init(NSMutableArray);
  v19 = [(PLLibraryRepairSupport *)self _interruptedProcessingURLs];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v20 = v11;
  v21 = v18;
  obj = v20;
  v22 = [v20 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v46 + 1) + 8 * j);
        if ([(PLLibraryRepairSupport *)self _isValidProcessingURL:v26 interruptedPaths:v19])
        {
          [v21 addObject:v26];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v23);
  }

  v39 = v21;
  v40 = v10;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v6;
  v28 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v43;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v42 + 1) + 8 * k);
        if ([(PLLibraryRepairSupport *)self _isValidProcessingURL:v32 interruptedPaths:v19])
        {
          v33 = [v32 path];
          v34 = [PLFileUtilities realPathForPath:v33 error:0];

          if (v34 && ([v40 containsObject:v34] & 1) == 0)
          {
            [v39 addObject:v32];
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v29);
  }

  [(PLLibraryRepairSupport *)self _saveInterruptedProcessingURLs:v39];
  v35 = PLBackendGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v39 count];
    *buf = 134217984;
    v59 = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Maintenance task: processing %td libraries", buf, 0xCu);
  }

  [(PLLibraryRepairSupport *)self _maintainLibrary:v39 executionBlock:v38];
}

- (void)_maintainLibrary:(id)a3 executionBlock:(id)a4
{
  v6 = a3;
  v31 = a4;
  v7 = [NSMutableOrderedSet orderedSetWithArray:v6];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v30 = (v31 + 2);
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v35 + 1) + 8 * v11);
      if ([(PLLibraryRepairSupport *)self shouldDefer])
      {
        goto LABEL_23;
      }

      v13 = PLBackendGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v40 = v12;
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Maintain library at URL: %@, remaining URLs: %@", buf, 0x16u);
      }

      v34 = 0;
      v14 = [PLLibraryRepairSupportRegistration checkLibraryIsReadyForProcessing:v12 libraryBundle:&v34];
      v15 = v34;
      [(PLLibraryRepairSupport *)self setBundle:v15];
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v40 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Maintain library: readyForMaintenance:%td", buf, 0xCu);
      }

      if (v14 <= 6)
      {
        break;
      }

LABEL_17:

      if (v9 == ++v11)
      {
        v21 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
        v9 = v21;
        if (v21)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }
    }

    if (((1 << v14) & 0x3B) != 0)
    {
      [(NSString *)v7 removeObject:v12];
      v17 = [(NSString *)v7 array];
      [(PLLibraryRepairSupport *)self _saveInterruptedProcessingURLs:v17];
    }

    else if (v14 != 2)
    {
      v31[2](v31, self);
      if ([(PLLibraryRepairSupport *)self shouldDefer])
      {
        goto LABEL_17;
      }

      [(NSString *)v7 removeObject:v12];
      v18 = [(NSString *)v7 array];
      [(PLLibraryRepairSupport *)self _saveInterruptedProcessingURLs:v18];
      goto LABEL_16;
    }

    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      description = self->_description;
      v20 = [(PLLibraryRepairSupport *)self bundle];
      *buf = 134218498;
      v40 = v14;
      v41 = 2114;
      v42 = description;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error (%ld) activating library for maintenance tasks [%{public}@] for library bundle %@", buf, 0x20u);
    }

LABEL_16:

    goto LABEL_17;
  }

LABEL_23:

  v22 = [(NSString *)v7 count];
  v23 = PLBackendGetLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v25 = [(NSString *)v7 count];
      *buf = 134218242;
      v40 = v25;
      v41 = 2112;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Defer maintenance tasks operations on %tu libraries: %@", buf, 0x16u);
    }

    task = self->_task;
    v33 = 0;
    v27 = [(BGSystemTask *)task setTaskExpiredWithRetryAfter:&v33 error:0.0];
    v28 = v33;
    if ((v27 & 1) == 0)
    {
      v29 = PLBackendGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to expire maintenance task. Error: %@", buf, 0xCu);
      }

      [(BGSystemTask *)self->_task setTaskCompleted];
    }
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Done maintenance tasks for all libraries", buf, 2u);
    }

    [(BGSystemTask *)self->_task setTaskCompleted];
  }
}

- (BOOL)_updateDeferredCriticalMaintenanceTaskMarker:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  LOBYTE(self) = [(PLLibraryRepairSupport *)self _updateMaintenanceTaskMarker:v4 key:@"PLDeferredCriticalMaintenanceTask" value:v5];

  return self;
}

- (BOOL)_updateMaintenanceTaskMarker:(id)a3 key:(id)a4 value:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13 = 0;
  v9 = [a3 setValue:v8 forKeyPath:v7 error:&v13];
  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error updating %{public}@ with value %{public}@. Error: %@", buf, 0x20u);
    }
  }

  return v9;
}

- (BOOL)_isValidProcessingURL:(id)a3 interruptedPaths:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v5 path];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_interruptedProcessingURLs
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [(PLLibraryRepairSupport *)self _buildIncompleteMaintenanceTaskPathsKey];
  v5 = [v3 arrayForKey:v4];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

- (void)_saveInterruptedProcessingURLs:(id)a3
{
  v6 = [a3 mutableArrayValueForKeyPath:@"self.path"];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(PLLibraryRepairSupport *)self _buildIncompleteMaintenanceTaskPathsKey];
  [v4 setObject:v6 forKey:v5];
}

- (id)_buildIncompleteMaintenanceTaskPathsKey
{
  v2 = [(BGSystemTask *)self->_task identifier];
  v3 = [v2 componentsSeparatedByString:@"."];
  v4 = [v3 lastObject];
  v5 = [@"PLIncompleteMaintenanceTaskPaths" stringByAppendingPathExtension:v4];

  return v5;
}

- (void)runPeriodicMaintenanceWithProgressReportBlock:(id)a3
{
  v4 = a3;
  v5 = [(PLLibraryRepairSupport *)self bundle];
  v6 = [v5 libraryServicesManager];
  v7 = [v6 wellKnownPhotoLibraryIdentifier];

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "running periodic maintenance tasks [library identifier: %ld]...", buf, 0xCu);
  }

  v9 = [(PLLibraryRepairSupport *)self _registeredMaintenanceTaskClasses];
  v10 = [(PLLibraryRepairSupport *)self bundle];
  v11 = [v10 libraryURL];
  v12 = [PLAppPrivateData appPrivateDataForLibraryURL:v11];

  v13 = [v12 valueForKey:@"PLDeferredMaintenanceTask"];
  v38 = v12;
  v14 = [(PLLibraryRepairSupport *)self _runCriticalPeriodicMaintenanceTasksDeferActivityIfRequired:v12];
  v15 = [(PLLibraryRepairSupport *)self _indexOfRegisteredMaintenanceTaskForMarker:v13];
  v16 = 0;
  if (v15 >= [v9 count] || (v14 & 1) != 0)
  {
    goto LABEL_23;
  }

  v34 = v13;
  v37 = v4;
  v35 = v9;
  v36 = self;
  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc([v9 objectAtIndexedSubscript:v15]);
    v19 = [(PLLibraryRepairSupport *)self bundle];
    v20 = [v18 initWithLibraryBundle:v19];

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v14 = [(PLLibraryRepairSupport *)self _updateDeferredMaintenanceTaskMarker:v38 value:v22];
    if ((v14 & 1) == 0)
    {
      break;
    }

    if ([(PLLibraryRepairSupport *)self _shouldDeferTaskIfRequiredForClassName:v22])
    {
      goto LABEL_21;
    }

    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Starting maintenance task %{public}@", buf, 0xCu);
    }

    v24 = +[PLTimedPerfCheck start];
    v25 = +[NSDate now];
    v26 = [v20 runTaskWithTransaction:self->_transaction];
    v27 = [v24 perfCheckLogStringWithPerfCheckInfo:0];
    v28 = PLBackendGetLog();
    v29 = v28;
    if (v26)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v40 = v22;
        v41 = 2114;
        v42 = v27;
        v30 = v29;
        v31 = OS_LOG_TYPE_DEFAULT;
        v32 = "Completed maintenance task %{public}@%{public}@";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v30, v31, v32, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v40 = v22;
      v41 = 2114;
      v42 = v27;
      v30 = v29;
      v31 = OS_LOG_TYPE_ERROR;
      v32 = "Failed maintenance task %{public}@%{public}@";
      goto LABEL_15;
    }

    if (v37)
    {
      v33 = +[NSDate now];
      v37[2](v37, v25, v33, v22, v26);
    }

    objc_autoreleasePoolPop(v17);
    ++v15;
    v9 = v35;
    self = v36;
    if (v15 >= [v35 count])
    {
      v16 = 0;
      v14 = 0;
      goto LABEL_22;
    }
  }

  v38 = 0;
LABEL_21:
  v16 = v14 ^ 1;

  objc_autoreleasePoolPop(v17);
LABEL_22:
  v4 = v37;
  v13 = v34;
LABEL_23:
  if ((v16 & 1) == 0 && (v14 & 1) == 0)
  {
    [(PLLibraryRepairSupport *)self _updateDeferredMaintenanceTaskMarker:v38 value:0];
  }

  [(PLXPCTransaction *)self->_transaction stillAlive];
}

- (void)runCuratedLibraryPeriodicMaintenanceTasksWithProgressReportBlock:(id)a3
{
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "running curated library periodic maintenance tasks...", v15, 2u);
  }

  v6 = [(PLLibraryRepairSupport *)self bundle];
  v7 = [v6 libraryServicesManager];

  v8 = [v7 momentGenerationDataManager];
  v9 = [PLGlobalValues alloc];
  v10 = [v8 managedObjectContext];
  v11 = [v9 initWithManagedObjectContext:v10];

  v12 = [(PLLibraryRepairSupport *)self shouldRunLocationOfInterestUpdateTaskWithGlobalValues:v11];
  if (v12)
  {
    v13 = 45;
  }

  else
  {
    v13 = 13;
  }

  [v8 runPeriodicMaintenanceTasks:v13 withTransaction:self->_transaction progressReportBlock:v4];

  if (v12)
  {
    v14 = +[NSDate date];
    [v11 setLocationOfInterestUpdateDate:v14];
  }
}

- (BOOL)shouldRunLocationOfInterestUpdateTaskWithGlobalValues:(id)a3
{
  v3 = [a3 locationOfInterestUpdateDate];
  if (v3)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;

    v7 = v6 > 604800.0;
    v8 = PLMomentsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (v6 > 604800.0)
      {
        v9 = @"YES";
      }

      v10 = v9;
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "shouldRunLocationOfInterestUpdateTask: %{public}@, time since last run: %.0f", &v12, 0x16u);
    }
  }

  else
  {
    v8 = PLMomentsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "shouldRunLocationOfInterestUpdateTask: YES, lastRunDate is nil", &v12, 2u);
    }

    v7 = 1;
  }

  return v7;
}

- (BOOL)_runCriticalPeriodicMaintenanceTasksDeferActivityIfRequired:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"PLDeferredCriticalMaintenanceTask"];
  v6 = v5;
  if (v5 && ([v5 timeIntervalSinceNow], fabs(v7) < 86400.0))
  {
    v8 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9 = [(PLLibraryRepairSupport *)self _registeredCriticalMaintenaceTaskClasses];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006884;
    v11[3] = &unk_10002CE58;
    v11[4] = self;
    v11[5] = &v12;
    [v9 enumerateObjectsUsingBlock:v11];

    if (v13[3])
    {
      v8 = 1;
    }

    else
    {
      [(PLLibraryRepairSupport *)self _updateDeferredCriticalMaintenanceTaskMarker:v4];
      v8 = *(v13 + 24);
    }

    _Block_object_dispose(&v12, 8);
  }

  return v8 & 1;
}

- (BOOL)_shouldDeferTaskIfRequiredForClassName:(id)a3
{
  v4 = a3;
  if ([(PLLibraryRepairSupport *)self shouldDefer])
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Defer processing of maintenance task: %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    v6 = [(PLLibraryRepairSupport *)self bundle];
    v7 = [v6 isShuttingDown];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PLLibraryRepairSupport *)self bundle];
      v9 = [v8 shutdownReason];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Maintenance task early termination due to library shutdown. Reason: %{public}@", &v12, 0xCu);
    }
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (unint64_t)_indexOfRegisteredMaintenanceTaskForMarker:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PLLibraryRepairSupport *)self _registeredMaintenanceTaskClasses];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006CEC;
    v9[3] = &unk_10002CE30;
    v10 = v4;
    v6 = [v5 indexOfObjectPassingTest:v9];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_registeredMaintenanceTaskClasses
{
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v10 count:21];
  v4 = [v3 mutableCopy];
  v5 = [(PLLibraryRepairSupport *)self bundle];
  v6 = [v5 libraryServicesManager];
  v7 = [v6 isSyndicationPhotoLibrary];

  if ((v7 & 1) == 0)
  {
    [v4 addObject:objc_opt_class()];
  }

  v8 = [v4 copy];

  return v8;
}

- (id)_registeredCriticalMaintenaceTaskClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (PLLibraryRepairSupport)initWithTask:(id)a3 description:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PLLibraryRepairSupport;
  v9 = [(PLLibraryRepairSupport *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, a3);
    objc_storeStrong(&v10->_description, a4);
    v11 = [PLXPCTransaction transaction:[(NSString *)v10->_description UTF8String]];
    transaction = v10->_transaction;
    v10->_transaction = v11;

    v10->_shouldDefer = 0;
  }

  return v10;
}

@end
@interface PLSpotlightDaemonClientHandler
- (BOOL)_isValidProtectionClass:(id)class;
- (BOOL)_isValidReindexingRequestWithBundleID:(id)d;
- (id)pathManager;
- (id)systemPhotoLibraryWithName:(const char *)name;
- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class reason:(id)reason acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
@end

@implementation PLSpotlightDaemonClientHandler

- (void)provideFileURLForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request from Spotlight to provideFileURLForBundleID - no action is implemented by Photos in response to this request", v10, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)provideDataForBundleID:(id)d protectionClass:(id)class itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier options:(int64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request from Spotlight to provideDataForBundleID - no action is implemented by Photos in response to this request", v10, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  handlerCopy = handler;
  if ([(PLSpotlightDaemonClientHandler *)self _isValidProtectionClass:classCopy])
  {
    pathManager = [(PLSpotlightDaemonClientHandler *)self pathManager];
    if (pathManager)
    {
      v15 = [(PLSpotlightDaemonClientHandler *)self _isValidReindexingRequestWithBundleID:dCopy];
      v16 = PLSearchBackendDonationsGetLog();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412802;
          v23 = identifiersCopy;
          v24 = 2112;
          v25 = dCopy;
          v26 = 2114;
          v27 = classCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request to reindex searchable items for Core Spotlight: %@ for bundleID: %@, protection class: %{public}@", &v22, 0x20u);
        }

        [PLAutoBugCapture captureSpotlightClientHandlerReindexItemsWithIdentifiers:identifiersCopy reason:0 completion:&stru_10002D0B8];
        v18 = [PLSpotlightReindexing recordReindexIdentifiersWithIdentifiers:identifiersCopy bundleID:dCopy];
        if ([v18 isFailure])
        {
          v19 = PLSearchBackendDonationsGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            error = [v18 error];
            v22 = 138412546;
            v23 = identifiersCopy;
            v24 = 2112;
            v25 = error;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Failed to record reindex searchable items: %@ with error: %@", &v22, 0x16u);
          }
        }

        handlerCopy[2](handlerCopy);

        goto LABEL_18;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543362;
        v23 = identifiersCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex searchable items with identifiers: %{public}@", &v22, 0xCu);
      }
    }

    handlerCopy[2](handlerCopy);
LABEL_18:

    goto LABEL_19;
  }

  v21 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 138543618;
    v23 = classCopy;
    v24 = 2112;
    v25 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex searchable items with identifiers for unsupported protectionClass: %{public}@, identifiers: %@", &v22, 0x16u);
  }

  handlerCopy[2](handlerCopy);
LABEL_19:
}

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class reason:(id)reason acknowledgementHandler:(id)handler
{
  dCopy = d;
  classCopy = class;
  reasonCopy = reason;
  handlerCopy = handler;
  if ([(PLSpotlightDaemonClientHandler *)self _isValidProtectionClass:classCopy])
  {
    pathManager = [(PLSpotlightDaemonClientHandler *)self pathManager];
    if (pathManager)
    {
      if ([(PLSpotlightDaemonClientHandler *)self _isValidReindexingRequestWithBundleID:dCopy])
      {
        v15 = PLSearchBackendDonationsGetLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (reasonCopy)
        {
          if (v16)
          {
            *buf = 138543874;
            v43 = dCopy;
            v44 = 2114;
            v45 = reasonCopy;
            v46 = 2114;
            v47 = classCopy;
            v17 = "SpotlightDaemonClient: Received request to reindex all searchable items for Core Spotlight for bundleID: %{public}@, reason: %{public}@, protection class: %{public}@";
            v18 = v15;
            v19 = 32;
LABEL_18:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
          }
        }

        else if (v16)
        {
          *buf = 138543618;
          v43 = dCopy;
          v44 = 2114;
          v45 = classCopy;
          v17 = "SpotlightDaemonClient: Received request to reindex all searchable items for Core Spotlight for bundleID: %{public}@, protection class: %{public}@";
          v18 = v15;
          v19 = 22;
          goto LABEL_18;
        }

        [PLAutoBugCapture captureSpotlightClientHandlerReindexAllItemsWithReason:reasonCopy completion:&stru_10002D098];
        v25 = [PLSpotlightReindexing recordReindexAllItemsForBundleID:dCopy reindexReason:reasonCopy];
        if ([v25 isFailure])
        {
          v26 = PLSearchBackendDonationsGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            error = [v25 error];
            *buf = 138412290;
            v43 = error;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Failed to record reindex all searchable items with error: %@", buf, 0xCu);
          }
        }

        v28 = [(PLSpotlightDaemonClientHandler *)self systemPhotoLibraryWithName:"[PLSpotlightDaemonClientHandler reindexAllItemsForBundleID:protectionClass:reason:acknowledgementHandler:]"];
        v29 = PLSearchBackendDonationsGetLog();
        v30 = v29;
        if (v28)
        {
          v39 = v25;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: in reindexAllItemsForBundleID, dropping search index in availability computer", buf, 2u);
          }

          v40 = pathManager;

          libraryServicesManager = [v28 libraryServicesManager];
          availabilityComputer = [libraryServicesManager availabilityComputer];
          v41 = 0;
          v33 = [availabilityComputer didDropSearchIndexForPhotoLibrary:v28 error:&v41];
          v30 = v41;

          if ((v33 & 1) == 0)
          {
            v34 = PLSearchBackendDonationsGetLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v30;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Failed to update feature availability after Spotlight reindex request, error: %@", buf, 0xCu);
            }
          }

          libraryServicesManager2 = [v28 libraryServicesManager];
          backgroundJobService = [libraryServicesManager2 backgroundJobService];
          libraryBundle = [v28 libraryBundle];
          v38 = +[PLBackgroundJobWorkerTypes maskForSpotlightReindexing];
          [backgroundJobService signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v38];

          v25 = v39;
          pathManager = v40;
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "PLSpotlightDaemonClientHandler failed to open system photo library", buf, 2u);
        }

        handlerCopy[2](handlerCopy);
        goto LABEL_34;
      }

      v21 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = dCopy;
        v22 = "SpotlightDaemonClient: Aborting unexpected request to reindex all searchable items with invalid bundleID: %{public}@";
        v23 = v21;
        v24 = 12;
        goto LABEL_14;
      }
    }

    else
    {
      v21 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v22 = "SpotlightDaemonClient: Aborting request to reindex all searchable items since pathManager is unexpectedly nil";
        v23 = v21;
        v24 = 2;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }

    handlerCopy[2](handlerCopy);
LABEL_34:

    goto LABEL_35;
  }

  v20 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v43 = classCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex all searchable items for unsupported protectionClass: %{public}@", buf, 0xCu);
  }

  handlerCopy[2](handlerCopy);
LABEL_35:
}

- (BOOL)_isValidProtectionClass:(id)class
{
  classCopy = class;
  v4 = PLSearchFileProtectionTypes();
  v5 = [v4 containsObject:classCopy];

  return v5;
}

- (BOOL)_isValidReindexingRequestWithBundleID:(id)d
{
  dCopy = d;
  v4 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
  v5 = [dCopy isEqualToString:v4];

  if (v5)
  {
    if (!+[PLSpotlightDonationUtilities spotlightPrivateIndexEnabled])
    {
      v10 = 1;
      goto LABEL_10;
    }

    v6 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      v7 = "SpotlightDaemonClient: Unexpected request to reindex searchable items for Spotlight managed index";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    v6 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = dCopy;
      v7 = "SpotlightDaemonClient: Unexpected request to reindex searchable items for bundleID: %@";
      v8 = v6;
      v9 = 12;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)systemPhotoLibraryWithName:(const char *)name
{
  v9 = 0;
  v4 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    databaseContext = [v4 databaseContext];
    v7 = [databaseContext newShortLivedLibraryWithName:name];
  }

  else
  {
    databaseContext = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(databaseContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[PLSpotlightDaemonClientHandler systemPhotoLibraryWithName:]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, databaseContext, OS_LOG_TYPE_ERROR, "%s unable to get running LSM: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)pathManager
{
  v7 = 0;
  v2 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v7];
  v3 = v7;
  if (!v2)
  {
    v4 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[PLSpotlightDaemonClientHandler pathManager]";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s unable to get running LSM: %@", buf, 0x16u);
    }
  }

  pathManager = [v2 pathManager];

  return pathManager;
}

@end
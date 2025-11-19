@interface PLSpotlightDaemonClientHandler
- (BOOL)_isValidProtectionClass:(id)a3;
- (BOOL)_isValidReindexingRequestWithBundleID:(id)a3;
- (id)pathManager;
- (id)systemPhotoLibraryWithName:(const char *)a3;
- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 reason:(id)a5 acknowledgementHandler:(id)a6;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
@end

@implementation PLSpotlightDaemonClientHandler

- (void)provideFileURLForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request from Spotlight to provideFileURLForBundleID - no action is implemented by Photos in response to this request", v10, 2u);
  }

  (*(v8 + 2))(v8, 0, 0);
}

- (void)provideDataForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifier:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request from Spotlight to provideDataForBundleID - no action is implemented by Photos in response to this request", v10, 2u);
  }

  (*(v8 + 2))(v8, 0, 0);
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PLSpotlightDaemonClientHandler *)self _isValidProtectionClass:v12])
  {
    v14 = [(PLSpotlightDaemonClientHandler *)self pathManager];
    if (v14)
    {
      v15 = [(PLSpotlightDaemonClientHandler *)self _isValidReindexingRequestWithBundleID:v11];
      v16 = PLSearchBackendDonationsGetLog();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412802;
          v23 = v10;
          v24 = 2112;
          v25 = v11;
          v26 = 2114;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SpotlightDaemonClient: Received request to reindex searchable items for Core Spotlight: %@ for bundleID: %@, protection class: %{public}@", &v22, 0x20u);
        }

        [PLAutoBugCapture captureSpotlightClientHandlerReindexItemsWithIdentifiers:v10 reason:0 completion:&stru_10002D0B8];
        v18 = [PLSpotlightReindexing recordReindexIdentifiersWithIdentifiers:v10 bundleID:v11];
        if ([v18 isFailure])
        {
          v19 = PLSearchBackendDonationsGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [v18 error];
            v22 = 138412546;
            v23 = v10;
            v24 = 2112;
            v25 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Failed to record reindex searchable items: %@ with error: %@", &v22, 0x16u);
          }
        }

        v13[2](v13);

        goto LABEL_18;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543362;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex searchable items with identifiers: %{public}@", &v22, 0xCu);
      }
    }

    v13[2](v13);
LABEL_18:

    goto LABEL_19;
  }

  v21 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = 138543618;
    v23 = v12;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex searchable items with identifiers for unsupported protectionClass: %{public}@, identifiers: %@", &v22, 0x16u);
  }

  v13[2](v13);
LABEL_19:
}

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 reason:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PLSpotlightDaemonClientHandler *)self _isValidProtectionClass:v11])
  {
    v14 = [(PLSpotlightDaemonClientHandler *)self pathManager];
    if (v14)
    {
      if ([(PLSpotlightDaemonClientHandler *)self _isValidReindexingRequestWithBundleID:v10])
      {
        v15 = PLSearchBackendDonationsGetLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v16)
          {
            *buf = 138543874;
            v43 = v10;
            v44 = 2114;
            v45 = v12;
            v46 = 2114;
            v47 = v11;
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
          v43 = v10;
          v44 = 2114;
          v45 = v11;
          v17 = "SpotlightDaemonClient: Received request to reindex all searchable items for Core Spotlight for bundleID: %{public}@, protection class: %{public}@";
          v18 = v15;
          v19 = 22;
          goto LABEL_18;
        }

        [PLAutoBugCapture captureSpotlightClientHandlerReindexAllItemsWithReason:v12 completion:&stru_10002D098];
        v25 = [PLSpotlightReindexing recordReindexAllItemsForBundleID:v10 reindexReason:v12];
        if ([v25 isFailure])
        {
          v26 = PLSearchBackendDonationsGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [v25 error];
            *buf = 138412290;
            v43 = v27;
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

          v40 = v14;

          v31 = [v28 libraryServicesManager];
          v32 = [v31 availabilityComputer];
          v41 = 0;
          v33 = [v32 didDropSearchIndexForPhotoLibrary:v28 error:&v41];
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

          v35 = [v28 libraryServicesManager];
          v36 = [v35 backgroundJobService];
          v37 = [v28 libraryBundle];
          v38 = +[PLBackgroundJobWorkerTypes maskForSpotlightReindexing];
          [v36 signalBackgroundProcessingNeededOnBundle:v37 workerTypes:v38];

          v25 = v39;
          v14 = v40;
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "PLSpotlightDaemonClientHandler failed to open system photo library", buf, 2u);
        }

        v13[2](v13);
        goto LABEL_34;
      }

      v21 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = v10;
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

    v13[2](v13);
LABEL_34:

    goto LABEL_35;
  }

  v20 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v43 = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "SpotlightDaemonClient: Aborting unexpected request to reindex all searchable items for unsupported protectionClass: %{public}@", buf, 0xCu);
  }

  v13[2](v13);
LABEL_35:
}

- (BOOL)_isValidProtectionClass:(id)a3
{
  v3 = a3;
  v4 = PLSearchFileProtectionTypes();
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isValidReindexingRequestWithBundleID:(id)a3
{
  v3 = a3;
  v4 = +[PLSpotlightDonationUtilities photosBundleIdentifier];
  v5 = [v3 isEqualToString:v4];

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
      v13 = v3;
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

- (id)systemPhotoLibraryWithName:(const char *)a3
{
  v9 = 0;
  v4 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 databaseContext];
    v7 = [v6 newShortLivedLibraryWithName:a3];
  }

  else
  {
    v6 = PLSearchBackendDonationsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[PLSpotlightDaemonClientHandler systemPhotoLibraryWithName:]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s unable to get running LSM: %@", buf, 0x16u);
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

  v5 = [v2 pathManager];

  return v5;
}

@end
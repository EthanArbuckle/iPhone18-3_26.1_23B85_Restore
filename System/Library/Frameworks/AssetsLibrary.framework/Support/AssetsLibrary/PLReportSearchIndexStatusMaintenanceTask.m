@interface PLReportSearchIndexStatusMaintenanceTask
+ (void)_getCountOfAssetsInSpotlightForPhotoLibrary:(id)a3 completion:(id)a4;
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLReportSearchIndexStatusMaintenanceTask

+ (void)_getCountOfAssetsInSpotlightForPhotoLibrary:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLReportSearchIndexStatusMaintenanceTask.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v9 = objc_alloc_init(CSSearchQueryContext);
  v35 = PLMobileSlideshowBundleId;
  v10 = [NSArray arrayWithObjects:&v35 count:1];
  [v9 setBundleIDs:v10];

  [v9 setDisableBlockingOnIndex:1];
  v11 = [NSString stringWithFormat:@"%@ == %@", MDItemPhotosResultType, PLSpotlightSearchResultContentTypeAsset];
  v12 = [v7 libraryServicesManager];
  v13 = +[PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:](PLSpotlightDonationUtilities, "shouldUseSpotlightPrivateIndexForLibraryIdentifier:", [v12 wellKnownPhotoLibraryIdentifier]);

  if (v13)
  {
    v14 = [v7 pathManager];
    v15 = [v14 spotlightSearchIndexPath];

    v16 = [[CSManagedSearchQuery alloc] initWithPath:v15 queryString:v11 context:v9];
  }

  else
  {
    v16 = [[CSSearchQuery alloc] initWithQueryString:v11 queryContext:v9];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000136B0;
  v33 = sub_1000136C0;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17 = dispatch_semaphore_create(0);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000136C8;
  v24[3] = &unk_10002D4A8;
  v24[4] = &v25;
  [v16 setFoundItemsHandler:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100013704;
  v21[3] = &unk_10002D480;
  v23 = &v29;
  v18 = v17;
  v22 = v18;
  [v16 setCompletionHandler:v21];
  [v16 start];
  v19 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v18, v19);
  v8[2](v8, v26[3], v30[5]);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

- (BOOL)runTaskWithTransaction:(id)a3
{
  v47 = a3;
  v4 = [(PLMaintenanceTask *)self photoLibrary];
  v5 = [v4 libraryServicesManager];
  v6 = [v5 wellKnownPhotoLibraryIdentifier];

  if (v6 != 3)
  {
    v46 = v6;
    v7 = PLSearchBackendIndexStatusMaintenanceTaskGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking Search Index Status.", buf, 2u);
    }

    v8 = objc_alloc_init(PLCoreAnalyticsEventManager);
    v9 = [NSNumber numberWithInteger:v6];
    v10 = PLCoreAnalyticsSearchIndexStatusEvent;
    [v8 setPayloadValue:v9 forKey:PLCoreAnalyticsSearchIndexStatusPhotoLibraryWellKnownIdentifierKey onEventWithName:PLCoreAnalyticsSearchIndexStatusEvent];

    v11 = [v4 globalValues];
    v12 = [v11 searchIndexSpotlightClientStateMissingCount];
    v44 = [v12 unsignedIntegerValue];

    v13 = [NSNumber numberWithUnsignedInteger:v44];
    [v8 setPayloadValue:v13 forKey:PLCoreAnalyticsSearchIndexStatusClientStateMissingCountKey onEventWithName:v10];

    v14 = [v11 searchIndexSpotlightClientStateMismatchedCount];
    v43 = [v14 unsignedIntegerValue];

    v15 = [NSNumber numberWithUnsignedInteger:v43];
    [v8 setPayloadValue:v15 forKey:PLCoreAnalyticsSearchIndexStatusClientStateMismatchedCountKey onEventWithName:v10];

    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100013E2C;
    v53[3] = &unk_10002D408;
    v16 = v4;
    v54 = v16;
    v55 = &v61;
    v56 = &v57;
    [v16 performBlockAndWait:v53];
    v42 = v58[3] + v62[3];
    v17 = [NSNumber numberWithUnsignedInteger:?];
    [v8 setPayloadValue:v17 forKey:PLCoreAnalyticsSearchIndexStatusTotalAssetCountKey onEventWithName:v10];

    v18 = [NSNumber numberWithUnsignedChar:PLFeaturesEnabledForCoreAnalyticsReporting()];
    [v8 setPayloadValue:v18 forKey:PLCoreAnalyticsSearchIndexStatusFeaturesEnabledKey onEventWithName:v10];

    v52 = 0;
    [v11 searchIndexUptimeIsRebuildInProgress:&v52];
    if (v52)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = [NSNumber numberWithDouble:v20];
    [v8 setPayloadValue:v21 forKey:PLCoreAnalyticsSearchIndexStatusUptimeSinceLastRebuildKey onEventWithName:v10];

    v22 = objc_opt_class();
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100013E4C;
    v50[3] = &unk_10002D430;
    v23 = v8;
    v51 = v23;
    [v22 _getCountOfAssetsInSpotlightForPhotoLibrary:v16 completion:v50];
    v45 = [v11 mediaAnalysisEmbeddingVersion];
    LODWORD(v22) = [v45 intValue];
    v24 = +[PLMediaAnalysisServiceRequestAdapter currentImageEmbeddingVersion];
    LODWORD(v22) = v22 == [v24 intValue];

    if (v22)
    {
      v25 = [v11 searchFeatureReadyDate];
      v26 = [v11 libraryReadyForAnalysisDate];
      v27 = [v11 mediaAnalysisEmbeddingVersionBumpDate];
      v28 = v27;
      if (v25 && v26 && v27)
      {
        [v27 timeIntervalSinceDate:v26];
        if (v29 <= 0.0)
        {
          v30 = v26;
        }

        else
        {
          v30 = v28;
        }

        v41 = v30;
        [v25 timeIntervalSinceDate:?];
        v31 = [NSNumber numberWithDouble:?];
        [v23 setPayloadValue:v31 forKey:PLCoreAnalyticsSearchIndexStatusFeatureReadyTimeKey onEventWithName:v10];

        v32 = [v11 searchFeatureReadyFraction];
        v33 = v32;
        if (v32)
        {
          [v32 doubleValue];
          v35 = [NSNumber numberWithDouble:v34 * 100.0];
          [v23 setPayloadValue:v35 forKey:PLCoreAnalyticsSearchIndexStatusFeatureReadyPercentageKey onEventWithName:v10];
        }
      }
    }

    [v23 publishEventWithName:v10];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100013F50;
    v48[3] = &unk_10002D458;
    v36 = v11;
    v49 = v36;
    [v16 performTransactionAndWait:v48];
    v37 = PLSearchBackendIndexStatusMaintenanceTaskGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v16 libraryServicesManager];
      v39 = [v38 wellKnownPhotoLibraryIdentifier];
      *buf = 134219266;
      v66 = v44;
      v67 = 2048;
      v68 = v43;
      v69 = 2048;
      v70 = v42;
      v71 = 2048;
      v72 = v20;
      v73 = 2048;
      v74 = v39;
      v75 = 2112;
      v76 = v16;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Reporting Spotlight client state status, missing count: %tu, mismatched count: %tu, total asset count: %tu, and index uptime: %f for wellKnownIdentifier %lld, photoLibrary: %@", buf, 0x3Eu);
    }

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);

    v6 = v46;
  }

  return v6 != 3;
}

@end
@interface BCBookReadingTimeTracker
+ (BCBookReadingTimeTracker)sharedInstance;
- (BCBookReadingTimeTracker)initWithPersistenStoreDirectory:(id)a3;
- (BCBookReadingTimeTrackerLibraryDelegate)libraryDelegate;
- (BOOL)_createPersistentDirectoryIfNeeded;
- (BOOL)_mocq_trackSessionBegin:(id)a3 assetID:(id)a4 error:(id *)a5;
- (BOOL)_mocq_trackSessionEnd:(id)a3 assetID:(id)a4 error:(id *)a5;
- (BOOL)_mocq_trackSessionUpdate:(id)a3 assetID:(id)a4 error:(id *)a5;
- (BOOL)_mocq_updateLaunchTrackingForAssets:(id)a3 error:(id *)a4;
- (BOOL)_readyToCheck;
- (id)_fetchRequestForReadingSession:(id)a3;
- (id)_getAssetsToPurge:(unint64_t)a3 request:(id *)a4 error:(id *)a5;
- (id)_mocq_assetToPurgeForAssetID:(id)a3;
- (id)_mocq_promoteAssetImmediatelyAndSave:(id)a3;
- (id)_mocq_readingSessionWithAssetID:(id)a3 sessionID:(id)a4;
- (id)_persistentStoreDirectory;
- (id)_persistentStoreURL;
- (id)mq_trackedAssetForAssetID:(id)a3;
- (int64_t)_mocq_deleteSessionsForAsset:(id)a3 beforeTime:(id)a4;
- (void)_BDSCloudGlobalMetadataManagerFetchedRecordsChanged:(id)a3;
- (void)_cleanupBooksMarkedAsFinished:(id)a3;
- (void)_cleanupFinishedBooksFromLibraryExcluding:(id)a3;
- (void)_fetchBookStatusWithAssetID:(id)a3 completion:(id)a4;
- (void)_fetchRecentBooksList:(id)a3;
- (void)_handleReadingWithAssetID:(id)a3 sessionID:(id)a4 sessionEvent:(int64_t)a5 trackerEventType:(unint64_t)a6 readingFeatureFlags:(int64_t)a7 successCompletion:(id)a8 failureCompletion:(id)a9;
- (void)_handledUpdateReadingSessionTimer:(id)a3;
- (void)_mocqSessionID:(id)a3 sessionEvent:(int64_t)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 assetID:(id)a7 isTrackedAsRecent:(BOOL)a8 canBePromoted:(BOOL)a9 isSample:(BOOL)a10 readingFeatureFlags:(int64_t)a11 successCompletion:(id)a12 failureCompletion:(id)a13;
- (void)_mocq_deleteAssetToPurgeForAssetID:(id)a3;
- (void)_mocq_promoteAssetID:(id)a3;
- (void)_mocq_runBookPromotionAlgorithmForAssetID:(id)a3 libraryAsset:(id)a4 isSample:(BOOL)a5 successCompletion:(id)a6 failureCompletion:(id)a7;
- (void)_mq_clearBookPromotionTimer;
- (void)_mq_startBookPromotionTimerForSession:(id)a3 assetID:(id)a4 isSample:(BOOL)a5 trackerEventType:(unint64_t)a6 readingFeatureFlags:(int64_t)a7;
- (void)_purgeRecentBooksList:(BOOL)a3 completion:(id)a4;
- (void)_readingTimeTrackerGetAssetDetailsForAssetID:(id)a3 completion:(id)a4;
- (void)_seedRecentBooksList;
- (void)_sessionExistsForSessionID:(id)a3 assetID:(id)a4 completion:(id)a5;
- (void)_stopTrackingAssetsToPurge:(id)a3;
- (void)addPromotionObserver:(id)a3;
- (void)addSessionObserver:(id)a3;
- (void)dealloc;
- (void)promoteTrackedAsset:(id)a3 promoteIfNotTracked:(BOOL)a4;
- (void)purgeRecentBooks;
- (void)removePromotionObserver:(id)a3;
- (void)removeSessionObserver:(id)a3;
- (void)scrubRecents;
- (void)seedRecentBooksList:(unint64_t)a3;
- (void)trackReadingSessionBeganWithAssetID:(id)a3 sessionID:(id)a4 trackerEventType:(unint64_t)a5 readingFeatureFlags:(int64_t)a6 completion:(id)a7;
- (void)trackReadingSessionEndedWithAssetID:(id)a3 sessionID:(id)a4 trackerEventType:(unint64_t)a5 readingFeatureFlags:(int64_t)a6 completion:(id)a7;
@end

@implementation BCBookReadingTimeTracker

+ (BCBookReadingTimeTracker)sharedInstance
{
  if (qword_346000 != -1)
  {
    sub_1EBE60();
  }

  v3 = qword_345FF8;

  return v3;
}

- (BCBookReadingTimeTracker)initWithPersistenStoreDirectory:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BCBookReadingTimeTracker;
  v5 = [(BCBookReadingTimeTracker *)&v50 init];
  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"RecentlyOpenedBooksDB" withExtension:@"momd"];

    if (!v7)
    {
      v12 = BCBookPromotionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1EC070();
      }

      v7 = v5;
      v5 = 0;
      goto LABEL_27;
    }

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.iBooks.BCBookReadingTimeTracker.seedRecentQueue", v8);
    seedRecentQueue = v5->_seedRecentQueue;
    v5->_seedRecentQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.iBooks.BCBookReadingTimeTracker.accessQueue", v12);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    promotionObservers = v5->_promotionObservers;
    v5->_promotionObservers = v15;

    v17 = +[NSHashTable weakObjectsHashTable];
    sessionObservers = v5->_sessionObservers;
    v5->_sessionObservers = v17;

    v19 = +[NSDistributedNotificationCenter defaultCenter];
    [v19 addObserver:v5 selector:"_BDSCloudGlobalMetadataManagerFetchedRecordsChanged:" name:BDSCloudGlobalMetadataManagerFetchedRecordsChanged object:0];

    v20 = [v4 copy];
    overridePersistentDirectory = v5->_overridePersistentDirectory;
    v5->_overridePersistentDirectory = v20;

    v22 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    model = v5->_model;
    v5->_model = v22;

    if (!v5->_model)
    {
      sub_1EBE74(v7, v24, v25, v26, v27, v28, v29, v30);
    }

    [(BCBookReadingTimeTracker *)v5 _createPersistentDirectoryIfNeeded];
    v51[0] = NSMigratePersistentStoresAutomaticallyOption;
    v51[1] = NSInferMappingModelAutomaticallyOption;
    v52[0] = &__kCFBooleanTrue;
    v52[1] = &__kCFBooleanTrue;
    v51[2] = NSPersistentStoreFileProtectionKey;
    v52[2] = NSFileProtectionNone;
    v31 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
    v32 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v5->_model];
    psc = v5->_psc;
    v5->_psc = v32;

    v34 = [(BCBookReadingTimeTracker *)v5 _persistentStoreURL];
    v35 = v5->_psc;
    v49 = 0;
    v36 = [(NSPersistentStoreCoordinator *)v35 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v34 options:v31 error:&v49];
    v37 = v49;
    if (v36)
    {
      goto LABEL_6;
    }

    v41 = BCBookPromotionLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1EBEC0();
    }

    v42 = +[NSFileManager defaultManager];
    v43 = [(BCBookReadingTimeTracker *)v5 _persistentStoreDirectory];
    [v42 removeItemAtURL:v43 error:0];

    if ([(BCBookReadingTimeTracker *)v5 _createPersistentDirectoryIfNeeded])
    {
      v44 = v5->_psc;
      v48 = v37;
      v36 = [(NSPersistentStoreCoordinator *)v44 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v34 options:v31 error:&v48];
      v45 = v48;

      if (v36)
      {
        v37 = v45;
LABEL_6:
        v38 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        moc = v5->_moc;
        v5->_moc = v38;

        [(NSManagedObjectContext *)v5->_moc setPersistentStoreCoordinator:v5->_psc];
        [(NSManagedObjectContext *)v5->_moc setUndoManager:0];
        [(NSManagedObjectContext *)v5->_moc setMergePolicy:NSMergeByPropertyStoreTrumpMergePolicy];
        if (v5->_moc)
        {
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        v40 = BCBookPromotionLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1EBF64();
        }

LABEL_25:

        v5 = 0;
        goto LABEL_26;
      }

      v46 = BCBookPromotionLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1EBFCC();
      }
    }

    else
    {
      v46 = BCBookPromotionLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1EBF28();
      }

      v45 = v37;
    }

    v40 = BCBookPromotionLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1EC034();
    }

    v36 = 0;
    v37 = v45;
    goto LABEL_25;
  }

LABEL_28:

  return v5;
}

- (id)_getAssetsToPurge:(unint64_t)a3 request:(id *)a4 error:(id *)a5
{
  v9 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetToPurge"];
  v10 = [NSPredicate predicateWithFormat:@"%K >= %lu", @"launches", a3];
  [v9 setPredicate:v10];

  v21 = @"assetID";
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  [v9 setPropertiesToFetch:v11];

  v12 = [(BCBookReadingTimeTracker *)self moc];
  v20 = 0;
  v13 = [v12 executeFetchRequest:v9 error:&v20];
  v14 = v20;

  if (v14)
  {
    v15 = BCBookPromotionLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1EC0AC(v14, a3, v15);
    }

    v16 = 0;
  }

  else
  {
    v15 = [v13 valueForKey:@"assetID"];
    v16 = [v15 bu_arrayByRemovingNSNulls];
  }

  if (a4)
  {
    v17 = v9;
    *a4 = v9;
  }

  if (a5)
  {
    v18 = v14;
    *a5 = v14;
  }

  return v16;
}

- (void)_stopTrackingAssetsToPurge:(id)a3
{
  v4 = a3;
  v5 = [(BCBookReadingTimeTracker *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_158D44;
  v7[3] = &unk_2C7BE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)scrubRecents
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_159274;
  v26 = sub_159284;
  v27 = +[NSUserDefaults standardUserDefaults];
  v3 = [v23[5] objectForKey:@"BCLastScrubRecentsDate"];
  if (v3)
  {
    v4 = +[NSCalendar currentCalendar];
    v5 = +[NSDate now];
    v6 = [v4 isDate:v3 inSameDayAsDate:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BCBookReadingTimeTracker *)self libraryDelegate];
  v8 = (v7 == 0) | v6;

  if ((v8 & 1) == 0)
  {
    v9 = BCBookPromotionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Purge Tracking: scrubRecents", buf, 2u);
    }

    v10 = +[BCJSConfiguration sharedInstance];
    v11 = [v10 oldestDateToKeepFinished];

    v12 = [(BCBookReadingTimeTracker *)self libraryDelegate];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_15928C;
    v20[3] = &unk_2CE650;
    v20[4] = self;
    [v12 readingTimeTracker:self cleanupBooksFinishedBefore:v11 completion:v20];

    v13 = +[BCJSConfiguration sharedInstance];
    v14 = [v13 oldestDateToAvoidPurgeOfSamples];

    v15 = +[BCJSConfiguration sharedInstance];
    v16 = [v15 oldestDateToAvoidPurgeOfBooks];

    if (v14 && v16)
    {
      v17 = [(BCBookReadingTimeTracker *)self libraryDelegate];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_15931C;
      v19[3] = &unk_2CE678;
      v19[4] = self;
      v19[5] = &v22;
      [v17 recentsNotEngagedSinceDateForSamples:v14 dateForNonSamples:v16 completion:v19];
    }

    else
    {
      v18 = BCBookPromotionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1EC1F4();
      }
    }
  }

  _Block_object_dispose(&v22, 8);
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BCBookReadingTimeTracker;
  [(BCBookReadingTimeTracker *)&v4 dealloc];
}

- (id)_mocq_promoteAssetImmediatelyAndSave:(id)a3
{
  [(BCBookReadingTimeTracker *)self _mocq_promoteAssetID:a3];
  v4 = [(BCBookReadingTimeTracker *)self moc];
  if ([v4 hasChanges])
  {
    v9 = 0;
    v5 = [v4 save:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = BCBookPromotionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1EC2C4();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleReadingWithAssetID:(id)a3 sessionID:(id)a4 sessionEvent:(int64_t)a5 trackerEventType:(unint64_t)a6 readingFeatureFlags:(int64_t)a7 successCompletion:(id)a8 failureCompletion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  v19 = [(BCBookReadingTimeTracker *)self libraryDelegate];

  if (v19)
  {
    if ([v15 length])
    {
      if (v16)
      {
        objc_initWeak(&location, self);
        v20 = [(BCBookReadingTimeTracker *)self libraryDelegate];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_159B74;
        v30[3] = &unk_2CE6C8;
        objc_copyWeak(v35, &location);
        v35[1] = a5;
        v33 = v18;
        v31 = v16;
        v35[2] = a6;
        v32 = v15;
        v35[3] = a7;
        v34 = v17;
        [v20 readingTimeTracker:self isAssetTrackedAsRecent:v32 completion:v30];

        objc_destroyWeak(v35);
        objc_destroyWeak(&location);
      }

      else
      {
        v27 = objc_retainBlock(v18);
        if (v27)
        {
          v37 = NSLocalizedDescriptionKey;
          v38 = @"No session identifier.";
          v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v29 = [NSError errorWithDomain:@"BCBookReadingTimeTracker" code:-3000 userInfo:v28];
          v27[2](v27, 0, v29);
        }
      }
    }

    else
    {
      v24 = objc_retainBlock(v18);
      if (v24)
      {
        v39 = NSLocalizedDescriptionKey;
        v40 = @"No asset identifier.";
        v25 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v26 = [NSError errorWithDomain:@"BCBookReadingTimeTracker" code:-2000 userInfo:v25];
        v24[2](v24, 0, v26);
      }
    }
  }

  else
  {
    v21 = objc_retainBlock(v18);
    if (v21)
    {
      v41 = NSLocalizedDescriptionKey;
      v42 = @"No library delegate.";
      v22 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v23 = [NSError errorWithDomain:@"BCBookReadingTimeTracker" code:-1000 userInfo:v22];
      v21[2](v21, 0, v23);
    }
  }
}

- (void)_mocqSessionID:(id)a3 sessionEvent:(int64_t)a4 trackerEventType:(unint64_t)a5 asset:(id)a6 assetID:(id)a7 isTrackedAsRecent:(BOOL)a8 canBePromoted:(BOOL)a9 isSample:(BOOL)a10 readingFeatureFlags:(int64_t)a11 successCompletion:(id)a12 failureCompletion:(id)a13
{
  v56 = a8;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a12;
  v22 = a13;
  v23 = v22;
  if (a4 != 2)
  {
    if (a4 != 1)
    {
      v24 = v20;
      if (!a4)
      {
        v53 = v22;
        v54 = v21;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v25 = [(BCBookReadingTimeTracker *)self sessionObservers];
        v26 = [v25 allObjects];

        v27 = [v26 countByEnumeratingWithState:&v67 objects:v75 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v68;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v68 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [*(*(&v67 + 1) + 8 * i) timeTracker:self didBeginTrackingSession:v18 trackerEventType:a5 asset:v19 readingFeatureFlags:a11];
            }

            v28 = [v26 countByEnumeratingWithState:&v67 objects:v75 count:16];
          }

          while (v28);
        }

        v31 = BCBookPromotionLog();
        v24 = v20;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v72 = v18;
          v73 = 2112;
          v74 = v20;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Beginning tracking session %{public}@ for asset %@.", buf, 0x16u);
        }

        v66 = 0;
        [(BCBookReadingTimeTracker *)self _mocq_trackSessionBegin:v18 assetID:v20 error:&v66];
        v52 = v66;
        if (v56)
        {
          v23 = v53;
          if (a5 != 4)
          {
            v32 = BCBookPromotionLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = v20;
              _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Updating asset %@ right away since it's already promoted", buf, 0xCu);
            }

            [(BCBookReadingTimeTracker *)self promoteTrackedAsset:v20 promoteIfNotTracked:1];
          }

          v33 = v54;
          v34 = objc_retainBlock(v54);
          v35 = v34;
          if (v34)
          {
            (*(v34 + 2))(v34, 1, v19);
          }
        }

        else
        {
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_15A4D0;
          v59[3] = &unk_2CBE60;
          v60 = v20;
          v61 = self;
          v65 = a10;
          v62 = v18;
          v63 = a5;
          v64 = a11;
          v45 = objc_retainBlock(v59);
          (v45[2])();
          v33 = v54;
          v46 = objc_retainBlock(v54);
          v47 = v46;
          v23 = v53;
          if (v46)
          {
            (*(v46 + 2))(v46, 0, v19);
          }

          v35 = v60;
        }

        v21 = v33;
      }

      goto LABEL_50;
    }

    v55 = v21;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_15A5CC;
    block[3] = &unk_2C7D40;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v36 = BCBookPromotionLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v72 = v18;
      v73 = 2112;
      v74 = v20;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Ending tracking session %{public}@ for asset %@.", buf, 0x16u);
    }

    v57 = 0;
    [(BCBookReadingTimeTracker *)self _mocq_trackSessionEnd:v18 assetID:v20 error:&v57];
    v37 = v57;
    v38 = v37;
    if (v56)
    {
      if (a5 - 4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v39 = BCBookPromotionLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v72 = v20;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Updating asset %@ right away since it's already promoted", buf, 0xCu);
        }

        [(BCBookReadingTimeTracker *)self promoteTrackedAsset:v20 promoteIfNotTracked:1];
      }

      v40 = objc_retainBlock(v55);
      v41 = v40;
      if (v40)
      {
        (*(v40 + 2))(v40, a9, v19);
      }

      v24 = v20;
      goto LABEL_48;
    }

    if (a9)
    {
      v44 = BCBookPromotionLog();
      v24 = v20;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_1EC3F4();
      }

      v21 = v55;
      [(BCBookReadingTimeTracker *)self _mocq_runBookPromotionAlgorithmForAssetID:v20 libraryAsset:v19 isSample:a10 successCompletion:v55 failureCompletion:v23];
      goto LABEL_49;
    }

    v24 = v20;
    if (v37)
    {
      v48 = objc_retainBlock(v23);
      v49 = v48;
      if (v48)
      {
        v50 = v48[2];
LABEL_46:
        v50();
      }
    }

    else
    {
      v51 = objc_retainBlock(v55);
      v49 = v51;
      if (v51)
      {
        v50 = v51[2];
        goto LABEL_46;
      }
    }

LABEL_48:
    v21 = v55;
LABEL_49:

    goto LABEL_50;
  }

  v42 = v21;
  v43 = BCBookPromotionLog();
  v24 = v20;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v72 = v18;
    v73 = 2112;
    v74 = v20;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "Updating session %{public}@ for untracked asset %@.", buf, 0x16u);
  }

  [(BCBookReadingTimeTracker *)self _mocq_trackSessionUpdate:v18 assetID:v20 error:0];
  v21 = v42;
  [(BCBookReadingTimeTracker *)self _mocq_runBookPromotionAlgorithmForAssetID:v20 libraryAsset:v19 isSample:a10 successCompletion:v42 failureCompletion:v23];
LABEL_50:
}

- (void)trackReadingSessionBeganWithAssetID:(id)a3 sessionID:(id)a4 trackerEventType:(unint64_t)a5 readingFeatureFlags:(int64_t)a6 completion:(id)a7
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_15A6FC;
  v15[3] = &unk_2CE6F0;
  v16 = a7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_15A760;
  v13[3] = &unk_2CC868;
  v14 = v16;
  v12 = v16;
  [(BCBookReadingTimeTracker *)self _handleReadingWithAssetID:a3 sessionID:a4 sessionEvent:0 trackerEventType:a5 readingFeatureFlags:a6 successCompletion:v15 failureCompletion:v13];
}

- (void)trackReadingSessionEndedWithAssetID:(id)a3 sessionID:(id)a4 trackerEventType:(unint64_t)a5 readingFeatureFlags:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_15A958;
  v21[3] = &unk_2CE718;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v25 = a5;
  v26 = a6;
  v24 = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_15AC58;
  v18[3] = &unk_2CE740;
  v19 = v23;
  v20 = v24;
  v15 = v24;
  v16 = v23;
  v17 = v12;
  [(BCBookReadingTimeTracker *)self _handleReadingWithAssetID:v17 sessionID:v16 sessionEvent:1 trackerEventType:a5 readingFeatureFlags:a6 successCompletion:v21 failureCompletion:v18];
}

- (void)_readingTimeTrackerGetAssetDetailsForAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCBookReadingTimeTracker *)self libraryDelegate];

  if (!v8)
  {
    sub_1EC640(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = [(BCBookReadingTimeTracker *)self libraryDelegate];

  if (v17)
  {
    v18 = [(BCBookReadingTimeTracker *)self libraryDelegate];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_15AE38;
    v21[3] = &unk_2CE768;
    v23 = v7;
    v21[4] = self;
    v22 = v6;
    [v18 readingTimeTracker:self isAssetTrackedAsRecent:v22 completion:v21];
  }

  else
  {
    v19 = objc_retainBlock(v7);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0, 0, 0.0);
    }
  }
}

- (void)purgeRecentBooks
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15B37C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (qword_346008 != -1)
  {
    dispatch_once(&qword_346008, block);
  }
}

- (void)_purgeRecentBooksList:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(BCBookReadingTimeTracker *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_15B568;
  v9[3] = &unk_2CE7D0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9];
}

- (BOOL)_readyToCheck
{
  v3 = [(BCBookReadingTimeTracker *)self readyToSeedRecentBooksList];
  if (v3)
  {

    LOBYTE(v3) = [(BCBookReadingTimeTracker *)self globalMetadataFetched];
  }

  return v3;
}

- (void)_BDSCloudGlobalMetadataManagerFetchedRecordsChanged:(id)a3
{
  v4 = [(BCBookReadingTimeTracker *)self seedRecentQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15BBD4;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)seedRecentBooksList:(unint64_t)a3
{
  v5 = [(BCBookReadingTimeTracker *)self seedRecentQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_15BCA8;
  v6[3] = &unk_2C7D18;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)_seedRecentBooksList
{
  if ([(BCBookReadingTimeTracker *)self _readyToCheck])
  {
    v3 = [(BCBookReadingTimeTracker *)self libraryDelegate];
    +[BDSCloudGlobalMetadataManager sharedManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_15BDFC;
    v8 = v7[3] = &unk_2CE838;
    v9 = v3;
    v10 = self;
    v4 = v3;
    v5 = v8;
    [v5 metadataValueForKey:@"BCDeviceWasSeededWithARecentsList" completion:v7];
    if (!v5)
    {
      v6 = BCBookPromotionLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1EC950();
      }
    }
  }
}

- (void)addPromotionObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15C120;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removePromotionObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15C24C;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addSessionObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15C378;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removeSessionObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15C4A4;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_persistentStoreURL
{
  v2 = [(BCBookReadingTimeTracker *)self _persistentStoreDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"BCRecentlyOpenedBooksDB.sqlite"];

  return v3;
}

- (id)_persistentStoreDirectory
{
  v3 = [(BCBookReadingTimeTracker *)self overridePersistentDirectory];

  if (v3)
  {
    v4 = [(BCBookReadingTimeTracker *)self overridePersistentDirectory];
  }

  else
  {
    v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v4 = [v5 lastObject];
  }

  v6 = [v4 stringByAppendingPathComponent:@"BCRecentlyOpenedBooksDB"];
  v7 = [NSURL fileURLWithPath:v6 isDirectory:1];

  return v7;
}

- (BOOL)_createPersistentDirectoryIfNeeded
{
  v2 = [(BCBookReadingTimeTracker *)self _persistentStoreDirectory];
  v3 = +[NSFileManager defaultManager];
  v8 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v6 = BCBookPromotionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1EC98C();
    }
  }

  return v4;
}

- (id)_fetchRequestForReadingSession:(id)a3
{
  v3 = a3;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetReadingSession"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", v3];

  [v4 setPredicate:v5];

  return v4;
}

- (void)_cleanupFinishedBooksFromLibraryExcluding:(id)a3
{
  v4 = a3;
  v5 = [(BCBookReadingTimeTracker *)self libraryDelegate];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_15C82C;
  v6[3] = &unk_2CE650;
  v6[4] = self;
  [v5 readingTimeTracker:self cleanupFinishedBooksExcluding:v4 completion:v6];
}

- (void)_cleanupBooksMarkedAsFinished:(id)a3
{
  v4 = a3;
  v5 = [(BCBookReadingTimeTracker *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15C970;
  v7[3] = &unk_2C7BE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)promoteTrackedAsset:(id)a3 promoteIfNotTracked:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BCBookReadingTimeTracker *)self libraryDelegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_15CD88;
  v9[3] = &unk_2CE860;
  v12 = v4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  [v7 readingTimeTracker:self updateRecentBook:v8 promoteIfNotTracked:v4 completion:v9];
}

- (id)_mocq_readingSessionWithAssetID:(id)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetReadingSession"];
  [v8 setReturnsObjectsAsFaults:0];
  v9 = [v6 UUIDString];

  v10 = [NSPredicate predicateWithFormat:@"%K == %@ && %K == %@", @"assetID", v7, @"sessionID", v9];

  [v8 setPredicate:v10];
  v11 = [(BCBookReadingTimeTracker *)self moc];
  v17 = 0;
  v12 = [v11 executeFetchRequest:v8 error:&v17];
  v13 = v17;

  if (!v12 && v13)
  {
    v14 = BCBookPromotionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1ECB30();
    }
  }

  v15 = [v12 firstObject];

  return v15;
}

- (void)_mocq_promoteAssetID:(id)a3
{
  v4 = a3;
  v5 = BCBookPromotionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Promoting %@ to recent books list.", &v9, 0xCu);
  }

  if (BUIsRunningTests())
  {
    v6 = [(BCBookReadingTimeTracker *)self moc];
    v7 = [NSEntityDescription insertNewObjectForEntityForName:@"BCTrackedAsset" inManagedObjectContext:v6];

    [v7 setAssetID:v4];
    v8 = +[NSDate date];
    [v7 setLastOpenedDate:v8];
  }

  [(BCBookReadingTimeTracker *)self promoteTrackedAsset:v4 promoteIfNotTracked:1];
}

- (void)_mocq_runBookPromotionAlgorithmForAssetID:(id)a3 libraryAsset:(id)a4 isSample:(BOOL)a5 successCompletion:(id)a6 failureCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = _os_activity_create(&dword_0, "Books/reading-promotion-readingNow", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_15D678;
  v21[3] = &unk_2CE888;
  v27 = a5;
  v22 = v12;
  v23 = self;
  v25 = v15;
  v26 = v14;
  v24 = v13;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  os_activity_apply(v16, v21);
}

- (id)mq_trackedAssetForAssetID:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchLimit:1];
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", v4];

  [v5 setPredicate:v6];
  v7 = [(BCBookReadingTimeTracker *)self moc];
  v13 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v13];
  v9 = v13;

  if (!v8 && v9)
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1ECC68();
    }
  }

  v11 = [v8 firstObject];

  return v11;
}

- (BOOL)_mocq_trackSessionBegin:(id)a3 assetID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BCBookReadingTimeTracker *)self _mocq_readingSessionWithAssetID:v9 sessionID:v8];
  if (v10)
  {
    v11 = v10;
    v12 = BCBookPromotionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1ECCD0();
    }

    v13 = +[NSDate date];
    [v11 setTimeOpened:v13];

    v14 = [v8 UUIDString];
    [v11 setSessionID:v14];
  }

  else
  {
    v15 = [(BCBookReadingTimeTracker *)self moc];
    v11 = [NSEntityDescription insertNewObjectForEntityForName:@"BCAssetReadingSession" inManagedObjectContext:v15];

    v16 = +[NSDate date];
    [v11 setTimeOpened:v16];

    v17 = [v8 UUIDString];
    [v11 setSessionID:v17];

    [v11 setAssetID:v9];
  }

  v18 = [(BCBookReadingTimeTracker *)self moc];
  v19 = [v18 save:a5];

  if ((v19 & 1) == 0)
  {
    v20 = BCBookPromotionLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1ECD38();
    }
  }

  return v19;
}

- (BOOL)_mocq_trackSessionEnd:(id)a3 assetID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(BCBookReadingTimeTracker *)self _mocq_readingSessionWithAssetID:v8 sessionID:a3];
  if (v9)
  {
    v10 = +[NSDate date];
    [v9 setTimeClosed:v10];
  }

  else
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1ECDA0();
    }
  }

  v11 = [(BCBookReadingTimeTracker *)self moc];
  v12 = [v11 save:a5];

  if ((v12 & 1) == 0)
  {
    v13 = BCBookPromotionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1ECDDC();
    }
  }

  return v12;
}

- (BOOL)_mocq_trackSessionUpdate:(id)a3 assetID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(BCBookReadingTimeTracker *)self _mocq_readingSessionWithAssetID:v8 sessionID:a3];
  if (v9)
  {
    v10 = +[NSDate date];
    [v9 setTimeUpdated:v10];
  }

  else
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1ECDA0();
    }
  }

  v11 = [(BCBookReadingTimeTracker *)self moc];
  v12 = [v11 save:a5];

  if ((v12 & 1) == 0)
  {
    v13 = BCBookPromotionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1ECDDC();
    }
  }

  return v12;
}

- (void)_mq_startBookPromotionTimerForSession:(id)a3 assetID:(id)a4 isSample:(BOOL)a5 trackerEventType:(unint64_t)a6 readingFeatureFlags:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(BCBookReadingTimeTracker *)self bookPromotionTimer];
  [v14 invalidate];

  v15 = +[BCJSConfiguration sharedInstance];
  v16 = v15;
  if (a5)
  {
    [v15 timeThresholdForSamplePromotion];
  }

  else
  {
    [v15 timeThresholdForPromotion];
  }
  v17 = ;
  v18 = [v17 longLongValue];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_15E2CC;
  v21[3] = &unk_2CE8D8;
  v22 = v12;
  v23 = v13;
  v24 = self;
  v25 = v18;
  v26 = a7;
  v27 = a6;
  v19 = v13;
  v20 = v12;
  [(BCBookReadingTimeTracker *)self _readingTimeTrackerGetAssetDetailsForAssetID:v19 completion:v21];
}

- (void)_handledUpdateReadingSessionTimer:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v12 = [v5 objectForKeyedSubscript:@"SessionID"];

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"AssetID"];

  objc_opt_class();
  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:@"ReadingFeatureFlagsKey"];
  v10 = BUDynamicCast();
  v11 = [v10 integerValue];

  [(BCBookReadingTimeTracker *)self _mq_clearBookPromotionTimer];
  [(BCBookReadingTimeTracker *)self _handleReadingWithAssetID:v7 sessionID:v12 sessionEvent:2 trackerEventType:8 readingFeatureFlags:v11 successCompletion:0 failureCompletion:0];
}

- (void)_mq_clearBookPromotionTimer
{
  v3 = [(BCBookReadingTimeTracker *)self bookPromotionTimer];
  [v3 invalidate];

  [(BCBookReadingTimeTracker *)self setBookPromotionTimer:0];
}

- (int64_t)_mocq_deleteSessionsForAsset:(id)a3 beforeTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetReadingSession"];
  [v8 setReturnsObjectsAsFaults:0];
  v9 = [NSPredicate predicateWithFormat:@"%K == %@ && %K <= %@", @"assetID", v6, @"timeOpened", v7];

  [v8 setPredicate:v9];
  v10 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v8];
  [v10 setResultType:2];
  v11 = [(BCBookReadingTimeTracker *)self moc];
  v20 = 0;
  v12 = [v11 executeRequest:v10 error:&v20];
  v13 = v20;

  objc_opt_class();
  v14 = [v12 result];
  v15 = BUDynamicCast();
  v16 = [v15 integerValue];

  v17 = BCBookPromotionLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v22 = v16;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Deleted %{public}ld rows for asset: %@", buf, 0x16u);
  }

  if (v13)
  {
    v18 = BCBookPromotionLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1ECE90();
    }
  }

  return v16;
}

- (id)_mocq_assetToPurgeForAssetID:(id)a3
{
  v4 = a3;
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BCAssetToPurge"];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchLimit:1];
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", v4];

  [v5 setPredicate:v6];
  v7 = [(BCBookReadingTimeTracker *)self moc];
  v13 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1ECEF8();
    }
  }

  v11 = [v8 firstObject];

  return v11;
}

- (void)_mocq_deleteAssetToPurgeForAssetID:(id)a3
{
  v4 = a3;
  v5 = BCBookPromotionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Purge Tracking: delete asset=%@", buf, 0xCu);
  }

  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BCTrackedAsset"];
  v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", v4];
  [v6 setPredicate:v7];

  v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
  v9 = [(BCBookReadingTimeTracker *)self psc];
  v10 = [(BCBookReadingTimeTracker *)self moc];
  v14 = 0;
  v11 = [v9 executeRequest:v8 withContext:v10 error:&v14];
  v12 = v14;

  if (v12)
  {
    v13 = BCBookPromotionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1ECF60();
    }
  }
}

- (BOOL)_mocq_updateLaunchTrackingForAssets:(id)a3 error:(id *)a4
{
  v5 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(BCBookReadingTimeTracker *)self _mocq_assetToPurgeForAssetID:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 launches] + 1;
          v14 = v12;
        }

        else
        {
          v15 = [(BCBookReadingTimeTracker *)self moc];
          v12 = [NSEntityDescription insertNewObjectForEntityForName:@"BCAssetToPurge" inManagedObjectContext:v15];

          [v12 setAssetID:v10];
          v14 = v12;
          v13 = 1;
        }

        [v14 setLaunches:v13];
        v16 = BCBookPromotionLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v12 assetID];
          v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 launches]);
          *buf = 138412546;
          v32 = v17;
          v33 = 2112;
          v34 = v18;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Purge Tracking: asset=%@ launches=%@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v19 = [(BCBookReadingTimeTracker *)self moc];
  v26 = 0;
  v20 = [v19 save:&v26];
  v21 = v26;

  if ((v20 & 1) == 0)
  {
    v22 = BCBookPromotionLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1ECFC8();
    }
  }

  if (a4)
  {
    v23 = v21;
    *a4 = v21;
  }

  return v21 == 0;
}

- (void)_fetchBookStatusWithAssetID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCBookReadingTimeTracker *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_15EF10;
  v11[3] = &unk_2C7B30;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)_fetchRecentBooksList:(id)a3
{
  v4 = a3;
  v5 = [(BCBookReadingTimeTracker *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15F2E4;
  v7[3] = &unk_2C8488;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)_sessionExistsForSessionID:(id)a3 assetID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BCBookReadingTimeTracker *)self moc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_15F63C;
  v15[3] = &unk_2C8598;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [v11 performBlock:v15];
}

- (BCBookReadingTimeTrackerLibraryDelegate)libraryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryDelegate);

  return WeakRetained;
}

@end
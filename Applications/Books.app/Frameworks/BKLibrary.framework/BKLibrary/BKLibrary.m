void sub_2558(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  [*(a1 + 32) _initializeProgress];
  v8 = [*(a1 + 32) sourceFileType];
  switch(v8)
  {
    case 2u:
      [*(a1 + 32) _performMoveFromPath:v5 toPath:v6];
      break;
    case 1u:
      [*(a1 + 32) _performZipExtractionFromPath:v5 toPath:v6];
      break;
    case 0u:
      [*(a1 + 32) _performCopyFromPath:v5 toPath:v6];
      break;
  }

  v9 = *(a1 + 32);
  if (v9[24] == 1 && [v9 fixFilePermissions])
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) sourceFileType];
      v12 = [*(a1 + 32) sourceFilePath];
      v14[0] = 67109378;
      v14[1] = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "BKExtractFileOperation main: fixFilePermissions: (type: %d, path: %@)", v14, 0x12u);
    }

    v13 = [NSURL fileURLWithPath:v6];
    [*(a1 + 32) _fixFilePermissions:v13];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_2710(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = [a2 path];
  v4 = [*(a1 + 32) destinationFilePath];
  (*(v3 + 16))(v3, v5, v4);
}

void sub_278C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = [a2 path];
  v4 = [*(a1 + 32) destinationFilePath];
  (*(v3 + 16))(v3, v5, v4);
}

void sub_31E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v9 = 0;
  v3 = [v2 getResourceValue:&v10 forKey:NSURLIsDirectoryKey error:&v9];
  v4 = v10;
  v5 = v9;
  if (!v3)
  {
    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8CE64();
    }

    goto LABEL_10;
  }

  v6 = [v2 fileSystemRepresentation];
  if ([v4 BOOLValue])
  {
    v7 = 504;
  }

  else
  {
    v7 = 432;
  }

  if (chmod(v6, v7))
  {
    v8 = BCIMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8CED4(v2, v4);
    }

LABEL_10:
  }
}

void sub_3694(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v3 = objc_begin_catch(exception_object);
      v4 = BCIMLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_8D00C();
      }

      *(v2 + 24) = 0;
      objc_end_catch();
      JUMPOUT(0x34D8);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_483C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id BKLibraryFrameworkBundle()
{
  if (qword_EFC58 != -1)
  {
    sub_8D314();
  }

  v1 = qword_EFC50;

  return v1;
}

void sub_641C(id a1)
{
  qword_EFC50 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

void sub_66D4(id *a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  kdebug_trace();
  v4 = [a1[4] quotaFetcher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_6818;
  v11[3] = &unk_D5470;
  v12 = v3;
  *&v5 = a1[5];
  *(&v5 + 1) = a1[4];
  v10 = v5;
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  [v4 fetchUserQuotaWithCompletion:v11];
}

void sub_6818(uint64_t a1, char *a2, void *a3)
{
  v50 = a3;
  kdebug_trace();
  kdebug_trace();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v51 = 0;
    v7 = *v62;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v62 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v61 + 1) + 8 * i);
        v10 = [BKLibraryFileSizeManagerCacheItemRequest alloc];
        v11 = [v9 assetID];
        v12 = [v9 url];
        v13 = [(BKLibraryFileSizeManagerCacheItemRequest *)v10 initWithCacheItemRequestWithAssetID:v11 assetURL:v12];

        v14 = +[BKLibraryFileSizeManager sharedInstance];
        v15 = [v14 synchronousFileSizeForCacheItemRequest:v13];

        if (v15)
        {
          v16 = [v15 longLongValue];
          v51 += v16 & ~(v16 >> 63);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v6);
  }

  else
  {
    v51 = 0;
  }

  kdebug_trace();
  if (+[BCDevice isInternalInstall])
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [v17 stringForKey:@"BKUbiquitySimulateLocalLibrarySize"];

    v19 = +[NSUserDefaults standardUserDefaults];
    v20 = [v19 stringForKey:@"BKUbiquitySimulateQuota"];

    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v21 stringForKey:@"BKUbiquitySimulateStoragePlan"];

    v23 = +[NSUserDefaults standardUserDefaults];
    v24 = [v23 BOOLForKey:@"BKUbiquitySimulateQuotaTimeout"];

    v25 = +[NSUserDefaults standardUserDefaults];
    v26 = [v25 stringForKey:@"BKUbiquitySimulateNumberOfItemsInCloud"];

    v27 = v18;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v20 = 0;
    v27 = 0;
    v22 = 0;
  }

  v28 = a2;
  v29 = v50;
  if ([v27 length] && (objc_msgSend(v27, "longLongValue") & 0x8000000000000000) == 0)
  {
    v51 = [v27 longLongValue];
  }

  if ([v20 length] && (v30 = objc_msgSend(v20, "longLongValue"), v31 = v20, (v30 & 0x8000000000000000) == 0) || objc_msgSend(v22, "length") && (v32 = objc_msgSend(v22, "longLongValue"), v31 = v22, (v32 & 0x8000000000000000) == 0))
  {
    v28 = [v31 longLongValue];
  }

  if (v50)
  {
    v33 = v27;
    v34 = [v50 domain];
    if ([v34 isEqualToString:IMUbiquityQuotaFetcherErrorDomain])
    {
      v35 = v26;
      v36 = v20;
      v37 = v24;
      v38 = [v50 code];
      v39 = kIMUbiquityQuotaFetcherErrorQuotaServerUnreachable;

      v40 = 1;
      if (v51 > v28)
      {
        v40 = 2;
      }

      v41 = v38 == v39;
      v24 = v37;
      v20 = v36;
      v26 = v35;
      v29 = v50;
      if (v41)
      {
        v40 = 3;
      }
    }

    else
    {

      v40 = 1;
      if (v51 > v28)
      {
        v40 = 2;
      }
    }

    v27 = v33;
  }

  else
  {
    v40 = 1;
    if (v51 > v28)
    {
      v40 = 2;
    }
  }

  if (v24)
  {
    v42 = 3;
  }

  else
  {
    v42 = v40;
  }

  dispatch_group_leave(*(v49 + 40));
  dispatch_group_wait(*(v49 + 40), 0xFFFFFFFFFFFFFFFFLL);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6E14;
  block[3] = &unk_D5420;
  v43 = *(v49 + 56);
  block[4] = *(v49 + 48);
  v60 = v43;
  dispatch_async(&_dispatch_main_q, block);
  if ([v26 length] && (objc_msgSend(v26, "longLongValue") & 0x8000000000000000) == 0)
  {
    v44 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v26 longLongValue]);
    [*(v49 + 48) setNumberOfItemsIniCloud:{objc_msgSend(v44, "unsignedIntegerValue")}];
  }

  if (v42 == 2)
  {
    if ([*(v49 + 48) numberOfItemsIniCloud])
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }
  }

  kdebug_trace();
  v45 = +[PSCloudStorageQuotaManager sharedManager];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_6E20;
  v52[3] = &unk_D5448;
  v53 = v22;
  v46 = *(v49 + 64);
  v56 = v42;
  v57 = v28;
  v58 = v51;
  v54 = *(v49 + 48);
  v55 = v46;
  v47 = v22;
  [v45 getQuotaInfoForPrimaryAccountCompletion:v52];
}

uint64_t sub_6E20(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = [v3 totalStorage];

  if ([*(a1 + 32) length] && (objc_msgSend(*(a1 + 32), "longLongValue") & 0x8000000000000000) == 0)
  {
    v4 = [*(a1 + 32) longLongValue];
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) numberOfItemsIniCloud];
  v10 = *(v8 + 16);

  return v10(v8, v5, v4 > 0xE8D4A50FFFLL, v6, v7, v9);
}

void sub_7118(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) ubiquityStatusMonitor];
  v5 = [v4 documentsURL];

  v6 = [v5 path];
  v7 = [NSPredicate predicateWithFormat:@"%K BEGINSWITH %@", NSMetadataItemPathKey, v6];
  [*(a1 + 40) setPredicate:v7];

  v10 = NSMetadataQueryUbiquitousDocumentsScope;
  v8 = [NSArray arrayWithObjects:&v10 count:1];
  [*(a1 + 40) setSearchScopes:v8];

  [*(a1 + 40) setNotificationBatchingInterval:0.5];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:"mq_queryDidFinish:" name:NSMetadataQueryDidFinishGatheringNotification object:*(a1 + 40)];

  [*(a1 + 40) startQuery];
}

id sub_7E04(uint64_t a1)
{
  v2 = BKStoreLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Initializing defaultManager", v6, 2u);
  }

  v3 = objc_opt_new();
  v4 = qword_EFC60;
  qword_EFC60 = v3;

  return [qword_EFC60 _sortAndInitializeDataSources:*(a1 + 32)];
}

void sub_8390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a25, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t sub_83E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_83F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  objc_sync_enter(v4);
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MRP: mrp = %@ (%@)", &v12, 0x16u);
  }

  if (v3)
  {
    v9 = [*(*(*(a1 + 48) + 8) + 40) laterDate:v3];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  objc_sync_exit(v4);

  dispatch_group_leave(*(a1 + 40));
}

void sub_85C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v23 = @"purchaseDate";
  v5 = [NSArray arrayWithObjects:&v23 count:1];
  [v4 setPropertiesToFetch:v5];

  [v4 setResultType:2];
  v6 = [*(a1 + 32) predicateForPurchasedBooksAssets];
  [v4 setPredicate:v6];

  v7 = [[NSSortDescriptor alloc] initWithKey:@"purchaseDate" ascending:0];
  v22 = v7;
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  [v4 setSortDescriptors:v8];

  [v4 setFetchLimit:1];
  v19 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v19];

  v10 = v19;
  if (v10)
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8D478();
    }
  }

  else if ([v9 count])
  {
    objc_opt_class();
    v12 = [v9 firstObject];
    v11 = BUDynamicCast();

    objc_opt_class();
    v13 = [v11 objectForKeyedSubscript:@"purchaseDate"];
    v14 = BUDynamicCast();

    v15 = +[NSUserDefaults standardUserDefaults];
    [v15 setObject:v14 forKey:@"BKMostRecentPurchaseDateKey"];

    v16 = BKLibraryLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "MRP: update cached mrp = %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = +[NSDate distantPast];
    [v17 setObject:v18 forKey:@"BKMostRecentPurchaseDateKey"];

    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MRP: no library purchases", buf, 2u);
    }
  }
}

void sub_961C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_9668(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_96EC;
  block[3] = &unk_D5528;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_96F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 collectionManager];
  [v4 setupDefaultCollectionsInManagedObjectContext:v3];
}

void sub_9754(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadWithCompletion:v3];
}

void sub_97B0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_8D58C(v2, v3);
  }
}

uint64_t sub_9CD0(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  [*(a1 + 32) _cleanUpOrphanedSampleAssets:v3];

  return kdebug_trace();
}

void sub_A498(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 collectionManager];
  [v4 setupDefaultCollectionsInManagedObjectContext:v3];
}

void sub_A4F8(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = [*(a1 + 32) collectionManager];
  [v4 updateCollectionMemberAssetLinksInMOCForUpgrade:v3];

  v5 = 0;
  if ([*(a1 + 32) _compareVersionWith:@"1.8"] == &dword_0 + 1)
  {
    v6 = kBKCollectionDefaultIDBooks;
    v5 = [*(a1 + 32) _assetIDsForCollectionID:kBKCollectionDefaultIDBooks moc:v3];
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v5 count];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "My Books: Migrating Persistent Store Books collection. Found %lu assets in Books collection", &v10, 0xCu);
    }

    [*(a1 + 32) _removeAllMembersFromCollection:v6 moc:v3];
  }

  v8 = [*(a1 + 32) collectionManager];
  [v8 resetAllAssetsCollectionsWithLibraryManagedObjectContext:v3 completion:0];

  [*(a1 + 32) _updateRelationshipsInContext:v3];
  [*(a1 + 32) _resetNilAuthorsOnAllBooksInContext:v3];
  [*(a1 + 32) _resetNilAuthorsOnAllSeriesInContext:v3];
  [*(a1 + 32) migrateToMyBooksWithAssetIDs:v5 inManagedObjectContext:v3];
  v9 = [*(a1 + 32) collectionManager];
  [v9 clearSortKeysFromAssetsInMOCForUpgrade:v3];

  kdebug_trace();
}

uint64_t sub_B04C(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = (byte_EFC70 & 1) == 0;
  byte_EFC70 = 1;
  return result;
}

id sub_B418(uint64_t a1)
{
  v2 = [*(a1 + 32) updatesScheduleQueue];
  dispatch_suspend(v2);

  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 40);

  return [v4 finishedWithOperations];
}

void sub_B474(uint64_t a1)
{
  v1 = [*(a1 + 32) updatesScheduleQueue];
  dispatch_resume(v1);
}

BKLibraryManagedObjectContext *sub_BAAC(uint64_t a1)
{
  v2 = [[BKLibraryManagedObjectContext alloc] initWithConcurrencyType:1];
  [(BKLibraryManagedObjectContext *)v2 setName:@"Background R/O Context"];
  v3 = [*(a1 + 32) persistentStoreCoordinator];
  [(BKLibraryManagedObjectContext *)v2 setPersistentStoreCoordinator:v3];

  [(BKLibraryManagedObjectContext *)v2 setUndoManager:0];
  [(BKLibraryManagedObjectContext *)v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [(BKLibraryManagedObjectContext *)v2 setLibraryManager:*(a1 + 32)];

  return v2;
}

id sub_C48C(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a2 objectAtIndexedSubscript:__clz(__rbit64(a1))];
    v2 = vars8;
  }

  return a1;
}

void sub_C738(uint64_t a1)
{
  v2 = [*(a1 + 32) workerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_C78C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionsWorkerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_C9E0(uint64_t a1)
{
  v2 = [*(a1 + 32) uiChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];

  v3 = [*(a1 + 32) uiChildContext];
  v4 = [v3 hasChanges];

  if (v4)
  {
    v5 = [*(a1 + 32) uiChildContext];
    [v5 setSaveContext:1];

    v6 = [*(a1 + 32) uiChildContext];
    [v6 save:0];
  }
}

void sub_CAA8(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionsWorkerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_CCFC(uint64_t a1)
{
  v2 = [*(a1 + 32) uiChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];

  v3 = [*(a1 + 32) uiChildContext];
  v4 = [v3 hasChanges];

  if (v4)
  {
    v5 = [*(a1 + 32) uiChildContext];
    [v5 setSaveContext:1];

    v6 = [*(a1 + 32) uiChildContext];
    [v6 save:0];
  }
}

void sub_CDC4(uint64_t a1)
{
  v2 = [*(a1 + 32) workerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_D120(uint64_t a1)
{
  v2 = [*(a1 + 32) uiChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];

  v3 = [*(a1 + 32) uiChildContext];
  v4 = [v3 hasChanges];

  if (v4)
  {
    v5 = [*(a1 + 32) uiChildContext];
    [v5 setSaveContext:1];

    v6 = [*(a1 + 32) uiChildContext];
    [v6 save:0];
  }
}

void sub_D1E8(uint64_t a1)
{
  v2 = [*(a1 + 32) workerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_D23C(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionsWorkerChildContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

void sub_D3BC(uint64_t a1)
{
  v2 = BCSignpostLibrary();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CollectionsQueueAsync", "", buf, 2u);
  }

  v5 = objc_retainBlock(*(a1 + 40));
  if (v5)
  {
    v6 = [*(a1 + 32) collectionsWorkerChildContext];
    v5[2](v5, v6);
  }

  v7 = BCSignpostLibrary();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollectionsQueueAsync", "", v15, 2u);
  }

  v10 = [*(a1 + 32) collectionsWorkerChildContext];
  v11 = [v10 hasChanges];

  if (v11)
  {
    v12 = [*(a1 + 32) collectionsWorkerChildContext];
    v14 = 0;
    [v12 save:&v14];
  }

  v13 = [*(a1 + 32) collectionsWorkerChildContext];
  [v13 setSessionContextType:0];
}

void sub_D6A8(uint64_t a1)
{
  v2 = BCSignpostLibrary();
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CollectionsQueueSync", "", buf, 2u);
  }

  v5 = objc_retainBlock(*(a1 + 40));
  if (v5)
  {
    v6 = [*(a1 + 32) collectionsWorkerChildContext];
    v5[2](v5, v6);
  }

  v7 = BCSignpostLibrary();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollectionsQueueSync", "", v15, 2u);
  }

  v10 = [*(a1 + 32) collectionsWorkerChildContext];
  v11 = [v10 hasChanges];

  if (v11)
  {
    v12 = [*(a1 + 32) collectionsWorkerChildContext];
    v14 = 0;
    [v12 save:&v14];
  }

  v13 = [*(a1 + 32) collectionsWorkerChildContext];
  [v13 setSessionContextType:0];
}

void sub_D9CC(uint64_t a1)
{
  v2 = BCSignpostLibrary();
  v3 = os_signpost_id_generate(v2);

  v4 = BCSignpostLibrary();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v18 = v6;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "WorkerQueueAsync", "%{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) workerChildContext];
  (*(v7 + 16))(v7, v8);

  v9 = BCSignpostLibrary();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v18 = v11;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, v3, "WorkerQueueAsync", "%{public}@", buf, 0xCu);
  }

  v12 = [*(a1 + 40) workerChildContext];
  v13 = [v12 hasChanges];

  if (v13)
  {
    v14 = [*(a1 + 40) workerChildContext];
    v16 = 0;
    [v14 save:&v16];
  }

  v15 = [*(a1 + 40) workerChildContext];
  [v15 setSessionContextType:0];
}

void sub_DD74(uint64_t a1)
{
  v2 = BCSignpostLibrary();
  v3 = os_signpost_id_generate(v2);

  v4 = BCSignpostLibrary();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v18 = v6;
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "WorkerQueueSync", "%{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) workerChildContext];
  (*(v7 + 16))(v7, v8);

  v9 = BCSignpostLibrary();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v18 = v11;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_END, v3, "WorkerQueueSync", "%{public}@", buf, 0xCu);
  }

  v12 = [*(a1 + 40) workerChildContext];
  v13 = [v12 hasChanges];

  if (v13)
  {
    v14 = [*(a1 + 40) workerChildContext];
    v16 = 0;
    [v14 save:&v16];
  }

  v15 = [*(a1 + 40) workerChildContext];
  [v15 setSessionContextType:0];
}

intptr_t sub_E1EC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_E668(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8D8FC();
    }
  }

  if (v6 && ![v6 BOOLValue])
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Skip updating series info, becasue server said so.", v13, 2u);
    }
  }

  else
  {
    v14[0] = BKSeriesManagerSeriesTypeBookSeries;
    v9 = [a1[4] copy];
    v15[0] = v9;
    v14[1] = BKSeriesManagerSeriesTypeAudiobookSeries;
    v10 = [a1[5] copy];
    v15[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v12 = [a1[6] seriesManager];
    [v12 updateSeriesForSeriesAdamIDsWithTypes:v11 forceCheck:0];
  }
}

void sub_ED58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 checkOwnedSingleBookSeriesWithManagedObjectContext:v4];
  [*(a1 + 32) checkNonSeriesAudiobooksWithManagedObjectContext:v4];
}

void sub_F490(uint64_t a1, void *a2)
{
  v37 = a2;
  [v37 setSessionContextType:1];
  v40 = +[NSMutableArray array];
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v4 = [NSPredicate predicateWithValue:1];
  [v3 setPredicate:v4];

  v5 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:1];
  v53[0] = v5;
  v6 = [NSSortDescriptor sortDescriptorWithKey:@"collection.collectionID" ascending:1];
  v53[1] = v6;
  v7 = [NSArray arrayWithObjects:v53 count:2];
  [v3 setSortDescriptors:v7];

  [v3 setFetchBatchSize:32];
  v41 = a1;
  v8 = [*(a1 + 32) collectionsWorkerChildContext];
  v36 = v3;
  v9 = [v8 executeFetchRequest:v3 error:0];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
  v39 = v10;
  if (!v11)
  {
    v13 = 0;
    v14 = &stru_D8298;
    v15 = &stru_D8298;
    goto LABEL_26;
  }

  v12 = v11;
  v13 = 0;
  v42 = *v48;
  v14 = &stru_D8298;
  v15 = &stru_D8298;
  do
  {
    v16 = 0;
    do
    {
      v17 = v15;
      v18 = v14;
      if (*v48 != v42)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v47 + 1) + 8 * v16);
      v15 = [v19 assetID];
      v20 = [v19 collection];
      v21 = [v20 collectionID];
      v14 = v21;
      if (!v13 || (v15 ? (v22 = v21 == 0) : (v22 = 1), v22 || ![(__CFString *)v15 isEqualToString:v17]|| ![(__CFString *)v14 isEqualToString:v18]))
      {
        v27 = v19;

        v13 = v27;
        goto LABEL_18;
      }

      v23 = [v19 sortKey];
      if (!v23)
      {
LABEL_21:
        [v40 addObject:v19];
        goto LABEL_22;
      }

      v24 = v23;
      v25 = [v19 localModDate];
      if (v25)
      {
      }

      else
      {
        v38 = [v13 localModDate];

        if (v38)
        {
          goto LABEL_21;
        }
      }

      [v40 addObject:v13];
      v26 = v19;

      v13 = v26;
LABEL_22:
      v10 = v39;
LABEL_18:

      v16 = v16 + 1;
    }

    while (v12 != v16);
    v28 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    v12 = v28;
  }

  while (v28);
LABEL_26:

  if ([v40 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = v40;
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v44;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v43 + 1) + 8 * i);
          v35 = [*(v41 + 32) collectionsWorkerChildContext];
          [v35 deleteObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v31);
    }

    v10 = v39;
  }
}

void sub_10040(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "resetSeriesOnAllBooks"))
  {
    kdebug_trace();
    v2 = [*(a1 + 40) usq_moc];
    [v2 refreshAllObjects];

    if ([*(a1 + 32) count])
    {
      v3 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
      v4 = [NSPredicate predicateWithFormat:@"seriesID IN %@ AND author == %@ AND contentType == %@", *(a1 + 32), @"UnknownAuthor", &off_DDF58];
      [v3 setPredicate:v4];

      [v3 setFetchBatchSize:64];
      v5 = [*(a1 + 40) usq_moc];
      v6 = [v5 executeFetchRequest:v3 error:0];

      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v211 objects:v236 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v212;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v212 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(a1 + 40) _updateAuthorForSeriesContainer:*(*(&v211 + 1) + 8 * i)];
          }

          v9 = [v7 countByEnumeratingWithState:&v211 objects:v236 count:16];
        }

        while (v9);
      }
    }

    v180 = +[BKLibraryManager predicateForLocalOrDownloadingLibraryAssets];
    v179 = [*(a1 + 40) predicateForPurchasedBooksAssets];
    v12 = [NSPredicate predicateWithFormat:@"(%K != NULL OR %K != NULL)", @"purchasedAndLocalParent", @"localOnlySeriesItemsParent"];
    v13 = [NSPredicate predicateWithFormat:@"(%K = NULL AND %K.@count > 0) OR (ANY %K.%K > %K)", @"purchaseDate", @"purchasedAndLocalSeriesItems", @"purchasedAndLocalSeriesItems", @"purchaseDate", @"purchaseDate"];
    v14 = [NSPredicate predicateWithFormat:@"(%K = NULL AND %K.@count > 0) OR (ANY %K.%K > %K)", @"modificationDate", @"purchasedAndLocalSeriesItems", @"purchasedAndLocalSeriesItems", @"modificationDate", @"modificationDate"];
    v15 = [NSPredicate predicateWithFormat:@"(%K = NULL AND %K.@count > 0) OR (ANY %K.%K > %K)", @"lastOpenDate", @"purchasedAndLocalSeriesItems", @"purchasedAndLocalSeriesItems", @"lastOpenDate", @"lastOpenDate"];
    v16 = [NSPredicate predicateWithFormat:@"(%K == 0 OR %K == NULL) AND (ANY %K.%K == 1)", @"isNew", @"isNew", @"localOnlySeriesItems", @"isNew"];
    v17 = [NSPredicate predicateWithFormat:@"%K == 1 AND NOT (ANY %K.%K == 1)", @"isNew", @"localOnlySeriesItems", @"isNew"];
    v18 = [NSPredicate predicateWithFormat:@"%K == NULL OR %K == 0", @"seriesStackIDs", @"seriesStackIDs"];
    v190 = v13;
    v191 = v12;
    v235[0] = v12;
    v188 = v15;
    v189 = v14;
    v235[1] = v14;
    v235[2] = v15;
    v235[3] = v13;
    v183 = v17;
    v184 = v16;
    v235[4] = v16;
    v235[5] = v17;
    v174 = v18;
    v235[6] = v18;
    v19 = [NSArray arrayWithObjects:v235 count:7];
    v20 = [NSCompoundPredicate orPredicateWithSubpredicates:v19];

    v177 = v20;
    v234[0] = v20;
    v21 = [*(a1 + 40) predicateForContainerLibraryAssets];
    v234[1] = v21;
    v22 = [NSArray arrayWithObjects:v234 count:2];
    v192 = [NSCompoundPredicate andPredicateWithSubpredicates:v22];

    v176 = [NSPredicate predicateWithFormat:@"purchasedAndLocalParent == NULL OR purchasedAndLocalParent == 0"];
    v233[0] = v176;
    v233[1] = v179;
    v23 = [NSArray arrayWithObjects:v233 count:2];
    v182 = [NSCompoundPredicate andPredicateWithSubpredicates:v23];

    v173 = [NSPredicate predicateWithFormat:@"localOnlySeriesItemsParent == NULL OR localOnlySeriesItemsParent == 0"];
    v232[0] = v173;
    v232[1] = v180;
    v24 = [NSArray arrayWithObjects:v232 count:2];
    v25 = [NSCompoundPredicate andPredicateWithSubpredicates:v24];

    v26 = [*(a1 + 40) predicateForUnownedSeriesLibraryAssets];
    v231[0] = v26;
    v27 = +[BKLibraryManager predicateForInTheCloudLibraryAssets];
    v231[1] = v27;
    v28 = [NSArray arrayWithObjects:v231 count:2];
    v29 = [NSCompoundPredicate orPredicateWithSubpredicates:v28];

    v171 = [NSPredicate predicateWithFormat:@"localOnlySeriesItemsParent != NULL AND localOnlySeriesItemsParent != 0"];
    v172 = v29;
    v230[0] = v29;
    v230[1] = v171;
    v30 = [NSArray arrayWithObjects:v230 count:2];
    v31 = [NSCompoundPredicate andPredicateWithSubpredicates:v30];

    v32 = [*(a1 + 40) predicateForUnownedSeriesLibraryAssets];
    v169 = [NSPredicate predicateWithFormat:@"purchasedAndLocalParent != NULL AND purchasedAndLocalParent != 0"];
    v170 = v32;
    v229[0] = v32;
    v229[1] = v169;
    v33 = [NSArray arrayWithObjects:v229 count:2];
    v34 = [NSCompoundPredicate andPredicateWithSubpredicates:v33];

    v35 = [NSPredicate predicateWithFormat:@"seriesContainer == NULL OR seriesContainer == 0"];
    v178 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
    v36 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K != 0", @"seriesID", @"seriesID"];
    v181 = v25;
    v228[0] = v25;
    v228[1] = v182;
    v186 = v34;
    v187 = v31;
    v228[2] = v31;
    v228[3] = v34;
    v185 = v35;
    v228[4] = v35;
    v37 = [NSArray arrayWithObjects:v228 count:5];
    v38 = [NSCompoundPredicate orPredicateWithSubpredicates:v37];

    v227[0] = v38;
    v168 = v36;
    v227[1] = v36;
    v39 = [*(a1 + 40) predicateForExcludingContainerLibraryAssets];
    v227[2] = v39;
    v40 = [NSArray arrayWithObjects:v227 count:3];
    v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

    v226[0] = v41;
    v226[1] = v192;
    v42 = [NSArray arrayWithObjects:v226 count:2];
    v43 = [NSCompoundPredicate orPredicateWithSubpredicates:v42];

    if ([*(a1 + 40) resetSeriesOnAllBooks])
    {
      v44 = v178;
      [v178 setPredicate:v43];
      [*(a1 + 40) setResetSeriesOnAllBooks:0];
    }

    else
    {
      v45 = [NSPredicate predicateWithFormat:@"%K IN %@", @"seriesID", *(a1 + 32)];
      v225[0] = v45;
      v225[1] = v43;
      v46 = [NSArray arrayWithObjects:v225 count:2];
      v47 = [NSCompoundPredicate andPredicateWithSubpredicates:v46];
      v44 = v178;
      [v178 setPredicate:v47];
    }

    v48 = [*(a1 + 40) usq_moc];
    v210 = 0;
    v49 = [v48 executeFetchRequest:v44 error:&v210];
    v175 = v210;

    v193 = +[NSMutableDictionary dictionary];
    v194 = +[NSMutableDictionary dictionary];
    v50 = BKLibraryLog();
    v51 = v50;
    v52 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
    v53 = v180;
    v167 = v43;
    if (v49)
    {
      v165 = v41;
      v166 = v38;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        sub_8DA78(v49);
      }

      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v164 = v49;
      obj = v49;
      v54 = [obj countByEnumeratingWithState:&v206 objects:v224 count:16];
      v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
      if (v54)
      {
        v56 = v54;
        v57 = *v207;
        v195 = *v207;
        do
        {
          v58 = 0;
          v196 = v56;
          do
          {
            if (*v207 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v59 = *(*(&v206 + 1) + 8 * v58);
            if (v59)
            {
              v60 = [*(*(&v206 + 1) + 8 * v58) seriesID];

              if (v60)
              {
                if ([v59 isContainer])
                {
                  if (([v59 isNew] & 1) == 0 && objc_msgSend(v184, "evaluateWithObject:", v59))
                  {
                    [v59 setIsNew:1];
                  }

                  if ([v59 isNew] && objc_msgSend(v183, "evaluateWithObject:", v59))
                  {
                    [v59 setIsNew:0];
                  }

                  if ([v191 evaluateWithObject:v59])
                  {
                    [v59 setDifferentObject:0 forKey:@"purchasedAndLocalParent"];
                    [v59 setDifferentObject:0 forKey:@"localOnlySeriesItemsParent"];
                  }

                  if ([v189 evaluateWithObject:v59])
                  {
                    v61 = [v52[395] fetchRequestWithEntityName:@"BKLibraryAsset"];
                    v62 = [v55[371] predicateWithFormat:@"%K = %@ AND (%K != NULL OR %K != NULL)", @"purchasedAndLocalParent", v59, @"modificationDate", @"creationDate"];
                    [v61 setPredicate:v62];

                    [v61 setFetchLimit:1];
                    v63 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:0];
                    v223[0] = v63;
                    v64 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
                    v223[1] = v64;
                    v65 = [NSArray arrayWithObjects:v223 count:2];
                    [v61 setSortDescriptors:v65];

                    v66 = [*(a1 + 40) usq_moc];
                    v205 = 0;
                    v67 = [v66 executeFetchRequest:v61 error:&v205];
                    v68 = v205;

                    if (v67)
                    {
                      v69 = [v67 firstObject];
                      v70 = [v69 modificationDate];
                      if (v70)
                      {
                        [v59 setModificationDate:v70];
                      }

                      else
                      {
                        v94 = [v67 firstObject];
                        v95 = [v94 creationDate];
                        [v59 setModificationDate:v95];

                        v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                      }
                    }

                    else
                    {
                      v69 = BKLibraryLog();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v220 = v59;
                        v221 = 2112;
                        v222 = v68;
                        _os_log_error_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "Error fetching modification date for %@ - %@", buf, 0x16u);
                      }
                    }

                    v56 = v196;

                    v52 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                  }

                  if ([v188 evaluateWithObject:v59])
                  {
                    v96 = [v52[395] fetchRequestWithEntityName:@"BKLibraryAsset"];
                    v97 = [v55[371] predicateWithFormat:@"%K = %@ AND (%K != NULL OR %K != NULL)", @"purchasedAndLocalParent", v59, @"lastOpenDate", @"creationDate"];
                    [v96 setPredicate:v97];

                    [v96 setFetchLimit:1];
                    v98 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
                    v218[0] = v98;
                    v99 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
                    v218[1] = v99;
                    v100 = [NSArray arrayWithObjects:v218 count:2];
                    [v96 setSortDescriptors:v100];

                    v101 = [*(a1 + 40) usq_moc];
                    v204 = 0;
                    v102 = [v101 executeFetchRequest:v96 error:&v204];
                    v103 = v204;

                    if (v102)
                    {
                      v104 = [v102 firstObject];
                      v105 = [v104 lastOpenDate];
                      v106 = v105;
                      if (v105)
                      {
                        v107 = v105;
                      }

                      else
                      {
                        v108 = [v102 firstObject];
                        v107 = [v108 creationDate];

                        v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                      }

                      [v59 nonUserUpdateLastOpenDateTo:v107];
                    }

                    else
                    {
                      v107 = BKLibraryLog();
                      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v220 = v59;
                        v221 = 2112;
                        v222 = v103;
                        _os_log_error_impl(&dword_0, v107, OS_LOG_TYPE_ERROR, "Error fetching lastOpenDate date for %@ - %@", buf, 0x16u);
                      }
                    }

                    v56 = v196;

                    v52 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                  }

                  if ([v190 evaluateWithObject:v59])
                  {
                    v109 = [v52[395] fetchRequestWithEntityName:@"BKLibraryAsset"];
                    v110 = [v55[371] predicateWithFormat:@"%K = %@ AND (%K != NULL OR %K != NULL)", @"purchasedAndLocalParent", v59, @"purchaseDate", @"creationDate"];
                    [v109 setPredicate:v110];

                    [v109 setFetchLimit:1];
                    v111 = [NSSortDescriptor sortDescriptorWithKey:@"purchaseDate" ascending:0];
                    v217[0] = v111;
                    v112 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
                    v217[1] = v112;
                    v113 = [NSArray arrayWithObjects:v217 count:2];
                    [v109 setSortDescriptors:v113];

                    v114 = [*(a1 + 40) usq_moc];
                    v203 = 0;
                    v115 = [v114 executeFetchRequest:v109 error:&v203];
                    v116 = v203;

                    if (v115)
                    {
                      v117 = [v115 firstObject];
                      v118 = [v117 purchaseDate];
                      if (v118)
                      {
                        [v59 setPurchaseDate:v118];
                      }

                      else
                      {
                        v119 = [v115 firstObject];
                        v120 = [v119 creationDate];
                        [v59 setPurchaseDate:v120];

                        v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                      }
                    }

                    else
                    {
                      v117 = BKLibraryLog();
                      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v220 = v59;
                        v221 = 2112;
                        v222 = v116;
                        _os_log_error_impl(&dword_0, v117, OS_LOG_TYPE_ERROR, "Error fetching modification date for %@ - %@", buf, 0x16u);
                      }
                    }

                    v56 = v196;

                    v52 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                  }

                  v57 = v195;
                  if ([v192 evaluateWithObject:v59])
                  {
                    [*(a1 + 40) updateSeriesContainerSeriesStackAssetIDs:v59];
                  }

                  goto LABEL_106;
                }

                v71 = [v59 seriesID];
                v72 = [v193 objectForKeyedSubscript:v71];

                if (!v72)
                {
                  v73 = *(a1 + 40);
                  v74 = [v59 seriesID];
                  v75 = [*(a1 + 40) usq_moc];
                  v72 = [v73 seriesContainerForSeriesID:v74 inManagedObjectContext:v75];

                  if (v72)
                  {
                    v76 = [v59 seriesID];
                    [v193 setObject:v72 forKeyedSubscript:v76];

                    goto LABEL_41;
                  }

                  v93 = BKLibraryLog();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    sub_8DB18(v216, v59);
                  }

                  v72 = 0;
LABEL_100:

                  v57 = v195;
                  goto LABEL_101;
                }

LABEL_41:
                if (([v185 evaluateWithObject:v59] & 1) != 0 || (objc_msgSend(v182, "evaluateWithObject:", v59) & 1) != 0 || objc_msgSend(v181, "evaluateWithObject:", v59))
                {
                  v77 = [v72 purchasedAndLocalSeriesItems];
                  v78 = [v77 count];

                  if (v78 == &dword_0 + 1)
                  {
                    v79 = [v72 purchasedAndLocalSeriesItems];
                    goto LABEL_48;
                  }

                  v80 = [v72 localOnlySeriesItems];
                  v81 = [v80 count];

                  if (v81 == &dword_0 + 1)
                  {
                    v79 = [v72 localOnlySeriesItems];
LABEL_48:
                    v82 = v79;
                    v83 = [v79 anyObject];

                    v84 = [v83 assetID];
                    [v83 setAssetID:v84];
                  }

                  [*(a1 + 40) updateSeriesRelationshipsForSeriesAsset:v59];
                  v85 = [v59 seriesID];
                  [v194 setObject:v72 forKeyedSubscript:v85];
                }

                if (([v59 isContainer] & 1) == 0 && (objc_msgSend(v59, "isSeriesItem") & 1) == 0)
                {
                  v86 = [v59 modificationDate];
                  if (v86)
                  {
                    v87 = v86;
                    v88 = [v72 modificationDate];
                    if (v88)
                    {
                      v89 = v88;
                      v90 = [v59 modificationDate];
                      v91 = [v72 modificationDate];
                      v92 = [v90 compare:v91];

                      v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                      v56 = v196;

                      v135 = v92 == &dword_0 + 1;
                      v57 = v195;
                      if (!v135)
                      {
                        goto LABEL_86;
                      }
                    }

                    else
                    {
                    }

                    v121 = [v59 modificationDate];
                    [v72 setModificationDate:v121];
                  }
                }

LABEL_86:
                v122 = [v59 purchaseDate];
                if (v122)
                {
                  v123 = v122;
                  v124 = [v72 purchaseDate];
                  if (v124)
                  {
                    v125 = v124;
                    v126 = [v59 purchaseDate];
                    v127 = [v72 purchaseDate];
                    v128 = [v126 compare:v127];

                    v55 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
                    v56 = v196;

                    v135 = v128 == &dword_0 + 1;
                    v57 = v195;
                    if (!v135)
                    {
                      goto LABEL_92;
                    }
                  }

                  else
                  {
                  }

                  v129 = [v59 purchaseDate];
                  [v72 setPurchaseDate:v129];
                }

LABEL_92:
                if ([v72 isNew])
                {
                  v93 = [v52[395] fetchRequestWithEntityName:@"BKLibraryAsset"];
                  v130 = v55[371];
                  v131 = [v72 localOnlySeriesItems];
                  v132 = [v130 predicateWithFormat:@"self IN %@ AND (%K == 1) AND (%K == %@)", v131, @"isNew", @"state", &off_DDF88];
                  [v93 setPredicate:v132];

                  v133 = [*(a1 + 40) usq_moc];
                  v202 = 0;
                  v134 = [v133 countForFetchRequest:v93 error:&v202];

                  if (v134)
                  {
                    v135 = v134 == 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v135 = 1;
                  }

                  v136 = !v135;
                  [v72 setIsNew:v136];
                  goto LABEL_100;
                }

LABEL_101:
                if ([v186 evaluateWithObject:v59])
                {
                  [v59 setPurchasedAndLocalParent:0];
                  v137 = [v59 seriesID];
                  [v194 setObject:v72 forKeyedSubscript:v137];
                }

                if ([v187 evaluateWithObject:v59])
                {
                  [v59 setLocalOnlySeriesItemsParent:0];
                  v138 = [v59 seriesID];
                  [v194 setObject:v72 forKeyedSubscript:v138];
                }
              }
            }

LABEL_106:
            v58 = v58 + 1;
          }

          while (v56 != v58);
          v56 = [obj countByEnumeratingWithState:&v206 objects:v224 count:16];
        }

        while (v56);
      }

      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v139 = v194;
      v140 = [v139 countByEnumeratingWithState:&v198 objects:v215 count:16];
      v141 = v176;
      if (!v140)
      {
        goto LABEL_122;
      }

      v142 = v140;
      v143 = *v199;
LABEL_110:
      v144 = 0;
      while (1)
      {
        if (*v199 != v143)
        {
          objc_enumerationMutation(v139);
        }

        v145 = [v139 objectForKeyedSubscript:*(*(&v198 + 1) + 8 * v144)];
        [*(a1 + 40) _updateAuthorForSeriesContainer:v145];
        v146 = [v145 seriesBooks];
        v147 = [v146 count];

        if (v147 == &dword_0 + 1)
        {
          break;
        }

        v149 = [v145 purchasedAndLocalSeriesItems];
        v150 = [v149 count];

        if (v150 == &dword_0 + 1)
        {
          v148 = [v145 purchasedAndLocalSeriesItems];
          goto LABEL_119;
        }

        v151 = [v145 localOnlySeriesItems];
        v152 = [v151 count];

        if (v152 == &dword_0 + 1)
        {
          v148 = [v145 localOnlySeriesItems];
          goto LABEL_119;
        }

LABEL_120:

        if (v142 == ++v144)
        {
          v142 = [v139 countByEnumeratingWithState:&v198 objects:v215 count:16];
          if (!v142)
          {
LABEL_122:

            v156 = [*(a1 + 40) usq_moc];
            [v156 processPendingChanges];

            v157 = [*(a1 + 40) usq_moc];
            v158 = [v157 hasChanges];

            v159 = v179;
            v53 = v180;
            v160 = v177;
            v44 = v178;
            v41 = v165;
            v38 = v166;
            v49 = v164;
            if (v158)
            {
              v51 = [*(a1 + 40) collectionController];
              v161 = [*(a1 + 40) usq_moc];
              v162 = [v51 gatherChangedAssetsCollectionsWithLibraryMoc:v161];

              v163 = [*(a1 + 40) usq_moc];
              [v163 save:0];

              [v51 processGatheredChangedAssetsCollections:v162];
              v53 = v180;
              v159 = v179;
              goto LABEL_127;
            }

            goto LABEL_128;
          }

          goto LABEL_110;
        }
      }

      v148 = [v145 seriesBooks];
LABEL_119:
      v153 = v148;
      v154 = [v148 anyObject];

      v155 = [v154 assetID];
      [v154 setAssetID:v155];

      goto LABEL_120;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_8DB74();
    }

    v159 = v179;
LABEL_127:
    v141 = v176;

    v160 = v177;
LABEL_128:
    kdebug_trace();
  }
}

void sub_11D2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v91 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v91];
  v6 = v91;
  v7 = *(a1 + 40);
  v90 = v6;
  v8 = [v3 executeFetchRequest:v7 error:&v90];
  v9 = v90;

  if (v5)
  {
    v57 = v8;
    v58 = v9;
    v60 = v3;
    v71 = +[NSMutableSet set];
    v76 = +[NSMutableDictionary dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v59 = v5;
    obj = v5;
    v65 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
    if (v65)
    {
      v69 = 0;
      v70 = 0;
      v63 = *v87;
      do
      {
        v10 = 0;
        do
        {
          if (*v87 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v67 = v10;
          v11 = *(*(&v86 + 1) + 8 * v10);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v72 = v11;
          v74 = [v11 members];
          v12 = [v74 countByEnumeratingWithState:&v82 objects:v103 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v83;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v83 != v14)
                {
                  objc_enumerationMutation(v74);
                }

                v16 = [*(*(&v82 + 1) + 8 * i) asset];
                if ([v16 isValid])
                {
                  v17 = [v72 collectionID];
                  v18 = [v76 objectForKey:v17];
                  if (!v18)
                  {
                    v18 = +[NSMutableDictionary dictionary];
                    [v76 setObject:v18 forKey:v17];
                  }

                  v19 = [v18 objectForKey:@"BookCount"];
                  v20 = [v19 unsignedIntegerValue];

                  v21 = [NSNumber numberWithUnsignedInteger:v20 + 1];
                  [v18 setObject:v21 forKey:@"BookCount"];

                  if ([v16 isCloud])
                  {
                    v22 = [v18 objectForKey:@"CloudCount"];
                    v23 = [v22 unsignedIntegerValue];

                    v24 = [NSNumber numberWithUnsignedInteger:v23 + 1];
                    [v18 setObject:v24 forKey:@"CloudCount"];

                    ++v70;
                  }

                  if (([v16 isStore] & 1) == 0)
                  {
                    v25 = [v18 objectForKey:@"SideLoadedCount"];
                    v26 = [v25 unsignedIntegerValue];

                    v27 = [NSNumber numberWithUnsignedInteger:v26 + 1];
                    [v18 setObject:v27 forKey:@"SideLoadedCount"];

                    ++v69;
                  }

                  v28 = [v16 genre];
                  if (v28)
                  {
                    v29 = v28;
                  }

                  else
                  {
                    v29 = @"Unknown";
                  }

                  v30 = [v18 objectForKey:@"Genres"];
                  if (!v30)
                  {
                    v30 = +[NSMutableSet set];
                    [v18 setObject:v30 forKey:@"Genres"];
                  }

                  [v30 addObject:v29];
                  [v71 addObject:v29];
                }
              }

              v13 = [v74 countByEnumeratingWithState:&v82 objects:v103 count:16];
            }

            while (v13);
          }

          v10 = v67 + 1;
        }

        while ((v67 + 1) != v65);
        v65 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
      }

      while (v65);
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v31 = v76;
    v32 = [v31 countByEnumeratingWithState:&v78 objects:v102 count:16];
    if (v32)
    {
      v33 = v32;
      v75 = kBKCollectionDefaultAll;
      v77 = *v79;
      v73 = kBKCollectionDefaultIDBooks;
      v66 = kBKCollectionDefaultIDSamples;
      v68 = kBKCollectionDefaultIDWantToRead;
      v64 = kBKCollectionDefaultIDPDFs;
      obja = v31;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v79 != v77)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v78 + 1) + 8 * j);
          v36 = [v31 objectForKeyedSubscript:v35];
          v37 = [v36 objectForKey:@"BookCount"];
          v38 = [v37 unsignedIntegerValue];

          v39 = [v36 objectForKey:@"Genres"];
          v40 = [v39 count];

          v41 = [v36 objectForKey:@"SideLoadedCount"];
          v42 = [v41 unsignedIntegerValue];

          v43 = [v36 objectForKey:@"CloudCount"];
          v44 = [v43 unsignedIntegerValue];

          v45 = @"All";
          if (([v35 isEqualToString:v75] & 1) == 0)
          {
            v45 = @"Books";
            if (([v35 isEqualToString:v73] & 1) == 0)
            {
              v45 = @"Want to Read";
              if (([v35 isEqualToString:v68] & 1) == 0)
              {
                v45 = @"My Samples";
                if (([v35 isEqualToString:v66] & 1) == 0)
                {
                  v45 = @"PDFs";
                  if (([v35 isEqualToString:v64] & 1) == 0)
                  {
                    if ([v35 isEqualToString:@"Unknown"])
                    {
                      v45 = @"Unknown";
                    }

                    else
                    {
                      v45 = @"Custom";
                    }
                  }
                }
              }
            }
          }

          v46 = BKLibraryLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v47 = [NSNumber numberWithUnsignedInteger:v38];
            v48 = [NSNumber numberWithUnsignedInteger:v40];
            v49 = [NSNumber numberWithUnsignedInteger:v42];
            v31 = obja;
            v50 = [NSNumber numberWithUnsignedInteger:v44];
            *buf = 138413314;
            v93 = v47;
            v94 = 2112;
            v95 = v45;
            v96 = 2112;
            v97 = v48;
            v98 = 2112;
            v99 = v49;
            v100 = 2112;
            v101 = v50;
            _os_log_debug_impl(&dword_0, v46, OS_LOG_TYPE_DEBUG, "Collection: bookCount %@, collectionType = %@, genreCount = %@, sideLoadCount = %@, cloudCount = %@", buf, 0x34u);
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v78 objects:v102 count:16];
      }

      while (v33);
    }

    v51 = BKLibraryLog();
    v8 = v57;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v57 count]);
      v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count]);
      v54 = [NSNumber numberWithUnsignedInteger:[v71 count]];
      v55 = [NSNumber numberWithUnsignedInteger:v69];
      v56 = [NSNumber numberWithUnsignedInteger:v70];
      *buf = 138413314;
      v93 = v52;
      v94 = 2112;
      v95 = v53;
      v96 = 2112;
      v97 = v54;
      v98 = 2112;
      v99 = v55;
      v100 = 2112;
      v101 = v56;
      _os_log_debug_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "Library: bookCount %@, collectionsCount = %@, genreCount = %@, sideLoadCount = %@, cloudCount = %@", buf, 0x34u);
    }

    v5 = v59;
    v3 = v60;
    v9 = v58;
  }

  else
  {
    v71 = BKLibraryLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_8DD8C();
    }
  }
}

void sub_126F4(uint64_t a1)
{
  v3 = [*(a1 + 32) newManagedObjectContext];
  v2 = [NSString stringWithFormat:@"NewMOC 10 %s", "[BKLibraryManager cleanupDefaultCollections]_block_invoke"];
  [v3 setName:v2];

  [*(a1 + 32) _updateRelationshipsInContext:v3];
  if ([v3 hasChanges])
  {
    [v3 save:0];
  }
}

void sub_12804(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"dateFinished == NULL"];
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() predicateFor_All_Finished_LibraryAssets];
  v23[0] = v7;
  v23[1] = v4;
  v8 = [NSArray arrayWithObjects:v23 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v5 setPredicate:v9];

  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:32];
  v21 = 0;
  v10 = [v3 executeFetchRequest:v5 error:&v21];
  v11 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) cleanupDateFinished];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

id sub_12A9C(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  kdebug_trace();
  v4 = *(a1 + 32);

  return [v4 saveCachedMigrationData];
}

void sub_12BEC(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("BKLibrary.reloadQueue", v1);
  v3 = qword_EFC78;
  qword_EFC78 = v2;
}

void sub_12C70(uint64_t a1)
{
  [*(a1 + 32) _performReload];
  v2 = BKLibraryLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 134217984;
    v13 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%p: updatesScheduleQueue activated after Library Reload", &v12, 0xCu);
  }

  v4 = [*(a1 + 32) updatesScheduleQueue];
  dispatch_activate(v4);

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    [v7 libraryDidReload:*(a1 + 32)];
  }

  v8 = BKLibraryPriceTrackingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Library reload completed, scheduling price tracking update", &v12, 2u);
  }

  v9 = [*(a1 + 32) priceTracker];
  [v9 setNeedsConfigurationUpdate];

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void sub_12F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCSignpostLibrary();
  v5 = os_signpost_id_generate(v4);

  v6 = BCSignpostLibrary();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Reload Library", "", buf, 2u);
  }

  [*(a1 + 32) setReloading:1];
  v8 = BKLibraryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 134217984;
    v34 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Unclaim assets", buf, 0xCu);
  }

  kdebug_trace();
  v10 = *(a1 + 32);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_133A8;
  v31[3] = &unk_D5420;
  v31[4] = v10;
  v11 = v3;
  v32 = v11;
  [v10 dq_sync:v31];
  kdebug_trace();
  v12 = [*(a1 + 32) dataSources];
  objc_sync_enter(v12);
  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 134217984;
    v34 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Reconcile assets", buf, 0xCu);
  }

  [*(a1 + 32) wq_reconcileDataSourceAssetsForReason:4 context:v11];
  objc_sync_exit(v12);

  v15 = BKLibraryLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 134217984;
    v34 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Integrate assets", buf, 0xCu);
  }

  v17 = *(a1 + 32);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_133B4;
  v28 = &unk_D5420;
  v29 = v17;
  v18 = v11;
  v30 = v18;
  [v17 dq_sync:&v25];
  [*(a1 + 32) setReloading:{0, v25, v26, v27, v28, v29}];
  v19 = BKLibraryLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 134217984;
    v34 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Save library", buf, 0xCu);
  }

  kdebug_trace();
  [v18 saveLibrary];
  kdebug_trace();
  v21 = BCSignpostLibrary();
  v22 = v21;
  if (v5 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, v5, "Reload Library", "", buf, 2u);
  }

  v23 = BKLibraryLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    *buf = 134217984;
    v34 = v24;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%p: Library Reload: Done", buf, 0xCu);
  }
}

uint64_t sub_133B4(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) wq_dq_integrateClaimedAssetsReason:4 context:*(a1 + 40)];

  return kdebug_trace();
}

void sub_1372C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSources];
  v16 = v3;
  v5 = [v4 indexOfObjectIdenticalTo:v3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1 << v5;
  }

  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v14 = [*(a1 + 32) assetUpdatesByIdentifier];
        v15 = [v14 objectForKeyedSubscript:v13];

        if (([v15 dataSourcesBitmask] & v6) != 0)
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_13A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_13A34(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) coalescedDataSourceReloadByIdentifier];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_initWeak(&location, *(a1 + 40));
    v7 = [BUCoalescingCallBlock alloc];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_13BC8;
    v18 = &unk_D5978;
    objc_copyWeak(&v21, &location);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v19 = v8;
    v20 = v9;
    v10 = [v7 initWithNotifyBlock:&v15 blockDescription:@"BKLibraryManager data source reload"];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(*(a1 + 48) + 8) + 40);
    v14 = [*(a1 + 40) coalescedDataSourceReloadByIdentifier];
    [v14 setObject:v13 forKeyedSubscript:v2];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void sub_13BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_13BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_13C80;
  v7[3] = &unk_D5908;
  v5 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v6 = v3;
  [WeakRetained _reloadDataSource:v5 completion:v7];
}

void sub_13C80(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) completionQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

void sub_13EC4(id *a1, void *a2)
{
  v46 = a2;
  v52 = a1;
  v3 = [a1[4] identifier];
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Performing an on-demand reload on data source %@", buf, 0xCu);
  }

  kdebug_trace();
  kdebug_trace();
  v5 = a1 + 5;
  [v52[5] setReloading:1];
  group = dispatch_group_create();
  v47 = [v52[5] dataSources];
  v6 = objc_opt_new();
  v7 = v52 + 4;
  v8 = v52[4];
  v9 = [v52[5] dataSources];
  v10 = [v9 indexOfObjectIdenticalTo:v8];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << v10;
  }

  v12 = *v5;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_14584;
  v72[3] = &unk_D5A18;
  v72[4] = v12;
  v73 = *v7;
  v44 = v3;
  v74 = v44;
  v13 = v6;
  v75 = v13;
  v76 = v11;
  [v12 dq_sync:v72];
  v45 = [v13 copy];
  v14 = [*v5 dataSources];
  objc_sync_enter(v14);
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = *v7;
  v17 = [*v5 completionQueue];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_14AA4;
  v68[3] = &unk_D5A68;
  v48 = v13;
  v69 = v48;
  v49 = *(v52 + 2);
  v18 = v49.i64[0];
  v70 = vextq_s8(v49, v49, 8uLL);
  v19 = v15;
  v71 = v19;
  sub_1473C(v16, v17, v68);

  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  objc_sync_exit(v14);

  if ([v48 count])
  {
    v20 = objc_opt_new();
    v21 = v52[5];
    v22 = [v21 dataSources];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_14C4C;
    v66[3] = &unk_D5A90;
    v23 = v20;
    v67 = v23;
    [v21 _enumerateDataSources:v22 intersectingWithAssetIDs:v48 usingBlock:v66];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v24 = v47;
    v25 = [v24 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v25)
    {
      v26 = *v63;
      v50 = v24;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          v29 = [v28 identifier];
          v30 = [v23 objectForKeyedSubscript:v29];
          v31 = [v24 indexOfObjectIdenticalTo:v28];
          if (v31 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v32 = 0;
          }

          else
          {
            v32 = 1 << v31;
          }

          if ([v30 count] && v28 != v52[4])
          {
            dispatch_group_enter(group);
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_14E3C;
            v57[3] = &unk_D5B08;
            v57[4] = v28;
            v33 = v26;
            v34 = v23;
            v35 = v30;
            v36 = v52[5];
            v58 = v35;
            v59 = v36;
            v61 = v32;
            v24 = v50;
            v60 = group;
            v37 = v35;
            v23 = v34;
            v26 = v33;
            sub_14CC0(v37, v28, v57);
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v62 objects:v77 count:16];
      }

      while (v25);
    }
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v38 = v52[5];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_15128;
  v53[3] = &unk_D5A40;
  v39 = v45;
  v40 = v52[5];
  v54 = v39;
  v55 = v40;
  v41 = v46;
  v56 = v41;
  [v38 dq_sync:v53];
  [v52[5] setReloading:0];
  kdebug_trace();
  kdebug_trace();
  [v41 saveLibrary];
  v42 = objc_retainBlock(v52[6]);
  v43 = v42;
  if (v42)
  {
    (*(v42 + 2))(v42);
  }
}

void sub_14584(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v13 count:1];
  v4 = [*(a1 + 32) assetUpdatesByIdentifier];
  v5 = [v4 allKeys];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_146C0;
  v8[3] = &unk_D59F0;
  v9 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = *(a1 + 64);
  [v2 _enumerateDataSources:v3 intersectingWithAssetIDs:v5 usingBlock:v8];
}

void sub_146C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = BKLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_8DE08(a1, v5);
  }

  [*(a1 + 40) addObjectsFromArray:v5];
  [*(a1 + 48) dq_unclaimIdentifiers:v5 forDataSourceBitmask:*(a1 + 56)];
}

void sub_1473C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 identifier];
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "#datasource Step 0: fetchAssets from: %{public}@", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_3C56C;
  v22[3] = &unk_D6738;
  v10 = v6;
  v23 = v10;
  v11 = v8;
  v24 = v11;
  v12 = v7;
  v25 = v12;
  v13 = objc_retainBlock(v22);
  if ([v5 isEnabled])
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v14 = BKLibraryLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v11;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets Step 1: fetching asset IDs from: %{public}@", buf, 0xCu);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_3C75C;
      v18[3] = &unk_D6738;
      v19 = v5;
      v20 = v11;
      v21 = v13;
      [v19 fetchAssetIDsWithCompletion:v18];
    }

    else
    {
      v16 = BKLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v5 identifier];
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets Step 1-2: fetching assets from: %{public}@", buf, 0xCu);
      }

      [v5 fetchAssetsWithCompletion:v13];
    }
  }

  else
  {
    v15 = BKLibraryLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets skipping disabled: %{public}@", buf, 0xCu);
    }

    (v13[2])(v13, 0, 0);
  }
}

void sub_14AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = [v5 valueForKey:@"assetID"];
    v9 = [v8 bu_arrayByRemovingNSNulls];
    [v7 addObjectsFromArray:v9];

    v10 = *(a1 + 32);
    v11 = [v5 valueForKey:@"temporaryAssetID"];
    v12 = [v11 bu_arrayByRemovingNSNulls];
    [v10 addObjectsFromArray:v12];

    v13 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_14C38;
    v15[3] = &unk_D5A40;
    v15[4] = v13;
    v16 = *(a1 + 48);
    v17 = v5;
    [v13 dq_sync:v15];
  }

  else if (v6)
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_8DEB4(a1);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_14C4C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = [a2 identifier];
  [v5 setObject:v6 forKeyedSubscript:v7];
}

void sub_14CC0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 isEnabled])
  {
    if (objc_opt_respondsToSelector())
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_3CBB8;
      v14[3] = &unk_D6760;
      v15 = v7;
      [v6 fetchAssetsWithIDs:v5 completion:v14];
      v8 = v15;
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_3CC38;
      v11[3] = &unk_D6788;
      v12 = v5;
      v13 = v7;
      [v6 fetchAssetsWithCompletion:v11];

      v8 = v12;
    }
  }

  else
  {
    v9 = objc_retainBlock(v7);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

void sub_14E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_15018;
  v26[3] = &unk_D5AB8;
  v6 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v27 = v6;
  v7 = [a2 bu_arrayByRemovingNSNullsInvokingBlockForNulls:v26];
  v8 = [*(a1 + 40) mutableCopy];
  v9 = [v7 valueForKey:@"assetID"];
  v10 = [v9 bu_arrayByRemovingNSNulls];
  [v8 removeObjectsInArray:v10];

  v11 = [v7 valueForKey:@"temporaryAssetID"];
  v12 = [v11 bu_arrayByRemovingNSNulls];
  [v8 removeObjectsInArray:v12];

  v13 = *(a1 + 48);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_15074;
  v19[3] = &unk_D5AE0;
  v20 = v8;
  v21 = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 32);
  v22 = v7;
  v23 = v15;
  v24 = v5;
  v25 = v14;
  v16 = v5;
  v17 = v7;
  v18 = v8;
  [v13 dq_sync:v19];
  dispatch_group_leave(*(a1 + 56));
}

void sub_15018()
{
  v0 = BKLibraryLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_8DF24();
  }
}

void sub_15074(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) dq_unclaimIdentifiers:*(a1 + 32) forDataSourceBitmask:*(a1 + 72)];
  }

  if ([*(a1 + 48) count])
  {
    v3 = *(a1 + 48);
    v2 = *(a1 + 56);
    v4 = *(a1 + 40);

    [v4 dq_libraryDataSource:v2 reconcileAssets:v3 reason:4];
  }

  else if (*(a1 + 64))
  {
    v5 = BKLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_8DFEC(a1, (a1 + 64));
    }
  }
}

id sub_15128(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 40) assetUpdatesByIdentifier];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (![v9 dataSourcesBitmask])
        {
          v10 = [*(a1 + 40) unclaimedAssetIDs];
          [v10 addObject:v7];

          v11 = [*(a1 + 40) unclaimedTemporaryAssetIDs];
          [v11 addObject:v7];

          v12 = [*(a1 + 40) assetUpdatesByIdentifier];
          [v12 removeObjectForKey:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) wq_dq_integrateClaimedAssetsReason:4 context:*(a1 + 48)];
}

void sub_155EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15730;
  v10[3] = &unk_D5B80;
  objc_copyWeak(&v15, &location);
  v16 = *(a1 + 56);
  v11 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v7 addCustomOperationBlock:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void sub_15714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_15730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1584C;
    block[3] = &unk_D5B58;
    v13 = *(a1 + 72);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = v6;
    *&v9 = v5;
    *(&v9 + 1) = v7;
    v11 = v9;
    v12 = v8;
    dispatch_async(v4, block);
  }
}

void sub_1584C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = objc_retainBlock(*(a1 + 56));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
    v2 = v3;
  }
}

void sub_15A64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v3 setResultType:2];
  v4 = [NSDate dateWithTimeIntervalSince1970:1270202400.0];
  v5 = [NSPredicate predicateWithFormat:@"%K != NULL AND %K > %@", @"purchaseDate", @"purchaseDate", v4];
  v6 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v7 = +[BKLibraryManager predicateToExcludeSeriesLibraryAssets];
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v7;
  v8 = [NSArray arrayWithObjects:v25 count:3];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v3 setPredicate:v9];

  v10 = [[NSSortDescriptor alloc] initWithKey:@"purchaseDate" ascending:1];
  v24 = v10;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  [v3 setSortDescriptors:v11];

  v23 = @"purchaseDate";
  v12 = [NSArray arrayWithObjects:&v23 count:1];
  [v3 setPropertiesToFetch:v12];

  [v3 setFetchLimit:1];
  v22 = 0;
  v13 = [v2 executeFetchRequest:v3 error:&v22];

  v14 = v22;
  if (v14)
  {
    v15 = BKLibraryLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_8E060();
    }
  }

  objc_opt_class();
  v16 = [v13 firstObject];
  v17 = [v16 objectForKeyedSubscript:@"purchaseDate"];
  v18 = BUDynamicCast();

  v19 = objc_retainBlock(*(a1 + 32));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v18);
  }
}

void sub_15EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) completionQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_15FC4;
    v5[3] = &unk_D5908;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_16170(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_16298;
  v10[3] = &unk_D5C48;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  [v7 addCustomOperationBlock:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_1627C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_16298(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1637C;
    block[3] = &unk_D5C20;
    v8 = a1[6];
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void sub_1637C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_16500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_16628;
  v10[3] = &unk_D5C48;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  [v7 addCustomOperationBlock:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_1660C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_16628(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1670C;
    block[3] = &unk_D5C20;
    v8 = a1[6];
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void sub_1670C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_16930(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, *(a1 + 32));
  v10 = *(a1 + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_16A84;
  v14[3] = &unk_D5CC0;
  objc_copyWeak(&v19, &location);
  v18 = *(a1 + 40);
  v11 = v7;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  [v10 addCustomOperationBlock:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void sub_16A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_16A84(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained completionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_16B94;
    v10[3] = &unk_D5C98;
    v5 = a1[7];
    v6 = a1[4];
    v7 = a1[5];
    *&v8 = a1[6];
    *(&v8 + 1) = v5;
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v11 = v9;
    v12 = v8;
    dispatch_async(v4, v10);
  }
}

void sub_16B94(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 56));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40), *(a1 + 48));
    v2 = v3;
  }
}

void sub_16CB8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 libraryMutableAssetWithAssetID:v4 inManagedObjectContext:v5];
  [v6 setUrl:a1[6]];
  [v5 saveLibrary];
}

void sub_16ECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16FB4;
  block[3] = &unk_D5C20;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_16FB4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_171A0(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(a1 + 32) completionQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_17298;
  v13[3] = &unk_D5D38;
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

void sub_17298(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 56), *(a1 + 40));
    v2 = v3;
  }
}

void sub_173AC(uint64_t a1)
{
  v2 = [*(a1 + 32) assetID];
  if ([v2 length])
  {
    v3 = [*(a1 + 40) ownershipObservers];
    v4 = [v3 objectForKeyedSubscript:v2];

    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = [*(a1 + 40) ownershipObservers];
      [v5 setObject:v4 forKeyedSubscript:v2];
    }

    if ([v4 indexOfObjectIdenticalTo:*(a1 + 32)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 addObject:*(a1 + 32)];
    }
  }

  else
  {
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8E0C8();
    }
  }
}

void sub_17550(uint64_t a1)
{
  v5 = [*(a1 + 32) assetID];
  v2 = [*(a1 + 40) ownershipObservers];
  v3 = [v2 objectForKeyedSubscript:v5];

  [v3 removeObjectIdenticalTo:*(a1 + 32)];
  if (![v3 count])
  {
    v4 = [*(a1 + 40) ownershipObservers];
    [v4 removeObjectForKey:v5];
  }
}

void sub_176EC(id *a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [a1[5] ownershipObservers];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 copy];

        if (v10)
        {
          [a1[6] setObject:v10 forKey:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_17830(id a1, NSString *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) notify];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_18188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  _Block_object_dispose((v39 - 192), 8);
  objc_destroyWeak((v38 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:*(a1 + 32)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_182C4;
  v4[3] = &unk_D5DC8;
  v5 = *(a1 + 40);
  [WeakRetained assetForLibraryAsset:v3 completion:v4];
}

void sub_182C4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && [v10 state] == 1)
  {
    v6 = objc_retainBlock(*(a1 + 32));
    v7 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = v6[2];
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 32));
    v7 = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    v8 = v9[2];
  }

  v8();
LABEL_8:
}

void sub_18380(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18468;
  block[3] = &unk_D5E18;
  objc_copyWeak(&v11, (a1 + 56));
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = *(a1 + 40);
  v4 = v6;
  v10 = v6;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_18468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:*(a1 + 32)];
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 141558786;
    v7 = 1752392040;
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    v12 = 1024;
    v13 = [v3 isDownloading];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] waitForAssetToFinishDownloadWithAssetID: state observer notifed - libraryAsset: %@, isDownloading: %{BOOL}d", &v6, 0x26u);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && v3 && ([v3 isDownloading] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [WeakRetained _removeDataSourceIdentifierAndStateObserver:*(a1 + 40)];
    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_1874C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18834;
  block[3] = &unk_D5C20;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_18834(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_18BC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  else if ([v5 count])
  {
    v7 = [*(a1 + 32) completionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_18CE4;
    v10[3] = &unk_D5E90;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v8;
    v12 = v9;
    v13 = v5;
    v14 = *(a1 + 56);
    dispatch_async(v7, v10);

    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 56));
LABEL_6:
}

void sub_18CE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) rank]);
  [v2 setObject:v3 forKeyedSubscript:v4];

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void sub_18D5C(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 sortedArrayUsingSelector:"compare:"];

  v30 = objc_opt_new();
  v4 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v27)
  {
    v26 = *v37;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = *(*(&v36 + 1) + 8 * v5);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v31 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v7 = [v31 countByEnumeratingWithState:&v32 objects:v46 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v33;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v33 != v9)
              {
                objc_enumerationMutation(v31);
              }

              v11 = *(*(&v32 + 1) + 8 * i);
              v12 = [v11 url];
              if (v12)
              {
                if (([v4 containsObject:v12] & 1) == 0)
                {
                  [v30 addObject:v11];
                  [v4 addObject:v12];
                }
              }

              else
              {
                v13 = BKLibraryLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
                {
                  v29 = *(a1 + 40);
                  v21 = [v11 assetID];
                  v22 = [v11 dataSourceIdentifier];
                  *buf = 138412802;
                  v41 = v29;
                  v42 = 2112;
                  v43 = v21;
                  v44 = 2112;
                  v45 = v22;
                  _os_log_fault_impl(&dword_0, v13, OS_LOG_TYPE_FAULT, "Asset part is missing URL, assetID=%@, partID=%@, dataSourceID=%@", buf, 0x20u);
                }

                v14 = *(a1 + 40);
                v15 = [v11 assetID];
                v16 = [v11 dataSourceIdentifier];
                v17 = [NSString stringWithFormat:@"Asset part is missing URL, assetID=%@, partID=%@, dataSourceID=%@", v14, v15, v16];

                v18 = [NSError bu_errorWithDomain:@"BKLibraryErrorDomain" code:2 description:v17 underlyingError:0];
                v19 = *(*(a1 + 56) + 8);
                v20 = *(v19 + 40);
                *(v19 + 40) = v18;
              }
            }

            v8 = [v31 countByEnumeratingWithState:&v32 objects:v46 count:16];
          }

          while (v8);
        }

        v5 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v27);
  }

  v23 = objc_retainBlock(*(a1 + 48));
  v24 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23, v30, *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_19274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_deleteAssets:*(a1 + 32) exhaustive:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }
  }
}

void sub_19844(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) libraryAssetsWithAssetIDsContainedInList:*(a1 + 40) tempAssetIDs:*(a1 + 48) inManagedObjectContext:v3];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = BKLibraryLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v9 title];
          v12 = [v9 assetID];
          *buf = 138412546;
          v18 = v11;
          v19 = 2112;
          v20 = v12;
          _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Delete Asset from BKLibraryManager (p_deleteAssets) %@ [%@]", buf, 0x16u);
        }

        [*(a1 + 32) archiveTransientProperties:v9];
        [v3 deleteObject:v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) saveCachedMigrationData];
}

uint64_t _bk_compareBitmaskPriority(unint64_t a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = __clz(__rbit64(a1));
  v4 = __clz(__rbit64(a2));
  v5 = a2 != 0;
  if (v4 != v3)
  {
    v5 = 0;
  }

  if (a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2 == 0;
  }

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    result = v6 - 1;
  }

  else
  {
    result = 1;
  }

  if (a2 && (v7 & 1) == 0)
  {
    if (v3 < v4)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_1A4A8(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:@"assetID"];
  v5 = [v2 bu_arrayByRemovingNSNulls];

  v3 = [*(a1 + 32) valueForKey:@"temporaryAssetID"];
  v4 = [v3 bu_arrayByRemovingNSNulls];

  [*(a1 + 40) _libraryDataSource:*(a1 + 48) removedAssetsWithAssetIDs:v5 orTemporaryAssetIDs:v4];
}

void sub_1A800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_8E1E4(a1);
  }

  v5 = [*(a1 + 48) identifier];
  v6 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v61 = v5;
  v7 = [*(a1 + 56) predicateForDataSourceIdentifierTaggedLibraryAssets:v5];
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 40), "count"))
  {
    v8 = [*(a1 + 56) predicateForAssetIDsTaggedLibraryAssets:*(a1 + 32)];
    v9 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:*(a1 + 40)];
    v79[0] = v8;
    v79[1] = v9;
    v10 = [NSArray arrayWithObjects:v79 count:2];
    v11 = [NSCompoundPredicate orPredicateWithSubpredicates:v10];

    v78[0] = v7;
    v78[1] = v11;
    v12 = [NSArray arrayWithObjects:v78 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];
    [v6 setPredicate:v13];
  }

  else
  {
    if ([*(a1 + 32) count])
    {
      v14 = [*(a1 + 56) predicateForAssetIDsTaggedLibraryAssets:*(a1 + 32)];
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        v50 = [NSPredicate predicateWithValue:0];
        [v6 setPredicate:v50];

        BCReportAssertionFailureWithMessage();
        goto LABEL_12;
      }

      v14 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:*(a1 + 40)];
    }

    v8 = v14;
    [v6 setPredicate:v14];
  }

LABEL_12:
  v77[0] = @"assetID";
  v77[1] = @"temporaryAssetID";
  v15 = [NSArray arrayWithObjects:v77 count:2];
  [v6 setPropertiesToFetch:v15];

  [v6 setResultType:2];
  v16 = objc_opt_new();
  v71 = 0;
  v17 = [v3 executeFetchRequest:v6 error:&v71];
  v60 = v71;
  if (!v17)
  {
    v49 = BKLibraryLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_8E25C();
    }

    goto LABEL_69;
  }

  if (![v17 count])
  {
    goto LABEL_69;
  }

  v62 = v16;
  v56 = v7;
  v57 = v6;
  v58 = v3;
  v59 = v17;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v19)
  {
    goto LABEL_58;
  }

  v20 = v19;
  v21 = *v68;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v68 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v67 + 1) + 8 * i);
      v24 = [v23 objectForKeyedSubscript:@"assetID"];
      v25 = [v23 objectForKeyedSubscript:@"temporaryAssetID"];
      if (!(v24 | v25))
      {
        BCReportAssertionFailureWithMessage();
        goto LABEL_56;
      }

      if (!v24)
      {
        v27 = 0;
LABEL_25:
        if (v25)
        {
          v28 = [*(a1 + 56) assetUpdatesByIdentifier];
          v27 = [v28 objectForKeyedSubscript:v25];
        }

        goto LABEL_27;
      }

      v26 = [*(a1 + 56) assetUpdatesByIdentifier];
      v27 = [v26 objectForKeyedSubscript:v24];

      if (!v27)
      {
        goto LABEL_25;
      }

LABEL_27:
      if (v27)
      {
        v29 = *(a1 + 48);
        v30 = [*(a1 + 56) dataSources];
        v31 = [v30 indexOfObjectIdenticalTo:v29];
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = 0;
        }

        else
        {
          v32 = 1 << v31;
        }

        [*(a1 + 56) _removeBitmask:v32 fromUpdate:v27 inMethod:*(a1 + 64)];
      }

      else
      {
        if (v24)
        {
          v33 = v24;
        }

        else
        {
          v33 = v25;
        }

        v55 = v33;
        BCReportAssertionFailureWithMessage();
      }

      if ([v27 dataSourcesBitmask])
      {
        if (v24)
        {
          [v62 addObject:v24];
        }

        if (v25)
        {
          [v62 addObject:v25];
        }
      }

      else
      {
        if (v24)
        {
          v34 = [*(a1 + 56) assetUpdatesByIdentifier];
          [v34 removeObjectForKey:v24];
        }

        if (v25)
        {
          v35 = [*(a1 + 56) assetUpdatesByIdentifier];
          [v35 removeObjectForKey:v25];
        }
      }

      if (v24)
      {
        v36 = BKLibraryLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v73 = v61;
          v74 = 2112;
          v75 = v24;
          _os_log_debug_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "{%@} disowning asset {%@}", buf, 0x16u);
        }

        v37 = [*(a1 + 56) unclaimedAssetIDs];
        [v37 addObject:v24];

        if (v27)
        {
          v38 = [*(a1 + 56) assetUpdatesByIdentifier];
          [v38 setObject:v27 forKeyedSubscript:v24];

          v39 = [*(a1 + 56) identifiersForAssetsNeedingReconcile];
          [v39 addObject:v24];
        }
      }

      if (v25)
      {
        v40 = BKLibraryLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v73 = v61;
          v74 = 2112;
          v75 = v25;
          _os_log_debug_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "{%@} disowning asset {%@}", buf, 0x16u);
        }

        v41 = [*(a1 + 56) unclaimedTemporaryAssetIDs];
        [v41 addObject:v25];

        if (v27)
        {
          v42 = [*(a1 + 56) assetUpdatesByIdentifier];
          [v42 setObject:v27 forKeyedSubscript:v25];

          v43 = [*(a1 + 56) identifiersForAssetsNeedingReconcile];
          [v43 addObject:v25];
        }
      }

LABEL_56:
    }

    v20 = [v18 countByEnumeratingWithState:&v67 objects:v76 count:16];
  }

  while (v20);
LABEL_58:

  v16 = v62;
  if ([v62 count])
  {
    v44 = dispatch_group_create();
    v45 = *(a1 + 56);
    v46 = [v45 dataSources];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1B10C;
    v65[3] = &unk_D5F58;
    v65[4] = *(a1 + 56);
    v66 = v44;
    v47 = v44;
    [v45 _enumerateDataSources:v46 intersectingWithAssetIDs:v62 usingBlock:v65];

    dispatch_group_wait(v47, 0xFFFFFFFFFFFFFFFFLL);
  }

  v6 = v57;
  v3 = v58;
  v7 = v56;
  v17 = v59;
  if ([v62 count])
  {
    goto LABEL_68;
  }

  v48 = [*(a1 + 56) unclaimedAssetIDs];
  if ([v48 count])
  {

    goto LABEL_68;
  }

  v51 = [*(a1 + 56) unclaimedTemporaryAssetIDs];
  v52 = [v51 count];

  v17 = v59;
  if (v52)
  {
LABEL_68:
    v53 = *(a1 + 56);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1B41C;
    v63[3] = &unk_D5420;
    v63[4] = v53;
    v64 = v58;
    [v53 dq_sync:v63];
  }

LABEL_69:
  v54 = +[NSMutableArray array];
  if ([*(a1 + 32) count])
  {
    [v54 addObjectsFromArray:*(a1 + 32)];
  }

  if ([*(a1 + 40) count])
  {
    [v54 addObjectsFromArray:*(a1 + 40)];
  }

  [*(a1 + 56) _notifyLibraryOperationDone:0 assetIDs:v54];
}

void sub_1B10C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) dataSources];
  v9 = [v8 indexOfObjectIdenticalTo:v6];

  if ([v7 count])
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = 1 << v9;
    }

    dispatch_group_enter(*(a1 + 40));
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1B244;
    v13[3] = &unk_D5B08;
    v11 = v7;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v18 = v10;
    v16 = v6;
    v17 = *(a1 + 40);
    sub_14CC0(v11, v16, v13);
  }
}

void sub_1B244(uint64_t a1, void *a2)
{
  v3 = [a2 bu_arrayByRemovingNSNulls];
  v4 = [*(a1 + 32) mutableCopy];
  v5 = [v3 valueForKey:@"assetID"];
  v6 = [v5 bu_arrayByRemovingNSNulls];
  [v4 removeObjectsInArray:v6];

  v7 = [v3 valueForKey:@"temporaryAssetID"];
  v8 = [v7 bu_arrayByRemovingNSNulls];
  [v4 removeObjectsInArray:v8];

  v9 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B3B0;
  v12[3] = &unk_D5A18;
  v13 = v4;
  v14 = v9;
  v17 = *(a1 + 64);
  v15 = v3;
  v16 = *(a1 + 48);
  v10 = v3;
  v11 = v4;
  [v9 dq_sync:v12];
  dispatch_group_leave(*(a1 + 56));
}

id sub_1B3B0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) dq_unclaimIdentifiers:*(a1 + 32) forDataSourceBitmask:*(a1 + 64)];
  }

  result = [*(a1 + 48) count];
  if (result)
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = *(a1 + 40);

    return [v5 dq_libraryDataSource:v3 reconcileAssets:v4 reason:4];
  }

  return result;
}

void sub_1B5E8(id *a1, void *a2)
{
  v51 = a2;
  v53 = +[NSMutableSet set];
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_8E2C4(a1);
  }

  v4 = [a1[4] valueForKey:@"assetID"];
  v50 = [v4 bu_arrayByRemovingNSNulls];

  v5 = [a1[4] valueForKey:@"temporaryAssetID"];
  v49 = [v5 bu_arrayByRemovingNSNulls];

  v6 = +[NSMutableDictionary dictionary];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v7 = a1[4];
  v8 = [v7 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v74;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v73 + 1) + 8 * i);
        v13 = [v12 assetID];
        if (v13)
        {
          [v12 assetID];
        }

        else
        {
          [v12 temporaryAssetID];
        }
        v14 = ;

        v15 = [v6 objectForKey:v14];
        if (!v15)
        {
          v15 = +[NSMutableArray array];
          [v6 setObject:v15 forKey:v14];
        }

        [v15 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v9);
  }

  v16 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v16 setReturnsObjectsAsFaults:0];
  v17 = v50;
  v18 = [a1[5] predicateForAssetIDsTaggedLibraryAssets:v50];
  v19 = v49;
  v46 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v49];
  v47 = v18;
  v78[0] = v18;
  v78[1] = v46;
  v20 = [NSArray arrayWithObjects:v78 count:2];
  v21 = [NSCompoundPredicate orPredicateWithSubpredicates:v20];
  [v16 setPredicate:v21];

  v72 = 0;
  v22 = v51;
  v23 = [v51 executeFetchRequest:v16 error:&v72];
  v48 = v72;
  v45 = v23;
  if (v23)
  {
    if (![v23 count])
    {
      goto LABEL_39;
    }

    v24 = a1[6];
    if (objc_opt_respondsToSelector())
    {
      v55 = [a1[6] propagateDataProperties];
    }

    else
    {
      v55 = 0;
    }

    v52 = [NSMutableArray array:v16];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v23;
    v26 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v69;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v69 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v68 + 1) + 8 * j);
          if ([v30 isValid])
          {
            v31 = [v30 assetID];
            v32 = [v30 temporaryAssetID];
            v33 = a1[5];
            v34 = [v30 dataSourceIdentifier];
            v35 = [v33 dataSourceWithIdentifier:v34];

            v36 = [a1[6] rank];
            if (v36 == [v35 rank] || ((v37 = objc_msgSend(a1[6], "rank"), v37 > objc_msgSend(v35, "rank")) ? (v38 = v55 == 0) : (v38 = 1), !v38))
            {
              v39 = a1[5];
              v57[0] = _NSConcreteStackBlock;
              v57[1] = 3221225472;
              v57[2] = sub_1BC80;
              v57[3] = &unk_D5FA8;
              v40 = v31;
              v41 = a1[5];
              v58 = v40;
              v59 = v41;
              v60 = v32;
              v61 = v6;
              v62 = a1[6];
              v63 = v35;
              v67 = v55;
              v64 = v30;
              v65 = v52;
              v66 = v53;
              [v39 dq_sync:v57];
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v27);
    }

    v25 = v52;
    v22 = v51;
    [a1[5] _removePossibleDupes:v52 inMoc:v51];
    v19 = v49;
    v17 = v50;
    v16 = v44;
  }

  else
  {
    v25 = BKLibraryLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_8E37C();
    }
  }

LABEL_39:
  if ([v22 hasChanges])
  {
    v42 = [a1[5] collectionController];
    v43 = [v42 gatherChangedAssetsCollectionsWithLibraryMoc:v22];
    v56 = 0;
    [v22 save:&v56];
    [v42 processGatheredChangedAssetsCollections:v43];
  }

  if ([v53 count])
  {
    [a1[5] _resetSeriesIDs:v53];
  }

  [a1[5] _notifyLibraryOperationDone:2 assetIDs:v17];
}

void sub_1BC80(uint64_t a1)
{
  if (!*(a1 + 32) || ([*(a1 + 40) assetUpdatesByIdentifier], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", *(a1 + 32)), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    if (!*(a1 + 48))
    {
      v3 = 0;
      goto LABEL_22;
    }

    v4 = [*(a1 + 40) assetUpdatesByIdentifier];
    v3 = [v4 objectForKeyedSubscript:*(a1 + 48)];

    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [*(a1 + 56) objectForKeyedSubscript:{v6, 0}];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [*(a1 + 64) rank];
        if (v13 == [*(a1 + 72) rank])
        {
          [v3 setAsset:v12];
        }

        [v3 setPropertiesToPropagate:*(a1 + 104)];
        [v3 propagateAdditionalDataWithAsset:v12];
        if ([v3 hasChanges])
        {
          v14 = [v3 asset];

          if (v14)
          {
            [*(a1 + 80) setGeneration:0x7FFFFFFFFFFFFFFFLL];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

LABEL_22:
  v15 = [*(a1 + 80) seriesID];
  v16 = v15;
  v17 = &stru_D8298;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = *(a1 + 40);
  v20 = *(a1 + 80);
  v21 = [v19 dataSources];
  LODWORD(v19) = sub_1BF80(v19, v20, v3, 3, v21);

  [v3 postIntegrateCleanup];
  if (v19)
  {
    [*(a1 + 88) addObject:*(a1 + 80)];
  }

  v22 = [*(a1 + 80) seriesID];
  v23 = [(__CFString *)v18 isEqualToString:v22];

  if ((v23 & 1) == 0)
  {
    if ([(__CFString *)v18 length])
    {
      [*(a1 + 96) addObject:v18];
    }

    v24 = [*(a1 + 80) seriesID];

    if (v24)
    {
      v25 = *(a1 + 96);
      v26 = [*(a1 + 80) seriesID];
      [v25 addObject:v26];
    }
  }
}

BOOL sub_1BF80(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v258 = a1;
  v8 = a2;
  v259 = a3;
  v9 = a5;
  if (!v8)
  {
    sub_8E4A8();
    goto LABEL_3;
  }

  if ([v8 isDeleted])
  {
LABEL_3:
    v256 = 0;
    goto LABEL_311;
  }

  v255 = v9;
  v10 = [v259 asset];
  v11 = sub_C48C([v259 dataSourcesBitmask], v9);
  v257 = [v11 identifier];

  v12 = [v8 dataSourceIdentifier];
  v253 = [v12 isEqualToString:v257];

  v13 = [v8 generation];
  v14 = [v10 generation];
  v15 = [v8 generation];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 duration], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [v8 duration];
    v18 = [v10 duration];
    v19 = [v17 isEqualToNumber:v18] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v8 assetGUID];
  v21 = [v20 length];

  if (!v21)
  {
    v22 = [v8 assetLogID];
  }

  v23 = v253 ^ 1;
  if (v13 != v14)
  {
    v23 = 1;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v8 dataSourceIdentifier];
  v251 = [v258 dataSourceWithIdentifier:v25];

  v26 = [v258 dataSourceWithIdentifier:v257];
  v252 = v26;
  if (v26)
  {
    v27 = [v26 coverSourceRank];
    v28 = v27 <= [v251 coverSourceRank];
  }

  else
  {
    v28 = 1;
  }

  v249 = v28;
  v29 = v24 | v19;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v10 permlink];
    v30 = [v13 absoluteString];

    if (v29)
    {
      v29 = 1;
LABEL_27:

      goto LABEL_28;
    }

    if (v30 || ([v8 permlink], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = [v8 permlink];
      v29 = [v30 isEqualToString:v31] ^ 1;

      if (v30)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_27;
  }

LABEL_28:
  v32 = [v10 versionNumber];
  if (!v32)
  {
    v13 = [v8 versionNumber];
    if (!v13)
    {
      v35 = 0;
LABEL_33:

      goto LABEL_34;
    }
  }

  v33 = [v10 versionNumber];
  v34 = [v8 versionNumber];
  v35 = [v33 isEqual:v34] ^ 1;

  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_34:

  v36 = [v10 versionNumberHumanReadable];
  if (v36 || ([v8 versionNumberHumanReadable], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = [v10 versionNumberHumanReadable];
    v38 = [v8 versionNumberHumanReadable];
    v39 = [v37 isEqual:v38] ^ 1;

    if (v36)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v39 = 0;
  }

LABEL_40:
  if ((v29 | v35 | v39))
  {
    LOBYTE(v40) = 1;
  }

  else
  {
    v41 = [v8 path];
    v13 = [v10 url];
    v42 = [v13 path];
    v40 = [v41 isEqualToString:v42] ^ 1;
  }

  v43 = [v8 expectedDate];
  if (v43 || ([v259 expectedDate], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v44 = [v8 expectedDate];
    v45 = [v259 expectedDate];
    v46 = [v44 isEqual:v45] ^ 1;

    if (v43)
    {
      goto LABEL_49;
    }
  }

  else
  {
    LOBYTE(v46) = 0;
  }

LABEL_49:
  v47 = [v8 state];
  v48 = [v259 asset];
  v49 = v47 != [v48 state];

  v50 = [v8 seriesSortKey];
  v51 = [v259 seriesSortKey];
  v52 = v51;
  if (v50 == v51)
  {

    v56 = 0;
LABEL_54:

    goto LABEL_55;
  }

  v53 = [v8 seriesSortKey];
  v54 = [v259 seriesSortKey];
  v55 = [v53 isEqual:v54];

  if ((v55 & 1) == 0)
  {
    v50 = [v259 seriesSortKey];
    v56 = v50 != 0;
    goto LABEL_54;
  }

  v56 = 0;
LABEL_55:
  v248 = [v8 state];
  v256 = 0;
  v250 = v40 | v46 | v49 | v56;
  if ((v250 & 1) != 0 && v10)
  {
    v57 = [v8 assetID];
    if (v57)
    {
      v256 = 0;
    }

    else
    {
      v58 = [v10 assetID];
      v256 = v58 != 0;
    }

    v59 = [v10 temporaryAssetID];
    if (v59)
    {
      v60 = [v10 temporaryAssetID];
      v61 = [v8 temporaryAssetID];
      v62 = [v60 isEqualToString:v61];

      if ((v62 & 1) == 0)
      {
        v63 = [v8 assetID];

        if (v63)
        {
          v64 = BKLibraryLog();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = [v8 assetID];
            v66 = [v8 temporaryAssetID];
            v67 = [v10 temporaryAssetID];
            v68 = [v8 dataSourceIdentifier];
            *buf = 141559810;
            *&buf[4] = 1752392040;
            *&buf[12] = 2112;
            *&buf[14] = v65;
            *&buf[22] = 2160;
            v266 = 1752392040;
            *v267 = 2112;
            *&v267[2] = v66;
            v268 = 2160;
            v269 = 1752392040;
            v270 = 2112;
            v271 = v67;
            v272 = 2114;
            v273 = v68;
            v274 = 2114;
            v275 = v257;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "updateMayHaveCausedDupes - %{mask.hash}@, temporaryAssetID=(old:%{mask.hash}@, new:%{mask.hash}@), dataSource=(old:%{public}@, new:%{public}@)", buf, 0x52u);
          }

          v256 = 1;
        }
      }
    }

    v69 = [v10 assetID];
    if (v69)
    {
    }

    else if (([v258 _shouldPropagateNilAssetIDForDataSourceWithIdentifier:v257] & 1) == 0)
    {
      goto LABEL_70;
    }

    v70 = [v10 assetID];
    [v8 setDifferentString:v70 forKey:@"assetID"];

LABEL_70:
    v71 = [v10 temporaryAssetID];

    if (v71)
    {
      v72 = [v10 temporaryAssetID];
      [v8 setDifferentValue:v72 forKey:@"temporaryAssetID" klass:objc_opt_class()];
    }

    v73 = [v10 storeID];

    if (v73)
    {
      v74 = [v10 storeID];
      [v8 setDifferentValue:v74 forKey:@"storeID" klass:objc_opt_class()];
    }

    if (objc_opt_respondsToSelector())
    {
      v75 = [v10 storePlaylistID];

      if (v75)
      {
        v76 = [v10 storePlaylistID];
        [v8 setDifferentValue:v76 forKey:@"storePlaylistID" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v77 = [v10 authorCount];

      if (v77)
      {
        v78 = [v10 authorCount];
        [v8 setDifferentValue:v78 forKey:@"authorCount" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v79 = [v10 authorNames];

      if (v79)
      {
        v80 = [v10 authorNames];
        [v8 setDifferentValue:v80 forKey:@"authorNames" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v81 = [v10 hasTooManyAuthors];

      if (v81)
      {
        v82 = [v10 hasTooManyAuthors];
        [v8 setDifferentValue:v82 forKey:@"hasTooManyAuthors" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v83 = [v10 narratorCount];

      if (v83)
      {
        v84 = [v10 narratorCount];
        [v8 setDifferentValue:v84 forKey:@"narratorCount" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v85 = [v10 narratorNames];

      if (v85)
      {
        v86 = [v10 narratorNames];
        [v8 setDifferentValue:v86 forKey:@"narratorNames" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v87 = [v10 hasTooManyNarrators];

      if (v87)
      {
        v88 = [v10 hasTooManyNarrators];
        [v8 setDifferentValue:v88 forKey:@"hasTooManyNarrators" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v89 = [v10 mappedAssetID];

      if (v89)
      {
        v90 = [v10 mappedAssetID];
        [v8 setDifferentValue:v90 forKey:@"mappedAssetID" klass:objc_opt_class()];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v91 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v10 mappedAssetContentType]);
      if (v91)
      {
        [v8 setDifferentValue:v91 forKey:@"mappedAssetContentType" klass:objc_opt_class()];
      }
    }

    v92 = [v10 author];
    v93 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v94 = [v92 stringByTrimmingCharactersInSet:v93];

    v95 = +[BKLibraryAsset unknownAuthor];
    LOBYTE(v93) = [(__CFString *)v94 isEqualToString:v95];

    if (v93)
    {

      v94 = @"UnknownAuthor";
      if (![@"UnknownAuthor" length])
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (![(__CFString *)v94 length])
      {
LABEL_108:

        v94 = 0;
LABEL_109:
        v96 = [v10 sortAuthor];
        v97 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v98 = [v96 stringByTrimmingCharactersInSet:v97];

        v99 = +[BKLibraryAsset unknownAuthor];
        LOBYTE(v97) = [(__CFString *)v98 isEqualToString:v99];

        if (v97)
        {

          v98 = @"UnknownAuthor";
          if (![@"UnknownAuthor" length])
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (![(__CFString *)v98 length])
          {
LABEL_116:

            v98 = 0;
            goto LABEL_117;
          }

          if (!v98)
          {
            goto LABEL_117;
          }
        }

        v100 = [v8 author];
        v101 = [(__CFString *)v98 isEqualToString:v100];

        if ((v101 & 1) == 0)
        {
          [v8 setDifferentValue:v98 forKey:@"sortAuthor" klass:objc_opt_class()];
        }

LABEL_117:
        v102 = [v10 title];

        if (v102)
        {
          v103 = [v10 title];
          [v8 setDifferentValue:v103 forKey:@"title" klass:objc_opt_class()];
        }

        v104 = [v10 sortTitle];
        if (v104)
        {
          v105 = [v10 sortTitle];
          v106 = [v8 title];
          v107 = [v105 isEqualToString:v106];

          if ((v107 & 1) == 0)
          {
            v108 = [v10 sortTitle];

            if (v108)
            {
              v109 = [v10 sortTitle];
              [v8 setDifferentValue:v109 forKey:@"sortTitle" klass:objc_opt_class()];
            }
          }
        }

        v110 = [v10 genre];

        if (v110)
        {
          v111 = [v10 genre];
          [v8 setDifferentValue:v111 forKey:@"genre" klass:objc_opt_class()];
        }

        if (objc_opt_respondsToSelector())
        {
          v112 = [v10 genres];

          if (v112)
          {
            v113 = [v10 genres];
            [v8 setDifferentValue:v113 forKey:@"genres" klass:objc_opt_class()];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v114 = [v10 seriesIsOrdered];

          if (v114)
          {
            v115 = [v10 seriesIsOrdered];
            [v8 setDifferentValue:v115 forKey:@"seriesIsOrdered" klass:objc_opt_class()];
          }
        }

        v116 = [v10 accountID];

        if (v116)
        {
          v117 = [v10 accountID];
          [v8 setDifferentValue:v117 forKey:@"accountID" klass:objc_opt_class()];
        }

        if (v257)
        {
          [v8 setDifferentValue:v257 forKey:@"dataSourceIdentifier" klass:objc_opt_class()];
        }

        v118 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v10 state]);
        [v8 setDifferentValue:v118 forKey:@"state" klass:objc_opt_class()];

        if ([v8 state] == 5 || objc_msgSend(v8, "state") == 6)
        {
          v119 = [v8 purchasedAndLocalParent];
          v120 = v119 == 0;

          if (!v120)
          {
            v121 = BKLibraryLog();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
            {
              sub_8E3E4(v8, v121);
            }
          }
        }

        v122 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 fileSize]);
        [v8 setDifferentValue:v122 forKey:@"fileSize" klass:objc_opt_class()];

        v123 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 generation]);
        [v8 setDifferentValue:v123 forKey:@"generation" klass:objc_opt_class()];

        v124 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isSample]);
        [v8 setDifferentValue:v124 forKey:@"isSample" klass:objc_opt_class()];

        v125 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isProof]);
        [v8 setDifferentValue:v125 forKey:@"isProof" klass:objc_opt_class()];

        v126 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isLocked]);
        [v8 setDifferentValue:v126 forKey:@"isLocked" klass:objc_opt_class()];

        v127 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEphemeral]);
        [v8 setDifferentValue:v127 forKey:@"isEphemeral" klass:objc_opt_class()];

        v128 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v10 desktopSupportLevel]);
        [v8 setDifferentValue:v128 forKey:@"desktopSupportLevel" klass:objc_opt_class()];

        v129 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v10 contentType]);
        [v8 setDifferentValue:v129 forKey:@"contentType" klass:objc_opt_class()];

        v130 = [v10 isExplicit];

        if (v130)
        {
          v131 = [v10 isExplicit];
          [v8 setDifferentValue:v131 forKey:@"isExplicit" klass:objc_opt_class()];
        }

        if (objc_opt_respondsToSelector())
        {
          if (([v10 isSupplementalContent] & 1) != 0 || (objc_msgSend(v8, "storePlaylistID"), v132 = objc_claimAutoreleasedReturnValue(), v133 = v132 == 0, v132, v133))
          {
            v134 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isSupplementalContent]);
            [v8 setDifferentValue:v134 forKey:@"isSupplementalContent" klass:objc_opt_class()];
          }
        }

        v135 = [v10 bookDescription];

        if (v135)
        {
          v136 = [v10 bookDescription];
          [v8 setDifferentValue:v136 forKey:@"bookDescription" klass:objc_opt_class()];
        }

        v137 = [v10 comments];

        if (v137)
        {
          v138 = [v10 comments];
          [v8 setDifferentValue:v138 forKey:@"comments" klass:objc_opt_class()];
        }

        v139 = [v10 grouping];

        if (v139)
        {
          v140 = [v10 grouping];
          [v8 setDifferentValue:v140 forKey:@"grouping" klass:objc_opt_class()];
        }

        v141 = [v10 kind];

        if (v141)
        {
          v142 = [v10 kind];
          [v8 setDifferentValue:v142 forKey:@"kind" klass:objc_opt_class()];
        }

        if ([v10 pageCount] && objc_msgSend(v10, "pageCount") != 0x7FFFFFFFFFFFFFFFLL)
        {
          v143 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 pageCount]);
          [v8 setDifferentValue:v143 forKey:@"pageCount" klass:objc_opt_class()];
        }

        v144 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 rating]);
        [v8 setDifferentValue:v144 forKey:@"rating" klass:objc_opt_class()];

        v145 = [v10 updateDate];

        if (v145)
        {
          v146 = [v10 updateDate];
          [v8 setDifferentValue:v146 forKey:@"updateDate" klass:objc_opt_class()];
        }

        if (objc_opt_respondsToSelector())
        {
          v147 = [v10 permlink];
          v148 = [v147 absoluteString];

          if (v148)
          {
            v149 = [v10 permlink];
            v150 = [v149 absoluteString];
            [v8 setDifferentValue:v150 forKey:@"permlink" klass:objc_opt_class()];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v151 = [v10 duration];

          if (v151)
          {
            v152 = [v10 duration];
            [v8 setDifferentValue:v152 forKey:@"duration" klass:objc_opt_class()];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v153 = [v10 readPercent];
          if (v153)
          {
            [v8 setDifferentValue:v153 forKey:@"readingProgress" klass:objc_opt_class()];
          }

          [v153 floatValue];
          v154 = [v8 bookHighWaterMarkProgress];
          [v154 floatValue];

          BCFloatAssertUnitIntervalClamp();
          v155 = [NSNumber numberWithFloat:?];
          if (v155)
          {
            [v8 setDifferentValue:v155 forKey:@"bookHighWaterMarkProgress" klass:objc_opt_class()];
          }
        }

        v156 = [v8 isPreorderBook];
        v157 = [v259 expectedDate];
        if (v157 && ([v10 expectedDate], v158 = objc_claimAutoreleasedReturnValue(), v159 = v158 == 0, v158, v157, v159))
        {
          v160 = [v259 expectedDate];
        }

        else
        {
          v160 = [v10 expectedDate];
        }

        v161 = v160;
        [v8 setDifferentValue:v160 forKey:@"expectedDate" klass:objc_opt_class()];
        if (v156)
        {
          v162 = [v8 isPreorderBook] ^ 1;
        }

        else
        {
          v162 = 0;
        }

        v163 = [v10 lastOpenDate];
        if (v163 && ([v8 lastOpenDate], v164 = objc_claimAutoreleasedReturnValue(), v165 = v164 == 0, v164, v163, v165))
        {
          v166 = [v10 lastOpenDate];
        }

        else
        {
          if (!v162)
          {
            goto LABEL_185;
          }

          v166 = +[NSDate date];
        }

        v167 = v166;
        [v8 nonUserUpdateLastOpenDateTo:v166];

LABEL_185:
        v168 = [v10 versionNumber];

        if (v168)
        {
          v169 = [v10 versionNumber];
          [v8 setDifferentValue:v169 forKey:@"versionNumber" klass:objc_opt_class()];
        }

        v170 = [v10 versionNumberHumanReadable];

        if (v170)
        {
          v171 = [v10 versionNumberHumanReadable];
          [v8 setDifferentValue:v171 forKey:@"versionNumberHumanReadable" klass:objc_opt_class()];
        }

        v172 = [v10 year];

        if (v172)
        {
          v173 = [v10 year];
          [v8 setDifferentValue:v173 forKey:@"year" klass:objc_opt_class()];
        }

        v174 = [v8 cloudAssetType];
        if (v174 == BDSCloudAssetTypeSideloadedUbiquity || ([v8 isLocal] & 1) != 0 || objc_msgSend(v8, "isImporting"))
        {
          v175 = [v10 url];
          v176 = [v175 isFileURL];

          if (!v176)
          {
            goto LABEL_198;
          }

          v177 = [v10 url];
          v178 = [v177 path];

          if (!v178)
          {
            goto LABEL_198;
          }

          v174 = [v10 url];
          v179 = [v174 path];
          [v8 setDifferentValue:v179 forKey:@"path" klass:objc_opt_class()];
        }

LABEL_198:
        goto LABEL_199;
      }

      if (!v94)
      {
        goto LABEL_109;
      }
    }

    [v8 setDifferentValue:v94 forKey:@"author" klass:objc_opt_class()];
    goto LABEL_109;
  }

LABEL_199:
  if (v250)
  {
    if (objc_opt_respondsToSelector())
    {
      v180 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isDevelopment]);
      [v8 setDifferentValue:v180 forKey:@"isDevelopment" klass:objc_opt_class()];
    }

    v181 = [v259 assetIsHidden];
    if (v181)
    {
      v182 = [v259 assetIsHidden];
      v183 = [v182 BOOLValue];
      if (v183 == [v8 isHidden])
      {

        goto LABEL_213;
      }

      v185 = [v10 state] == 1 && v248 != 1;

      if (v185)
      {
        v181 = [v259 assetIsHidden];
        [v8 setIsHidden:{objc_msgSend(v181, "BOOLValue")}];
LABEL_213:
      }
    }

    v186 = [v259 seriesIsHidden];

    if (v186)
    {
      v187 = [v259 seriesIsHidden];
      if (v187)
      {
        [v8 setDifferentValue:v187 forKey:@"seriesIsHidden" klass:objc_opt_class()];
      }
    }

    v188 = [v259 seriesIsCloudOnly];

    if (v188)
    {
      v189 = [v259 seriesIsCloudOnly];
      if (v189)
      {
        [v8 setDifferentValue:v189 forKey:@"seriesIsCloudOnly" klass:objc_opt_class()];
      }
    }

    v190 = [v259 isStoreAudiobook];

    if (v190)
    {
      v191 = [v259 isStoreAudiobook];
      if (v191)
      {
        [v8 setDifferentValue:v191 forKey:@"isStoreAudiobook" klass:objc_opt_class()];
      }
    }

    v192 = [v259 hasRACSupport];

    if (v192)
    {
      v193 = [v259 hasRACSupport];
      if (v193)
      {
        [v8 setDifferentValue:v193 forKey:@"hasRACSupport" klass:objc_opt_class()];
      }
    }

    v194 = [v259 releaseDate];

    if (v194)
    {
      v195 = [v259 releaseDate];
      if (v195)
      {
        [v8 setDifferentValue:v195 forKey:@"releaseDate" klass:objc_opt_class()];
      }
    }

    v196 = [v259 url];

    if (v196)
    {
      v197 = [v259 url];
      if (v197)
      {
        [v8 setDifferentValue:v197 forKey:@"url" klass:objc_opt_class()];
      }
    }

    v198 = [v8 changedValues];
    v199 = [v198 allKeys];

    if ([v8 isAudiobook] && (objc_msgSend(v199, "containsObject:", @"assetID") & 1) != 0 || (objc_msgSend(v199, "containsObject:", @"storePlaylistID") & 1) != 0 || objc_msgSend(v199, "containsObject:", @"isSupplementalContent"))
    {
      [v258 updateSupplementalContentRelationship:v8];
    }

    [v258 updateIsDownloadingSupplementalContentAndCombinedState:v8];
    v200 = [v259 seriesID];
    if (v200 && [v8 setDifferentString:v200 forKey:@"seriesID"])
    {
      if ([v8 isContainer])
      {
        [v258 updateSeriesRelationshipsForSeriesContainer:v8];
        [v258 _updateAuthorForSeriesContainer:v8];
      }

      else
      {
        [v258 updateSeriesRelationshipsForSeriesAsset:v8];
      }
    }

    v201 = [v259 seriesSortKey];

    if (v201)
    {
      v202 = [v259 seriesSortKey];
      if (v202)
      {
        [v8 setDifferentValue:v202 forKey:@"seriesSortKey" klass:objc_opt_class()];
      }
    }

    v203 = [v259 sequenceDisplayName];

    if (v203)
    {
      v204 = [v259 sequenceDisplayName];
      if (v204)
      {
        [v8 setDifferentValue:v204 forKey:@"sequenceDisplayName" klass:objc_opt_class()];
      }
    }

    v205 = [v259 sequenceNumber];

    if (v205)
    {
      v206 = [v259 sequenceNumber];
      if (v206)
      {
        [v8 setDifferentValue:v206 forKey:@"sequenceNumber" klass:objc_opt_class()];
      }
    }

    v207 = [v259 coverAspectRatio];

    if (v207)
    {
      v208 = [v259 coverAspectRatio];

      if (v208)
      {
        v209 = [v259 coverAspectRatio];
        [v8 setDifferentValue:v209 forKey:@"coverAspectRatio" klass:objc_opt_class()];
      }
    }

    v210 = [v259 title];

    if (v210)
    {
      v211 = [v259 title];
      if (v211)
      {
        [v8 setDifferentValue:v211 forKey:@"title" klass:objc_opt_class()];
        [v8 setDifferentValue:v211 forKey:@"sortTitle" klass:objc_opt_class()];
      }
    }

    v212 = [v259 url];
    v213 = v212;
    if (v212)
    {
      if ([v212 isFileURL])
      {
        v214 = [v213 path];

        if (v214)
        {
          v215 = [v213 path];
          [v8 setDifferentValue:v215 forKey:@"path" klass:objc_opt_class()];
        }
      }
    }

    v216 = [v259 author];

    if (!v216)
    {
      goto LABEL_276;
    }

    v217 = [v259 author];
    v218 = +[BKLibraryAsset unknownAuthor];
    if ([v217 isEqualToString:v218])
    {

      v219 = @"UnknownAuthor";
    }

    else
    {
      v219 = [v259 author];

      if (!v219)
      {
LABEL_276:
        v220 = [v259 genre];

        if (v220)
        {
          v221 = [v259 genre];
          if (v221)
          {
            [v8 setDifferentValue:v221 forKey:@"genre" klass:objc_opt_class()];
          }
        }

        v222 = [v259 isExplicit];

        if (v222)
        {
          v223 = [v259 isExplicit];
          if (v223)
          {
            [v8 setDifferentValue:v223 forKey:@"isExplicit" klass:objc_opt_class()];
          }
        }

        if ([v10 metadataMigrationVersion] >= 1)
        {
          v224 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 metadataMigrationVersion]);
          [v8 setDifferentValue:v224 forKey:@"metadataMigrationVersion" klass:objc_opt_class()];
        }

        v225 = [v259 purchaseDates_hack];
        v226 = [v225 count];

        if (v226)
        {
          v227 = [v259 purchaseDates_hack];
          v228 = [NSMutableArray arrayWithArray:v227];

          v229 = [v8 purchaseDate];

          if (v229)
          {
            v230 = [v8 purchaseDate];
            [v228 addObject:v230];
          }

          v231 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:0];
          v264 = v231;
          v232 = [NSArray arrayWithObjects:&v264 count:1];
          [v228 sortUsingDescriptors:v232];

          v233 = [v228 lastObject];
          if (v233)
          {
            [v8 setDifferentValue:v233 forKey:@"purchaseDate" klass:objc_opt_class()];
          }
        }

        goto LABEL_293;
      }
    }

    [v8 setDifferentValue:v219 forKey:@"author" klass:objc_opt_class()];
    [v8 setDifferentValue:v219 forKey:@"sortAuthor" klass:objc_opt_class()];

    goto LABEL_276;
  }

LABEL_293:
  if ([v8 isSample])
  {
    v234 = 1;
  }

  else
  {
    v234 = [v10 isSample];
  }

  if (a4 == 2 || a4 == 4 || ([v8 canRedownload] & 1) == 0)
  {
    if (v234)
    {
      [v8 setDifferentValue:&__kCFBooleanFalse forKey:@"canRedownload" klass:objc_opt_class()];
    }

    else
    {
      v235 = [v259 dataSourcesBitmask];
      v236 = v255;
      v260 = 0;
      v261 = &v260;
      v262 = 0x2020000000;
      v263 = 0;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_3CDE4;
      v266 = &unk_D66C0;
      *v267 = &v260;
      sub_3C464(v235, v236, buf);
      v237 = *(v261 + 24);
      _Block_object_dispose(&v260, 8);

      v238 = [NSNumber numberWithBool:v237 & 1];
      [v8 setDifferentValue:v238 forKey:@"canRedownload" klass:objc_opt_class()];
    }
  }

  v239 = [v8 dataSourceIdentifier];
  v240 = [v258 dataSourceWithIdentifier:v239];

  v241 = BUProtocolCast();
  v242 = [v8 assetID];
  v243 = [v241 coverWritingModeLanguageAndPageProgressionDirectionFromAssetID:v242];

  v244 = [v243 objectForKeyedSubscript:@"coverWritingMode"];
  v245 = [v243 objectForKeyedSubscript:@"language"];
  v246 = [v243 objectForKeyedSubscript:@"pageProgressionDirection"];
  if (v244)
  {
    [v8 setDifferentValue:v244 forKey:@"coverWritingMode" klass:objc_opt_class()];
  }

  if (v245)
  {
    [v8 setDifferentValue:v245 forKey:@"language" klass:objc_opt_class()];
  }

  if (v246)
  {
    [v8 setDifferentValue:v246 forKey:@"pageProgressionDirection" klass:objc_opt_class()];
  }

  if (((v253 | v249) & 1) == 0)
  {
    [v258 _refreshArtForAsset:v8];
  }

  v9 = v255;
LABEL_311:

  return v256;
}

void sub_1E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E680(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1E710;
  v2[3] = &unk_D5BD0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performNamed:@"notify" workerQueueBlock:v2];
}

void sub_1E7C4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1E854;
  v4[3] = &unk_D5550;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 addOperationBlock:v4];
}

void sub_1E854(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1E8E4;
  v2[3] = &unk_D5BD0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performNamed:@"custom-operation" workerQueueBlockAndWait:v2];
}

void sub_1EAE4(id *a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_8E594();
  }

  v5 = a1[4];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1EC14;
  v12 = &unk_D5E90;
  v13 = v5;
  v14 = a1[5];
  v15 = a1[6];
  v16 = v3;
  v6 = v3;
  [v5 dq_sync:&v9];
  v7 = [a1[6] valueForKey:{@"assetID", v9, v10, v11, v12, v13}];
  v8 = [v7 bu_arrayByRemovingNSNulls];

  [a1[4] _notifyLibraryOperationDone:1 assetIDs:v8];
}

id sub_1EC14(uint64_t a1)
{
  [*(a1 + 32) dq_libraryDataSource:*(a1 + 40) reconcileAssets:*(a1 + 48) reason:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 wq_dq_integrateClaimedAssetsReason:1 context:v3];
}

void sub_1F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1F854(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) libraryAssetsWithAssetIDsContainedInList:*(a1 + 40) tempAssetIDs:0 inManagedObjectContext:a2];
  v3 = [v7 valueForKey:@"assetID"];
  v4 = [v3 bu_arrayByRemovingNSNulls];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1FC94(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 56);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 valueForKey:@"assetID"];
  v7 = [v6 bu_arrayByRemovingNSNulls];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), v9);
}

void sub_1FFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1FFF0(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 56);
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 valueForKey:@"storeID"];
  v7 = [v6 bu_arrayByRemovingNSNulls];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), v9);
}

void sub_20140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v17 = @"assetID";
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  [v4 setPropertiesToFetch:v5];

  [v4 setResultType:2];
  v6 = [*(a1 + 32) predicateForPurchasedBooksAssets];
  [v4 setPredicate:v6];

  v16 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v16];

  v8 = v16;
  v9 = [v7 valueForKey:@"assetID"];
  v10 = [v9 bu_arrayByRemovingNSNulls];
  v11 = v10;
  v12 = &__NSArray0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = objc_retainBlock(*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v13, v8);
  }
}

void sub_20378(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithEntityName:v6];

  v30 = @"assetID";
  v8 = [NSArray arrayWithObjects:&v30 count:1];
  [v7 setPropertiesToFetch:v8];

  [v7 setResultType:2];
  [v7 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v29[0] = v9;
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v29[1] = v10;
  v11 = [NSArray arrayWithObjects:v29 count:2];
  [v7 setSortDescriptors:v11];

  v12 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDWantToRead hideUnownedItems:0];
  v28[0] = v12;
  v13 = +[BKLibraryManager predicateForExcludingCollectionMembersWithSideloadedAssets];
  v28[1] = v13;
  v14 = +[BKLibraryManager predicateForExcludingCollectionMembersWithContainerLibraryAssets];
  v28[2] = v14;
  v15 = +[BKLibraryManager predicateToExcludeCollectionMembersForAudiobookSupplementalContent];
  v28[3] = v15;
  v16 = [NSArray arrayWithObjects:v28 count:4];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
  [v7 setPredicate:v17];

  if (*(a1 + 40))
  {
    [v7 setFetchLimit:?];
  }

  v27 = 0;
  v18 = [v3 executeFetchRequest:v7 error:&v27];
  v19 = v27;
  v20 = [v18 valueForKey:@"assetID"];
  v21 = [v20 bu_arrayByRemovingNSNulls];
  v22 = v21;
  v23 = &__NSArray0__struct;
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = objc_retainBlock(*(a1 + 32));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, v24, v19);
  }
}

int64_t sub_20BE8(id a1, BKLibraryDataSource *a2, BKLibraryDataSource *a3)
{
  v4 = a3;
  v5 = [(BKLibraryDataSource *)a2 rank];
  v6 = [(BKLibraryDataSource *)v4 rank];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t sub_238C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3C4FC;
  v6[3] = &unk_D66C0;
  v6[4] = &v7;
  sub_3C464(a1, v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_23980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23998(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    v7 = [v6 asset];
    if (![v6 dataSourcesBitmask] || !v7)
    {
LABEL_27:

      goto LABEL_28;
    }

    [*(a1 + 32) addObject:v6];
    ++*(*(*(a1 + 112) + 8) + 24);
    v8 = [v6 dataSourcesBitmask];
    v9 = [*(a1 + 40) dataSources];
    v10 = sub_C48C(v8, v9);
    v11 = [v10 identifier];

    v12 = [v7 assetID];
    v13 = [v7 temporaryAssetID];
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_8E94C();
    }

    v50 = v13;
    v51 = v11;
    v15 = [*(a1 + 40) insertNewLibraryAssetWithIdentifier:v11 assetID:v12 orTemporaryAssetID:v13 type:objc_msgSend(v7 inManagedObjectContext:{"contentType"), *(a1 + 48)}];
    v16 = *(a1 + 40);
    v17 = *(a1 + 120);
    v18 = [v16 dataSources];
    sub_1BF80(v16, v15, v6, v17, v18);

    v19 = *(a1 + 56);
    v20 = [v15 permanentOrTemporaryAssetID];
    [v19 addObject:v20];

    [*(a1 + 40) adoptMigratedProperties:v15];
    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v21 BOOLForKey:@"BKAlreadyDisplayedGDPRWelcomeExperience"];

    v23 = *(a1 + 120);
    v24 = [v6 asset];
    v25 = [v24 state];

    if (!v22 || v23 != 1 || v25 == 3)
    {
      v26 = [v15 purchaseDate];
      [v15 setModificationDate:v26];
    }

    v27 = [v6 dataSourcesBitmask];
    v28 = [*(a1 + 40) dataSources];
    LODWORD(v27) = sub_238C4(v27, v28);

    if (v27)
    {
      [*(a1 + 64) addObject:v7];
      v29 = [v7 storeID];
      if (v29 && (v30 = v29, v31 = [v7 contentType], v30, v31 != 6))
      {
        v35 = *(a1 + 72);
        v36 = [v7 storeID];
      }

      else
      {
        v32 = [v7 assetID];
        if (!v32)
        {
          goto LABEL_18;
        }

        v33 = v32;
        v34 = [v7 state];

        if (v34 != 1)
        {
          goto LABEL_18;
        }

        v35 = *(a1 + 80);
        v36 = [v7 assetID];
      }

      v37 = v36;
      [v35 addObject:v36];
    }

LABEL_18:
    v38 = [v6 dataSourcesBitmask];
    v39 = [*(a1 + 40) dataSources];
    v40 = sub_C48C(v38, v39);
    v41 = [v40 identifier];

    if (v41)
    {
      v49 = *(a1 + 88);
      v52[0] = @"BKLibraryOwnershipAssetIDKey";
      v52[1] = @"BKLibraryOwnershipNewDatasource";
      v53[0] = v5;
      v53[1] = v41;
      v52[2] = @"BKLibraryOwnershipNewState";
      v42 = [v6 asset];
      v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 state]);
      v53[2] = v43;
      [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
      v44 = v5;
      v45 = v15;
      v47 = v46 = v12;
      [v49 addObject:v47];

      v12 = v46;
      v15 = v45;
      v5 = v44;
    }

    v48 = BKLibraryLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      sub_8E9B4();
    }

    if (v12)
    {
      [*(a1 + 96) removeObject:v12];
    }

    if (v50)
    {
      [*(a1 + 104) removeObject:v50];
    }

    goto LABEL_27;
  }

LABEL_28:
}

void sub_23E60(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BKLibraryBooksChanged" object:*(a1 + 32)];
}

void sub_24360(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2444C;
  v11[3] = &unk_D6190;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v17 = *(a1 + 64);
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  [v8 dq_sync:v11];
  dispatch_group_leave(*(a1 + 56));
}

void sub_2444C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = BKLibraryLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_8EA70();
    }
  }

  else if ([*(a1 + 48) count])
  {
    kdebug_trace();
    [*(a1 + 56) dq_libraryDataSource:*(a1 + 40) reconcileAssets:*(a1 + 48) reason:*(a1 + 72)];
    kdebug_trace();
  }

  v3 = *(a1 + 64);
  v4 = [*(a1 + 40) identifier];
  [v3 removeObject:v4];

  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
    v7 = [*(a1 + 40) identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#datasource DONE reconciling %@ assets for: %@", &v8, 0x16u);
  }
}

void sub_245F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = BKLibraryLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) allObjects];
      v6 = [v5 componentsJoinedByString:{@", "}];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "#datasource STILL pending to be reconciled after 1 minute: [%{public}@]", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_8EB18(a1);
  }
}

void sub_246FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = BKLibraryLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) allObjects];
      v6 = [v5 componentsJoinedByString:{@", "}];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "#datasource STILL pending to be reconciled after 3 minutes: [%{public}@]", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_8EBC0(a1);
  }
}

id sub_24ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 dataSourceIdentifier];
    v7 = [v5 dataSourceWithIdentifier:v6];

    v8 = BUProtocolCast();
    v9 = [v4 assetID];
    v10 = [v4 path];
    v11 = [v8 plistEntryAsDictionaryFromAssetID:v9 path:v10 needsCoordination:*(a1 + 48)];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [*(a1 + 32) dataSources];
    v13 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        v18 = BUProtocolCast();
        v11 = [v18 plistEntryAsDictionaryFromAssetID:0 path:*(a1 + 40) needsCoordination:*(a1 + 48)];

        if (v11)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v11 = 0;
    }
  }

  return v11;
}

void sub_24CA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"path", v4];
  v10 = [v3 p_libraryAssetWithIdentifier:v4 predicate:v6 inManagedObjectContext:v5];

  v7 = (*(*(a1 + 56) + 16))();
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_25108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25124(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v3 = [v6 bookDescription];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25358(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:?];
  v4 = [v3 seriesID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 seriesID];
    v7 = [v5 libraryAssetWithAssetID:v6 inManagedObjectContext:v11];

    v8 = [v7 title];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v3 = v7;
  }
}

void sub_254CC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryAssetsWithAssetIDsContainedInList:*(a1 + 40) tempAssetIDs:0 inManagedObjectContext:a2];
  [*(a1 + 32) deleteAssets:v3 exhaustive:*(a1 + 48)];
}

void sub_25604(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v4 = v3;
  if (v3)
  {
    [v3 setIsTrackedAsRecent:0];
    v5 = *(a1 + 32);
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 deleteAssets:v6 exhaustive:1];
  }
}

void sub_27C2C(uint64_t a1)
{
  v2 = [*(a1 + 32) notifyBlocksForNewAssets];
  v3 = [v2 valueForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 count] != 0;
}

void sub_27CA8(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_83E0;
  v21 = sub_83F0;
  v22 = 0;
  v1 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_27EB0;
  v13 = &unk_D62D0;
  v16 = &v17;
  v14 = v1;
  v15 = *(a1 + 40);
  v2 = v11;
  os_unfair_lock_lock(v1 + 12);
  v12(v2);
  os_unfair_lock_unlock(v1 + 12);

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v18[5];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v23 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v23 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v17, 8);
}

void sub_27E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27EB0(uint64_t a1)
{
  v2 = [*(a1 + 32) notifyBlocksForNewAssets];
  v3 = [v2 valueForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) notifyBlocksForNewAssets];
  [v6 setValue:0 forKey:*(a1 + 40)];
}

void sub_2810C(uint64_t a1)
{
  v2 = [*(a1 + 32) notifyBlocksForNewAssets];
  v5 = [v2 valueForKey:*(a1 + 40)];

  if (!v5)
  {
    v5 = +[NSMutableArray array];
    v3 = [*(a1 + 32) notifyBlocksForNewAssets];
    [v3 setObject:v5 forKey:*(a1 + 40)];
  }

  v4 = objc_retainBlock(*(a1 + 48));
  [v5 addObject:v4];
}

id sub_281C4(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _newAssetIDAdded:v5];
  }

  return result;
}

void sub_29170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_29188(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 predicateForLocalLibraryAssets];
  v7 = [v5 copyEntityPropertiesArray:v3 fromEntityName:@"BKLibraryAsset" withPredicate:v6 sortBy:0 ascending:0];

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[6];

  return dispatch_semaphore_signal(v10);
}

uint64_t sub_2AFDC(uint64_t a1, void *a2)
{
  v3 = +[BKAssetUtilities utiTypeForContentType:](BKAssetUtilities, "utiTypeForContentType:", [a2 integerValue]);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSString stringWithFormat:@"contentType == %@c", v3];
    [v4 addObject:v5];
  }

  return _objc_release_x1();
}

void sub_2B074(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) attributeSet];
        v9 = [v8 identifier];

        if (v9)
        {
          [*(a1 + 32) addObject:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_2F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2F6B4(uint64_t a1)
{
  v2 = [*(a1 + 32) workerChildContext];
  v18 = @"storeID";
  v3 = [NSArray arrayWithObjects:&v18 count:1];
  v4 = [*(a1 + 32) predicateForDownloadingStoreLibraryAssets];
  v5 = [v2 copyEntityPropertiesArray:v3 fromEntityName:@"BKLibraryAsset" withPredicate:v4 sortBy:0 ascending:0];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(*(a1 + 40) + 8) + 40);
        v12 = [*(*(&v13 + 1) + 8 * v10) objectForKeyedSubscript:{@"storeID", v13}];
        [v11 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_2F928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [*(a1 + 32) predicateForLocalStoreAssets];
  v29 = +[BKLibraryManager predicateForNotSamplesLibraryAssets];
  v30 = v5;
  v6 = [NSMutableArray arrayWithObjects:v5, v29, 0];
  if (*(a1 + 48) == 1)
  {
    v7 = +[BKLibraryManager excludeAudiobooksPredicate];
    [v6 addObject:v7];
  }

  v8 = +[BKLibraryManager predicateToExcludeAudiobookSupplementalContent];
  [v6 addObject:v8];

  v28 = v6;
  v9 = [v6 copy];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  v37 = 0;
  v31 = v4;
  v32 = v3;
  v11 = [v3 executeFetchRequest:v4 error:&v37];
  v27 = v37;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [v17 storeID];
        if (!v18)
        {
          v26 = BKLibraryLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_8F35C(v17);
          }

          goto LABEL_19;
        }

        v19 = v18;
        v20 = [v17 versionNumber];
        v21 = [v20 stringValue];

        if (!v21)
        {
          v22 = BKLibraryLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_8F300(v40, v17);
          }

          v21 = &stru_D8298;
        }

        v23 = *(a1 + 40);
        v38[0] = @"storeId";
        v24 = [v17 storeID];
        v38[1] = @"publicationVersion";
        v39[0] = v24;
        v39[1] = v21;
        v25 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
        [v23 addObject:v25];
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

void sub_2FD50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"storeID", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    v9 = [v6 lastObject];
    v8[2](v8, v9, v7);
  }
}

void sub_2FF38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"%K = %@", @"assetID", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = objc_retainBlock(*(a1 + 40));
  if (v8)
  {
    v9 = [v6 lastObject];
    v8[2](v8, v9, v7);
  }
}

void sub_30120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v6, v7);
  }
}

void sub_302DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v10 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v10];

  v7 = v10;
  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v6, v7);
  }
}

void sub_30470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v23 = a1;
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() predicateForUnownedStoreLibraryAssets];
  [v4 setPredicate:v6];

  v31[0] = @"assetID";
  v31[1] = @"contentType";
  v31[2] = @"dataSourceIdentifier";
  v7 = [NSArray arrayWithObjects:v31 count:3];
  [v4 setPropertiesToFetch:v7];

  [v4 setReturnsDistinctResults:1];
  v29 = 0;
  v24 = v3;
  v8 = [v3 executeFetchRequest:v4 error:&v29];
  v9 = v29;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 isAudiobook];
        v19 = [v17 assetID];
        if (v18)
        {
          v20 = v11;
        }

        else
        {
          v20 = v10;
        }

        [v20 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);
  }

  v21 = objc_retainBlock(*(v23 + 40));
  v22 = v21;
  if (v21)
  {
    (*(v21 + 2))(v21, v10, v11, v9);
  }
}

void sub_30770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() predicateForAllUnownedLibraryAssets];
  [v4 setPredicate:v6];

  v26 = 0;
  v21 = v3;
  v7 = [v3 executeFetchRequest:v4 error:&v26];
  v8 = v26;
  v9 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 assetID];

        if (v16)
        {
          v17 = [v15 assetID];
          v18 = [v17 copy];
          [v9 addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = objc_retainBlock(*(a1 + 40));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v9, v8);
  }
}

void sub_319FC(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [*(a1 + 32) newManagedObjectContext];
  v6 = [NSString stringWithFormat:@"NewMOC 12 %s %@", "[BKLibraryManager assetAccountIdentifiersForAssetID:path:storeID:purchasedDSID:downloadedDSID:familyID:dataSourceID:completion:]_block_invoke", v19];
  [v5 setName:v6];

  v7 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:v5];
  if (v7)
  {
    if (a3)
    {
LABEL_3:
      v8 = [v7 accountID];
      [v7 setDifferentString:v8 forKey:@"purchasedDSID"];

      [v7 setDifferentString:0 forKey:@"downloadedDSID"];
      [v7 setDifferentString:0 forKey:@"familyID"];
LABEL_9:
      if ([v5 hasChanges])
      {
        [v5 saveLibrary];
      }

      v10 = objc_retainBlock(*(a1 + 56));
      if (v10)
      {
        v15 = [[BKLibraryManagerAccountIdentifiers alloc] initWithAsset:v7];
        v10[2](v10, v15, 0);
      }

      goto LABEL_13;
    }

    v11 = [v19 familyID];
    if ([v11 length])
    {
    }

    else
    {
      v16 = [v19 purchasedDSID];
      if (![v16 length])
      {

        goto LABEL_3;
      }

      v17 = [v19 downloadedDSID];
      v18 = [v17 length];

      if (!v18)
      {
        goto LABEL_3;
      }
    }

    v12 = [v19 purchasedDSID];
    [v7 setDifferentString:v12 forKey:@"purchasedDSID"];

    v13 = [v19 downloadedDSID];
    [v7 setDifferentString:v13 forKey:@"downloadedDSID"];

    v14 = [v19 familyID];
    [v7 setDifferentString:v14 forKey:@"familyID"];

    goto LABEL_9;
  }

  v9 = objc_retainBlock(*(a1 + 56));
  v10 = v9;
  if (v9)
  {
    v9[2](v9, *(a1 + 48), 0);
  }

LABEL_13:
}

void sub_31FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_31FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_320C8;
  block[3] = &unk_D6460;
  v13 = v6;
  v14 = v5;
  v16 = *(a1 + 56);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_320C8(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v4 = *(v2 + 40);
  v3 = (v2 + 40);
  if (!v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_storeStrong(v3, v5);
    }
  }

  if ([*(a1 + 40) count])
  {
    [*(*(*(a1 + 64) + 8) + 40) unionSet:*(a1 + 40)];
  }

  v6 = *(a1 + 48);

  dispatch_group_leave(v6);
}

void sub_32138(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count] || !*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = objc_retainBlock(*(a1 + 32));
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v2[2];
    v6 = v2;
  }

  else
  {
    v2 = objc_retainBlock(*(a1 + 32));
    if (!v2)
    {
      goto LABEL_8;
    }

    v5 = *(*(*(a1 + 48) + 8) + 40);
    v4 = v2[2];
    v6 = v2;
  }

  v4();
  v2 = v6;
LABEL_8:
}

void sub_3254C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_32564(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v4 = v3;
  if (*(a1 + 64) == 1 && ([v3 isTrackedAsRecent] & 1) == 0 && (objc_msgSend(v4, "isSupplementalContent") & 1) == 0)
  {
    v5 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Promoting %@ to recent.", buf, 0xCu);
    }

    [v4 setIsTrackedAsRecent:1];
    if (([v4 isSample] & 1) == 0 && (objc_msgSend(v4, "isAudiobookPreview") & 1) == 0)
    {
      dispatch_group_enter(*(a1 + 48));
      v7 = [*(a1 + 32) collectionController];
      v8 = *(a1 + 40);
      v9 = kBKCollectionDefaultIDWantToRead;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_327B8;
      v15[3] = &unk_D6500;
      v16 = v8;
      v14 = *(a1 + 48);
      v10 = v14;
      v17 = v14;
      [v7 removeAssetID:v16 fromCollectionID:v9 completion:v15];
    }
  }

  v11 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40);
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Updating last engaged date for %@.", buf, 0xCu);
  }

  v13 = +[NSDate date];
  [v4 setLastEngagedDate:v13];

  dispatch_group_leave(*(a1 + 48));
}

void sub_327B8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = BCReadingStatisticsLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Removed %@ from Want to Read.", &v9, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_8F464(a1);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_328C4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 24));
    v2 = v3;
  }
}

void sub_32E54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) wq_countOfBooksInContinueReadingIncludingExplicitContent:1 limit:*(a1 + 48) onWorkerQueue:v3];
  v5 = *(a1 + 48);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    v8 = BCBookPromotionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "There is enough books in continue reading (existing=%lu, limit=%lu). Skip seeding", &v10, 0x16u);
    }
  }

  else
  {
    v7 = BCBookPromotionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "About to seed continue reading (existing=%lu, newLimit=%lu)", &v10, 0x16u);
    }

    [*(a1 + 32) wq_seedRecentsListWithRecentlyOpenedBooksNoOlderThanDate:*(a1 + 40) limit:v6 onWorkerQueue:v3];
  }
}

void sub_33050(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = [NSPredicate predicateWithFormat:@"%K < %@ && %K == YES", @"lastEngagedDate", *(a1 + 32), @"isTrackedAsRecent"];
  [v4 setPredicate:v5];

  v20 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_8F60C();
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) setIsTrackedAsRecent:0];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v13);
  }

  [v3 saveLibrary];
}

void sub_33328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v31 = @"assetID";
  v6 = [NSArray arrayWithObjects:&v31 count:1];
  [v4 setPropertiesToFetch:v6];

  v25 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v25];
  v8 = v25;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v21 + 1) + 8 * v13) setIsTrackedAsRecent:0];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v11);
  }

  v14 = BCBookPromotionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v9 count];
    v16 = [v9 valueForKey:@"assetID"];
    v17 = [v16 bu_arrayByRemovingNSNulls];
    *buf = 134218242;
    v27 = v15;
    v28 = 2112;
    v29 = v17;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%lu assets promoted: %@", buf, 0x16u);
  }

  if (v8)
  {
    v18 = BCBookPromotionLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_8F674();
    }
  }

  v19 = objc_retainBlock(*(a1 + 40));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v8);
  }
}

void sub_33670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKLibraryManager fetchRequestForRecentlyEngaged];
  [v4 setFetchLimit:1];
  v9 = 0;
  v5 = [v3 countForFetchRequest:v4 error:&v9];

  v6 = v9;
  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5 == &dword_0 + 1, v6);
  }
}

void sub_33914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", *(a1 + 32)];
  v15[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K == YES", @"isTrackedAsRecent"];
  v15[1] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  v14 = 0;
  v9 = [v3 countForFetchRequest:v4 error:&v14];

  v10 = v14;
  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (!v9 || v10)
  {
    if (v11)
    {
      v13 = v11[2];
      goto LABEL_7;
    }
  }

  else if (v11)
  {
    v13 = v11[2];
LABEL_7:
    v13();
  }
}

void sub_33CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [NSPredicate predicateWithFormat:@"%K == %@", @"assetID", *(a1 + 32)];
  [v4 setPredicate:v5];

  v18 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v18];

  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = [v6 firstObject];
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"BKLibraryDataSourcePerformance-PPT"];

    v13 = 0;
    if (v10 && (v12 & 1) == 0)
    {
      if ([v10 isProof])
      {
        v13 = 0;
      }

      else if ([v10 isPreorderBook])
      {
        v13 = [v10 contentType] != 6;
      }

      else
      {
        v13 = 1;
      }
    }

    if ([v10 isSample])
    {
      v15 = &dword_0 + 1;
    }

    else
    {
      v15 = [v10 isAudiobookPreview];
    }

    v16 = [[BKLibraryAssetObject alloc] initWithLibraryAsset:v10];
    v17 = objc_retainBlock(*(a1 + 40));
    if (v17)
    {
      v17[2](v17, v16, [v10 isTrackedAsRecent], v13, v15, v8);
    }
  }

  else
  {
    v14 = objc_retainBlock(*(a1 + 40));
    v10 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0, v8);
    }
  }
}

void sub_33FE0(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v29 = [NSPredicate predicateWithFormat:@"%K == YES", @"isTrackedAsRecent"];
  v4 = [*(a1 + 32) predicateForSamples];
  v33 = [NSPredicate predicateWithFormat:@"%K < %@", @"lastEngagedDate", *(a1 + 40)];
  v34 = v4;
  v47[0] = v4;
  v47[1] = v33;
  v5 = [NSArray arrayWithObjects:v47 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  v7 = [*(a1 + 32) predicateForSamples];
  v8 = [NSCompoundPredicate notPredicateWithSubpredicate:v7];

  v9 = v6;
  v10 = v8;
  [NSPredicate predicateWithFormat:@"%K < %@", @"lastEngagedDate", *(a1 + 48)];
  v46 = v45 = v8;
  v32 = v46;
  v11 = [NSArray arrayWithObjects:&v45 count:2];
  v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

  v44[0] = v6;
  v44[1] = v12;
  v31 = v12;
  v13 = [NSArray arrayWithObjects:v44 count:2];
  v14 = [NSCompoundPredicate orPredicateWithSubpredicates:v13];

  v15 = v29;
  v43[0] = v29;
  v43[1] = v14;
  v16 = [NSArray arrayWithObjects:v43 count:2];
  v17 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

  [v3 setPredicate:v17];
  [v3 setResultType:2];
  v42 = @"assetID";
  v18 = [NSArray arrayWithObjects:&v42 count:1];
  [v3 setPropertiesToFetch:v18];

  v35 = 0;
  v19 = [v30 executeFetchRequest:v3 error:&v35];

  v20 = v35;
  if (v20)
  {
    v21 = BCBookPromotionLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      *buf = 138412802;
      v37 = v27;
      v38 = 2112;
      v39 = v28;
      v40 = 2112;
      v41 = v20;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not get recents not opened since dateForSamples: %@ and dateForNonSamples: %@. Error: %@", buf, 0x20u);
    }

    v22 = objc_retainBlock(*(a1 + 56));
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0, v20);
    }
  }

  else
  {
    v24 = [v19 valueForKey:@"assetID"];
    v23 = [v24 bu_arrayByRemovingNSNulls];

    v25 = objc_retainBlock(*(a1 + 56));
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, v23, 0);
    }

    v15 = v29;
  }
}

void sub_344A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() _recentlyEngagedPredicate];
  v39[0] = v6;
  v7 = [NSPredicate predicateWithFormat:@"%K == YES", @"isFinished"];
  v39[1] = v7;
  v8 = [NSArray arrayWithObjects:v39 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  if ([*(a1 + 40) length])
  {
    v10 = BCBookPromotionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v38 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Excluding %@ from cleanup of finished recent books.", buf, 0xCu);
    }

    v12 = [v4 predicate];
    v36[0] = v12;
    v13 = [NSPredicate predicateWithFormat:@"%K != %@", @"assetID", *(a1 + 40)];
    v36[1] = v13;
    v14 = [NSArray arrayWithObjects:v36 count:2];
    v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
    [v4 setPredicate:v15];
  }

  v34 = 0;
  v29 = v3;
  v16 = [v3 executeFetchRequest:v4 error:&v34];
  v17 = v34;
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        [v24 setIsTrackedAsRecent:0];
        v25 = [v24 assetID];

        if (v25)
        {
          v26 = [v24 assetID];
          [v18 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v21);
  }

  [v29 saveLibrary];
  v27 = objc_retainBlock(*(a1 + 48));
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27, v18, v17);
  }
}

void sub_348E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() _continueReadingPredicate];
  v32[0] = v6;
  v7 = [NSPredicate predicateWithFormat:@"%K == YES", @"isFinished"];
  v32[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K < %@", @"dateFinished", *(a1 + 40)];
  v32[2] = v8;
  v9 = [NSPredicate predicateWithFormat:@"%K < %@", @"lastOpenDate", *(a1 + 40)];
  v32[3] = v9;
  v10 = [NSArray arrayWithObjects:v32 count:4];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  [v4 setPredicate:v11];

  v30 = 0;
  v25 = v3;
  v12 = [v3 executeFetchRequest:v4 error:&v30];
  v13 = v30;
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        [v20 setIsTrackedAsRecent:0];
        v21 = [v20 assetID];

        if (v21)
        {
          v22 = [v20 assetID];
          [v14 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v17);
  }

  v23 = objc_retainBlock(*(a1 + 48));
  v24 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23, v14, v13);
  }
}

void sub_351CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v3 _updateLibraryAssetWithID:v4 withLastOpenDate:v5 withMoc:v6];
  [v6 saveLibrary];

  v8 = objc_retainBlock(*(a1 + 56));
  if (v8)
  {
    v9 = v8;
    v8[2]();
    v8 = v9;
  }
}

void sub_35334(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  v4 = v3;
  if (v3)
  {
    [v3 setIsEphemeral:*(a1 + 56)];
    v5 = *(a1 + 32);
    v6 = [v4 dataSourceIdentifier];
    v7 = [v5 dataSourceWithIdentifier:v6];

    if (objc_opt_respondsToSelector())
    {
      [v7 updateAsset:v4 isEphemeral:*(a1 + 56) completion:*(a1 + 48)];
    }

    else
    {
      v20 = NSLocalizedDescriptionKey;
      v12 = [v7 description];
      v13 = [NSString stringWithFormat:@"Library data source %@ doesn't respond to selector.", v12];
      v21 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:2 userInfo:v14];

      v16 = objc_retainBlock(*(a1 + 48));
      v17 = v16;
      if (v16)
      {
        (*(v16 + 2))(v16, 0, v15);
      }
    }
  }

  else
  {
    v8 = [NSString stringWithFormat:@"Found no asset for assetID: %@", *(a1 + 40), NSLocalizedDescriptionKey];
    v19 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v7 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:2 userInfo:v9];

    v10 = objc_retainBlock(*(a1 + 48));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, v7);
    }
  }
}

void sub_35668(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = [*(a1 + 32) libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  if (!v4)
  {
    v14 = BKLibraryLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_8F718(v3);
    }

    v21 = NSLocalizedDescriptionKey;
    v22 = @"Invalid asset identifier.";
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = 1;
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 32) dataSources];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (!v6)
  {
LABEL_11:

    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_8F6DC();
    }

    v23 = NSLocalizedDescriptionKey;
    v24 = @"No data sources handled the pending update.";
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = 2;
LABEL_17:
    v5 = [NSError errorWithDomain:@"BKLibraryErrorDomain" code:v13 userInfo:v12];

    v15 = objc_retainBlock(*(a1 + 48));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0, v5);
    }

    goto LABEL_20;
  }

  v7 = v6;
  v8 = *v18;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v18 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v17 + 1) + 8 * v9);
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 applyPendingUpdateForAsset:v4 completion:*(a1 + 48)])
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

LABEL_20:
}

void sub_359C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() ephemeralSamplesPredicate];
  [v9 setPredicate:v5];

  v6 = [v3 executeFetchRequest:v9 error:0];

  if ([v6 count])
  {
    v7 = [*(a1 + 32) dataSourceConformingToProtocol:&OBJC_PROTOCOL___BKManagesEphemeralAssets];
    v8 = BUProtocolCast();

    [v8 ephemeralAssetsRedundant:v6];
  }
}

void sub_368A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) migrationMoc];
  if (v4)
  {
    v5 = BKLibraryLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_8FA48();
    }

    [*(a1 + 32) setMetadataObject:&__kCFBooleanTrue forKey:@"BKLibraryIsMigrating"];
    [*(a1 + 32) saveMetaData];
    [*(a1 + 32) migrateSortOrderKeys:v4];
    [*(a1 + 32) migrateCollections:v4 context:v3];
    [*(a1 + 32) migrateMetaData:v4];
    [*(a1 + 32) migrateDataSources:v4];
    v6 = BKLibraryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_8FA84();
    }

    v7 = [v4 persistentStoreCoordinator];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 persistentStores];
    v9 = [v8 copy];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v7 removePersistentStore:*(*(&v14 + 1) + 8 * v13) error:0];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  [*(a1 + 32) setMetadataObject:&__kCFBooleanFalse forKey:@"BKLibraryIsMigrating"];
  [*(a1 + 32) migratePurgeOldDatabases];
}

void sub_36FE0(uint64_t a1)
{
  v2 = objc_alloc_init(NSFetchRequest);
  v3 = [NSEntityDescription entityForName:@"BKBookInfo" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  [v2 setPropertiesToFetch:&off_DE1E0];
  [v2 setResultType:2];
  v4 = *(a1 + 32);
  v22 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v22];
  v6 = v22;
  v7 = [v5 valueForKeyPath:@"databaseKey"];
  v8 = [*(a1 + 40) migrationDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_372B8;
  block[3] = &unk_D5A40;
  block[4] = *(a1 + 40);
  v9 = v5;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  dispatch_sync(v8, block);

  [*(a1 + 40) saveCachedMigrationData];
  v11 = [NSEntityDescription entityForName:@"BKBookInfo" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v11];

  [v2 setPropertiesToFetch:&off_DE1F8];
  v12 = [NSPredicate predicateWithFormat:@"%K != NULL", @"sortKey"];
  [v2 setPredicate:v12];

  v13 = [NSSortDescriptor sortDescriptorWithKey:@"sortKey" ascending:0];
  v23 = v13;
  v14 = [NSArray arrayWithObjects:&v23 count:1];
  [v2 setSortDescriptors:v14];

  [v2 setFetchLimit:1];
  [v2 setResultType:2];
  v15 = *(a1 + 32);
  v18 = v6;
  v16 = [v15 executeFetchRequest:v2 error:&v18];
  v17 = v18;

  if ([v16 count] == &dword_0 + 1)
  {
    [*(a1 + 40) saveMetaData];
  }
}

id sub_372B8(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithObjects:*(a1 + 40) forKeys:*(a1 + 48)];
  [*(a1 + 32) setMigratedSortOrderData:v2];

  v3 = *(a1 + 40);
  v4 = [v3 valueForKeyPath:@"pluginAssetID"];
  v5 = [NSMutableDictionary dictionaryWithObjects:v3 forKeys:v4];
  [*(a1 + 32) setMigratedSortOrderDataByPluginAssetID:v5];

  v6 = *(a1 + 32);

  return [v6 setMigratedPropertiesChanged:1];
}

void sub_37484(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setResultType:2];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() predicateForNonEphemeralSamplesLibraryAssets];
  [v4 setPredicate:v6];

  v22 = @"assetID";
  v7 = [NSArray arrayWithObjects:&v22 count:1];
  [v4 setPropertiesToFetch:v7];

  [v4 setReturnsDistinctResults:1];
  v17 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v17];

  v9 = v17;
  v10 = [v8 valueForKey:@"assetID"];
  v11 = [v10 bu_arrayByRemovingNSNulls];

  if (!v11 || v9)
  {
    v12 = BKLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_8FAC0(v9);
    }
  }

  v13 = BKLibraryLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 count];
    *buf = 134349314;
    v19 = v14;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Bootstrap Samples collection: Going to add %{public}lu books to Samples and Downloaded collection. assetIDs: %@", buf, 0x16u);
  }

  v15 = [*(a1 + 32) collectionManager];
  v16 = [NSSet setWithArray:v11];
  [v15 resetCollectionsForAssetIDs:v16 completion:&stru_D65E8];

  [*(a1 + 32) setMetadataObject:&__kCFBooleanTrue forKey:@"BKLibraryHasBootstrappedSamplesCollection"];
  [*(a1 + 32) saveMetaData];
}

void sub_376DC(id a1)
{
  v1 = BKLibraryLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Bootstrap Samples collection: Finished bootstrapping Samples collection.", v2, 2u);
  }
}

void sub_377CC(uint64_t a1)
{
  if ([*(a1 + 32) migratedPropertiesChanged])
  {
    v2 = [*(a1 + 32) migrationCachePath];
    v3 = +[NSFileManager defaultManager];
    [v3 removeItemAtPath:v2 error:0];

    v4 = [*(a1 + 32) migratedSortOrderData];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) migratedSortOrderData];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [*(a1 + 32) migratedSortOrderData];
        v9 = [v8 writeToFile:v2 atomically:1];

        if (v9)
        {
          [*(a1 + 32) setMigratedPropertiesChanged:0];
        }

        else
        {
          v10 = BKLibraryLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_8FB4C();
          }
        }
      }
    }
  }
}

BOOL sub_379FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"validUntilKey"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 compare:*(a1 + 32)] == -1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_37AE8(uint64_t a1)
{
  v8 = [*(a1 + 32) migrationCachePath];
  v2 = [NSMutableDictionary dictionaryWithContentsOfFile:?];
  [*(a1 + 32) setMigratedSortOrderData:v2];

  v3 = [*(a1 + 32) migratedSortOrderData];

  if (v3)
  {
    [*(a1 + 32) q_removeOldMigrationData];
    v4 = [*(a1 + 32) migratedSortOrderData];
    v5 = [v4 allValues];

    v6 = [v5 valueForKeyPath:@"pluginAssetID"];
    v7 = [NSMutableDictionary dictionaryWithObjects:v5 forKeys:v6];
    [*(a1 + 32) setMigratedSortOrderDataByPluginAssetID:v7];
  }
}

void sub_37D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_37D4C(uint64_t a1)
{
  v2 = [*(a1 + 32) migratedSortOrderData];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v6 setMigratedPropertiesChanged:1];
    if (*(a1 + 56) != 1)
    {
      return;
    }

    v7 = [*(a1 + 32) migratedSortOrderData];
    [v7 removeObjectForKey:*(a1 + 40)];

    v8 = [*(*(*(a1 + 48) + 8) + 40) valueForKey:@"pluginAssetID"];
    if (!v8)
    {
      goto LABEL_11;
    }

    v17 = v8;
    v9 = [*(a1 + 32) migratedSortOrderDataByPluginAssetID];
    v10 = v9;
    v11 = v17;
  }

  else
  {
    v12 = [v6 migratedSortOrderDataByPluginAssetID];
    v13 = [v12 objectForKey:*(a1 + 40)];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      return;
    }

    [*(a1 + 32) setMigratedPropertiesChanged:1];
    if (*(a1 + 56) != 1)
    {
      return;
    }

    v17 = [*(*(*(a1 + 48) + 8) + 40) valueForKey:@"databaseKey"];
    if (v17)
    {
      v16 = [*(a1 + 32) migratedSortOrderData];
      [v16 removeObjectForKey:v17];
    }

    v9 = [*(a1 + 32) migratedSortOrderDataByPluginAssetID];
    v10 = v9;
    v11 = *(a1 + 40);
  }

  [v9 removeObjectForKey:v11];

  v8 = v17;
LABEL_11:
}

id sub_38428(uint64_t a1)
{
  v2 = [*(a1 + 32) migratedSortOrderData];

  if (!v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setMigratedSortOrderData:v3];
  }

  v4 = [*(a1 + 32) migratedSortOrderData];
  [v4 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v5 = *(a1 + 32);

  return [v5 setMigratedPropertiesChanged:1];
}

void sub_385F0(uint64_t a1)
{
  v2 = objc_alloc_init(NSFetchRequest);
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [NSEntityDescription entityForName:@"BKCollection" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  v41 = a1;
  v29 = v2;
  [*(a1 + 32) executeFetchRequest:v2 error:0];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v4 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v48;
    v7 = @"sortKey";
    v30 = *v48;
    do
    {
      v8 = 0;
      v31 = v5;
      do
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * v8);
        v10 = [v9 valueForKey:@"deletedFlag"];
        v11 = [v9 valueForKey:@"lastModification"];
        v34 = [v9 valueForKey:@"serverSyncUniqueId"];
        v36 = [v9 valueForKey:v7];
        v35 = [v9 valueForKey:@"title"];
        if (([v10 BOOLValue] & 1) != 0 || objc_msgSend(v36, "integerValue") && objc_msgSend(v35, "length"))
        {
          v37 = objc_opt_new();
          if (v10)
          {
            [v37 setObject:v10 forKeyedSubscript:@"deletedFlag"];
          }

          if (v11)
          {
            [v37 setObject:v11 forKeyedSubscript:@"lastModification"];
          }

          if (v34)
          {
            [v37 setObject:v34 forKeyedSubscript:@"serverSyncUniqueId"];
          }

          if (v36)
          {
            [v37 setObject:v36 forKeyedSubscript:v7];
          }

          if (v35)
          {
            [v37 setObject:v35 forKeyedSubscript:@"title"];
          }

          if (!v10 || ([v10 BOOLValue] & 1) == 0)
          {
            v33 = v10;
            v12 = objc_opt_new();
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v38 = [v9 valueForKey:@"members"];
            v42 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v42)
            {
              v39 = *v44;
              v40 = v11;
              do
              {
                for (i = 0; i != v42; i = i + 1)
                {
                  if (*v44 != v39)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v14 = *(*(&v43 + 1) + 8 * i);
                  v15 = [v14 valueForKey:@"databaseKey"];
                  v16 = [v14 valueForKey:v7];
                  v17 = objc_opt_new();
                  v18 = v17;
                  if (v15)
                  {
                    [v17 setObject:v15 forKeyedSubscript:@"databaseKey"];
                  }

                  if (v16)
                  {
                    [v18 setObject:v16 forKeyedSubscript:v7];
                  }

                  [v12 addObject:v18];
                  v19 = [*(v41 + 40) fetchMigratedProperties:v15 deleteFoundAssets:0];
                  v20 = v19;
                  if (v19)
                  {
                    v21 = v7;
                    v22 = [v19 objectForKey:@"pluginAssetID"];
                    v23 = [v22 isEqualToString:v15];

                    if (v23)
                    {
                      v24 = v15;
                    }

                    else
                    {
                      v24 = [v20 objectForKey:@"pluginAssetID"];

                      v25 = objc_opt_new();
                      v26 = v25;
                      if (v24)
                      {
                        [v25 setObject:v24 forKeyedSubscript:@"databaseKey"];
                      }

                      if (v16)
                      {
                        v27 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v16 longValue] + 100);

                        [v26 setObject:v27 forKeyedSubscript:v21];
                        v16 = v27;
                      }

                      [v12 addObject:v26];
                      v28 = +[NSDate date];
                      [v37 setObject:v28 forKeyedSubscript:@"lastModification"];
                    }

                    v7 = v21;
                  }

                  else
                  {
                    v24 = v15;
                  }

                  v11 = v40;
                }

                v42 = [v38 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v42);
            }

            if ([v12 count])
            {
              [v37 setObject:v12 forKeyedSubscript:@"members"];
            }

            v6 = v30;
            v5 = v31;
            v10 = v33;
          }

          [*(v41 + 48) addObject:v37];
        }

        v8 = v8 + 1;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v5);
  }
}
void sub_38B78(uint64_t a1)
{
  v33 = [*(a1 + 32) collectionController];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = a1;
  obj = *(a1 + 40);
  v34 = [obj countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v34)
  {
    v32 = *v42;
    *&v2 = 138413570;
    v28 = v2;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v41 + 1) + 8 * i);
        v5 = [v4 objectForKeyedSubscript:{@"serverSyncUniqueId", v28}];
        v6 = [*(v35 + 32) collectionsWorkerChildContext];
        v7 = [v33 mutableCollectionWithCollectionID:v5 inManagedObjectContext:v6 error:0];

        if (!v7)
        {
          v8 = [*(v35 + 32) collectionsWorkerChildContext];
          v7 = [BKCollection insertNewCollectionWithCollectionID:v5 inManagedObjectContext:v8];

          v9 = [v4 objectForKeyedSubscript:@"deletedFlag"];
          v10 = [v4 objectForKeyedSubscript:@"lastModification"];
          v11 = [v4 objectForKeyedSubscript:@"sortKey"];
          v12 = [v4 objectForKeyedSubscript:@"title"];
          [v7 setDeletedFlag:v9];
          [v7 setSortKey:v11];
          [v7 setTitle:v12];
          [v7 setLastModification:v10];
          [v7 setLocalModDate:0];
        }

        v36 = v5;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v13 = [v4 objectForKeyedSubscript:@"members"];
        v14 = [v13 countByEnumeratingWithState:&v37 objects:v57 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v38;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v38 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v37 + 1) + 8 * j);
              v19 = [v18 objectForKeyedSubscript:@"databaseKey"];
              v20 = [v18 objectForKeyedSubscript:@"sortKey"];
              v21 = [v7 addCollectionMemberAvoidingDupesWithAssetID:v19 sortKey:v20 forceToTop:0];
            }

            v15 = [v13 countByEnumeratingWithState:&v37 objects:v57 count:16];
          }

          while (v15);
        }

        v22 = BKLibraryLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v7 collectionID];
          v23 = [v7 title];
          v24 = [v7 lastModification];
          v25 = [v7 sortKey];
          v26 = [v7 deletedFlag];
          v29 = [v7 members];
          v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 count]);
          *buf = v28;
          v46 = v30;
          v47 = 2112;
          v48 = v23;
          v49 = 2112;
          v50 = v24;
          v51 = 2112;
          v52 = v25;
          v53 = 2112;
          v54 = v26;
          v55 = 2112;
          v56 = v27;
          _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "NEW MIGRATED COLLECTION: %@ - %@ %@ [sortKey: %@], [deleted: %@], [%@ members]", buf, 0x3Eu);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v34);
  }
}

void sub_39500(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) ownershipObservers];
  v2 = [v4 allKeys];
  v3 = [NSSet setWithArray:v2];
  [v1 intersectSet:v3];
}

void sub_39898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_398B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProcessingAuthenticationStateImmediate];
}

void sub_3A118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  sub_3A184(v8 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_3A138(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v3 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(result + 56) = v3;
  v4 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(result + 64) = v4;
  v5 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(result + 72) = v5;
  LOWORD(v5) = *(a2 + 80);
  *(result + 82) = *(a2 + 82);
  *(result + 80) = v5;
  return result;
}

void sub_3A184(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_3A1D0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v4 setReturnsObjectsAsFaults:0];
  v5 = a1[4];
  v38 = a1[5];
  v6 = [NSArray arrayWithObjects:&v38 count:1];
  v7 = [v5 predicateForAssetIDsTaggedLibraryAssets:v6];

  v37 = a1[5];
  v8 = [NSArray arrayWithObjects:&v37 count:1];
  v9 = [BKLibraryManager predicateForTemporaryAssetIDsTaggedLibraryAssets:v8];

  v36[0] = v7;
  v36[1] = v9;
  v10 = [NSArray arrayWithObjects:v36 count:2];
  v11 = [NSCompoundPredicate orPredicateWithSubpredicates:v10];
  [v4 setPredicate:v11];

  v35 = 0;
  v12 = [v3 executeFetchRequest:v4 error:&v35];

  v13 = v35;
  if ([v12 count])
  {
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = [v14 shortBookTitle];
    v16 = *(a1[6] + 8);
    v17 = *(v16 + 48);
    *(v16 + 48) = v15;

    v18 = [v14 displayAuthor];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 56);
    *(v19 + 56) = v18;

    v21 = [v14 language];
    v22 = *(a1[6] + 8);
    v23 = *(v22 + 64);
    *(v22 + 64) = v21;

    v24 = [v14 coverWritingMode];
    v25 = *(a1[6] + 8);
    v26 = *(v25 + 72);
    *(v25 + 72) = v24;

    *(*(a1[6] + 8) + 80) = [v14 isAudiobook];
    *(*(a1[6] + 8) + 81) = [v14 isRightToLeft];
    *(*(a1[6] + 8) + 82) = [v14 isPreorderBook];
  }

  else
  {
    v27 = BKLibraryLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_8FDC0(a1 + 5, v27, v28, v29, v30, v31, v32, v33);
    }

    v34 = *(a1[6] + 8);
    v14 = *(v34 + 64);
    *(v34 + 64) = @"en";
  }
}

id sub_3A4A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  v5 = *(a2 + 34);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = v5;
  return result;
}

void sub_3A598(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"%K == YES", @"isExplicit"];
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setPredicate:v4];
  v14 = 0;
  v6 = [v3 executeFetchRequest:v5 error:&v14];

  v7 = v14;
  if (v7)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_8FE30();
    }
  }

  v9 = [v6 valueForKey:@"assetID"];
  v10 = [NSMutableSet setWithArray:v9];

  v11 = [v6 valueForKey:@"seriesID"];
  v12 = [NSSet setWithArray:v11];

  [v10 unionSet:v12];
  v13 = +[NSNull null];
  [v10 removeObject:v13];

  (*(*(a1 + 32) + 16))();
}

void *sub_3C2B0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_EFC90)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_3C3F0;
    v5[4] = &unk_D6698;
    v5[5] = v5;
    v6 = off_D6680;
    v7 = 0;
    qword_EFC90 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_EFC90;
    if (qword_EFC90)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_EFC90;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_EFC88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_3C3F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_EFC90 = result;
  return result;
}

void sub_3C464(uint64_t a1, void *a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3C540;
  v6[3] = &unk_D66E8;
  v7 = a3;
  v8 = a1;
  v5 = v7;
  [a2 enumerateObjectsUsingBlock:v6];
}

id sub_3C4FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 canMakeAssetsLocal];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_3C540(uint64_t result, uint64_t a2, char a3)
{
  if ((*(result + 40) & (1 << a3)) != 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_3C56C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3C654;
  v10[3] = &unk_D6710;
  v11 = a3;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v5;
  v14 = v7;
  v8 = v5;
  v9 = v11;
  dispatch_async(v6, v10);
}

void sub_3C654(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = BKLibraryLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_8FE98(a1, v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "#datasource DONE fetchAssets from: %{public}@", &v9, 0xCu);
  }

  v7 = objc_retainBlock(*(a1 + 56));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, *(a1 + 48), *(a1 + 32));
  }
}

void sub_3C75C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = BUProtocolCast();
  [v8 updateFetchDigest];

  if (v6 || ![v5 count])
  {
    v9 = objc_retainBlock(*(a1 + 48));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, v6);
    }
  }

  else
  {
    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 count];
      v13 = *(a1 + 40);
      *buf = 134218242;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets Step 2: fetching %lu assets for: %{public}@", buf, 0x16u);
    }

    v14 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3C938;
    v15[3] = &unk_D6738;
    v16 = v5;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    [v14 fetchAssetsWithIDs:v16 completion:v15];
  }
}

void sub_3C938(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_retainBlock(*(a1 + 48));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0, v6);
    }
  }

  else
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    if ([v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [v5 objectAtIndexedSubscript:v10];
        v12 = +[NSNull null];

        v13 = v5;
        v14 = v9;
        if (v11 == v12)
        {
          v13 = *(a1 + 32);
          v14 = v8;
        }

        v15 = [v13 objectAtIndexedSubscript:v10];
        [v14 addObject:v15];

        ++v10;
      }

      while (v10 < [v5 count]);
    }

    if ([v8 count])
    {
      v16 = BKLibraryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v23 = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets Step 2 ignoring failed-to-fetch assets [%@] from: %@", &v23, 0x16u);
      }
    }

    v18 = BKLibraryLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v5 count];
      v20 = *(a1 + 40);
      v23 = 134218242;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "#datasource fetchAssets Step 3: returning %lu assets from: %{public}@", &v23, 0x16u);
    }

    v21 = objc_retainBlock(*(a1 + 48));
    if (v21)
    {
      v22 = [v9 copy];
      v21[2](v21, v22, 0);
    }
  }
}

void sub_3CBB8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

void sub_3CC38(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) count];
  v7 = [[NSMutableArray alloc] initWithCapacity:v6];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = +[NSNull null];
      [v7 setObject:v9 atIndexedSubscript:i];
    }
  }

  v10 = [v21 count];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      v13 = [v21 objectAtIndexedSubscript:j];
      v14 = *(a1 + 32);
      v15 = [v13 assetID];
      v16 = [v14 indexOfObject:v15];

      if (v16 != 0x7FFFFFFFFFFFFFFFLL || (v17 = *(a1 + 32), [v13 temporaryAssetID], v18 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v17, "indexOfObject:", v18), v18, v16 != 0x7FFFFFFFFFFFFFFFLL))
      {
        [v7 setObject:v13 atIndexedSubscript:v16];
      }
    }
  }

  v19 = objc_retainBlock(*(a1 + 40));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v7, v5);
  }
}

id sub_3CDE4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 canRedownloadAssets];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_3CE3C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_3CE8C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_3CF10(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_3CF30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_3CF50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_3CFF0(id a1)
{
  v3 = BKLibraryFrameworkBundle();
  v1 = [v3 localizedStringForKey:@"Unknown Author" value:&stru_D8298 table:&stru_D8298];
  v2 = gUnknownAuthor;
  gUnknownAuthor = v1;
}

void sub_3D09C(id a1)
{
  v3 = BKLibraryFrameworkBundle();
  v1 = [v3 localizedStringForKey:@"No Title" value:&stru_D8298 table:&stru_D8298];
  v2 = gUnknownTitle;
  gUnknownTitle = v1;
}

void sub_3D148(id a1)
{
  v3 = BKLibraryFrameworkBundle();
  v1 = [v3 localizedStringForKey:@"Multiple Authors" value:&stru_D8298 table:&stru_D8298];
  v2 = gMultipleAuthors;
  gMultipleAuthors = v1;
}

void sub_3FEBC(id a1)
{
  qword_EFCB8 = objc_alloc_init(BKLibraryAssetStatusController);

  _objc_release_x1();
}

void sub_40440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location)
{
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_40494(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _filterUpdateForAsset:v3];

  return v5;
}

id sub_404E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _filterDownloadForAsset:v3];

  return v5;
}

id sub_4053C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _filterUploadsForAsset:v3];

  return v5;
}

void sub_40590(uint64_t a1)
{
  v2 = [BCManagedObjectIDMonitor alloc];
  v3 = [*(a1 + 40) persistentStoreCoordinator];
  v4 = +[BKLibraryManager predicateForAllStoreLibraryAssetsExcludingUnpurchasedSeriesAssets];
  v5 = [v2 initWithContext:0 coordinator:v3 entityName:@"BKLibraryAsset" predicate:v4 mapProperty:@"assetID" propertiesOfInterest:0 observer:*(a1 + 32)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  v8 = [BCManagedObjectIDMonitor alloc];
  v13 = [*(a1 + 40) persistentStoreCoordinator];
  v9 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
  v10 = [v8 initWithContext:0 coordinator:v13 entityName:@"BKLibraryAsset" predicate:v9 mapProperty:@"assetID" propertiesOfInterest:0 observer:*(a1 + 32)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 80);
  *(v11 + 80) = v10;
}

id sub_406D0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 48) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 32) statusForAssetID:v7];
        v9 = [BKLibraryDownloadStatus statusWithAssetID:v7 state:1 progressValue:-1 timeRemaining:0.0];
        [v8 updateWithStatus:v9];

        [*(a1 + 32) _addAssetID:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _updatedAssets];
}

id sub_40AE0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) rearrangeObjects];
  [*(*(a1 + 32) + 8) rearrangeObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 rearrangeObjects];
}

void sub_40EA8(uint64_t a1)
{
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:*(a1 + 32) forKey:@"Root"];
  [v4 finishEncoding];
  v2 = [v4 encodedData];
  v3 = [*(a1 + 40) _persistedInfoURL];
  [v2 writeToURL:v3 atomically:1];
}

void sub_41268(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 2)
  {
    v11 = objc_begin_catch(exc_buf);
    v12 = [v10 _persistedInfoURL];
    NSLog(@"Failed to read: %@ -- %@");

    objc_end_catch();
    JUMPOUT(0x411E4);
  }

  objc_begin_catch(exc_buf);
  objc_exception_rethrow();
}

void sub_41C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_41C3C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    v5 = [v8 state];
    if ((v5 - 2) >= 2)
    {
      if ((v5 - 4) > 1)
      {
        goto LABEL_6;
      }

      [v8 progressValue];
      *(*(*(a1 + 48) + 8) + 24) = v6 + *(*(*(a1 + 48) + 8) + 24);
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_6:

  return _objc_release_x1();
}

void sub_41EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    v40 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = [*(a1 + 40) objectForKey:v9];
        if (v10)
        {
          v11 = [*(a1 + 48) libraryAssetWithAssetID:v9 inManagedObjectContext:v3];
          if ([v11 isContainer])
          {
            [*(a1 + 56) addObject:v9];
LABEL_34:

            goto LABEL_35;
          }

          if (![v10 state])
          {
            goto LABEL_34;
          }

          v12 = [v11 seriesID];
          if (v12)
          {
            v13 = [*(a1 + 48) libraryAssetWithAssetID:v12 inManagedObjectContext:v3];
            v14 = v13;
            if (v13)
            {
              v41 = v13;
              [*(a1 + 56) addObject:v12];
              v15 = [v10 state];
              if (v15 > 0xB)
              {
                goto LABEL_31;
              }

              v14 = v41;
              if (((1 << v15) & 0xFA0) == 0)
              {
                if (((1 << v15) & 0x1C) != 0 && ([v41 isDownloading] & 1) == 0)
                {
                  v16 = [v11 purchasedAndLocalParent];
                  if (v16)
                  {
                    v37 = 0;
                  }

                  else
                  {
                    v37 = [v11 isSample] ^ 1;
                  }

                  v17 = [v11 localOnlySeriesItemsParent];
                  if (v17)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = [v11 isSample] ^ 1;
                  }

                  v18 = [*(a1 + 40) objectForKey:v9];
                  if ([v18 state] - 2 <= &dword_0 + 2)
                  {
                    v36 = [*(a1 + 48) libraryMutableAssetWithAssetID:v12 inManagedObjectContext:v3];
                    [v36 setState:2];
                    if ((v37 | v39))
                    {
                      v19 = [*(a1 + 48) libraryMutableAssetWithAssetID:v9 inManagedObjectContext:v3];
                      if (v37)
                      {
                        v38 = v19;
                        [v19 setPurchasedAndLocalParent:v36];
                        [*(a1 + 48) updateAuthorForSeriesContainer:v36];
                        v19 = v38;
                      }

                      if (v39)
                      {
                        v20 = v19;
                        [v19 setLocalOnlySeriesItemsParent:v36];
                        v19 = v20;
                      }
                    }
                  }
                }

LABEL_31:
                v21 = [*(a1 + 64) objectForKey:v12];
                v22 = [v21 integerValue];

                v23 = *(a1 + 64);
                v24 = [NSNumber numberWithInteger:v22 + 1];
                [v23 setObject:v24 forKey:v12];

                v25 = [*(a1 + 72) objectForKey:v12];
                [v25 floatValue];
                v27 = v26;

                v28 = *(a1 + 72);
                [v10 progressValue];
                v30 = v29 + v27;
                *&v30 = v30;
                v31 = [NSNumber numberWithFloat:v30];
                [v28 setObject:v31 forKey:v12];

                v4 = v40;
                v14 = v41;
              }
            }
          }

          goto LABEL_34;
        }

LABEL_35:
      }

      v6 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4236C;
  block[3] = &unk_D68A8;
  *&v32 = *(a1 + 56);
  *(&v32 + 1) = *(a1 + 80);
  v42 = v32;
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  *&v35 = v33;
  *(&v35 + 1) = v34;
  v44 = v42;
  v45 = v35;
  v46 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_4236C(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [*(a1 + 40) statusForAssetID:v7];
        v9 = [*(a1 + 48) objectForKey:v7];
        v10 = [v9 integerValue];

        v11 = [*(a1 + 56) objectForKey:v7];
        [v11 floatValue];
        v13 = v12;

        if (v10)
        {
          v14 = [BKLibraryDownloadStatus statusWithAssetID:v7 state:4 progressValue:-1 timeRemaining:(v13 / v10)];
          [v8 updateWithStatus:v14];
        }

        else
        {
          v15 = [BKLibraryDownloadStatus statusWithAssetID:v7 state:5 progressValue:-1 timeRemaining:1.0];
          [v8 updateWithStatus:v15];

          v16 = *(a1 + 64);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_425A0;
          v17[3] = &unk_D58E0;
          v18 = v16;
          v19 = v7;
          [v18 performBlockOnWorkerQueue:v17];
          v14 = v18;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }
}

void sub_425A0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  if ([v2 state] != 5)
  {
    [v2 setState:5];
  }
}

void sub_42724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_42748(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    if ([v5 canPause])
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if ([v5 canResume])
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }
}

void sub_42904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_42928(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    if ([v5 state] == &dword_4 + 1)
    {
      if (![*(*(a1 + 40) + 104) containsObject:*(a1 + 32)] || (objc_msgSend(*(*(a1 + 40) + 112), "containsObject:", v7) & 1) == 0)
      {
        v6 = 48;
LABEL_9:
        ++*(*(*(a1 + v6) + 8) + 24);
      }
    }

    else if ([v5 state] == &dword_0 + 1 && (objc_msgSend(*(*(a1 + 40) + 112), "containsObject:", v7) & 1) == 0)
    {
      v6 = 56;
      goto LABEL_9;
    }
  }
}

void sub_42B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_42B6C(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) statusForAssetID:a2];
  if ([v6 state] == &dword_8 + 1)
  {
    v3 = 40;
LABEL_5:
    v4 = v6;
LABEL_6:
    ++*(*(*(a1 + v3) + 8) + 24);
    goto LABEL_7;
  }

  if ([v6 state] == &dword_8 + 2)
  {
    v3 = 48;
    goto LABEL_5;
  }

  v5 = [v6 state] == &dword_8 + 3;
  v4 = v6;
  if (v5)
  {
    v3 = 56;
    goto LABEL_6;
  }

LABEL_7:
}

void sub_42CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_42D0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_42D24(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (![a3 count])
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

void sub_432FC(uint64_t a1)
{
  v2 = objc_opt_new();
  v31 = a1;
  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(*(a1 + 32) + 216);
  v3 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v45;
    v29 = v42;
    v30 = v39;
    while (1)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v7);
        if (v8)
        {
          v10 = [*(*(&v44 + 1) + 8 * v7) name];
          v11 = [v8 isEqualToString:v10];

          if ((v11 & 1) == 0 && [v8 isEqualToString:@"BKLibraryDownloadStatusNotification"] && objc_msgSend(v2, "count"))
          {
            dispatch_group_enter(group);
            v12 = *(v31 + 32);
            v13 = [v2 copy];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v42[0] = sub_437EC;
            v42[1] = &unk_D5528;
            v43 = group;
            [v12 _processDownloadStatuses:v13 completion:v41];

            [v2 removeAllObjects];
          }
        }

        v14 = [v9 name];
        v15 = [v14 isEqualToString:@"BKLibraryDownloadStatusNotification"];

        if (v15)
        {
          v16 = v4;
          v17 = v6;
          v18 = v2;
          objc_opt_class();
          v19 = [v9 userInfo];
          v20 = [v19 objectForKeyedSubscript:@"BKLibraryDownloadStatusKey"];
          v21 = BUDynamicCast();

          if ([v21 count])
          {
            v22 = [v21 allObjects];
            v2 = v18;
            [v18 addObjectsFromArray:v22];
          }

          else
          {
            v2 = v18;
          }

          v6 = v17;
          v4 = v16;
        }

        else
        {
          v23 = [v9 name];
          v24 = [v23 isEqualToString:@"BKLibraryOwnershipDidChangeNotification"];

          if (!v24)
          {
            goto LABEL_19;
          }

          dispatch_group_enter(group);
          v25 = *(v31 + 32);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v39[0] = sub_437F4;
          v39[1] = &unk_D5528;
          v40 = group;
          [v25 _processLibraryOwnershipNotification:v9 completion:v38];
          v21 = v40;
        }

LABEL_19:
        v5 = [v9 name];

        v7 = v7 + 1;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v4)
      {
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
LABEL_23:

  [*(*(v31 + 32) + 216) removeAllObjects];
  if ([v5 isEqualToString:@"BKLibraryDownloadStatusNotification"] && objc_msgSend(v2, "count"))
  {
    dispatch_group_enter(group);
    v26 = *(v31 + 32);
    v27 = [v2 copy];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_437FC;
    v36[3] = &unk_D5528;
    v37 = group;
    [v26 _processDownloadStatuses:v27 completion:v36];
  }

  v28 = *(*(v31 + 32) + 144);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_43804;
  block[3] = &unk_D6858;
  v35 = *(v31 + 40);
  dispatch_group_notify(group, v28, block);
}

void sub_43804(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_43920(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_439D4;
  v7[3] = &unk_D5420;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  [v2 _updateAssetsWithBlock:v7];
  v5 = objc_retainBlock(*(a1 + 48));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
  }
}

id sub_439D4(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 assetID];
        if (v8)
        {
          v9 = [*(a1 + 40) statusForAssetID:v8];
          if ([v9 state] != &dword_8 && objc_msgSend(v7, "state") != &dword_8)
          {
            [*(a1 + 40) _addAssetID:v8];
          }

          [v9 updateWithStatus:v7];
          if ([v9 state] == &dword_8)
          {
            [*(*(a1 + 40) + 40) removeObjectForKey:v8];
            [*(*(a1 + 40) + 112) removeObject:v8];
            [*(*(a1 + 40) + 104) removeObject:v8];
            [*(a1 + 40) _removeAssetID:v8];
            [*(*(a1 + 40) + 48) removeObjectForKey:v8];
          }
        }

        else
        {
          v11 = v7;
          BCReportAssertionFailureWithMessage();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _updatedAssets];
}

void sub_43C68(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_43CF8;
  v5[3] = &unk_D5420;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _updateAssetsWithBlock:v5];
}

void sub_43CF8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"BKLibraryUpdateAssetsKey"];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [*(*(a1 + 40) + 48) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) _updateInfoForAssetID:*(*(&v25 + 1) + 8 * i)];
        [v9 removeObjectForKey:@"ContentUpdate"];
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * j);
        v15 = [*(a1 + 40) _updateInfoForAssetID:v14];
        [v15 setObject:&__kCFBooleanTrue forKey:@"ContentUpdate"];
        v16 = [*(*(a1 + 40) + 16) arrangedObjects];
        v17 = [v16 containsObject:v14];

        if ((v17 & 1) == 0)
        {
          v18 = [*(a1 + 40) statusForAssetID:v14];
          v19 = [BKLibraryDownloadStatus statusWithAssetID:v14 state:1 progressValue:-1 timeRemaining:0.0];
          [v18 updateWithStatus:v19];

          [*(a1 + 40) _addAssetID:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  [*(a1 + 40) _updatedAssets];
}

id sub_44030(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _removeAssetID:*(a1 + 40)];
  [*(a1 + 32) _updatedAssets];
  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 104) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);

  return [v3 removeObjectForKey:v2];
}

void sub_44558(uint64_t a1)
{
  v3 = [*(a1 + 32) statusForAssetID:*(a1 + 40)];
  if (![v3 state] || objc_msgSend(v3, "state") == &dword_0 + 1)
  {
    [*(a1 + 32) _removeTrackingOfAssetID:*(a1 + 40)];
  }

  if ((*(a1 + 56) != 2 || [v3 state] != &dword_4 + 1) && (objc_msgSend(v3, "state") == &dword_4 + 1 || objc_msgSend(v3, "state") == &dword_4))
  {
    v2 = [BKLibraryDownloadStatus statusWithAssetID:*(a1 + 40) state:0 progressValue:-1 timeRemaining:0.0];
    [v3 updateWithStatus:v2];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_44640(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_446DC;
  v3[3] = &unk_D5420;
  v3[4] = v2;
  v4 = *(a1 + 40);
  [v2 _updateAssetsWithBlock:v3];
  dispatch_group_leave(*(a1 + 48));
}

void sub_446DC(uint64_t a1)
{
  v3 = [*(a1 + 32) statusForAssetID:*(a1 + 40)];
  if (![v3 state])
  {
    v2 = [BKLibraryDownloadStatus statusWithAssetID:*(a1 + 40) state:4 progressValue:-1 timeRemaining:0.0];
    [v3 updateWithStatus:v2];
  }

  [*(a1 + 32) _addAssetID:*(a1 + 40)];
  [*(a1 + 32) _updatedAssets];
}

void sub_44778(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) arrangedObjects];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = [*(*(a1 + 32) + 8) arrangedObjects];
  v5 = [v4 containsObject:*(a1 + 40)];

  if ((v3 & 1) != 0 || v5)
  {
    v6 = [*(a1 + 32) statusForAssetID:*(a1 + 40)];
    if ([v6 state] == &dword_4 && *(a1 + 56) != 3)
    {
      v7 = *(a1 + 32);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_44938;
      v14[3] = &unk_D5420;
      v15 = v6;
      v16 = *(a1 + 40);
      [v7 _updateAssetsWithBlock:v14];
    }

    if (([v6 hasFinished] & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_449A4;
      v9[3] = &unk_D6A00;
      v12 = v5;
      v10 = v6;
      v11 = *(a1 + 40);
      v13 = v3;
      [v8 _updateAssetsWithBlock:v9];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_44938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [BKLibraryDownloadStatus statusWithAssetID:*(a1 + 40) state:5 progressValue:-1 timeRemaining:1.0];
  [v1 updateWithStatus:v2];
}

void sub_449A4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      return;
    }

    v2 = 1;
  }

  v3 = *(a1 + 32);
  v4 = [BKLibraryDownloadStatus statusWithAssetID:*(a1 + 40) state:v2 progressValue:-1 timeRemaining:0.0];
  [v3 updateWithStatus:v4];
}

void sub_44A30(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_44B18(uint64_t a1)
{
  v3 = [*(a1 + 32) statusForAssetID:*(a1 + 40)];
  v2 = [BKLibraryDownloadStatus statusWithAssetID:*(a1 + 40) state:7 progressValue:-1 timeRemaining:0.0];
  [v3 updateWithStatus:v2];

  [*(a1 + 32) _addAssetID:*(a1 + 40)];
  [*(a1 + 32) _updatedAssets];
}

void sub_44C94(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_44D24;
    v3[3] = &unk_D5420;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_44D24(uint64_t a1)
{
  v2 = [*(a1 + 32) statusForAssetID:*(a1 + 40)];
  [v2 updateWithWaitingToBeDownloadable:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_44E00;
  v7[3] = &unk_D6A50;
  v7[4] = v3;
  v8 = v4;
  v9 = v2;
  v6 = v2;
  [v5 waitForBookWithAssetID:v8 toBeDownloadableWithTimeout:v7 completion:120.0];
}

void sub_44E00(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_44F1C;
    block[3] = &unk_D5A40;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v4 = &v9;
    v9 = v3;
    v10 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_453D8;
    v6[3] = &unk_D5420;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v4 = &v7;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_44F1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_450EC;
  v12[3] = &unk_D5420;
  v12[4] = v2;
  v13 = *(a1 + 40);
  [v2 _updateAssetsWithBlock:v12];
  if (([*(a1 + 48) canStart] & 1) != 0 || objc_msgSend(*(a1 + 48), "canRestart"))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_45130;
    v9[3] = &unk_D5A40;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v3 = objc_retainBlock(v9);
    v4 = [*(*(a1 + 32) + 16) arrangedObjects];
    v5 = [v4 containsObject:*(a1 + 40)];

    if (v5)
    {
      (v3[2])(v3);
    }

    else
    {
      v6 = *(a1 + 32);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_453C8;
      v7[3] = &unk_D6A28;
      v8 = v3;
      [v6 checkForUpdates:v7];
    }
  }
}

id sub_450EC(uint64_t a1)
{
  [*(*(a1 + 32) + 104) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);

  return [v3 removeObject:v2];
}

void sub_45130(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_451D8;
  block[3] = &unk_D5A40;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_451D8(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_453B0;
  v10[3] = &unk_D5528;
  v2 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v2 _updateAssetsWithBlock:v10];
  v3 = [*(*(a1 + 32) + 16) arrangedObjects];
  if ([v3 containsObject:*(a1 + 48)])
  {
    if ([*(a1 + 40) canStart])
    {

LABEL_10:
      v6 = *(a1 + 32);
      v12 = *(a1 + 48);
      v7 = [NSArray arrayWithObjects:&v12 count:1];
      [v6 _startUpdateForAssetIDs:v7];

      goto LABEL_11;
    }

    v5 = [*(a1 + 40) canRestart];

    if (v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (([*(a1 + 40) canPause] & 1) == 0 && (objc_msgSend(*(a1 + 40), "canResume") & 1) == 0 && (objc_msgSend(*(a1 + 40), "canRestart") & 1) == 0)
  {
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_453BC;
    v8[3] = &unk_D5420;
    v8[4] = v4;
    v9 = *(a1 + 48);
    [v4 _updateAssetsWithBlock:v8];
  }

LABEL_11:
}

void sub_4548C(uint64_t a1)
{
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 setObject:&__kCFBooleanFalse forKeyedSubscript:*(*(&v13 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 64);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_45618;
  v11[3] = &unk_D6A78;
  v11[4] = v8;
  v12 = v2;
  v10 = v2;
  [v9 startUpdateForAssets:v10 completion:v11];
}

void sub_45618(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_456A8;
    v3[3] = &unk_D5420;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_456A8(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_45738;
  v5[3] = &unk_D5420;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _updateAssetsWithBlock:v5];
}

void sub_45738(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 40) statusForAssetID:{v7, v10}];
        v9 = [BKLibraryDownloadStatus statusWithAssetID:v7 state:7 progressValue:-1 timeRemaining:0.0];
        [v8 updateWithStatus:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_45924(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) pauseDownloadForAssetID:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_45AC0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) resumeDownloadForAssetID:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_45E24(uint64_t a1)
{
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(*(a1 + 32) + 40) copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 40) objectForKey:v8];
        if ([v9 state] == &dword_4 + 1)
        {
          [*(*(a1 + 32) + 40) removeObjectForKey:v8];
          [*(*(a1 + 32) + 48) removeObjectForKey:v8];
          [v2 addObject:v8];
          [*(*(a1 + 32) + 112) removeObject:v8];
          [*(*(a1 + 32) + 104) removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(a1 + 32) _removeAssetIDs:v2];
  }
}

void sub_46030(uint64_t a1)
{
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(*(a1 + 32) + 40) copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 40) objectForKey:v8];
        if ([v9 state] == &dword_8 + 3)
        {
          [*(*(a1 + 32) + 40) removeObjectForKey:v8];
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(a1 + 32) _removeAssetIDs:v2];
  }
}

void sub_46250(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_46310;
  v8[3] = &unk_D6AA0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = v6;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

uint64_t sub_46310(uint64_t a1)
{
  [*(a1 + 32) setCheckingForUpdates:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 40);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_464CC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = [*(*(a1 + 32) + 16) arrangedObjects];
  [v2 addObjectsFromArray:v3];

  v4 = [*(*(a1 + 32) + 8) arrangedObjects];
  [v2 addObjectsFromArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [*(*(a1 + 32) + 40) objectForKey:{v10, v14}];
        v12 = v11;
        if (v11)
        {
          if ([v11 state] == &dword_4 + 1)
          {
            v13 = 104;
          }

          else
          {
            if ([v12 state] != &dword_0 + 1)
            {
              goto LABEL_12;
            }

            v13 = 112;
          }

          [*(*(a1 + 32) + v13) addObject:v10];
        }

LABEL_12:
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

id sub_466E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_46758;
  v3[3] = &unk_D5528;
  v3[4] = v1;
  return [v1 _updateAssetsWithBlock:v3];
}

void sub_4691C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_469B0;
  v4[3] = &unk_D5420;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_469B0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) deletedObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _removeTrackingOfAssetID:*(*(&v10 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_46AFC;
  v9[3] = &unk_D5528;
  v9[4] = v7;
  return [v7 _updateAssetsWithBlock:v9];
}

id sub_46AFC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) rearrangeObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 rearrangeObjects];
}

uint64_t sub_46C18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v4 = [a2 assetID];
  v5 = [v3 objectForKey:v4];
  v6 = (*(v2 + 16))(v2, v5);

  return v6;
}

id sub_46E60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_46ED0;
  v3[3] = &unk_D5528;
  v3[4] = v1;
  return [v1 _updateAssetsWithBlock:v3];
}

id sub_46ED0(uint64_t a1)
{
  [*(*(a1 + 32) + 8) rearrangeObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 rearrangeObjects];
}

void sub_47774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_47790(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_477A8(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"%@==%@*cwdt", a2, *(a1 + 32)];
  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_47D70(uint64_t a1)
{
  if (*(a1 + 40) != *(*(a1 + 32) + 8))
  {
    v2 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      *buf = 138543362;
      v18 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Set enable cloud merge:%{public}@", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    *(*(a1 + 32) + 8) = v4;
    if (v4 == 1)
    {
      v5 = [BCManagedObjectIDMonitor alloc];
      v6 = [*(a1 + 32) libraryManager];
      v7 = [v6 persistentStoreCoordinator];
      v8 = +[BKLibraryManager predicateForExcludingContainerLibraryAssets];
      v16[0] = @"isFinished";
      v16[1] = @"notFinished";
      v16[2] = @"taste";
      v16[3] = @"tasteSyncedToStore";
      v16[4] = @"lastOpenDate";
      v16[5] = @"dateFinished";
      v16[6] = @"isTrackedAsRecent";
      v16[7] = @"lastEngagedDate";
      v9 = [NSArray arrayWithObjects:v16 count:8];
      v10 = [NSSet setWithArray:v9];
      v11 = [v5 initWithContext:0 coordinator:v7 entityName:@"BKLibraryAsset" predicate:v8 mapProperty:@"assetID" propertiesOfInterest:v10 observer:*(a1 + 32)];
      [*(a1 + 32) setLibraryAssetMonitor:v11];

      v12 = [*(a1 + 32) cloudAssetDetailManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_48058;
      v15[3] = &unk_D6B40;
      v15[4] = *(a1 + 32);
      [v12 currentAssetDetailCloudSyncVersions:v15];

      v13 = [*(a1 + 32) cloudReadingNowDetailManager];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_48218;
      v14[3] = &unk_D6B40;
      v14[4] = *(a1 + 32);
      [v13 currentReadingNowDetailCloudSyncVersions:v14];
    }
  }
}

void sub_48058(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_48118;
  v6[3] = &unk_D58E0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 performNamed:@"setEnableCloudMerge" workerQueueBlock:v6];
}

void sub_48118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v3];

  v6 = [*(a1 + 40) historyToken];
  if (!v6 || ![v5 localVersion])
  {

    goto LABEL_8;
  }

  v7 = [v5 localVersion];
  v8 = [v5 syncVersion];

  if (v7 != v8)
  {
LABEL_8:
    [*(a1 + 32) p_syncAllAssetDetailChangesToCloudInMOC:v3];
    goto LABEL_9;
  }

  v9 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_90084();
  }

LABEL_9:
  [*(a1 + 32) _checkForChangesFromCloudAssetDetailManagerInMOC:v3 reason:@"enableCloudMerge"];
}

void sub_48218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_482D8;
  v6[3] = &unk_D58E0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 performNamed:@"updateReadingNowDetails" workerQueueBlock:v6];
}

void sub_482D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCReadingNowDetail" inContext:v3];

  v6 = [*(a1 + 40) historyToken];
  if (v6 && [v5 localVersion])
  {
    v7 = [v5 localVersion];
    v8 = [v5 syncVersion];

    if (v7 == v8)
    {
      v9 = +[BULogUtilities shared];
      v10 = [v9 verboseLoggingEnabled];

      if (v10)
      {
        v11 = BKLibraryAssetDetailsDevelopmentLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "\\BCReadingNowDetail cloudSyncVersions in sync on enabling cloud merge\\"", v13, 2u);
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BCReadingNowDetail cloudSyncVersions out of date. SKIP AssetPopulation.Setting all records to cloud", buf, 2u);
  }

  [*(a1 + 32) p_syncAllReadingNowChangesToCloudInMOC:v3];
LABEL_12:
}

void sub_489CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = v8;
    v10 = *v49;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        if (([v12 avoidSync] & 1) == 0)
        {
          objc_opt_class();
          v17 = *(a1 + 32);
          v18 = [v12 annotationAssetID];
          v19 = [v17 objectForKeyedSubscript:v18];
          v13 = BUDynamicCast();

          v20 = BKLibraryAssetDetailsLog();
          v21 = v20;
          if (v13)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v12 annotationAssetID];
              v23 = [v12 annotationLocation];
              [v12 readingProgress];
              *buf = 138412802;
              v53 = v22;
              v54 = 2112;
              v55 = v23;
              v56 = 2048;
              v57 = v24;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "BCAssetDetail synchronizing #globalAnnotation for assetID:%@, location:%@, progress:%f", buf, 0x20u);
            }

            v25 = [v12 annotationLocation];
            [v13 setReadingPositionCFIString:v25];

            v26 = [v12 annotationVersion];
            [v13 setReadingPositionAnnotationVersion:v26];

            v27 = [v12 assetVersion];
            [v13 setReadingPositionAssetVersion:v27];

            [v12 readingProgress];
            [v13 setReadingProgress:?];
            [v12 readingProgressHighWaterMark];
            [v13 setReadingProgressHighWaterMark:?];
            v28 = [v12 plUserData];
            [v13 setReadingPositionUserData:v28];

            v29 = [v12 plLocationRangeStart];
            -[NSObject setReadingPositionLocationRangeStart:](v13, "setReadingPositionLocationRangeStart:", [v29 intValue]);

            v30 = [v12 plLocationRangeEnd];
            -[NSObject setReadingPositionLocationRangeEnd:](v13, "setReadingPositionLocationRangeEnd:", [v30 intValue]);

            v31 = [v12 plAbsolutePhysicalLocation];
            -[NSObject setReadingPositionAbsolutePhysicalLocation:](v13, "setReadingPositionAbsolutePhysicalLocation:", [v31 intValue]);

            v32 = [v12 plStorageUUID];
            [v13 setReadingPositionStorageUUID:v32];

            v33 = [v12 locationModificationDate];
            if (v33)
            {

              goto LABEL_18;
            }

            v38 = [v12 annotationLocation];
            if ([v38 length])
            {

              goto LABEL_24;
            }

            v39 = [v12 plUserData];
            v40 = [v39 length];

            if (v40)
            {
LABEL_24:
              v34 = [v12 annotationModificationDate];
            }

            else
            {
LABEL_18:
              v34 = [v12 locationModificationDate];
            }

            v21 = v34;
            [v13 setReadingPositionLocationUpdateDate:v34];
          }

          else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v35 = [v12 annotationAssetID];
            v36 = [v12 annotationLocation];
            [v12 readingProgress];
            *buf = 138412802;
            v53 = v35;
            v54 = 2112;
            v55 = v36;
            v56 = 2048;
            v57 = v37;
            _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "error getting mutable assetDetail for annotationID: %@, location:%@, progress:%f ", buf, 0x20u);
          }

          goto LABEL_27;
        }

        v13 = BKLibraryAssetDetailsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 annotationAssetID];
          v15 = [v12 annotationLocation];
          [v12 readingProgress];
          *buf = 138412802;
          v53 = v14;
          v54 = 2112;
          v55 = v15;
          v56 = 2048;
          v57 = v16;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Skipping synchronization of #globalAnnotation for assetID:%@, location:%@, progress:%f", buf, 0x20u);
        }

LABEL_27:
      }

      v9 = [v5 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (!v9)
      {
LABEL_29:
        v41 = [*(a1 + 40) cloudAssetDetailManager];
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_48F90;
        v45[3] = &unk_D6B90;
        v43 = *(a1 + 48);
        v42 = *(a1 + 56);
        v44 = *(a1 + 32);
        v45[4] = *(a1 + 40);
        v47 = v42;
        v46 = v43;
        [v41 setAssetDetails:v44 completion:v45];

        v6 = 0;
        goto LABEL_30;
      }
    }
  }

  v7 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_90120();
  }

LABEL_30:
}

void sub_48F90(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (!a2)
  {
    v12 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_901B8();
    }

    goto LABEL_12;
  }

  v8 = [*(a1 + 32) libraryManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_49198;
  v15[3] = &unk_D6B68;
  v9 = *(a1 + 48);
  v15[4] = *(a1 + 32);
  v15[5] = v9;
  [v8 performNamed:@"setSyncVersion" workerQueueBlock:v15];

  v10 = +[BULogUtilities shared];
  v11 = [v10 verboseLoggingEnabled];

  if (a3)
  {
    if (v11)
    {
      v12 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v17 = v13;
        v14 = "\\succesfully set assetDetails for assetIDs: [%@]\\"";
LABEL_11:
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if (v11)
  {
    v12 = BKLibraryAssetDetailsDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v17 = v13;
      v14 = "\\succesfully set assetDetails, but no changes for assetIDs: [%@]\\"";
      goto LABEL_11;
    }

LABEL_12:
  }
}

void sub_49198(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:2];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v3];

  [v5 setSyncVersion:*(a1 + 40)];
}

void sub_49228(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:2];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v3];

  [v5 setSyncVersion:*(a1 + 40)];
}

void sub_494C4(uint64_t a1)
{
  v2 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) valueForKey:@"assetID"];
    v4 = [v3 bu_prettyDescription];
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "p_syncReadingNowDetailsForAssets assets%@", buf, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    v5 = [*(a1 + 40) libraryManager];
    v6 = [v5 cloudSyncVersionsForDataType:@"BCReadingNowDetail" inContext:*(a1 + 48)];

    [v6 setLocalVersion:{objc_msgSend(v6, "localVersion") + 1}];
    v26 = v6;
    v25 = [v6 localVersion];
    v7 = +[NSMutableDictionary dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = a1;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [v13 hasImportantReadingNowDetails];
          v15 = BKLibraryAssetDetailsLog();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
          if (v14)
          {
            if (v16)
            {
              *buf = 138412290;
              v38 = v13;
              _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "*********** hasImportantReadingNowDetails for asset %@", buf, 0xCu);
            }

            v15 = [v13 readingNowDetailRepresentation];
            v17 = [v13 assetID];

            if (v17)
            {
              v18 = [v13 assetID];
              [v7 setObject:v15 forKey:v18];
            }
          }

          else if (v16)
          {
            *buf = 138412290;
            v38 = v13;
            _os_log_debug_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "*********** does not hasImportantReadingNowDetails for asset %@", buf, 0xCu);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v19 = BKLibraryAssetDetailsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_90280(v7);
      }
    }

    if ([v7 count])
    {
      v20 = [v7 allKeys];
      v21 = [*(v27 + 40) cloudReadingNowDetailManager];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_49910;
      v29[3] = &unk_D6B90;
      v22 = *(v27 + 40);
      v30 = v20;
      v31 = v25;
      v29[4] = v22;
      v23 = v20;
      [v21 setReadingNowDetails:v7 completion:v29];
    }

    else
    {
      v24 = [*(v27 + 40) libraryManager];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_49AD4;
      v28[3] = &unk_D6B68;
      v28[4] = *(v27 + 40);
      v28[5] = v25;
      [v24 performBlockOnWorkerQueue:v28];
    }
  }
}

void sub_49910(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [*(a1 + 32) libraryManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_49A44;
    v13[3] = &unk_D6B68;
    v9 = *(a1 + 48);
    v13[4] = *(a1 + 32);
    v13[5] = v9;
    [v8 performNamed:@"syncReadingNowDetailsForAssets" workerQueueBlock:v13];

    v10 = BKLibraryAssetDetailsLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (a3)
    {
      if (v11)
      {
        sub_90418(a1);
      }
    }

    else if (v11)
    {
      sub_9038C(a1);
    }
  }

  else
  {
    v12 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_90300();
    }
  }
}

void sub_49A44(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:3];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCReadingNowDetail" inContext:v3];

  [v5 setSyncVersion:*(a1 + 40)];
}

void sub_49AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:3];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCReadingNowDetail" inContext:v3];

  [v5 setSyncVersion:*(a1 + 40)];
}

void sub_49D40(uint64_t a1)
{
  v2 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_905F8(a1);
  }

  if ([*(a1 + 32) enableCloudMerge])
  {
    v3 = [*(a1 + 40) addedObjects];
    v4 = [v3 mutableCopy];

    if ([v4 count])
    {
      v5 = +[BULogUtilities shared];
      v6 = [v5 verboseLoggingEnabled];

      if (v6)
      {
        v7 = BKLibraryAssetDetailsDevelopmentLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v27 = [v4 count];
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\ManagedObjectBackgroundMonitor found %lu assets added\\"", buf, 0xCu);
        }
      }

      v8 = [*(a1 + 32) cloudAssetDetailManager];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_4A074;
      v24[3] = &unk_D6C08;
      v24[4] = *(a1 + 32);
      v9 = v4;
      v25 = v9;
      [v8 assetDetailsForAssetIDs:v9 completion:v24];

      v10 = _os_activity_create(&dword_0, "Books/added-ReadingNow", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4A4F8;
      block[3] = &unk_D5A40;
      v11 = *(a1 + 40);
      v12 = *(a1 + 32);
      v21 = v11;
      v22 = v12;
      v23 = v9;
      os_activity_apply(v10, block);
    }

    v13 = [*(a1 + 40) updatedObjects];
    if ([v13 count])
    {
      v14 = _os_activity_create(&dword_0, "Books/updated-ReadingNow", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_4AA28;
      v17[3] = &unk_D5420;
      v15 = v13;
      v16 = *(a1 + 32);
      v18 = v15;
      v19 = v16;
      os_activity_apply(v14, v17);
    }

    else
    {
      v14 = BKLibraryAssetDetailsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_90680();
      }
    }
  }
}

void sub_4A074(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_906B4();
    }
  }

  else
  {
    v11 = [*(a1 + 32) libraryManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_4A1A0;
    v15[3] = &unk_D6BE0;
    v12 = v7;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v8;
    [v11 performBlockOnWorkerQueue:v15];

    v10 = v16;
  }
}

void sub_4A1A0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:2];
  v30 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [*(a1 + 40) libraryManager];
        v10 = [v8 assetID];
        v11 = v3;
        v12 = [v9 libraryMutableAssetWithAssetID:v10 inManagedObjectContext:v3];

        [v12 configureFromAssetDetail:v8];
        if ([v12 needsGlobalAnnotation])
        {
          v13 = [v8 readingPositionCFIString];
          if ([v13 length])
          {
          }

          else
          {
            v14 = [v8 readingPositionUserData];
            v15 = [v14 length];

            if (!v15)
            {
              goto LABEL_11;
            }
          }

          [v30 addObject:v8];
        }

LABEL_11:
        v16 = *(a1 + 48);
        v17 = [v8 assetID];
        [v16 removeObjectIdenticalTo:v17];

        v3 = v11;
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  v18 = *(a1 + 40);
  v19 = [v18 annotationProvider];
  [v18 _updateGlobalAnnotationsFromDetails:v30 annotationProvider:v19];

  v20 = [*(a1 + 40) libraryManager];
  [v20 updateCloudVersionFromCloudSyncVersions:*(a1 + 56) inContext:v3];

  if ([*(a1 + 48) count])
  {
    v21 = +[NSMutableArray array];
    v22 = [*(a1 + 40) libraryManager];
    v23 = [v22 libraryAssetsWithAssetIDs:*(a1 + 48) inManagedObjectContext:v3];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v32 + 1) + 8 * j);
          if ([v29 hasImportantAssetDetails])
          {
            [v21 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v26);
    }

    if ([v21 count])
    {
      [*(a1 + 40) p_syncAssetDetailsForAssets:v21 inMOC:v3];
    }
  }
}

void sub_4A4F8(id *a1)
{
  v2 = [a1[4] addedObjects];
  v3 = [v2 mutableCopy];

  v4 = [a1[5] cloudReadingNowDetailManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4A5DC;
  v8[3] = &unk_D6C30;
  v5 = a1[6];
  v6 = a1[5];
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  [v4 readingNowDetailsForAssetIDs:v7 completion:v8];
}

void sub_4A5DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_90748();
  }

  if (v9)
  {
    v11 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_907CC();
    }
  }

  else
  {
    v12 = [*(a1 + 40) libraryManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4A738;
    v16[3] = &unk_D6BE0;
    v13 = v7;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v8;
    [v12 performBlockOnWorkerQueue:v16];

    v11 = v17;
  }
}

void sub_4A738(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:2];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [*(a1 + 40) libraryManager];
        v11 = [v9 assetID];
        v12 = [v10 libraryMutableAssetWithAssetID:v11 inManagedObjectContext:v3];

        [v12 configureFromReadingNowDetail:v9];
        v13 = *(a1 + 48);
        v14 = [v9 assetID];
        [v13 removeObjectIdenticalTo:v14];
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  v15 = [*(a1 + 40) libraryManager];
  [v15 updateCloudVersionFromCloudSyncVersions:*(a1 + 56) inContext:v3];

  if ([*(a1 + 48) count])
  {
    v16 = +[NSMutableArray array];
    v17 = [*(a1 + 40) libraryManager];
    v18 = [v17 libraryAssetsWithAssetIDs:*(a1 + 48) inManagedObjectContext:v3];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          if ([v24 hasImportantReadingNowDetails])
          {
            [v16 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }

    v25 = [v16 count];
    v26 = BKLibraryAssetDetailsLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
    if (v25)
    {
      if (v27)
      {
        sub_90864();
      }

      [*(a1 + 40) p_syncReadingNowDetailsForAssets:v16 inMOC:v3];
    }

    else
    {
      if (v27)
      {
        sub_90898();
      }
    }
  }
}

void sub_4AA28(uint64_t a1)
{
  v2 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_908CC(a1);
  }

  v3 = [*(a1 + 40) libraryManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4AB04;
  v6[3] = &unk_D58E0;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v3 performBlockOnWorkerQueue:v6];
}

void sub_4AB04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 libraryAssetsWithAssetIDs:*(a1 + 40) inManagedObjectContext:v3];

  [*(a1 + 32) p_syncAssetDetailsForAssets:v5 inMOC:v3];
  v6 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_90950();
  }

  [*(a1 + 32) p_syncReadingNowDetailsForAssets:v5 inMOC:v3];
}

void sub_4AC34(uint64_t a1)
{
  if ([*(a1 + 32) processingAssetDetailChanges])
  {
    v2 = +[BULogUtilities shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v4 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "\\#assetDetailChanged BCCloudAssetDetailManagerChanged notification received, deferring processing\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedAssetDetailChangesNotification:1];
  }

  else
  {
    [*(a1 + 32) setProcessingAssetDetailChanges:1];
    v5 = +[BULogUtilities shared];
    v6 = [v5 verboseLoggingEnabled];

    if (v6)
    {
      v7 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#assetDetailChanged BCCloudAssetDetailManagerChanged notification received, starting processing\\"", buf, 2u);
      }
    }

    v8 = [*(a1 + 32) libraryManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4ADC4;
    v9[3] = &unk_D56B8;
    v9[4] = *(a1 + 32);
    [v8 performBackgroundReadOnlyBlock:v9];
  }
}

void sub_4AED0(uint64_t a1)
{
  v2 = [*(a1 + 32) receivedAssetDetailChangesNotification];
  v3 = +[BULogUtilities shared];
  v4 = [v3 verboseLoggingEnabled];

  if (v2)
  {
    if (v4)
    {
      v5 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "\\#assetDetailChanged completed fetchAgain, processing deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedAssetDetailChangesNotification:0];
    v6 = [*(a1 + 32) libraryManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4B044;
    v8[3] = &unk_D56B8;
    v8[4] = *(a1 + 32);
    [v6 performBackgroundReadOnlyBlock:v8];
  }

  else
  {
    if (v4)
    {
      v7 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#assetDetailChanged completed fetchAgain, NO deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setProcessingAssetDetailChanges:0];
  }
}

void sub_4B1E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v93 = a4;
  v94 = v7;
  if (!v7)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v97 objects:v113 count:16];
    if (!v9)
    {
      goto LABEL_56;
    }

    v10 = v9;
    v11 = *v98;
    obj = v6;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v98 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v97 + 1) + 8 * i);
        v14 = [v13 annotationAssetID];
        v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [(__CFString *)v15 readingPositionLocationUpdateDate];
          [v17 timeIntervalSinceReferenceDate];
          v19 = v18;
          v20 = [v13 locationModificationDate];
          [v20 timeIntervalSinceReferenceDate];
          v22 = v21;

          if (v19 > v22)
          {
            v23 = BKMobileCloudSyncAnnotationsLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v13 annotationLocation];
              v25 = COERCE_DOUBLE([v24 length]);
              v26 = [v13 plUserData];
              v27 = COERCE_DOUBLE([v26 length]);
              *buf = 138413058;
              v104 = v14;
              v105 = 2048;
              v106 = v16;
              v107 = 2048;
              v108 = v25;
              v109 = 2048;
              v110 = v27;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "About to CloudKit merge into annotation with assetID:%@ from assetDetail:%p annotation.annotationLocation.length=%lu annotation.plUserData.length=%lu", buf, 0x2Au);
            }

            [v13 readingProgress];
            v29 = v28;
            [(__CFString *)v16 readingProgress];
            v31 = v30;
            [v13 readingProgress];
            v33 = v32;
            if (v31 != v32)
            {
              [(__CFString *)v16 readingProgress];
              [v13 setReadingProgress:?];
            }

            [(__CFString *)v16 readingProgressHighWaterMark];
            v35 = v34;
            [v13 readingProgressHighWaterMark];
            v37 = v36;
            [(__CFString *)v16 readingProgressHighWaterMark];
            v39 = *&v38;
            if (v35 > v37)
            {
              [v13 setReadingProgressHighWaterMark:v38];
              goto LABEL_27;
            }

            [v13 readingProgressHighWaterMark];
            if (v39 < v42)
            {
              v43 = BKLibraryAssetDetailsLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                v44 = [(__CFString *)v16 assetID];
                [v13 readingProgressHighWaterMark];
                v46 = v45;
                [(__CFString *)v16 readingProgressHighWaterMark];
                *buf = 138413058;
                v104 = v44;
                v105 = 2048;
                v106 = v16;
                v107 = 2048;
                v108 = v46;
                v109 = 2048;
                v110 = v47;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "BCMutableAssetDetail assetID:%@ assetDetail:%p attempt to move annotations readingProgressHighWaterMark backwards from %f to %f", buf, 0x2Au);
              }
            }

            if (v31 != v33)
            {
LABEL_27:
              v48 = BKMobileCloudSyncAnnotationsLog();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = [(__CFString *)v16 assetID];
                [v13 readingProgress];
                v51 = v50;
                [v13 readingProgressHighWaterMark];
                *buf = 138413314;
                v104 = v49;
                v105 = 2048;
                v106 = v16;
                v107 = 2048;
                v108 = v29;
                v109 = 2048;
                v110 = v51;
                v111 = 2048;
                v112 = v52;
                _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Adopting reading progress for assetID:%@ assetDetail:%p synced from cloud. annotation.readingProgress:%f readingProgress: %f highWaterMark: %f", buf, 0x34u);
              }
            }

            v53 = [(__CFString *)v16 readingPositionCFIString];
            [v13 setDifferentString:v53 forKey:@"annotationLocation"];

            v54 = [(__CFString *)v16 readingPositionAnnotationVersion];
            [v13 setDifferentString:v54 forKey:@"annotationVersion"];

            v55 = [(__CFString *)v16 readingPositionAssetVersion];
            [v13 setDifferentString:v55 forKey:@"assetVersion"];

            v56 = [(__CFString *)v16 readingPositionUserData];
            [v13 setDifferentValue:v56 forKey:@"plUserData" klass:objc_opt_class()];

            if ([(__CFString *)v16 readingPositionLocationRangeStart])
            {
              v57 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionLocationRangeStart]];
              v58 = [v13 plLocationRangeStart];
              v59 = [v57 isEqual:v58];

              if ((v59 & 1) == 0)
              {
                v60 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionLocationRangeStart]];
                [v13 setPlLocationRangeStart:v60];
              }
            }

            if ([(__CFString *)v16 readingPositionLocationRangeEnd])
            {
              v61 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionLocationRangeEnd]];
              v62 = [v13 plAbsolutePhysicalLocation];
              v63 = [v61 isEqual:v62];

              if ((v63 & 1) == 0)
              {
                v64 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionLocationRangeEnd]];
                [v13 setPlLocationRangeEnd:v64];
              }
            }

            if ([(__CFString *)v16 readingPositionAbsolutePhysicalLocation])
            {
              v65 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionAbsolutePhysicalLocation]];
              v66 = [v13 plAbsolutePhysicalLocation];
              v67 = [v65 isEqual:v66];

              if ((v67 & 1) == 0)
              {
                v68 = [NSNumber numberWithInt:[(__CFString *)v16 readingPositionAbsolutePhysicalLocation]];
                [v13 setPlAbsolutePhysicalLocation:v68];
              }
            }

            v69 = [(__CFString *)v16 readingPositionStorageUUID];
            [v13 setDifferentString:v69 forKey:@"plStorageUUID"];

            v70 = [(__CFString *)v16 readingPositionLocationUpdateDate];
            [v13 setDifferentDate:v70 forKey:@"locationModificationDate"];

            v71 = BKLibraryAssetDetailsLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = [v13 annotationLocation];
              v73 = COERCE_DOUBLE([v72 length]);
              v74 = [v13 plUserData];
              v75 = COERCE_DOUBLE([v74 length]);
              *buf = 138413058;
              v104 = v14;
              v105 = 2048;
              v106 = v16;
              v107 = 2048;
              v108 = v73;
              v109 = 2048;
              v110 = v75;
              _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "After CloudKit merge into annotation with assetID:%@ assetDetail:%p annotation.annotationLocation.length=%lu annotation.plUserData.length=%lu", buf, 0x2Au);

              goto LABEL_47;
            }

            goto LABEL_48;
          }

          v41 = [v13 locationModificationDate];
          if (v41)
          {

            goto LABEL_42;
          }

          v76 = [(__CFString *)v16 readingPositionLocationUpdateDate];

          if (v76)
          {
LABEL_42:
            v77 = [(__CFString *)v16 readingPositionLocationUpdateDate];
            [v77 timeIntervalSinceReferenceDate];
            v79 = v78;
            v80 = [v13 locationModificationDate];
            [v80 timeIntervalSinceReferenceDate];
            v82 = v81;

            v71 = BKMobileCloudSyncAnnotationsLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              v72 = [v13 locationModificationDate];
              if (v79 == v82)
              {
                v83 = @"same-dated";
              }

              else
              {
                v83 = @"older";
              }

              [(__CFString *)v16 readingPositionLocationUpdateDate];
              v84 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138543874;
              v104 = v72;
              v105 = 2114;
              v106 = v83;
              v107 = 2114;
              v108 = v84;
              _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "Ignoring request to update global annotation dated %{public}@ to %{public}@ asset detail reading location from %{public}@", buf, 0x20u);

LABEL_47:
            }

LABEL_48:
          }

          v85 = [v13 hasChanges];
          v40 = BKMobileCloudSyncAnnotationsLog();
          v86 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (v85)
          {
            if (v86)
            {
              v87 = [(__CFString *)v16 assetID];
              [(__CFString *)v16 readingPositionCFIString];
              v88 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              [v13 location];
              v89 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138413058;
              v104 = v87;
              v105 = 2048;
              v106 = v16;
              v107 = 2112;
              v108 = v88;
              v109 = 2112;
              v110 = v89;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Adopting reading position for assetID:%@ assetDetail:%p synced from cloud: cfi: %@,  annotationLocation: %@", buf, 0x2Au);
            }
          }

          else if (v86)
          {
            v90 = [(__CFString *)v16 assetID];
            *buf = 138412546;
            v104 = v90;
            v105 = 2048;
            v106 = v16;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "No changes for reading position for assetID:%@ assetDetail:%p  synced from cloud", buf, 0x16u);
          }

          goto LABEL_54;
        }

        v40 = BKMobileCloudSyncAnnotationsLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_90A14(v101, v13, &v102, v40);
        }

LABEL_54:
      }

      v6 = obj;
      v10 = [obj countByEnumeratingWithState:&v97 objects:v113 count:16];
      if (!v10)
      {
        goto LABEL_56;
      }
    }
  }

  v8 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_90984();
  }

LABEL_56:
  v91 = objc_retainBlock(v93);
  v92 = v91;
  if (v91)
  {
    (*(v91 + 2))(v91);
  }
}

void sub_4BDE0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, char a6)
{
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_90A8C();
    }
  }

  else
  {
    v14 = [*(a1 + 32) enableCloudMergeQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_4BF30;
    v16[3] = &unk_D6CA8;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v15;
    v18 = v10;
    v19 = v11;
    v20 = *(a1 + 48);
    v21 = a6;
    dispatch_async(v14, v16);
  }
}

void sub_4BF30(uint64_t a1)
{
  if ([*(a1 + 32) enableCloudMerge])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_4C09C;
    v9[3] = &unk_D6C80;
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    *&v5 = *(a1 + 40);
    *(&v5 + 1) = *(a1 + 32);
    *&v6 = v3;
    *(&v6 + 1) = v4;
    v10 = v6;
    v11 = v5;
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    [v2 performNamed:@"checkForChangesFromCloudAssetDetailManager" workerQueueBlockAndWait:v9];
  }

  else
  {
    v7 = [*(a1 + 32) getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4C300;
    block[3] = &unk_D5528;
    block[4] = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void sub_4C09C(uint64_t a1, void *a2)
{
  v20 = a2;
  [v20 setSessionContextType:2];
  v3 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 40);
    *buf = 134218242;
    v27 = v4;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "getAssetDetailChangesSince #assetDetailChanged updated %lu records currentSyncVersions:%@", buf, 0x16u);
  }

  v19 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v18 = v6;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 assetID];
        v13 = [*(a1 + 48) libraryMutableAssetWithAssetID:v12 inManagedObjectContext:v20];
        [v13 configureFromAssetDetail:v11];
        if ([v13 needsGlobalAnnotation])
        {
          v14 = v9;
          v15 = [v11 readingPositionCFIString];
          if ([v15 length])
          {

            v9 = v14;
          }

          else
          {
            v16 = [v11 readingPositionUserData];
            v17 = [v16 length];

            v6 = v18;
            v9 = v14;
            if (!v17)
            {
              goto LABEL_13;
            }
          }

          [v19 addObject:v11];
        }

LABEL_13:
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [*(a1 + 56) _updateGlobalAnnotationsFromDetails:v19 annotationProvider:*(a1 + 64)];
  [*(a1 + 56) _updateAssetDetailCloudVersionFromCloudSyncVersions:*(a1 + 40) inMOC:v20 fetchAgain:*(a1 + 72)];
}

void sub_4C3AC(uint64_t a1)
{
  v2 = [*(a1 + 32) getChangesQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4C43C;
  block[3] = &unk_D5528;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_4C43C(uint64_t a1)
{
  if ([*(a1 + 32) processingReadingNowChanges])
  {
    v2 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_90B28();
    }

    [*(a1 + 32) setReceivedReadingNowChangesNotification:1];
  }

  else
  {
    [*(a1 + 32) setProcessingReadingNowChanges:1];
    v3 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_90AF4();
    }

    v4 = [*(a1 + 32) libraryManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_4C544;
    v5[3] = &unk_D56B8;
    v5[4] = *(a1 + 32);
    [v4 performBackgroundReadOnlyBlock:v5];
  }
}

void sub_4C644(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3 = [v2 cloudSyncVersionsForDataType:@"BCReadingNowDetail" inContext:*(a1 + 40)];
  v4 = [v3 mutableCopy];

  v5 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Books/BKLibrary-checkForReadingNowChange _checkForChangesFromCloudReadingNowDetailManagerInMOC cloudSyncVersions:%{public}@, reason:%{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) cloudReadingNowDetailManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4C7BC;
  v9[3] = &unk_D6D20;
  v9[4] = *(a1 + 32);
  v10 = v2;
  v8 = v2;
  [v7 getReadingNowDetailChangesSince:v4 completion:v9];
}

void sub_4C7BC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v14)
  {
    v15 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_90B5C();
    }
  }

  else
  {
    v16 = [*(a1 + 32) enableCloudMergeQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4C914;
    v20[3] = &unk_D6CA8;
    v21 = v11;
    v17 = v12;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v13;
    v26 = a6;
    dispatch_async(v16, v20);

    v15 = v21;
  }
}

void sub_4C914(uint64_t a1)
{
  v2 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_90BC4(a1);
  }

  if ([*(a1 + 48) enableCloudMerge])
  {
    v3 = *(a1 + 56);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4CA84;
    v8[3] = &unk_D6CF8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    v4 = *(a1 + 64);
    v13 = *(a1 + 72);
    v5 = *(a1 + 48);
    v11 = v4;
    v12 = v5;
    [v3 performNamed:@"checkForChangesFromCloudReadingNowDetailManager" workerQueueBlockAndWait:v8];
  }

  else
  {
    v6 = [*(a1 + 48) getChangesQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_4CDCC;
    v7[3] = &unk_D5528;
    v7[4] = *(a1 + 48);
    dispatch_async(v6, v7);
  }
}

void sub_4CA84(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:3];
  v4 = [*(a1 + 32) allObjects];
  v5 = [v4 valueForKey:@"assetID"];

  v6 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_90C70(v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 assetID];
        v14 = [*(a1 + 40) libraryMutableAssetWithAssetID:v13 inManagedObjectContext:v3];
        [v14 configureFromReadingNowDetail:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) updateCloudVersionFromCloudSyncVersions:*(a1 + 48) inContext:v3];
  v15 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    [v15 _checkForChangesFromCloudReadingNowDetailManagerInMOC:v3 reason:@"fetchAgain"];
  }

  else
  {
    v16 = [v15 getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4CCB8;
    block[3] = &unk_D5528;
    block[4] = *(a1 + 56);
    dispatch_async(v16, block);
  }
}

void sub_4CCB8(uint64_t a1)
{
  v2 = [*(a1 + 32) receivedReadingNowChangesNotification];
  v3 = BKLibraryAssetDetailsLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      sub_90D30();
    }

    [*(a1 + 32) setReceivedReadingNowChangesNotification:0];
    v5 = [*(a1 + 32) libraryManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4CDB8;
    v6[3] = &unk_D56B8;
    v6[4] = *(a1 + 32);
    [v5 performBackgroundReadOnlyBlock:v6];
  }

  else
  {
    if (v4)
    {
      sub_90CFC();
    }

    [*(a1 + 32) setProcessingReadingNowChanges:0];
  }
}

void sub_4CEB0(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 libraryManager];
  v6 = [v5 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v4];

  [v6 setLocalVersion:{objc_msgSend(v6, "localVersion") + 1}];
  v7 = [v6 localVersion];
  v8 = [a1[5] bu_dictionaryUsingPropertyAsKey:@"assetID"];
  v9 = [v8 allKeys];
  v10 = [a1[4] cloudAssetDetailManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4D01C;
  v15[3] = &unk_D6D98;
  v11 = a1[4];
  v16 = v8;
  v17 = v11;
  v20 = v7;
  v12 = a1[6];
  v18 = v9;
  v19 = v12;
  v13 = v9;
  v14 = v8;
  [v10 assetDetailsForAssetIDs:v13 completion:v15];
}

void sub_4D01C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = BKLibraryAssetDetailsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_90D64();
    }

    v9 = objc_retainBlock(*(a1 + 56));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = v6;
    obj = v6;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [v15 assetID];
          v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
          v18 = BKLibraryAssetDetailsLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v17 readingPositionCFIString];
            [v17 readingProgress];
            *buf = 138412802;
            v41 = v16;
            v42 = 2112;
            v43 = v19;
            v44 = 2048;
            v45 = v20;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "BCAssetDetail updateAssetDetails #globalAnnotation for assetID:%@, location:%@, progress:%f", buf, 0x20u);
          }

          [v17 readingProgress];
          [v15 setReadingProgress:?];
          [v17 readingProgressHighWaterMark];
          [v15 setReadingProgressHighWaterMark:?];
          v21 = [v17 readingPositionCFIString];
          [v15 setReadingPositionCFIString:v21];

          v22 = [v17 readingPositionAnnotationVersion];
          [v15 setReadingPositionAnnotationVersion:v22];

          v23 = [v17 readingPositionAssetVersion];
          [v15 setReadingPositionAssetVersion:v23];

          v24 = [v17 readingPositionUserData];
          [v15 setReadingPositionUserData:v24];

          [v15 setReadingPositionLocationRangeStart:{objc_msgSend(v17, "readingPositionLocationRangeStart")}];
          [v15 setReadingPositionLocationRangeEnd:{objc_msgSend(v17, "readingPositionLocationRangeEnd")}];
          [v15 setReadingPositionAbsolutePhysicalLocation:{objc_msgSend(v17, "readingPositionAbsolutePhysicalLocation")}];
          v25 = [v17 readingPositionStorageUUID];
          [v15 setReadingPositionStorageUUID:v25];

          v26 = [v17 readingPositionUserUpdatedDate];
          [v15 setReadingPositionLocationUpdateDate:v26];

          [v10 setObject:v15 forKeyedSubscript:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v12);
    }

    v27 = [*(a1 + 40) cloudAssetDetailManager];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_4D438;
    v32[3] = &unk_D6D70;
    v29 = *(a1 + 56);
    v28 = *(a1 + 64);
    v32[4] = *(a1 + 40);
    v35 = v28;
    v34 = v29;
    v33 = *(a1 + 48);
    [v27 setAssetDetails:v10 completion:v32];

    v7 = 0;
    v6 = v30;
  }
}

void sub_4D438(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [*(a1 + 32) libraryManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_4D67C;
    v19[3] = &unk_D6D48;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v19[4] = *(a1 + 32);
    v21 = v9;
    v20 = v10;
    [v8 performBlockOnWorkerQueue:v19];

    v11 = +[BULogUtilities shared];
    v12 = [v11 verboseLoggingEnabled];

    if (a3)
    {
      if (v12)
      {
        v13 = BKLibraryAssetDetailsDevelopmentLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 40) componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v23 = v14;
          v15 = "\\succesfully set assetDetails for assetIDs: [%@]\\"";
LABEL_14:
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);

          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if (v12)
    {
      v13 = BKLibraryAssetDetailsDevelopmentLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 40) componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v23 = v14;
        v15 = "\\succesfully set assetDetails, but no changes for assetIDs: [%@]\\"";
        goto LABEL_14;
      }

LABEL_15:
    }

    goto LABEL_17;
  }

  v16 = BKLibraryAssetDetailsLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_901B8();
  }

  v17 = objc_retainBlock(*(a1 + 48));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }

LABEL_17:
}

void sub_4D67C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:2];
  v4 = [*(a1 + 32) libraryManager];
  v7 = [v4 cloudSyncVersionsForDataType:@"BCAssetDetail" inContext:v3];

  [v7 setSyncVersion:*(a1 + 48)];
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
  }
}

void sub_4D808(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) libraryManager];
  v18 = v3;
  v6 = [v5 libraryAssetsWithAssetIDs:*(a1 + 40) inManagedObjectContext:v3];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 assetID];

        if (v13)
        {
          if ([v12 isManagedBook])
          {
            v14 = &__kCFBooleanTrue;
          }

          else
          {
            v14 = &__kCFBooleanFalse;
          }

          v15 = [v12 assetID];
          [v4 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = objc_retainBlock(*(a1 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v4);
  }
}

void sub_4DBCC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_4DBEC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t sub_4DDD0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return _objc_release_x1();
}

void sub_4E09C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v20 = v4;
  v6 = [NSPredicate predicateWithFormat:@"storeID IN %@", v4];
  [v5 setPredicate:v6];

  [v5 setFetchBatchSize:32];
  v28 = 0;
  v21 = v3;
  v7 = [v3 executeFetchRequest:v5 error:&v28];
  v19 = v28;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 storeID];
        v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
        if (v15)
        {
          v16 = *(a1 + 40);
          v17 = *(v16 + 16);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_4E33C;
          block[3] = &unk_D5420;
          block[4] = v16;
          v23 = v14;
          dispatch_sync(v17, block);
          v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v15 isExplicit]);
          [v13 setDifferentNumber:v18 forKey:@"isExplicit"];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }
}

void sub_4E33C(uint64_t a1)
{
  v2 = [*(a1 + 32) qDownloadingStoreIDs];
  [v2 removeObject:*(a1 + 40)];
}

void sub_4E440(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _libraryAssetsForPostProcessingInManagedObjectContext:a2];
  v4 = [v3 valueForKey:@"storeID"];
  v5 = [v4 allObjects];
  v6 = [NSMutableSet setWithArray:v5];

  if ([v6 count])
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4E5E8;
    block[3] = &unk_D5420;
    v8 = v6;
    v9 = *(a1 + 32);
    v14 = v8;
    v15 = v9;
    dispatch_sync(v7, block);
    if ([v8 count])
    {
      v10 = +[AEUserPublishing sharedInstance];
      v11 = [v8 allObjects];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4E664;
      v12[3] = &unk_D6DF0;
      v12[4] = *(a1 + 32);
      [v10 productProfilesForStoreIDs:v11 completion:v12];
    }
  }
}

void sub_4E5E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) qDownloadingStoreIDs];
  [v2 minusSet:v3];

  v4 = [*(a1 + 40) qDownloadingStoreIDs];
  [v4 unionSet:*(a1 + 32)];
}

void sub_4E664(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) _postProcessExplicitFlagForProductProfiles:v3];
    [*(a1 + 32) _postProcessCoverImagesForProductProfiles:v3];
  }

  else if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4E718;
    block[3] = &unk_D5528;
    block[4] = v4;
    dispatch_sync(v5, block);
  }
}

void sub_4E718(uint64_t a1)
{
  v1 = [*(a1 + 32) qDownloadingStoreIDs];
  [v1 removeAllObjects];
}

void sub_507C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_507D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_507F0(uint64_t a1, void *a2)
{
  v3 = [a2 purchasedDSID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_50CB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collectionProvider];
  v6 = [v5 collectionsWithCollectionIDs:*(a1 + 40) inManagedObjectContext:v4 error:0];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_50DB8;
  v8[3] = &unk_D6EA0;
  v9 = *(a1 + 40);
  v7 = [v6 sortedArrayUsingComparator:v8];
  if ([BKUserSortOrderManager resortAscendingSortKeyedObjects:v7])
  {
    [*(a1 + 32) resetNextCollectionSort];
    [*(a1 + 32) saveMetaData];
  }
}

uint64_t sub_50DB8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 collectionID];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 collectionID];

  v11 = [v9 indexOfObject:v10];
  if (v8 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v8 > v11)
  {
    return 1;
  }

  else
  {
    return v12;
  }
}

void sub_52C40(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = *v36;
  do
  {
    v7 = 0;
    do
    {
      if (*v36 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v35 + 1) + 8 * v7);
      if ([v8 isValid])
      {
        v9 = [v8 assetID];
        v10 = [v2 libraryMutableAssetWithAssetID:v9 inManagedObjectContext:*(a1 + 32)];

        v11 = [v8 storeID];

        if (v11)
        {
          v12 = [v8 storeID];
          goto LABEL_9;
        }

        if ([v8 isHidden] && (objc_msgSend(v8, "assetID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "length"), v15, v16))
        {
          v12 = [v8 assetID];
LABEL_9:
          v13 = v12;
          [v30 addObject:v12];

          v14 = *(a1 + 56);
LABEL_10:
          [v10 setIsHidden:v14 & 1];
        }

        else if (*(a1 + 56))
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      v7 = v7 + 1;
    }

    while (v5 != v7);
    v17 = [v3 countByEnumeratingWithState:&v35 objects:v41 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_20:

  v18 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    [BKJaliscoStatus addHidden:v30 inMOC:v18, v2];
  }

  else
  {
    [BKJaliscoStatus addLocal:v30 inMOC:v18, v2];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [*(a1 + 40) reverseObjectEnumerator];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * i);
        if ([v24 isValid])
        {
          v25 = [BKUserSortOrderManager nextSortKeyForCollection:*(a1 + 48)];
          v26 = [BKCollectionMember collectionMemberDictionaryWithLibraryAsset:v24 sortKey:v25];

          if (v26)
          {
            v27 = *(a1 + 48);
            v39 = v26;
            v28 = [NSArray arrayWithObjects:&v39 count:1];
            [v27 addCollectionMemberDictionaries:v28 forceToTop:*(a1 + 57)];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v21);
  }

  [*(a1 + 48) updateLastModification];
  if ([*(a1 + 32) hasChanges])
  {
    [*(a1 + 32) save:0];
  }
}

void sub_53100(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.iBooks.BKCollectionSortKey", v3);
  v2 = qword_EFCC0;
  qword_EFCC0 = v1;
}

void sub_53268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_53280(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_53298(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    if ([v2[1] integerValue])
    {
      goto LABEL_16;
    }

    v2 = *(a1 + 32);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 members];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) sortKey];
        v10 = [v9 integerValue];

        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [NSNumber numberWithUnsignedLongLong:v6];
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  *(v12 + 8) = v11;

LABEL_16:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
}

void sub_534A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void sub_53570(uint64_t a1)
{
  v2 = [*(a1 + 32) sortKey];
  v3 = [v2 longLongValue];
  v4 = [*(*(a1 + 40) + 8) longLongValue];

  if (v3 > v4)
  {
    v5 = [*(a1 + 32) sortKey];
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    _objc_release_x1();
  }
}

void sub_55E08(id a1)
{
  v3[0] = &off_DE090;
  v3[1] = &off_DE0A8;
  v4[0] = kBKCollectionDefaultIDBooks;
  v4[1] = kBKCollectionDefaultIDBooks;
  v3[2] = &off_DE0C0;
  v3[3] = &off_DE0D8;
  v4[2] = kBKCollectionDefaultIDBooks;
  v4[3] = kBKCollectionDefaultIDPDFs;
  v3[4] = &off_DE0F0;
  v4[4] = kBKCollectionDefaultIDAudiobooks;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_EFCD8;
  qword_EFCD8 = v1;
}

void sub_56998(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_56A4C;
  v4[3] = &unk_D6F68;
  v4[4] = v3;
  v5 = v2;
  v6 = *(a1 + 48);
  [v3 annotationsForAssetIDs:v5 completion:v4];
}

void sub_56A4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  v11 = [v5 newManagedObjectContext];

  v6 = [NSString stringWithFormat:@"NewMOC 7 %s %@", "[BKLibraryAssetModificationDateManager resetModificationDateForAssetIDs:completion:]_block_invoke_2", *(a1 + 40)];
  [v11 setName:v6];

  v7 = [*(a1 + 32) libraryAssetForAssetIDs:*(a1 + 40) inManagedObjectContext:v11];
  v8 = [*(a1 + 32) updatesFromLibraryAssets:v7 annotations:v4];

  [*(a1 + 32) consumeUpdates:v8 inManagedObjectContext:v11];
  v9 = objc_retainBlock(*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_56EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_56EC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_56EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"AEAnnotation"];
  [v4 setResultType:2];
  v21[0] = @"annotationAssetID";
  v5 = +[AEAnnotation maxUserModificationDateExpressionDescription];
  v21[1] = v5;
  v6 = [NSArray arrayWithObjects:v21 count:2];
  [v4 setPropertiesToFetch:v6];

  v20 = @"annotationAssetID";
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  [v4 setPropertiesToGroupBy:v7];

  v8 = [AEAnnotation predicateForAnnotationsWithAssetIDInList:*(a1 + 32) includingDeleted:1];
  v9 = +[AEAnnotation predicateForAnnotationsIncludingDeletedWithUserModificationDate];
  v19[0] = v8;
  v19[1] = v9;
  v10 = [NSArray arrayWithObjects:v19 count:2];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  [v4 setPredicate:v11];

  v18 = 0;
  v12 = [v3 executeFetchRequest:v4 error:&v18];

  v13 = v18;
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v12;

  v16 = objc_retainBlock(*(a1 + 40));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, *(*(*(a1 + 48) + 8) + 40));
  }
}

id BKLibraryCollectionLog()
{
  if (qword_EFCE8 != -1)
  {
    sub_911CC();
  }

  v1 = qword_EFCE0;

  return v1;
}

void sub_575A0(id a1)
{
  qword_EFCE0 = os_log_create("com.apple.iBooks", "BKLibrary.Collections");

  _objc_release_x1();
}

id BKLibraryCollectionDevelopmentLog()
{
  if (qword_EFCF8 != -1)
  {
    sub_911E0();
  }

  v1 = qword_EFCF0;

  return v1;
}

void sub_57628(id a1)
{
  qword_EFCF0 = os_log_create("com.apple.iBooks", "BKLibrary.Collections.Development");

  _objc_release_x1();
}

id BKLibraryAssetDetailsLog()
{
  if (qword_EFD08 != -1)
  {
    sub_911F4();
  }

  v1 = qword_EFD00;

  return v1;
}

void sub_576B0(id a1)
{
  qword_EFD00 = os_log_create("com.apple.iBooks", "BKLibrary.AssetDetails");

  _objc_release_x1();
}

id BKLibraryAssetDetailsDevelopmentLog()
{
  if (qword_EFD18 != -1)
  {
    sub_91208();
  }

  v1 = qword_EFD10;

  return v1;
}

void sub_57738(id a1)
{
  qword_EFD10 = os_log_create("com.apple.iBooks", "BKLibrary.AssetDetails.Development");

  _objc_release_x1();
}

id BKLibraryPriceManagerLog()
{
  if (qword_EFD28 != -1)
  {
    sub_9121C();
  }

  v1 = qword_EFD20;

  return v1;
}

void sub_577C0(id a1)
{
  qword_EFD20 = os_log_create("com.apple.iBooks", "BKLibrary.PriceManager");

  _objc_release_x1();
}

id BKLibraryPriceManagerDevelopmentLog()
{
  if (qword_EFD38 != -1)
  {
    sub_91230();
  }

  v1 = qword_EFD30;

  return v1;
}

void sub_57848(id a1)
{
  qword_EFD30 = os_log_create("com.apple.iBooks", "BKLibrary.PriceManager.Development");

  _objc_release_x1();
}

id BKLibraryPriceTrackingLog()
{
  if (qword_EFD48 != -1)
  {
    sub_91244();
  }

  v1 = qword_EFD40;

  return v1;
}

void sub_578D0(id a1)
{
  qword_EFD40 = os_log_create("com.apple.iBooks", "BKLibrary.PriceTracking");

  _objc_release_x1();
}

void sub_57B10(id a1)
{
  v1 = qword_EFD50;
  qword_EFD50 = &off_DE288;
}

void sub_58630(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_5864C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _libraryDataSourcePerformanceChanged];
}

void sub_58754(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  [v5 libraryDataSource:*(a1 + 32) reloadInGroup:v4];
}

void sub_58A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_58AC4;
  v7[3] = &unk_D5420;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_barrier_async(v4, v7);
}

void sub_58AC4(uint64_t a1)
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(a1 + 32);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_58C70;
  v12 = &unk_D70E0;
  v13 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v9];
  v5 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:@"Root"];
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = [*(a1 + 40) cacheURL];
  [v6 writeToURL:v7 atomically:1];

  [*(a1 + 40) _updateCreationDate];
  v8 = [*(a1 + 40) libraryManager];
  [v8 libraryDataSource:_NSConcreteStackBlock updateWithName:3221225472 block:{sub_58D14, &unk_D70B8, *(a1 + 40), v9, v10, v11, v12}];
}

void sub_58C70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 profileDictionary];
  v6 = +[BKLibraryDataSourcePerformanceAsset profileKeysOfInterest];
  v7 = [v8 dictionaryWithValuesForKeys:v6];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void sub_58D14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  [v5 libraryDataSource:*(a1 + 32) reloadInGroup:v4];
}

void sub_59310(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 10) & 1) == 0)
  {
    *(v2 + 10) = 1;
    v3 = [*(*(a1 + 32) + 56) checkResourceIsReachableAndReturnError:0];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _updateCreationDate];
    }

    else
    {
      [v4 _fetchProductProfiles];
    }
  }

  v5 = [*(a1 + 32) _cachedProductProfiles];
  v8 = [v5 allKeys];

  kdebug_trace();
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, 0);
  }
}

void sub_59568(id *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a1[4], "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [BKLibraryDataSourcePerformanceAsset alloc];
        v9 = [a1[5] identifier];
        v10 = [(BKLibraryDataSourcePerformanceAsset *)v8 initWithAssetID:v7 identifier:v9];

        v11 = [v7 integerValue];
        if ([a1[5] createSeriesContainers])
        {
          if (v11 % 5)
          {
            v12 = [NSNumber numberWithInteger:v11 % 5];
            [(BKLibraryDataSourcePerformanceAsset *)v10 setSeriesSortKey:v12];

            v13 = (v11 - v11 % 5);
          }

          else
          {
            [(BKLibraryDataSourcePerformanceAsset *)v10 setContentType:5];
            v13 = v11;
          }

          v14 = [NSNumber numberWithInteger:v13];
          v15 = [v14 stringValue];
          [(BKLibraryDataSourcePerformanceAsset *)v10 setSeriesID:v15];
        }

        [v2 addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  kdebug_trace();
  v16 = objc_retainBlock(a1[6]);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v2, 0);
  }
}

void sub_597D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedProductProfiles];
  v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = a1;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [BKLibraryDataSourcePerformanceAsset alloc];
          [v2 objectForKeyedSubscript:v8];
          v12 = v11 = v3;
          v13 = [*(v19 + 32) identifier];
          v14 = [*(v19 + 32) creationDate];
          v15 = [(BKLibraryDataSourcePerformanceAsset *)v10 initWithAssetID:v8 productProfile:v12 identifier:v13 date:v14];

          v3 = v11;
          [v11 addObject:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  kdebug_trace();
  v16 = objc_retainBlock(*(v19 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v3, 0);
  }
}

void sub_59FB0(id a1)
{
  qword_EFD70 = objc_opt_new();

  _objc_release_x1();
}

void sub_5A2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5A2B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5A2D0(uint64_t a1)
{
  v2 = [*(a1 + 32) assetPathToCacheItemDict];
  v8 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v8;
  if (v8)
  {
    v4 = [v8 fileSizeNumber];
    v5 = [v4 copy];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

void sub_5A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5A4B8(uint64_t a1)
{
  v5 = [*(a1 + 32) dq_filesSizeForCacheItemRequest:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_5A5D8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) assetPathToCacheItemDict];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          v10 = [*(a1 + 40) assetPathToCacheItemDict];
          [v10 removeObjectForKey:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) dq_persistInfoToDisk];
}

void sub_5A854(uint64_t a1)
{
  v2 = [*(a1 + 32) dq_filesSizeForCacheItemRequest:*(a1 + 40)];
  v5 = [v2 copy];

  v3 = objc_retainBlock(*(a1 + 48));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5, 0);
  }
}

void sub_5AA08(id *a1)
{
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        if (!v8)
        {
          sub_91330();
        }

        v9 = [v8 assetID];

        if (!v9)
        {
          sub_91368();
        }

        v10 = [v8 assetURL];

        if (!v10)
        {
          sub_913A0();
        }

        v11 = [v8 assetID];

        if (v11)
        {
          v12 = [a1[5] dq_filesSizeForCacheItemRequest:v8];
          v13 = [v12 copy];
          v14 = [v8 assetID];
          [v2 setObject:v13 forKeyedSubscript:v14];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = objc_retainBlock(a1[6]);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v2, 0);
  }
}

void sub_5AC7C(uint64_t a1)
{
  v2 = [*(a1 + 32) assetPathToCacheItemDict];
  v3 = [v2 allKeys];

  if ([v3 count])
  {
    v4 = [*(a1 + 32) libraryManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5AD54;
    v7[3] = &unk_D58E0;
    v5 = v3;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 performBackgroundReadOnlyBlock:v7];
  }
}

void sub_5AD54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v5 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:*(a1 + 32)];
  [v4 setPredicate:v5];

  v13 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v13];

  v7 = v13;
  if ([v6 count])
  {
    v8 = [v6 valueForKey:@"assetID"];
    if ([v8 count])
    {
      v9 = [NSMutableSet setWithArray:*(a1 + 32)];
      v10 = [NSSet setWithArray:v8];
      [v9 minusSet:v10];
      v11 = *(a1 + 40);
      v12 = [v9 allObjects];
      [v11 clearCacheEntryForAssetID:v12];
    }
  }
}

id BKLibraryAssetIdentifierFromAsset(void *a1)
{
  v1 = a1;
  v2 = [v1 assetID];
  if (v2)
  {
    v3 = [v1 assetID];

    [BKAssetID identifierWithAssetID:v3];
  }

  else
  {
    v3 = [v1 temporaryAssetID];

    [BKTemporaryAssetID identifierWithTemporaryAssetID:v3];
  }
  v4 = ;

  return v4;
}

void sub_5C5F0(id a1)
{
  qword_EFD80 = objc_alloc_init(BKLibraryImportStatusController);

  _objc_release_x1();
}

void sub_5C7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5C81C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_5C904;
    v12 = &unk_D5550;
    v7 = WeakRetained;
    v13 = v7;
    v14 = v3;
    dispatch_sync(v6, &v9);
    v8 = [v7 coalescedZeroing];
    [v8 signalWithCompletion:&stru_D7150];
  }
}

void sub_5C904(uint64_t a1)
{
  [*(a1 + 32) setTotalImportOperations:{objc_msgSend(*(a1 + 32), "actualTotalImportOperations")}];
  [*(a1 + 32) setCompletedImportOperations:{objc_msgSend(*(a1 + 32), "actualCompletedImportOperations")}];
  [*(a1 + 32) setFailedImportOperations:{objc_msgSend(*(a1 + 32), "actualFailedImportOperations")}];
  [*(a1 + 32) setTotalImportOperationsProcessed:{objc_msgSend(*(a1 + 32), "totalImportOperationsProcessed") + 1}];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_5C9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5CA78;
    v7[3] = &unk_D5550;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_sync(v6, v7);
  }
}

void sub_5CA78(uint64_t a1)
{
  [*(a1 + 32) setActualTotalImportOperations:{objc_msgSend(*(a1 + 32), "actualTotalImportOperations") - (objc_msgSend(*(a1 + 32), "actualFailedImportOperations") + objc_msgSend(*(a1 + 32), "actualCompletedImportOperations"))}];
  [*(a1 + 32) setActualCompletedImportOperations:0];
  [*(a1 + 32) setActualFailedImportOperations:0];
  [*(a1 + 32) setTotalImportOperations:{objc_msgSend(*(a1 + 32), "actualTotalImportOperations")}];
  [*(a1 + 32) setCompletedImportOperations:{objc_msgSend(*(a1 + 32), "actualCompletedImportOperations")}];
  [*(a1 + 32) setFailedImportOperations:{objc_msgSend(*(a1 + 32), "actualFailedImportOperations")}];
  [*(a1 + 32) setTotalImportOperationsProcessed:{objc_msgSend(*(a1 + 32), "totalImportOperationsProcessed") + 1}];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

id sub_5CC10(uint64_t a1)
{
  v2 = [*(a1 + 32) actualTotalImportOperations] + 1;
  v3 = *(a1 + 32);

  return [v3 setActualTotalImportOperations:v2];
}

id sub_5CCF4(uint64_t a1)
{
  v2 = [*(a1 + 32) actualCompletedImportOperations] + 1;
  v3 = *(a1 + 32);

  return [v3 setActualCompletedImportOperations:v2];
}

id sub_5CDD8(uint64_t a1)
{
  v2 = [*(a1 + 32) actualFailedImportOperations] + 1;
  v3 = *(a1 + 32);

  return [v3 setActualFailedImportOperations:v2];
}

void sub_5D488(id *a1)
{
  if ([a1[4] length])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5D60C;
    v10[3] = &unk_D62F8;
    *v8 = *(a1 + 2);
    v2 = v8[0];
    v11 = vextq_s8(*v8, *v8, 8uLL);
    v12 = a1[6];
    v3 = objc_retainBlock(v10);
    v4 = [a1[5] expirationDate];
    v5 = +[NSDate date];
    v6 = [v4 compare:v5];

    if (v6 == -1)
    {
      [a1[5] _invalidate:v3];
    }

    else
    {
      (v3[2])(v3);
    }
  }

  else
  {
    v7 = objc_retainBlock(a1[6]);
    if (v7)
    {
      v9 = v7;
      (*(v7 + 2))(v7, a1[4], 0);
      v7 = v9;
    }
  }
}

void sub_5D60C(uint64_t a1)
{
  v2 = [*(a1 + 32) prices];
  v17 = [v2 objectForKey:*(a1 + 40)];

  if (v17)
  {
    v3 = objc_retainBlock(*(a1 + 48));
    v4 = v3;
    if (!v3)
    {
LABEL_5:

      goto LABEL_15;
    }

    v5 = *(a1 + 40);
    v6 = v3[2];
LABEL_4:
    v6();
    goto LABEL_5;
  }

  v7 = [*(a1 + 32) allStoreAssets];
  v8 = [v7 objectForKey:*(a1 + 40)];

  v9 = *(a1 + 48);
  if (!v8)
  {
    v13 = objc_retainBlock(v9);
    v4 = v13;
    if (!v13)
    {
      goto LABEL_5;
    }

    v14 = *(a1 + 40);
    v6 = v13[2];
    goto LABEL_4;
  }

  if (v9)
  {
    v10 = [*(a1 + 32) completionHandlers];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];

    v12 = objc_retainBlock(*(a1 + 48));
    if (v11)
    {
      [v11 addObject:v12];

      v12 = [*(a1 + 32) completionHandlers];
      [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v15 = [NSMutableArray arrayWithObject:v12];
      v16 = [*(a1 + 32) completionHandlers];
      [v16 setObject:v15 forKeyedSubscript:*(a1 + 40)];
    }
  }

  [*(a1 + 32) _fetchPricesForStoreAssetIDs];
LABEL_15:
}

void sub_5D880(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = [*(a1 + 40) completionHandlers];
    [v2 removeObjectForKey:*(a1 + 32)];
  }
}

void sub_5D9A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [NSValue valueWithNonretainedObject:?];
    v2 = [*(a1 + 40) listeners];
    [v2 addObject:v3];
  }
}

void sub_5DAD0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) listeners];
    v3 = [v2 count];

    if (v3)
    {
      v4 = 0;
      while (1)
      {
        v5 = [*(a1 + 40) listeners];
        v6 = [v5 objectAtIndexedSubscript:v4];
        v8 = [v6 nonretainedObjectValue];

        if (v8 == *(a1 + 32))
        {
          break;
        }

        if (v3 == ++v4)
        {
          return;
        }
      }

      v7 = [*(a1 + 40) listeners];
      [v7 removeObjectAtIndex:v4];
    }
  }
}

void sub_5DD98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = [[BKLibraryPriceManagerAsset alloc] initWithType:0 storeID:v11];
        v13 = [*(a1 + 32) allStoreAssets];
        [v13 setObject:v12 forKeyedSubscript:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      v18 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * v18);
        v20 = [[BKLibraryPriceManagerAsset alloc] initWithType:1 storeID:v19];
        v21 = [*(a1 + 32) allStoreAssets];
        [v21 setObject:v20 forKeyedSubscript:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v16);
  }

  v22 = [*(a1 + 32) allStoreAssets];
  v23 = [*(a1 + 32) seriesAssets];
  [v22 addEntriesFromDictionary:v23];

  [*(a1 + 32) setGenerationCount:{objc_msgSend(*(a1 + 32), "generationCount") + 1}];
  v24 = [NSDate dateWithTimeIntervalSinceNow:900.0];
  [*(a1 + 32) setExpirationDate:v24];

  v25 = [*(a1 + 32) dispatchQueue];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_5E0B0;
  v31 = &unk_D5550;
  v26 = *(a1 + 40);
  v32 = *(a1 + 32);
  v33 = v26;
  dispatch_async(v25, &v28);

  v27 = [*(a1 + 32) dispatchQueue];
  dispatch_resume(v27);
}

void sub_5E0B0(uint64_t a1)
{
  [*(a1 + 32) _notifyListeners:0];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_5E3FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) generationCount] == *(a1 + 40))
  {
    v7 = [*(a1 + 32) dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5E4E4;
    block[3] = &unk_D5A40;
    v11 = v6;
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    dispatch_async(v7, block);
  }
}

void sub_5E4E4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  if (*(a1 + 32) || ![*(a1 + 40) count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = [*(a1 + 48) allStoreAssets];
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v28;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 setValue:&stru_D8298 forKey:*(*(&v27 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [*(a1 + 40) allValues];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * j);
          v14 = [v13 id];
          v15 = [v13 priceFormatted];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = [BCMAssetWrapper actionTextForType:0 withAsset:v13];
          }

          v18 = v17;

          if (v14)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            [v2 setValue:v18 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v10);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = [*(a1 + 48) allStoreAssets];
    v20 = [v3 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (k = 0; k != v21; k = k + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v3);
          }

          v24 = *(*(&v31 + 1) + 8 * k);
          v25 = [v2 objectForKeyedSubscript:v24];

          if (!v25)
          {
            [v2 setValue:&stru_D8298 forKey:v24];
          }
        }

        v21 = [v3 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v21);
    }
  }

  v26 = [*(a1 + 48) prices];
  [v26 addEntriesFromDictionary:v2];

  [*(a1 + 48) _notifyListeners:v2];
  [*(a1 + 48) _callCompletionHandlers:v2];
}

void sub_5ECCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained invalidate:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5EE2C;
  v10[3] = &unk_D7228;
  v11 = v4;
  v12 = *(a1 + 40);
  [v3 fetchPriceForAssetID:v11 completion:v10];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5EECC;
  v7[3] = &unk_D7228;
  v8 = v6;
  v9 = *(a1 + 40);
  [v5 fetchPriceForAssetID:v8 completion:v7];
}

void sub_5EE2C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    NSLog(@"-------> 1 Successfully got price for store item:%@, %@", *(a1 + 32), v5);
  }

  else
  {
    NSLog(@"-------> 1 Failed to get price for store item:%@", *(a1 + 32));
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

void sub_5EECC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v5)
  {
    NSLog(@"-------> 2 Successfully got price for store item:%@, %@", *(a1 + 32), v5);
  }

  else
  {
    NSLog(@"-------> 2 Failed to get price for store item:%@", *(a1 + 32));
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
  }
}

void sub_5F268(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5F314;
  v6[3] = &unk_D5908;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_5F314(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) image];
    v4[2](v4, v3);

    v2 = v4;
  }
}

void sub_5F4BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 40);
    v5 = [v3 objectAtIndexedSubscript:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_5F5B4;
    v8[3] = &unk_D7278;
    v9 = *(a1 + 32);
    [v4 fetchImageShadowForAsset:v5 size:v8 completion:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    v6 = objc_retainBlock(*(a1 + 32));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_5F5B4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_5F700(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5F7AC;
  v6[3] = &unk_D5908;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_5F7AC(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_5F9D4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [v5 image];
    v3[2](v3, v4);
  }
}

void sub_5FBD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 48);
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = *(a1 + 72);
    v7 = *(a1 + 73);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_5FCF0;
    v11[3] = &unk_D7278;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v4 fetchImageForAsset:v5 size:v6 includeSpine:v7 includeShadow:v8 coverEffectsEnvironment:v11 completion:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 40));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void sub_5FCF0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_5FFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5FFD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5FFF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCImageCacheLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412802;
    v10 = v3;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BKLibrary+BCCacheManager: Received image %@ for fetchImageForAsset for asset ID %{mask.hash}@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_609A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_60A68;
  v6[3] = &unk_D6098;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 performBlockOnCollectionsWorkerQueue:v6];
}

void sub_60A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_60C78;
  v22 = sub_60C88;
  v23 = 0;
  v4 = *(a1 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v14 = sub_60C90;
  v15 = &unk_D7318;
  v17 = &v18;
  v16 = v4;
  v5 = v13;
  os_unfair_lock_lock_with_options();
  v14(v5);
  os_unfair_lock_unlock(v4 + 2);

  if ([v19[5] count])
  {
    v6 = [*(a1 + 32) libraryManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_60D20;
    v9[3] = &unk_D7340;
    v10 = *(a1 + 32);
    v12 = &v18;
    v11 = v3;
    [v6 performBlockOnCollectionsWorkerQueue:v9];

    v7 = v10;
  }

  else
  {
    v8 = objc_retainBlock(v3);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }

  _Block_object_dispose(&v18, 8);
}

void sub_60C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_60C78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_60C90(uint64_t a1)
{
  v2 = [*(a1 + 32) resetCollectionsChangeSet];
  v3 = [v2 copy];
  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  [*(a1 + 32) setResetCollectionsChangeSet:0];
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_914C0(v4);
  }
}

void sub_60ECC(uint64_t a1)
{
  if (*(a1 + 40) != *(*(a1 + 32) + 12))
  {
    v2 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Set enable cloud merge:%{public}@", &buf, 0xCu);
    }

    v4 = *(a1 + 40);
    *(*(a1 + 32) + 12) = v4;
    if (v4 == 1)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x3032000000;
      v24 = sub_60C78;
      v25 = sub_60C88;
      v26 = 0;
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = sub_60C78;
      v20[4] = sub_60C88;
      v21 = 0;
      v5 = dispatch_group_create();
      dispatch_group_enter(v5);
      v6 = [*(a1 + 32) cloudCollectionsManager];
      v7 = [v6 collectionDetailManager];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_6122C;
      v17[3] = &unk_D7368;
      p_buf = &buf;
      v8 = v5;
      v18 = v8;
      [v7 currentCollectionDetailCloudSyncVersions:v17];

      dispatch_group_enter(v8);
      v9 = [*(a1 + 32) cloudCollectionsManager];
      v10 = [v9 collectionMemberManager];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_6128C;
      v14[3] = &unk_D7368;
      v16 = v20;
      v11 = v8;
      v15 = v11;
      [v10 currentCollectionMemberCloudSyncVersions:v14];

      v12 = [*(a1 + 32) enableCloudMergeQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_612EC;
      block[3] = &unk_D73B8;
      block[4] = *(a1 + 32);
      block[5] = &buf;
      block[6] = v20;
      dispatch_group_notify(v11, v12, block);

      _Block_object_dispose(v20, 8);
      _Block_object_dispose(&buf, 8);
    }
  }
}

void sub_61200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_6122C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_6128C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_612EC(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_61384;
  v3[3] = &unk_D7390;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 performBlockOnCollectionsWorkerQueue:v3];
}

void sub_61384(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCCollectionDetail" inContext:v3];

  v6 = [*(a1 + 32) libraryManager];
  v7 = [v6 cloudSyncVersionsForDataType:@"BCCollectionMember" inContext:v3];

  v8 = [*(*(*(a1 + 40) + 8) + 40) historyToken];
  if (v8 && [v5 localVersion])
  {
    v9 = [v5 localVersion];
    v10 = [v5 syncVersion];

    if (v9 == v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "BCCollectionDetail cloud is dirty.  Setting all records to cloud", buf, 2u);
  }

  [*(a1 + 32) mergeCurrentCollectionDetailsToCloudInMoc:v3];
LABEL_9:
  if (([v3 hasChanges] & 1) == 0)
  {
    v12 = [*(*(*(a1 + 48) + 8) + 40) historyToken];
    if (v12 && [v7 localVersion])
    {
      v13 = [v7 localVersion];
      v14 = [v7 syncVersion];

      if (v13 == v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v15 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "BCCollectionMember cloud is dirty.  Setting all records to cloud", v16, 2u);
  }

  [*(a1 + 32) mergeCurrentCollectionMembersToCloudInMoc:v3];
LABEL_18:
  [*(a1 + 32) _checkForChangesFromCloudCollectionDetailManagerInMOC:v3 reason:@"enableCloudMerge"];
  [*(a1 + 32) _checkForChangesFromCloudCollectionMemberManagerInMOC:v3 reason:@"enableCloudMerge"];
}

void sub_61DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_61E08(uint64_t a1, void *a2)
{
  v3 = a2;
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_61EE8;
  activity_block[3] = &unk_D73E0;
  objc_copyWeak(&v11, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v10 = *(a1 + 48);
  activity_block[4] = v5;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  _os_activity_initiate(&dword_0, "Fetch Default Books Collection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v11);
}

void sub_61EE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 0;
    v6 = [v3 mutableCollectionWithCollectionID:v4 inManagedObjectContext:v5 error:&v10];
    v7 = v10;
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;
  }
}

void sub_62B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_62B9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_62C6C;
  v7[3] = &unk_D7430;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6 = v3;
  _os_activity_initiate(&dword_0, "Insert New Collection", OS_ACTIVITY_FLAG_DEFAULT, v7);
}

void sub_62C6C(uint64_t a1)
{
  v2 = [BKCollection insertNewCollectionWithCollectionID:*(a1 + 32) inManagedObjectContext:*(a1 + 40)];
  v3 = objc_retainBlock(*(a1 + 48));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v2);
  }

  [v2 setLocalModDate:0];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v2;
}

void sub_630AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_630C4(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 collectionID];
  LOBYTE(v3) = [v3 deleteCollectionWithCollectionID:v6 inManagedObjectContext:v5 error:0];

  *(*(a1[6] + 8) + 24) = v3;
}

void sub_631FC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = BKLibraryCollectionLog();
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
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_91660(a1);
  }
}

void sub_633CC(id *a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [a1[5] libraryMutableAssetWithAssetID:v10 inManagedObjectContext:v3];
          if (([v11 isContainer] & 1) == 0)
          {
            v19[0] = @"BKLibraryAssetMarkedLocation";
            v19[1] = @"BKLibraryAssetIDKey";
            v20[0] = BALocationTypeFromAddToFinishCollection;
            v20[1] = v10;
            v12 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
            [v11 setFinishedStateUserSetsFinished:0 userInfo:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = objc_retainBlock(a1[6]);
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, 1, 0);
  }
}

void sub_63740(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  if (v2)
  {
    v3 = [*(a1 + 32) collectionOnMainQueueWithCollectionID:*(a1 + 40) error:0];
    if ([*(a1 + 40) isEqualToString:kBKCollectionDefaultIDFinished])
    {
      [*(a1 + 32) markAssetsAsFinished:*(a1 + 48) completion:*(a1 + 64)];
      goto LABEL_12;
    }

    if ([*(a1 + 40) isEqualToString:kBKCollectionDefaultIDWantToRead])
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_63A14;
      v24[3] = &unk_D74A8;
      v25 = v2;
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v16 = *(a1 + 32);
      v7 = *(&v16 + 1);
      *&v8 = v5;
      *(&v8 + 1) = v6;
      v27 = v16;
      v26 = v8;
      v29 = *(a1 + 72);
      v28 = *(a1 + 64);
      [v25 performBlockOnCollectionsWorkerQueue:v24];

      v9 = v25;
LABEL_11:

      goto LABEL_12;
    }

    if (![v3 isDefaultCollection] || objc_msgSend(v3, "allowsManualAddition"))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_63CE4;
      v18[3] = &unk_D74A8;
      v19 = v2;
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v17 = *(a1 + 32);
      v12 = *(&v17 + 1);
      *&v13 = v10;
      *(&v13 + 1) = v11;
      v21 = v17;
      v20 = v13;
      v23 = *(a1 + 72);
      v22 = *(a1 + 64);
      [v19 performBlockOnCollectionsWorkerQueue:v18];

      v9 = v19;
      goto LABEL_11;
    }

    v14 = objc_retainBlock(*(a1 + 64));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }

  else
  {
    v4 = objc_retainBlock(*(a1 + 64));
    v3 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

LABEL_12:
}

void sub_63A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryAssetsWithAssetIDsContainedInList:*(a1 + 40) tempAssetIDs:*(a1 + 48) inManagedObjectContext:v3];
  v5 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        if (([v11 isContainer] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v32 = 0;
  v14 = [v12 mutableCollectionWithCollectionID:v13 inManagedObjectContext:v3 error:&v32];
  v26 = v32;
  v27 = v3;
  [v14 addLibraryAssets:v5 hideAssets:0 inManagedObjectContext:v3 forceToTop:*(a1 + 80)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        if ([*(a1 + 56) allowsAutoDownloadOfSamplesToWantToRead] && objc_msgSend(v20, "isValid"))
        {
          v21 = [v20 storeID];
          if (v21 && ([v20 isOwned] & 1) == 0 && (objc_msgSend(v20, "isLocal") & 1) == 0)
          {
            v22 = [v20 isDownloading];

            if (v22)
            {
              continue;
            }

            v23 = *(a1 + 56);
            v21 = [v20 storeID];
            [v23 p_downloadSampleBook:v21];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v17);
  }

  v24 = objc_retainBlock(*(a1 + 72));
  v25 = v24;
  if (v24)
  {
    (*(v24 + 2))(v24, v14 != 0, v26);
  }
}

void sub_63CE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v3 libraryAssetsWithAssetIDsContainedInList:v4 tempAssetIDs:v5 inManagedObjectContext:v6];
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = 0;
  v10 = [v8 mutableCollectionWithCollectionID:v9 inManagedObjectContext:v6 error:&v14];
  v11 = v14;
  [v10 addLibraryAssets:v7 hideAssets:0 inManagedObjectContext:v6 forceToTop:*(a1 + 80)];

  v12 = objc_retainBlock(*(a1 + 72));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v10 != 0, v11);
  }
}

void sub_63EB8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2 != 0, v7);
  }
}

void sub_64108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v5 = [NSPredicate predicateWithFormat:@"collection.collectionID == %@ AND %K == %@", *(a1 + 32), @"assetID", *(a1 + 40)];
  [v4 setPredicate:v5];

  [v4 setFetchBatchSize:32];
  v31 = v4;
  v6 = [v3 executeFetchRequest:v4 error:0];
  if ([v6 count])
  {
    v7 = [*(a1 + 48) libraryManager];
    v8 = [v7 libraryAssetWithAssetID:*(a1 + 40) inManagedObjectContext:v3];

    v9 = *(a1 + 48);
    v10 = [NSSet setWithObject:*(a1 + 32)];
    v32 = [v9 p_shouldDeleteAsset:v8 removingFromCollectionIDs:v10];
  }

  else
  {
    v8 = 0;
    v32 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v3 deleteObject:*(*(&v36 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  [v8 contentType];
  v16 = BCAssetContentTypeFromBKAssetContentType();
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v35 = 0;
  v19 = [v17 mutableCollectionWithCollectionID:v18 inManagedObjectContext:v3 error:&v35];
  v20 = v35;
  v21 = [BKCollectionControllerMemberManagingModifyResponse alloc];
  v22 = [v8 assetID];
  v23 = [v19 title];
  v24 = [(BKCollectionControllerMemberManagingModifyResponse *)v21 initWithAssetID:v22 assetContentType:v16 collectionTitle:v23];

  v25 = v32;
  if (!v8)
  {
    v25 = 0;
  }

  if (v25 == 1)
  {
    v26 = *(a1 + 56);
    v40 = v8;
    v27 = [NSArray arrayWithObjects:&v40 count:1];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_64484;
    v33[3] = &unk_D5908;
    v28 = *(a1 + 64);
    v33[4] = v24;
    v34 = v28;
    [v26 deleteAssets:v27 exhaustive:0 completion:v33];

    v29 = v34;
  }

  else
  {
    v30 = objc_retainBlock(*(a1 + 64));
    v29 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, v24, 0);
    }
  }
}

void sub_64484(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 0);
    v2 = v3;
  }
}

void sub_6467C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v8 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_916CC(a1);
    }

    v7 = [v6 copy];
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, a2, v7);
  }
}

void sub_64728(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_647CC;
  v3[3] = &unk_D58E0;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 performBlockOnWorkerQueue:v3];
}

void sub_647CC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) libraryMutableAssetWithAssetID:*(a1 + 40) inManagedObjectContext:a2];
  [v2 setFinishedStateUserSetsFinished:0 userInfo:0];
}

void sub_64918(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2 != 0, v7);
  }
}

void sub_64C64(uint64_t a1, int a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = [[BKCollectionControllerMemberManagingModifyResponse alloc] initWithAssetID:&stru_D8298 assetContentType:0 collectionTitle:&stru_D8298];
    v6 = objc_retainBlock(*(a1 + 32));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v5, v9);
    }
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 32));
    v5 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, v9);
    }
  }
}

void sub_64D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v32 = 0;
  v6 = [v5 mutableCollectionWithCollectionID:v4 inManagedObjectContext:v3 error:&v32];
  v7 = v32;
  if ([v6 allowsManualAddition])
  {
    v8 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = [*(a1 + 40) isEqualToString:kBKCollectionDefaultIDSamples] ^ 1;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if ((v8 & 1) == 0 && *(a1 + 48) && !v7)
  {
    v9 = [*(a1 + 32) libraryManager];
    v10 = [v9 libraryAssetWithAssetID:*(a1 + 48) inManagedObjectContext:v3];

    [v10 contentType];
    v11 = BCAssetContentTypeFromBKAssetContentType();
    v12 = [BKCollectionControllerMemberManagingModifyResponse alloc];
    v13 = [v10 assetID];
    v14 = [v6 title];
    v15 = [(BKCollectionControllerMemberManagingModifyResponse *)v12 initWithAssetID:v13 assetContentType:v11 collectionTitle:v14];

    if ([v10 isValid])
    {
      v16 = [v6 addCollectionMemberAvoidingDupesWithAssetID:*(a1 + 48) sortKey:0 forceToTop:*(a1 + 64)];
      if ([v10 isOwned] & 1) != 0 || (objc_msgSend(v10, "isLocal"))
      {
        v17 = 1;
      }

      else
      {
        v17 = [v10 isDownloading];
      }

      if ([*(a1 + 32) allowsAutoDownloadOfSamplesToWantToRead] && (v17 & 1) == 0 && *(a1 + 65) == 1)
      {
        [*(a1 + 32) p_downloadSampleBook:*(a1 + 48)];
      }

      v23 = objc_retainBlock(*(a1 + 56));
      v19 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v15, 0);
      }
    }

    else
    {
      v19 = [[BCMutableStoreItem alloc] initWithStoreID:*(a1 + 48)];
      v20 = +[BCCloudAssetManager sharedManager];
      v21 = [v20 storeAssetManager];

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_6507C;
      v24[3] = &unk_D75C0;
      v25 = *(a1 + 32);
      v26 = *(a1 + 48);
      v30 = *(a1 + 64);
      v27 = v10;
      v31 = *(a1 + 65);
      v22 = *(a1 + 56);
      v28 = v15;
      v29 = v22;
      [v21 addStoreItem:v19 completion:v24];
    }

    goto LABEL_25;
  }

LABEL_12:
  v18 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_91738((a1 + 40), a1);
  }

  v10 = objc_retainBlock(*(a1 + 56));
  if (v10)
  {
    v15 = [v7 copy];
    (v10)[2](v10, 0, v15);
LABEL_25:
  }
}

void sub_6507C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) libraryManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v20 = *(a1 + 48);
    v22 = *(a1 + 32);
    v21[2] = sub_651E0;
    v21[3] = &unk_D7598;
    v25 = *(a1 + 80);
    v8 = *(&v20 + 1);
    v26 = *(a1 + 81);
    v9 = *(a1 + 72);
    *&v10 = *(a1 + 64);
    *(&v10 + 1) = v9;
    v23 = v20;
    v24 = v10;
    [v7 performBlockOnCollectionsWorkerQueue:v21];
  }

  else
  {
    v11 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_917AC(a1, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = objc_retainBlock(*(a1 + 72));
    if (v18)
    {
      v19 = [v6 copy];
      v18[2](v18, 0, v19);
    }
  }
}

void sub_651E0(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) mutableCollectionWithCollectionID:*(a1 + 40) inManagedObjectContext:a2 error:0];
  v3 = [v7 addCollectionMemberAvoidingDupesWithAssetID:*(a1 + 48) sortKey:0 forceToTop:*(a1 + 80)];
  if ([*(a1 + 56) isOwned] & 1) != 0 || (objc_msgSend(*(a1 + 56), "isLocal"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 56) isDownloading];
  }

  if ([*(a1 + 32) allowsAutoDownloadOfSamplesToWantToRead] && (v4 & 1) == 0 && *(a1 + 81) == 1)
  {
    [*(a1 + 32) p_downloadSampleBook:*(a1 + 48)];
  }

  v5 = objc_retainBlock(*(a1 + 72));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, *(a1 + 64), 0);
  }
}

void sub_6547C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = +[BULogUtilities shared];
    v10 = [v9 verboseLoggingEnabled];

    if (v10)
    {
      v11 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 138412546;
        v34 = v12;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "\\sample download failed for storeID: %@, error: %@\\"", buf, 0x16u);
      }

LABEL_19:
    }
  }

  else if ([v6 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v6 allValues];
    v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v24 = v7;
      v25 = v6;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v29 + 1) + 8 * i) bookSampleDownloadURL];
          if (v17)
          {
            v18 = [*(a1 + 32) uiManagerProviderForAddingToWantToRead];
            v19 = v18;
            if (v18)
            {
              v20 = (*(v18 + 16))(v18);
            }

            else
            {
              v20 = 0;
            }

            v21 = [BLDownloadManifestRequest alloc];
            v22 = [NSURLRequest requestWithURL:v17];
            v23 = [v21 initWithURLRequest:v22];

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_65754;
            v27[3] = &unk_D7610;
            v28 = v17;
            [v23 startWithUIManager:v20 manifestResponseBlock:v27];
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v14);
      v7 = v24;
      v6 = v25;
    }

    goto LABEL_19;
  }
}

void sub_65754(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 validDownloadIDs];
  v7 = [v6 firstObject];

  v8 = +[BULogUtilities shared];
  v9 = [v8 verboseLoggingEnabled];

  if (v5 || !v7)
  {
    if (v9)
    {
      v10 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = 138412546;
        v17 = v15;
        v18 = 2112;
        v19 = v5;
        v12 = "\\sample download failed for URL: %@, error: %@\\"";
        v13 = v10;
        v14 = 22;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  else if (v9)
  {
    v10 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v16 = 138412290;
      v17 = v11;
      v12 = "\\sample download started for URL: %@\\"";
      v13 = v10;
      v14 = 12;
LABEL_9:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      goto LABEL_10;
    }

    goto LABEL_10;
  }
}

void sub_65A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) p_shouldDeleteAsset:*(a1 + 40) removingFromCollectionIDs:*(a1 + 48)];
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v6 = [NSPredicate predicateWithFormat:@"collection.collectionID IN %@ AND assetID == %@", *(a1 + 48), *(a1 + 56)];
  [v5 setPredicate:v6];

  [v5 setFetchBatchSize:32];
  v28 = 0;
  v7 = [v3 executeFetchRequest:v5 error:&v28];
  v8 = v28;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 deleteObject:*(*(&v24 + 1) + 8 * v13)];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v4)
  {
    v16 = *(a1 + 64);
    v29 = *(a1 + 40);
    v17 = [NSArray arrayWithObjects:&v29 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_65D30;
    v20[3] = &unk_D7660;
    v22 = *(a1 + 72);
    v23 = v15;
    v21 = v8;
    [v16 deleteAssets:v17 exhaustive:0 completion:v20];

    v18 = v22;
  }

  else
  {
    v19 = objc_retainBlock(*(a1 + 72));
    v18 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, v15, v8);
    }
  }
}

void sub_65D30(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 32));
    v2 = v3;
  }
}

void sub_65F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [NSSet setWithObject:*(a1 + 48)];
  v7 = [v4 p_assetsRequiringDeletion:v5 removingFromCollectionIDs:v6];

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v32 = 0;
  v10 = [v8 mutableCollectionWithCollectionID:v9 inManagedObjectContext:v3 error:&v32];
  v11 = v32;
  v12 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
  v13 = [NSPredicate predicateWithFormat:@"collection == %@ AND assetID IN %@", v10, *(a1 + 56)];
  [v12 setPredicate:v13];

  [v12 setFetchBatchSize:32];
  v14 = [v3 executeFetchRequest:v12 error:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 deleteObject:*(*(&v28 + 1) + 8 * v18)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if ([v7 count])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_661E4;
    v24[3] = &unk_D7660;
    v21 = *(a1 + 64);
    v26 = *(a1 + 72);
    v27 = v20;
    v25 = v11;
    [v21 deleteAssets:v7 exhaustive:0 completion:v24];

    v22 = v26;
  }

  else
  {
    v23 = objc_retainBlock(*(a1 + 72));
    v22 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, v20, v11);
    }
  }
}

void sub_661E4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 32));
    v2 = v3;
  }
}

void sub_66F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  v6 = [v5 cloudSyncVersionsForDataType:@"BCCollectionDetail" inContext:v4];

  [v6 setLocalVersion:{objc_msgSend(v6, "localVersion") + 1}];
  *(*(*(a1 + 40) + 8) + 24) = [v6 localVersion];
}

void sub_66FC4(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (!a2)
  {
    v10 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_9181C(a1);
    }

    goto LABEL_12;
  }

  v8 = +[BULogUtilities shared];
  v9 = [v8 verboseLoggingEnabled];

  if (a3)
  {
    if (v9)
    {
      v10 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v14 = 138543362;
        v15 = v11;
        v12 = "\\collectionDetailManager succesfully set collectionDetails for collectionIDs: %{public}@\\"";
LABEL_11:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if (v9)
  {
    v10 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = 138543362;
      v15 = v13;
      v12 = "\\collectionDetailManager succesfully set collectionDetails, but no changes for collectionIDs: %{public}@\\"";
      goto LABEL_11;
    }

LABEL_12:
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_67134(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = BKLibraryCollectionLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v13 = 138543362;
      v14 = v8;
      v9 = "collectionDetailManager succesfully deleted collectionIDs: %{public}@";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v5;
    v9 = "collectionDetailManager warning deleting collectionIDs: %{public}@ error:%@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_67248(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_672D8;
  v3[3] = &unk_D76F0;
  v4 = *(a1 + 32);
  [v2 performBlockOnCollectionsWorkerQueue:v3];
}

void sub_672D8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:1];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCCollectionDetail" inContext:v3];

  [v5 setSyncVersion:*(*(*(a1 + 40) + 8) + 24)];
}

void sub_67A5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 libraryManager];
  v6 = [v5 cloudSyncVersionsForDataType:@"BCCollectionMember" inContext:v4];

  [v6 setLocalVersion:{objc_msgSend(v6, "localVersion") + 1}];
  *(*(*(a1 + 40) + 8) + 24) = [v6 localVersion];
}

void sub_67B04(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  dispatch_group_leave(*(a1 + 32));
  if (!a2)
  {
    v10 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_91888(a1);
    }

    goto LABEL_12;
  }

  v8 = +[BULogUtilities shared];
  v9 = [v8 verboseLoggingEnabled];

  if (a3)
  {
    if (v9)
    {
      v10 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v14 = 138412290;
        v15 = v11;
        v12 = "\\collectionMemberManager succesfully set collectionMember memberIDs: %@\\"";
LABEL_11:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if (v9)
  {
    v10 = BKLibraryCollectionDevelopmentLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = 138412290;
      v15 = v13;
      v12 = "\\collectionMemberManager succesfully set, but no changes for collectionMember memberIDs: %@\\"";
      goto LABEL_11;
    }

LABEL_12:
  }
}

void sub_67C74(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = BKLibraryCollectionLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "collectionMemberManager succesfully deleted collectionMember memberIDs: %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_918F8(a1);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_67D64(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_67DF4;
  v3[3] = &unk_D76F0;
  v4 = *(a1 + 32);
  [v2 performBlockOnCollectionsWorkerQueue:v3];
}

void sub_67DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:1];
  v4 = [*(a1 + 32) libraryManager];
  v5 = [v4 cloudSyncVersionsForDataType:@"BCCollectionMember" inContext:v3];

  [v5 setSyncVersion:*(*(*(a1 + 40) + 8) + 24)];
}

void sub_684D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_68544(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudMerge];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_68600(uint64_t a1)
{
  if ([*(a1 + 32) processingCollectionDetailChanges])
  {
    v2 = +[BULogUtilities shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v4 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "\\#collectionDetailChanged BCCloudCollectionDetailManagerChanged notification received, deferring processing\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedCollectionDetailChangesNotification:1];
  }

  else
  {
    [*(a1 + 32) setProcessingCollectionDetailChanges:1];
    v5 = +[BULogUtilities shared];
    v6 = [v5 verboseLoggingEnabled];

    if (v6)
    {
      v7 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#collectionDetailChanged BCCloudCollectionDetailManagerChanged notification received, starting processing\\"", buf, 2u);
      }
    }

    v8 = [*(a1 + 32) libraryManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_68790;
    v9[3] = &unk_D56B8;
    v9[4] = *(a1 + 32);
    [v8 performBackgroundReadOnlyBlock:v9];
  }
}

void sub_68938(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v15 = [*(a1 + 32) enableCloudMergeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68BA8;
  block[3] = &unk_D7318;
  block[4] = *(a1 + 32);
  block[5] = &v30;
  dispatch_sync(v15, block);

  if (v14)
  {
    v16 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_919EC();
    }
  }

  else
  {
    v17 = *(a1 + 32);
    if (*(v31 + 24) == 1)
    {
      v18 = [v17 libraryManager];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_68BDC;
      v23[3] = &unk_D6CF8;
      v24 = v11;
      v19 = v13;
      v20 = *(a1 + 32);
      v25 = v19;
      v26 = v20;
      v27 = v12;
      v28 = a6;
      [v18 performBlockOnCollectionsWorkerQueue:v23];
    }

    else
    {
      v21 = [v17 getChangesQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_69400;
      v22[3] = &unk_D5528;
      v22[4] = *(a1 + 32);
      dispatch_async(v21, v22);
    }
  }

  _Block_object_dispose(&v30, 8);
}

id sub_68BA8(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudMerge];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_68BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSessionContextType:1];
  v4 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) count];
    v6 = *(a1 + 40);
    *buf = 134218242;
    v64 = v5;
    v65 = 2112;
    v66 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "getCollectionDetailChangesSince #collectionDetailChanged updated %lu records currentSyncVersions:%@", buf, 0x16u);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v62 count:16];
  v49 = v3;
  if (v8)
  {
    v10 = v8;
    v11 = *v58;
    *&v9 = 138412290;
    v45 = v9;
    v47 = v7;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = [v13 collectionID];
        if (v14)
        {
          v15 = *(a1 + 48);
          v56 = 0;
          v16 = [v15 mutableCollectionWithCollectionID:v14 inManagedObjectContext:v3 error:&v56];
          v17 = v56;
          if (v17)
          {
            v18 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = v45;
              v64 = v14;
              _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Error retrieving collection for ID:%@", buf, 0xCu);
            }
          }

          else
          {
            if (v16)
            {
              [v16 configureFromCollectionDetail:v13 shouldCompareModificationDate:1];
            }

            else
            {
              v19 = BKLibraryCollectionLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = [v13 name];
                v21 = [v13 collectionID];
                *buf = 138412546;
                v64 = v20;
                v65 = 2112;
                v66 = v21;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Collection Detail Inserted.  Creating title: %@, collectionID: %@", buf, 0x16u);
              }

              v22 = [v13 collectionID];
              v3 = v49;
              v16 = [BKCollection insertNewCollectionWithCollectionID:v22 inManagedObjectContext:v49];

              [v16 configureFromCollectionDetail:v13 shouldCompareModificationDate:0];
              v7 = v47;
            }

            v18 = [*(a1 + 48) libraryManager];
            [v18 resetNextCollectionSort];
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v10);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v23 = *(a1 + 56);
  v24 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v24)
  {
    v26 = v24;
    v27 = *v53;
    *&v25 = 138412290;
    v46 = v25;
    v48 = v23;
    do
    {
      v28 = 0;
      do
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = [*(*(&v52 + 1) + 8 * v28) objectForKeyedSubscript:{@"collectionID", v46}];
        if (v29)
        {
          v30 = *(a1 + 48);
          v51 = 0;
          v31 = [v30 mutableCollectionWithCollectionID:v29 inManagedObjectContext:v49 error:&v51];
          v32 = v51;
          if (v32)
          {
            v33 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = v46;
              v64 = v29;
              _os_log_error_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Error retrieving collection for ID:%@", buf, 0xCu);
            }

            goto LABEL_30;
          }

          if (v31)
          {
            if ([v31 canDeleteCollection])
            {
              v34 = BKLibraryCollectionLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = [v31 title];
                v36 = [v31 collectionID];
                *buf = 138412546;
                v64 = v35;
                v65 = 2112;
                v66 = v36;
                _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "Collection Detail removed.  Deleting title:%@ collectionID: %@", buf, 0x16u);

                v23 = v48;
              }

              [v49 deleteObject:v31];
            }

            else
            {
              v37 = +[BULogUtilities shared];
              v38 = [v37 verboseLoggingEnabled];

              v23 = v48;
              if (v38)
              {
                v33 = BKLibraryCollectionDevelopmentLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = [v31 title];
                  v40 = [v31 collectionID];
                  *buf = 138412546;
                  v64 = v39;
                  v65 = 2112;
                  v66 = v40;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "\\Collection Detail removed.  NOT Deleting default collection title:%@ collectionID: %@\\"", buf, 0x16u);

                  v23 = v48;
                }

LABEL_30:
              }
            }
          }
        }

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v41 = [v23 countByEnumeratingWithState:&v52 objects:v61 count:16];
      v26 = v41;
    }

    while (v41);
  }

  v42 = [*(a1 + 48) libraryManager];
  [v42 updateCloudVersionFromCloudSyncVersions:*(a1 + 40) inContext:v49];

  v43 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    [v43 _checkForChangesFromCloudCollectionDetailManagerInMOC:v49 reason:@"fetchAgain"];
  }

  else
  {
    v44 = [v43 getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_69278;
    block[3] = &unk_D5528;
    block[4] = *(a1 + 48);
    dispatch_async(v44, block);
  }

  [*(a1 + 48) setupDefaultCollectionsInManagedObjectContext:v49];
}

void sub_69278(uint64_t a1)
{
  v2 = [*(a1 + 32) receivedCollectionDetailChangesNotification];
  v3 = +[BULogUtilities shared];
  v4 = [v3 verboseLoggingEnabled];

  if (v2)
  {
    if (v4)
    {
      v5 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "\\#collectionDetailChanged completed fetchAgain, processing deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedCollectionDetailChangesNotification:0];
    v6 = [*(a1 + 32) libraryManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_693EC;
    v8[3] = &unk_D56B8;
    v8[4] = *(a1 + 32);
    [v6 performBackgroundReadOnlyBlock:v8];
  }

  else
  {
    if (v4)
    {
      v7 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#collectionDetailChanged completed fetchAgain, NO deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setProcessingCollectionDetailChanges:0];
  }
}

void sub_69494(uint64_t a1)
{
  if ([*(a1 + 32) processingCollectionMemberChanges])
  {
    v2 = +[BULogUtilities shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v4 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "\\#collectionMemberChanged BCCloudCollectionMemberManagerChanged notification received, deferring processing\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedCollectionMemberChangesNotification:1];
  }

  else
  {
    [*(a1 + 32) setProcessingCollectionMemberChanges:1];
    v5 = +[BULogUtilities shared];
    v6 = [v5 verboseLoggingEnabled];

    if (v6)
    {
      v7 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#collectionMemberChanged BCCloudCollectionMemberManagerChanged notification received, starting processing\\"", buf, 2u);
      }
    }

    v8 = [*(a1 + 32) libraryManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_69624;
    v9[3] = &unk_D56B8;
    v9[4] = *(a1 + 32);
    [v8 performBackgroundReadOnlyBlock:v9];
  }
}

void sub_697CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v15 = [*(a1 + 32) enableCloudMergeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_69A3C;
  block[3] = &unk_D7318;
  block[4] = *(a1 + 32);
  block[5] = &v30;
  dispatch_sync(v15, block);

  if (v14)
  {
    v16 = BKLibraryCollectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_91A54();
    }
  }

  else
  {
    v17 = *(a1 + 32);
    if (*(v31 + 24) == 1)
    {
      v18 = [v17 libraryManager];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_69A70;
      v23[3] = &unk_D6CF8;
      v24 = v11;
      v19 = v13;
      v20 = *(a1 + 32);
      v25 = v19;
      v26 = v20;
      v27 = v12;
      v28 = a6;
      [v18 performBlockOnCollectionsWorkerQueue:v23];
    }

    else
    {
      v21 = [v17 getChangesQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_6A464;
      v22[3] = &unk_D5528;
      v22[4] = *(a1 + 32);
      dispatch_async(v21, v22);
    }
  }

  _Block_object_dispose(&v30, 8);
}

id sub_69A3C(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudMerge];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_69A70(uint64_t a1, void *a2)
{
  v55 = a2;
  [v55 setSessionContextType:1];
  v3 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 40);
    *buf = 134218242;
    v77 = v4;
    v78 = 2112;
    v79 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "getCollectionMemberChangesSince #collectionMemberChanged updated %lu records currentSyncVersions:%@", buf, 0x16u);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = *(a1 + 32);
  v7 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
  v8 = &OBJC_IVAR___BKLibraryDataSourcePerformance__identifier;
  v52 = a1;
  v60 = [v6 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v60)
  {
    v58 = *v71;
    v51 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v71 != v58)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        v11 = [v10 collectionMemberID];
        v12 = [BCCollectionMember assetIDFromCollectionMemberID:v11];
        v13 = [BCCollectionMember collectionIDFromCollectionMemberID:v11];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && [BKCollection shouldSyncCollectionID:v13])
        {
          v16 = [*(a1 + 48) p_fetchOrCreatePlaceholderCollectionForCollectionID:v14 moc:v55];
          v17 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
          v56 = v16;
          v18 = [NSPredicate predicateWithFormat:@"collection == %@ AND assetID == %@", v16, v12];
          [v17 setPredicate:v18];

          v69 = 0;
          v19 = [v55 executeFetchRequest:v17 error:&v69];
          v20 = v69;
          v53 = v19;
          if (v20)
          {
            v21 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v77 = v14;
              v78 = 2112;
              v79 = v12;
              _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Error retrieving collectionMember for collectionID: %@ assetID: %@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          if ([v19 count])
          {
            objc_opt_class();
            v22 = [v19 lastObject];
            v21 = BUDynamicCast();

            [v21 configureFromCollectionMember:v10];
            [v56 updateMaxSortKeyWithMember:v21];
            goto LABEL_18;
          }

          if (![v19 count])
          {
            v23 = BKLibraryCollectionLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [v10 collectionMemberID];
              *buf = 138412290;
              v77 = v24;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "Collection Member Inserted.  Creating member for collectionMemberID: %@", buf, 0xCu);
            }

            v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 sortOrder]);
            v25 = [v56 addCollectionMemberAvoidingDupesWithAssetID:v12 sortKey:v21 forceToTop:0];
LABEL_18:

            a1 = v52;
            v7 = &_s10Foundation12NotificationV6objectypSgvg_ptr;
          }

          v8 = &OBJC_IVAR___BKLibraryDataSourcePerformance__identifier;
          v6 = v51;
        }

        v9 = v9 + 1;
      }

      while (v60 != v9);
      v26 = [v6 countByEnumeratingWithState:&v70 objects:v75 count:16];
      v60 = v26;
    }

    while (v26);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v27 = *(a1 + 56);
  v28 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v28)
  {
    goto LABEL_55;
  }

  v29 = v28;
  v30 = *v66;
  v59 = *v66;
  v61 = v27;
  do
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v66 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = [*(*(&v65 + 1) + 8 * i) objectForKeyedSubscript:@"collectionMemberID"];
      v33 = [v7[447] assetIDFromCollectionMemberID:v32];
      v34 = [v7[447] collectionIDFromCollectionMemberID:v32];
      v35 = v34;
      if (v33)
      {
        v36 = v34 == 0;
      }

      else
      {
        v36 = 1;
      }

      if (!v36 && [v8 + 572 shouldSyncCollectionID:v34])
      {
        v37 = *(v52 + 48);
        v64 = 0;
        v38 = [v37 mutableCollectionWithCollectionID:v35 inManagedObjectContext:v55 error:&v64];
        v39 = v64;
        if (v39)
        {
          v40 = BKLibraryCollectionLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v77 = v35;
            _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "Error retrieving collection for collectionID: %@", buf, 0xCu);
          }

          goto LABEL_47;
        }

        v40 = [NSFetchRequest fetchRequestWithEntityName:@"BKCollectionMember"];
        v41 = [NSPredicate predicateWithFormat:@"collection == %@ AND assetID == %@", v38, v33];
        [v40 setPredicate:v41];

        v63 = 0;
        v42 = [v55 executeFetchRequest:v40 error:&v63];
        v43 = v63;
        if (v43)
        {
          v57 = v42;
          v44 = BKLibraryCollectionLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v77 = v35;
            v78 = 2112;
            v79 = v33;
            _os_log_error_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "Error retrieving collection member for collectionID: %@, assetID: %@", buf, 0x16u);
          }

LABEL_45:

          v42 = v57;
        }

        else if ([v42 count])
        {
          objc_opt_class();
          v57 = v42;
          v54 = [v42 lastObject];
          v44 = BUDynamicCast();

          [v55 deleteObject:v44];
          goto LABEL_45;
        }

LABEL_47:
        v7 = &_s10Foundation12NotificationV6objectypSgvg_ptr;

        if (!v38)
        {
          v45 = +[BULogUtilities shared];
          v46 = [v45 verboseLoggingEnabled];

          if (v46)
          {
            v47 = BKLibraryCollectionDevelopmentLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "\\Attempt to remove collectionMember for a collection that does not exist any more.\\"", buf, 2u);
            }
          }
        }

        v8 = &OBJC_IVAR___BKLibraryDataSourcePerformance__identifier;
        v30 = v59;
        v27 = v61;
      }
    }

    v29 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
  }

  while (v29);
LABEL_55:

  v48 = [*(v52 + 48) libraryManager];
  [v48 updateCloudVersionFromCloudSyncVersions:*(v52 + 40) inContext:v55];

  v49 = *(v52 + 48);
  if (*(v52 + 64) == 1)
  {
    [v49 _checkForChangesFromCloudCollectionMemberManagerInMOC:v55 reason:@"fetchAgain"];
  }

  else
  {
    v50 = [v49 getChangesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6A2DC;
    block[3] = &unk_D5528;
    block[4] = *(v52 + 48);
    dispatch_async(v50, block);
  }

  [*(v52 + 48) setupDefaultCollectionsInManagedObjectContext:v55];
}

void sub_6A2DC(uint64_t a1)
{
  v2 = [*(a1 + 32) receivedCollectionMemberChangesNotification];
  v3 = +[BULogUtilities shared];
  v4 = [v3 verboseLoggingEnabled];

  if (v2)
  {
    if (v4)
    {
      v5 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "\\#collectionMemberChanged completed fetchAgain, processing deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setReceivedCollectionMemberChangesNotification:0];
    v6 = [*(a1 + 32) libraryManager];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_6A450;
    v8[3] = &unk_D56B8;
    v8[4] = *(a1 + 32);
    [v6 performBackgroundReadOnlyBlock:v8];
  }

  else
  {
    if (v4)
    {
      v7 = BKLibraryCollectionDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "\\#collectionMemberChanged completed fetchAgain, NO deferred notification.\\"", buf, 2u);
      }
    }

    [*(a1 + 32) setProcessingCollectionMemberChanges:0];
  }
}

void sub_6C104(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 valueForKey:@"asset"];
  v6 = [NSSet setWithArray:v5];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v41 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        v11 = [v10 assetID];

        if (v11)
        {
          v12 = [v10 assetID];
          v13 = [NSPredicate predicateWithFormat:@"assetID == %@ AND temporaryAssetID == NULL", v12];
          v14 = [v4 filteredArrayUsingPredicate:v13];
        }

        else
        {
          v14 = 0;
        }

        v15 = [v10 temporaryAssetID];

        if (v15)
        {
          v16 = [v10 temporaryAssetID];
          v17 = [NSPredicate predicateWithFormat:@"assetID == NULL AND temporaryAssetID == %@", v16];
          v18 = [v4 filteredArrayUsingPredicate:v17];
        }

        else
        {
          v18 = 0;
        }

        v19 = [v10 assetID];
        if (v19 && (v20 = v19, [v10 temporaryAssetID], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
        {
          v22 = [v10 assetID];
          v23 = [v10 temporaryAssetID];
          v24 = [NSPredicate predicateWithFormat:@"assetID == %@ AND temporaryAssetID == %@", v22, v23];
          v25 = [v4 filteredArrayUsingPredicate:v24];
        }

        else
        {
          v25 = 0;
        }

        if ([v25 count])
        {
          [*(a1 + 32) addObjectsFromArray:v14];
          [*(a1 + 32) addObjectsFromArray:v18];
          if ([v25 count] >= 2)
          {
            v26 = 1;
            do
            {
              v27 = *(a1 + 32);
              v28 = [v25 objectAtIndexedSubscript:v26];
              [v27 addObject:v28];

              ++v26;
            }

            while (v26 < [v25 count]);
          }
        }

        else if ([v14 count])
        {
          v29 = *(a1 + 40);
          v30 = [v14 firstObject];
          [v29 addObject:v30];

          if ([v14 count] >= 2)
          {
            v31 = 1;
            do
            {
              v32 = *(a1 + 32);
              v33 = [v14 objectAtIndexedSubscript:v31];
              [v32 addObject:v33];

              ++v31;
            }

            while (v31 < [v14 count]);
          }

          [*(a1 + 32) addObjectsFromArray:v18];
        }

        else if ([v18 count])
        {
          v34 = *(a1 + 40);
          v35 = [v18 firstObject];
          [v34 addObject:v35];

          if ([v18 count] >= 2)
          {
            v36 = 1;
            do
            {
              v37 = *(a1 + 32);
              v38 = [v18 objectAtIndexedSubscript:v36];
              [v37 addObject:v38];

              ++v36;
            }

            while (v36 < [v18 count]);
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v8);
      v39 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v8 = v39;
    }

    while (v39);
  }
}
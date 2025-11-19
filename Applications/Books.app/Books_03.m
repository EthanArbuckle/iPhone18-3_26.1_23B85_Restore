void sub_10007AAF4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  [*(*(a1 + 32) + 8) setIndexDelegate:?];
  v2 = [*(a1 + 32) assetIDNeedingProcessAssertion];

  if (v2)
  {
    v3 = +[BCBackgroundTaskAssertion sharedAssertion];
    v4 = [*(a1 + 32) assetIDNeedingProcessAssertion];
    [v3 claimAssertionForIdentifier:v4 description:@"BKLibraryIndexer delayed"];

    v5 = *(a1 + 32);

    [v5 setAssetIDNeedingProcessAssertion:0];
  }
}

void sub_10007ABB4(uint64_t a1)
{
  [*(a1 + 32) wq_beginIndexTask];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10007AF78;
  v35[3] = &unk_100A033C8;
  v35[4] = *(a1 + 32);
  v2 = objc_retainBlock(v35);
  v3 = [*(a1 + 32) _clientStateDictionaryFromData:*(a1 + 40)];
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"hash"];
  v5 = BUDynamicCast();

  if (v3 && ([*(a1 + 32) _clientStateHash], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v7))
  {
    objc_opt_class();
    v8 = [v3 objectForKey:@"date"];
    v9 = BUDynamicCast();
    [v9 doubleValue];
    v11 = v10;

    objc_opt_class();
    v12 = [v3 objectForKey:@"assetIDs"];
    v13 = BUDynamicCast();

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100027304;
    v33 = sub_1000275C8;
    v34 = 0;
    v14 = *(a1 + 32);
    v15 = *(v14 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007AF80;
    block[3] = &unk_100A04950;
    v28 = &v29;
    block[4] = v14;
    v16 = v13;
    v27 = v16;
    dispatch_sync(v15, block);
    v17 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10078A64C();
    }

    if (v11 > 0.0 || [v30[5] count])
    {
      v18 = [NSDate dateWithTimeIntervalSince1970:v11];
      objc_storeStrong((*(a1 + 32) + 16), v18);
      [*(a1 + 32) _indexStartingAtLastDateAdded:v18 retryAssetIDs:v30[5] completion:v2];
    }

    else
    {
      v22 = objc_retainBlock(v2);
      v18 = v22;
      if (v22)
      {
        (v22[2])(v22);
      }
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(v20 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10007B020;
    v23[3] = &unk_100A049A0;
    v23[4] = v20;
    v24 = v19;
    v25 = v2;
    dispatch_sync(v21, v23);
  }
}

void sub_10007AF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10007AF80(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_retryAssetIDs];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 40) count];
  if (result)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) setByAddingObjectsFromArray:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(a1 + 32);

    return [v10 iq_setRetryAssetIDs:v9];
  }

  return result;
}

void sub_10007B020(uint64_t a1)
{
  [*(a1 + 32) iq_setRetryAssetIDs:0];
  if (*(a1 + 40))
  {
    v2 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "About to delete all past results because of client state change", buf, 2u);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007B140;
    v7[3] = &unk_100A04978;
    v7[4] = v3;
    v8 = *(a1 + 48);
    [v4 deleteAllSearchableItemsWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);

    [v5 _indexStartingAtLastDateAdded:0 retryAssetIDs:0 completion:v6];
  }
}

void sub_10007B154(uint64_t a1)
{
  v1 = [*(a1 + 32) coalescingProcessChangedBooks];
  [v1 signalWithCompletion:&stru_100A049C0];
}

void sub_10007B2A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BKLibraryAsset"];
  v22[0] = @"assetID";
  v22[1] = @"creationDate";
  v5 = [NSArray arrayWithObjects:v22 count:2];
  [v4 setPropertiesToFetch:v5];

  v6 = +[BKLibraryManager defaultManager];
  v7 = [v6 predicateForIndexing];
  [v4 setPredicate:v7];

  [v4 setResultType:2];
  [v4 setReturnsDistinctResults:1];
  if (*(a1 + 32))
  {
    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 predicateForIndexing];
    v21[0] = v9;
    v10 = [NSPredicate predicateWithFormat:@"%K > %@", @"creationDate", *(a1 + 32)];
    v21[1] = v10;
    v11 = [NSArray arrayWithObjects:v21 count:2];

    v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
    [v4 setPredicate:v12];

    v13 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:1];
    v20 = v13;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    [v4 setSortDescriptors:v14];
  }

  v15 = [v3 executeFetchRequest:v4 error:0];
  v16 = [v15 valueForKey:@"assetID"];
  v17 = [NSSet setWithArray:v16];

  if ([*(a1 + 40) count])
  {
    v18 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10078A6C4();
    }

    v19 = [v17 setByAddingObjectsFromSet:*(a1 + 40)];

    v17 = v19;
  }

  [*(a1 + 48) mocq_reindexBooksWithAssetIDs:v17 batch:1 moc:v3 completion:*(a1 + 56)];
}

void sub_10007BC84(uint64_t a1)
{
  v2 = +[BCBackgroundTaskAssertion sharedAssertion];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        if ([v8 length])
        {
          [v2 releaseAssertionForIdentifier:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10007C208(uint64_t a1, void *a2)
{
  v16 = a2;
  if (v16)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = a1;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 adamID];
          if (v9)
          {
            v10 = [v16 objectForKeyedSubscript:v9];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 url];
              v13 = [v12 absoluteString];
              v14 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_iBooks_storeURL" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
              [v8 setValue:v13 forCustomKey:v14];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    a1 = v15;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10007CC24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10078A9F4();
  }

  [*(a1 + 40) finishWithResult:v3];
}

void sub_10007CC94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v30 = 0;
  v3 = [v2 resultWithTimeout:&v30 error:11.0];
  v4 = v30;
  v5 = BCSpotlightIndexLog();
  v6 = v5;
  if (!v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078AB1C();
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AA6C();
  }

  if ([*(a1 + 48) count] >= 0x19)
  {
    v7 = [*(a1 + 48) lastObject];
    v8 = [v7 addedDate];
    v9 = [v3 addedDate];
    v10 = [v8 isEqualToDate:v9];

    v11 = BCSpotlightIndexLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Skipping update for  %@.", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10078AAE0();
      }

      v14 = [*(a1 + 56) _requestStoreURLsForAttributeSets:*(a1 + 48)];
      v15 = *(*(a1 + 56) + 40);
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10007CFA8;
      v24 = &unk_100A04AC8;
      v16 = *(a1 + 64);
      v17 = *(a1 + 56);
      v25 = v16;
      v26 = v17;
      v27 = v14;
      v29 = *(a1 + 80);
      v28 = *(a1 + 72);
      v12 = v14;
      dispatch_sync(v15, &v21);
      [*(a1 + 72) removeAllObjects];
      [*(a1 + 64) removeAllObjects];
      [*(a1 + 48) removeAllObjects];
    }
  }

  [*(a1 + 48) addObject:v3];
  v18 = [v3 thumbnailURL];

  if (!v18)
  {
    v6 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 40);
      *buf = 138412290;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No thumbnail URL for %@. Going to retry next time.", buf, 0xCu);
    }

LABEL_18:

    v19 = 64;
    goto LABEL_19;
  }

  v19 = 72;
LABEL_19:
  [*(a1 + v19) addObject:*(a1 + 40)];
}

id sub_10007CFA8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) iq_addRetryAssetIDs:*(a1 + 32)];
  }

  [*(a1 + 40) iq_indexSearchableItems:*(a1 + 48) shouldBatch:*(a1 + 64)];
  result = [*(a1 + 56) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);

    return [v3 iq_removeRetryAssetIDs:v4];
  }

  return result;
}

void sub_10007D018(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestStoreURLsForAttributeSets:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D138;
  v9[3] = &unk_100A04B18;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v10 = v4;
  v11 = v5;
  v6 = v2;
  v12 = v6;
  v15 = *(a1 + 80);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  dispatch_sync(v3, v9);
  v7 = objc_retainBlock(*(a1 + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

void sub_10007D138(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) iq_addRetryAssetIDs:*(a1 + 32)];
  }

  if ([*(a1 + 48) count])
  {
    v2 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10078AB9C();
    }

    [*(a1 + 40) iq_indexSearchableItems:*(a1 + 48) shouldBatch:*(a1 + 72)];
  }

  if ([*(a1 + 56) count])
  {
    [*(a1 + 40) iq_removeRetryAssetIDs:*(a1 + 56)];
  }

  v3 = (a1 + 64);
  if ([*(a1 + 64) count])
  {
    [*(a1 + 40) iq_removeRetryAssetIDs:*(a1 + 64)];
    v4 = *(*(a1 + 40) + 8);
    v5 = [*(a1 + 64) allObjects];
    [v4 deleteSearchableItemsWithIdentifiers:v5 completionHandler:0];

    v6 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10078ABD8(v3);
    }
  }
}

id sub_10007D240(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSSet setWithArray:*(a1 + 40)];
  [v2 iq_removeRetryAssetIDs:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);

  return [v5 deleteSearchableItemsWithIdentifiers:v4 completionHandler:0];
}

void sub_10007D6A0(uint64_t a1)
{
  v2 = [*(a1 + 32) cpq_pendingChangedAssetIDs];
  if ([v2 count])
  {
  }

  else
  {
    v3 = [*(a1 + 32) cpq_pendingDeletedAssetIDs];
    v4 = [v3 count];

    if (!v4)
    {
      return;
    }
  }

  v5 = [*(a1 + 32) coalescingProcessChangedBooks];
  [v5 signalWithCompletion:&stru_100A04B60];
}

void sub_10007D7F4(uint64_t a1)
{
  v2 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AE40(a1);
  }

  v3 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AEE8(a1);
  }

  v4 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10078AF90(a1);
  }

  v5 = [*(a1 + 32) addedObjects];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [*(a1 + 32) updatedObjects];
    v7 = [v6 count];

    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = +[NSSet set];
  v9 = [*(a1 + 32) addedObjects];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 32) addedObjects];
    v12 = [v8 setByAddingObjectsFromArray:v11];

    v8 = v12;
  }

  v13 = [*(a1 + 32) updatedObjects];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [*(a1 + 32) updatedObjects];
    v16 = [v8 setByAddingObjectsFromArray:v15];

    v8 = v16;
  }

  [*(a1 + 40) cpq_addPendingChangedAssetIDs:v8];

LABEL_15:
  v17 = [*(a1 + 32) deletedObjects];
  v18 = [v17 count];

  if (v18)
  {
    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) deletedObjects];
    v21 = [NSSet setWithArray:v20];
    [v19 cpq_addPendingDeletedAssetIDs:v21];
  }
}

void sub_10007DAA4(uint64_t a1)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100027304;
  v40 = sub_1000275C8;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100027304;
  v34 = sub_1000275C8;
  v35 = 0;
  [*(a1 + 32) wq_beginIndexTask];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10007DEA4;
  v26[3] = &unk_100A04BB0;
  v2 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v28 = &v36;
  v29 = &v30;
  v27 = v2;
  v3 = objc_retainBlock(v26);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007DFAC;
  block[3] = &unk_100A036C0;
  block[4] = v4;
  block[5] = &v22;
  dispatch_sync(v5, block);
  if (*(v23 + 24) != 1)
  {
    v12 = BCSpotlightIndexLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10078B038();
    }

    v13 = objc_retainBlock(v3);
    v14 = v13;
    if (v13)
    {
      (v13[2])(v13);
    }

    goto LABEL_14;
  }

  v6 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078B074();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007DFC8;
  v20[3] = &unk_100A04BD8;
  v20[4] = v7;
  v20[5] = &v36;
  v20[6] = &v30;
  dispatch_sync(v8, v20);
  if ([v37[5] count])
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10007E034;
    v19[3] = &unk_100A037D8;
    v19[4] = v9;
    v19[5] = &v36;
    dispatch_sync(v10, v19);
  }

  if (![v31[5] count])
  {
    v15 = objc_retainBlock(v3);
    v14 = v15;
    if (v15)
    {
      (v15[2])(v15);
    }

LABEL_14:

    goto LABEL_15;
  }

  v11 = +[BKLibraryManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10007E098;
  v16[3] = &unk_100A04C00;
  v16[4] = *(a1 + 32);
  v18 = &v30;
  v17 = v3;
  [v11 performBackgroundReadOnlyBlock:v16];

LABEL_15:
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_10007DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 144), 8);
  _Block_object_dispose((v35 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10007DEA4(uint64_t a1)
{
  [*(a1 + 32) _endIndexTask];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007DF58;
  block[3] = &unk_100A04B88;
  block[4] = v2;
  v7 = *(a1 + 48);
  dispatch_sync(v3, block);
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

id sub_10007DF58(uint64_t a1)
{
  [*(a1 + 32) cpq_removePendingDeletedAssetIDs:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 cpq_removePendingChangedAssetIDs:v3];
}

void sub_10007DFC8(uint64_t a1)
{
  v2 = [*(a1 + 32) cpq_pendingDeletedAssetIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) cpq_pendingChangedAssetIDs];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10007E034(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  [v1 deleteSearchableItemsWithIdentifiers:v2 completionHandler:0];
}

void sub_10007E1A0(uint64_t a1)
{
  [*(a1 + 32) wq_beginIndexTask];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007E29C;
  v9[3] = &unk_100A03788;
  v2 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v2;
  v3 = objc_retainBlock(v9);
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007E2FC;
  v7[3] = &unk_100A03788;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, v7);
}

void sub_10007E29C(uint64_t a1)
{
  [*(a1 + 32) _endIndexTask];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10007E2FC(uint64_t a1)
{
  [*(a1 + 32) iq_setRetryAssetIDs:0];
  v2 = BCSpotlightIndexLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "About to delete all past results because we're requested to reindex", buf, 2u);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007E3E0;
  v6[3] = &unk_100A04978;
  v6[4] = v4;
  v7 = v3;
  [v5 deleteAllSearchableItemsWithCompletionHandler:v6];
}

void sub_10007E554(id *a1)
{
  [a1[4] wq_beginIndexTask];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007E690;
  v11[3] = &unk_100A03788;
  v11[4] = a1[4];
  v12 = a1[6];
  v2 = objc_retainBlock(v11);
  v3 = +[BKLibraryManager defaultManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007E6F0;
  v7[3] = &unk_100A04C28;
  v4 = a1[5];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  v10 = v2;
  v6 = v2;
  [v3 performBackgroundReadOnlyBlock:v7];
}

void sub_10007E690(uint64_t a1)
{
  [*(a1 + 32) _endIndexTask];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10007E6F0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] mutableCopy];
  v5 = [a1[5] _extractDeletedIdentifiersFromArray:v4 moc:v3];
  if ([v5 count])
  {
    v6 = a1[5];
    v7 = *(v6 + 5);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10007E83C;
    v14 = &unk_100A03440;
    v15 = v6;
    v16 = v5;
    dispatch_sync(v7, &v11);
  }

  if ([v4 count])
  {
    v8 = a1[5];
    v9 = [NSSet setWithArray:v4];
    [v8 mocq_reindexBooksWithAssetIDs:v9 batch:0 moc:v3 completion:a1[6]];
  }

  else
  {
    v10 = objc_retainBlock(a1[6]);
    v9 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_10007E930(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10007ED7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007ED98(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];
  v7 = [v4 stringValue];

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained updateStateToPurchaseFailedForIdentifier:v7];
    v6 = [WeakRetained storeIDsPurchasing];
    [v6 removeObject:v7];
  }
}

void sub_10007F3EC(uint64_t a1)
{
  [*(a1 + 32) unionSet:*(*(a1 + 40) + 56)];
  [*(a1 + 32) unionSet:*(a1 + 48)];
  [*(a1 + 32) intersectSet:*(*(a1 + 40) + 16)];
  v2 = *(a1 + 48);
  v3 = (*(a1 + 40) + 56);

  objc_storeStrong(v3, v2);
}

void sub_10007F9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 assetID];
        LODWORD(v9) = [v9 containsObject:v10];

        if (v9)
        {
          v11 = *(a1 + 40);
          v12 = [v8 assetID];
          v13 = [v11 _stateForItemIdentifier:v12 libraryAsset:v8];

          v14 = *(*(a1 + 40) + 64);
          v15 = [v8 assetID];
          [v14 updateItemWithIdentifier:v15 state:v13];

          v16 = *(a1 + 48);
          v17 = [v8 assetID];
          [v16 removeObject:v17];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = *(a1 + 48);
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        v24 = [*(a1 + 40) _stateForItemIdentifier:v23 libraryAsset:{0, v26}];
        [*(*(a1 + 40) + 64) updateItemWithIdentifier:v23 state:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v25 = BKLibraryItemStateProviderLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_10078B1A4(a1, v25);
  }
}

id sub_1000803EC(void *a1)
{
  v2 = [*(a1[5] + 56) containsObject:a1[6]];
  v3 = a1[4];

  return [v3 setUpdateAvailable:v2];
}

void sub_100080430(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v4)
  {
    [*(a1 + 48) setLibrary:{objc_msgSend(v4, "unsignedIntegerValue")}];
  }

  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 48) setDownload:{objc_msgSend(v2, "unsignedIntegerValue")}];
  }
}

void sub_1000805E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000805F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100080794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000807AC(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3[9];
  v6 = a2;
  objc_opt_class();
  v11 = BUDynamicCast();
  v7 = [v5 libraryAssetWithAssetID:v11 inManagedObjectContext:v6];

  v8 = [v3 _stateForItemIdentifier:v4 libraryAsset:v7];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_100080908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3[9] libraryAssetWithAssetID:v4 inManagedObjectContext:a2];
  v7 = [v3 _stateForItemIdentifier:v4 libraryAsset:v5];

  [v7 setLibrary:2];
  v6 = [*(a1 + 32) stateCenter];
  [v6 updateItemWithIdentifier:*(a1 + 40) state:v7];
}

void sub_100080A48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3[9] libraryAssetWithAssetID:v4 inManagedObjectContext:a2];
  v7 = [v3 _stateForItemIdentifier:v4 libraryAsset:v5];

  [v7 setLibrary:0];
  v6 = [*(a1 + 32) stateCenter];
  [v6 updateItemWithIdentifier:*(a1 + 40) state:v7];
}

void sub_100080B88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3[9] libraryAssetWithAssetID:v4 inManagedObjectContext:a2];
  v7 = [v3 _stateForItemIdentifier:v4 libraryAsset:v5];

  [v7 setLibrary:4];
  v6 = [*(a1 + 32) stateCenter];
  [v6 updateItemWithIdentifier:*(a1 + 40) state:v7];
}

void sub_100081414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008142C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) count] == 1)
  {
    v2 = [*(*(a1 + 32) + 16) anyObject];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_100081534(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v10[9] libraryAssetWithAssetID:v9 inManagedObjectContext:{v3, v13}];
        v12 = [v10 _stateForItemIdentifier:v9 libraryAsset:v11];

        [*(*(a1 + 40) + 64) updateItemWithIdentifier:v9 state:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_1000817EC(void *a1)
{
  v2 = *(a1[4] + 24);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = a1[4];
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(a1[4] + 24);
  }

  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  [v2 setObject:v6 forKey:a1[5]];
}

void sub_1000819E0(void *a1)
{
  v2 = *(a1[4] + 32);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = a1[4];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[4] + 32);
  }

  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  [v2 setObject:v6 forKey:a1[5]];
}

void sub_100081B90(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }

  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

void sub_100081D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100081D60(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(*(a1 + 32) + 24) allKeys];
  [v2 addObjectsFromArray:v3];

  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(*(a1 + 32) + 32) allKeys];
  [v4 addObjectsFromArray:v5];

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;
}

uint64_t sub_100083BBC()
{
  CGRectMakeWithSize();

  return CGRectFitRectInRectAbsoluteNoRounding();
}

void sub_100084A00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *&CGAffineTransformIdentity.c;
  v12[0] = *&CGAffineTransformIdentity.a;
  v12[1] = v7;
  v12[2] = *&CGAffineTransformIdentity.tx;
  [v2 _moveCoverToFrame:v12 extraTransform:{v3, v4, v5, v6}];
  if (*(a1 + 88) == 1)
  {
    v8 = *(a1 + 72);
    v9 = [*(a1 + 32) blurredShadowContainer];
    [BKBookBloomOpenAnimator setBlurRadius:v9 forView:v8];

    v10 = *(a1 + 80);
    v11 = [*(a1 + 32) blurredShadowContainer];
    [BKBookBloomOpenAnimator setBrightnessFilter:v11 forView:v10];
  }
}

void sub_100084ACC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) coverContainerView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) bookshelfTintView];
  [v5 setAlpha:v4];

  if ((*(a1 + 56) & 1) == 0)
  {
    v6 = [*(a1 + 32) blurredShadowContainer];
    [v6 setAlpha:0.0];
  }
}

void sub_100084B84(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void sub_1000864A4(uint64_t a1, uint64_t a2)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = objc_retainBlock(v3);
      if (v5)
      {
        v6 = v5;
        (*(v5 + 2))(v5, a2);
        v5 = v6;
      }
    }
  }
}

id sub_10008652C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *&CGAffineTransformIdentity.c;
  v9[0] = *&CGAffineTransformIdentity.a;
  v9[1] = v7;
  v9[2] = *&CGAffineTransformIdentity.tx;
  [v2 _moveCoverToFrame:v9 extraTransform:{v3, v4, v5, v6}];
  return [*(a1 + 32) _moveContentContainerToFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

void sub_100086590(uint64_t a1)
{
  v2 = [*(a1 + 32) blurredShadowSnapshot];

  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 blurredShadowSnapshot];
  }

  else
  {
    [v3 blurredShadowContainer];
  }
  v4 = ;
  [v4 setAlpha:0.0];
}

void sub_100086608(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bookshelfTintView];
  [v2 setBackgroundColor:v1];
}

void sub_100086658(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) blurredCoverContainer];
  [BKBookBloomOpenAnimator setBlurRadius:v2 forView:v1];
}

void sub_1000866C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bookshelfTintView];
  [v2 setBackgroundColor:v1];
}

void sub_100086714(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) coverContainerView];
  [v2 setAlpha:v1];
}

void sub_100086768(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) contentContainerView];
  [v2 setAlpha:v1];
}

void sub_1000867BC(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void sub_100086EE4(uint64_t a1, uint64_t a2)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = objc_retainBlock(v3);
      if (v5)
      {
        v6 = v5;
        (*(v5 + 2))(v5, a2);
        v5 = v6;
      }
    }
  }
}

id sub_100086F6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *&CGAffineTransformIdentity.c;
  v9[0] = *&CGAffineTransformIdentity.a;
  v9[1] = v7;
  v9[2] = *&CGAffineTransformIdentity.tx;
  [v2 _moveCoverToFrame:v9 extraTransform:{v3, v4, v5, v6}];
  return [*(a1 + 32) _moveContentContainerToFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

void sub_100086FD0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) coverContainerView];
  [v2 setAlpha:v1];
}

void sub_100087024(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) blurredCoverContainer];
  [BKBookBloomOpenAnimator setBlurRadius:v2 forView:v1];
}

void sub_100087090(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) contentContainerView];
  [v2 setAlpha:v1];
}

void sub_1000870E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bookshelfTintView];
  [v2 setAlpha:v1];
}

void sub_100087138(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void sub_100087C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 startedSubTest:@"zoom" forTest:v2 withMetrics:&off_100A43D80];
}

void sub_100087D90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) name];
  [v1 startedSubTest:@"reveal" forTest:v2 withMetrics:&off_100A43D98];
}

void sub_100088B4C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF74A0;
  qword_100AF74A0 = v1;
}

void sub_100088DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100088E18(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) plist];
  v3 = [v2 contents];
  v4 = UIBezierPath_ptr;
  v5 = +[IMLibraryPlist keyNameForBooksArray];
  v26 = [v3 valueForKey:v5];

  v23 = [v26 count];
  if (v23)
  {
    for (i = 0; v23 != i; ++i)
    {
      v7 = [v26 objectAtIndexedSubscript:{i, v23}];
      v8 = [v4[417] assetIDFromPlistEntry:v7];
      v9 = [v4[417] temporaryItemIdentifierFromPlistEntry:v7];
      v10 = [v4[417] permlinkFromPlistEntry:v7];
      if (([v8 isEqualToString:*(v1 + 40)] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *(v1 + 48)) & 1) != 0 || objc_msgSend(*(v1 + 56), "isEqual:", v10))
      {
        v11 = [v4[417] folderNameFromPlistEntry:v7];
        if ([v11 length])
        {
          [*(v1 + 32) plist];
          v24 = v10;
          v13 = v12 = v1;
          v14 = [v13 path];
          v15 = [v14 stringByDeletingLastPathComponent];
          [v15 stringByAppendingPathComponent:v11];
          v25 = v8;
          v16 = v9;
          v18 = v17 = v4;

          v1 = v12;
          v10 = v24;
          v19 = [NSURL fileURLWithPath:v18];
          v20 = *(*(v1 + 64) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;

          v22 = *(*(*(v1 + 64) + 8) + 40);
          v4 = v17;
          v9 = v16;
          v8 = v25;
          if (v22)
          {

            break;
          }
        }
      }
    }
  }
}

void sub_100089AA8(uint64_t a1)
{
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  v2 = UIAccessibilityLayoutChangedNotification;
  v4 = [*(a1 + 32) bkaxWebDocumentViews];
  v3 = [v4 lastObject];
  UIAccessibilityPostNotification(v2, v3);
}

id sub_100089C18()
{
  if (qword_100AF74B8 != -1)
  {
    sub_10078B39C();
  }

  v1 = qword_100AF74B0;

  return v1;
}

void sub_100089C5C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKBookFlowController");
  v2 = qword_100AF74B0;
  qword_100AF74B0 = v1;
}

void sub_100089FA8(uint64_t a1)
{
  [*(a1 + 32) _currentAssetPresentersFromAllScenes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      v8 = [v7 assetPresenterAssetID];
      v9 = [v8 isEqualToString:*(a1 + 40)];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008A180;
    v12[3] = &unk_100A03440;
    v12[4] = v11;
    v13 = *(a1 + 40);
    [v11 _closePresenter:v10 animated:1 completion:v12];
  }

  else
  {
LABEL_9:

LABEL_12:
    v10 = [*(a1 + 32) libraryAssetProvider];
    [v10 applyPendingUpdateForAssetID:*(a1 + 40) completion:0];
  }
}

void sub_10008A180(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  [v2 applyPendingUpdateForAssetID:*(a1 + 40) completion:0];
}

void sub_10008A59C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) _currentAssetPresentersFromAllScenes];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10008A8E0;
  v31[3] = &unk_100A04E68;
  v32 = *(a1 + 40);
  v4 = v2;
  v33 = v4;
  v5 = [v3 indexesOfObjectsPassingTest:v31];
  v19 = v3;
  v6 = [v3 objectsAtIndexes:v5];

  v7 = [*(a1 + 32) _dockedAssetViewController];
  v8 = [v7 asset];
  v9 = [v8 assetID];

  if ([v9 length] && objc_msgSend(*(a1 + 40), "containsObject:", v9) && (objc_msgSend(v7, "shouldCloseDueToAssetDeletion") & 1) == 0)
  {
    [v4 addObject:v9];
  }

  v18 = v7;
  v10 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        dispatch_group_enter(v10);
        v16 = *(a1 + 32);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10008A994;
        v25[3] = &unk_100A033C8;
        v26 = v10;
        [v16 _closePresenter:v15 animated:1 completion:v25];
      }

      v12 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v12);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008A99C;
  block[3] = &unk_100A03A30;
  v22 = *(a1 + 40);
  v23 = v4;
  v24 = *(a1 + 32);
  v17 = v4;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
}

uint64_t sub_10008A8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assetPresenterAssetID];
  objc_opt_class();
  v5 = BUDynamicCast();

  if (!v5 || [v5 assetState] < 2)
  {
    goto LABEL_8;
  }

  if (!v4 || ![*(a1 + 32) containsObject:v4] || (objc_msgSend(v5, "shouldCloseDueToAssetDeletion") & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

void sub_10008A99C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  [v2 minusSet:*(a1 + 40)];
  v3 = [*(a1 + 48) minifiedPresenter];
  v4 = [v3 minifiedPresenterAssetCurrentPresentersForAssetIDs:v2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [*(a1 + 48) minifiedPresenter];
        [v11 minifiedPresenterPause:v10];

        v12 = [*(a1 + 48) minifiedPresenter];
        [v12 minifiedPresenterClose:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

id sub_10008ADA4(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();

  v4 = BKLibraryAssetIdentifierFromAsset();

  return v4;
}

id sub_10008AE14(uint64_t a1, double a2, double a3)
{
  if (!+[NSThread isMainThread])
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10078B3B0();
    }

    BCReportAssertionFailureWithMessage();
  }

  if (a2 <= 0.0 || a3 <= 0.0)
  {
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    a2 = v8;
    a3 = v9;
  }

  v10 = [*(a1 + 32) _bookFlowAssetPresentingForShowAssetAction:*(a1 + 40)];
  v11 = [v10 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
  v12 = [BKLibraryManager fetchImageForAsset:*(a1 + 48) size:1 includeSpine:1 allowGeneric:v11 coverEffectsEnvironment:a2 timeout:a3, 0.01];
  v13 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v12 CGImage]);

  return v13;
}

void sub_10008B898(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10008B8C8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = sub_100089C18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_obtainImageForAsset: got exact cover", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008B964(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = sub_100089C18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_obtainImageForAsset: got cover of any size", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008BA00(uint64_t a1, void *a2)
{
  v3 = [a2 image];
  v4 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v3 CGImage]);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = sub_100089C18();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_obtainImageForAsset: got shadow", v8, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10008BAC0(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_obtainImageForAsset: returning images", v9, 2u);
  }

  v3 = [*(*(*(a1 + 40) + 8) + 40) quality];
  v4 = 48;
  if (v3 > 0x64)
  {
    v4 = 40;
  }

  v5 = [*(*(*(a1 + v4) + 8) + 40) image];
  v6 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v5 CGImage]);

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, *(*(*(a1 + 56) + 8) + 40), 0);
  }
}

void sub_10008BE44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [BKLibraryBookCoverViewController alloc];
  if (*(a1 + 88))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BKLibraryBookCoverViewController *)v10 initWithCoverImage:v7 shadowImage:v11];
  [(BKLibraryBookCoverViewController *)v12 setBackgroundColor:0];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v16 = AEAudiobookOptionsShouldNotAutoplayKey;
  v17 = [v14 objectForKeyedSubscript:AEAudiobookOptionsShouldNotAutoplayKey];

  if (!v17)
  {
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:v16];
  }

  [v15 setObject:v7 forKeyedSubscript:@"BKBookPresentingCoverImage"];
  if (v8)
  {
    [v15 setObject:v8 forKeyedSubscript:@"BKBookPresentingCoverShadowImage"];
  }

  v18 = [BKAssetPresentingViewController alloc];
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = [*(a1 + 56) libraryAssetProvider];
  v22 = [(BKBasePresentingViewController *)v18 initWithAssetIdentifier:v19 placeholderViewController:v12 holdAnimationAssertion:v20 libraryAssetProvider:v21];

  v23 = [*(a1 + 64) minifiedAssetPresenterLoadAssetBlock];
  [(BKBasePresentingViewController *)v22 loadWithAssetWithBlock:v23];

  [(BKBasePresentingViewController *)v22 setAutoOpen:1];
  [(BKBasePresentingViewController *)v22 setAutoDownload:*(a1 + 89)];
  [(BKBasePresentingViewController *)v22 setOpenOptions:v15];
  [(BKLibraryBookCoverViewController *)v12 setDelegate:v22];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10008C274;
  v41[3] = &unk_100A04B88;
  v24 = v12;
  v42 = v24;
  v43 = v46;
  v44 = v45;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10008C34C;
  v38[3] = &unk_100A04F48;
  v40 = v45;
  v25 = objc_retainBlock(v41);
  v39 = v25;
  [(BKBasePresentingViewController *)v22 setDownloadProgressBlock:v38];
  [(BKLibraryBookCoverViewController *)v24 setShowBackButton:*(a1 + 89)];
  if (*(a1 + 89) == 1)
  {
    v26 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008C368;
    block[3] = &unk_100A04F70;
    v37 = v46;
    v36 = v25;
    dispatch_after(v26, &_dispatch_main_q, block);
  }

  v27 = *(a1 + 72);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008C388;
  v30[3] = &unk_100A04F98;
  v31 = v27;
  v28 = v24;
  v32 = v28;
  v29 = v22;
  v33 = v29;
  v34 = *(a1 + 80);
  [v31 requireTargetSceneController:v30];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
}

void sub_10008C250(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10008C274(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Downloading…" value:&stru_100A30A68 table:0];
    [*(a1 + 32) setProgressText:v3];
  }

  else
  {
    [*(a1 + 32) setProgressText:0];
  }

  v4 = [NSNumber numberWithDouble:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) setProgressValue:v4];
}

id sub_10008C388(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationSceneController];

  if (v2)
  {
    v3 = +[BKAppDelegate sceneManager];
    v4 = [v3 primarySceneController];
    v5 = [*(a1 + 32) destinationSceneController];

    v6 = *(a1 + 40);
    if (v4 == v5)
    {
      v8 = [UINavigationItem alloc];
      v7 = +[NSBundle mainBundle];
      v9 = [v7 localizedStringForKey:@"Back" value:&stru_100A30A68 table:0];
      v10 = [v8 initWithTitle:v9];
      [v6 setNavBarBackItem:v10];
    }

    else
    {
      v7 = [*(a1 + 48) backItemForCoverView];
      [v6 setNavBarBackItem:v7];
    }

    [*(a1 + 40) setShowBackChevron:v4 == v5];
  }

  v12 = *(a1 + 48);
  v11 = *(a1 + 56);

  return [v11 set:v12 error:0];
}

void sub_10008C78C(uint64_t a1)
{
  [*(a1 + 32) _removeViewForCardOverlayWithTransaction:*(a1 + 40) options:*(a1 + 48)];
  v2 = objc_retainBlock(*(a1 + 56));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_10008CE48(uint64_t a1)
{
  v2 = [*(a1 + 32) _largeCoverViewControllerForBook:*(a1 + 40) options:*(a1 + 48) transaction:*(a1 + 56) minifiedPresenter:*(a1 + 64) holdAnimationAssertion:*(a1 + 72)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008CF58;
  v9[3] = &unk_100A05038;
  v8 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v13 = *(a1 + 88);
  v12 = *(a1 + 80);
  [v2 get:v9];
}

void sub_10008CF58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _bookFlowAssetPresentingForShowAssetAction:*(a1 + 40)];
  v5 = [*(a1 + 32) currentAssetPresentersForSingleSceneWithTransaction:*(a1 + 40)];
  v6 = [*(a1 + 32) _removePresenters:v5 thatMustStayOpenWhenOpeningBook:*(a1 + 48)];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008D09C;
  v11[3] = &unk_100A04B40;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v3;
  v14 = v4;
  v15 = *(a1 + 56);
  v17 = *(a1 + 72);
  v16 = *(a1 + 64);
  v8 = v4;
  v9 = v3;
  v10 = v6;
  [v7 commit:v11];
}

void sub_10008D09C(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 appLaunchCoordinator];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008D1CC;
  v9[3] = &unk_100A04B40;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  [v3 appLaunchCoordinatorPerformWhenLaunched:@"push large cover and Open Book" block:v9];
}

void sub_10008D1CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008D2B4;
  v4[3] = &unk_100A05010;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 80);
  v8 = *(a1 + 72);
  [v2 _closePresenters:v3 animated:0 completion:v4];
}

void sub_10008D644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D668(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = [v7 completion];
  (v10)[2](v10, a2, v9, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRunningShowAssetInvocation:0];

  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 _processNextShowAssetInvocation];
}

void sub_10008D8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008D914(uint64_t a1)
{
  [*(a1 + 32) removeObjectAtIndex:0];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _processAndClearReopenAssetIDs:*(a1 + 32) options:*(a1 + 40) assetIDToPresenterMap:*(a1 + 48)];
}

void sub_10008E03C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryAssetProvider];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008E128;
  v7[3] = &unk_100A05100;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v11 = *(a1 + 64);
  v6 = v3;
  [v4 assetForLibraryAsset:v5 completion:v7];
}

void sub_10008E128(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008E284;
    block[3] = &unk_100A04AC8;
    v9 = *(a1 + 32);
    v3 = *(&v9 + 1);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    v11 = v9;
    v12 = v6;
    v13 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7 = BCCurrentBookLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping opening Last Known Book: %@", buf, 0xCu);
    }
  }
}

void sub_10008E284(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [BKAssetID identifierWithAssetID:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008E368;
  v9[3] = &unk_100A050D8;
  v6 = v4;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v13 = *(a1 + 64);
  v12 = v8;
  [v2 minifiedAssetPresenterForAssetIdentifier:v3 transaction:v6 options:v5 completion:v9];
}

void sub_10008E368(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008E43C;
  v8[3] = &unk_100A04AC8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v13 = *(a1 + 56);
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v3;
  [v5 commit:v8];
}

void sub_10008E43C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) minifiedPresenter];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008E6C0;
    v19[3] = &unk_100A03E80;
    v15 = *(a1 + 32);
    v3 = v15.i64[0];
    v20 = vextq_s8(v15, v15, 8uLL);
    v21 = *(a1 + 64);
    [v2 minifiedPresenterPrepareToOpen:v3 animated:0 completion:v19];
  }

  if (*(a1 + 64) == 1)
  {
    v4 = BCCurrentBookLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Opening Last Known Book: %@", buf, 0xCu);
    }

    v6 = [*(a1 + 40) libraryAssetProvider];
    v7 = [v6 libraryAssetOnMainQueueWithAssetID:*(a1 + 48)];

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008E748;
    v18[3] = &unk_100A033C8;
    v18[4] = v8;
    v11 = [v8 _pushLargeCoverAndOpenBook:v7 options:0 minifiedPresenter:v9 animated:0 transaction:v10 completion:v18];
    v12 = +[BKAppDelegate delegate];
    v13 = [v12 appLaunchCoordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008E790;
    v16[3] = &unk_100A033C8;
    v17 = v11;
    v14 = v11;
    [v13 appLaunchCoordinatorPerformWhenLaunched:@"invalidate holdAnimationAssertion" block:v16];
  }
}

void sub_10008E6C0(uint64_t a1)
{
  v2 = [*(a1 + 32) minifiedPresenter];
  [v2 minifiedPresenterAddPresenter:*(a1 + 40)];

  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [*(a1 + 32) minifiedPresenter];
    [v3 setShouldIgnoreCurrentBookNotifications:0];
  }
}

void sub_10008E748(uint64_t a1)
{
  v1 = [*(a1 + 32) minifiedPresenter];
  [v1 setShouldIgnoreCurrentBookNotifications:0];
}

void sub_10008E798(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _optionsForLibraryAsset:*(a1 + 40) transaction:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

void sub_10008EE00(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 permanentOrTemporaryAssetID];
  v6 = [v2 libraryMutableAssetWithPermanentOrTemporaryAssetID:v5 inManagedObjectContext:v4];

  if ([v6 isNew] && objc_msgSend(v6, "isManagedBook"))
  {
    [v6 setIsNew:0];
  }
}

id *sub_10008F654(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _showStoreAsset:result[5] asset:result[6] options:result[7]];
  }

  return result;
}

void sub_10008F764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10008F80C;
    v6[3] = &unk_100A03440;
    v5 = *(a1 + 32);
    v6[4] = *(a1 + 40);
    v7 = v3;
    [v5 commit:v6];
  }
}

void sub_10008F80C(uint64_t a1)
{
  v2 = [*(a1 + 32) minifiedPresenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008F8B8;
  v4[3] = &unk_100A03440;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 minifiedPresenterPrepareToOpen:v5 animated:0 completion:v4];
}

void sub_10008F8B8(uint64_t a1)
{
  v2 = [*(a1 + 32) minifiedPresenter];
  [v2 minifiedPresenterOpenMinified:*(a1 + 40)];
}

void sub_100090158(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1000901A8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1);
    v1 = v2;
  }
}

void sub_1000902EC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = a2;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10009042C;
      v10[3] = &unk_100A051F0;
      v5 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = v4;
      [v5 bc_closeToAssetWithCardStackViewController:v3 completion:v10];

      return;
    }

    objc_opt_class();
    v9 = BUDynamicCast();
    [v9 closeCard];
    v7 = objc_retainBlock(*(a1 + 48));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }

    goto LABEL_9;
  }

  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v9 = v6;
    (*(v6 + 2))(v6, 0);
LABEL_9:
    v6 = v9;
  }
}

void sub_10009042C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

void sub_100090CFC(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) assetPresenterJumpToBeginningAnimated:1];
  }

  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1, 0, 0);
    v3 = v4;
  }
}

void sub_100090D70(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookFlowAssetPresentingForShowAssetAction:*(a1 + 40)];
  v3 = sub_100089C18();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      *buf = 141558274;
      v20 = 1752392040;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 4: presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion begin. assetID: %{mask.hash}@", buf, 0x16u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100090F68;
    v14[3] = &unk_100A05240;
    v6 = *(a1 + 48);
    v13 = *(a1 + 32);
    v7 = v13.i64[1];
    v8 = *(a1 + 56);
    v9.i64[0] = v6;
    v9.i64[1] = v8;
    v10 = vzip2q_s64(v13, v9);
    v9.i64[1] = v13.i64[0];
    v15 = v9;
    v16 = v10;
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    [v2 presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:v14];

    v11 = v15.i64[0];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10078B628();
    }

    v12 = objc_retainBlock(*(a1 + 72));
    v11 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0, 0);
    }
  }
}

id sub_100090F68(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 141558274;
    v6 = 1752392040;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 4: presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion end. assetID: %{mask.hash}@", &v5, 0x16u);
  }

  return [*(a1 + 40) _showAssetWithTransaction:*(a1 + 48) assetIdentifier:*(a1 + 32) location:*(a1 + 56) options:*(a1 + 64) completion:*(a1 + 72)];
}

void sub_100091034(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isExplicit];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [a1[4] libraryAssetProvider];
    v7 = [v6 isExplicitMaterialAllowed];

    if ((v7 & 1) == 0)
    {

      v8 = sub_100089C18();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[5];
        v10 = [a1[6] objectForKeyedSubscript:AEAssetLogID];
        *buf = 141558530;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v9;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 3: asset %{mask.hash}@ is explicit which is not allowed logID: %{public}@", buf, 0x20u);
      }

      v3 = 0;
    }
  }

  v11 = [v3 streamable];
  v12 = sub_100089C18();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = a1[5];
      *buf = 141558274;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 3: asset is streamable. assetID: %{mask.hash}@", buf, 0x16u);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    if (v13)
    {
      v15 = a1[5];
      v16 = [v3 title];
      *buf = 141558786;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v15;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 3: resolveLibraryAsset begin. assetID: %{mask.hash}@ title: %{mask.hash}@", buf, 0x2Au);
    }

    v17 = [a1[4] libraryAssetProvider];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100091310;
    v18[3] = &unk_100A05290;
    v19 = a1[5];
    v20 = a1[7];
    [v17 resolveLibraryAsset:v3 completion:v18];
  }
}

void sub_100091310(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = a4;
  v7 = sub_100089C18();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 141558530;
    v17 = 1752392040;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 3: resolveLibraryAsset end. assetID: %{mask.hash}@ error: %@", buf, 0x20u);
  }

  if (v6)
  {
    v9 = sub_100089C18();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10078B668();
    }
  }

  else if (a3)
  {
    v10 = +[BKLibraryManager defaultManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100091548;
    v14[3] = &unk_100A03920;
    v15 = *(a1 + 40);
    [v10 addCustomOperationBlock:v14];

    v9 = v15;
  }

  else
  {
    v11 = sub_100089C18();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 3: done with didResolve=NO", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000915DC;
    v12[3] = &unk_100A03920;
    v13 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v12);
    v9 = v13;
  }
}

void sub_100091548(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000915CC;
  block[3] = &unk_100A03920;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000915EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 isAudiobook])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100091734;
      v9[3] = &unk_100A052E0;
      v11 = *(a1 + 48);
      v10 = v4;
      [v8 appLaunchCoordinatorOnConditionMask:0x4000 blockID:@"resolveAndShowEPUBAsset" performBlock:v9];
    }
  }

  else
  {
    v5 = sub_100089C18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078B6E0();
    }

    v6 = objc_retainBlock(*(a1 + 56));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0, 0, 0);
    }
  }
}

void sub_100091748(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) libraryAssetProvider];
    v4 = [v3 libraryAssetOnMainQueueWithAssetIdentifier:*(a1 + 40)];

    if (v4)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000918A8;
      v9[3] = &unk_100A05218;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9[4] = *(a1 + 32);
      v10 = v7;
      v11 = *(a1 + 56);
      [v8 appLaunchCoordinatorOnConditionMask:2 blockID:@"showAsset:onDataSourceFetch" performBlock:v9];
    }
  }

  else
  {
    v5 = sub_100089C18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078B758();
    }

    v6 = objc_retainBlock(*(a1 + 64));
    v4 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0, 0, 0);
    }
  }
}

void sub_1000918A8(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  v3 = [v2 libraryAssetOnMainQueueWithAssetIdentifier:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
  v4 = sub_100089C18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "showAssetWithTransaction step 1: libraryAsset: %@", &v6, 0xCu);
  }

  v5 = sub_100089C18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_10078B7D0(v5);
  }
}

void sub_100091D10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100089C18();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v14 = 141558274;
      v15 = 1752392040;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_showAssetWithTransaction: Completed successfully. assetID: %{mask.hash}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10078B978();
  }

  v12 = objc_retainBlock(*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, a2, v7, v8);
  }
}

id sub_100091E54(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTargetSceneController:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);

  return [v3 _showAssetWithoutStateRestoration:v4 assetIdentifier:v5 location:v6 options:v7 completion:v8];
}

void sub_100091F30(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) assetID];
    *buf = 141558274;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_openPDFAsset: Opening asset. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v4 = +[BKAppDelegate delegate];
  v5 = [v4 libraryAssetProvider];

  v6 = [*(a1 + 32) dataSourceIdentifier];
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000920BC;
  v10[3] = &unk_100A053A8;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v8 assetForLibraryAsset:v7 completion:v10];
}

void sub_1000920BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 url];
    v8 = sub_100089C18();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 assetID];
        v11 = *(a1 + 32);
        v15 = 141559042;
        v16 = 1752392040;
        v17 = 2112;
        v18 = v10;
        v19 = 2160;
        v20 = 1752392040;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_openPDFAsset: Launching Preview. assetID: %{mask.hash}@ url: %{mask.hash}@, dataSource: %@", &v15, 0x34u);
      }

      v12 = *(a1 + 40);
      v13 = [v5 assetID];
      v14 = +[NSDate date];
      [v12 updateLibraryAssetWithID:v13 withLastOpenDate:v14 completion:0];

      [+[BCAppKitBundleLoader appKitBundleClass](BCAppKitBundleLoader "appKitBundleClass")];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10078B9F0(v5);
      }
    }
  }

  else
  {
    v7 = sub_100089C18();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10078BA98();
    }
  }
}

void sub_1000928C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100092928(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  v3 = [v2 libraryAssetOnMainQueueWithAssetIdentifier:*(a1 + 40)];

  return v3;
}

void sub_100092980(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100089C18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) objectForKeyedSubscript:AEAssetLogID];
    *buf = 141558530;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v5;
    v35 = 2114;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Got minified presenter. assetID: %{mask.hash}@ logID: %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 48);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100092BF0;
  v15[3] = &unk_100A05778;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v3;
  v27 = *(a1 + 136);
  v25 = *(a1 + 112);
  v14 = *(a1 + 64);
  v23 = *(a1 + 96);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v28 = *(a1 + 137);
  v26 = *(a1 + 120);
  v24 = *(a1 + 104);
  v29 = *(a1 + 138);
  v10 = *(a1 + 88);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v14;
  *(&v12 + 1) = v8;
  v20 = v12;
  v21 = v11;
  v30 = *(a1 + 139);
  v22 = *(a1 + 48);
  v13 = v3;
  [v7 commit:v15];
}

void sub_100092BF0(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) objectForKeyedSubscript:AEAssetLogID];
    *buf = 141558530;
    *&buf[4] = 1752392040;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2114;
    v174 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Committing the show asset transaction. assetID: %{mask.hash}@ logID: %{public}@", buf, 0x20u);
  }

  objc_opt_class();
  v5 = [*(a1 + 48) objectForKeyedSubscript:@"BKBookPresentingUseLargeCoverIfNeeded"];
  v6 = BUDynamicCast();
  v85 = [v6 BOOLValue];

  objc_opt_class();
  v7 = [*(a1 + 48) objectForKeyedSubscript:@"BKBookPresentingForceLargeCover"];
  v8 = BUDynamicCast();
  v90 = [v8 BOOLValue];

  objc_opt_class();
  v9 = [*(a1 + 48) objectForKeyedSubscript:@"BKBookPresentingCanPresentOverStore"];
  v10 = BUDynamicCast();
  v87 = [v10 BOOLValue];

  objc_opt_class();
  v11 = [*(a1 + 48) objectForKeyedSubscript:@"BKBookPresentingSkipExistingPresenterCheck"];
  v12 = BUDynamicCast();
  v13 = [v12 BOOLValue];

  objc_opt_class();
  v14 = [*(a1 + 48) objectForKeyedSubscript:@"BKBookPresentingResetLocationForMiniToFullTransition"];
  v15 = BUDynamicCast();
  v86 = [v15 BOOLValue];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v174 = sub_100093CD0;
  v175 = sub_100093CFC;
  v163[0] = _NSConcreteStackBlock;
  v163[1] = 3221225472;
  v163[2] = sub_100093D04;
  v163[3] = &unk_100A05438;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 104);
  *&v20 = v18;
  *(&v20 + 1) = *(a1 + 64);
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v164 = v21;
  v165 = v20;
  v168 = *(a1 + 144);
  v167 = *(a1 + 120);
  v166 = v19;
  v176 = objc_retainBlock(v163);
  v157 = 0;
  v158 = &v157;
  v159 = 0x3032000000;
  v160 = sub_100093CD0;
  v161 = sub_100093CFC;
  v152[0] = _NSConcreteStackBlock;
  v152[1] = 3221225472;
  v152[2] = sub_100093F84;
  v152[3] = &unk_100A05488;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v92 = *(a1 + 64);
  v24 = *(a1 + 72);
  *&v25 = v22;
  *(&v25 + 1) = v23;
  v153 = v25;
  v154 = v92;
  v155 = *(a1 + 80);
  v156 = *(a1 + 104);
  v162 = objc_retainBlock(v152);
  v149[0] = _NSConcreteStackBlock;
  v149[1] = 3221225472;
  v149[2] = sub_100094304;
  v149[3] = &unk_100A054B0;
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v150 = v26;
  v151 = v27;
  v93 = objc_retainBlock(v149);
  v28 = [*(a1 + 40) objectForKeyedSubscript:AEAudioBookForceAudiobookPlayIfCurrentAsset];
  v29 = [v28 BOOLValue];

  v147[0] = _NSConcreteStackBlock;
  v147[1] = 3221225472;
  v147[2] = sub_100094374;
  v147[3] = &unk_100A054D0;
  v148 = v29;
  v91 = objc_retainBlock(v147);
  if (!*(a1 + 72) && *(a1 + 145) == 1 && *(*(*(a1 + 128) + 8) + 40) && [*(a1 + 64) _isPresenterAudiobook:?] && objc_msgSend(*(*(*(a1 + 136) + 8) + 40), "count") >= 2)
  {
    v89 = *(*(*(a1 + 128) + 8) + 40);
  }

  else if (*(*(*(a1 + 128) + 8) + 40) && [*(a1 + 64) _isPresenterAudiobook:?] && !*(a1 + 72) && objc_msgSend(*(*(*(a1 + 136) + 8) + 40), "count") >= 2)
  {
    v89 = [*(*(*(a1 + 136) + 8) + 40) objectAtIndexedSubscript:{objc_msgSend(*(*(*(a1 + 136) + 8) + 40), "count") - 2}];
    v90 = 1;
  }

  else
  {
    v89 = 0;
  }

  v30 = [*(a1 + 32) permanentOrTemporaryAssetID];
  v31 = [*(a1 + 56) minifiedAssetPresenterAssetID];
  v32 = [v30 isEqualToString:v31];

  v33 = [*(a1 + 40) objectForKeyedSubscript:@"BKBookPresentingForceOpenBeforeWelcomeCompleted"];
  LODWORD(v30) = [v33 BOOLValue];

  v34 = (*(*(a1 + 112) + 16))();
  v35 = v30 ^ 1;
  v36 = (v30 ^ 1) & v90 & (v32 ^ 1 | v13);
  if (([v34 canOpen] & 1) == 0 && ((objc_msgSend(v34, "isCloud") & 1) != 0 || objc_msgSend(v34, "isDownloading")))
  {
    v36 = 1;
  }

  v37 = [*(a1 + 40) objectForKeyedSubscript:@"BKBookPresentWithoutAnimations"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v39 = 1;
  }

  else
  {
    v40 = [*(a1 + 40) objectForKeyedSubscript:@"BKBookPresentWithoutCloseAnimation"];
    v39 = [v40 BOOLValue];
  }

  v41 = *(a1 + 72);
  if (v41 && (*(a1 + 146) & 1) == 0)
  {
    if (v41 != *(*(*(a1 + 128) + 8) + 40))
    {
      v69 = *(a1 + 64);
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_100094410;
      v140[3] = &unk_100A05520;
      v141 = *(a1 + 88);
      v142 = *(a1 + 72);
      v146 = v29;
      v143 = *(a1 + 56);
      v144 = v91;
      v145 = &v157;
      [v69 _popToPresenterIfNeeded:v41 completion:v140];

      goto LABEL_63;
    }

    if (*(a1 + 88) || *(a1 + 145) == 1)
    {
      v75 = sub_100089C18();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = *(a1 + 88);
        v77 = v38 ^ 1;
        *v169 = 138543618;
        v170 = v76;
        v171 = 1024;
        LODWORD(v172) = v77;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Reusing current audiobook presenter with new location:%{public}@ animated:%u", v169, 0x12u);
      }

      else
      {
        v77 = v38 ^ 1;
      }

      [*(a1 + 72) assetPresenterOpenToLocation:*(a1 + 88) animated:v77];
      v83 = [*(a1 + 72) assetPresenterAssetViewController];
      (v91[2])(v91, v83);
    }

    v84 = objc_retainBlock(v158[5]);
    v80 = v84;
    if (v84)
    {
      (*(v84 + 2))(v84, 1, 0, 0);
    }

    goto LABEL_62;
  }

  v42 = *(*(*(a1 + 128) + 8) + 40);
  if (v42 && (*(a1 + 147) & 1) == 0)
  {
    v43 = (v93[2])();
    if (v89)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    if (v44 == 1)
    {
      v42 = *(*(*(a1 + 128) + 8) + 40);
      goto LABEL_31;
    }

    v78 = sub_100089C18();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *v169 = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Nothing to do", v169, 2u);
    }

    v79 = objc_retainBlock(*(*&buf[8] + 40));
    v80 = v79;
    if (v79)
    {
      (*(v79 + 2))(v79, 0, 0, 0);
    }

LABEL_62:

    goto LABEL_63;
  }

LABEL_31:
  if (((v93[2])(v93, v42) & 1) == 0 && ((v36 & 1) != 0 || (v35 & v85) != 0 && [*(a1 + 64) _shouldOpenBookUsingLargeCover:*(a1 + 96)]))
  {
    if (v89)
    {
      v70 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      v71 = [*(a1 + 64) _largeCoverViewControllerForBook:v34 options:*(a1 + 48) transaction:*(a1 + 96) minifiedPresenter:*(a1 + 56) holdAnimationAssertion:v70];
      v134[0] = _NSConcreteStackBlock;
      v134[1] = 3221225472;
      v134[2] = sub_100094694;
      v134[3] = &unk_100A05598;
      v72 = *(a1 + 96);
      v73 = *(a1 + 64);
      v135 = v72;
      v136 = v73;
      v137 = v89;
      v74 = v70;
      v138 = v74;
      v139 = buf;
      [v71 get:v134];
    }

    else
    {
      v81 = *(a1 + 96);
      v127[0] = _NSConcreteStackBlock;
      v127[1] = 3221225472;
      v127[2] = sub_100094994;
      v127[3] = &unk_100A055E8;
      v82 = *(a1 + 64);
      v132 = *(a1 + 120);
      v127[4] = v82;
      v128 = v81;
      v129 = v34;
      v130 = *(a1 + 48);
      v131 = *(a1 + 56);
      v133 = buf;
      [v128 requireTargetSceneController:v127];
    }
  }

  else
  {
    v45 = sub_100089C18();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 32);
      *v169 = 141558274;
      v170 = 1752392040;
      v171 = 2112;
      v172 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Default path. assetID: %{mask.hash}@", v169, 0x16u);
    }

    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_100094B54;
    v114[3] = &unk_100A056D8;
    v115 = *(a1 + 32);
    v47 = *(a1 + 112);
    v48 = *(a1 + 64);
    v121 = v47;
    v116 = v48;
    v117 = *(a1 + 48);
    v118 = *(a1 + 96);
    v119 = *(a1 + 56);
    v124 = v87;
    v125 = v86;
    v122 = v91;
    v123 = buf;
    v126 = v38;
    v120 = *(a1 + 40);
    v49 = objc_retainBlock(v114);
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_100095DB0;
    v106[3] = &unk_100A05700;
    v50 = *(a1 + 64);
    v111 = *(a1 + 136);
    v106[4] = v50;
    v51 = *(a1 + 96);
    v52 = *(a1 + 128);
    v107 = v51;
    v112 = v52;
    v109 = v93;
    v108 = *(a1 + 32);
    v113 = v39;
    v53 = v49;
    v110 = v53;
    v54 = objc_retainBlock(v106);
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_100096040;
    v102[3] = &unk_100A04FE8;
    v88 = *(a1 + 56);
    v55 = *(a1 + 56);
    v103 = vextq_s8(v88, v88, 8uLL);
    v104 = *(a1 + 32);
    v56 = v54;
    v105 = v56;
    v57 = objc_retainBlock(v102);
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_1000961D4;
    v96[3] = &unk_100A05750;
    v97 = *(a1 + 32);
    v58 = *(a1 + 96);
    v101 = *(a1 + 120);
    v59 = *(a1 + 64);
    v98 = v58;
    v99 = v59;
    v60 = v57;
    v100 = v60;
    v61 = objc_retainBlock(v96);
    v62 = v61;
    if (*(a1 + 56))
    {
      v63 = sub_100089C18();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = *(a1 + 32);
        *v169 = 141558274;
        v170 = 1752392040;
        v171 = 2112;
        v172 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: minifiedPresenterPrepareToOpen begin. assetID: %{mask.hash}@", v169, 0x16u);
      }

      v65 = [*(a1 + 64) minifiedPresenter];
      v66 = v53;
      v67 = *(a1 + 56);
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_1000964D8;
      v94[3] = &unk_100A03920;
      v95 = v62;
      v68 = v67;
      v53 = v66;
      [v65 minifiedPresenterPrepareToOpen:v68 animated:v38 ^ 1 completion:v94];
    }

    else
    {
      (v61[2])(v61);
    }
  }

LABEL_63:

  _Block_object_dispose(&v157, 8);
  _Block_object_dispose(buf, 8);
}

void sub_100093C80(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100093CD0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100093D04(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100089C18();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) objectForKeyedSubscript:AEAssetLogID];
    v20 = 141559042;
    v21 = 1752392040;
    v22 = 2112;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 1024;
    v27 = a2;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: compoundCompletion: assetID: %{mask.hash}@: logID: %{public}@ success: %{BOOL}d error: %@", &v20, 0x30u);
  }

  if (a2)
  {
    if (*(a1 + 48))
    {
      v12 = [*(a1 + 56) minifiedPresenter];
      [v12 minifiedPresenterAddPresenter:*(a1 + 48)];
    }

    [*(a1 + 56) _updateAssetAfterOpen:*(a1 + 32)];
  }

  else if (v7)
  {
    if (*(a1 + 80) == 1)
    {
      v13 = [*(a1 + 56) libraryAssetProvider];
      v14 = [v13 libraryAssetOnMainQueueWithAssetIdentifier:*(a1 + 32)];

      v15 = [*(a1 + 56) libraryAssetProvider];
      [v15 assetForLibraryAsset:v14 completion:&stru_100A05410];
    }

    v16 = [*(*(*(a1 + 72) + 8) + 40) newShowAssetTransaction];
    [*(a1 + 56) handleBookOpenErrorWithTransaction:v16 error:v7 assetIdentifier:*(a1 + 32)];
  }

  v17 = [*(a1 + 56) minifiedPresenter];
  [v17 setShouldIgnoreCurrentBookNotifications:0];

  v18 = objc_retainBlock(*(a1 + 64));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, a2, v7, v8);
  }
}

void sub_100093F40(id a1, BKAsset *a2, NSError *a3)
{
  v3 = [(BKAsset *)a2 url];
  [v3 stopAccessingSecurityScopedResource];
}

void sub_100093F84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100089C18();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) objectForKeyedSubscript:AEAssetLogID];
    *buf = 141559042;
    v34 = 1752392040;
    v35 = 2112;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    v39 = 1024;
    v40 = a2;
    v41 = 2112;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: compoundCompletionForCurrentPresenter: assetID: %{mask.hash}@: logID: %{public}@ success: %{BOOL}d error: %@", buf, 0x30u);
  }

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) permanentOrTemporaryAssetID];
  v14 = [v12 _currentPresenterFromAllScenesForAssetID:v13];

  v15 = *(a1 + 56);
  if (!v15)
  {
    BCReportAssertionFailureWithMessage();
    v15 = *(a1 + 56);
  }

  if (v15 != v14)
  {
    sub_10078BB08();
  }

  v16 = [*(a1 + 48) sceneHosting];
  v17 = [*(a1 + 32) permanentOrTemporaryAssetID];
  v18 = [v16 sceneInfoPresentingAssetID:v17];

  v19 = *(a1 + 56);
  if (v19 && v19 == v14 && ([v18 sceneController], (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (v21 = v20, objc_msgSend(v18, "sceneController"), v22 = objc_claimAutoreleasedReturnValue(), v23 = *(a1 + 64), v22, v21, v22 != v23))
  {
    v24 = [*(a1 + 48) sceneHosting];
    v25 = [*(a1 + 32) permanentOrTemporaryAssetID];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000942A4;
    v28[3] = &unk_100A05460;
    v31 = *(a1 + 72);
    v32 = a2;
    v29 = v7;
    v30 = v8;
    [v24 requestSceneWithAssetID:v25 completion:v28];

    v26 = v31;
  }

  else
  {
    v27 = objc_retainBlock(*(a1 + 72));
    v26 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, a2, v7, v8);
    }
  }
}

void sub_1000942A4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 56), *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

id sub_100094304(uint64_t a1, void *a2)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 minifiedPresenter];
  v6 = [v5 minifiedPresenterCanOpenPresenter:*(a1 + 32) overCurrentPresenter:v4];

  return v6;
}

void sub_100094374(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = BUProtocolCast();
    if (v3)
    {
      v4 = sub_100089C18();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Playing audiobook", v5, 2u);
      }

      [v3 play];
    }
  }
}

void sub_100094410(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100089C18();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: Changing asset presenter location:%{public}@", buf, 0xCu);
    }

    [*(a1 + 40) assetPresenterOpenToLocation:*(a1 + 32) animated:1];
  }

  v4 = sub_100089C18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 72);
    *buf = 67109120;
    LODWORD(v17) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: AEAudioBookForceAudiobookPlayIfCurrentAsset = %{BOOL}d", buf, 8u);
  }

  if (*(a1 + 72) == 1)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v6 minifiedAssetPresenterAssetViewControllerFuture];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100094618;
      v13[3] = &unk_100A054F8;
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v14 = v8;
      v15 = v9;
      [v7 get:v13];

      goto LABEL_13;
    }

    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) assetPresenterAssetViewController];
    (*(v10 + 16))(v10, v11);
  }

  v12 = objc_retainBlock(*(*(*(a1 + 64) + 8) + 40));
  v7 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 1, 0, 0);
  }

LABEL_13:
}

void sub_100094618(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1, 0, 0);
    v2 = v3;
  }
}

void sub_100094694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094788;
  v10[3] = &unk_100A05570;
  v11 = v3;
  v9 = *(a1 + 32);
  v5 = v9.i64[0];
  v12 = vextq_s8(v9, v9, 8uLL);
  v13 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14 = v6;
  v15 = v7;
  v8 = v3;
  [v4 commit:v10];
}

void sub_100094788(uint64_t a1)
{
  [*(a1 + 32) setMinifiedBarHidden:1];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100094860;
  v8[3] = &unk_100A05548;
  v8[4] = v5;
  v9 = v4;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v10 = v6;
  v11 = v7;
  [v5 _replacePresenterWithTransaction:v2 oldPresenter:v3 newPresenter:v9 completion:v8];
}

void sub_100094860(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100094914;
  v6[3] = &unk_100A03760;
  v7 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  [v2 _popToPresenterIfNeeded:v3 completion:v6];
}

void sub_100094914(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) setMinifiedBarHidden:0];
  v2 = objc_retainBlock(*(*(*(a1 + 48) + 8) + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1, 0, 0);
    v2 = v3;
  }
}

void sub_100094994(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneHosting];
  v3 = [v2 defaultSceneControllerForTransaction:*(a1 + 40)];
  v4 = BUProtocolCast();
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100027334;
  v19 = sub_1000275E0;
  v20 = 0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100094AE0;
  v14[3] = &unk_100A055C0;
  v14[4] = *(a1 + 80);
  v14[5] = &v15;
  v12 = [v10 _pushLargeCoverAndOpenBook:v7 options:v8 minifiedPresenter:v9 animated:1 transaction:v11 completion:v14];
  v13 = v16[5];
  v16[5] = v12;

  _Block_object_dispose(&v15, 8);
}

void sub_100094AE0(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1, 0, *(*(*(a1 + 40) + 8) + 40));
    v2 = v3;
  }
}

void sub_100094B54(uint64_t a1)
{
  kdebug_trace();
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 141558274;
    v25 = 1752392040;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: _obtainImageForAsset begin. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v4 = (*(*(a1 + 80) + 16))();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100094D50;
  v13[3] = &unk_100A056B0;
  v14 = v5;
  v15 = *(a1 + 56);
  v16 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v17 = v9;
  v18 = v10;
  v22 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v20 = v11;
  v21 = v12;
  v23 = *(a1 + 106);
  v19 = *(a1 + 72);
  [v6 _obtainImageForAsset:v4 withAssetIdentifier:v14 options:v7 withTransaction:v8 completion:v13];
}

void sub_100094D50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  kdebug_trace();
  v10 = sub_100089C18();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 141558530;
    v34 = 1752392040;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: _obtainImageForAsset end. assetID: %{mask.hash}@ error: %@", buf, 0x20u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100094F78;
  v19[3] = &unk_100A05688;
  v12 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = v7;
  v22 = v8;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v23 = v13;
  v24 = v14;
  v25 = *(a1 + 40);
  v30 = *(a1 + 96);
  v26 = *(a1 + 32);
  v31 = *(a1 + 97);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v28 = v15;
  v29 = v16;
  v32 = *(a1 + 98);
  v27 = *(a1 + 72);
  v17 = v8;
  v18 = v7;
  [v12 commit:v19];
}

void sub_100094F78(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"BKBookPresentingCoverImage"];
  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:@"BKBookPresentingCoverShadowImage"];
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_6;
  }

  if (([v2 minifiedAssetPresenterCanPresentAssetFromStoreTab] & 1) == 0)
  {
    v3 = [*(a1 + 64) _bookFlowAssetPresentingForShowAssetAction:*(a1 + 72)];
    [v3 presenterEnsureCanOpenBookInCurrentContext:*(a1 + 112)];
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = [v4 minifiedAssetPresenterAssetViewControllerFuture];
    v6 = objc_opt_new();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100095318;
    v29[3] = &unk_100A05610;
    v30 = *(a1 + 56);
    v7 = *(a1 + 80);
    v8 = *(a1 + 64);
    v31 = v7;
    v32 = v8;
    v33 = *(a1 + 32);
    v36 = *(a1 + 113);
    v9 = v6;
    v34 = v9;
    v35 = *(a1 + 96);
    [v5 get:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10009547C;
    v27[3] = &unk_100A04008;
    v28 = v5;
    v10 = v5;
    [v9 get:v27];
    v11 = v28;
    v12 = v9;
  }

  else
  {
LABEL_6:
    v13 = *(a1 + 80);
    v10 = [*(a1 + 64) libraryAssetProvider];
    v12 = [(BKBasePresentingViewController *)BKAssetPresentingViewController futureViewControllerWithAssetIdentifier:v13 libraryAssetProvider:v10 options:*(a1 + 32)];
  }

  v14 = sub_100089C18();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 80);
    *buf = 141558274;
    v38 = 1752392040;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: Getting futureViewController. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100095508;
  v18[3] = &unk_100A05660;
  v19 = *(a1 + 80);
  v20 = *(a1 + 72);
  v21 = 0;
  v17 = *(a1 + 56);
  v16 = v17.i64[0];
  v22 = vextq_s8(v17, v17, 8uLL);
  v25 = *(a1 + 104);
  v26 = *(a1 + 114);
  v23 = *(a1 + 88);
  v24 = *(a1 + 32);
  [v12 get:v18];
}

void sub_100095318(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) assetPresentingViewControllerClass];
  }

  else
  {
    v6 = objc_opt_class();
  }

  if (v15)
  {
    v7 = [v6 alloc];
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) minifiedAssetPresenterAssetHelper];
    v10 = [*(a1 + 48) libraryAssetProvider];
    v11 = [v7 initWithAssetIdentifier:v8 assetViewController:v15 helper:v9 libraryAssetProvider:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(a1 + 56) mutableCopy];
  v13 = v12;
  if ((*(a1 + 80) & 1) == 0)
  {
    [v12 removeObjectForKey:@"BKAssetPresentingOpenLocationKey"];
  }

  v14 = [v13 copy];
  [v11 setOpenOptions:v14];

  [*(a1 + 64) set:v11 error:v5];
  (*(*(a1 + 72) + 16))();
}

void sub_10009547C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 code] == 1)
  {
    v4 = [v6 domain];
    v5 = [v4 isEqualToString:BCFutureErrorDomain];

    if (v5)
    {
      [*(a1 + 32) cancel];
    }
  }
}

void sub_100095508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100089C18();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 141558786;
    v36 = 1752392040;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v5;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: Got futureViewController. assetID: %{mask.hash}@ viewController: %@ error: %@", buf, 0x2Au);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100095768;
  v23[3] = &unk_100A05638;
  v9 = *(a1 + 40);
  v24 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v25 = v10;
  v26 = v11;
  v13 = v12;
  v14 = *(a1 + 88);
  v27 = v13;
  v28 = v5;
  v33 = v14;
  v29 = v6;
  v30 = *(a1 + 40);
  v34 = *(a1 + 96);
  v31 = *(a1 + 72);
  v32 = *(a1 + 80);
  v15 = v6;
  v16 = v5;
  [v9 commit:v23];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100095CA8;
  v20[3] = &unk_100A037D8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = *(a1 + 88);
  v21 = v18;
  v22 = v19;
  [v17 whenCancelled:v20];
}

void sub_100095768(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100089C18();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 141558274;
      v35 = 1752392040;
      v36 = 2112;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: minifiedPresenterOpenMinified begin. assetID: %{mask.hash}@", buf, 0x16u);
    }

    v4 = [*(a1 + 48) minifiedPresenter];
    v5 = *(a1 + 56);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100095A7C;
    v29[3] = &unk_100A05548;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v30 = v6;
    v31 = v7;
    v9 = v8;
    v10 = *(a1 + 104);
    v32 = v9;
    v33 = v10;
    [v4 minifiedPresenterPrepareToOpen:v5 animated:0 completion:v29];

    v11 = v30;
  }

  else if (*(a1 + 64) && !*(a1 + 72))
  {
    v16 = sub_100089C18();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      *buf = 141558274;
      v35 = 1752392040;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: _presentViewController begin. assetID: %{mask.hash}@", buf, 0x16u);
    }

    v18 = *(a1 + 48);
    v19 = *(a1 + 64);
    v20 = *(a1 + 112) == 0;
    v21 = *(a1 + 80);
    v22 = [v18 _viewForCardOverlayFromOptions:*(a1 + 88)];
    v23 = *(a1 + 96);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100095BA0;
    v26[3] = &unk_100A037D8;
    v24 = *(a1 + 40);
    v25 = *(a1 + 104);
    v27 = v24;
    v28 = v25;
    [v18 _presentViewController:v19 transaction:v21 animated:v20 overlayView:v22 options:v23 completion:v26];

    v11 = v27;
  }

  else
  {
    v12 = sub_100089C18();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078BB54();
    }

    v13 = objc_retainBlock(*(*(*(a1 + 104) + 8) + 40));
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, *(a1 + 72), 0);
    }

    v14 = *(*(a1 + 104) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }
}

void sub_100095A7C(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 141558274;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: minifiedPresenterOpenMinified end. assetID: %{mask.hash}@", &v9, 0x16u);
  }

  v4 = [*(a1 + 40) minifiedPresenter];
  [v4 minifiedPresenterOpenMinified:*(a1 + 48)];

  v5 = objc_retainBlock(*(*(*(a1 + 56) + 8) + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1, 0, 0);
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100095BA0(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 141558274;
    v9 = 1752392040;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: _presentViewController end. assetID: %{mask.hash}@", &v8, 0x16u);
  }

  v4 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 1, 0, 0);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100095CA8(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 141558274;
    v9 = 1752392040;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: openBlock: transaction cancelled. assetID: %{mask.hash}@", &v8, 0x16u);
  }

  v4 = objc_retainBlock(*(*(*(a1 + 40) + 8) + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 0, 0, 0);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100095DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAssetPresentersForSingleSceneWithTransaction:*(a1 + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(&v17 + 1) + 8 * v10));
      if ((*(*(a1 + 56) + 16))())
      {
        break;
      }

      v11 = sub_100089C18();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        *buf = 141558274;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: closePresenterIfNeededThenOpenBlock: going to close presenter in order to open assetID: %{mask.hash}@", buf, 0x16u);
      }

      [v5 addObject:*(*(*(a1 + 80) + 8) + 40)];
      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v13 = *(*(a1 + 80) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  v15 = sub_100089C18();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: closePresenterIfNeededThenOpenBlock: closing any presenters necessary, then opening assetID: %{mask.hash}@", buf, 0x16u);
  }

  [*(a1 + 32) _closePresenters:v5 animated:(*(a1 + 88) & 1) == 0 completion:*(a1 + 64)];
}

void sub_100096040(uint64_t a1)
{
  v2 = [*(a1 + 32) minifiedPresenter];
  v3 = [v2 minifiedPresenterAssetCurrentPresenters];

  v4 = [*(a1 + 40) minifiedAssetPresenterAssetID];
  v5 = [*(a1 + 40) minifiedAssetPresenterIsAudiobook];
  v6 = sub_100089C18();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 141558274;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: closeCurrentBookIfNeededThenOpenBlock: _closeMinifiedPresenters begin. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000961C4;
  v9[3] = &unk_100A03920;
  v10 = *(a1 + 56);
  [v8 _closeMinifiedPresenters:v3 excludeAssetID:v4 isAudiobook:v5 completion:v9];
}

void sub_1000961D4(uint64_t a1)
{
  v2 = sub_100089C18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 141558274;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: compoundOpenBlock: requireTargetSceneController begin. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100096338;
  v6[3] = &unk_100A05728;
  v10 = *(a1 + 64);
  v5 = *(a1 + 40);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  [v4 requireTargetSceneController:v6];
}

void sub_100096338(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneHosting];
  v3 = [v2 defaultSceneControllerForTransaction:*(a1 + 40)];
  v4 = BUProtocolCast();
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) _bookFlowAssetPresentingForShowAssetAction:*(a1 + 40)];
  v8 = sub_100089C18();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    *buf = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_showAssetWithoutStateRestoration: compoundOpenBlock: presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion begin. assetID: %{mask.hash}@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000964C8;
  v10[3] = &unk_100A03920;
  v11 = *(a1 + 56);
  [v7 presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:v10];
}

void sub_1000967D8(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = *(a1 + 40);
  v5 = v2;
  v4 = [v2 lastObject];

  if (v3 != v4)
  {
    sub_10078BC5C();
  }

  [v5 removeLastObject];
  [*(a1 + 48) _closePresenters:v5 animated:*(a1 + 64) completion:*(a1 + 56)];
}

void sub_100096A90(uint64_t a1)
{
  v2 = [NSMutableSet setWithSet:*(a1 + 32)];
  [v2 removeObject:*(a1 + 40)];
  [*(a1 + 48) _closeMinifiedPresenters:v2 excludeAssetID:*(a1 + 56) isAudiobook:*(a1 + 72) completion:*(a1 + 64)];
}

void sub_100096EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100096F0C(uint64_t a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v4 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 deleteAssetIDs:v3];
}

void sub_100096FAC(uint64_t a1)
{
  v5 = [*(*(*(a1 + 48) + 8) + 40) storePresenter];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) presenterSceneController];
  v4 = [v3 newShowURLTransaction];
  [v5 storeShowBookWithStoreID:v2 resourceType:3 transaction:v4];
}

void sub_1000972B8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

void sub_10009750C(uint64_t a1, void *a2)
{
  v3 = [a2 url];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000975C4;
  block[3] = &unk_100A03A30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000975C4(uint64_t a1)
{
  v2 = [*(a1 + 32) absoluteString];
  v3 = [v2 lastPathComponent];
  v4 = [v3 stringByDeletingPathExtension];

  [*(a1 + 40) showNotEnoughMemAlertWithTransaction:*(a1 + 48) name:v4];
}

void sub_100097B54(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 deleteAssets:v3 exhaustive:0];
}

void sub_100097BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetProvider];
  v6 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  [v2 deleteAssets:v3 exhaustive:0];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_ICLOUD_USAGE"];
  [v4 openSensitiveURL:v5 withOptions:0];
}

void sub_100097EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100097FA4;
  block[3] = &unk_100A04DF8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100097FA4(uint64_t a1)
{
  [*(a1 + 32) _presentItem:*(a1 + 40) transaction:*(a1 + 48) host:0 source:0 options:*(a1 + 56)];
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100098514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100098614;
  v12[3] = &unk_100A039C0;
  v13 = v3;
  v11 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v11;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v10 = v3;
  [v4 commit:v12];
}

void sub_100098614(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) minifiedPresenter];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009878C;
    v12[3] = &unk_100A03440;
    v7 = *(a1 + 32);
    v13 = vextq_s8(v7, v7, 8uLL);
    [v2 minifiedPresenterPrepareToOpen:v7.i64[0] animated:0 completion:v12];
  }

  v3 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v4 = [*(a1 + 40) _largeCoverViewControllerForBook:*(a1 + 48) options:*(a1 + 56) transaction:*(a1 + 64) minifiedPresenter:*(a1 + 32) holdAnimationAssertion:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000987E0;
  v8[3] = &unk_100A058B8;
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 56);
  [v4 get:v8];
}

void sub_10009878C(uint64_t a1)
{
  v2 = [*(a1 + 32) minifiedPresenter];
  [v2 minifiedPresenterOpen:*(a1 + 40)];
}

void sub_1000987E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000988A8;
  v6[3] = &unk_100A03C78;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 commit:v6];
}

void sub_1000988C4(id *a1)
{
  v2 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v3 = [BKAssetID identifierWithAssetID:a1[4]];
  v4 = [a1[5] _largeCoverViewControllerForAssetIdentifier:v3 download:1 options:a1[6] minifiedPresenter:0 holdAnimationAssertion:v2 withTransaction:a1[7]];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100098A18;
  v9[3] = &unk_100A05930;
  v5 = a1[7];
  v6 = a1[6];
  *&v7 = a1[4];
  *(&v7 + 1) = a1[5];
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v12 = a1[8];
  [v4 get:v9];
}

void sub_100098A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100098B24;
  v12[3] = &unk_100A05908;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v11;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v13 = v9;
  v14 = v8;
  v15 = *(a1 + 64);
  v16 = v3;
  v10 = v3;
  [v4 commit:v12];
}

void sub_100098B24(uint64_t a1)
{
  kdebug_trace();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100098D9C;
  v21[3] = &unk_100A03440;
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v2 = objc_retainBlock(v21);
  v3 = [*(a1 + 48) currentAssetPresentersForSingleSceneWithTransaction:*(a1 + 56)];
  v4 = [v3 lastObject];

  v5 = [*(a1 + 48) _viewForCardOverlayFromOptions:*(a1 + 64)];
  v6 = *(a1 + 48);
  if (v4)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100098E9C;
    v15[3] = &unk_100A05240;
    v15[4] = v6;
    v16 = *(a1 + 72);
    v17 = *(a1 + 56);
    v18 = v5;
    v19 = *(a1 + 32);
    v20 = v2;
    v7 = v2;
    [v6 _closePresenter:v4 animated:v5 == 0 completion:v15];

    v8 = v16;
  }

  else
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100098F9C;
    v13[3] = &unk_100A03920;
    v14 = v2;
    v12 = v2;
    [v6 _presentViewController:v9 transaction:v10 animated:1 overlayView:v5 options:v11 completion:v13];
    v8 = v14;
  }

  kdebug_trace();
}

void sub_100098D9C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"BKBookPresentingEphemeral"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    +[BKLibraryManager defaultManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100098E88;
    v7 = v6[3] = &unk_100A053A8;
    v4 = *(a1 + 40);
    v8 = v4;
    v5 = v7;
    [v5 resolveToLocalAssetWithAssetID:v4 completion:v6];
  }
}

void sub_100098E9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100098F50;
  v6[3] = &unk_100A03920;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 _presentViewController:v2 transaction:v3 animated:1 overlayView:v4 options:v5 completion:v6];
}

void sub_100098F50(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100098F9C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10009A4F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKLibraryManager fetchRequestForRecentlyEngaged];
  v23 = @"assetID";
  v5 = [NSArray arrayWithObjects:&v23 count:1];
  [v4 setPropertiesToFetch:v5];

  v6 = +[NSMutableArray array];
  v21 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v21];
  v8 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) assetID];
        [v6 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = objc_retainBlock(*(a1 + 32));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v6);
  }
}

void sub_10009A984(uint64_t a1)
{
  v2 = BCCurrentBookLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished setting up recent books provider. Issuing a one time startup block to look at seeding and purging.", buf, 2u);
  }

  v3 = +[BKAppDelegate delegate];
  v4 = [v3 appLaunchCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009AA7C;
  v5[3] = &unk_100A03560;
  v5[4] = *(a1 + 32);
  [v4 appLaunchCoordinatorPerformWhenLaunched:@"RecentBooksProvider BookReadingTimeTracker Init" block:v5];
}

void sub_10009AA7C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009AB08;
  block[3] = &unk_100A03560;
  block[4] = *(a1 + 32);
  if (qword_100AF74C0 != -1)
  {
    dispatch_once(&qword_100AF74C0, block);
  }
}

void sub_10009AB08(uint64_t a1)
{
  v2 = +[BCBookReadingTimeTracker sharedInstance];
  [v2 purgeRecentBooks];
  [v2 seedRecentBooksList:*(a1 + 32)];
}

void sub_10009B164(uint64_t a1)
{
  [*(a1 + 32) presenterVisibleViewControllerWillChangeAnimated:*(a1 + 64)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009B220;
  v6[3] = &unk_100A041D8;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 64);
  [v2 presentViewController:v3 animated:v4 completion:v6];
}

id sub_10009B220(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 presenterVisibleViewControllerDidChangeAnimated:v5];
}

void sub_10009B3A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009B44C;
  v5[3] = &unk_100A041D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 dismissViewControllerAnimated:v3 completion:v5];
}

id sub_10009B44C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);

  return [v4 presenterVisibleViewControllerDidChangeAnimated:v5];
}

void sub_10009BD00(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsController];
  [v1 refreshSessionDataIfActive];
}

void sub_10009C4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009C538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v7 = WeakRetained;
    v4 = [WeakRetained analyticsController];
    v5 = [v7 mainLibrary];
    v6 = [v7 analyticsSessionAssertion];
    [v7 startInitialAppStateQueryWithSessionStartTime:v3 analyticsController:v4 libraryAssetProvider:v5 analyticsSessionAssertion:v6];

    WeakRetained = v7;
  }
}

void sub_10009C5E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained analyticsController];
  v2 = [v1 applicationTracker];

  [v2 popOrientationData];
  if ([v2 optedIn])
  {
    [v2 pushOrientationDataFromFile:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:355];
  }
}

void sub_10009CA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10009CAE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained analyticsBackgroundTaskIdentifier];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    *(*(v6 + 8) + 24) = v4;
    if (*(*(*v5 + 8) + 24) != UIBackgroundTaskInvalid)
    {
      v7 = BALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10078BE48();
      }

      v8 = +[UIApplication sharedApplication];
      [v8 endBackgroundTask:*(*(*v5 + 8) + 24)];

      [v3 setAnalyticsBackgroundTaskIdentifier:UIBackgroundTaskInvalid];
    }
  }
}

void sub_10009CEA4(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticsSessionAssertion];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = [*(a1 + 32) delegate];
  [v3 analyticsManagerForceEndSession:*(a1 + 32)];
}

void sub_10009CF1C(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticsController];
  v3 = [v2 waitForSessionEnd:10.0];

  if ((v3 & 1) == 0)
  {
    v4 = BALog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078BEC8();
    }
  }

  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 67109376;
    v13 = v6;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resetSessionWithCompletion: waitForSessionEnd completed. inSession: %d sessionEnded: %d", buf, 0xEu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D0AC;
  block[3] = &unk_100A05A50;
  v11 = v3;
  block[4] = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009D0AC(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(a1 + 56) == 1)
  {
    [*(a1 + 32) analyticsStartSession];
    v2 = [*(a1 + 32) delegate];
    [v2 analyticsManagerDidRestoreSession:*(a1 + 32)];
  }

  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_10009DE80(uint64_t a1)
{
  v2 = [*(a1 + 32) importingOperationsInFlight];
  v6 = [v2 allValues];

  v3 = [v6 valueForKey:@"asset"];
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v3, 0);
  }
}

void sub_10009E1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) importingOperationsInFlight];
  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = [v6 asset];
  if (v3)
  {
    v4 = objc_retainBlock(*(a1 + 48));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, v3, 0);
    }
  }
}

void sub_10009E414(uint64_t a1)
{
  v2 = [*(a1 + 32) path];
  v3 = [BLLibraryUtility identifierFromBookPath:v2 error:0];

  if (!v3)
  {
    sub_10078BF04();
  }

  v4 = [*(a1 + 40) libraryManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009E528;
  v8[3] = &unk_100A05AF0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v12 = v6;
  v11 = *(a1 + 32);
  v7 = v3;
  [v4 performBackgroundReadOnlyBlock:v8];
}

void sub_10009E528(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v5 = 0;
LABEL_11:
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = [*(a1 + 48) path];
    [v11 p_importBookWithAssetID:v12 srcPath:v13 completion:*(a1 + 56)];

    goto LABEL_12;
  }

  v4 = [*(a1 + 40) libraryManager];
  v5 = [v4 libraryAssetWithAssetID:*(a1 + 32) inManagedObjectContext:v3];

  if (!v5)
  {
    goto LABEL_11;
  }

  if (([v5 isLocal] & 1) == 0 && (objc_msgSend(v5, "isDownloading") & 1) == 0 && (objc_msgSend(v5, "isUbiquitousBook") & 1) == 0)
  {
    v6 = [v5 dataSourceIdentifier];
    v7 = [*(a1 + 40) identifier];
    v8 = [v6 isEqualToString:v7];

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v9 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKLibraryDataSourcePlistImporting: libraryAsset already exists, not importing.", buf, 2u);
  }

  v10 = [*(a1 + 40) libraryManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009E714;
  v14[3] = &unk_100A05AC8;
  v14[4] = *(a1 + 40);
  v16 = *(a1 + 56);
  v15 = *(a1 + 48);
  [v10 assetForLibraryAsset:v5 completion:v14];

LABEL_12:
}

void sub_10009E714(id *a1, void *a2)
{
  v10 = a2;
  v3 = [a1[4] libraryManager];
  v4 = [v10 assetID];
  v5 = +[NSDate date];
  [v3 updateLibraryAssetWithID:v4 withLastOpenDate:v5 completion:0];

  v6 = objc_retainBlock(a1[6]);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v10, 0);
  }

  v8 = a1[4];
  v9 = [a1[5] path];
  [v8 p_deletePath:v9];
}

void sub_10009E8EC(uint64_t a1)
{
  v17 = +[NSFileManager defaultManager];
  v2 = [v17 enumeratorAtPath:*(a1 + 32)];
  [v2 skipDescendants];
  v16 = [NSDate dateWithTimeIntervalSinceNow:-300.0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(a1 + 32) stringByAppendingPathComponent:*(*(&v26 + 1) + 8 * v5)];
        v7 = [v17 attributesOfItemAtPath:v6 error:0];
        objc_opt_class();
        v8 = [v7 objectForKeyedSubscript:NSFileCreationDate];
        v9 = BUDynamicCast();

        if (v9 && [v9 compare:v16] <= 0)
        {
          v22 = 0;
          v23 = &v22;
          v24 = 0x2020000000;
          v25 = 0;
          v10 = *(a1 + 40);
          v11 = [NSURL fileURLWithPath:v6];
          LODWORD(v10) = [v10 canImportURL:v11 openInPlace:0 options:0];

          if (v10)
          {
            v12 = [*(a1 + 40) ivarSerialQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10009EC10;
            block[3] = &unk_100A05B18;
            v13 = v6;
            v21 = &v22;
            v14 = *(a1 + 40);
            v19 = v13;
            v20 = v14;
            dispatch_sync(v12, block);
          }

          if ((v23[3] & 1) == 0)
          {
            [v17 removeItemAtPath:v6 error:0];
          }

          _Block_object_dispose(&v22, 8);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v3);
  }
}

void sub_10009EBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009EC10(uint64_t a1)
{
  v2 = [BLLibraryUtility identifierFromBookPath:*(a1 + 32) error:0];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 40) importingOperationsInFlight];
    v4 = [v3 objectForKeyedSubscript:v5];
    *(*(*(a1 + 48) + 8) + 24) = v4 != 0;

    v2 = v5;
  }
}

void sub_10009F4BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) importingOperationsInFlight];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_10009F5CC(uint64_t a1)
{
  v2 = [NSURL alloc];
  v3 = [*(a1 + 32) destinationFilePath];
  v4 = [*(a1 + 32) destinationFilePath];
  v5 = [v2 initFileURLWithPath:v3 isDirectory:{+[BKLibraryManager isDirectoryFileName:](BKLibraryManager, "isDirectoryFileName:", v4)}];

  v6 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BKLibraryDataSourcePlistImporting] extractOperationDidFinish with URL [%@]", buf, 0xCu);
  }

  v7 = [NSFileAccessIntent readingIntentWithURL:v5 options:1];
  v8 = objc_opt_new();
  v20 = v7;
  v9 = [NSArray arrayWithObjects:&v20 count:1];
  v10 = objc_opt_new();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009F7E4;
  v15[3] = &unk_100A05B68;
  v16 = v5;
  v17 = v7;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v18 = v11;
  v19 = v12;
  v13 = v7;
  v14 = v5;
  [v8 coordinateAccessWithIntents:v9 queue:v10 byAccessor:v15];
}

void sub_10009F7E4(id *a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10078BFB4(a1, v4);
  }

  if (v3)
  {
    v5 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10078C030(a1, v3, v5);
    }
  }

  else
  {
    v6 = +[AEPluginRegistry sharedInstance];
    v7 = [a1[5] URL];
    v5 = [v6 pluginForURL:v7];

    v8 = [a1[5] URL];
    v40 = [v5 helperForURL:v8 withOptions:0];

    objc_opt_class();
    v9 = [a1[6] userContext];
    v10 = BUDynamicCast();

    v11 = [v10 contentType];
    v12 = [v10 asset];
    v13 = [v10 assetID];
    [v12 setAssetID:v13];

    v14 = [v10 temporaryAssetID];
    [v12 setTemporaryAssetID:v14];

    [v12 setContentType:{objc_msgSend(v10, "contentType")}];
    v15 = [a1[5] URL];
    [v12 setUrl:v15];

    v16 = +[NSDate date];
    [v12 setDataSourceInsertionDate:v16];

    [v12 setState:1];
    if (v11 != 3)
    {
      v17 = [a1[6] destinationFilePath];
      v18 = [v17 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

      v19 = [NSDictionary dictionaryWithContentsOfFile:v18];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 objectForKeyedSubscript:@"itemId"];
        v22 = [v21 stringValue];
        [v12 setStoreID:v22];

        v23 = [v20 objectForKeyedSubscript:@"isSample"];
        [v12 setSample:{objc_msgSend(v23, "BOOLValue")}];
      }
    }

    if (v40)
    {
      v38 = [v12 assetID];
      if (v11 == 3)
      {
        v24 = 0;
      }

      else
      {
        v24 = [v40 helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:0];
      }

      if (![(__CFString *)v24 length])
      {
        v25 = [a1[6] destinationFilePath];
        v26 = [v25 lastPathComponent];
        v27 = [v26 stringByDeletingPathExtension];

        v24 = v27;
      }

      if ([(__CFString *)v24 length])
      {
        [v12 setTitle:v24];
        if (v11 == 3 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          if ([(__CFString *)v24 hasPrefix:@".com.apple.UIKit.ItemProvider."])
          {

            v24 = @"Untitled.pdf";
          }

          [v40 setMetadata:v24 forKey:AEHelperStringMetadataTitleKey];
        }
      }

      v39 = [v40 helperMetadataForKey:AEHelperStringMetadataAuthorKey needsCoordination:0];
      if ([v39 length])
      {
        [v12 setAuthor:v39];
      }

      v37 = [v40 helperMetadataForKey:AEHelperStringMetadataLanguageKey needsCoordination:0];
      v36 = [v40 helperMetadataForKey:AEHelperStringMetadataPageProgressionKey needsCoordination:0];
      v28 = [a1[7] metadataCache];
      [v28 saveTitle:v24 author:v39 genre:0 language:v37 pageProgressionDirection:v36 forAssetID:v38];

      v29 = [v12 sortTitle];
      v30 = [v29 length] == 0;

      if (v30)
      {
        v31 = [v12 title];
        [v12 setSortTitle:v31];
      }

      v32 = +[NSDate date];
      [v12 setPurchaseDate:v32];

      objc_initWeak(&location, a1[7]);
      v33 = [a1[7] plistWriter];
      v48 = v12;
      v34 = [NSArray arrayWithObjects:&v48 count:1];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10009FE4C;
      v41[3] = &unk_100A05B40;
      objc_copyWeak(&v46, &location);
      v35 = v38;
      v42 = v35;
      v43 = v12;
      v44 = v10;
      v45 = a1[6];
      [v33 addPlistAssets:v34 completion:v41];

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10009FE20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_10009FE4C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v3 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = [a1[5] url];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[BKLibraryDataSourcePlistImporting] now calling the reloadCounterpart for asset with assetID/URL [%@ | %@]", buf, 0x16u);
  }

  v6 = [WeakRetained reloadCounterpartHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  if ([a1[6] isZipArchive])
  {
    v8 = [WeakRetained libraryManager];
    [v8 libraryDataSource:WeakRetained removedAsset:a1[5]];
  }

  v9 = [a1[6] importCompletionBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, a1[5], 0);
  }

  v11 = [WeakRetained ivarSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A0044;
  block[3] = &unk_100A03A30;
  block[4] = WeakRetained;
  v13 = a1[4];
  v14 = a1[7];
  dispatch_async(v11, block);
}

void sub_1000A0044(uint64_t a1)
{
  v2 = [*(a1 + 32) importingOperationsInFlight];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) sourceFilePath];
  [v3 p_deletePath:v4];
}

void sub_1000A048C(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) userContext];
  v3 = BUDynamicCast();

  v4 = [v3 asset];
  v5 = [v4 url];

  if (v5)
  {
    v13 = NSURLErrorKey;
    v6 = [v4 url];
    v14 = v6;
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  v7 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:512 userInfo:v5];
  v8 = [v3 importCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v7);
  }

  v10 = [*(a1 + 40) importingOperationsInFlight];
  [v10 setObject:0 forKeyedSubscript:*(a1 + 48)];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) sourceFilePath];
  [v11 p_deletePath:v12];
}

void sub_1000A06D4(uint64_t a1)
{
  v1 = +[IMLibraryPlist purchasesRepositoryPath];
  v2 = [NSURL URLWithString:v1];
  v21 = [v2 URLByResolvingSymlinksInPath];

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v3 = +[NSFileManager defaultManager];
  v43[0] = NSURLIsDirectoryKey;
  v43[1] = NSURLFileProtectionKey;
  v4 = [NSArray arrayWithObjects:v43 count:2];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000A0B34;
  v33[3] = &unk_100A05B90;
  v33[4] = &v34;
  v5 = [v3 enumeratorAtURL:v21 includingPropertiesForKeys:v4 options:7 errorHandler:v33];

  v26 = [*(a1 + 32) _hasCleanedUpFileProtectionOnImportedFiles];
  v25 = [*(a1 + 32) _hasCleanedUpBackupAttributeOnImportedFiles];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v7)
  {
    v8 = *v30;
    v22 = 1;
    v24 = 1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v27 = 0;
        v28 = 0;
        v11 = [v10 getResourceValue:&v28 forKey:NSURLIsDirectoryKey error:&v27];
        v12 = v28;
        v13 = v27;
        if (v11)
        {
          if (([v12 BOOLValue] & 1) == 0)
          {
            if ((v26 & 1) == 0)
            {
              v24 &= [*(a1 + 32) _cleanupFileProtectionOnItemAtURL:v10];
            }

            if ((v25 & 1) == 0)
            {
              v14 = [v10 path];
              v15 = [BKAssetUtilities contentTypeForPath:v14];

              if (v15 == 3)
              {
                v22 &= [*(a1 + 32) _cleanupBackupAttributeOnItemAtURL:v10];
              }
            }
          }
        }

        else
        {
          *(v35 + 24) = 1;
          v16 = BCIMLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = v10;
            v40 = 2112;
            v41 = v13;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "error checking is directory on %@: %@", buf, 0x16u);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v7);
    v17 = v24 ^ 1;
    v18 = v22 ^ 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  if ((v35[3] & 1) == 0)
  {
    v19 = +[NSUserDefaults standardUserDefaults];
    v20 = v19;
    if (((v26 | v17) & 1) == 0)
    {
      [v19 setBool:1 forKey:@"BKPlistImportingHasCheckedFileProtection"];
    }

    if (((v25 | v18) & 1) == 0)
    {
      [v20 setBool:1 forKey:@"BKPlistImportingHasCheckedBackupAttribute"];
    }
  }

  _Block_object_dispose(&v34, 8);
}

uint64_t sub_1000A0B34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCIMLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10078C160();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  return 1;
}

void sub_1000A1364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A1380(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_retainBlock(a1[5]);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, v5, 0);
    }
  }

  else
  {
    v9 = BKLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 141558530;
      v18 = 1752392040;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to get cover image from QuickLook for url %{mask.hash}@ (error: %@), falling back on plugin registry...", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A1560;
    v13[3] = &unk_100A05BE0;
    v12 = a1[4];
    v15 = a1[5];
    v14 = a1[4];
    objc_copyWeak(&v16, a1 + 6);
    [WeakRetained _pluginRegistryCoverImageFromURL:v12 completion:v13];

    objc_destroyWeak(&v16);
  }
}

void sub_1000A1560(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, v5, 0);
    }
  }

  else
  {
    v9 = BKLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 141558530;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to get cover image from plugin registry for url %{mask.hash}@ (error: %@), falling back on ImageIO...", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = *(a1 + 32);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000A1714;
    v13[3] = &unk_100A05BB8;
    v14 = v12;
    v15 = *(a1 + 40);
    [WeakRetained _imageIOCoverImageFromURL:v14 completion:v13];
  }
}

void sub_1000A1714(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10078C48C(a1, v6, v7);
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5, v6);
  }
}

void sub_1000A1924(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v7 = [v8 UIImage];
    v6[2](v6, v7, v5);
  }
}

void sub_1000A1AC0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v5)
  {
    if (v3)
    {
      v3[2](v3, v5, 0);
    }
  }

  else if (v3)
  {
    v4 = [NSError errorWithDomain:@"BKAssetCoverImageDomain" code:1001 userInfo:0];
    (v3)[2](v3, 0, v4);
  }
}

void sub_1000A1F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A1F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_1000AC6E8();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 134218242;
      v12 = [v3 code];
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received error attempting to acquire slot: {c=%ld, (%@)}", buf, 0x16u);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A214C;
    v9[3] = &unk_100A03440;
    v9[4] = WeakRetained;
    v10 = v3;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Slot acquisition was successful!", buf, 2u);
    }

    v7 = [WeakRetained completion];
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
    }

    [WeakRetained setCompletion:0];
  }
}

void sub_1000A2394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A23D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v3 length])
    {
      v5 = sub_1000AC6E8();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempting to transfer device slot.", buf, 2u);
      }

      v6 = objc_alloc_init(BKAcquireSlotRequest);
      [WeakRetained setAcquireSlotRequest:v6];

      v7 = [WeakRetained acquireSlotRequest];
      [v7 setAdditionalParams:v3];

      v8 = [WeakRetained acquireSlotRequest];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000A254C;
      v10[3] = &unk_100A04A50;
      v10[4] = WeakRetained;
      [v8 performRequestWithResponseHandler:v10];
    }

    else
    {
      v9 = [WeakRetained completion];
      v8 = v9;
      if (v9)
      {
        (*(v9 + 16))(v9);
      }

      [WeakRetained setCompletion:0];
    }
  }
}

void sub_1000A254C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000AC6E8();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v12 = 134218242;
    *&v12[4] = [v3 code];
    *&v12[12] = 2112;
    *&v12[14] = v3;
    v6 = "Transferring device slot failed with error: {c=%ld, (%@)}";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v12 = 0;
    v6 = "Transferring device slot was successful.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v7, v8, v6, v12, v9);
LABEL_7:

  v10 = [*(a1 + 32) completion];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10);
  }

  [*(a1 + 32) setCompletion:{0, *v12, *&v12[16]}];
}

void sub_1000A287C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A289C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained completion];

  if (v4)
  {
    v4[2]();
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setCompletion:0];
}

uint64_t sub_1000A2B48(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == *(result + 48) && *(v1 + 24) == *(result + 52))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void sub_1000A2D3C(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained startTest];
}

void *sub_1000A2E2C(void *result)
{
  v2 = result[4];
  v3 = *(v2 + 8);
  if (v3 == 3)
  {
    *(v2 + 8) = 2;
  }

  else if (!v3)
  {
    v4 = result;
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v6 = [WeakRetained onStart];

    if (v6)
    {
      v7 = objc_loadWeakRetained((v4[4] + 16));
      v8 = [v7 onStart];
      v8[2]();
    }

    v9 = v4[4];

    return [v9 runTest];
  }

  return result;
}

void sub_1000A2F7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    *(v1 + 8) = 3;
  }

  else if (v2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    [WeakRetained terminateTest];

    v5 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v6 = [v5 onIdle];

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v8 = [v7 onIdle];
      v8[2]();
    }

    *(*(a1 + 32) + 8) = 0;
  }
}

void *sub_1000A31C0(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 8);
  if (v3 == 3)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    [WeakRetained terminateTest];

    v12 = objc_loadWeakRetained((v1[4] + 16));
    v13 = [v12 onTestFinished];

    if (v13)
    {
      v14 = objc_loadWeakRetained((v1[4] + 16));
      v15 = [v14 onTestFinished];
      v15[2]();
    }

    v16 = v1[4];

    return [v16 fromStoppingToIdle];
  }

  else if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((v2 + 16));
    [v4 terminateTest];

    v5 = objc_loadWeakRetained((v1[4] + 16));
    v6 = [v5 onTestFinished];

    if (v6)
    {
      v7 = objc_loadWeakRetained((v1[4] + 16));
      v8 = [v7 onTestFinished];
      v8[2]();
    }

    v9 = objc_loadWeakRetained((v1[4] + 16));
    [v9 removeTestFromQueue];

    v10 = v1[4];

    return [v10 runTest];
  }

  return result;
}

void *sub_1000A34C4(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(v2 + 8);
  if (v3 == 3)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    [WeakRetained terminateTest];

    v12 = objc_loadWeakRetained((v1[4] + 16));
    v13 = [v12 onTestError];

    if (v13)
    {
      v14 = objc_loadWeakRetained((v1[4] + 16));
      v15 = [v14 onTestError];
      v15[2]();
    }

    result = [v1[4] checkFatalError];
    if ((result & 1) == 0)
    {
      v16 = v1[4];

      return [v16 fromStoppingToIdle];
    }
  }

  else if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((v2 + 16));
    [v4 terminateTest];

    v5 = objc_loadWeakRetained((v1[4] + 16));
    v6 = [v5 onTestError];

    if (v6)
    {
      v7 = objc_loadWeakRetained((v1[4] + 16));
      v8 = [v7 onTestError];
      v8[2]();
    }

    result = [v1[4] checkFatalError];
    if ((result & 1) == 0)
    {
      v9 = objc_loadWeakRetained((v1[4] + 16));
      [v9 removeTestFromQueue];

      v10 = v1[4];

      return [v10 runTest];
    }
  }

  return result;
}

id sub_1000A4504(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000A453C(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = [v5 objectForKeyedSubscript:BSUIAssetKeyAssetID];
  v7 = BUDynamicCast();

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = *(a1 + 64);
    v9 = v8 >= a3;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v9 || v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }
  }

  else if ([*(a1 + 40) containsObject:v7])
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 3;
  }

  else
  {
    v10 = [*(a1 + 48) indexOfObject:v7];
    v12 = 2;
  }

  v15 = [v5 mutableCopy];
  v13 = [NSNumber numberWithInteger:v12];
  [v15 setObject:v13 forKeyedSubscript:@"searchItemStatus"];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [NSNumber numberWithInteger:v10];
    [v15 setObject:v14 forKeyedSubscript:@"previousMatchIndex"];
  }

  [*(a1 + 56) addObject:v15];
}

uint64_t sub_1000A4730()
{
  if (qword_100AF74D0 != -1)
  {
    sub_10078C5A4();
  }

  return qword_100AF74C8;
}

void sub_1000A4768(id a1)
{
  v1 = ColorSyncProfileCreateWithName(kColorSyncSRGBProfile);
  if (v1)
  {
    v2 = v1;
    v3 = ColorSyncProfileCopyData(v1, 0);
    if (v3)
    {
      v4 = v3;
      qword_100AF74C8 = CGColorSpaceCreateWithICCData(v3);
      CFRelease(v4);
    }

    CFRelease(v2);
  }
}

void sub_1000A4D20(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewControllerFromWhichToPresentAlerts];
  [v2 presentViewController:*(a1 + 40) animated:*(a1 + 56) completion:*(a1 + 48)];
}

void sub_1000A5C70(uint64_t a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 libraryAssetOnMainQueueWithAssetID:*(a1 + 32)];

  v4 = [v3 assetLogID];
  if (v3)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A5E04;
    v16[3] = &unk_100A05DA0;
    v5 = *(a1 + 40);
    v16[4] = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = v4;
    v19 = *(a1 + 56);
    [v5 appLaunchCoordinatorOnConditionMask:64 blockID:@"continue OpenBookActivity" performBlock:v16];
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = BCSceneLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 == 1)
    {
      if (v8)
      {
        sub_10078C774(a1 + 32, v7, v9, v10, v11, v12, v13, v14);
      }

      v15 = [*(a1 + 48) _lastOpenBookManager];
      [v15 clearAllLastOpenBooks];

      [*(a1 + 48) _handleStateRestorationCompleted];
      [*(a1 + 48) setHandledStateRestoration:0];
    }

    else
    {
      if (v8)
      {
        sub_10078C704(a1 + 32, v7, v9, v10, v11, v12, v13, v14);
      }
    }
  }
}

void sub_1000A60E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000A60F8(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A61A0;
    block[3] = &unk_100A033C8;
    block[4] = result[4];
    dispatch_async(&_dispatch_main_q, block);
    return [v2[5] removeEventually];
  }

  return result;
}

void sub_1000A6C1C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_1000A6E34(uint64_t a1)
{
  [*(a1 + 32) setWelcomeViewController:0];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1000A7220(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    sub_10078C7E4(v6);
  }

  if ([v5 count])
  {
    objc_opt_class();
    v8 = [*(a1 + 32) libraryManager];
    v9 = [v8 dataSourceWithIdentifier:@"com.apple.iBooks.plist.sample.stashed"];
    v10 = BUDynamicCast();

    if (v10)
    {
      v11 = *(a1 + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000A73E8;
      v17[3] = &unk_100A05E40;
      v12 = v10;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v18 = v12;
      v19 = v13;
      v20 = v14;
      v16.receiver = v11;
      v16.super_class = BKLibraryDataSourcePlistSampleBooks;
      objc_msgSendSuper2(&v16, "fetchAssetsWithIDs:completion:", v5, v17);
    }

    else
    {
      BCReportAssertionFailureWithMessage();
    }
  }

  else
  {
    v15 = objc_retainBlock(*(a1 + 40));
    v10 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, &__NSArray0__struct, 0);
    }
  }
}

void sub_1000A73E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v23 = a3;
  v26 = +[NSFileManager defaultManager];
  v25 = objc_opt_new();
  v24 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v30)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        v7 = BUDynamicCast();
        if (v7)
        {
          v8 = [v6 url];
          v9 = [v8 lastPathComponent];
          if ([v9 length])
          {
            v10 = [*(a1 + 32) directory];
            v11 = [NSURL fileURLWithPath:v10];
            v12 = [v11 URLByAppendingPathComponent:v9];

            v37 = 0;
            [v26 im_safeLinkItemAtURL:v8 toURL:v12 error:&v37];
            v13 = v37;
            v14 = v13;
            if (v13 && ![v13 bu_isFileExistsError])
            {
              v16 = BCIMLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v43 = "[BKLibraryDataSourcePlistSampleBooks fetchAssetIDsWithCompletion:]_block_invoke_2";
                v44 = 2080;
                v45 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/datasources/BKLibraryDataSourcePlistSampleBooks.m";
                v46 = 1024;
                LODWORD(v47) = 87;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
              }

              v17 = BCIMLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = [v14 description];
                v19 = [*(a1 + 32) directory];
                *buf = 138412802;
                v43 = v18;
                v44 = 2112;
                v45 = v6;
                v46 = 2112;
                v47 = v19;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "@Error %@ moving asset %@ to %@", buf, 0x20u);
              }
            }

            else
            {
              [v7 setUrl:v12];
              v15 = +[NSDate date];
              [v7 setPurchaseDate:v15];

              [v25 addObject:v7];
              [v24 addObject:v8];
            }
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v30);
  }

  if ([v25 count])
  {
    objc_initWeak(buf, *(a1 + 32));
    v20 = *(a1 + 32);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000A7900;
    v31[3] = &unk_100A05E18;
    v31[4] = *(a1 + 40);
    v32 = v25;
    v33 = v24;
    v34 = v26;
    objc_copyWeak(&v36, buf);
    v35 = *(a1 + 48);
    [v20 addPlistAssetsIfNeeded:v32 completion:v31];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_retainBlock(*(a1 + 48));
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, &__NSArray0__struct, 0);
    }
  }
}

void sub_1000A78DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location)
{
  objc_destroyWeak((v41 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A7900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7A00;
  v7[3] = &unk_100A05DF0;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  objc_copyWeak(&v11, (a1 + 72));
  v10 = *(a1 + 64);
  [v5 removePlistAssets:v6 completion:v7];

  objc_destroyWeak(&v11);
}

void sub_1000A7A00(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 isFileURL])
        {
          v9 = *(a1 + 40);
          v17 = 0;
          [v9 removeItemAtURL:v8 error:&v17];
          v10 = v17;
          if (v10)
          {
            v11 = BCIMLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v23 = "[BKLibraryDataSourcePlistSampleBooks fetchAssetIDsWithCompletion:]_block_invoke_2";
              v24 = 2080;
              v25 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/datasources/BKLibraryDataSourcePlistSampleBooks.m";
              v26 = 1024;
              v27 = 109;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
            }

            v12 = BCIMLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = v16;
              v23 = v8;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "@Error unlinking %@", buf, 0xCu);
            }
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained reload];

  v14 = objc_retainBlock(*(a1 + 48));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, &__NSArray0__struct, 0);
  }
}

void sub_1000A7D80(id a1)
{
  v1 = objc_alloc_init(BKUserActivityManager);
  v2 = qword_100AF74D8;
  qword_100AF74D8 = v1;
}

void sub_1000A7ED0(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[BKLibraryManager defaultManager];
  v5 = [v4 libraryAssetWithAssetID:a1[4] inManagedObjectContext:v3];

  v6 = [v5 isAudiobook];
  if (v5)
  {
    v7 = v6;
    v8 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.iBooks.assetReading"];
    v9 = [v5 title];
    [v8 setTitle:v9];

    v39[0] = @"assetID";
    v10 = [v5 assetID];
    v40[0] = v10;
    v39[1] = @"isAudiobook";
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isAudiobook]);
    v40[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v8 setUserInfo:v12];

    v13 = [v8 userInfo];
    v14 = [v13 allKeys];
    v15 = [NSSet setWithArray:v14];
    [v8 setRequiredUserInfoKeys:v15];

    [v8 setEligibleForPublicIndexing:1];
    [v8 setEligibleForSearch:1];
    if (v7)
    {
      [v8 setEligibleForHandoff:1];
      [v8 setEligibleForPrediction:1];
      v16 = a1[5];
      v17 = [v5 assetID];
      v18 = [v16 _persistentIdentifierForPlayAudiobookActivityWithAssetID:v17];
      [v8 setPersistentIdentifier:v18];
    }

    else
    {
      v19 = a1[5];
      v20 = [v5 assetID];
      v21 = [v19 _persistentIdentifierForOpenBookActivityAsset:v20];
      [v8 setPersistentIdentifier:v21];

      [v8 setEligibleForHandoff:0];
    }

    v22 = [v5 assetID];
    v23 = [v5 title];
    v24 = [v5 author];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000A8258;
    v31[3] = &unk_100A05F20;
    v25 = a1[5];
    v26 = a1[6];
    v32 = v8;
    v33 = v25;
    v38 = v7;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v26;
    v27 = v24;
    v28 = v23;
    v29 = v22;
    v30 = v8;
    [BKLibraryIndexer searchableItemAttributeSetForBook:v5 coverTimeout:v31 completion:0.0];
  }

  else
  {
    sub_10078C860();
  }
}

void sub_1000A8258(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setContentAttributeSet:v3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8360;
  v7[3] = &unk_100A05EF8;
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v13 = v4;
  v14 = *(a1 + 80);
  v8 = v5;
  v9 = *(a1 + 56);
  v10 = v3;
  v11 = *(a1 + 64);
  v12 = *(a1 + 32);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

void *sub_1000A8360(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[4] == *(a1 + 80))
  {
    if (*(a1 + 88) == 1)
    {
      v3 = [NSURL bu_urlWithAssetID:*(a1 + 40)];
      if ([*(a1 + 40) length] && (objc_msgSend(v3, "absoluteString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
      {
        if ([*(a1 + 48) length])
        {
          v6 = [*(a1 + 56) thumbnailURL];
          if (!v6 || (v7 = v6, [*(a1 + 56) thumbnailURL], v8 = objc_claimAutoreleasedReturnValue(), +[INImage imageWithURL:](INImage, "imageWithURL:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
          {
            v10 = BooksSiriLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_10078C898();
            }

            v9 = 0;
          }

          v11 = [INMediaItem alloc];
          v12 = [v3 absoluteString];
          v13 = [v11 initWithIdentifier:v12 title:*(a1 + 48) type:10 artwork:v9 artist:*(a1 + 64)];

          v14 = [INPlayMediaIntent alloc];
          v25 = v13;
          v15 = [NSArray arrayWithObjects:&v25 count:1];
          v16 = [v14 initWithMediaItems:v15 mediaContainer:0 playShuffled:&__kCFBooleanFalse playbackRepeatMode:1 resumePlayback:&__kCFBooleanFalse playbackQueueLocation:1 playbackSpeed:&off_100A434D0 mediaSearch:0];

          v17 = [[INInteraction alloc] initWithIntent:v16 response:0];
          v18 = [*(a1 + 72) persistentIdentifier];
          [v17 setGroupIdentifier:v18];

          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1000A86A8;
          v21[3] = &unk_100A05ED0;
          v22 = v16;
          v23 = *(a1 + 48);
          v24 = v9;
          v19 = v9;
          v20 = v16;
          [v17 donateInteractionWithCompletion:v21];
        }

        else
        {
          v13 = BooksSiriLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10078C908();
          }
        }
      }

      else
      {
        v13 = BooksSiriLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10078C980((a1 + 40), v3, v13);
        }
      }

      result = *(a1 + 32);
    }

    return [result setCurrentActivity:*(a1 + 72)];
  }

  return result;
}

void sub_1000A86A8(void *a1, void *a2)
{
  v3 = a2;
  v4 = BooksSiriLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078CA0C();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Donated shortcut for intent: %@", buf, 0xCu);
    }

    v5 = [[INShortcut alloc] initWithIntent:a1[4]];
    v7 = [[INRelevantShortcut alloc] initWithShortcut:v5];
    [v7 setWidgetKind:@"NanoBooksWidgetComplications"];
    v8 = [[INDefaultCardTemplate alloc] initWithTitle:a1[5]];
    [v8 setImage:a1[6]];
    [v7 setWatchTemplate:v8];
    v9 = +[INRelevantShortcutStore defaultStore];
    v14 = v7;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A88A4;
    v12[3] = &unk_100A04A50;
    v13 = v7;
    v11 = v7;
    [v9 setRelevantShortcuts:v10 completionHandler:v12];
  }
}

void sub_1000A88A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BooksSiriLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078CA7C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set relevant shortcut: %@.", &v7, 0xCu);
  }
}

void sub_1000A94E8(id *a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 libraryAssetOnMainQueueWithAssetID:a1[4]];

  if (v3)
  {
    v4 = [a1[5] sceneManager];
    v5 = [v4 sceneInfoPresentingAssetID:a1[4]];
    objc_initWeak(&location, a1[5]);
    if (v5)
    {
      v6 = a1[4];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000A9730;
      v13[3] = &unk_100A05F70;
      v14 = v6;
      v15 = v3;
      v16 = a1[6];
      objc_copyWeak(&v17, &location);
      [v4 requestSceneWithAssetID:v14 completion:v13];
      objc_destroyWeak(&v17);

      v7 = v14;
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000A9824;
      v8[3] = &unk_100A05F70;
      v9 = a1[4];
      v10 = v3;
      v11 = a1[6];
      objc_copyWeak(&v12, &location);
      [v4 requestPrimaryScene:v8];
      objc_destroyWeak(&v12);

      v7 = v9;
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v4 = BCSceneLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078CC1C();
    }
  }
}

void sub_1000A9708(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A9730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCSceneLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Asking scene controller to open book with assetID %@, book=%@, location:%@", &v9, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _continueOpenBookActivity:*(a1 + 32) sceneController:v3 location:*(a1 + 48)];
}

void sub_1000A9824(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BCSceneLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Asking scene controller to open book with assetID %@, book=%@, location:%@", &v9, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _continueOpenBookActivity:*(a1 + 32) sceneController:v3 location:*(a1 + 48)];
}

void sub_1000A9B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A9C0C;
  v10[3] = &unk_100A03A30;
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = *(a1 + 40);
  v6 = v5;
  v7 = objc_retainBlock(v10);
  v8 = v7;
  if (*(a1 + 48) == 1)
  {
    (v7[2])(v7);
  }

  else
  {
    v9 = dispatch_time(0, 1000000000);
    dispatch_after(v9, &_dispatch_main_q, v8);
  }
}

void sub_1000A9C0C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000A9CAC;
  v3[3] = &unk_100A033C8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 appLaunchCoordinatorPerformWhenLaunched:@"Invalide holdOpenAnimationAssertion" block:v3];
  [*(a1 + 48) setHoldAtLaunchScreenAssertion:0];
}

void sub_1000AB3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AB3C8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[4] ba_effectiveAnalyticsTracker];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000AB51C;
    v11[3] = &unk_100A06050;
    v8 = v5;
    v9 = a1[4];
    v12 = v8;
    v13 = v9;
    objc_copyWeak(&v17, a1 + 7);
    v14 = v7;
    v15 = a1[5];
    v16 = a1[6];
    v10 = v7;
    dispatch_async(&_dispatch_main_q, v11);

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10078CED4(a1, v6, v10);
    }
  }
}

void sub_1000AB51C(id *a1)
{
  v2 = [a1[4] buyParameters];
  v3 = [a1[4] offer];
  v4 = [v3 objectForKeyedSubscript:@"type"];

  v5 = a1[5];
  v21 = @"buyParams";
  if (v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = &stru_100A30A68;
  }

  v22 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  [v5 _recordMetricsForBuyButtonTap:1 actionDetails:v7 offerType:v4];

  v8 = [NSMutableString stringWithString:v6];
  v9 = [a1[5] assetPresenterAssetID];
  v10 = dispatch_get_global_queue(2, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AB744;
  v13[3] = &unk_100A06028;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  objc_copyWeak(&v20, a1 + 9);
  v16 = a1[6];
  v17 = a1[7];
  v18 = a1[4];
  v19 = a1[8];
  dispatch_async(v10, v13);

  objc_destroyWeak(&v20);
}

void sub_1000AB744(id *a1)
{
  v2 = [JSAApplication purchaseEventFieldsWithPageId:a1[4] pageType:@"AudiobookPreview" pageContext:0 topic:0];
  if ([a1[5] length] && objc_msgSend(v2, "length"))
  {
    if (([a1[5] hasSuffix:@"&"] & 1) == 0)
    {
      [a1[5] appendString:@"&"];
    }

    [a1[5] appendString:v2];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB8C8;
  block[3] = &unk_100A06028;
  v4 = a1[5];
  v5 = a1[4];
  objc_copyWeak(&v10, a1 + 10);
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
}

void sub_1000AB8C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) longLongValue]);
  v4 = [BLPurchaseRequest requestWithBuyParameters:v2 storeIdentifier:v3];

  [v4 setAudiobook:1];
  [v4 setSuppressNetworkEvaluatorDialogs:1];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained upSellData];

  v7 = objc_loadWeakRetained((a1 + 80));
  v8 = [v7 appAnalyticsAdditionalData];

  v9 = objc_opt_new();
  v10 = [*(a1 + 48) chainWithName:@"AudiobookMiniPlayer"];
  [v9 setObject:v10 forKeyedSubscript:@"BATracker"];

  if (v6)
  {
    [v9 setObject:v6 forKeyedSubscript:@"upSellData"];
  }

  if (v8 && _os_feature_enabled_impl())
  {
    v11 = [v8 dictionary];
    [v9 setObject:v11 forKeyedSubscript:BAAppAnalyticsAdditionalDataKey];
  }

  [v4 setAnalyticsInfo:v9];
  v12 = +[JSABridge sharedInstance];
  v13 = [v12 windowManager];

  v14 = +[BLDownloadQueue sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000ABB30;
  v15[3] = &unk_100A06000;
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  [v14 purchaseWithRequest:v4 uiManager:v13 completion:v15];
}

void sub_1000ABB30(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000ABC08;
  v6[3] = &unk_100A04FE8;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000ABC08(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_retainBlock(*(a1 + 56));
    if (v2)
    {
      v5 = v2;
      (*(v2 + 2))(v2, 0, *(a1 + 32));
      v2 = v5;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ABD14;
    v6[3] = &unk_100A041D8;
    v8 = *(a1 + 56);
    v9 = 1;
    v7 = *(a1 + 32);
    [v3 didPurchaseWithProductProfile:v4 completion:v6];
  }
}

void sub_1000ABD14(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 32));
    v2 = v3;
  }
}

void sub_1000AC2D8(id a1)
{
  v1 = [[BKSceneUtilities alloc] _init];
  v2 = qword_100AF74E8;
  qword_100AF74E8 = v1;
}

void sub_1000AC4E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCSceneLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078CFAC(v3, v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000AC694(id a1, NSError *a2)
{
  v2 = a2;
  v3 = BCSceneLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10078D024(v2, v3);
  }
}

id sub_1000AC6E8()
{
  if (qword_100AF7500 != -1)
  {
    sub_10078D09C();
  }

  v1 = qword_100AF74F8;

  return v1;
}

void sub_1000AC72C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.TransferLock");
  v2 = qword_100AF74F8;
  qword_100AF74F8 = v1;
}

void sub_1000AE78C(uint64_t a1)
{
  [*(a1 + 32) moveCoverToFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) bookshelfTintView];
  [v3 setAlpha:v2];

  [*(a1 + 32) setBookshelfAlpha:*(a1 + 80)];
  v4 = *(a1 + 88);
  v5 = [*(a1 + 32) coverShadowView];
  [v5 setAlpha:v4];
}

void sub_1000AEFF0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 bounds];
  CGRectMakeWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) contentClipView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = *(a1 + 32);
  [*(a1 + 40) transitionCoverFrame];
  [v12 moveCoverToFrame:?];
  [*(a1 + 32) contentFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [*(a1 + 32) contentView];
  [v21 setFrame:{v14, v16, v18, v20}];

  if ([*(a1 + 32) opening])
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = [*(a1 + 32) currentCoverView];
  [v23 setAlpha:v22];
}

id sub_1000AF124(uint64_t a1)
{
  [*(a1 + 32) coverFadeDuration];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [UIView animateWithDuration:v2 animations:v3 completion:?];
}

void sub_1000AF16C(uint64_t a1)
{
  [*(a1 + 32) revealDuration];
  v3 = v2;
  v4 = [*(a1 + 32) revealTimingFunction];
  [UIView animateWithDuration:v4 delay:0 timingFunction:*(a1 + 40) options:*(a1 + 48) animations:v3 completion:0.0];
}

id sub_1000AF80C(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [v2 setUserInteractionEnabled:1];

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 40) setHidden:0];
  v3 = *(a1 + 48);

  return [v3 completeTransition:1];
}

id sub_1000B15D4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    +[UIColor bc_booksKeyColor];
  }

  else
  {
    +[UIColor bc_booksTertiaryLabelColor];
  }
  v2 = ;
  v3 = [*(a1 + 32) selectIndicatorView];
  [v3 setTintColor:v2];

  [*(a1 + 32) setNeedsLayout];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

id sub_1000B22D0(uint64_t a1)
{
  v2 = [*(a1 + 32) viewIfLoaded];
  v3 = [v2 window];

  result = [*(a1 + 32) setNeedsUpdateViewMode];
  if (v3)
  {
    v5 = *(a1 + 32);

    return [v5 updateViewModeIfNeeded];
  }

  return result;
}

void sub_1000B234C(uint64_t a1)
{
  v2 = [*(a1 + 32) collection];
  v3 = [v2 resolvedSortMode];

  v4 = [*(a1 + 32) dataSourceAdaptor];
  v5 = [v4 supplementaryDataSource];
  v6 = [v5 sortMode];

  if (v6 != v3)
  {
    v7 = [*(a1 + 32) dataSourceAdaptor];
    v8 = [v7 supplementaryDataSource];
    [v8 setSortMode:v3];

    v9 = *(a1 + 32);

    [v9 sortModeChanged];
  }
}

void sub_1000B2420(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) navigationItem];
  [v3 setTitle:v2];

  v4 = [*(a1 + 32) dataSourceAdaptor];
  [v4 updateTitleHeaderView];
}

void sub_1000B4658(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    v7 = BUDynamicCast();
    [v7 setShouldAccessibilityFocusCollectionViewUponAppearing:1];

    if (_os_feature_enabled_impl())
    {
      objc_initWeak(&location, *(a1 + 32));
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000B4810;
      v16 = &unk_100A06238;
      objc_copyWeak(&v19, &location);
      v8 = *(a1 + 40);
      v9 = *(a1 + 32);
      v17 = v8;
      v18 = v9;
      v10 = [_UIViewControllerTransition zoomWithSourceViewProvider:&v13];
      [v5 _setPreferredTransition:{v10, v13, v14, v15, v16}];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    v11 = [*(a1 + 32) navigationController];
    [v11 pushViewController:v5 animated:1];

    [*(a1 + 32) _refreshSeriesContainer:*(a1 + 40)];
  }

  else
  {
    v12 = BKLibraryLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078D65C();
    }
  }
}

void sub_1000B47F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1000B4810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained coverAnimationHostSourceForItem:*(a1 + 32)];

  v4 = [v3 coverAnimationSourceView];
  if (!v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"BKBookOpenAnimatorRedViewFallbackEnabled"];

    if (v6)
    {
      v7 = [[UIView alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
      v8 = +[UIColor redColor];
      [v7 setBackgroundColor:v8];

      v9 = [*(a1 + 40) collectionView];
      [v9 addSubview:v7];

      v10 = v7;
      v11 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B49D0;
      block[3] = &unk_100A033C8;
      v17 = v10;
      v4 = v10;
      dispatch_after(v11, &_dispatch_main_q, block);
    }

    else
    {
      v4 = 0;
    }
  }

  v12 = [v4 window];
  if (v12)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

void sub_1000B4A9C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078D69C();
    }
  }

  if (v6 && [v6 BOOLValue])
  {
    v9 = [*(a1 + 32) managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B4BE4;
    v12[3] = &unk_100A033C8;
    v13 = *(a1 + 32);
    [v9 performBlock:v12];

    v10 = v13;
  }

  else
  {
    v10 = BKLibraryLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skip live fetching series info, because server or fallback said so.", v11, 2u);
    }
  }
}

void sub_1000B4BE4(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) seriesBooks];
  v3 = [v2 anyObject];
  v4 = BUDynamicCast();

  v5 = [v4 isAudiobook];
  v6 = &BKSeriesManagerSeriesTypeAudiobookSeries;
  if (!v5)
  {
    v6 = &BKSeriesManagerSeriesTypeBookSeries;
  }

  v14 = *v6;
  v7 = *(a1 + 32);
  v8 = v14;
  v9 = [v7 seriesID];
  v13 = v9;
  v10 = [NSArray arrayWithObjects:&v13 count:1];
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v12 = +[BKSeriesManager sharedManager];
  [v12 updateSeriesForSeriesAdamIDsWithTypes:v11 forceCheck:1];
}

void sub_1000B5870(id *a1, char a2)
{
  v4 = objc_retainBlock(a1[6]);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }

  if ([a1[4] isValid] && (a2 & 1) == 0)
  {
    v6 = [a1[5] coverAnimationHostSourceForItem:a1[4]];
    [v6 coverAnimationSourceFinalize];
  }
}

void sub_1000B5A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B5A58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || v9)
  {
    WeakRetained = BKLibraryLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_10078D770(v10);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = [WeakRetained im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
    v13 = [WeakRetained _transactionForStorePresentingAction];
    [v12 showStoreAsset:v13 asset:v8 options:&__NSDictionary0__struct];
  }

  v14 = objc_retainBlock(*(a1 + 32));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14);
  }
}

void sub_1000B5D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKBookSampleHelper defaultHelper];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) ba_effectiveAnalyticsTracker];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B5DF0;
  v7[3] = &unk_100A06300;
  v8 = *(a1 + 48);
  [v4 downloadSampleWithURL:v3 contentData:v5 tracker:v6 completion:v7];
}

void sub_1000B5DF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v5 || !v6)
  {
    if (v7)
    {
      (v7[2].isa)(v7, 0);
    }

    v8 = BKLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078D7F8();
    }
  }

  else if (v7)
  {
    (v7[2].isa)(v7, 1);
  }
}

uint64_t sub_1000B5EB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      return (*(*(result + 32) + 16))();
    }
  }

  return result;
}

void sub_1000B742C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = [*(a1 + 32) _isErrorFromUserCanceled:v7];
    v9 = [v7 domain];
    v10 = [v9 isEqualToString:AMSErrorDomain];

    v11 = BKLibraryLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &stru_100A30A68;
      *buf = 138412802;
      if ((v8 | v10))
      {
        v12 = @"NOT";
      }

      v17 = v12;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = v10 & 1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "DownloadBook: Will %@ display connection error alert with userCanceled:(%{BOOL}d) isServerErrorDomain:(%{BOOL}d)", buf, 0x18u);
    }

    if (((v8 | v10) & 1) == 0)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000B75E4;
      v14[3] = &unk_100A03440;
      v13 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      v15 = v13;
      dispatch_async(&_dispatch_main_q, v14);
    }
  }
}

void sub_1000B75E4(uint64_t a1)
{
  v3 = [*(a1 + 32) im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  v2 = [*(a1 + 32) _transactionForStorePresentingAction];
  [v3 displayOffineCannotDownloadErrorForContentType:objc_msgSend(*(a1 + 40) transaction:{"contentType"), v2}];
}

void sub_1000B7D4C(uint64_t a1)
{
  v2 = [*(a1 + 32) addSelectedBooksCompletion];
  if (v2)
  {
    v2[2](v2, 1);
  }

  [*(a1 + 32) setAddSelectedBooksCompletion:0];
}

void sub_1000B7EA8(uint64_t a1)
{
  v4 = _UISolariumEnabled();
  v5 = [UIBarButtonItem alloc];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 initWithBarButtonSystemItem:24 target:*(a1 + 40) action:"_dismissOverlayViewController:"];
  }

  else
  {
    v1 = +[NSBundle mainBundle];
    v2 = [v1 localizedStringForKey:@"Done" value:&stru_100A30A68 table:0];
    v7 = [v6 initWithTitle:v2 style:2 target:*(a1 + 40) action:"_dismissOverlayViewController:"];
  }

  v8 = [*(a1 + 32) navigationItem];
  [v8 setRightBarButtonItem:v7];

  if ((v4 & 1) == 0)
  {

    v7 = v1;
  }

  v9 = [[BSUINavigationController alloc] initWithRootViewController:*(a1 + 32)];
  [v9 setModalPresentationStyle:2];
  [*(a1 + 40) presentViewController:v9 animated:1 completion:0];
}

void sub_1000B86E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B8704(uint64_t a1)
{
  [*(a1 + 32) updateTabBarControllerForEditing:*(a1 + 40)];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  v5 = [*(a1 + 32) actionBarViewController];
  v4 = [v5 view];
  [v4 setAlpha:v3];
}

void sub_1000B8794(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) actionBarViewController];
  v2 = [v3 view];
  [v2 setHidden:(v1 & 1) == 0];
}

void sub_1000B87FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTransitioningToNewLayout:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 invalidateLayout];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 collectionView];
  v8 = [v7 viewWithTag:47];

  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B893C;
    v9[3] = &unk_100A044C8;
    v10 = v8;
    v11 = *(a1 + 40);
    [UIView transitionWithView:v10 duration:5242880 options:v9 animations:0 completion:0.3];
  }
}

void sub_1000B8BE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _dismissIfSupplementContentPDFPicker];
  [*(a1 + 32) openItemAtIndexPath:v4 completion:0];
}

void sub_1000B8DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = +[NSBundle mainBundle];
  v2 = [v3 localizedStringForKey:@"Use the containers rotor to access the actions toolbar. Double tap the done button to exit editing mode." value:&stru_100A30A68 table:0];
  [v1 addObject:v2];
}

void sub_1000B90D0(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_1000B9344(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_1000B951C(uint64_t a1)
{
  v3 = [[BSUINavigationController alloc] initWithRootViewController:*(a1 + 32)];
  [*(a1 + 40) setPresentedReadingListPopover:v3];
  [v3 setModalPresentationStyle:7];
  v2 = [v3 popoverPresentationController];
  [v2 setPermittedArrowDirections:1];
  [v2 setSourceItem:*(a1 + 48)];
  [*(a1 + 40) presentViewController:v3 animated:1 completion:*(a1 + 56)];
}

void sub_1000B9E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000B9E6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  [*(a1 + 32) convertPoint:v3 toView:{*(a1 + 56), *(a1 + 64)}];
  v5 = v4;
  v7 = v6;
  v14 = *(a1 + 40);
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v9 = [WeakRetained booksAtIndexPaths:v8];
  v10 = [WeakRetained collection];
  v11 = [NSValue valueWithCGPoint:v5, v7];
  v12 = sub_1000B9FC8(WeakRetained, v9, v10, v3, v11, 0);

  return v12;
}

id sub_1000B9FC8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BA444;
    v19[3] = &unk_100A06468;
    objc_copyWeak(&v25, &location);
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v16 = [UIDeferredMenuElement elementWithUncachedProvider:v19];
    v27 = v16;
    v17 = [NSArray arrayWithObjects:&v27 count:1];
    a1 = [UIMenu menuWithTitle:&stru_100A30A68 children:v17];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return a1;
}

void sub_1000BA1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000BA348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) count] == 1)
  {
    v3 = [WeakRetained collectionView];
    v4 = [*(a1 + 32) firstObject];
    v5 = [v3 cellForItemAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [WeakRetained booksAtIndexPaths:*(a1 + 32)];
  v7 = [WeakRetained collection];
  v8 = sub_1000B9FC8(WeakRetained, v6, v7, v5, 0, 0);

  return v8;
}

void sub_1000BA444(void **a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (WeakRetained)
  {
    sub_10078DFB8(a1, WeakRetained, v4);
  }

  else
  {
    v4[2](v4, &__NSArray0__struct);
  }
}

void sub_1000BAA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BAA8C(uint64_t a1, uint64_t a2)
{
  v4 = +[BAEventReporter sharedReporter];
  v5 = [*(a1 + 32) ba_effectiveAnalyticsTracker];
  [v4 emitLibraryDataEditEventWithTracker:v5 contentIDs:*(a1 + 40) actionType:3 result:a2];

  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000BAB78;
    v6[3] = &unk_100A03BB0;
    objc_copyWeak(&v7, (a1 + 48));
    v8 = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, v6);
    objc_destroyWeak(&v7);
  }
}

void sub_1000BAB78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:0 animated:(*(a1 + 40) & 1) == 0];
}

void sub_1000BADF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000BAE0C(uint64_t a1, uint64_t a2)
{
  v4 = +[BAEventReporter sharedReporter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained ba_effectiveAnalyticsTracker];
  v7 = [*(a1 + 32) valueForKey:@"assetID"];
  [v4 emitLibraryDataEditEventWithTracker:v6 contentIDs:v7 actionType:2 result:a2];

  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BAF20;
    block[3] = &unk_100A035D0;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v9);
  }
}

void sub_1000BAF20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doneForSelectedItems:0];
}

void sub_1000BB2F8(uint64_t a1)
{
  v5 = [*(a1 + 32) layout];
  v2 = [v5 mainHeaderMetrics];
  v3 = [v2 headerBackgroundColor];
  v4 = [*(a1 + 32) collectionView];
  [v4 setBackgroundColor:v3];
}

void sub_1000BB484(uint64_t a1)
{
  [*(a1 + 32) updateBarButtonsAnimated:1];
  v2 = [*(a1 + 32) collectionView];
  [v2 layoutIfNeeded];
}

void sub_1000BBD30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1000BC17C(uint64_t a1)
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BC2B0;
  v11[3] = &unk_100A06548;
  v12 = v3;
  v13 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v16 = *(a1 + 72);
  v10 = v2;
  [v10 fetchLibraryAssetsFromAssetIDs:v12 handler:v11];
}

void sub_1000BC2B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v6 = [*(a1 + 32) mutableCopy];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v3;
  v8 = v6;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v60 objects:v65 count:16];
  v10 = v4;
  if (v9)
  {
    v11 = v9;
    v12 = *v61;
    do
    {
      v13 = 0;
      do
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * v13);
        v15 = [v14 assetID];
        [v8 removeObject:v15];

        if ([v14 isValid])
        {
          [v4 addObject:v14];
          v16 = [v14 contentType];
          if (!v16)
          {
            v16 = (([v14 isStoreItem] & 1) != 0 || objc_msgSend(v14, "isSeriesItem"));
          }

          v17 = [NSNumber numberWithShort:v16];
          v18 = [v14 assetID];
          [v5 setObject:v17 forKeyedSubscript:v18];

          v4 = v10;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v11);
  }

  v19 = dispatch_group_create();
  if ([v4 count])
  {
    dispatch_group_enter(v19);
    v20 = [*(a1 + 40) collectionProvider];
    v21 = *(a1 + 48);
    v22 = [v4 objectAtIndexedSubscript:0];
    v23 = [v22 managedObjectContext];
    v24 = [v20 collectionWithCollectionID:v21 inManagedObjectContext:v23 error:0];

    v4 = v10;
    v25 = [*(a1 + 40) collectionController];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000BC804;
    v58[3] = &unk_100A03520;
    v59 = v19;
    [v25 addBooks:v10 toCollection:v24 forceToTop:0 completion:v58];
  }

  if ([v8 count])
  {
    v40 = v8;
    v41 = v4;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v8;
    v26 = [v42 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v55;
      do
      {
        v29 = 0;
        do
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(v42);
          }

          v30 = *(*(&v54 + 1) + 8 * v29);
          dispatch_group_enter(v19);
          v31 = [*(a1 + 40) collectionController];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_1000BC80C;
          v49[3] = &unk_100A06520;
          v32 = *(a1 + 48);
          v50 = *(a1 + 40);
          v51 = v30;
          v52 = v5;
          v53 = v19;
          [v31 addStoreID:v30 toCollectionID:v32 forceToTop:0 completion:v49];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v42 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v27);
    }

    v8 = v40;
    v4 = v41;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BC968;
  block[3] = &unk_100A05908;
  v45 = v5;
  v33 = *(a1 + 56);
  v34 = *(a1 + 64);
  v35 = *(a1 + 72);
  v36 = *(a1 + 48);
  *&v37 = v35;
  *(&v37 + 1) = v36;
  *&v38 = v33;
  *(&v38 + 1) = v34;
  v46 = v38;
  v47 = v37;
  v48 = *(a1 + 80);
  v39 = v5;
  dispatch_group_notify(v19, &_dispatch_main_q, block);
}

void sub_1000BC80C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BC8BC;
  v4[3] = &unk_100A064F8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 fetchLibraryAssetFromAssetID:v3 handler:v4];
}

void sub_1000BC8BC(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 contentType])
  {
    v3 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v6 contentType]);
    v4 = *(a1 + 32);
    v5 = [v6 assetID];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BC968(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        v6 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v18 + 1) + 8 * v6);
          v8 = +[NSUUID UUID];
          v9 = [v8 UUIDString];

          [*(a1 + 32) setObject:v7 forKeyedSubscript:v9];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }
  }

  v10 = [*(a1 + 48) presentingViewController];
  v11 = [*(a1 + 48) presentingViewController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BCB68;
  v12[3] = &unk_100A039C0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = v10;
  v17 = *(a1 + 72);
  [v11 dismissViewControllerAnimated:1 completion:v12];
}

void sub_1000BCB68(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [BSUINoticeViewController presentNoticeForAddingAssets:*(a1 + 32) collectionTitle:*(a1 + 40) collectionID:*(a1 + 48) sourceViewController:*(a1 + 56) options:0];
  }

  v2 = [*(a1 + 64) successfulAddFinishedBlock];
  if (v2)
  {
    v2[2]();
  }

  [*(a1 + 64) setSuccessfulAddFinishedBlock:0];
}

void sub_1000BCF84(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1);
    v1 = v2;
  }
}

void sub_1000BCFD4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1000BD0E4(uint64_t a1)
{
  [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD19C;
  v4 = v3[3] = &unk_100A06570;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  v2 = v4;
  [v2 requestPrimaryScene:v3];
}

void sub_1000BD19C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainFlowController];
  [v2 showLibraryAnimated:*(a1 + 48) completion:*(a1 + 40)];
}

void sub_1000BD2C8(uint64_t a1)
{
  [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD394;
  v4 = v3[3] = &unk_100A06598;
  v7 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v2 = v4;
  [v2 requestPrimaryScene:v3];
}

void sub_1000BD394(uint64_t a1)
{
  v2 = [*(a1 + 32) mainFlowController];
  [v2 showLibraryAnimated:*(a1 + 56) assetID:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1000BD4A0(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000BD548;
  v3[3] = &unk_100A065C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 requestPrimaryScene:v3];
}

void sub_1000BD548(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 rootBarCoordinator];

  v5 = [v4 selectedNavigationController];
  v6 = BUDynamicCast();

  [v6 bk_presentCollectionWithID:*(a1 + 32) replaceExistingPresentedCollection:*(a1 + 40)];
}

void sub_1000BD8EC(id a1)
{
  v1 = objc_alloc_init(BKSeriesCoverManager);
  v2 = qword_100AF7530;
  qword_100AF7530 = v1;
}

id sub_1000BDBB8(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = [*(v2 + 80) currentIdentifiers];
  [v3 unionSet:v4];

  v5 = *(a1 + 32);

  return [v5 _rebuild];
}

id sub_1000BDDA4(uint64_t a1)
{
  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _rebuild];
}

void sub_1000BDE7C(uint64_t a1)
{
  v2 = [*(a1 + 32) addedObjects];
  v3 = [v2 count];
  v4 = v3 != 0;

  if (v3)
  {
    v5 = *(*(a1 + 40) + 64);
    v6 = [*(a1 + 32) addedObjects];
    [v5 addObjectsFromArray:v6];
  }

  v7 = [*(a1 + 32) deletedObjects];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(*(a1 + 40) + 64);
    v10 = [*(a1 + 32) deletedObjects];
    [v9 addObjectsFromArray:v10];

    v4 = 1;
  }

  v11 = [*(a1 + 32) updatedObjects];
  v12 = [v11 count];

  if (v12)
  {
    v13 = *(*(a1 + 40) + 64);
    v14 = [*(a1 + 32) updatedObjects];
    [v13 addObjectsFromArray:v14];
  }

  else if (!v4)
  {
    return;
  }

  v15 = *(a1 + 40);

  [v15 _rebuild];
}

void sub_1000BE0B4(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  v4 = objc_opt_new();
  +[BKLibraryManager defaultManager];
  v25 = v29 = a1;
  v5 = [v25 libraryAssetsWithAssetIDsContainedInList:*(a1 + 32) tempAssetIDs:0 inManagedObjectContext:v3];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([v10 isValid])
        {
          v11 = [v10 seriesID];
          if ([v10 isContainer])
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v13 = [v10 seriesStackAssetIDs];
            if (v13)
            {
              v14 = +[BKLibraryManager defaultManager];
              v15 = [v14 libraryAssetsWithAssetIDsContainedInList:v13 tempAssetIDs:0 inManagedObjectContext:v3];
            }

            else
            {
              v15 = [BKLibraryManager seriesStackBooksForBook:v10];
            }

            v16 = [v15 valueForKey:@"objectID"];
            if ([v16 count] && objc_msgSend(v10, "isValid"))
            {
              v17 = [*(v29 + 40) objectForKeyedSubscript:v11];
              v18 = [v16 isEqualToArray:v17];

              if ((v18 & 1) == 0)
              {
                [v27 addObject:v11];
              }

              [*(v29 + 40) setObject:v16 forKeyedSubscript:v11];
              v3 = v26;
              v4 = v27;
            }

            else
            {
              [*(v29 + 40) removeObjectForKey:v11];
              [v4 addObject:v11];
            }

            v5 = v28;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v19 = [*(v29 + 40) copy];
  v20 = *(v29 + 48);
  v21 = *(v20 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BE474;
  block[3] = &unk_100A03440;
  block[4] = v20;
  v22 = v19;
  v33 = v22;
  dispatch_async(v21, block);
  if ([v4 count])
  {
    v23 = *(v29 + 48);
    v24 = *(v23 + 48);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000BE480;
    v30[3] = &unk_100A03440;
    v30[4] = v23;
    v31 = v4;
    dispatch_async(v24, v30);
  }

  kdebug_trace();
}

void sub_1000BE480(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 72);
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

        [*(*(&v7 + 1) + 8 * v6) seriesCoversForSeriesIdsChanged:{*(a1 + 40), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000BE768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BE784(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 24) & 1) == 0)
  {
    v7 = [*(v2 + 16) objectForKeyedSubscript:a1[5]];
    v4 = [v7 copy];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000BE7FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &_sBi16_WV_ptr;
  v5 = +[BKLibraryManager defaultManager];
  v54 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v54 count:1];
  v7 = [v5 libraryAssetsWithAssetIDsContainedInList:v6 tempAssetIDs:0 inManagedObjectContext:v3];

  v8 = [v7 firstObject];
  v9 = v8;
  if (v8)
  {
    v34 = a1;
    v36 = v7;
    v37 = v3;
    v33 = [v8 seriesStackAssetIDs];
    v35 = v9;
    v10 = [BKLibraryManager seriesStackBooksForBook:v9];
    v11 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      v15 = BCCoverCacheProcessingOptionsKey;
      v16 = BCCoverCacheAssetIDKey;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          v19 = [v4[265] processingOptionsFor:v18 coverEffectsEnvironment:0];
          v20 = [v18 assetID];
          v51[0] = v15;
          v21 = [NSNumber numberWithUnsignedShort:v19];
          v51[1] = v16;
          v52[0] = v21;
          v52[1] = v20;
          [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
          v23 = v22 = v4;
          [v11 addObject:v23];

          v4 = v22;
        }

        v13 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v13);
    }

    v24 = v33;
    if ([v11 count])
    {
      while (1)
      {
        v25 = [v11 count];
        if (v25 >= [v33 count])
        {
          break;
        }

        v26 = [v11 firstObject];
        [v11 addObject:v26];
      }
    }

    v27 = *(v34 + 40);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000BEC40;
    v44[3] = &unk_100A03A30;
    v44[4] = v27;
    v45 = *(v34 + 32);
    v28 = v11;
    v46 = v28;
    os_unfair_lock_lock(v27 + 2);
    sub_1000BEC40(v44);
    os_unfair_lock_unlock(v27 + 2);
    v29 = *(*(v34 + 40) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BEC88;
    block[3] = &unk_100A03A58;
    v30 = *(v34 + 48);
    v42 = v28;
    v43 = v30;
    v31 = v28;
    dispatch_async(v29, block);

    v7 = v36;
    v3 = v37;
    v9 = v35;
  }

  else
  {
    v32 = *(*(a1 + 40) + 48);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000BECE4;
    v39[3] = &unk_100A03920;
    v40 = *(a1 + 48);
    dispatch_async(v32, v39);
    v24 = v40;
  }
}
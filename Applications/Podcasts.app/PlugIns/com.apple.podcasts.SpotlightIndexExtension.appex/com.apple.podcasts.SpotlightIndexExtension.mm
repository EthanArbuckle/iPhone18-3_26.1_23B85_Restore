void sub_1000020D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000020F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002110(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) currentFetchRequest];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id *sub_100002344(id *result)
{
  if (result[7])
  {
    v1 = result;
    v2 = result[4];
    v3 = v2[2];
    v4 = v2[9];
    result = [result[5] count];
    if (v4 < result)
    {
      v6 = v3 - 1;
      *&v5 = 138412290;
      v22 = v5;
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(v1[4] + 9);
        if (!(v8 % 0x19))
        {
          v9 = _MTLogCategorySpotlight();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [NSNumber numberWithUnsignedInteger:*(v1[4] + 9)];
            v11 = [NSNumber numberWithInteger:v6];
            v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1[5] count]);
            v13 = v1[4];
            *buf = 138413058;
            v25 = v10;
            v26 = 2112;
            v27 = v11;
            v28 = 2112;
            v29 = v12;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Indexing] *** batch processing - #%@ in batch %@ with %@ entities [%@]", buf, 0x2Au);
          }

          v8 = *(v1[4] + 9);
        }

        v14 = [v1[5] objectAtIndex:{v8, v22}];
        v15 = [v1[4] externallyProcessedMOIDs];
        v16 = [v15 containsObject:v14];

        if ((v16 & 1) == 0)
        {
          v17 = v1[6];
          v23 = 0;
          v18 = [v17 existingObjectWithID:v14 error:&v23];
          v19 = v23;
          if (v18)
          {
            v20 = +[MTCoreSpotlightUtil indexPathForObjectType:batch:indexInBatch:](MTCoreSpotlightUtil, "indexPathForObjectType:batch:indexInBatch:", *(v1[4] + 1), *(v1[4] + 2), (*(v1[4] + 9) + 1) % [v1[5] count]);
            (*(v1[7] + 2))();
          }

          else
          {
            v20 = _MTLogCategorySpotlight();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v22;
              v25 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Indexing found a MOID with no backing object with error: %@", buf, 0xCu);
            }
          }

          [v1[6] refreshObject:v18 mergeChanges:0];
        }

        objc_autoreleasePoolPop(v7);
        v21 = ++*(v1[4] + 9);
        result = [v1[5] count];
      }

      while (v21 < result);
    }
  }

  return result;
}

uint64_t sub_100002860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 externallyProcessedMOIDs];
  v5 = [v3 objectID];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void sub_1000029C4(id a1)
{
  qword_10001A1F0 = dispatch_queue_create(0, 0);

  _objc_release_x1();
}

uint64_t sub_100002A00(uint64_t result)
{
  v1 = MTCoreSpotlightIndexBatchGeneratorNextDebugID;
  *(*(*(result + 32) + 8) + 24) = MTCoreSpotlightIndexBatchGeneratorNextDebugID;
  MTCoreSpotlightIndexBatchGeneratorNextDebugID = v1 + 1;
  return result;
}

void sub_100004298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000042B0(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [MTRecencyUtil upNextForPodcastUuid:v2 excludeExplicit:0 ctx:*(a1 + 40)];

  v4 = [v3 episodeUuid];
  v5 = [*(a1 + 32) nextEpisodeUuid];
  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) uuid];
    v8 = [v3 episodeUuid];
    [v3 modifiedDate];
    v14 = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v14, 0x20u);
  }

  v10 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v3 episodeUuid];
    v14 = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v14, 0x16u);
  }

  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0)
  {
    v12 = [*(a1 + 40) episodeForUuid:v4];
    v13 = [*(a1 + 40) episodeForUuid:v5];
    if ([v13 listenNowEpisode])
    {
      [v13 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v12 && ([v12 listenNowEpisode] & 1) == 0)
    {
      [v12 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v3 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }
}

void sub_1000046A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000046C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000046D8(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000048A0(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v3 = [*(a1 + 32) uuid];
  v4 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v3];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v8];
  v7 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;

  [v7 logAndThrow:0];
}

id sub_100004C38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004D08;
  v8[3] = &unk_100014680;
  v9 = v3;
  v5 = v3;
  v6 = [v4 mt_compactMap:v8];

  return v6;
}

void sub_100004DD8(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenIndexed])
  {
    v2 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[IndexAll] bailing.  already indexed...", &v15, 2u);
    }

    (*(*(a1 + 40) + 16))();
    return;
  }

  v3 = [*(a1 + 32) indexAllBatchGenerator];
  if (!v3 || (v4 = v3, [*(a1 + 32) indexAllBatchGenerator], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "finished"), v5, v4, (v6 & 1) != 0))
  {
    v7 = [*(a1 + 32) savedPartialUploadStateIndexPath];
    v8 = [[MTCoreSpotlightGlobalReindexer alloc] initWithStartingIndexPath:v7];
    [*(a1 + 32) setIndexAllBatchGenerator:v8];
    v9 = [*(a1 + 32) indexAllBatchGenerator];
    v10 = [v9 indexAllCompletions];
    v11 = objc_retainBlock(*(a1 + 40));
    [v10 addObject:v11];

    v12 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Indexing] *** scheduling indexAll in batches [%@] ***", &v15, 0xCu);
    }

    [*(a1 + 32) _onIndexingQueueHandleNextBatchOrUpdateRequest];
    goto LABEL_14;
  }

  v13 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[IndexAll] bailing.  already running...", &v15, 2u);
  }

  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) indexAllBatchGenerator];
    v8 = [v7 indexAllCompletions];
    v14 = objc_retainBlock(*(a1 + 40));
    [(MTCoreSpotlightGlobalReindexer *)v8 addObject:v14];

LABEL_14:
  }
}

void sub_10000515C(uint64_t a1)
{
  if ([*(a1 + 32) hasDeferredIndexAll])
  {
    v2 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, &v2->super, OS_LOG_TYPE_DEFAULT, "[Update] Dropping index request (reason '%@') since we haven't yet received the initial indexAllData", &v6, 0xCu);
    }
  }

  else
  {
    v2 = [[MTCSUpdateIndexRequest alloc] initWithReason:*(a1 + 40) entityLoadingBlock:*(a1 + 56) searchableIndex:*(a1 + 48) completion:*(a1 + 64)];
    v4 = [*(a1 + 32) updateIndexRequests];
    [v4 addObject:v2];

    v5 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Indexing] *** scheduling update [%@] ***", &v6, 0xCu);
    }

    [*(a1 + 32) _onIndexingQueueHandleNextBatchOrUpdateRequest];
  }
}

void sub_1000054E0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100005568;
  v2[3] = &unk_100014760;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v2];
}

void sub_100005788(uint64_t a1)
{
  v2 = [*(a1 + 32) entityLoadingBlock];
  v3 = v2[2](v2, *(a1 + 40));

  v4 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Indexing] *** handling update [BEGIN] [%@] ***", buf, 0xCu);
  }

  v6 = [*(a1 + 48) indexAllBatchGenerator];

  if (v6)
  {
    v7 = [v3 mt_compactMap:&stru_1000147C8];
    v8 = [*(a1 + 48) indexAllBatchGenerator];
    [v8 markUpdateUnnecessaryForObjectIDs:v7];
  }

  v9 = [*(a1 + 48) annotator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005960;
  v11[3] = &unk_100014840;
  v10 = *(a1 + 56);
  v11[4] = *(a1 + 48);
  v12 = v10;
  v13 = *(a1 + 32);
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v3 annotator:v9 completion:v11];
}

void sub_100005960(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005AEC;
  v10[3] = &unk_1000147F0;
  v11 = *(a1 + 48);
  [v4 searchableIndex:v5 indexSearchableItems:a2 completionHandler:v10];
  v6 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Indexing] *** handling update [DONE] [%@] ***", buf, 0xCu);
  }

  v8 = [*(a1 + 32) indexingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005B6C;
  v9[3] = &unk_100014818;
  v9[4] = *(a1 + 32);
  dispatch_async(v8, v9);
}

void sub_100005AEC(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    v3[2]();
  }
}

id sub_100005B6C(uint64_t a1)
{
  [*(a1 + 32) setHasIndexingOperationInProgress:0];
  v2 = *(a1 + 32);

  return [v2 _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

void sub_100005D50(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v17 = a2;
  v6 = a2;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [a1[4] annotator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005EA8;
  v12[3] = &unk_1000148E0;
  v9 = a1[5];
  v10 = a1[4];
  v13 = v9;
  v14 = v10;
  v15 = a1[6];
  v16 = v5;
  v11 = v5;
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v7 annotator:v8 completion:v12];
}

void sub_100005EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] && !objc_msgSend(*(a1 + 32), "finished"))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100005FA8;
    v7[3] = &unk_1000148B8;
    v7[4] = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    [v5 searchableIndex:v6 indexSearchableItems:v3 completionHandler:v7];
  }

  else
  {
    if ([*(a1 + 32) cancelled])
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    [*(a1 + 40) _didCompleteBatchProcessingBatchGenerator:*(a1 + 32) state:v4 error:0];
  }
}

void sub_100005FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);

    [v3 _didCompleteBatchProcessingBatchGenerator:v4 state:3 error:a2];
  }

  else
  {
    v5 = [v3 indexingQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000607C;
    v8[3] = &unk_100014788;
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(v5, v8);
  }
}

id sub_10000607C(uint64_t a1)
{
  if ([MTCoreSpotlightUtil indexInBatchForIndexPath:*(a1 + 32)]% 0x19)
  {
    [*(a1 + 40) savePartialUploadStateIndexPath:*(a1 + 32)];
  }

  [*(a1 + 40) setHasIndexingOperationInProgress:0];
  v2 = *(a1 + 40);

  return [v2 _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

id sub_1000061EC(uint64_t a1)
{
  v2 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56) - 1;
    if (v3 > 3)
    {
      v4 = @"inactive";
    }

    else
    {
      v4 = off_100014AB0[v3];
    }

    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Indexing] *** completed indexAll (%@) in batches [%@] ***", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) indexAllBatchGenerator];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    [*(a1 + 40) setIndexAllBatchGenerator:0];
  }

  [*(a1 + 40) _onQueuePerformCompletionsForGenerator:*(a1 + 32) error:*(a1 + 48)];
  [*(a1 + 40) setHasIndexingOperationInProgress:0];
  return [*(a1 + 40) _onIndexingQueueHandleNextBatchOrUpdateRequest];
}

void sub_1000065AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000665C;
    v6[3] = &unk_100014978;
    v7 = *(a1 + 48);
    [v3 indexSearchableItems:v4 completionHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void sub_100006740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) searchableIndex];
    v3 = [*(a1 + 40) allObjects];
    [v4 deleteSearchableItemsWithIdentifiers:v3 completionHandler:0];
  }
}

void sub_1000069B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000069D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000069F0(uint64_t a1)
{
  v2 = [*(a1 + 32) changesForEntityName:kMTPodcastEntityName];
  v3 = [v2 updatedObjectIDs];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [*(a1 + 32) changesForEntityName:kMTEpisodeEntityName];
  v6 = [v5 updatedObjectIDs];
  [v4 unionSet:v6];

  v7 = [*(a1 + 32) changesForEntityName:kMTPlaylistEntityName];
  v8 = [v7 updatedObjectIDs];
  [v4 unionSet:v8];

  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(*(a1 + 48) + 8) + 40) existingObjectWithID:*(*(&v19 + 1) + 8 * v14) error:0];
        if (v15)
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [v9 allObjects];
  v17 = [*(a1 + 40) annotator];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006C8C;
  v18[3] = &unk_1000149F0;
  v18[4] = *(a1 + 40);
  [MTCoreSpotlightUtil prepareSearchableItemsForObjectInArray:v16 annotator:v17 completion:v18];
}

void sub_100006C8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 searchableIndex];
  [v2 searchableIndex:v4 indexSearchableItems:v3 completionHandler:0];
}

void sub_100006DD0(uint64_t a1)
{
  v2 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Indexing] *** received indexAll request ***", buf, 2u);
  }

  [*(a1 + 32) _onQueueCancelCurrentReindexAll];
  [*(a1 + 32) clearHasBeenIndexed];
  [*(a1 + 32) clearPartialUploadState];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100006EC8;
  v5[3] = &unk_100014978;
  v6 = *(a1 + 48);
  [v3 indexAllDataWithSearchableIndex:v4 completionHandler:v5];
}

void sub_100006FDC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  v20 = a1;
  v21 = objc_alloc_init(NSMutableSet);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if ([v9 length] >= 2)
        {
          v10 = [v9 substringFromIndex:1];
          v11 = [v9 hasPrefix:@"p"];
          v12 = v2;
          if (v11 & 1) != 0 || (v13 = [v9 hasPrefix:@"e"], v12 = v3, (v13) || (v14 = objc_msgSend(v9, "hasPrefix:", @"s"), v12 = v21, v14))
          {
            [v12 addObject:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v16 = *(v20 + 40);
  v15 = *(v20 + 48);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007288;
  v24[3] = &unk_100014A40;
  v25 = v2;
  v26 = v3;
  v27 = v21;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100007520;
  v22[3] = &unk_100014A68;
  v23 = *(v20 + 56);
  v17 = v21;
  v18 = v3;
  v19 = v2;
  [v16 updateSearchableIndexWithReason:@"System Re-index request" searchableIndex:v15 entityLoadingBlock:v24 completion:v22];
}

id sub_100007288(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"%K IN %@", kPodcastFeedUrl, a1[4]];
  v5 = [MTCoreSpotlightUtil fetchRequestForIndexType:0 additionalPredicate:v4];
  v28[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodeGuid, a1[5]];
  v7 = [MTCoreSpotlightUtil fetchRequestForIndexType:1 additionalPredicate:v6];
  v28[1] = v7;
  v8 = [NSPredicate predicateWithFormat:@"%K IN %@", kPlaylistUuid, a1[6]];
  v9 = [MTCoreSpotlightUtil fetchRequestForIndexType:2 additionalPredicate:v8];
  v28[2] = v9;
  v10 = [NSArray arrayWithObjects:v28 count:3];

  v11 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v18 = [v3 executeFetchRequest:v17 error:&v22];
        v19 = v22;
        v20 = v19;
        if (v19)
        {
          [v19 logAndThrow:1];
        }

        if (v18)
        {
          [v11 addObjectsFromArray:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  return v11;
}

uint64_t sub_100007520(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10000827C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (!v2)
  {
    v2 = *(v1 + 56);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void sub_100008364(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: Setting active account: %@", &v4, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 56), *(a1 + 32));
}

void sub_100008550(uint64_t a1)
{
  if (([*(a1 + 32) hasFetchedInitialAccount] & 1) == 0)
  {
    [*(a1 + 32) _updateActiveAccount];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008604;
    block[3] = &unk_100014A68;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_100008968(uint64_t a1)
{
  v2 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MTAccountController: updating active account", v7, 2u);
  }

  v3 = [*(a1 + 32) _activeAccountBlocking];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = *(a1 + 40);
  if (v6 | v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    dispatch_async(&_dispatch_main_q, &stru_100014B08);
  }

  [*(a1 + 32) setActiveAccount:v3];
  [*(a1 + 32) setHasFetchedInitialAccount:1];
}

void sub_100008A54(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AccountDSIDChangedNotification" object:0];
}

void sub_100009088(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000913C;
    v5[3] = &unk_100014788;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_sync(v4, v5);
  }
}

void sub_100009148(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = objc_autoreleasePoolPush();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000922C;
  v6[3] = &unk_100014B58;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [MTCoreSpotlightUtil prepareSearchableItemForObject:v3 annotator:v5 completion:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_10000922C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_10000947C(id a1)
{
  qword_10001A1F8 = +[PFObjCCachingImageContentProviderBridge extensionBridge];

  _objc_release_x1();
}

uint64_t sub_100009560(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100009BF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 attributeSet];
  [v5 setThumbnailURL:v4];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 56) + 16);

  return v7();
}

void sub_10000A218(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) attributeSet];
    [v3 setThumbnailURL:v7];
  }

  else
  {
    v3 = +[NSDate now];
    v4 = [v3 dateByAddingTimeInterval:8640.0];
    v5 = [*(a1 + 32) attributeSet];
    [v5 setExpirationDate:v4];
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
}

CSSearchableItem __swiftcall AppCoreSpotlightEntityAnnotator.annotate(item:with:)(CSSearchableItem item, NSManagedObject with)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = sub_10000AE68();
    v11 = sub_10000AC94(&qword_10001A1B8, &type metadata accessor for EpisodeEntity);
    sub_10000AB88(&v9);
    v3 = with.super.isa;
    sub_10000AE58();
LABEL_9:
    sub_10000ABEC(&v9, v12);
    sub_10000AC04(v12, v12[3]);
    sub_10000AE98();
    sub_10000AC48(v12);
    goto LABEL_10;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = sub_10000AE28();
    v11 = sub_10000AC94(&qword_10001A1B0, &type metadata accessor for ShowEntity);
    sub_10000AB88(&v9);
    v4 = with.super.isa;
    sub_10000AE18();
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = sub_10000AE48();
    v11 = sub_10000AC94(&qword_10001A1A8, &type metadata accessor for ChannelEntity);
    sub_10000AB88(&v9);
    v5 = with.super.isa;
    sub_10000AE38();
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(&v10 + 1) = sub_10000AE88();
    v11 = sub_10000AC94(&qword_10001A1A0, &type metadata accessor for StationEntity);
    sub_10000AB88(&v9);
    v6 = with.super.isa;
    sub_10000AE78();
    goto LABEL_9;
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  sub_10000AAD8(&v9);
LABEL_10:

  return item.super.isa;
}

double sub_10000A890@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(a2 + 24) = sub_10000AE68();
    *(a2 + 32) = sub_10000AC94(&qword_10001A1B8, &type metadata accessor for EpisodeEntity);
    sub_10000AB88(a2);
    v4 = a1;
    sub_10000AE58();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *(a2 + 24) = sub_10000AE28();
      *(a2 + 32) = sub_10000AC94(&qword_10001A1B0, &type metadata accessor for ShowEntity);
      sub_10000AB88(a2);
      v6 = a1;
      sub_10000AE18();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *(a2 + 24) = sub_10000AE48();
        *(a2 + 32) = sub_10000AC94(&qword_10001A1A8, &type metadata accessor for ChannelEntity);
        sub_10000AB88(a2);
        v7 = a1;
        sub_10000AE38();
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          *(a2 + 24) = sub_10000AE88();
          *(a2 + 32) = sub_10000AC94(&qword_10001A1A0, &type metadata accessor for StationEntity);
          sub_10000AB88(a2);
          v8 = a1;
          sub_10000AE78();
        }

        else
        {
          *(a2 + 32) = 0;
          result = 0.0;
          *a2 = 0u;
          *(a2 + 16) = 0u;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000AAD8(uint64_t a1)
{
  v2 = sub_10000AB40(&qword_10001A198, &unk_10000E360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AB40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_10000AB88(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000ABEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000AC04(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000AC48(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000AC94(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AppCoreSpotlightEntityAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppCoreSpotlightEntityAnnotator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, "init");
}

id AppCoreSpotlightEntityAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCoreSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, "dealloc");
}
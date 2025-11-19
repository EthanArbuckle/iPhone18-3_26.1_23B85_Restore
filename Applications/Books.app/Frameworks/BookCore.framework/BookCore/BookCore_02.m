id sub_932E4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 adamId];

            if (v12)
            {
              v13 = [v11 adamId];
              [v4 addObject:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_9358C(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_93654;
  v6[3] = &unk_2CBC58;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  v9 = a2;
  dispatch_async(v4, v6);
}

void sub_93654(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_93714;
  v4[3] = &unk_2CBC58;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 performBlock:v4];
}

void sub_93714(uint64_t a1)
{
  v2 = [*(a1 + 32) _filteredAdamIDs:*(a1 + 40) withIntervalInDays:14.0];
  v3 = [*(a1 + 32) _filteredAdamIDs:*(a1 + 48) withIntervalInDays:*(a1 + 56)];
  if ([v2 count] || objc_msgSend(v3, "count"))
  {
    v9[0] = BKSeriesManagerAssetTypeBooks[0];
    v9[1] = BKSeriesManagerAssetTypeAudiobooks[0];
    v10[0] = v2;
    v10[1] = v3;
    v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v5 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_93888;
    block[3] = &unk_2C7BE8;
    block[4] = *(a1 + 32);
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void sub_93BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_93BE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_93C00(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_93CA8;
  v5[3] = &unk_2CBCA8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = a2;
  dispatch_async(v4, v5);
}

void sub_93CA8(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_93DF0;
  v8[3] = &unk_2CBC80;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v2 performBlockAndWait:v8];

  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v12[0] = BKSeriesManagerSeriesTypeBookSeries[0];
  v12[1] = BKSeriesManagerSeriesTypeAudiobookSeries;
  v5 = &__NSArray0__struct;
  if (!v4)
  {
    v4 = &__NSArray0__struct;
  }

  v6 = *(*(v3 + 8) + 40);
  if (v6)
  {
    v5 = v6;
  }

  v13[0] = v4;
  v13[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [*(a1 + 32) _updateSeriesForSeriesAdamIDsWithFilteredTypes:v7];
}

uint64_t sub_93DF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _filteredAdamIDs:*(*(*(a1 + 40) + 8) + 40) withIntervalInDays:14.0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _filteredAdamIDs:*(*(*(a1 + 48) + 8) + 40) withIntervalInDays:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 40) = v5;

  return _objc_release_x1(v5);
}

void sub_93F40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E81AC();
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = *(a1 + 32);
    [a2 unsignedIntegerValue];
    v8 = *(v9 + 16);
  }

  v8();
}

void sub_9421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_94254(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) catalogService];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v14[0] = BFMCatalogRequestRelationshipBooks;
  v14[1] = BFMCatalogRequestRelationshipAudiobooks;
  v14[2] = BFMCatalogRequestRelationshipGenres;
  v14[3] = BFMCatalogRequestRelationshipMappedSeries;
  v7 = [NSArray arrayWithObjects:v14 count:4];
  v8 = [BFMRequestMetadata alloc];
  v9 = [NSString stringWithFormat:@"%s", "BKSeriesManagerUpdater.m"];
  v10 = [v8 initWithFileID:v9 line:265];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_94414;
  v11[3] = &unk_2CBD70;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  [v4 fetchMixedSeriesWithBookSeriesIds:v5 audiobookSeriesIds:v6 relationships:v7 views:0 additionalParameters:&off_2EBE00 batchSize:a2 metadata:v10 completionHandler:v11];
}

void sub_94414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v5 count];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218754;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> Processing %lu resources for series with bookSeriesAdamIds: %@, audiobookSeriesAdamIDs: %@", buf, 0x2Au);
  }

  if ([v5 count])
  {
    v12 = [*(a1 + 32) queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_945F4;
    v14[3] = &unk_2CBD48;
    v16 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v14[4] = *(a1 + 32);
    v15 = v5;
    dispatch_async(v12, v14);
  }

  else
  {
    v13 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E8214();
    }

    [*(a1 + 32) finish];
  }
}

void sub_945F4(uint64_t a1)
{
  v2 = [&__NSArray0__struct arrayByAddingObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
  v3 = [v2 arrayByAddingObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];

  [*(a1 + 32) _updateSeriesContainersWithSeriesIDs:v3 withResources:*(a1 + 40)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_946E4;
  v5[3] = &unk_2CBD20;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [BKSeriesManagerUpdaterHelper gatherAllAssetAdamIDsInSeries:v6 completion:v5];
}

void sub_946E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCSeriesManagerUpdaterLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> Processing updateSeriesAdamIds children", &v10, 0xCu);
    }

    [*(a1 + 32) _updateSeriesChildrenWithAdamIDs:v5 forSeries:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E8284();
    }

    [*(a1 + 32) finish];
  }
}

void sub_948D4(id *a1)
{
  v2 = +[BKSeriesItem fetchRequest];
  v3 = [BKSeriesItem predicateForAllItemsAndContainersInSeries:a1[4]];
  [v2 setPredicate:v3];

  v4 = [a1[5] managedObjectContext];
  v39 = 0;
  v30 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v39];
  v29 = v39;

  v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 adamId];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v9);
  }

  v28 = v7;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = a1[4];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * j);
        v20 = [a1[6] objectForKeyedSubscript:v19];
        if (v20)
        {
          v21 = [v6 objectForKeyedSubscript:v19];
          if (!v21)
          {
            v22 = [a1[5] managedObjectContext];
            v21 = [BKSeriesItem insertSeriesContainerWithSeriesAdamId:v19 intoManagedObjectContext:v22];

            v23 = BCSeriesManagerUpdaterLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v27 = a1[5];
              *buf = 134218242;
              v41 = v27;
              v42 = 2112;
              v43 = v19;
              _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "<BKSeriesManagerUpdater: %p> _updateSeriesContainersWithSeriesID created seriesItem for:%@", buf, 0x16u);
            }
          }

          v24 = objc_opt_class();
          v25 = [a1[5] managedObjectContext];
          [v24 _populateItem:v21 withSeriesResource:v20 inMoc:v25];
        }

        else
        {
          v21 = BCSeriesManagerUpdaterLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v26 = a1[5];
            *buf = 134218242;
            v41 = v26;
            v42 = 2112;
            v43 = v19;
            _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "<BKSeriesManagerUpdater: %p> _updateSeriesContainersWithSeriesID missing series resource for seriesID:%@", buf, 0x16u);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v16);
  }
}

void sub_94D84(uint64_t a1)
{
  v2 = a1 + 32;
  [*(a1 + 32) recordAdamIDsAsChecked:*(a1 + 40)];
  v3 = +[BKSeriesItem fetchRequest];
  v4 = +[BKSeriesItem predicateForAllBookItems];
  v66[0] = v4;
  v5 = [BKSeriesItem predicateForAllItemsAndContainerWithAdamIdInList:*(v2 + 8)];
  v6 = [NSCompoundPredicate notPredicateWithSubpredicate:v5];
  v66[1] = v6;
  v7 = [*(a1 + 48) allKeys];
  v8 = [BKSeriesItem predicateForAllItemsAndContainersInSeries:v7];
  v66[2] = v8;
  v9 = [NSArray arrayWithObjects:v66 count:3];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  [v3 setPredicate:v10];

  v11 = [*v2 managedObjectContext];
  v59 = 0;
  v12 = [v11 executeFetchRequest:v3 error:&v59];
  v13 = v59;

  if ([v12 count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v15)
    {
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = [*(a1 + 32) managedObjectContext];
          [v19 deleteObject:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v15);
    }
  }

  v40 = +[BKSeriesItem fetchRequest];
  v20 = [BKSeriesItem predicateForAllItemsAndContainerWithAdamIdInList:*(a1 + 40)];
  [v40 setPredicate:v20];

  v21 = [*(a1 + 32) managedObjectContext];
  v54 = v13;
  v22 = [v21 executeFetchRequest:v40 error:&v54];
  v39 = v54;

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_93BE8;
  v52 = sub_93BF8;
  v53 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v22, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v44 objects:v64 count:16];
  if (v24)
  {
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        v28 = v49[5];
        v29 = [v27 adamId];
        v30 = [v28 objectForKeyedSubscript:v29];

        if (v30)
        {
          v31 = BCSeriesManagerUpdaterLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v34 = *(a1 + 32);
            v35 = [v27 adamId];
            *buf = 134218242;
            v61 = v34;
            v62 = 2112;
            v63 = v35;
            _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "<BKSeriesManagerUpdater: %p> _updateSeriesChildrenWithAdamIDs: Found duplicate series item of adam ID: %@", buf, 0x16u);
          }

          v32 = [*(a1 + 32) managedObjectContext];
          [v32 deleteObject:v27];
        }

        else
        {
          v33 = v49[5];
          v32 = [v27 adamId];
          [v33 setObject:v27 forKeyedSubscript:v32];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v44 objects:v64 count:16];
    }

    while (v24);
  }

  v36 = *(a1 + 48);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_9533C;
  v41[3] = &unk_2CBDE8;
  v37 = *(a1 + 32);
  v43 = &v48;
  v41[4] = v37;
  v38 = v39;
  v42 = v38;
  [v36 enumerateKeysAndObjectsUsingBlock:v41];
  [*(a1 + 32) finish];

  _Block_object_dispose(&v48, 8);
}

void sub_9533C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 assets];
  if ([v7 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_95450;
    v17[3] = &unk_2CBDC0;
    v21 = *(a1 + 48);
    v8 = v5;
    v9 = *(a1 + 32);
    v18 = v8;
    v19 = v9;
    v20 = v6;
    [v7 enumerateObjectsUsingBlock:v17];

    v10 = v18;
  }

  else
  {
    v10 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E82F4(a1, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

void sub_95450(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = [v5 id];
  v6 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:?];
  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) managedObjectContext];
    v6 = [BKSeriesItem insertSeriesItemWithAdamId:v9 seriesAdamId:v7 intoManagedObjectContext:v8];
  }

  [objc_opt_class() _populateItem:v6 position:a3 withAssetResource:v5 seriesResource:*(a1 + 48)];
}

void sub_95654(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_95710;
  v5[3] = &unk_2CBE88;
  v5[4] = v4;
  v9 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  [v4 _intervalInDaysWithCompletion:v5];
}

void sub_95710(uint64_t a1, double a2)
{
  v4 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1E8364(a1);
  }

  v5 = [*(a1 + 32) queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_95814;
  v8[3] = &unk_2CBE60;
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v14 = *(a1 + 64);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = a2;
  v13 = *(a1 + 56);
  dispatch_async(v5, v8);
}

void sub_95814(uint64_t a1)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_93BE8;
  v35 = sub_93BF8;
  v36 = *(a1 + 32);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_93BE8;
  v29 = sub_93BF8;
  v30 = *(a1 + 40);
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = [*(a1 + 48) managedObjectContext];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_95CA4;
    v19[3] = &unk_2CBE10;
    v3 = *(a1 + 48);
    v22 = &v31;
    v19[4] = v3;
    v20 = *(a1 + 32);
    v23 = &v25;
    v21 = *(a1 + 40);
    v24 = *(a1 + 56);
    [v2 performBlockAndWait:v19];
  }

  if ([v32[5] count] || objc_msgSend(v26[5], "count"))
  {
    kdebug_trace();
    [*(a1 + 48) recordAdamIDsAsChecked:v32[5]];
    [*(a1 + 48) recordAdamIDsAsChecked:v26[5]];
    v4 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48);
      v6 = v32[5];
      v7 = v26[5];
      *buf = 134218498;
      v39 = v5;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> Fetching mixed assets: books: %@, audiobooks: %@", buf, 0x20u);
    }

    v8 = [*(a1 + 48) catalogService];
    v9 = v32[5];
    v10 = v26[5];
    v37[0] = BFMCatalogRequestRelationshipAudiobookSeries;
    v37[1] = BFMCatalogRequestRelationshipBookSeries;
    v37[2] = BFMCatalogRequestRelationshipGenres;
    v11 = [NSArray arrayWithObjects:v37 count:3];
    v12 = *(a1 + 64);
    v13 = [BFMRequestMetadata alloc];
    v14 = [NSString stringWithFormat:@"%s", "BKSeriesManagerUpdater.m"];
    v15 = [v13 initWithFileID:v14 line:463];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_95D20;
    v18[3] = &unk_2CBD70;
    v18[4] = *(a1 + 48);
    v18[5] = &v31;
    v18[6] = &v25;
    [v8 fetchMixedAssetsWithBookIds:v9 audiobookIds:v10 relationships:v11 views:0 additionalParameters:&off_2EBE28 batchSize:v12 metadata:v15 completionHandler:v18];
  }

  else
  {
    v16 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 48);
      *buf = 134217984;
      v39 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> All series have been checked recently. We are done.", buf, 0xCu);
    }

    [*(a1 + 48) finish];
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

void sub_95C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_95CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _filteredAdamIDs:*(a1 + 40) withIntervalInDays:14.0];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _filteredAdamIDs:*(a1 + 48) withIntervalInDays:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 40) = v5;

  return _objc_release_x1(v5);
}

void sub_95D20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v5 count];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 134218754;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> Received %lu resources for mixed assets: books: %@, audiobooks: %@", buf, 0x2Au);
  }

  v12 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_95EC0;
  block[3] = &unk_2C89F8;
  v13 = *(a1 + 32);
  v17 = v5;
  v18 = v13;
  v19 = v6;
  v14 = v6;
  v15 = v5;
  dispatch_async(v12, block);
}

void sub_95EC0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    v34 = 0x3032000000;
    v35 = sub_93BE8;
    v36 = sub_93BF8;
    v37 = objc_alloc_init(NSMutableSet);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_93BE8;
    v25 = sub_93BF8;
    v26 = objc_alloc_init(NSMutableSet);
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_93BE8;
    v19 = sub_93BF8;
    v20 = objc_alloc_init(NSMutableSet);
    v2 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_962C0;
    v14[3] = &unk_2CBE38;
    v14[4] = &v33;
    v14[5] = &v21;
    v14[6] = &v15;
    [v2 enumerateKeysAndObjectsUsingBlock:v14];
    if ([v16[5] count])
    {
      v3 = BCSeriesManagerUpdaterLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v5 = [v16[5] allObjects];
        v6 = [v5 componentsJoinedByString:{@", "}];
        *buf = 134218242;
        v30 = v4;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<BKSeriesManagerUpdater: %p> AdamIDs of assets still missing series: [%@].", buf, 0x16u);
      }
    }

    v27[0] = BKSeriesManagerSeriesTypeBookSeries[0];
    v7 = [*(*(&v33 + 1) + 40) allObjects];
    v28[0] = v7;
    v27[1] = BKSeriesManagerSeriesTypeAudiobookSeries;
    v8 = [v22[5] allObjects];
    v28[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

    [*(a1 + 40) updateSeriesForSeriesAdamIDsWithTypes:v9 forceCheck:1];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v10 = *(a1 + 48) == 0;
    v11 = BCSeriesManagerUpdaterLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        LODWORD(v33) = 134217984;
        *(&v33 + 4) = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "<BKSeriesManagerUpdater: %p> No assets received", &v33, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E8448();
    }

    [*(a1 + 40) finish];
  }
}

void sub_9626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_962C0(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v5 seriesResource];
  v7 = [v6 id];

  if (v7)
  {
    if ([v5 isBook])
    {
      v8 = a1[4];
    }

    else
    {
      v8 = a1[5];
    }

    v9 = *(*(v8 + 8) + 40);
    v10 = v7;
  }

  else
  {
    v9 = *(*(a1[6] + 8) + 40);
    v10 = v11;
  }

  [v9 addObject:v10];
}

void sub_965A0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:BKSeriesManagerAssetTypeUnknown[0]];
  if ([v2 count])
  {
    kdebug_trace();
    v3 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 134218240;
      v11 = v4;
      v12 = 2048;
      v13 = [v2 count];
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "<BKSeriesManagerUpdater: %p> Fetching %lu mixed cloud assets", buf, 0x16u);
    }

    v5 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_96784;
    v8[3] = &unk_2CBF28;
    v8[4] = v5;
    v9 = v2;
    [v5 _seriesInfoRequestBatchSizeWithCompletion:v8];
  }

  else
  {
    v6 = [*(a1 + 40) managedObjectContext];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_96B38;
    v7[3] = &unk_2C7D40;
    v7[4] = *(a1 + 40);
    [v6 performBlockAndWait:v7];

    [*(a1 + 40) finish];
  }
}

void sub_96784(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) catalogService];
  v5 = *(a1 + 40);
  v13[0] = BFMCatalogRequestRelationshipAudiobookSeries;
  v13[1] = BFMCatalogRequestRelationshipBookSeries;
  v13[2] = BFMCatalogRequestRelationshipGenres;
  v6 = [NSArray arrayWithObjects:v13 count:3];
  v7 = [BFMRequestMetadata alloc];
  v8 = [NSString stringWithFormat:@"%s", "BKSeriesManagerUpdater.m"];
  v9 = [v7 initWithFileID:v8 line:557];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_96930;
  v11[3] = &unk_2CBF00;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  [v4 fetchResourcesWithAdamIDs:v5 relationships:v6 views:0 additionalParameters:&off_2EBE50 batchSize:a2 metadata:v9 completionHandler:v11];
}

void sub_96930(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218240;
    v20 = v8;
    v21 = 2048;
    v22 = [v5 count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "<BKSeriesManagerUpdater: %p> Received %lu mixed assets", buf, 0x16u);
  }

  v9 = [*(a1 + 32) queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_96AB4;
  v14[3] = &unk_2CBED8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = v5;
  v16 = v10;
  v17 = v11;
  v18 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v9, v14);
}

id sub_96AB4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _updateAssetsFromCloudSyncWithAdamIDs:*(a1 + 48) withAssetResources:?];
    v2 = *(a1 + 40);

    return [v2 finish];
  }

  else
  {
    v4 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E8558();
    }

    return [*(a1 + 40) finish];
  }
}

void sub_96B38(uint64_t a1)
{
  v2 = +[BKSeriesItem fetchRequest];
  v3 = +[BKSeriesItem predicateForAllNonSeriesBookItems];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 32) managedObjectContext];
  v18 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v18];
  v6 = v18;

  if ([v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          v13 = [*(a1 + 32) managedObjectContext];
          [v13 deleteObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

void sub_96DA8(uint64_t a1)
{
  v2 = +[BKSeriesItem fetchRequest];
  v3 = +[BKSeriesItem predicateForAllNonSeriesBookItems];
  v67[0] = v3;
  v4 = [BKSeriesItem predicateForAllItemsAndContainerWithAdamIdInList:*(a1 + 32)];
  v5 = [NSCompoundPredicate notPredicateWithSubpredicate:v4];
  v67[1] = v5;
  v6 = [NSArray arrayWithObjects:v67 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  v8 = [*(a1 + 40) managedObjectContext];
  v60 = 0;
  v45 = v2;
  v9 = [v8 executeFetchRequest:v2 error:&v60];
  v10 = v60;

  if ([v9 count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v57;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          v17 = [*(a1 + 40) managedObjectContext];
          [v17 deleteObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v13);
    }
  }

  v44 = v9;
  v18 = +[BKSeriesItem fetchRequest];
  v19 = [BKSeriesItem predicateForAllItemsAndContainerWithAdamIdInList:*(a1 + 32)];
  [v18 setPredicate:v19];

  v20 = [*(a1 + 40) managedObjectContext];
  v55 = v10;
  v43 = v18;
  v21 = [v20 executeFetchRequest:v18 error:&v55];
  v42 = v55;

  v22 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v52;
    v46 = v23;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v51 + 1) + 8 * j);
        v29 = [v28 adamId];
        v30 = [v22 objectForKeyedSubscript:v29];

        if (!v30)
        {
          v34 = [v28 adamId];
          [v22 setObject:v28 forKeyedSubscript:v34];
          goto LABEL_25;
        }

        v31 = BCSeriesManagerUpdaterLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v38 = *(a1 + 40);
          v39 = [v28 adamId];
          *buf = 134218242;
          v62 = v38;
          v63 = 2112;
          v64 = v39;
          _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "<BKSeriesManagerUpdater: %p> _updateAssetsFromCloudSyncWithAdamIDs: Found duplicate series item of adam ID: %@", buf, 0x16u);

          v23 = v46;
        }

        v32 = [v30 position];
        if (v32)
        {
        }

        else
        {
          v36 = [v28 position];

          if (v36)
          {
            v37 = [v28 adamId];
            [v22 setObject:v28 forKeyedSubscript:v37];

            v33 = [*(a1 + 40) managedObjectContext];
            v34 = v33;
            v35 = v30;
            goto LABEL_24;
          }
        }

        v33 = [*(a1 + 40) managedObjectContext];
        v34 = v33;
        v35 = v28;
LABEL_24:
        [v33 deleteObject:v35];
LABEL_25:
      }

      v25 = [v23 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v25);
  }

  v40 = *(a1 + 32);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_972EC;
  v47[3] = &unk_2CBF50;
  v48 = *(a1 + 48);
  v49 = v22;
  v50 = *(a1 + 40);
  v41 = v22;
  [v40 enumerateObjectsUsingBlock:v47];
}

void sub_972EC(id *a1, void *a2)
{
  v11 = a2;
  v3 = [a1[4] objectForKeyedSubscript:?];
  v4 = BUProtocolCast();

  if (v4)
  {
    v5 = [a1[5] objectForKeyedSubscript:v11];
    if (!v5)
    {
      v6 = [v4 seriesResource];
      v7 = [v6 id];

      v8 = [a1[6] managedObjectContext];
      if (v7)
      {
        [BKSeriesItem insertSeriesItemWithAdamId:v11 seriesAdamId:v7 intoManagedObjectContext:v8];
      }

      else
      {
        [BKSeriesItem insertStoreItemWithAdamId:v11 intoManagedObjectContext:v8];
      }
      v5 = ;
    }

    v9 = objc_opt_class();
    v10 = [v4 seriesResource];
    [v9 _populateItem:v5 position:0x7FFFFFFFFFFFFFFFLL withAssetResource:v4 seriesResource:v10];
  }
}

void sub_97508(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = BCSeriesManagerUpdaterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E85D8();
    }

    v8.n128_u64[0] = 21.0;
    (*(*(a1 + 32) + 16))(v8);
  }

  else
  {
    v9 = *(a1 + 32);
    [a2 doubleValue];
    (*(v9 + 16))(v10);
  }
}

void sub_980FC(id a1)
{
  v1 = objc_alloc_init(BCAudioMuxingCoordinator);
  qword_342778 = v1;

  _objc_release_x1(v1);
}

void sub_98474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_984A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_984B8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_98B64(uint64_t a1)
{
  v2 = [*(a1 + 32) cardSetViewController];
  v1 = [v2 navigationSkrimView];
  [v1 setAlpha:0.2];
}

void sub_99074(uint64_t a1)
{
  v2 = [*(a1 + 32) cardSetViewController];
  v1 = [v2 navigationSkrimView];
  [v1 setAlpha:0.0];
}

id sub_99ECC(uint64_t a1)
{
  [*(a1 + 40) endingRect];
  [*(a1 + 32) setFrame:?];
  v2 = [*(a1 + 40) snapshotContainerView];
  [v2 setTransform:&v4];

  [*(a1 + 40) gripperEndingAlpha];
  return [*(a1 + 48) setAlpha:?];
}

id sub_99F44(id *a1, uint64_t a2)
{
  v4 = [a1[4] viewToHide];
  [v4 setAlpha:1.0];

  [a1[5] insertSubview:a1[6] belowSubview:a1[7]];
  [a1[7] removeFromSuperview];
  v5 = [a1[8] transitionWasCancelled];
  v6 = a1[4];
  if (v5)
  {
    [v6 startingRect];
  }

  else
  {
    [v6 endingRect];
  }

  [a1[6] setFrame:?];
  v7 = [a1[9] auxiliaryNavigationBarView];
  [v7 setHidden:0];

  v8 = [a1[4] cardSetViewController];
  v9 = [v8 delegate];
  v10 = [a1[4] cardSetViewController];
  [v9 cardSetViewControllerNavigiationTransitionCompleted:v10];

  v11 = [a1[4] snapshotContainerView];
  [v11 removeFromSuperview];

  v12 = a1[8];

  return [v12 completeTransition:a2 == 0];
}

uint64_t BKStringFromAssetContentType(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  else
  {
    return *(&off_2CC118 + a1);
  }
}

uint64_t BKStringFromAssetState(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_2CC1B8 + a1);
  }
}

void sub_9D99C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = v6;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 appendFormat:@"\n\t%@ :  NSNotFound", v6];
  }

  else if (a3 >= 1)
  {
    v8 = [NSNumber numberWithLongLong:a3];
    [v9 appendFormat:@"\n\t%@ :  %@", v7, v8];
  }
}

void sub_9DB20(uint64_t a1)
{
  [*(a1 + 32) setAnimationCount:{objc_msgSend(*(a1 + 32), "animationCount") - 1}];
  if (![*(a1 + 32) animationCount])
  {
    v2 = [*(a1 + 32) animationDidEnd];
    if (v2)
    {
      v3 = v2;
      v2[2]();
      v2 = v3;
    }
  }
}

int64_t sub_9EDA8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 annotation];
  if (([v8 annotationIsUnderline] & 1) == 0)
  {

LABEL_5:
    v12 = [v6 annotation];
    if ([v12 annotationIsUnderline])
    {
    }

    else
    {
      v13 = [v7 annotation];
      v14 = [v13 annotationIsUnderline];

      if (v14)
      {
        v11 = -1;
        goto LABEL_10;
      }
    }

    v15 = [v6 annotation];
    v16 = [v15 annotationModificationDate];
    v17 = [v7 annotation];
    v18 = [v17 annotationModificationDate];
    v11 = [v16 compare:v18];

    goto LABEL_10;
  }

  v9 = [v7 annotation];
  v10 = [v9 annotationIsUnderline];

  if (v10)
  {
    goto LABEL_5;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

void sub_A16FC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

const __CFString *CFStringCopyLongestWordInString(const __CFString *a1)
{
  v2 = CFLocaleCopyCurrent();
  v12.length = CFStringGetLength(a1);
  v12.location = 0;
  v3 = CFStringTokenizerCreate(kCFAllocatorDefault, a1, v12, 4uLL, v2);
  if (CFStringTokenizerAdvanceToNextToken(v3))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v3);
      v7 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, CurrentTokenRange);
      Length = CFStringGetLength(v7);
      if (Length > v6)
      {
        v9 = Length;
        if (v5)
        {
          CFRelease(v5);
        }

        CFRetain(v7);
        v6 = v9;
        v5 = v7;
      }

      CFRelease(v7);
      if (!CFStringTokenizerAdvanceToNextToken(v3))
      {
        break;
      }
    }

    while (v4++ < 9);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  CFRelease(v2);
  return v5;
}

void sub_A38F0(id a1)
{
  v1 = objc_alloc_init(BCCFI);
  v2 = qword_342788;
  qword_342788 = v1;

  v3 = qword_342788;

  [v3 setString:@"epubcfi_unknownlocation"];
}

void sub_A3994(id a1)
{
  v1 = objc_alloc_init(BCCFI);
  v2 = qword_342798;
  qword_342798 = v1;

  v3 = qword_342798;

  [v3 setString:@"epubcfi_upselllocation"];
}

void sub_A3A2C(id a1)
{
  v3 = 0;
  v1 = [BCCFI cfiWithString:@"epubcfi(/6/2!/2/1)" error:&v3];
  v2 = qword_3427A8;
  qword_3427A8 = v1;
}

void sub_A3ABC(id a1)
{
  v1 = [NSString stringWithFormat:@"epubcfi(/6/%ld!/%ld/1)", 0x7FFFFFFFFFFFFFFELL, 0x7FFFFFFFFFFFFFFELL];
  v4 = 0;
  v2 = [BCCFI cfiWithString:v1 error:&v4];
  v3 = qword_3427B8;
  qword_3427B8 = v2;
}

void freeCFIStep(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 5)
  {
    if (v2 == 6)
    {
      v4 = *(a1 + 8);
    }

    else
    {
      if (v2 != 7)
      {
        return;
      }

      CFRelease(*(a1 + 8));
      v4 = *(a1 + 16);
    }

    CFRelease(v4);
  }

  else
  {
    if (v2 == 2)
    {
      CFRelease(*(a1 + 8));
      v3 = *(a1 + 16);
    }

    else
    {
      if (v2 != 3)
      {
        return;
      }

      CFRelease(*(a1 + 8));

      v3 = *(a1 + 24);
    }
  }
}

uint64_t compareCFIStep(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    if (dword_2A3DDC[v2] < dword_2A3DDC[v3])
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if (v2 <= 4)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v18 = a1[1];
        v19 = a2[1];
        if (v18 == v19 || CFEqual(v18, v19))
        {
          v10 = a1[2];
          v11 = a2[2];
          return v10 != v11 && !CFEqual(v10, v11);
        }

        return 1;
      }

      if (v2 == 3)
      {
        v6 = a1[1];
        v7 = a2[1];
        if (v6 == v7 || CFEqual(v6, v7))
        {
          v8 = a1[2];
          v9 = a2[2];
          if (v8 == v9 || CFEqual(v8, v9))
          {
            v10 = a1[3];
            v11 = a2[3];
            return v10 != v11 && !CFEqual(v10, v11);
          }
        }

        return 1;
      }

      return 0;
    }

    goto LABEL_21;
  }

  if (v2 == 5)
  {
LABEL_21:
    v16 = a1[1];
    v17 = a2[1];
    if (v16 >= v17)
    {
      return v16 > v17;
    }

    return -1;
  }

  if (v2 != 6)
  {
    if (v2 != 7)
    {
      return 0;
    }

    v13 = a1[2];
    if (v13)
    {
      if (!a2[2])
      {
        return 1;
      }

      result = [v13 compare:?];
      if (result)
      {
        return result;
      }

      v14 = a1[1];
      v15 = a2[1];
      goto LABEL_32;
    }

    return -1;
  }

  v14 = a1[1];
  if (!v14)
  {
    return -1;
  }

  v15 = a2[1];
  if (!v15)
  {
    return 1;
  }

LABEL_32:

  return [v14 compare:v15];
}

uint64_t sub_A4734(void *a1, void *a2, int a3, int a4, char **a5, unint64_t *a6)
{
  v9 = a1;
  v10 = a2;
  if (a3)
  {
    v11 = [v9 numberOfStartSteps];
  }

  else
  {
    v11 = [v9 numberOfEndSteps];
  }

  v12 = v11;
  v35 = v9;
  v36 = v10;
  if (a4)
  {
    v13 = [v10 numberOfStartSteps];
  }

  else
  {
    v13 = [v10 numberOfEndSteps];
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  if (a3)
  {
    v17 = "startStepAtIndex:";
  }

  else
  {
    v17 = "endStepAtIndex:";
  }

  if (a4)
  {
    v18 = "startStepAtIndex:";
  }

  else
  {
    v18 = "endStepAtIndex:";
  }

  while (v16 < v12 && v15 < v14)
  {
    v19 = [v35 v17];
    v20 = [v36 v18];
    v21 = *v19;
    if ((*v19 & 0xFFFFFFFE) == 2)
    {
      v22 = v12;
      if (v16 != v12 - 1)
      {
        v22 = v16 + 1;
        while (1)
        {
          v19 = [v35 v17];
          v21 = *v19;
          if ((*v19 & 0xFFFFFFFE) != 2)
          {
            break;
          }

          if (v12 == ++v22)
          {
            v22 = v12;
            break;
          }
        }
      }
    }

    else
    {
      v22 = v16;
    }

    v23 = *v20;
    if ((*v20 & 0xFFFFFFFE) == 2)
    {
      v24 = v15 + 1;
      if (v15 + 1 >= v14)
      {
LABEL_26:
        if (*v19 == 6)
        {
          goto LABEL_36;
        }

        if (*v19 != 7)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }

      while (1)
      {
        v20 = [v36 v18];
        v23 = *v20;
        if ((*v20 & 0xFFFFFFFE) != 2)
        {
          break;
        }

        if (++v24 >= v14)
        {
          goto LABEL_26;
        }
      }

      v21 = *v19;
    }

    else
    {
      v24 = v15;
    }

    if ((v23 != 6) == (v21 == 6))
    {
      if (v21 != 6)
      {
        --v22;
        v19 = &unk_33E628;
        goto LABEL_39;
      }

LABEL_36:
      --v24;
      v20 = &unk_33E628;
      goto LABEL_39;
    }

    if ((v23 != 7) == (v21 == 7))
    {
      if (v21 != 7)
      {
        --v22;
        v19 = &unk_33E648;
        goto LABEL_39;
      }

LABEL_34:
      --v24;
      v20 = &unk_33E648;
    }

LABEL_39:
    v25 = compareCFIStep(v19, v20);
    v16 = v22 + 1;
    v15 = v24 + 1;
    if (v25)
    {
      v26 = v25;
      v28 = a5;
      v27 = a6;
      if (!a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  if (v16 <= v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = v16;
  }

  while (1)
  {
    v29 = v16;
    if (v22 == v16)
    {
      break;
    }

    v30 = [v35 v17];
    if ((*v30 & 0xFFFFFFFE) != 2)
    {
      v22 = v29;
      v26 = 1;
      goto LABEL_49;
    }
  }

  v26 = 0;
LABEL_49:
  v27 = a6;
  if (v29 >= v12)
  {
    if (v15 <= v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = v15;
    }

    v28 = a5;
    while (v24 != v15)
    {
      v31 = [v36 v18];
      if ((*v31 & 0xFFFFFFFE) != 2)
      {
        v24 = v15 - 1;
        v26 = -1;
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

    v26 = 0;
    if (!a5)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v24 = v15;
    v28 = a5;
    if (!a5)
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  *v28 = v22;
LABEL_62:
  if (v27)
  {
    *v27 = v24;
  }

  return v26;
}

void sub_A60BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = a2 + 8;
    v11 = a3;
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    if (v10 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = [NSNumber numberWithInteger:v10];
    }

    v14 = [NSDictionary dictionaryWithObjectsAndKeys:v12, NSLocalizedDescriptionKey, v13, @"BKEpubCFIErrorCharacterOffset", 0];
    *a1 = [NSError errorWithDomain:@"BKEpubCFIErrorDomain" code:1 userInfo:v14];

    if (v10 != -1)
    {
    }
  }
}

void sub_A61DC(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [v5 scanLocation] + a2;
  v18 = [v5 string];

  if (v6 >= [v18 length])
  {
    sub_A60BC(a3, v6, @"Scanner error at position %lu beyond string length %lu", v7, v8, v9, v10, v11, (v6 + 8));
  }

  else
  {
    v17 = [v18 characterAtIndex:v6];
    sub_A60BC(a3, v6, @"Unexpected character '%C' found at position %lu", v12, v13, v14, v15, v16, v17);
  }
}

void sub_A634C(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (a2 < a3)
  {
    v6 = v5;
    do
    {
      sub_A6FDC(v6, a2);
      v5 = v6;
      a2 += 32;
    }

    while (a2 < a3);
  }
}

void sub_A6FDC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = *a2;
  if (*a2 <= 3)
  {
    switch(v5)
    {
      case 1:
        [v3 appendFormat:@"/%lu", *(a2 + 8), v22];
        goto LABEL_32;
      case 2:
        if (*(a2 + 8))
        {
          v11 = *(a2 + 8);
        }

        else
        {
          v11 = &stru_2D2930;
        }

        v7 = [BCCFI stringByEscapingString:v11];
        v10 = 16;
        break;
      case 3:
        if (*(a2 + 8))
        {
          v6 = *(a2 + 8);
        }

        else
        {
          v6 = &stru_2D2930;
        }

        v7 = [BCCFI stringByEscapingString:v6];
        if (*(a2 + 16))
        {
          v8 = [BCCFI stringByEscapingString:?];
          v9 = [v7 stringByAppendingFormat:@", %@", v8];

          v10 = 24;
          v7 = v9;
        }

        else
        {
          v10 = 24;
        }

        break;
      default:
        goto LABEL_32;
    }

    v12 = *(a2 + v10);
    v23 = v7;
    [v4 appendFormat:@"[%@", v7];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v13 objectForKey:v18];
          v20 = [BCCFI stringByEscapingString:v18];
          v21 = [BCCFI stringByEscapingString:v19];
          [v4 appendFormat:@";%@=%@", v20, v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    [v4 appendString:@"]"];
  }

  else if (v5 > 5)
  {
    if (v5 == 6)
    {
      [v3 appendFormat:@"~%@", *(a2 + 8), v22];
    }

    else if (v5 == 7)
    {
      [v3 appendFormat:@"@%@:%@", *(a2 + 8), *(a2 + 16)];
    }
  }

  else if (v5 == 4)
  {
    [v3 appendString:@"!"];
  }

  else
  {
    [v3 appendFormat:@":%lu", *(a2 + 8), v22];
  }

LABEL_32:
}

void sub_A8D50(uint64_t a1)
{
  [*(a1 + 32) animationStarted:@"IMTransitionAutomaticTransitions"];
  [*(a1 + 32) performTransition];
  v2 = [*(a1 + 32) animationsBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) animationsBlock];
    v3[2]();
  }
}

id sub_A8DE8(uint64_t a1)
{
  result = [*(a1 + 32) started];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 animationEnded:@"IMTransitionAutomaticTransitions" finished:1];
  }

  return result;
}

void sub_AA37C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupWithCompletion:v3];
}

void sub_AA4E4(uint64_t a1)
{
  v2 = [*(a1 + 32) maxInstanceCount];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  if (v2 > [*(a1 + 32) minInstanceCount])
  {
    while (1)
    {
      v6 = [*(a1 + 32) lastUsedTime];
      v7 = [NSNumber numberWithUnsignedInteger:v2];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        [v8 doubleValue];
        if (v9 >= v5 || v5 - v9 <= 20.0)
        {
          break;
        }
      }

      --v2;

      if (v2 <= [*(a1 + 32) minInstanceCount])
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  v11 = [*(a1 + 32) contexts];
  v12 = [v11 count];

  if (v12 > v2)
  {
    while (1)
    {
      v13 = [*(a1 + 32) availableContextIndexes];
      v14 = [v13 lastIndex];

      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v15 = [*(a1 + 32) availableContextIndexes];
      [v15 removeIndex:v14];

      v16 = [*(a1 + 32) contexts];
      [v16 removeObjectAtIndex:v14];

      if (--v12 <= v2)
      {
        v12 = v2;
        break;
      }
    }
  }

  if (v12 > [*(a1 + 32) minInstanceCount])
  {
    v17 = [*(a1 + 32) coalescingCleanup];
    [v17 signalWithCompletion:&stru_2CC2F8];
  }

  v18 = objc_retainBlock(*(a1 + 40));
  if (v18)
  {
    v19 = v18;
    v18[2]();
    v18 = v19;
  }
}

uint64_t sub_AAA80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_AAA98(uint64_t a1)
{
  v5 = [*(a1 + 32) contexts];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_AADF0(uint64_t a1)
{
  v5 = [*(a1 + 32) contexts];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_AAF14(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingBlocks];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 pendingBlocks];
    v6 = [v5 objectAtIndexedSubscript:0];

    v7 = [*(a1 + 32) pendingBlocks];
    [v7 removeObjectAtIndex:0];

    v8 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_AB09C;
    v16[3] = &unk_2CB128;
    v19 = v6;
    v9 = v8;
    v10 = *(a1 + 32);
    v17 = v9;
    v18 = v10;
    v11 = v6;
    [v8 performBlock:v16];
  }

  else
  {
    v12 = [v4 contexts];
    v13 = [v12 indexOfObjectIdenticalTo:*(a1 + 40)];

    [*(a1 + 32) setInUseCount:{objc_msgSend(*(a1 + 32), "inUseCount") - 1}];
    v14 = [*(a1 + 32) availableContextIndexes];
    [v14 addIndex:v13];

    v15 = *(a1 + 32);

    [v15 _updateUseCountTime];
  }
}

id sub_AB09C(void *a1)
{
  (*(a1[6] + 16))();
  v3 = a1[4];
  v2 = a1[5];

  return [v2 _makeAvailable:v3];
}

void sub_AB19C(uint64_t a1)
{
  v2 = [*(a1 + 32) availableContextIndexes];
  v3 = [v2 firstIndex];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) setInUseCount:{objc_msgSend(*(a1 + 32), "inUseCount") + 1}];
    v15 = [*(a1 + 32) availableContextIndexes];
    [v15 removeIndex:v3];

    v16 = [*(a1 + 32) contexts];
    v17 = [v16 objectAtIndexedSubscript:v3];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_AB424;
    v26[3] = &unk_2CB128;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v27 = v17;
    v28 = v19;
    v29 = v18;
    v13 = v17;
    [v13 performBlock:v26];

    v14 = v29;
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) contexts];
  v5 = [v4 count];
  v6 = [*(a1 + 32) maxInstanceCount];

  v7 = *(a1 + 32);
  if (v5 < v6)
  {
    v8 = [v7 providerBlock];
    v9 = v8[2]();

    v10 = [*(a1 + 32) contexts];
    [v10 addObject:v9];

    [*(a1 + 32) setInUseCount:{objc_msgSend(*(a1 + 32), "inUseCount") + 1}];
    [*(a1 + 32) _updateUseCountTime];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_AB46C;
    v22[3] = &unk_2CB128;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v23 = v9;
    v24 = v12;
    v25 = v11;
    v13 = v9;
    [v13 performBlock:v22];

    v14 = v25;
LABEL_5:

    return;
  }

  v21 = [v7 pendingBlocks];
  v20 = objc_retainBlock(*(a1 + 40));
  [v21 addObject:v20];
}

id sub_AB424(void *a1)
{
  (*(a1[6] + 16))();
  v3 = a1[4];
  v2 = a1[5];

  return [v2 _makeAvailable:v3];
}

id sub_AB46C(void *a1)
{
  (*(a1[6] + 16))();
  v3 = a1[4];
  v2 = a1[5];

  return [v2 _makeAvailable:v3];
}

void sub_ACA80(id a1)
{
  v1 = [BCCoverEffects alloc];
  v4 = +[BCLayerRenderer sharedInstance];
  v2 = [(BCCoverEffects *)v1 initWithRenderer:v4];
  v3 = qword_3427C8;
  qword_3427C8 = v2;
}

void sub_ACDA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_ACDC0(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained counter];
    if ([v5 animationCount] >= 1)
    {
      v6 = [v4 coverView];
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v7 = 0.3;
      }

      else
      {
        v7 = 0.15;
      }

      v8 = [[UIViewPropertyAnimator alloc] initWithDuration:0 curve:0 animations:v7];
      [v6 setImage:v10 animatedWithAnimator:v8];
      v9 = [v4 counter];
      [v9 animate:v8];
    }
  }
}

void sub_ADCF8(uint64_t a1)
{
  [*(a1 + 40) finalFrameForViewController:*(a1 + 32)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) view];
  [v10 setFrame:{v3, v5, v7, v9}];
}

id sub_AEA54(uint64_t a1)
{
  if ([*(a1 + 32) expanded])
  {
    [*(a1 + 40) setAlpha:1.0];
    [*(a1 + 48) setAlpha:1.0];
  }

  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  [*(a1 + 40) alpha];
  if (fabs(v2) < 2.22044605e-16)
  {
    [*(a1 + 40) removeFromSuperview];
  }

  [*(a1 + 48) alpha];
  if (fabs(v3) < 2.22044605e-16)
  {
    [*(a1 + 48) removeFromSuperview];
  }

  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

void sub_AEB00(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) cardSlideItems];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        [v7 cardToCenter];
        v9 = v8;
        v11 = v10;
        v12 = [v7 card];
        v13 = [v12 cardStackTransitioningCardView];
        [v13 setCenter:{v9, v11}];
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  if (*(a1 + 96) == 1)
  {
    v14 = *(a1 + 64);
    v15[0] = *(a1 + 48);
    v15[1] = v14;
    v15[2] = *(a1 + 80);
    [*(a1 + 40) setTransform:v15];
  }
}

id sub_AFF00(uint64_t a1)
{
  [*(a1 + 40) coverToCenter];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

id sub_AFF3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 coverToTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [v3 setTransform:v5];
}

void sub_AFFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) cardStackTransitioningCardView];
  [*(a1 + 40) cardToCenter];
  [v2 setCenter:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 cardToTransform];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v12 = v15;
  v13 = v16;
  v14 = v17;
  [v2 setTransform:&v12];
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 cardSuperviewToTransform];
  }

  else
  {
    v8 = 0u;
    v10 = 0u;
    v6 = 0u;
  }

  v5 = [v2 superview];
  v12 = v7;
  v13 = v9;
  v14 = v11;
  [v5 setTransform:&v12];
}

id sub_B0080(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

CGAffineTransform *sub_B04B8@<X0>(CGAffineTransform *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  Width = CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v18 = Width / CGRectGetWidth(v26);
  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  Height = CGRectGetHeight(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v20 = Height / CGRectGetHeight(v28);

  return CGAffineTransformMakeScale(a1, v18, v20);
}

id sub_B1BA0(uint64_t a1)
{
  if ([*(a1 + 32) expanded])
  {
    [*(a1 + 40) setAlpha:1.0];
    [*(a1 + 48) setAlpha:1.0];
  }

  [*(a1 + 32) setNeedsStatusBarAppearanceUpdate];
  [*(a1 + 40) alpha];
  if (fabs(v2) < 2.22044605e-16)
  {
    [*(a1 + 40) removeFromSuperview];
  }

  [*(a1 + 48) alpha];
  if (fabs(v3) < 2.22044605e-16)
  {
    [*(a1 + 48) removeFromSuperview];
  }

  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

id sub_B1C64(uint64_t a1)
{
  [*(a1 + 40) coverToCenter];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

id sub_B1CA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 coverToTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [v3 setTransform:v5];
}

id sub_B1D10(uint64_t a1)
{
  [*(a1 + 40) cardToCenter];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

id sub_B1D4C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 cardToTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [v3 setTransform:v5];
}

id sub_B1DBC(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

void sub_B2128(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:1.0];
}

void sub_B242C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setAlpha:0.0];
  }

  v2 = [*(a1 + 40) view];
  [v2 setAlpha:0.0];
}

id sub_B4B00(void *a1)
{
  v1 = a1;
  v2 = [v1 buttonActions];

  if (v2)
  {
    v3 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v1 buttonActions];
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
          if ([v9 style] != &dword_0 + 2)
          {
            v10 = [v9 identifier];
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = [v3 copy];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

id sub_B5640(uint64_t a1)
{
  [*(a1 + 32) set];
  UIRectFill(*(a1 + 48));
  [*(a1 + 40) drawInRect:22 blendMode:*(a1 + 48) alpha:{*(a1 + 56), *(a1 + 64), *(a1 + 72), 1.0}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 drawInRect:1 blendMode:v3 alpha:{v4, v5, v6, 1.0}];
}

void sub_B5AB8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 72));
  CGContextSaveGState(CurrentContext);
  CGContextClipToMask(CurrentContext, *(a1 + 80), [*(a1 + 32) CGImage]);
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 40) CGColor]);
  CGContextFillRect(CurrentContext, *(a1 + 80));

  CGContextRestoreGState(CurrentContext);
}

void sub_B5F4C(id a1)
{
  v5.width = 1.0;
  v5.height = 1.0;
  UIGraphicsBeginImageContext(v5);
  CurrentContext = UIGraphicsGetCurrentContext();
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  CGContextClearRect(CurrentContext, v6);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  v3 = qword_3427D8;
  qword_3427D8 = v2;

  UIGraphicsEndImageContext();
}

void sub_B6860(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_B6884(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained workQueue];
  v9 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

  [v9 workComplete];
}

void sub_B6B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak(va);
  objc_destroyWeak((v12 - 88));
  _Unwind_Resume(a1);
}

void sub_B6BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = [WeakRetained workQueue];
  v7 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  [BICCacheStats logOperation:BICCacheStatsOperationNetworkDownloadQueueEnd[0] forRequest:*(a1 + 32)];
  v8 = [v4 priority];

  if (v8 == &dword_0 + 1)
  {
    v9 = objc_retainBlock(*(a1 + 72));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    [v7 workComplete];
  }

  else
  {
    [BICCacheStats logOperation:BICCacheStatsOperationNetworkDownloadStart[0] forRequest:*(a1 + 32)];
    kdebug_trace();
    v11 = *(a1 + 88);
    v12 = BCImageCacheLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == 1)
    {
      if (v13)
      {
        v14 = *(a1 + 40);
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BICURLDataStore: Starting internal URL fetch for: %@", buf, 0xCu);
      }

      v16 = *(a1 + 40);
      v15 = *(a1 + 48);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_B6F78;
      v29[3] = &unk_2CC608;
      v30 = *(a1 + 56);
      v31 = *(a1 + 40);
      v32 = *(a1 + 32);
      v34 = *(a1 + 72);
      v33 = v7;
      [v15 fetchCoverForURL:v16 completion:v29];
    }

    else
    {
      if (v13)
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        *buf = 138412546;
        v36 = v17;
        v37 = 2112;
        v38 = v18;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BICURLDataStore: Starting URL download for: %@ URL: %@", buf, 0x16u);
      }

      v19 = [NSURL URLWithString:*(a1 + 40)];
      v20 = +[NSURLSession sharedSession];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_B70F4;
      v22[3] = &unk_2CC658;
      v23 = *(a1 + 56);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = v7;
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v21 = [v20 dataTaskWithURL:v19 completionHandler:v22];

      [v21 resume];
    }
  }
}

id sub_B6F78(uint64_t a1, CGImageRef image)
{
  if (image)
  {
    Width = CGImageGetWidth(image);
    [*(a1 + 32) setImageSize:{Width, CGImageGetHeight(image)}];
    v5 = [BICImage imageWithCGImage:image];
    [*(a1 + 32) setImage:v5];
  }

  else
  {
    v5 = BCImageCacheLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E8FA4();
    }
  }

  [BICCacheStats logOperation:BICCacheStatsOperationNetworkDownloadEndFromDataSource[0] forRequest:*(a1 + 48)];
  [BICCacheStats logDescribedImage:*(a1 + 32) withComment:@"URLDataStoreLoadImageFromDataSource"];
  v6 = objc_retainBlock(*(a1 + 64));
  v7 = v6;
  if (v6)
  {
    if (image)
    {
      v10 = *(a1 + 32);
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      (v7)[2](v7, v8);
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  return [*(a1 + 56) workComplete];
}

void sub_B70F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v16 = BCImageCacheLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1E901C();
    }

    goto LABEL_7;
  }

  +[BICCacheStats addToCounter:amount:](BICCacheStats, "addToCounter:amount:", kBICCacheStatsCounterNetworkBytesDownloaded[0], [v7 length] >> 10);
  v23 = kCGImageSourceShouldCacheImmediately;
  v24 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v11 = CGImageSourceCreateWithData(v7, v10);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, v10);
  CFRelease(v11);
  if (!ImageAtIndex)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  Width = CGImageGetWidth(ImageAtIndex);
  [*(a1 + 32) setImageSize:{Width, CGImageGetHeight(ImageAtIndex)}];
  v14 = [BICImage imageWithCGImage:ImageAtIndex];
  [*(a1 + 32) setImage:v14];

  CGImageRelease(ImageAtIndex);
  v15 = 1;
LABEL_8:
  [*(a1 + 56) workComplete];
  v17 = *(a1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B7340;
  block[3] = &unk_2CC630;
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = *(a1 + 72);
  v22 = v15;
  dispatch_async(v17, block);
}

uint64_t sub_B7340(uint64_t a1)
{
  [BICCacheStats logOperation:BICCacheStatsOperationNetworkDownloadEnd[0] forRequest:*(a1 + 32)];
  [BICCacheStats logDescribedImage:*(a1 + 40) withComment:@"URLDataStoreLoadImageFromNetwork"];
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = v2;
  if (v2)
  {
    if (*(a1 + 56))
    {
      v6 = *(a1 + 40);
      v4 = [NSArray arrayWithObjects:&v6 count:1];
      (v3)[2](v3, v4);
    }

    else
    {
      (*(v2 + 2))(v2, 0);
    }
  }

  return kdebug_trace();
}

void sub_B77FC(id a1)
{
  mach_timebase_info(&dword_3427F0);
  if (os_variant_has_internal_content())
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 stringForKey:@"AllowsCoverCacheImagesLoggingUserDefaultsKey"];
    v3 = qword_3427F8;
    qword_3427F8 = v2;

    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 removeObjectForKey:@"AllowsCoverCacheImagesLoggingUserDefaultsKey"];
  }
}

void sub_B7AA8(uint64_t a1)
{
  v3 = [*(a1 + 32) operationsLog];
  v2 = [*(a1 + 48) operationToLogString:*(a1 + 40)];
  [v3 appendString:v2];
}

void sub_B8108(id a1)
{
  v3[0] = BICCacheStatsOperationVendLayer[0];
  v3[1] = BICCacheStatsOperationAddRequest[0];
  v3[2] = BICCacheStatsOperationExistingRequest[0];
  v3[3] = BICCacheStatsOperationRemoveRequest[0];
  v3[4] = BICCacheStatsOperationSyncFetchExactAttempt[0];
  v3[5] = BICCacheStatsOperationSyncFetchExactSuccess[0];
  v3[6] = BICCacheStatsOperationSyncFetchExactFail[0];
  v3[7] = BICCacheStatsOperationAsyncFetchBestAttempt[0];
  v3[8] = BICCacheStatsOperationSyncFetchBestSuccess[0];
  v3[9] = BICCacheStatsOperationSyncFetchBestFail[0];
  v3[10] = BICCacheStatsOperationAdd[0];
  v3[11] = BICCacheStatsOperationRemove[0];
  v3[12] = BICCacheStatsOperationTransformStart[0];
  v3[13] = BICCacheStatsOperationTransformEnd[0];
  v3[14] = BICCacheStatsOperationStackCreationStart[0];
  v3[15] = BICCacheStatsOperationStackCreationEnd[0];
  v3[16] = BICCacheStatsOperationDiskReadStart[0];
  v3[17] = BICCacheStatsOperationDiskReadEnd[0];
  v3[18] = BICCacheStatsOperationNetworkDownloadStart[0];
  v3[19] = BICCacheStatsOperationNetworkDownloadEnd[0];
  v3[20] = BICCacheStatsOperationProfileDownloadStart[0];
  v3[21] = BICCacheStatsOperationProfileDownloadEnd[0];
  v3[22] = BICCacheStatsOperationImageDelivered[0];
  v3[23] = BICCacheStatsOperationGenericImageDelivered[0];
  v3[24] = BICCacheStatsOperationBestMatchNeedsTransform[0];
  v3[25] = BICCacheStatsOperationBestMatchNeedsFetch[0];
  v3[26] = BICCacheStatsOperationNeedNewVersion[0];
  v3[27] = BICCacheStatsOperationAsyncFetchExactSuccess[0];
  v3[28] = BICCacheStatsOperationAsyncFetchExactFail[0];
  v3[29] = BICCacheStatsOperationAsyncFetchBestSuccess[0];
  v3[30] = BICCacheStatsOperationAsyncFetchBestFail[0];
  v3[31] = BICCacheStatsOperationAsyncLoadBestFail[0];
  v3[32] = BICCacheStatsOperationAsyncFetchExactAttempt[0];
  v3[33] = BICCacheStatsOperationMakingGenericQueueStart[0];
  v3[34] = BICCacheStatsOperationDiskReadQueueStart[0];
  v3[35] = BICCacheStatsOperationDiskWriteQueueStart[0];
  v3[36] = BICCacheStatsOperationDiskWriteStart[0];
  v3[37] = BICCacheStatsOperationDiskWriteEnd[0];
  v3[38] = BICCacheStatsOperationTransformQueueStart[0];
  v3[39] = BICCacheStatsOperationNetworkDownloadQueueStart[0];
  v3[40] = BICCacheStatsOperationProfileDownloadQueueStart[0];
  v3[41] = BICCacheStatsOperationMakingGenericStart[0];
  v3[42] = BICCacheStatsOperationMakingGenericEnd;
  v3[43] = BICCacheStatsOperationStackCreationQueueStart[0];
  v3[44] = BICCacheStatsOperationMakingGenericQueueEnd[0];
  v3[45] = BICCacheStatsOperationProfileDownloadQueueEnd[0];
  v3[46] = BICCacheStatsOperationNetworkDownloadQueueEnd[0];
  v3[47] = BICCacheStatsOperationDiskWriteQueueEnd[0];
  v3[48] = BICCacheStatsOperationDiskReadQueueEnd[0];
  v3[49] = BICCacheStatsOperationStackCreationQueueEnd[0];
  v3[50] = BICCacheStatsOperationTransformQueueEnd[0];
  v3[51] = BICCacheStatsOperationAsyncFetchExactHighQualityAttempt[0];
  v3[52] = BICCacheStatsOperationBeginGenericUpgradeAttempt[0];
  v3[53] = BICCacheStatsOperationBeginGenericUpgradeAttemptForStackBook[0];
  v3[54] = BICCacheStatsOperationBeginGenericStackUpgradeAttempt[0];
  v3[55] = BICCacheStatsOperationIgnoringLowQualityImageEntry[0];
  v3[56] = BICCacheStatsOperationIgnoringLowQualityBestImage[0];
  v3[57] = BICCacheStatsOperationIgnoringLowQualityBestEntry[0];
  v3[58] = BICCacheStatsOperationPushFailed[0];
  v3[59] = BICCacheStatsOperationTransformedFromSmaller[0];
  v3[60] = BICCacheStatsOperationCancelled[0];
  v3[61] = BICCacheStatsOperationInterestCheck[0];
  v3[62] = BICCacheStatsOperationNetworkDownloadEndFromDataSource[0];
  v3[63] = BICCacheStatsOperationNetworkDownloadQueueStartFromDataSource[0];
  v1 = [NSArray arrayWithObjects:v3 count:64];
  v2 = qword_342808;
  qword_342808 = v1;
}

id sub_B89B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 > 0.0)
  {
    [*(a1 + 32) alpha];
    v4 = v3;
    v2 = *(a1 + 48);
    if (v4 != v2)
    {
      [*(a1 + 40) _statusBarFrame];
      [*(a1 + 32) setFrame:?];
      v2 = *(a1 + 48);
    }
  }

  v5 = *(a1 + 32);

  return [v5 setAlpha:v2];
}

void sub_B8C0C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPhone"))
    {
      v3 = 1;
    }

    else if (CFEqual(v2, @"iPod"))
    {
      v3 = 2;
    }

    else
    {
      v4 = CFEqual(v2, @"iPad");
      v3 = 3;
      if (!v4)
      {
        v3 = 5;
      }
    }

    qword_342828 = v3;

    CFRelease(v2);
  }
}

void sub_B8D00(id a1)
{
  v1 = objc_alloc_init(BCReadingStatisticsSyncManager);
  v2 = qword_342838;
  qword_342838 = v1;

  v3 = qword_342838;

  [v3 setupWithCompletion:0];
}

id sub_B96D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4 = [v2 assetID];
  [v3 setObject:v2 forKey:v4];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 addObserver:v6];
}

void sub_B97E4(uint64_t a1)
{
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = [v2 assetID];
  [v3 removeObjectForKey:v4];
}

void sub_B9988(uint64_t a1, void *a2)
{
  v23 = a2;
  [*(a1 + 32) setAssetID:*(a1 + 40)];
  v3 = [*(a1 + 48) _appVersion];
  [*(a1 + 32) setAppVersion:v3];

  [*(a1 + 32) setAssetVersion:*(a1 + 56)];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 64);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        v8 = a1;
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"tocEntryHref"];
        v11 = objc_alloc_init(BCReadingStatisticsProtoTOCEntry);
        [(BCReadingStatisticsProtoTOCEntry *)v11 setHref:v10];
        v12 = [v9 objectForKeyedSubscript:@"newReadProportion"];
        [v12 doubleValue];
        [(BCReadingStatisticsProtoTOCEntry *)v11 setReadProportion:?];

        v13 = +[NSDate date];
        [v13 timeIntervalSinceReferenceDate];
        [(BCReadingStatisticsProtoTOCEntry *)v11 setTimestamp:?];

        a1 = v8;
        [*(v8 + 32) addTocEntry:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v14 = [v23 allCFIStrings];
  v15 = [v14 mutableCopy];
  [*(a1 + 32) setReadCFIs:v15];

  v16 = [[BCMutableReadingStatisticsSync alloc] initWithAssetID:*(a1 + 40)];
  [(BCMutableReadingStatisticsSync *)v16 setAssetVersion:*(a1 + 56)];
  v17 = objc_alloc_init(PBDataWriter);
  [*(a1 + 32) writeTo:v17];
  v18 = [v17 immutableData];
  [(BCMutableReadingStatisticsSync *)v16 setReadingStatisticsBook:v18];

  v19 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138543362;
    v30 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Collecting updated readingStatistics for %{public}@", buf, 0xCu);
  }

  v21 = [*(a1 + 48) dataManager];
  v22 = [NSPredicate predicateWithFormat:@"assetID = %@", *(a1 + 40)];
  [v21 setCloudData:v16 predicate:v22 completion:0];
}

void sub_BA210(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v89 = v7;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Resolved data:%@", buf, 0xCu);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v81;
    v52 = v68;
    v59 = a2;
    v55 = v8;
    v56 = a1;
    v53 = *v81;
    v54 = v10;
    do
    {
      v14 = 0;
      v57 = v12;
      do
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v80 + 1) + 8 * v14) identifier];
        if (v15)
        {
          v63 = v14;
          v64 = v15;
          v16 = BUProtocolCast();
          v17 = [v16 assetVersion];
          v18 = [*(a1 + 32) _appVersion];
          if (a2 && ([v16 readingStatisticsBook], v62 = v16, v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v16 = v62, v20))
          {
            v21 = v10;
            v22 = v8;
            v23 = objc_alloc_init(BCReadingStatisticsProtoBook);
            v24 = [PBDataReader alloc];
            v25 = [v62 readingStatisticsBook];
            v26 = [v24 initWithData:v25];

            v27 = BCReadingStatisticsProtoBookReadFrom(v23, v26);
            v60 = v26;
            v61 = v23;
            if (v27)
            {
              v58 = v27;
              v66 = +[NSMutableDictionary dictionary];
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v28 = [(BCReadingStatisticsProtoBook *)v23 tocEntrys];
              v29 = [v28 countByEnumeratingWithState:&v76 objects:v86 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v77;
                do
                {
                  for (i = 0; i != v30; i = i + 1)
                  {
                    if (*v77 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v76 + 1) + 8 * i);
                    v34 = [v33 href];
                    [v33 readProportion];
                    v35 = [NSNumber numberWithDouble:?];
                    [v33 timestamp];
                    v36 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
                    v37 = v36;
                    if (v18)
                    {
                      v38 = !v34 || v36 == 0;
                      if (!v38 && v35 != 0)
                      {
                        v84[0] = @"assetVersion";
                        v40 = v17;
                        if (!v17)
                        {
                          v65 = +[NSNull null];
                          v40 = v65;
                        }

                        v85[0] = v40;
                        v85[1] = v18;
                        v84[1] = @"appVersion";
                        v84[2] = @"timestamp";
                        v84[3] = @"readProportion";
                        v85[2] = v37;
                        v85[3] = v35;
                        v41 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:4];
                        if (!v17)
                        {
                        }

                        [v66 setObject:v41 forKeyedSubscript:v34];
                      }
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v76 objects:v86 count:16];
                }

                while (v30);
              }

              v42 = [(BCReadingStatisticsProtoBook *)v61 readCFIs];
              v43 = [NSSet setWithArray:v42];
              v44 = [BCCFISet cfiSetWithCFIStrings:v43];

              a1 = v56;
              v45 = *(v56 + 32);
              v46 = *(v45 + 8);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              v68[0] = sub_BA820;
              v68[1] = &unk_2CC818;
              v68[2] = v45;
              v69 = v64;
              v70 = v17;
              v71 = v66;
              v72 = v44;
              v74 = *(v56 + 40);
              v75 = v58;
              v8 = v55;
              v73 = v55;
              v47 = v44;
              v48 = v66;
              dispatch_async(v46, block);

              a2 = v59;
              v13 = v53;
              v10 = v54;
              v12 = v57;
              v14 = v63;
            }

            else
            {
              v51 = objc_retainBlock(*(a1 + 40));
              v48 = v51;
              if (v51)
              {
                v8 = v22;
                (*(v51 + 2))(v51, 0, v22);
                v14 = v63;
              }

              else
              {
                v14 = v63;
                v8 = v22;
              }

              v10 = v21;
              a2 = v59;
            }

            v49 = v61;
            v16 = v62;
          }

          else
          {
            v49 = objc_retainBlock(*(a1 + 40));
            if (v49)
            {
              v50 = v49;
              v49[2](v49, a2, v8);
              v49 = v50;
            }

            v14 = v63;
          }

          v15 = v64;
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v12);
  }
}

void sub_BA820(uint64_t a1)
{
  v2 = [*(a1 + 32) controllers];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_BAC6C;
    v11[3] = &unk_2CC7A0;
    v5 = &v12;
    v6 = v3;
    v12 = v6;
    v7 = &v13;
    v13 = *(a1 + 64);
    v8 = &v15;
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v9 = &v14;
    v14 = *(a1 + 72);
    [(BCReadingStatisticsController *)v6 _bulkUpdateTocEntryReadProportions:v4 completion:v11];
  }

  else
  {
    v10 = [[BCReadingStatisticsController alloc] initWithAssetID:*(a1 + 40) versionString:*(a1 + 48)];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_BA9FC;
    v17[3] = &unk_2CC7C8;
    v5 = &v18;
    v6 = v10;
    v18 = v6;
    v7 = &v19;
    v19 = *(a1 + 56);
    v8 = &v20;
    v20 = *(a1 + 64);
    v9 = &v21;
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    [(BCReadingStatisticsController *)v6 setupWithCompletion:v17];
  }
}

void sub_BA9FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E9184(v3, v4);
    }

    v5 = objc_retainBlock(*(a1 + 56));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, *(a1 + 64), v3);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_BAB38;
    v10[3] = &unk_2CC7A0;
    v11 = v7;
    v12 = *(a1 + 48);
    v9 = *(a1 + 56);
    v15 = *(a1 + 64);
    v13 = 0;
    v14 = v9;
    [v11 _bulkUpdateTocEntryReadProportions:v8 completion:v10];

    v6 = v11;
  }
}

void sub_BAB38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BAC04;
  v4[3] = &unk_2CC778;
  v5 = v2;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v6 = *(a1 + 48);
  [v5 _bulkUpdateWithReadRanges:v3 completion:v4];
}

void sub_BAC04(uint64_t a1)
{
  [*(a1 + 32) teardown];
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 56), *(a1 + 40));
    v2 = v3;
  }
}

void sub_BAC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BAD24;
  v4[3] = &unk_2CC7F0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v5 = *(a1 + 48);
  [v2 _bulkUpdateWithReadRanges:v3 completion:v4];
}

void sub_BAD24(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 32));
    v2 = v3;
  }
}

void sub_BAE84(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_BAFFC(id a1)
{
  v4 = +[NSBundle mainBundle];
  v1 = [v4 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v2 = [v1 copy];
  v3 = qword_342848;
  qword_342848 = v2;
}

void sub_C05E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {

    v7 = 0;
  }

  if ([v7 code] == &stru_3D8.segname[4] && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", AssetEngineErrorDomain), v8, v9) && *(a1 + 52) > *(a1 + 48) + 1)
  {
    [*(a1 + 32) viewControllerFromPluginIndex:? withCompletion:?];
  }

  else if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_C0728;
    block[3] = &unk_2CB128;
    v13 = *(a1 + 40);
    v11 = v5;
    v12 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_C0740(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:AssetEngineErrorDomain code:1005 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_C0BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) backgroundContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C0C98;
  v6[3] = &unk_2C8488;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 performBlock:v6];
}

uint64_t sub_C0C98(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    kdebug_trace();
    v4 = [*(a1 + 32) backgroundContext];
    v8 = 0;
    [v4 save:&v8];
    v5 = v8;

    kdebug_trace();
    if (v5)
    {
      v6 = BCImageCacheLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1E9210();
      }
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_C0E10(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v3 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v2];

  [v3 setShouldAddStoreAsynchronously:0];
  [v3 setShouldMigrateStoreAutomatically:1];
  [v3 setShouldInferMappingModelAutomatically:1];
  [v3 setReadOnly:0];
  v4 = [*(a1 + 32) url];
  v5 = &NSSQLiteStoreType;
  if (!v4)
  {
    v5 = &NSInMemoryStoreType;
  }

  [v3 setType:*v5];

  [v3 setConfiguration:@"Default"];
  [v3 setValue:@"WAL" forPragmaNamed:@"journal_mode"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:@"BICImageSet" withExtension:@"momd"];
  v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
  v9 = [[NSPersistentContainer alloc] initWithName:@"BICImageSet" managedObjectModel:v8];
  [*(a1 + 32) setContainer:v9];

  v16 = v3;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = [*(a1 + 32) container];
  [v11 setPersistentStoreDescriptions:v10];

  v12 = [*(a1 + 32) container];
  [v12 loadPersistentStoresWithCompletionHandler:&stru_2CC990];

  v13 = [*(a1 + 32) container];
  v14 = [v13 newBackgroundContext];
  [*(a1 + 32) setBackgroundContext:v14];

  v15 = [*(a1 + 32) backgroundContext];
  [v15 setName:@"BIC background context"];
}

void sub_C1080(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = BCImageCacheLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E9278();
    }
  }
}

void sub_C190C(uint64_t a1)
{
  v2 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
  [v2 setIncludesPendingChanges:1];
  v3 = [BICCoreDataPersistentStoring _predicateForImageSetsWithIDs:*(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) backgroundContext];
  v19 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v19];
  v6 = v19;

  if (v6)
  {
    v7 = BCImageCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E9480();
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [*(a1 + 40) backgroundContext];
        [v14 deleteObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 40) saveIfNeeded];
}

void sub_C1FA0(uint64_t a1)
{
  v2 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
  [v2 setIncludesPendingChanges:1];
  v3 = [NSPredicate predicateWithValue:1];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 32) backgroundContext];
  v22 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v22];
  v6 = v22;

  if (v6)
  {
    v7 = BCImageCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E9620();
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [*(a1 + 32) backgroundContext];
        [v14 deleteObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) saveIfNeeded];
  v15 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C21F0;
  block[3] = &unk_2C8398;
  v17 = *(a1 + 40);
  dispatch_async(v15, block);
}

void sub_C21F0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_C2A98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf, int a20, __int16 a21, __int16 a22, int a23)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(a1);
    v24 = BCIMLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "[IMPersistentCache _createStorageForDb:]";
      WORD6(buf) = 2080;
      *(&buf + 14) = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Cache/BCPersistentCache.m";
      a22 = 1024;
      a23 = 199;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s %s:%d", &buf, 0x1Cu);
    }

    v25 = BCIMLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v23 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "@Could not create initial structure; %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0xC2A54);
  }

  _Unwind_Resume(a1);
}

void sub_C3784(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf, int a26, __int16 a27, __int16 a28, int a29)
{
  if (a2 == 1)
  {
    v29 = objc_begin_catch(a1);
    v30 = BCIMLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "[IMPersistentCache _insertCGImage:forKey:]";
      WORD6(buf) = 2080;
      *(&buf + 14) = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Cache/BCPersistentCache.m";
      a28 = 1024;
      a29 = 369;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%s %s:%d", &buf, 0x1Cu);
    }

    v31 = BCIMLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v29 reason];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "@Could not write output; %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0xC3714);
  }

  _Unwind_Resume(a1);
}

void sub_C3C08(void *a1)
{
  v1 = objc_opt_self();
}

void sub_C4468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = BCIMLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = "[IMPersistentCache deleteItemsForMimeType:]";
      WORD6(a9) = 2080;
      *(&a9 + 14) = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Cache/BCPersistentCache.m";
      a12 = 1024;
      LODWORD(a13) = 606;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%s %s:%d", &a9, 0x1Cu);
    }

    v15 = BCIMLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v13 reason];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "@%@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0xC4430);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C62B4()
{
  v0 = objc_opt_new();
  qword_342858 = v0;

  return _objc_release_x1(v0);
}

uint64_t sub_C6488(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_C64A0(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[IMPersistentCache alloc] initWithPath:a1[5] maxSize:a1[7]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1[6] + 8) + 40);
    if (v8)
    {
      [*(a1[4] + 8) setObject:v8 forKey:a1[5]];
    }
  }

  v9 = a1[5];
  v10 = *(a1[4] + 16);

  return [v10 addObject:v9];
}

id sub_C65EC(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  result = [*(*(a1 + 32) + 16) countForObject:*(a1 + 40)];
  if (!result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 8);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

id sub_C66E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

void sub_C680C(uint64_t a1)
{
  v2 = objc_alloc_init(NSFileManager);
  v3 = [v2 enumeratorAtPath:*(a1 + 32)];
  +[NSMutableArray array];
  v28 = v27 = v3;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = v4;
    v7 = objc_autoreleasePoolPush();
    v4 = [v3 nextObject];

    v8 = [v4 pathExtension];
    v9 = [v8 isEqualToString:*(a1 + 40)];

    if (v9)
    {
      v10 = [*(a1 + 32) stringByAppendingPathComponent:v4];
      v35 = 0;
      v11 = [v2 attributesOfItemAtPath:v10 error:&v35];
      v12 = v35;
      if (!v12 && ([*(*(a1 + 48) + 24) containsObject:v10] & 1) == 0)
      {
        v13 = [[NSMutableDictionary alloc] initWithDictionary:v11];
        [v13 setObject:v10 forKey:@"path"];
        [v28 addObject:v13];
        v5 += [v11 fileSize];

        v3 = v27;
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  while (v4);
  if (v5 >= 0xC800001)
  {
    v29 = v2;
    v26 = [NSSortDescriptor sortDescriptorWithKey:NSFileModificationDate ascending:1];
    v14 = [NSArray arrayWithObject:?];
    v15 = [v28 sortedArrayUsingDescriptors:v14];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = [v21 objectForKey:@"path"];
          v23 = [*(*(a1 + 48) + 8) objectForKey:v22];

          if (!v23)
          {
            v30 = 0;
            [v29 removeItemAtPath:v22 error:&v30];
            v24 = v30;
            v25 = v24 ? v5 : v5 - [v21 fileSize];

            v5 = v25;
            if (v25 >> 23 <= 0x18)
            {

              goto LABEL_23;
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v2 = v29;
    v3 = v27;
  }
}

void sub_C7728(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preferredContentSizeCategory];
  v10[0] = UIContentSizeCategoryExtraSmall;
  v10[1] = UIContentSizeCategorySmall;
  v10[2] = UIContentSizeCategoryMedium;
  v10[3] = UIContentSizeCategoryLarge;
  v10[4] = UIContentSizeCategoryExtraLarge;
  v10[5] = UIContentSizeCategoryExtraExtraLarge;
  v10[6] = UIContentSizeCategoryExtraExtraExtraLarge;
  v10[7] = UIContentSizeCategoryAccessibilityMedium;
  v10[8] = UIContentSizeCategoryAccessibilityLarge;
  v10[9] = UIContentSizeCategoryAccessibilityExtraLarge;
  v10[10] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v10[11] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v5 = [NSArray arrayWithObjects:v10 count:12];
  v6 = [v5 indexOfObject:v4];
  v7 = [v5 indexOfObject:*(a1 + 32)];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v5 objectAtIndexedSubscript:v8];
  [v3 setPreferredContentSizeCategory:v9];
}

id brc_segmentIDSplit(void *a1)
{
  v1 = [a1 componentsSeparatedByString:{@", "}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C9518;
  v5[3] = &unk_2CCA78;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v6 = v2;
  [v1 enumerateObjectsUsingBlock:v5];
  if ([v2 count])
  {
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_C81D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RCConfigurationSettings alloc];
  v5 = [*(a1 + 32) _permanentURLForRecordID:v3 containerIdentifier:*(a1 + 40)];

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [*(a1 + 32) bundleID];
  v9 = +[RCDeviceInfo defaultDeviceInfo];
  v10 = [v4 initWithRequestKey:@"booksConfigRequest" responseKey:@"booksConfigurationWrapper" fallbackURL:v5 userID:v6 storefrontID:v7 bundleID:v8 deviceInfo:v9 debugOverrides:*(a1 + 64) requestMode:1];

  (*(*(a1 + 72) + 16))();
}

void sub_C9518(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue]);
    [*(a1 + 32) addObject:v3];
  }
}

void sub_CD78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_CD7AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_CD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((*(a1 + 48) - a3 + *(a1 + 56)) <= *(a1 + 64))
  {
    *a7 = 1;
    v12 = [*(a1 + 32) substringWithRange:{a3, objc_msgSend(*(a1 + 32), "length") - a3}];
    v9 = [v12 copy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_CDBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_CDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 56) + a3;
  v7 = *(a1 + 32);
  v8 = [v7 length];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_CDCDC;
  v11[3] = &unk_2CCBA0;
  v14 = v6;
  v15 = a4;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  [v7 enumerateSubstringsInRange:0 options:v8 usingBlock:{4, v11}];
}

void sub_CDCDC(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v29 = a2;
  v11 = *(a1 + 48);
  if (v11 >= a3 && v11 - a3 < a4)
  {
    if (v11 <= a3 || (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v13 = objc_claimAutoreleasedReturnValue(), [v13 invertedSet], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v29, "rangeOfCharacterFromSet:", v14), v14, v13, v11 = *(a1 + 48), v11 <= v15 + a3))
    {
      v16 = 0;
    }

    else
    {
      v16 = [*(a1 + 32) stringByAppendingString:*(*(*(a1 + 40) + 8) + 40)];
      v11 = *(a1 + 48);
    }

    if (*(a1 + 56) + v11 < a3 + a4)
    {
      v17 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v18 = [v17 invertedSet];
      v19 = [v29 rangeOfCharacterFromSet:v18 options:4];
      v21 = v20;

      v22 = &v19[a3 + v21];
      if (*(a1 + 56) + *(a1 + 48) < v22)
      {
        v23 = v16;
        if (!v16)
        {
          v23 = *(*(*(a1 + 40) + 8) + 40);
        }

        v24 = v23;
        if (&v22[-*(a1 + 48) - *(a1 + 56)] == &dword_0 + 1 && (v25 = [v29 characterAtIndex:v19], +[NSCharacterSet punctuationCharacterSet](NSCharacterSet, "punctuationCharacterSet"), v26 = objc_claimAutoreleasedReturnValue(), LODWORD(v25) = objc_msgSend(v26, "characterIsMember:", v25), v26, v25))
        {
          v27 = [v29 substringWithRange:{v19, v21}];
          v28 = [v24 stringByAppendingString:v27];

          v16 = v27;
        }

        else
        {
          v28 = [v24 stringByAppendingString:*(a1 + 32)];
        }

        v16 = v28;
      }
    }

    if (v16)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v16);
    }

    *a7 = 1;
  }
}

void sub_CE514(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_342868;
  qword_342868 = v1;

  v3 = qword_342868;
  v4 = +[NSCharacterSet controlCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_342868;
  v6 = +[NSCharacterSet newlineCharacterSet];
  [v5 formUnionWithCharacterSet:v6];
}

void sub_CFEB8(id a1)
{
  v1 = qword_342878;
  qword_342878 = &off_2EBDA8;
}

id sub_D0510(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(a1 + 48);
  CMTimeMakeWithSeconds(&v5, *(a1 + 40), 1000000000);
  LODWORD(v3) = v2;
  return [v1 setRate:&v5 withVolumeRampDuration:v3];
}

id *sub_D0784(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[5];
    *(result[4] + 17) = v3;
    *(result[4] + 16) = v3;
    [result[4] play];
    v4 = v2[4];
    v5 = *(v2 + 5);

    return [v4 seekFinished:v5];
  }

  return result;
}

void sub_D27B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_D27D8(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v6 = BUDynamicCast();

  v3 = [v6 BOOLValue];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained player];
  [v5 setAppliesMediaSelectionCriteriaAutomatically:v3];
}

void sub_D28A4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_D292C;
  v2[3] = &unk_2C7BE8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_D292C(uint64_t a1)
{
  [*(a1 + 32) updateVolume];
  result = [*(a1 + 32) _updateAudioParameters];
  v3 = *(*(a1 + 32) + 176);
  if ((v3 & 4) != 0)
  {
    result = [*(a1 + 40) playerMediaTypeAvailable:?];
    v3 = *(*(a1 + 32) + 176);
  }

  if ((v3 & 8) != 0)
  {
    v4 = *(a1 + 40);

    return [v4 playerDurationAvailable:?];
  }

  return result;
}

void sub_D309C(uint64_t a1, int a2)
{
  v4 = BCAVPlayerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "updateSeekTime Finished %d", v5, 8u);
  }

  if (a2)
  {
    [*(a1 + 32) seekFinished:*(a1 + 40)];
  }
}

void sub_D3830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_D3858(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained duration];
    v6 = v5;
    v10 = *a2;
    Seconds = CMTimeGetSeconds(&v10);
    v8 = objc_loadWeakRetained(v4 + 24);
    v9 = v8;
    if (v8 && (v4[22] & 0x40) != 0)
    {
      [v8 playerPeriodicUpdate:v4 elapsed:0 duration:Seconds isFinished:v6];
    }
  }
}

void sub_D3C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D3C90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained triggerTimeObserverAt:*(a1 + 32)];
}

void sub_D3E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D3ECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = BCAVPlayerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "End TimeObserver %@", &v5, 0xCu);
  }

  [WeakRetained stop];
  [WeakRetained sendItemEndedNotification];
}

void sub_D5700(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = [v6 presentationSourceItem];
    [WeakRetained performSelector:v4 withObject:v5];
  }
}

void sub_D74FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 32) count])
  {
    v4 = [*(a1 + 32) description];
    v65 = [BCStopWatch stopwatchWithDescription:v4];

    v5 = [AEAnnotationSidecarConsumer annotationUuidsFromDictionaryRepresentations:*(*(a1 + 32) + 32)];
    v6 = objc_alloc_init(NSMutableSet);
    v69 = objc_alloc_init(NSMutableSet);
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_D7EA0;
    v106[3] = &unk_2CCD30;
    v79 = objc_alloc_init(NSMutableDictionary);
    v107 = v79;
    v68 = objc_retainBlock(v106);
    v7 = objc_autoreleasePoolPush();
    v8 = [NSPredicate predicateWithFormat:@"%K IN %@", @"annotationUuid", v5];
    v9 = [NSArray arrayWithObjects:@"annotationModificationDate", @"annotationDeleted", @"annotationUuid", 0];
    p_info = &OBJC_METACLASS___BCAugmentedExperiencePoint.info;
    v67 = v3;
    v11 = [AEAnnotation dictionaryResultsForAssetsWithPredicate:v8 properties:v9 inManagedObjectContext:v3];
    v66 = v5;
    v71 = v6;
    if ([v11 count])
    {
      v62 = v9;
      v63 = v8;
      v64 = v7;
      v61 = [v11 valueForKey:@"annotationUuid"];
      v76 = [NSDictionary dictionaryWithObjects:v11 forKeys:?];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = *(*(a1 + 32) + 32);
      v12 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
      v13 = v11;
      if (v12)
      {
        v14 = v12;
        v15 = *v103;
        v70 = v13;
        do
        {
          v16 = 0;
          v72 = v14;
          do
          {
            if (*v103 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v102 + 1) + 8 * v16);
            v18 = [p_info + 246 annotationUuidFromDictionaryRepresentation:v17];
            if (v18)
            {
              v19 = [v76 objectForKey:v18];
              v20 = v19;
              if (v19)
              {
                v21 = [v19 objectForKey:@"annotationDeleted"];
                if (([v21 BOOLValue] & 1) == 0)
                {
                  v22 = [v20 objectForKey:@"annotationModificationDate"];
                  if (v22)
                  {
                    v23 = [p_info + 246 lastModificationFromDictionaryRepresentation:v17];
                    [v22 timeIntervalSince1970];
                    if ([v23 unsignedLongLongValue] > v24)
                    {
                      [v69 addObject:v18];
                      (v68[2])(v68, v17);
                    }

                    p_info = (&OBJC_METACLASS___BCAugmentedExperiencePoint + 32);
                  }

                  else
                  {
                    [v69 addObject:v18];
                    (v68[2])(v68, v17);
                  }

                  v13 = v70;
                }

                v14 = v72;
              }

              else
              {
                [v71 addObject:v18];
              }
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
        }

        while (v14);
      }

      v8 = v63;
      v7 = v64;
      v9 = v62;
    }

    else
    {
      [v6 addObjectsFromArray:v5];
      v13 = v11;
    }

    objc_autoreleasePoolPop(v7);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v25 = [v79 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v98 objects:v111 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v99;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v99 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v98 + 1) + 8 * i);
          v31 = [v79 objectForKey:v30];
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v32 = [v31 countByEnumeratingWithState:&v94 objects:v110 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v95;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v95 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [*(a1 + 32) acknowledgeMergingAnnotationsWithAssetVersionMismatch:*(*(&v94 + 1) + 8 * j) assetID:v30 provider:*(a1 + 40)];
              }

              v33 = [v31 countByEnumeratingWithState:&v94 objects:v110 count:16];
            }

            while (v33);
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v98 objects:v111 count:16];
      }

      while (v27);
    }

    v36 = v71;
    v37 = v66;
    v3 = v67;
    if ([v71 count] || objc_msgSend(v69, "count"))
    {
      v38 = [NSDictionary dictionaryWithObjects:*(*(a1 + 32) + 32) forKeys:v66];
      if ([v71 count])
      {
        v39 = [IMCoalescedAction alloc];
        v91[0] = _NSConcreteStackBlock;
        v91[1] = 3221225472;
        v91[2] = sub_D7F88;
        v91[3] = &unk_2C7BE8;
        v92 = *(a1 + 40);
        v77 = v67;
        v93 = v77;
        v40 = [(IMCoalescedAction *)v39 initWithAction:v91];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v41 = v71;
        v42 = [v41 countByEnumeratingWithState:&v87 objects:v109 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v88;
          do
          {
            for (k = 0; k != v43; k = k + 1)
            {
              if (*v88 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v87 + 1) + 8 * k);
              v47 = objc_autoreleasePoolPush();
              v48 = [v38 objectForKey:v46];
              if (v48)
              {
                v49 = [v77 newByClass:objc_opt_class()];
                [v49 deserializeFromDictionary:v48 trustedSource:1];
              }

              [(IMCoalescedAction *)v40 increaseCount];

              objc_autoreleasePoolPop(v47);
            }

            v43 = [v41 countByEnumeratingWithState:&v87 objects:v109 count:16];
          }

          while (v43);
        }

        if ([v77 hasChanges])
        {
          [*(a1 + 40) saveManagedObjectContext:v77];
        }

        [v77 reset];

        v37 = v66;
        v3 = v67;
        v36 = v71;
      }

      if ([v69 count])
      {
        v50 = [IMCoalescedAction alloc];
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_D7F94;
        v84[3] = &unk_2C7BE8;
        v85 = *(a1 + 40);
        v51 = v3;
        v86 = v51;
        v52 = [(IMCoalescedAction *)v50 initWithAction:v84];
        v73 = [NSPredicate predicateWithFormat:@"%K IN %@", @"annotationUuid", v69];
        obja = v51;
        [AEAnnotation annotationsForPredicate:"annotationsForPredicate:inManagedObjectContext:" inManagedObjectContext:?];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v78 = v83 = 0u;
        v53 = [v78 countByEnumeratingWithState:&v80 objects:v108 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v81;
          do
          {
            for (m = 0; m != v54; m = m + 1)
            {
              if (*v81 != v55)
              {
                objc_enumerationMutation(v78);
              }

              v57 = *(*(&v80 + 1) + 8 * m);
              v58 = objc_autoreleasePoolPush();
              v59 = [v57 annotationUuid];
              v60 = [v38 objectForKey:v59];

              if (v60)
              {
                [v57 deserializeFromDictionary:v60 trustedSource:1];
              }

              [(IMCoalescedAction *)v52 increaseCount];

              objc_autoreleasePoolPop(v58);
            }

            v54 = [v78 countByEnumeratingWithState:&v80 objects:v108 count:16];
          }

          while (v54);
        }

        if ([obja hasChanges])
        {
          [*(a1 + 40) saveManagedObjectContext:obja];
        }

        [obja reset];

        v37 = v66;
        v3 = v67;
        v36 = v71;
      }
    }

    if ([v3 hasChanges])
    {
      [*(a1 + 40) saveManagedObjectContext:v3];
    }

    [v3 reset];
    [v65 report];
  }

  [*(a1 + 32) cacheGeneration];
}

void sub_D7EA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [AEAnnotation annotationAssetIDFromDictionaryRepresentation:v3];
  v4 = [v3 objectForKey:@"futureProofing3"];

  if (v4)
  {
    v5 = v7 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [*(a1 + 32) objectForKey:v7];
    if (!v6)
    {
      v6 = +[NSMutableSet set];
      [*(a1 + 32) setObject:v6 forKey:v7];
    }

    [v6 addObject:v4];
  }
}

void sub_D8A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_D8A1C(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[2] && WeakRetained[3] && a3 != 0)
  {
    v7 = WeakRetained;
    v6 = +[BAEventReporter sharedReporter];
    [v6 emitShareEventWithTracker:v7[2] propertyProvider:v7[3]];

    WeakRetained = v7;
  }
}

id BCDragRepresentationFactoryFileExtensionForUTI(uint64_t a1)
{
  if (a1)
  {
    v1 = [UTType typeWithIdentifier:a1];
    v2 = [v1 preferredFilenameExtension];
    if (v2)
    {
LABEL_8:

      goto LABEL_10;
    }

    v3 = [UTType typeWithIdentifier:@"com.apple.ibooks-container"];
    if (([v1 conformsToType:v3] & 1) == 0)
    {
      v4 = [UTType typeWithIdentifier:@"com.apple.ibooks"];
      if (![v1 conformsToType:v4])
      {
        v6 = [UTType typeWithIdentifier:@"com.apple.ibooks-folder"];
        v7 = [v1 conformsToType:v6];

        if ((v7 & 1) == 0)
        {
          v2 = 0;
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

LABEL_7:
    v2 = [BKAssetUtilities pathExtensionForContentType:4];
    goto LABEL_8;
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id BCDragRepresentationFactoryFileExtensionForURLAndUTI(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 pathExtension];
  v5 = v4;
  if (!v4 || [v4 isEqualToString:@"tmp"])
  {
    v6 = BCDragRepresentationFactoryFileExtensionForUTI(v3);

    v5 = v6;
  }

  return v5;
}

void sub_D9208(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 dataRepresentation];
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v6[2];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v6[2];
  }

  v8();
LABEL_7:
}

void sub_D9ADC(uint64_t a1, void *a2)
{
  v7 = @"assetID";
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:0];
  v3[2](v3, v6, 0);
}

uint64_t sub_D9BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ([*(a1 + 40) contentType] == &dword_4 + 2)
  {
    v5 = sub_D9D30(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      v7 = v5;

      v4 = v7;
    }
  }

  if ([v4 bc_isUbiquitousPromise])
  {
    v8 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v15 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_D9EDC;
    v12[3] = &unk_2CCDF8;
    v13 = 0;
    v14 = v3;
    [v8 coordinateReadingItemAtURL:v4 options:1 error:&v15 byAccessor:v12];
    v9 = v15;
  }

  else
  {
    v10 = objc_retainBlock(v3);
    v8 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v4, 1, 0);
    }
  }

  return 0;
}

id sub_D9D30(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 enumeratorAtURL:v1 includingPropertiesForKeys:&__NSArray0__struct options:2 errorHandler:&stru_2CCED8];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 pathExtension];
        if (v11 && [BKAssetUtilities isAudiobookTrackContentType:[BKAssetUtilities contentTypeForExtension:v11]])
        {
          if (v7)
          {

            goto LABEL_14;
          }

          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  return v7;
}

void sub_D9EDC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5, 1, *(a1 + 32));
  }
}

uint64_t sub_DA028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) storeID];
  v5 = [*(a1 + 32) contentType];
  if (v4)
  {
    v6 = v5 > 6;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ((1 << v5) & 0x53) == 0)
  {
    v13 = BCDragAndDropLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E9A9C(v13);
    }

    v14 = objc_retainBlock(v3);
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }

  else
  {
    v8 = v5;
    v9 = objc_retainBlock(v3);
    if (v9)
    {
      v10 = [_BCDragStoreURLProvider alloc];
      v11 = [*(a1 + 32) storeURL];
      v12 = [(_BCDragStoreURLProvider *)v10 initWithStoreID:v4 contentType:v8 storeURL:v11];
      v9[2](v9, v12, 0);
    }
  }

  return 0;
}

id sub_DA244(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2D2930;
  }

  v6 = [NSString stringWithFormat:@"%@%@%@", &stru_2D2930, v5, &stru_2D2930];
  [v2 appendString:v6];

  v7 = [v1 contentType];
  if (v7 > 3)
  {
    if (v7 != (&dword_4 + 2) && v7 != &dword_4)
    {
      goto LABEL_23;
    }
  }

  else if (v7 != (&dword_0 + 1))
  {
    if (v7 != (&dword_0 + 3))
    {
      goto LABEL_23;
    }

    v8 = objc_alloc_init(NSMutableArray);
    [v8 addObject:@"\n"];
    v9 = [v1 author];
    if ([v9 length])
    {
      [v8 addObject:v9];
      [v8 addObject:@"\n"];
    }

    v10 = [UTTypePDF preferredFilenameExtension];
    if ([v10 length])
    {
      [v8 addObject:&stru_2D2930];
      v11 = [v10 uppercaseString];
      [v8 addObject:v11];

      [v8 addObject:&stru_2D2930];
      [v8 addObject:@"\n"];
    }

    if ([v1 fileSize] >= 1)
    {
      [v8 addObject:&stru_2D2930];
      v12 = +[NSByteCountFormatter stringFromByteCount:countStyle:](NSByteCountFormatter, "stringFromByteCount:countStyle:", [v1 fileSize], 3);
      [v8 addObject:v12];

      [v8 addObject:&stru_2D2930];
      [v8 addObject:@"\n"];
    }

    v13 = [v8 componentsJoinedByString:&stru_2D2930];

    goto LABEL_21;
  }

  v8 = objc_alloc_init(NSMutableArray);
  [v8 addObject:@"\n"];
  v9 = [v1 author];
  if ([v9 length])
  {
    [v8 addObject:v9];
    [v8 addObject:@"\n"];
  }

  v14 = [v1 storeURL];
  v15 = [v14 absoluteString];

  if ([v15 length])
  {
    [v8 addObject:v15];
    [v8 addObject:@"\n"];
  }

  v13 = [v8 componentsJoinedByString:&stru_2D2930];
LABEL_21:

  if (v13)
  {
    [v2 appendString:v13];
  }

LABEL_23:

  return v2;
}

uint64_t sub_DA564(uint64_t a1, id a2)
{
  v3 = objc_retainBlock(a2);
  if (v3)
  {
    v4 = [*(a1 + 32) dataUsingEncoding:4];
    v3[2](v3, v4, 0);
  }

  return 0;
}

id sub_DA6A0(void *a1)
{
  v1 = a1;
  v2 = [v1 title];
  if (![v2 length])
  {
    v3 = [v1 localFileURL];
    v4 = [v3 lastPathComponent];

    v2 = v4;
  }

  v5 = [v2 stringByDeletingPathExtension];

  if ([v1 contentType] == &dword_0 + 3)
  {
    v6 = [UTTypePDF preferredFilenameExtension];
    v7 = [v5 stringByAppendingPathExtension:v6];

    v5 = v7;
  }

  return v5;
}

void sub_DAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_DAB90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_DABA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

BOOL sub_DAC10(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = BCDragAndDropLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1E9B24(v4, v5, v6);
  }

  return 0;
}

uint64_t sub_DCD60()
{
  v0 = objc_alloc_init(objc_opt_class());
  qword_342888 = v0;

  return _objc_release_x1(v0);
}

void sub_DD07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_DD0A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mocDidSave:v3];
}

void sub_DD5B8(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setPredicate:*(a1 + 32)];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = objc_retainBlock(*(a1 + 48));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4, v5);
  }
}

void sub_DD760(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setPredicate:*(a1 + 32)];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = objc_retainBlock(*(a1 + 48));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4, v5);
  }
}

void sub_DD908(uint64_t a1)
{
  v2 = [AEAnnotation predicateForGlobalAnnotationsWithAssetIDs:*(a1 + 32)];
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"annotationAssetID" ascending:1];
  v20 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
  v21 = v4;
  v24[0] = v4;
  v24[1] = v20;
  v5 = [NSArray arrayWithObjects:v24 count:2];
  [v3 setSortDescriptors:v5];

  [v3 setReturnsObjectsAsFaults:0];
  v22 = v2;
  [v3 setPredicate:v2];
  v6 = *(a1 + 40);
  v23 = 0;
  v7 = [v6 executeFetchRequest:v3 error:&v23];
  v8 = v23;
  v9 = [v7 mutableCopy];

  v10 = [v9 count];
  if (v10 >= 2)
  {
    v11 = v10 - 1;
    do
    {
      v12 = (v11 - 1);
      v13 = [v9 objectAtIndexedSubscript:?];
      v14 = [v13 annotationAssetID];
      v15 = [v9 objectAtIndexedSubscript:v12];
      v16 = [v15 annotationAssetID];
      v17 = [v14 isEqualToString:v16];

      if (v17)
      {
        [v9 removeObjectAtIndex:v12];
      }

      v11 = v12;
    }

    while (v12 > 0);
  }

  v18 = objc_retainBlock(*(a1 + 48));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18, v9, v8);
  }
}

void sub_DDC50(uint64_t a1)
{
  v2 = [AEAnnotation predicateForAnnotationsIncludingDeletedWithUUIDInList:*(a1 + 32)];
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  [v3 setReturnsObjectsAsFaults:0];
  v22 = v2;
  [v3 setPredicate:v2];
  v4 = *(a1 + 40);
  v29 = 0;
  v21 = v3;
  v5 = [v4 executeFetchRequest:v3 error:&v29];
  v20 = v29;
  v6 = [v5 mutableCopy];

  v7 = [NSMutableSet setWithArray:*(a1 + 32)];
  v8 = [v6 valueForKey:@"annotationUuid"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = [NSSet setWithArray:v10];
  [v7 minusSet:v11];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v7;
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
        v18 = [NSEntityDescription insertNewObjectForEntityForName:@"AEAnnotation" inManagedObjectContext:*(a1 + 40)];
        [v18 setAnnotationUuid:v17];
        [v6 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);
  }

  v19 = objc_retainBlock(*(a1 + 48));
  if (v19)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_DDF20;
    v23[3] = &unk_2C7D40;
    v24 = *(a1 + 40);
    v19[2](v19, v6, v20, v23);
  }
}

void sub_DDF20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_DDF9C;
  v2[3] = &unk_2C7D40;
  v3 = v1;
  [v3 performBlockAndWait:v2];
}

void sub_DDF9C(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v5 = 0;
    [v2 save:&v5];
    v3 = v5;
    if (v3)
    {
      v4 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1E9BBC();
      }
    }
  }
}

void sub_DE120(uint64_t a1)
{
  v2 = [AEAnnotation predicateForGlobalAnnotationsWithAssetIDs:*(a1 + 32)];
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  v4 = [[NSSortDescriptor alloc] initWithKey:@"annotationAssetID" ascending:1];
  v35 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
  v36 = v4;
  v48[0] = v4;
  v48[1] = v35;
  v5 = [NSArray arrayWithObjects:v48 count:2];
  [v3 setSortDescriptors:v5];

  [v3 setReturnsObjectsAsFaults:0];
  v38 = v2;
  [v3 setPredicate:v2];
  v6 = *(a1 + 40);
  v46 = 0;
  v37 = v3;
  v7 = [v6 executeFetchRequest:v3 error:&v46];
  v34 = v46;
  v8 = [v7 mutableCopy];

  v9 = [v8 count];
  if (v9 >= 2)
  {
    v10 = v9 - 1;
    do
    {
      v11 = (v10 - 1);
      v12 = [v8 objectAtIndexedSubscript:?];
      v13 = [v12 annotationAssetID];
      v14 = [v8 objectAtIndexedSubscript:v11];
      v15 = [v14 annotationAssetID];
      v16 = [v13 isEqualToString:v15];

      if (v16)
      {
        [v8 removeObjectAtIndex:v11];
      }

      v10 = v11;
    }

    while (v11 > 0);
  }

  v17 = a1;
  v18 = [NSMutableSet setWithArray:*(a1 + 32)];
  v19 = v8;
  v20 = [v8 valueForKey:@"annotationAssetID"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &__NSArray0__struct;
  }

  v23 = [NSSet setWithArray:v22];
  [v18 minusSet:v23];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v18;
  v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        v29 = [NSEntityDescription insertNewObjectForEntityForName:@"AEAnnotation" inManagedObjectContext:*(v17 + 40)];
        [v29 setAnnotationAssetID:v28];
        v30 = +[NSDate date];
        [v29 setAnnotationCreationDate:v30];

        [v29 setAnnotationCreatorIdentifier:@"com~apple~iBooks"];
        v31 = +[NSDate date];
        [v29 setAnnotationModificationDate:v31];

        v32 = +[NSString UUID];
        [v29 setAnnotationUuid:v32];

        [v29 setAnnotationType:3];
        [v29 setReadingProgressHighWaterMark:0.0];
        [v8 addObject:v29];
      }

      v25 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v25);
  }

  v33 = objc_retainBlock(*(v17 + 48));
  if (v33)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_DE5A4;
    v40[3] = &unk_2C7D40;
    v41 = *(v17 + 40);
    v33[2](v33, v19, v34, v40);
  }
}

void sub_DE5A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_DE620;
  v2[3] = &unk_2C7D40;
  v3 = v1;
  [v3 performBlock:v2];
}

void sub_DE620(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v5 = 0;
    [v2 save:&v5];
    v3 = v5;
    if (v3)
    {
      v4 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1E9BBC();
      }
    }
  }
}

void sub_DE764(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) privateUserEditMOC];
  (*(v2 + 16))(v2, v3);

  v4 = [*(a1 + 32) privateUserEditMOC];
  LODWORD(v3) = [v4 hasChanges];

  if (v3)
  {
    v5 = [*(a1 + 32) privateUserEditMOC];
    v8 = 0;
    [v5 save:&v8];
    v6 = v8;

    if (v6)
    {
      v7 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1E9BBC();
      }
    }
  }
}

void sub_DE8FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) privateUserEditMOC];
  (*(v2 + 16))(v2, v3);

  v4 = [*(a1 + 32) privateUserEditMOC];
  LODWORD(v3) = [v4 hasChanges];

  if (v3)
  {
    v5 = [*(a1 + 32) privateUserEditMOC];
    v8 = 0;
    [v5 save:&v8];
    v6 = v8;

    if (v6)
    {
      v7 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1E9BBC();
      }
    }
  }
}

void sub_DEABC(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [NSPredicate predicateWithFormat:@"dataType == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = BKMobileCloudSyncAnnotationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E9C94();
    }
  }

  v8 = [v5 firstObject];
  if (!v8)
  {
    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:*(a1 + 40)];
    [v8 setDataType:*(a1 + 32)];
  }

  v9 = objc_retainBlock(*(a1 + 48));
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_DEC84;
    v10[3] = &unk_2C7D40;
    v11 = *(a1 + 40);
    v9[2](v9, v8, v6, v10);
  }
}

void sub_DEC84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_DED00;
  v2[3] = &unk_2C7D40;
  v3 = v1;
  [v3 performBlock:v2];
}

void sub_DED00(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v5 = 0;
    [v2 save:&v5];
    v3 = v5;
    if (v3)
    {
      v4 = BKMobileCloudSyncAnnotationsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1E9BBC();
      }
    }
  }
}

void sub_DEEA4(uint64_t a1)
{
  [*(a1 + 32) setPersistentStoreCoordinator:*(a1 + 40)];
  v2 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:*(a1 + 32)];
  v3 = [v2 attributesByName];
  v4 = [v3 allKeys];

  v5 = [[NSFetchRequest alloc] initWithEntityName:@"AEAnnotation"];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setResultType:2];
  [v5 setIncludesPropertyValues:1];
  [v5 setPropertiesToFetch:v4];
  [v5 setPredicate:*(a1 + 48)];
  v6 = *(a1 + 32);
  v19 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v19];
  v8 = v19;
  if (!v5)
  {
    v9 = BCIMLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v21 = "[AEAnnotationProvider migrateFromPersistentStoreCoordinator:toPersistentStoreCoordinator:withPredicate:]_block_invoke";
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/AEAnnotation/AEAnnotationProvider.m";
      v24 = 1024;
      v25 = 474;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "@Could not fetch local objects: %@", buf, 0xCu);
    }
  }

  v11 = [[AEAnnotationManagedObjectContext alloc] initWithConcurrencyType:1];
  [(AEAnnotationManagedObjectContext *)v11 setSessionContextType:3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_DF164;
  v14[3] = &unk_2CBED8;
  v15 = v11;
  v16 = *(a1 + 56);
  v17 = v7;
  v18 = *(a1 + 64);
  v12 = v7;
  v13 = v11;
  [(AEAnnotationManagedObjectContext *)v13 performBlockAndWait:v14];
}

id sub_DF164(uint64_t a1)
{
  [*(a1 + 32) setPersistentStoreCoordinator:*(a1 + 40)];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = a1;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v16 = *v23;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = [*(v17 + 32) newByClass:objc_opt_class()];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [v5 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              v13 = [v5 valueForKey:v12];
              [v6 setValue:v13 forKey:v12];
            }

            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  return [*(v17 + 56) saveManagedObjectContext:*(v17 + 32)];
}

void sub_DF558(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  [v2 setResultType:0];
  v4 = [NSArray arrayWithObjects:@"annotationModificationDate", @"futureProofing6", 0];
  [v2 setPropertiesToFetch:v4];

  v5 = +[NSNull null];
  v6 = [NSPredicate predicateWithFormat:@"futureProofing6 == %@", v5];
  [v2 setPredicate:v6];

  v7 = *(a1 + 32);
  v25 = 0;
  v8 = [v7 executeFetchRequest:v2 error:&v25];
  v9 = v25;
  [v9 logRecursively];
  if (!v9)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 annotationModificationDate];
          [v15 setUserModificationDate:v17];

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v18 = *(a1 + 40);
    v19 = [NSNumber numberWithInteger:0];
    [v18 setMetadataObject:v19 forKey:@"Annotations-Update-Version"];

    [*(a1 + 40) saveManagedObjectContext:*(a1 + 32)];
    v8 = v20;
  }
}

void sub_DFE00(id a1)
{
  v1 = objc_alloc_init(IMFileWatcher);
  qword_342898 = v1;

  _objc_release_x1(v1);
}

void sub_DFFB0(id a1, id a2, IMFileWatcherPathGroup *a3, BOOL *a4)
{
  v4 = a3;
  [(IMFileWatcherPathGroup *)v4 invalidateEntries];
  [(IMFileWatcherPathGroup *)v4 teardown];
}

uint64_t sub_E0150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E0168(void *a1)
{
  v8 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (!v8)
  {
    v2 = [[IMFileWatcherPathGroup alloc] initWithFilePath:a1[5] targetQueue:*(a1[4] + 8)];
    if (!v2)
    {
      goto LABEL_7;
    }

    v8 = v2;
    [*(a1[4] + 16) setObject:v2 forKey:a1[5]];
  }

  v3 = [[IMFileWatcherEntry alloc] initWithQueue:a1[6] andBlock:a1[7]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (![(IMFileWatcherPathGroup *)v8 addEntry:*(*(a1[8] + 8) + 40)])
  {
    [*(a1[4] + 16) removeObjectForKey:a1[5]];
    v6 = *(a1[8] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v2 = v8;
LABEL_7:
}

void sub_E02F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v8 = v2;
  v4 = [v2 filePath];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    [v5 removeEntry:v8];
    if (![v5 numberOfEntries])
    {
      [v5 teardown];
      v6 = *(*(a1 + 40) + 16);
      v7 = [v5 filePath];
      [v6 removeObjectForKey:v7];
    }
  }
}

NSObject *sub_E094C(uint64_t a1, id a2)
{
  v4 = a2;
  v5 = open([a2 fileSystemRepresentation], 2129920);
  if (v5 == -1)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = dispatch_source_create(&_dispatch_source_type_vnode, v5, 0x67uLL, *(*(a1 + 32) + 16));
    v8 = v7;
    if (v7)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_E0A48;
      handler[3] = &unk_2CCFD8;
      v12 = v6;
      dispatch_source_set_cancel_handler(v7, handler);
      v9 = v8;
    }

    else
    {
      close(v6);
    }
  }

  return v8;
}

uintptr_t sub_E0A50(uint64_t a1)
{
  result = dispatch_source_get_data(*(a1 + 32));
  if ((result & 0x61) != 0)
  {
    v3 = *(a1 + 40);

    return [v3 handleDeleteOrRename];
  }

  else if ((result & 6) != 0)
  {
    v4 = *(a1 + 40);

    return [v4 handleWrite];
  }

  return result;
}

void sub_E232C(id a1)
{
  if (byte_3428D0 == 1)
  {
    v1 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1E9D7C(v1);
    }
  }

  byte_3428C0 = +[BCSyncUserDefaults _isICloudDriveSyncOptedIn];
}

void sub_E2588(id a1)
{
  v1 = objc_alloc_init(BCXPCUbiquityDisableServiceProxy);
  [(BCXPCUbiquityDisableServiceProxy *)v1 syncIsLiverpoolAndUbiquityEnabledWithReply:&stru_2CD170];
}

void sub_E25D4(id a1, BOOL a2, BOOL a3, NSError *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a4;
  v7 = BDSCloudKitLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E9DC0(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v5)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      if (v4)
      {
        v9 = @"YES";
      }

      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "iCloud switches from XPC: CloudKit=%{public}@ iCloudDrive=%{public}@", &v13, 0x16u);
    }

    +[BCSyncUserDefaults _q_archivedICloudDriveSyncOptedInBeforeInitialTCCSync];
    v8 = +[NSUserDefaults standardUserDefaults];
    if ([v8 BOOLForKey:@"BCSyncCloudKit"]!= v5)
    {
      v11 = BDSCloudKitLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109120;
        LODWORD(v14) = v5;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "BCSyncUserDefaults: Setting BCSyncCloudKitUserDefaults to %{BOOL}d", &v13, 8u);
      }

      v12 = +[NSUserDefaults standardUserDefaults];
      [v12 setBool:v5 forKey:@"BCSyncCloudKit"];
    }

    byte_3428D0 = 1;
  }
}

void sub_E27E0(id a1)
{
  v3[0] = @"BCSyncCloudKit";
  v3[1] = @"BKLibrary.ReadingNow";
  v3[2] = @"BCSyncICloudDrive";
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_3428D8;
  qword_3428D8 = v1;
}

id sub_E290C(uint64_t a1)
{
  v12[0] = @"isSignedIntoICloud";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isSignedIntoICloud]);
  v13[0] = v2;
  v12[1] = @"isCloudKitSyncOptedIn";
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isCloudKitSyncOptedIn]);
  v13[1] = v3;
  v12[2] = @"isICloudDriveSyncOptedIn";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isICloudDriveSyncOptedIn]);
  v13[2] = v4;
  v12[3] = @"collectionSyncEnabled";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isCollectionSyncOptedIn]);
  v13[3] = v5;
  v12[4] = @"readingNowSyncEnabled";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isReadingNowSyncOptedIn]);
  v13[4] = v6;
  v12[5] = @"annotationSyncEnabled";
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isAnnotationSyncOptedIn]);
  v13[5] = v7;
  v12[6] = @"isGlobalICloudDriveSyncOptedIn";
  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isGlobalICloudDriveSyncOptedIn]);
  v13[6] = v8;
  v12[7] = @"isICloudDriveEnabledForBooks";
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isICloudDriveEnabledForBooks]);
  v13[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

void sub_E2D10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 layer];
  [v2 addObject:v3];
}

int64_t sub_E3694(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 yStart];
  v9 = v8;
  [v7 yStart];
  if (v9 >= v10)
  {
    [v6 yStart];
    v13 = v12;
    [v7 yStart];
    if (v13 <= v14)
    {
      v15 = [v6 annotation];
      v16 = [v15 annotationUuid];
      v17 = [v7 annotation];
      v18 = [v17 annotationUuid];
      v11 = [v16 compare:v18];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

id _BCLightLevelLog(void)
{
  if (qword_3428F0 != -1)
  {
    sub_1E9E9C();
  }

  v1 = qword_3428E8;

  return v1;
}

void sub_E425C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCLightLevel");
  qword_3428E8 = v1;

  _objc_release_x1(v1);
}

void sub_E4348(id a1)
{
  v1 = objc_alloc_init(BCLightLevelController);
  v2 = qword_3428F8;
  qword_3428F8 = v1;

  dispatch_async(&_dispatch_main_q, &stru_2CD270);
}

void sub_E4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BCLightLevelController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_E4530(uint64_t a1)
{
  byte_342908 = [*(*(a1 + 32) + 24) isAlsSupported];
  if ((byte_342908 & 1) == 0)
  {
    v1 = _BCLightLevelLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Light level monitoring reported unavailable!", v2, 2u);
    }
  }
}

void sub_E45E8(id a1)
{
  byte_342918 = MGGetBoolAnswer();
  if ((byte_342918 & 1) == 0)
  {
    v1 = _BCLightLevelLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "No Light level sensor to monitor!", v2, 2u);
    }
  }
}

void sub_E4E88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E4F2C;
  block[3] = &unk_2CD2B8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_E4F2C(id result)
{
  if ((*(result + 48) & 1) == 0)
  {
    v2 = *(result + 4);
    [*(result + 5) floatValue];
    v3 = [v2 _luxToLightLevel:?];

    return [v2 _updateCurrentLightLevel:v3 force:0];
  }

  return result;
}

void sub_E509C(id a1)
{
  v1 = +[AEAnnotationThemeDescriptionsProvider themeDescriptionsDictionary];
  qword_342930 = v1;

  _objc_release_x1(v1);
}

uint64_t sub_E5C68(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342940 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5CD0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342950 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5D38(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342960 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5DA0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342970 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5E08(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342980 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5E70(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342990 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5ED8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5F40(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E5FA8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6010(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6078(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E60E0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3429F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6148(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E61B0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6218(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6280(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E62E8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6C4C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6CB4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6D1C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6D84(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6DEC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342A90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6E54(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6EBC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6F24(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6F8C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E6FF4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E705C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342AF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E70C4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E712C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7194(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E71FC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7264(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E72CC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342B50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7C30(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342B60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7C98(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342B70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7D00(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342B80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7D68(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342B90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7DD0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7E38(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7EA0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7F08(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7F70(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E7FD8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342BF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8040(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E80A8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8110(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8178(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E81E0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8248(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E82B0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_342C60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8C14(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342C70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8C7C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342C80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8CE4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342C90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8D4C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8DB4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8E1C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8E84(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8EEC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8F54(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342CF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E8FBC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9024(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E908C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E90F4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E915C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E91C4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E922C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9294(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_342D70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9BF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342D80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9C60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342D90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9CC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9D30(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9D98(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9E00(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9E68(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9ED0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342DF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9F38(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_E9FA0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA008(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA070(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA0D8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA140(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA1A8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA210(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EA278(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EABDC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342E90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAC44(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342EA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EACAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342EB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAD14(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342EC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAD7C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342ED0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EADE4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342EE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAE4C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342EF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAEB4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAF1C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAF84(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EAFEC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB054(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB0BC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB124(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB18C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB1F4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EB25C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342F90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBBC0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBC28(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBC90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBCF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBD60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBDC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_342FF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBE30(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343000 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBE98(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343010 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBF00(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343020 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBF68(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343030 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EBFD0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343040 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC038(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343050 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC0A0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343060 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC108(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343070 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC170(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343080 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC1D8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343090 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EC240(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3430A0 = v1;

  return _objc_release_x1(v1);
}

void sub_EC338(uint64_t a1)
{
  v1 = +[AEAnnotationTheme themeItemForAnnotationStyle:propertyName:](AEAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_3430B0 = [v1 BOOLValue];
}

uint64_t sub_ECCAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3430C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECD14(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3430D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECD7C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3430E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECDE4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3430F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECE4C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343100 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECEB4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343110 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECF1C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343120 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECF84(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343130 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ECFEC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343140 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED054(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343150 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED0BC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343160 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED124(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343170 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED18C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343180 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED1F4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343190 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED25C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED2C4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_ED32C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDC90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDCF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDD60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3431F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDDC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343200 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDE30(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343210 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDE98(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343220 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDF00(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343230 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDF68(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343240 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EDFD0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343250 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE038(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343260 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE0A0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343270 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE108(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343280 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE170(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343290 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE1D8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3432A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE240(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3432B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE2A8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3432C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EE310(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3432D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEC74(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3432E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EECDC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3432F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EED44(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343300 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEDAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343310 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEE14(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343320 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEE7C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343330 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEEE4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343340 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEF4C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343350 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EEFB4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343360 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF01C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343370 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF084(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343380 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF0EC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343390 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF154(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3433A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF1BC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3433B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF224(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3433C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF28C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3433D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EF2F4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_3433E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFC58(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3433F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFCC0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343400 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFD28(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343410 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFD90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343420 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFDF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343430 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFE60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343440 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFEC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343450 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFF30(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343460 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_EFF98(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343470 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0000(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343480 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0068(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343490 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F00D0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0138(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F01A0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0208(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0270(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F02D8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_3434F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0C3C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343500 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0CA4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343510 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0D0C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343520 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0D74(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343530 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0DDC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343540 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0E44(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343550 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0EAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343560 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0F14(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343570 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0F7C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343580 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F0FE4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343590 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F104C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F10B4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F111C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1184(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F11EC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1254(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3435F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F12BC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343600 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1C20(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343610 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1C88(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343620 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1CF0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343630 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1D58(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343640 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1DC0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343650 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1E28(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343660 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1E90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343670 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1EF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343680 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1F60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343690 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F1FC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2030(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2098(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2100(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2168(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F21D0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3436F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2238(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343700 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F22A0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343710 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2C04(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343720 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2C6C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343730 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2CD4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343740 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2D3C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343750 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2DA4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343760 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2E0C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343770 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2E74(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343780 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2EDC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343790 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2F44(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F2FAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3014(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F307C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F30E4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F314C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3437F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F31B4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343800 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F321C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343810 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3284(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343820 = v1;

  return _objc_release_x1(v1);
}

void sub_F337C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme themeItemForAnnotationStyle:propertyName:](AEAnnotationTheme, "themeItemForAnnotationStyle:propertyName:", [*(a1 + 32) annotationStyle], @"is_underline");
  byte_343830 = [v1 BOOLValue];
}

uint64_t sub_F3CF0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343840 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3D58(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343850 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3DC0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343860 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3E28(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343870 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3E90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343880 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3EF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343890 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3F60(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F3FC8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4030(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4098(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4100(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4168(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3438F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F41D0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343900 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4238(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343910 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F42A0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343920 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4308(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343930 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4370(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343940 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4CD4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343950 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4D3C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343960 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4DA4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343970 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4E0C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343980 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4E74(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343990 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4EDC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439A0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4F44(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439B0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F4FAC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439C0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5014(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439D0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F507C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439E0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F50E4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_3439F0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F514C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F51B4(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F521C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5284(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F52EC(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5354(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_marker_color", *(a1 + 40));
  qword_343A50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5CB8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343A60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5D20(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343A70 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5D88(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343A80 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5DF0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343A90 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5E58(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AA0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5EC0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AB0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5F28(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AC0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5F90(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AD0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F5FF8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AE0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6060(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343AF0 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F60C8(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B00 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6130(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B10 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6198(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B20 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6200(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B30 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6268(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B40 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F62D0(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B50 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6338(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"note_text_color", *(a1 + 40));
  qword_343B60 = v1;

  return _objc_release_x1(v1);
}

uint64_t sub_F6C9C(uint64_t a1)
{
  v1 = +[AEAnnotationTheme colorForAnnotationStyle:propertyName:pageTheme:](AEAnnotationTheme, "colorForAnnotationStyle:propertyName:pageTheme:", [*(a1 + 32) annotationStyle], @"highlight_color", *(a1 + 40));
  qword_343B70 = v1;

  return _objc_release_x1(v1);
}
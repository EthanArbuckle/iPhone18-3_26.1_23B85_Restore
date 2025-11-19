@interface BCReadingStatisticsController
+ (id)_persistentStoreDirectory;
+ (void)deleteCloudDataWithCompletion:(id)a3;
- (BCReadingStatisticsController)initWithAssetID:(id)a3 versionString:(id)a4 registerCloudSync:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3;
- (id)_TOCEntryCFIs;
- (id)_appVersion;
- (id)_fetchRequestForTOCEntriesInRange:(_NSRange)a3;
- (id)_managedObjectModel;
- (id)_persistentStoreCoordinatorWithAssetID:(id)a3;
- (id)_textNodeCFIToCharacterLengthMapForOrdinal:(unint64_t)a3 error:(id *)a4;
- (int64_t)characterCountForCFI:(id)a3;
- (unint64_t)hash;
- (void)_bulkUpdateTocEntryReadProportions:(id)a3 completion:(id)a4;
- (void)_bulkUpdateWithReadRanges:(id)a3 completion:(id)a4;
- (void)_connectOrdinalsWithCompletion:(id)a3;
- (void)_getHeatMapWithCompletion:(id)a3;
- (void)_getTOCEntriesWithCompletion:(id)a3;
- (void)_getTextNodesWithCompletion:(id)a3;
- (void)_invalidateTOCEntriesIntersectingCFIs:(id)a3;
- (void)_invalidateTOCEntryCFICache;
- (void)_loadWithCompletion:(id)a3;
- (void)_processDirtyTOCEntriesWithCompletion:(id)a3;
- (void)_recreatePersistentStoreDirectory;
- (void)_saveHeatMapWithCompletion:(id)a3;
- (void)_setDisableCoalescing;
- (void)_setOfRangesWithThreshold:(double)a3 completion:(id)a4;
- (void)_setOfReadRangesWithCompletion:(id)a3;
- (void)_slideIterateSortedArray:(id)a3 andArray:(id)a4 index1:(unint64_t *)a5 index2:(unint64_t *)a6 comparator:(id)a7 executing:(id)a8;
- (void)_updateAppVersionOnMOC:(id)a3;
- (void)_updateHeatMapWithCompletion:(id)a3;
- (void)addObserver:(id)a3;
- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)bookStatisticsWithCompletion:(id)a3;
- (void)cfisDidAppear:(id)a3;
- (void)cfisWillDisappear:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setupWithCompletion:(id)a3;
- (void)teardown;
- (void)tocCFIMapWithCompletion:(id)a3;
- (void)tocEntryStatisticsForHref:(id)a3 completion:(id)a4;
@end

@implementation BCReadingStatisticsController

- (BCReadingStatisticsController)initWithAssetID:(id)a3 versionString:(id)a4 registerCloudSync:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v56.receiver = self;
  v56.super_class = BCReadingStatisticsController;
  v10 = [(BCReadingStatisticsController *)&v56 init];
  if (v10)
  {
    v11 = [v8 copy];
    assetID = v10->_assetID;
    v10->_assetID = v11;

    objc_storeStrong(&v10->_bookVersionString, a4);
    v13 = objc_alloc_init(BCCountedCFISet);
    heatMap = v10->_heatMap;
    v10->_heatMap = v13;

    [(BCCountedCFISet *)v10->_heatMap setLengthProvider:v10];
    [(BCCountedCFISet *)v10->_heatMap setMaximumCFICount:1000];
    v15 = objc_alloc_init(BCMutableCFISet);
    visibleCFIs = v10->_visibleCFIs;
    v10->_visibleCFIs = v15;

    v17 = objc_alloc_init(NSMutableIndexSet);
    tocEntriesRequiringProcessing = v10->_tocEntriesRequiringProcessing;
    v10->_tocEntriesRequiringProcessing = v17;

    v19 = objc_alloc_init(NSMutableIndexSet);
    haveTOCCFIIndices = v10->_haveTOCCFIIndices;
    v10->_haveTOCCFIIndices = v19;

    v21 = objc_alloc_init(NSMutableIndexSet);
    haveTextNodeLengthIndices = v10->_haveTextNodeLengthIndices;
    v10->_haveTextNodeLengthIndices = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_DEFAULT, 0);

    v25 = dispatch_queue_create("com.apple.iBooks.BCReadingStatistics.dispatchQueue", v24);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v25;

    v27 = +[NSMutableArray array];
    observers = v10->_observers;
    v10->_observers = v27;

    v10->_readingThreshold = 1.0;
    objc_initWeak(&location, v10);
    v29 = [BUCoalescingCallBlock alloc];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1BA7C;
    v52[3] = &unk_2C8570;
    objc_copyWeak(&v54, &location);
    v30 = v10;
    v53 = v30;
    v31 = [v29 initWithNotifyBlock:v52 blockDescription:@"BCReadingStatisticsController _saveHeatMapWithCompletion"];
    v32 = v30[18];
    v30[18] = v31;

    [v30[18] setCoalescingDelay:1.0];
    [v30[18] setMaximumDelay:5.0];
    v33 = [BUCoalescingCallBlock alloc];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1BC18;
    v49[3] = &unk_2C8570;
    objc_copyWeak(&v51, &location);
    v34 = v30;
    v50 = v34;
    v35 = [v33 initWithNotifyBlock:v49 blockDescription:@"BCReadingStatisticsController _processDirtyTOCEntriesWithCompletion"];
    v36 = v34[19];
    v34[19] = v35;

    [v34[19] setCoalescingDelay:0.1];
    [v34[19] setMaximumDelay:1.0];
    v37 = [BUCoalescingCallBlock alloc];
    v43 = _NSConcreteStackBlock;
    v44 = 3221225472;
    v45 = sub_1BCEC;
    v46 = &unk_2C8570;
    objc_copyWeak(&v48, &location);
    v38 = v34;
    v47 = v38;
    v39 = [v37 initWithNotifyBlock:&v43 blockDescription:@"BCReadingStatisticsController _connectOrdinalsWithCompletion"];
    v40 = v38[20];
    v38[20] = v39;

    [v38[20] setCoalescingDelay:{1.0, v43, v44, v45, v46}];
    [v38[20] setMaximumDelay:15.0];
    *(v38 + 24) = v5;
    if (v5)
    {
      v41 = +[BCReadingStatisticsSyncManager sharedInstance];
      [v41 registerReadingStatisticsController:v38];
    }

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v51);

    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  if (self->_registerCloudSync)
  {
    v3 = +[BCReadingStatisticsSyncManager sharedInstance];
    [v3 unregisterReadingStatisticsController:self];
  }

  v4.receiver = self;
  v4.super_class = BCReadingStatisticsController;
  [(BCReadingStatisticsController *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [v4 assetID];
    v6 = [(BCReadingStatisticsController *)self assetID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(BCReadingStatisticsController *)self assetID];
  v3 = [v2 hash];

  return v3;
}

- (void)tocEntryStatisticsForHref:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(BCReadingStatisticsController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1BFE0;
  v11[3] = &unk_2C8598;
  v11[4] = self;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlock:v11];
}

- (void)bookStatisticsWithCompletion:(id)a3
{
  v4 = a3;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C2E4;
  v7[3] = &unk_2C7B30;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)tocCFIMapWithCompletion:(id)a3
{
  v4 = a3;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C668;
  v7[3] = &unk_2C7B30;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)cfisDidAppear:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C8CC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)cfisWillDisappear:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1CA54;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)setupWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  moc = self->_moc;
  self->_moc = v4;

  v6 = self->_moc;
  v7 = [(BCReadingStatisticsController *)self assetID];
  v8 = [(BCReadingStatisticsController *)self _persistentStoreCoordinatorWithAssetID:v7];
  [(NSManagedObjectContext *)v6 setPersistentStoreCoordinator:v8];

  [(NSManagedObjectContext *)self->_moc setUndoManager:0];
  [(BCReadingStatisticsController *)self _loadWithCompletion:v9];
}

- (void)teardown
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1CC7C;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3
{
  v4 = [(BCReadingStatisticsController *)self haveTextNodeLengthIndices];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3 ^ 1;
}

- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v22 = self;
  v6 = a3;
  v7 = a5;
  v8 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v29 = 0;
        v15 = [BCCFI cfiWithString:v14 error:&v29, v22];
        v16 = v29;
        if (v16)
        {
          v18 = v16;
          v19 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1E4CF4();
          }

          v20 = objc_retainBlock(v7);
          v21 = v20;
          if (v20)
          {
            (*(v20 + 2))(v20, v18);
          }

          goto LABEL_15;
        }

        v17 = [v9 objectForKeyedSubscript:v14];
        [v8 setObject:v17 forKeyedSubscript:v15];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(BCReadingStatisticsController *)v22 moc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1CF54;
  v24[3] = &unk_2C8608;
  v28 = a4;
  v25 = v24[4] = v22;
  v26 = v8;
  v27 = v7;
  v18 = v25;
  [v18 performBlock:v24];

LABEL_15:
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3
{
  v4 = [(BCReadingStatisticsController *)self haveTOCCFIIndices];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3 ^ 1;
}

- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(BCReadingStatisticsController *)self moc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1D7E8;
  v13[3] = &unk_2C8608;
  v16 = v9;
  v17 = a4;
  v14 = v13[4] = self;
  v15 = v8;
  v10 = v9;
  v11 = v8;
  v12 = v14;
  [v12 performBlock:v13];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DE20;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DF4C;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (int64_t)characterCountForCFI:(id)a3
{
  v4 = a3;
  v5 = [v4 characterCountIfComputable];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v6 = [v4 headCFI];
  v25 = 0;
  v7 = -[BCReadingStatisticsController _textNodeCFIToCharacterLengthMapForOrdinal:error:](self, "_textNodeCFIToCharacterLengthMapForOrdinal:error:", [v6 spineIndex], &v25);
  v8 = v25;
  if (v8)
  {
    v9 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4E24();
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v28[0] = v6;
  v10 = +[NSNull null];
  v28[1] = v10;
  v9 = [NSArray arrayWithObjects:v28 count:2];

  v11 = [v7 indexOfObject:v9 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 1024, &stru_2C8668}];
  v12 = [v7 count];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v11 <= 1 ? 1 : v11;
  if (v15 > v12)
  {
    goto LABEL_10;
  }

  v24 = v6;
  v5 = 0;
  v17 = v15 - 1;
  *&v13 = 138412290;
  v23 = v13;
  while (1)
  {
    v18 = [v7 objectAtIndexedSubscript:{v17, v23}];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v4 intersectWithCFI:v19];
    if (![v20 isRange])
    {
      break;
    }

    if ([v20 isEqual:v19])
    {
      v21 = [v18 objectAtIndexedSubscript:1];
      v5 = &v5[[v21 integerValue]];
    }

    else
    {
      v22 = [v20 characterCountIfComputable];
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = &v5[v22];
        goto LABEL_24;
      }

      v21 = BCReadingStatisticsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = v23;
        v27 = v20;
        _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Unexpected failure to compute character count for CFI %@", buf, 0xCu);
      }
    }

LABEL_24:
    if (v14 == ++v17)
    {
      goto LABEL_25;
    }
  }

  if ([v4 compareTailToHead:v19] != -1)
  {
    goto LABEL_24;
  }

LABEL_25:
  v8 = 0;
  v6 = v24;
LABEL_11:

LABEL_12:
  return v5;
}

- (id)_textNodeCFIToCharacterLengthMapForOrdinal:(unint64_t)a3 error:(id *)a4
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E52C;
  v29 = sub_1E53C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E52C;
  v23 = sub_1E53C;
  v24 = 0;
  if ([(BCReadingStatisticsController *)self cachedTextNodeCFIsAndCharacterCountsOrdinal]== a3)
  {
    v7 = [(BCReadingStatisticsController *)self cachedTextNodeCFIsAndCharacterCounts];
    v8 = v26[5];
    v26[5] = v7;
  }

  if (!v26[5])
  {
    v9 = [(BCReadingStatisticsController *)self moc];
    v10 = [(BCReadingStatisticsController *)self moc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1E544;
    v14[3] = &unk_2C86B0;
    v14[4] = self;
    v18 = a3;
    v11 = v9;
    v15 = v11;
    v16 = &v19;
    v17 = &v25;
    [v10 performBlockAndWait:v14];

    [(BCReadingStatisticsController *)self setCachedTextNodeCFIsAndCharacterCounts:v26[5]];
    [(BCReadingStatisticsController *)self setCachedTextNodeCFIsAndCharacterCountsOrdinal:a3];
  }

  if (a4)
  {
    *a4 = v20[5];
  }

  v12 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)_appVersion
{
  if (qword_342140 != -1)
  {
    sub_1E4E8C();
  }

  v3 = qword_342138;

  return v3;
}

- (void)_updateHeatMapWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = [(BCReadingStatisticsController *)self lastUpdate];
  [(BCReadingStatisticsController *)self setLastUpdate:v5];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (v6 && (-[BCReadingStatisticsController visibleCFIs](self, "visibleCFIs"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && ([v5 timeIntervalSinceDate:v6], v9 = v8, v8 > 1.0))
  {
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v10 = [(BCReadingStatisticsController *)self heatMap];
    v28 = self;
    v11 = [(BCReadingStatisticsController *)self visibleCFIs];
    v12 = [v11 copy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v12;
    v13 = [v12 allCFIs];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        v17 = 0;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          v19 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v18 string];
            *buf = 138412546;
            v37 = v20;
            v38 = 2048;
            v39 = v9;
            _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Read %@ for %.1lf seconds", buf, 0x16u);
          }

          [v10 addCFI:v18 count:v9];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v15);
    }

    v21 = [v27 allCFIs];
    [(BCReadingStatisticsController *)v28 _invalidateTOCEntriesIntersectingCFIs:v21];

    v22 = [(BCReadingStatisticsController *)v28 coalescedSave];
    [v22 signalWithCompletion:&stru_2C86F0];

    v4 = v31;
    v23 = objc_retainBlock(v31);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }

    v6 = v29;
    v5 = v30;
  }

  else
  {
    v25 = objc_retainBlock(v4);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }
}

- (void)_saveHeatMapWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(BCReadingStatisticsController *)self heatMap];
  v6 = [v5 allCFIStringCounts];
  [(BCReadingStatisticsController *)self moc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1ECBC;
  v11 = v10[3] = &unk_2C8598;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
  v8 = v6;
  v9 = v11;
  [v9 performBlock:v10];
}

- (void)_updateAppVersionOnMOC:(id)a3
{
  v4 = a3;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsAppVersion"];
  v14 = @"appVersion";
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  [v5 setPropertiesToFetch:v6];

  v13 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v13];
  v8 = v7;
  if (v13 || ![v7 count])
  {
    v9 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsAppVersion" inManagedObjectContext:v4];
    v10 = [(BCReadingStatisticsController *)self _appVersion];
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v9 = [(BCReadingStatisticsController *)self _appVersion];
    v11 = [v8 objectAtIndexedSubscript:0];
    v10 = v11;
    v12 = v9;
  }

  [v11 setAppVersion:v12];
}

- (void)_loadWithCompletion:(id)a3
{
  v4 = a3;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F1E0;
  v8 = v7[3] = &unk_2C7B30;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (id)_fetchRequestForTOCEntriesInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsTOCEntry"];
  v6 = [[NSSortDescriptor alloc] initWithKey:@"ordinal" ascending:1];
  v7 = [[NSSortDescriptor alloc] initWithKey:@"intraOrdinalOrder" ascending:1];
  v10[0] = v6;
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  [v5 setSortDescriptors:v8];

  if (location != 0x7FFFFFFFFFFFFFFFLL && length)
  {
    [v5 setFetchOffset:location];
    [v5 setFetchLimit:length];
  }

  return v5;
}

- (void)_bulkUpdateTocEntryReadProportions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 mutableCopy];
    v9 = [(BCReadingStatisticsController *)self moc];
    v10 = [(BCReadingStatisticsController *)self moc];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1FD84;
    v15[3] = &unk_2C8598;
    v15[4] = self;
    v16 = v9;
    v17 = v8;
    v18 = v7;
    v11 = v8;
    v12 = v9;
    [v10 performBlock:v15];
  }

  else
  {
    v13 = objc_retainBlock(v7);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)_setOfReadRangesWithCompletion:(id)a3
{
  v4 = a3;
  [(BCReadingStatisticsController *)self readingThreshold];
  [(BCReadingStatisticsController *)self _setOfRangesWithThreshold:v4 completion:?];
}

- (void)_setOfRangesWithThreshold:(double)a3 completion:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_202E8;
  block[3] = &unk_2C8740;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)_bulkUpdateWithReadRanges:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if ([v6 cfiCount] < 1)
  {
    v9 = objc_retainBlock(v7);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_204B0;
    block[3] = &unk_2C8768;
    objc_copyWeak(&v15, &location);
    v12 = v6;
    v13 = self;
    v14 = v7;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

- (void)_getHeatMapWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20670;
  v7[3] = &unk_2C8790;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)_setDisableCoalescing
{
  v3 = [(BCReadingStatisticsController *)self coalescedSave];
  [v3 setCoalescingDelay:0.0];

  v4 = [(BCReadingStatisticsController *)self coalescedSave];
  [v4 setMaximumDelay:0.0];

  v5 = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
  [v5 setCoalescingDelay:0.0];

  v6 = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
  [v6 setMaximumDelay:0.0];

  v7 = [(BCReadingStatisticsController *)self coalescedConnectOrdinals];
  [v7 setCoalescingDelay:0.0];

  v8 = [(BCReadingStatisticsController *)self coalescedConnectOrdinals];
  [v8 setMaximumDelay:0.0];
}

- (void)_getTextNodesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCReadingStatisticsController *)self moc];
  v6 = [(BCReadingStatisticsController *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_208A4;
  v9[3] = &unk_2C8488;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performBlock:v9];
}

- (void)_getTOCEntriesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCReadingStatisticsController *)self moc];
  v6 = [(BCReadingStatisticsController *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_20AAC;
  v9[3] = &unk_2C7B30;
  v9[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performBlock:v9];
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication applicationDocumentsDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"BCReadingStatistics"];

  v6 = +[NSFileManager defaultManager];
  v9 = 0;
  [v6 removeItemAtPath:v5 error:&v9];
  v7 = v9;

  v8 = objc_retainBlock(v3);
  if (v8)
  {
    v8[2](v8, v7 == 0, v7);
  }
}

+ (id)_persistentStoreDirectory
{
  v2 = +[UIApplication applicationDocumentsDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"BCReadingStatistics"];

  return v3;
}

- (void)_recreatePersistentStoreDirectory
{
  v5 = [objc_opt_class() _persistentStoreDirectory];
  v2 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 relativePath];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_managedObjectModel
{
  model = self->_model;
  if (!model)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"BCReadingStatistics" ofType:@"momd"];

    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v7 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v6];
    v8 = self->_model;
    self->_model = v7;

    model = self->_model;
  }

  return model;
}

- (id)_persistentStoreCoordinatorWithAssetID:(id)a3
{
  v4 = a3;
  v5 = [NSPersistentStoreCoordinator alloc];
  v6 = [(BCReadingStatisticsController *)self _managedObjectModel];
  v7 = [v5 initWithManagedObjectModel:v6];

  v20[0] = NSInferMappingModelAutomaticallyOption;
  v20[1] = NSMigratePersistentStoresAutomaticallyOption;
  v21[0] = &__kCFBooleanTrue;
  v21[1] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v9 = [objc_opt_class() _persistentStoreDirectory];
  v10 = [(BCReadingStatisticsController *)self _persistentStoreFileNameWithAssetID:v4];

  [(BCReadingStatisticsController *)self _recreatePersistentStoreDirectory];
  v11 = [v9 stringByAppendingPathComponent:v10];
  v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
  v19 = 0;
  v13 = [v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v12 options:v8 error:&v19];
  v14 = v19;
  if (!v13)
  {
    v15 = +[NSFileManager defaultManager];
    [v15 removeItemAtPath:v9 error:0];

    [(BCReadingStatisticsController *)self _recreatePersistentStoreDirectory];
    v18 = v14;
    v13 = [v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v12 options:v8 error:&v18];
    v16 = v18;

    v14 = v16;
  }

  return v7;
}

- (void)_invalidateTOCEntryCFICache
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_210D0;
  block[3] = &unk_2C7D40;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (id)_TOCEntryCFIs
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = [(BCReadingStatisticsController *)self orderedTOCEntryCFICache];

  if (!v3)
  {
    [(BCReadingStatisticsController *)self moc];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1E52C;
    v14 = sub_1E53C;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_21234;
    v7[3] = &unk_2C8838;
    v4 = v7[4] = self;
    v8 = v4;
    v9 = &v10;
    [v4 performBlockAndWait:v7];
    [(BCReadingStatisticsController *)self setOrderedTOCEntryCFICache:v11[5]];

    _Block_object_dispose(&v10, 8);
  }

  v5 = [(BCReadingStatisticsController *)self orderedTOCEntryCFICache];

  return v5;
}

- (void)_invalidateTOCEntriesIntersectingCFIs:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(BCReadingStatisticsController *)self tocEntriesRequiringProcessing];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 count];

    if (v7)
    {
      v8 = [(BCReadingStatisticsController *)self _TOCEntryCFIs];
      if ([v8 count])
      {
        v11 = 0;
        v12 = &v11;
        v13 = 0x2020000000;
        v14 = 0;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_21708;
        v10[3] = &unk_2C88A0;
        v10[4] = self;
        v10[5] = &v11;
        [(BCReadingStatisticsController *)self _slideIterateSortedArray:v4 andArray:v8 index1:0 index2:0 comparator:&stru_2C8878 executing:v10];
        if (*(v12 + 24) == 1)
        {
          v9 = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
          [v9 signalWithCompletion:&stru_2C88C0];
        }

        _Block_object_dispose(&v11, 8);
      }
    }
  }
}

- (void)_processDirtyTOCEntriesWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(BCReadingStatisticsController *)self tocEntriesRequiringProcessing];
  if ([v5 count])
  {
    v6 = [(BCReadingStatisticsController *)self heatMap];
    v7 = [v6 allCFICounts];

    [(BCReadingStatisticsController *)self moc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_219A8;
    v12[3] = &unk_2C8988;
    v13 = v12[4] = self;
    v14 = v7;
    v15 = v5;
    v16 = v4;
    v8 = v7;
    v9 = v13;
    [v9 performBlock:v12];
  }

  else
  {
    v10 = objc_retainBlock(v4);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)_connectOrdinalsWithCompletion:(id)a3
{
  v4 = a3;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_222D0;
  v8 = v7[3] = &unk_2C7B30;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)_slideIterateSortedArray:(id)a3 andArray:(id)a4 index1:(unint64_t *)a5 index2:(unint64_t *)a6 comparator:(id)a7 executing:(id)a8
{
  v28 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v16 = [v28 count];
  v17 = [v13 count];
  v18 = a5;
  v19 = v17;
  if (a5)
  {
    a5 = *a5;
  }

  v26 = v18;
  if (a6)
  {
    v20 = *a6;
  }

  else
  {
    v20 = 0;
  }

  v27 = a6;
  if (a5 < v16 && v20 < v17)
  {
    do
    {
      v21 = [v28 objectAtIndexedSubscript:{a5, v26}];
      v22 = [v13 objectAtIndexedSubscript:v20];
      v23 = objc_retainBlock(v15);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v21, v22, a5, v20);
      }

      if (v14[2](v14, v21, v22) == 1)
      {
        ++v20;
      }

      else
      {
        a5 = (a5 + 1);
      }
    }

    while (a5 < v16 && v20 < v19);
  }

  if (v26)
  {
    *v26 = a5;
  }

  if (v27)
  {
    *v27 = v20;
  }
}

@end
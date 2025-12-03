@interface BCReadingStatisticsController
+ (id)_persistentStoreDirectory;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (BCReadingStatisticsController)initWithAssetID:(id)d versionString:(id)string registerCloudSync:(BOOL)sync;
- (BOOL)isEqual:(id)equal;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal;
- (id)_TOCEntryCFIs;
- (id)_appVersion;
- (id)_fetchRequestForTOCEntriesInRange:(_NSRange)range;
- (id)_managedObjectModel;
- (id)_persistentStoreCoordinatorWithAssetID:(id)d;
- (id)_textNodeCFIToCharacterLengthMapForOrdinal:(unint64_t)ordinal error:(id *)error;
- (int64_t)characterCountForCFI:(id)i;
- (unint64_t)hash;
- (void)_bulkUpdateTocEntryReadProportions:(id)proportions completion:(id)completion;
- (void)_bulkUpdateWithReadRanges:(id)ranges completion:(id)completion;
- (void)_connectOrdinalsWithCompletion:(id)completion;
- (void)_getHeatMapWithCompletion:(id)completion;
- (void)_getTOCEntriesWithCompletion:(id)completion;
- (void)_getTextNodesWithCompletion:(id)completion;
- (void)_invalidateTOCEntriesIntersectingCFIs:(id)is;
- (void)_invalidateTOCEntryCFICache;
- (void)_loadWithCompletion:(id)completion;
- (void)_processDirtyTOCEntriesWithCompletion:(id)completion;
- (void)_recreatePersistentStoreDirectory;
- (void)_saveHeatMapWithCompletion:(id)completion;
- (void)_setDisableCoalescing;
- (void)_setOfRangesWithThreshold:(double)threshold completion:(id)completion;
- (void)_setOfReadRangesWithCompletion:(id)completion;
- (void)_slideIterateSortedArray:(id)array andArray:(id)andArray index1:(unint64_t *)index1 index2:(unint64_t *)index2 comparator:(id)comparator executing:(id)executing;
- (void)_updateAppVersionOnMOC:(id)c;
- (void)_updateHeatMapWithCompletion:(id)completion;
- (void)addObserver:(id)observer;
- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion;
- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion;
- (void)bookStatisticsWithCompletion:(id)completion;
- (void)cfisDidAppear:(id)appear;
- (void)cfisWillDisappear:(id)disappear;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setupWithCompletion:(id)completion;
- (void)teardown;
- (void)tocCFIMapWithCompletion:(id)completion;
- (void)tocEntryStatisticsForHref:(id)href completion:(id)completion;
@end

@implementation BCReadingStatisticsController

- (BCReadingStatisticsController)initWithAssetID:(id)d versionString:(id)string registerCloudSync:(BOOL)sync
{
  syncCopy = sync;
  dCopy = d;
  stringCopy = string;
  v56.receiver = self;
  v56.super_class = BCReadingStatisticsController;
  v10 = [(BCReadingStatisticsController *)&v56 init];
  if (v10)
  {
    v11 = [dCopy copy];
    assetID = v10->_assetID;
    v10->_assetID = v11;

    objc_storeStrong(&v10->_bookVersionString, string);
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
    *(v38 + 24) = syncCopy;
    if (syncCopy)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    assetID = [equalCopy assetID];
    assetID2 = [(BCReadingStatisticsController *)self assetID];
    v7 = [assetID isEqual:assetID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  assetID = [(BCReadingStatisticsController *)self assetID];
  v3 = [assetID hash];

  return v3;
}

- (void)tocEntryStatisticsForHref:(id)href completion:(id)completion
{
  hrefCopy = href;
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1BFE0;
  v11[3] = &unk_2C8598;
  v11[4] = self;
  v13 = v12 = hrefCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = v13;
  v10 = hrefCopy;
  [v9 performBlock:v11];
}

- (void)bookStatisticsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C2E4;
  v7[3] = &unk_2C7B30;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)tocCFIMapWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C668;
  v7[3] = &unk_2C7B30;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)cfisDidAppear:(id)appear
{
  appearCopy = appear;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C8CC;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = appearCopy;
  v6 = appearCopy;
  dispatch_async(accessQueue, v7);
}

- (void)cfisWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1CA54;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = disappearCopy;
  v6 = disappearCopy;
  dispatch_async(accessQueue, v7);
}

- (void)setupWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  moc = self->_moc;
  self->_moc = v4;

  v6 = self->_moc;
  assetID = [(BCReadingStatisticsController *)self assetID];
  v8 = [(BCReadingStatisticsController *)self _persistentStoreCoordinatorWithAssetID:assetID];
  [(NSManagedObjectContext *)v6 setPersistentStoreCoordinator:v8];

  [(NSManagedObjectContext *)self->_moc setUndoManager:0];
  [(BCReadingStatisticsController *)self _loadWithCompletion:completionCopy];
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

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal
{
  haveTextNodeLengthIndices = [(BCReadingStatisticsController *)self haveTextNodeLengthIndices];
  LOBYTE(ordinal) = [haveTextNodeLengthIndices containsIndex:ordinal];

  return ordinal ^ 1;
}

- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion
{
  selfCopy = self;
  countsCopy = counts;
  completionCopy = completion;
  v8 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = countsCopy;
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
        selfCopy = [BCCFI cfiWithString:v14 error:&v29, selfCopy];
        v16 = v29;
        if (v16)
        {
          v18 = v16;
          v19 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1E4CF4();
          }

          v20 = objc_retainBlock(completionCopy);
          v21 = v20;
          if (v20)
          {
            (*(v20 + 2))(v20, v18);
          }

          goto LABEL_15;
        }

        v17 = [v9 objectForKeyedSubscript:v14];
        [v8 setObject:v17 forKeyedSubscript:selfCopy];

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

  [(BCReadingStatisticsController *)selfCopy moc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1CF54;
  v24[3] = &unk_2C8608;
  ordinalCopy = ordinal;
  v25 = v24[4] = selfCopy;
  v26 = v8;
  v27 = completionCopy;
  v18 = v25;
  [v18 performBlock:v24];

LABEL_15:
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal
{
  haveTOCCFIIndices = [(BCReadingStatisticsController *)self haveTOCCFIIndices];
  LOBYTE(ordinal) = [haveTOCCFIIndices containsIndex:ordinal];

  return ordinal ^ 1;
}

- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1D7E8;
  v13[3] = &unk_2C8608;
  v16 = completionCopy;
  ordinalCopy = ordinal;
  v14 = v13[4] = self;
  v15 = entriesCopy;
  v10 = completionCopy;
  v11 = entriesCopy;
  v12 = v14;
  [v12 performBlock:v13];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DE20;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1DF4C;
  block[3] = &unk_2C8188;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(accessQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (int64_t)characterCountForCFI:(id)i
{
  iCopy = i;
  characterCountIfComputable = [iCopy characterCountIfComputable];
  if (characterCountIfComputable != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  headCFI = [iCopy headCFI];
  v25 = 0;
  v7 = -[BCReadingStatisticsController _textNodeCFIToCharacterLengthMapForOrdinal:error:](self, "_textNodeCFIToCharacterLengthMapForOrdinal:error:", [headCFI spineIndex], &v25);
  v8 = v25;
  if (v8)
  {
    v9 = BCReadingStatisticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E4E24();
    }

LABEL_10:
    characterCountIfComputable = 0;
    goto LABEL_11;
  }

  v28[0] = headCFI;
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

  v24 = headCFI;
  characterCountIfComputable = 0;
  v17 = v15 - 1;
  *&v13 = 138412290;
  v23 = v13;
  while (1)
  {
    v18 = [v7 objectAtIndexedSubscript:{v17, v23}];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [iCopy intersectWithCFI:v19];
    if (![v20 isRange])
    {
      break;
    }

    if ([v20 isEqual:v19])
    {
      v21 = [v18 objectAtIndexedSubscript:1];
      characterCountIfComputable = &characterCountIfComputable[[v21 integerValue]];
    }

    else
    {
      characterCountIfComputable2 = [v20 characterCountIfComputable];
      if (characterCountIfComputable2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        characterCountIfComputable = &characterCountIfComputable[characterCountIfComputable2];
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

  if ([iCopy compareTailToHead:v19] != -1)
  {
    goto LABEL_24;
  }

LABEL_25:
  v8 = 0;
  headCFI = v24;
LABEL_11:

LABEL_12:
  return characterCountIfComputable;
}

- (id)_textNodeCFIToCharacterLengthMapForOrdinal:(unint64_t)ordinal error:(id *)error
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
  if ([(BCReadingStatisticsController *)self cachedTextNodeCFIsAndCharacterCountsOrdinal]== ordinal)
  {
    cachedTextNodeCFIsAndCharacterCounts = [(BCReadingStatisticsController *)self cachedTextNodeCFIsAndCharacterCounts];
    v8 = v26[5];
    v26[5] = cachedTextNodeCFIsAndCharacterCounts;
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
    ordinalCopy = ordinal;
    v11 = v9;
    v15 = v11;
    v16 = &v19;
    v17 = &v25;
    [v10 performBlockAndWait:v14];

    [(BCReadingStatisticsController *)self setCachedTextNodeCFIsAndCharacterCounts:v26[5]];
    [(BCReadingStatisticsController *)self setCachedTextNodeCFIsAndCharacterCountsOrdinal:ordinal];
  }

  if (error)
  {
    *error = v20[5];
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

- (void)_updateHeatMapWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSDate date];
  lastUpdate = [(BCReadingStatisticsController *)self lastUpdate];
  [(BCReadingStatisticsController *)self setLastUpdate:v5];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (lastUpdate && (-[BCReadingStatisticsController visibleCFIs](self, "visibleCFIs"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && ([v5 timeIntervalSinceDate:lastUpdate], v9 = v8, v8 > 1.0))
  {
    v29 = lastUpdate;
    v30 = v5;
    v31 = completionCopy;
    heatMap = [(BCReadingStatisticsController *)self heatMap];
    selfCopy = self;
    visibleCFIs = [(BCReadingStatisticsController *)self visibleCFIs];
    v12 = [visibleCFIs copy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v12;
    allCFIs = [v12 allCFIs];
    v14 = [allCFIs countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(allCFIs);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          v19 = BCReadingStatisticsLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            string = [v18 string];
            *buf = 138412546;
            v37 = string;
            v38 = 2048;
            v39 = v9;
            _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Read %@ for %.1lf seconds", buf, 0x16u);
          }

          [heatMap addCFI:v18 count:v9];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [allCFIs countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v15);
    }

    allCFIs2 = [v27 allCFIs];
    [(BCReadingStatisticsController *)selfCopy _invalidateTOCEntriesIntersectingCFIs:allCFIs2];

    coalescedSave = [(BCReadingStatisticsController *)selfCopy coalescedSave];
    [coalescedSave signalWithCompletion:&stru_2C86F0];

    completionCopy = v31;
    v23 = objc_retainBlock(v31);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }

    lastUpdate = v29;
    v5 = v30;
  }

  else
  {
    v25 = objc_retainBlock(completionCopy);
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0);
    }
  }
}

- (void)_saveHeatMapWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  heatMap = [(BCReadingStatisticsController *)self heatMap];
  allCFIStringCounts = [heatMap allCFIStringCounts];
  [(BCReadingStatisticsController *)self moc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1ECBC;
  v11 = v10[3] = &unk_2C8598;
  v12 = allCFIStringCounts;
  selfCopy = self;
  v14 = completionCopy;
  v7 = completionCopy;
  v8 = allCFIStringCounts;
  v9 = v11;
  [v9 performBlock:v10];
}

- (void)_updateAppVersionOnMOC:(id)c
{
  cCopy = c;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"BCReadingStatsAppVersion"];
  v14 = @"appVersion";
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  [v5 setPropertiesToFetch:v6];

  v13 = 0;
  v7 = [cCopy executeFetchRequest:v5 error:&v13];
  v8 = v7;
  if (v13 || ![v7 count])
  {
    _appVersion2 = [NSEntityDescription insertNewObjectForEntityForName:@"BCReadingStatsAppVersion" inManagedObjectContext:cCopy];
    _appVersion = [(BCReadingStatisticsController *)self _appVersion];
    v11 = _appVersion2;
    v12 = _appVersion;
  }

  else
  {
    _appVersion2 = [(BCReadingStatisticsController *)self _appVersion];
    v11 = [v8 objectAtIndexedSubscript:0];
    _appVersion = v11;
    v12 = _appVersion2;
  }

  [v11 setAppVersion:v12];
}

- (void)_loadWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1F1E0;
  v8 = v7[3] = &unk_2C7B30;
  selfCopy = self;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (id)_fetchRequestForTOCEntriesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (void)_bulkUpdateTocEntryReadProportions:(id)proportions completion:(id)completion
{
  proportionsCopy = proportions;
  completionCopy = completion;
  if ([proportionsCopy count])
  {
    v8 = [proportionsCopy mutableCopy];
    v9 = [(BCReadingStatisticsController *)self moc];
    v10 = [(BCReadingStatisticsController *)self moc];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1FD84;
    v15[3] = &unk_2C8598;
    v15[4] = self;
    v16 = v9;
    v17 = v8;
    v18 = completionCopy;
    v11 = v8;
    v12 = v9;
    [v10 performBlock:v15];
  }

  else
  {
    v13 = objc_retainBlock(completionCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

- (void)_setOfReadRangesWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCReadingStatisticsController *)self readingThreshold];
  [(BCReadingStatisticsController *)self _setOfRangesWithThreshold:completionCopy completion:?];
}

- (void)_setOfRangesWithThreshold:(double)threshold completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_202E8;
  block[3] = &unk_2C8740;
  block[4] = self;
  v10 = completionCopy;
  thresholdCopy = threshold;
  v8 = completionCopy;
  dispatch_async(accessQueue, block);
}

- (void)_bulkUpdateWithReadRanges:(id)ranges completion:(id)completion
{
  rangesCopy = ranges;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if ([rangesCopy cfiCount] < 1)
  {
    v9 = objc_retainBlock(completionCopy);
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
    v12 = rangesCopy;
    selfCopy = self;
    v14 = completionCopy;
    dispatch_async(accessQueue, block);

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

- (void)_getHeatMapWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_20670;
  v7[3] = &unk_2C8790;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_setDisableCoalescing
{
  coalescedSave = [(BCReadingStatisticsController *)self coalescedSave];
  [coalescedSave setCoalescingDelay:0.0];

  coalescedSave2 = [(BCReadingStatisticsController *)self coalescedSave];
  [coalescedSave2 setMaximumDelay:0.0];

  coalescedChangeProcessing = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
  [coalescedChangeProcessing setCoalescingDelay:0.0];

  coalescedChangeProcessing2 = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
  [coalescedChangeProcessing2 setMaximumDelay:0.0];

  coalescedConnectOrdinals = [(BCReadingStatisticsController *)self coalescedConnectOrdinals];
  [coalescedConnectOrdinals setCoalescingDelay:0.0];

  coalescedConnectOrdinals2 = [(BCReadingStatisticsController *)self coalescedConnectOrdinals];
  [coalescedConnectOrdinals2 setMaximumDelay:0.0];
}

- (void)_getTextNodesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(BCReadingStatisticsController *)self moc];
  v6 = [(BCReadingStatisticsController *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_208A4;
  v9[3] = &unk_2C8488;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [v6 performBlock:v9];
}

- (void)_getTOCEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(BCReadingStatisticsController *)self moc];
  v6 = [(BCReadingStatisticsController *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_20AAC;
  v9[3] = &unk_2C7B30;
  v9[4] = self;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [v6 performBlock:v9];
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[UIApplication applicationDocumentsDirectory];
  v5 = [v4 stringByAppendingPathComponent:@"BCReadingStatistics"];

  v6 = +[NSFileManager defaultManager];
  v9 = 0;
  [v6 removeItemAtPath:v5 error:&v9];
  v7 = v9;

  v8 = objc_retainBlock(completionCopy);
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
  _persistentStoreDirectory = [objc_opt_class() _persistentStoreDirectory];
  v2 = [NSURL fileURLWithPath:_persistentStoreDirectory isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  relativePath = [v2 relativePath];
  [v3 createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:0];
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

- (id)_persistentStoreCoordinatorWithAssetID:(id)d
{
  dCopy = d;
  v5 = [NSPersistentStoreCoordinator alloc];
  _managedObjectModel = [(BCReadingStatisticsController *)self _managedObjectModel];
  v7 = [v5 initWithManagedObjectModel:_managedObjectModel];

  v20[0] = NSInferMappingModelAutomaticallyOption;
  v20[1] = NSMigratePersistentStoresAutomaticallyOption;
  v21[0] = &__kCFBooleanTrue;
  v21[1] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  _persistentStoreDirectory = [objc_opt_class() _persistentStoreDirectory];
  v10 = [(BCReadingStatisticsController *)self _persistentStoreFileNameWithAssetID:dCopy];

  [(BCReadingStatisticsController *)self _recreatePersistentStoreDirectory];
  v11 = [_persistentStoreDirectory stringByAppendingPathComponent:v10];
  v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
  v19 = 0;
  v13 = [v7 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v12 options:v8 error:&v19];
  v14 = v19;
  if (!v13)
  {
    v15 = +[NSFileManager defaultManager];
    [v15 removeItemAtPath:_persistentStoreDirectory error:0];

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
  orderedTOCEntryCFICache = [(BCReadingStatisticsController *)self orderedTOCEntryCFICache];

  if (!orderedTOCEntryCFICache)
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

  orderedTOCEntryCFICache2 = [(BCReadingStatisticsController *)self orderedTOCEntryCFICache];

  return orderedTOCEntryCFICache2;
}

- (void)_invalidateTOCEntriesIntersectingCFIs:(id)is
{
  isCopy = is;
  dispatch_assert_queue_V2(self->_accessQueue);
  tocEntriesRequiringProcessing = [(BCReadingStatisticsController *)self tocEntriesRequiringProcessing];
  if (tocEntriesRequiringProcessing)
  {
    v6 = tocEntriesRequiringProcessing;
    v7 = [isCopy count];

    if (v7)
    {
      _TOCEntryCFIs = [(BCReadingStatisticsController *)self _TOCEntryCFIs];
      if ([_TOCEntryCFIs count])
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
        [(BCReadingStatisticsController *)self _slideIterateSortedArray:isCopy andArray:_TOCEntryCFIs index1:0 index2:0 comparator:&stru_2C8878 executing:v10];
        if (*(v12 + 24) == 1)
        {
          coalescedChangeProcessing = [(BCReadingStatisticsController *)self coalescedChangeProcessing];
          [coalescedChangeProcessing signalWithCompletion:&stru_2C88C0];
        }

        _Block_object_dispose(&v11, 8);
      }
    }
  }
}

- (void)_processDirtyTOCEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_accessQueue);
  tocEntriesRequiringProcessing = [(BCReadingStatisticsController *)self tocEntriesRequiringProcessing];
  if ([tocEntriesRequiringProcessing count])
  {
    heatMap = [(BCReadingStatisticsController *)self heatMap];
    allCFICounts = [heatMap allCFICounts];

    [(BCReadingStatisticsController *)self moc];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_219A8;
    v12[3] = &unk_2C8988;
    v13 = v12[4] = self;
    v14 = allCFICounts;
    v15 = tocEntriesRequiringProcessing;
    v16 = completionCopy;
    v8 = allCFICounts;
    v9 = v13;
    [v9 performBlock:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)_connectOrdinalsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BCReadingStatisticsController *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_222D0;
  v8 = v7[3] = &unk_2C7B30;
  selfCopy = self;
  v10 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (void)_slideIterateSortedArray:(id)array andArray:(id)andArray index1:(unint64_t *)index1 index2:(unint64_t *)index2 comparator:(id)comparator executing:(id)executing
{
  arrayCopy = array;
  andArrayCopy = andArray;
  comparatorCopy = comparator;
  executingCopy = executing;
  v16 = [arrayCopy count];
  v17 = [andArrayCopy count];
  index1Copy = index1;
  v19 = v17;
  if (index1)
  {
    index1 = *index1;
  }

  v26 = index1Copy;
  if (index2)
  {
    v20 = *index2;
  }

  else
  {
    v20 = 0;
  }

  index2Copy = index2;
  if (index1 < v16 && v20 < v17)
  {
    do
    {
      v21 = [arrayCopy objectAtIndexedSubscript:{index1, v26}];
      v22 = [andArrayCopy objectAtIndexedSubscript:v20];
      v23 = objc_retainBlock(executingCopy);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, v21, v22, index1, v20);
      }

      if (comparatorCopy[2](comparatorCopy, v21, v22) == 1)
      {
        ++v20;
      }

      else
      {
        index1 = (index1 + 1);
      }
    }

    while (index1 < v16 && v20 < v19);
  }

  if (v26)
  {
    *v26 = index1;
  }

  if (index2Copy)
  {
    *index2Copy = v20;
  }
}

@end
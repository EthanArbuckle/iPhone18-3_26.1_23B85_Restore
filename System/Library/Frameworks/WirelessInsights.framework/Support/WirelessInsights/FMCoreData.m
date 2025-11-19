@interface FMCoreData
+ (BOOL)isFMCellMapCongestionMetricCongested:(id)a3;
+ (BOOL)isFMCellMapNodeCongested:(id)a3;
- (BOOL)backgroundContextPerformBlockAndWait:(id)a3;
- (BOOL)deleteCongestionAreas:(id)a3 andAssociatedEntitiesWithContext:(id)a4;
- (BOOL)deleteOutOfServiceAreas:(id)a3 AndAssociatedEntitiesWithContext:(id)a4;
- (BOOL)deleteTSAnomalies:(id)a3 andAssociatedEntitiesWithContext:(id)a4;
- (BOOL)generateChildEntitiesForEventsWithContext:(id)a3;
- (BOOL)isFMCongestionCell:(id)a3 equalToCongestionCell:(id)a4;
- (BOOL)resetAndPopulateCellMapDatabaseWithJSON:(id)a3;
- (BOOL)shouldConsiderAnomaly:(id)a3 atTime:(id)a4;
- (BOOL)updateCellMapEdge:(id)a3 withContext:(id)a4 atTime:(id)a5;
- (BOOL)updateCellMapNode:(id)a3 withMetric:(id)a4 updateConnDuration:(BOOL)a5 andContext:(id)a6 atTime:(id)a7;
- (BOOL)updateStoredConfigurationFrom:(id)a3 to:(id)a4;
- (FMCoreData)init;
- (FMCoreData)initWithStoreURL:(id)a3 WithModelURL:(id)a4;
- (double)compareFMTSEventTimestamp:(id)a3 withTSEventTimeUntilAnomaly:(int)a4 usingBaseTimestamp:(unint64_t)a5 withTimeDistanceMaxTime:(int)a6 withPredictionAdvanceTime:(int)a7 withContext:(id)a8;
- (id)cellMapPredictionForGCI:(id)a3;
- (id)congestionAreaID:(id)a3 congestionAreaSeenCount:(int)a4 toFMCongestionPredictionWithContext:(id)a5;
- (id)congestionCell:(id)a3 toFMCongestionCellWithContext:(id)a4;
- (id)congestionCells:(id)a3 toFMCongestionCellsWithContext:(id)a4;
- (id)convertFMCongestionCells:(id)a3 toUpdatedCongestionPrevCellsWithContext:(id)a4;
- (id)createCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5;
- (id)createCellMapNodeWithContext:(id)a3 andCellMapCongestionMetric:(id)a4;
- (id)createChildTSEventOfType:(signed __int16)a3 withDetails:(id)a4 withContext:(id)a5;
- (id)createCongestionAreaWithContext:(id)a3 subscriptionID:(id)a4 prevCells:(id)a5 startTime:(id)a6;
- (id)createCongestionCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 congestionMetric:(id)a10 timestamp:(id)a11;
- (id)createCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 timestamp:(id)a10;
- (id)createLocationOfInterestAt:(id)a3 WithContext:(id)a4;
- (id)createOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 entryLocation:(id)a9 exitLocation:(id)a10 startTime:(id)a11;
- (id)createServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14 timestamp:(id)a15;
- (id)createTSAnomalyWithContext:(id)a3 anomaly:(id)a4 homePLMN:(id)a5;
- (id)createTSEventFrom:(id)a3 withContext:(id)a4;
- (id)createTSPredictionWithContext:(id)a3 prediction:(id)a4;
- (id)deleteCongestionAreasOverThresholdCount:(unint64_t)a3 withContext:(id)a4;
- (id)deleteOutOfServiceAreasOverThresholdCount:(unint64_t)a3 WithContext:(id)a4;
- (id)deleteTSAnomaliesOverThresholdCount:(unint64_t)a3 withContext:(id)a4;
- (id)fetchCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5;
- (id)fetchCellMapEdgesOfCellMapNode:(id)a3 maxCount:(unint64_t)a4 withContext:(id)a5;
- (id)fetchCellMapNodeWithGCI:(id)a3 andContext:(id)a4;
- (id)filterCongestionAreasWithContext:(id)a3 unfilteredCongestionAreas:(id)a4 withExactPrevCells:(id)a5;
- (id)filterOutOfServiceAreasWithContext:(id)a3 unfilteredOutOfServiceAreas:(id)a4 WithExactPrevCells:(id)a5;
- (id)fmCellMapNodeFromCellMapNode:(id)a3 edgeSeenCount:(signed __int16)a4;
- (id)fmCongestionCellsToExistingCongestionPrevCellsWithContext:(id)a3 cells:(id)a4;
- (id)fmServingCellsToExistingServingCellsWithContext:(id)a3 cells:(id)a4;
- (id)fmServingCellsToServingCellsWithContext:(id)a3 cells:(id)a4;
- (id)getAnomalyPredictionsForHomePLMN:(id)a3 andEvents:(id)a4 atCurrentTimestamp:(unint64_t)a5 atCurrentTime:(id)a6 timeSinceLastFetch:(unint64_t)a7;
- (id)getCongestionCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 atTime:(id)a10;
- (id)getCongestionPredictionsForSubscriptionID:(id)a3 andPrevCells:(id)a4 atTime:(id)a5;
- (id)getCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9;
- (id)getFMTSPredictionsFromRelevantTSAnomalies:(id)a3 atCurrentTimestamp:(unint64_t)a4 withContext:(id)a5;
- (id)getLatestStoredConfiguration;
- (id)getLocationOfInterestAt:(id)a3 WithContext:(id)a4;
- (id)getOrCreateAndUpdateCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 timestamp:(id)a10;
- (id)getOrCreateCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5;
- (id)getOrCreateCellMapNodeWithContext:(id)a3 andCellMapCongestionMetric:(id)a4;
- (id)getOrCreateLocationOfInterestAt:(id)a3 WithContext:(id)a4;
- (id)getOrCreateServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14 timestamp:(id)a15;
- (id)getOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 timeOfDay:(signed __int16)a9;
- (id)getOutOfServiceAreasWithoutNextVisitWithContext:(id)a3 After:(id)a4;
- (id)getPreviouslyStoredMatchingFMCongestionCell:(id)a3;
- (id)getRushHourPredicateForDayOfWeek:(signed __int16)a3 andTimeOfDay:(signed __int16)a4;
- (id)getServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14;
- (id)handleCongestionAreaWithContext:(id)a3 subscriptionID:(id)a4 prevCells:(id)a5 startTime:(id)a6;
- (id)handleOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 startTime:(id)a9 entryLocation:(id)a10 exitLocation:(id)a11;
- (id)sortObjects:(id)a3 byKey:(id)a4;
- (id)tagsForEvents:(id)a3 withContext:(id)a4;
- (id)updateMapWithCellMapCongestionMetric:(id)a3 andPreviousNodeObjectID:(id)a4;
- (int64_t)getDifferenceBetweenMinutesSinceMidnight:(int64_t)a3 b:(int64_t)a4;
- (int64_t)getMinutesSinceMidnightFrom:(int64_t)a3 addingOffset:(int64_t)a4;
- (int64_t)tagContentForCellChangedEvent:(id)a3;
- (signed)NSDateToTimeOfDay:(id)a3;
- (unint64_t)deleteOutOfServiceAreasOlderThan:(id)a3 WithContext:(id)a4;
- (void)clearDatabase;
- (void)dealloc;
- (void)deleteCellMapEntitiesWithFetchRequest:(id)a3 andContext:(id)a4;
- (void)deleteCellMapNodesAndEdgesOlderThan:(id)a3 withContext:(id)a4;
- (void)deleteCongestionAreasOlderThan:(id)a3 withContext:(id)a4;
- (void)deleteCongestionOccurrencesOlderThan:(id)a3 withContext:(id)a4;
- (void)deleteOldestCellMapNodesAndEdgesOverThreshold:(unint64_t)a3 withContext:(id)a4;
- (void)deleteOrphanedCongestionCellsWithContext:(id)a3;
- (void)deleteOrphanedCongestionPrevCellsWithContext:(id)a3;
- (void)deleteOrphanedTSPredictionsWithContext:(id)a3;
- (void)deleteOutOfServiceDurationsOlderThan:(id)a3 WithContext:(id)a4;
- (void)deleteTSAnomaliesWithContext:(id)a3 olderThan:(id)a4;
- (void)deletedOrphanedLocationsOfInterestWithContext:(id)a3;
- (void)deletedOrphanedServingCellsWithContext:(id)a3;
- (void)deletedOrphanedTSAnomalyTagsWithContext:(id)a3;
- (void)finalizedCongestionArea:(id)a3 withSubscriptionID:(id)a4;
- (void)generateTagsForAnomaly:(id)a3 withContext:(id)a4;
- (void)generateTagsForUntaggedAnomaliesWithContext:(id)a3;
- (void)leftOutOfServiceArea:(double)a3 startTime:(id)a4 prevVisit:(id)a5 curVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 nextCell:(id)a9 entryLocation:(id)a10 exitLocation:(id)a11;
- (void)performDatabaseMaintenance;
- (void)sendOnDeviceDBTelemetryEventWithContext:(id)a3 andNumberOfDeletedOOSAreasStale:(unint64_t)a4;
- (void)storeAnomaly:(id)a3 forHomePLMN:(id)a4;
- (void)storePrediction:(id)a3;
- (void)updateCongestionAreaAfterLeavingWithContext:(id)a3 congestionArea:(id)a4 startTime:(id)a5 goodCells:(id)a6 badCells:(id)a7 secondsUntilCongestion:(double)a8 secondsCongestionDuration:(double)a9;
- (void)updateCongestionCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5 congestionMetric:(id)a6;
- (void)updateCongestionPrevCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5;
- (void)updateOutOfServiceAreaAfterLeavingWithContext:(id)a3 outOfServiceArea:(id)a4 startTime:(id)a5 nextCell:(id)a6 duration:(double)a7 entryLocation:(id)a8 exitLocation:(id)a9;
- (void)updateOutOfServiceAreasWithNextVisit:(id)a3;
- (void)updateServingCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5;
- (void)waitForDeviceUnlockAndLoadDataStore;
@end

@implementation FMCoreData

- (void)leftOutOfServiceArea:(double)a3 startTime:(id)a4 prevVisit:(id)a5 curVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 nextCell:(id)a9 entryLocation:(id)a10 exitLocation:(id)a11
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003B964;
  v32[3] = &unk_1002ABDB0;
  v32[4] = self;
  v33 = v22;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v18;
  v38 = a10;
  v39 = a11;
  v40 = v23;
  v41 = a3;
  v24 = v23;
  v25 = v39;
  v26 = v38;
  v27 = v18;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v31 = v22;
  [(FMCoreData *)self backgroundContextPerformBlockAndWait:v32];
}

- (void)updateOutOfServiceAreasWithNextVisit:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003BE84;
    v6[3] = &unk_1002ABDD8;
    v6[4] = self;
    v7 = v4;
    [(FMCoreData *)self backgroundContextPerformBlockAndWait:v6];
  }
}

- (void)finalizedCongestionArea:(id)a3 withSubscriptionID:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C0D0;
  v7[3] = &unk_1002ABF20;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(FMCoreData *)v8 backgroundContextPerformBlockAndWait:v7];
}

- (id)getCongestionPredictionsForSubscriptionID:(id)a3 andPrevCells:(id)a4 atTime:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[FMConfiguration sharedInstance];
  v12 = [v11 congestionPrevCellsInDatabase];

  if ([v9 count] <= v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = ([v9 count] - v12);
  }

  if ([v9 count] < v12)
  {
    v12 = [v9 count];
  }

  v14 = [v9 subarrayWithRange:{v13, v12}];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10004C660;
  v31 = sub_10004C670;
  v32 = 0;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FE038();
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004C678;
  v21[3] = &unk_1002ABF88;
  v15 = v10;
  v22 = v15;
  v23 = self;
  v16 = v14;
  v24 = v16;
  v26 = &v27;
  v17 = v8;
  v25 = v17;
  if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v21])
  {
    v18 = v28[5];
    if (v18)
    {
      v19 = [v18 copy];
      goto LABEL_14;
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1001FE06C();
  }

  v19 = 0;
LABEL_14:

  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)congestionAreaID:(id)a3 congestionAreaSeenCount:(int)a4 toFMCongestionPredictionWithContext:(id)a5
{
  v8 = a3;
  v36 = a5;
  v34 = v8;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionOccurrence"];
  v10 = [NSPredicate predicateWithFormat:@"congestionOccurrenceOf == %@", v8];
  [v9 setPredicate:v10];

  [v9 setReturnsObjectsAsFaults:0];
  v43 = 0;
  v35 = [v36 executeFetchRequest:v9 error:&v43];
  v11 = v43;
  if (v11 || ![v35 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FE294();
    }

    goto LABEL_4;
  }

  v14 = [v35 count];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = v35;
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v32 = self;
  v31 = a4;
  v17 = 0;
  v18 = 0;
  if (v16)
  {
    v19 = *v40;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        if (([v21 secondsUntilCongestion] & 0x80000000) != 0 || (objc_msgSend(v21, "secondsCongestionDuration") & 0x80000000) != 0)
        {
          --v14;
        }

        else
        {
          v18 += [v21 secondsUntilCongestion];
          v17 += [v21 secondsCongestionDuration];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v16);
  }

  if (!v14)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE260();
    }

    v11 = 0;
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  v22 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
  v23 = [NSPredicate predicateWithFormat:@"badCellOf == %@", v34];
  [v22 setPredicate:v23];

  [v22 setReturnsObjectsAsFaults:0];
  v38 = 0;
  v33 = [v36 executeFetchRequest:v22 error:&v38];
  v24 = v38;
  if (v24)
  {
    v11 = v24;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FE1D8();
    }

    v12 = 0;
  }

  else
  {
    v30 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
    v25 = [NSPredicate predicateWithFormat:@"goodCellOf == %@", v34];
    [v30 setPredicate:v25];

    [v30 setReturnsObjectsAsFaults:0];
    v37 = 0;
    v26 = [v36 executeFetchRequest:v30 error:&v37];
    v11 = v37;
    if (v11)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v11 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1001FE21C();
      }

      v12 = 0;
    }

    else
    {
      v27 = [FMCongestionPrediction alloc];
      v29 = [(FMCoreData *)v32 congestionCells:v33 toFMCongestionCellsWithContext:v36];
      v28 = [(FMCoreData *)v32 congestionCells:v26 toFMCongestionCellsWithContext:v36];
      v12 = [(FMCongestionPrediction *)v27 initWithSeenCount:v31 predictedBadCells:v29 predictedGoodCells:v28 predictedTimeUntilCongestion:v18 / v14 predictedTimeInCongestion:v17 / v14];
    }
  }

LABEL_5:

  return v12;
}

- (id)congestionCells:(id)a3 toFMCongestionCellsWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(FMCoreData *)self congestionCell:*(*(&v16 + 1) + 8 * i) toFMCongestionCellWithContext:v7, v16];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v8 copy];

  return v14;
}

- (id)congestionCell:(id)a3 toFMCongestionCellWithContext:(id)a4
{
  v4 = a3;
  v5 = [FMCongestionCell alloc];
  v6 = [v4 lastSeen];
  v7 = [v4 subscriptionID];
  v8 = [v4 mcc];
  v9 = [v4 mnc];
  v10 = [v4 gci];
  v11 = [v4 radioAccessTechnology];
  v12 = [v4 arfcnOrUarfcn];
  v13 = [(FMCongestionCell *)v5 init:v6 subscriptionID:v7 mcc:v8 mnc:v9 gci:v10 rat:v11 arfcnOrUarfcn:v12];

  if (v13)
  {
    v40 = [FMCongestionMetric alloc];
    v44 = [v4 lastSeen];
    [v44 timeIntervalSince1970];
    v15 = v14;
    v43 = [v4 gci];
    v42 = [v4 arfcnOrUarfcn];
    v39 = [v42 intValue];
    v41 = [v4 ratType];
    v38 = [v4 rsrp];
    v37 = [v4 rsrq];
    v36 = [v4 sinr];
    v35 = [v4 dlBottleneckScoreInvalid];
    v34 = [v4 dlBottleneckScoreNo];
    v33 = [v4 dlBottleneckScoreLow];
    v32 = [v4 dlBottleneckScoreMedium];
    v31 = [v4 dlBottleneckScoreHigh];
    v30 = [v4 ulBottleneckScoreInvalid];
    v29 = [v4 ulBottleneckScoreNo];
    v28 = [v4 ulBottleneckScoreLow];
    v27 = [v4 ulBottleneckScoreMedium];
    v26 = [v4 ulBottleneckScoreHigh];
    v25 = [v4 dataStallIndicatorAVS];
    v16 = [v4 dataStallIndicatorUL];
    v17 = [v4 isSubway];
    v18 = [v4 qoeScore];
    v19 = [v4 qoeDuration];
    v20 = [v4 psPref];
    v21 = [v4 subscriptionID];
    v22 = -[FMCongestionMetric init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:](v40, "init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:", llround(v15), v43, v39, v41, v38, v37, __PAIR64__(v35, v36), __PAIR64__(v33, v34), __PAIR64__(v31, v32), __PAIR64__(v29, v30), __PAIR64__(v27, v28), __PAIR64__(v25, v26), __PAIR64__(v17, v16), __PAIR64__(v19, v18), __PAIR64__([v21 intValue], v20));

    [v13 setCongestionMetric:v22];
    v23 = v13;
  }

  return v13;
}

- (id)getPreviouslyStoredMatchingFMCongestionCell:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10004C660;
  v14 = sub_10004C670;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004DAF0;
  v6[3] = &unk_1002ABFB0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  if ([(FMCoreData *)v7 backgroundContextPerformBlockAndWait:v6])
  {
    v4 = v11[5];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE06C();
    }

    v4 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)storeAnomaly:(id)a3 forHomePLMN:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 events];
  v9 = [v8 count];
  v10 = +[FMConfiguration sharedInstance];
  v11 = [v10 FMTSAnomalyStoringMinNumObservedEvents];

  if (v9 >= v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006B38C;
    v12[3] = &unk_1002ABF20;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    [(FMCoreData *)self backgroundContextPerformBlockAndWait:v12];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FFAC0();
  }
}

- (id)sortObjects:(id)a3 byKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = v6[2](v6, v12);
        v14 = [v7 objectForKey:v13];
        if (!v14)
        {
          v14 = objc_alloc_init(NSMutableArray);
          [v7 setObject:v14 forKey:v13];
        }

        [v14 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)getFMTSPredictionsFromRelevantTSAnomalies:(id)a3 atCurrentTimestamp:(unint64_t)a4 withContext:(id)a5
{
  v8 = a3;
  v26 = a5;
  v25 = objc_alloc_init(NSMutableArray);
  v24 = +[NSDate now];
  v9 = [(FMCoreData *)self sortObjects:v8 byKey:&stru_1002ACF60];
  v10 = +[FMConfiguration sharedInstance];
  v11 = [v10 FMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds];
  v12 = [v10 FMTSAnomalyPredictionDurationConfidenceRangeSeconds];
  [v10 FMTSAnomalyBaseConfidence];
  v14 = v13;
  v15 = [v10 FMTSAnomalyConfidenceMinPredictionCount];
  v16 = [v10 FMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect];
  v17 = [v10 FMTSMaxDurationPredictionErrorConsideredCorrect];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006B8AC;
  v27[3] = &unk_1002ACF88;
  v18 = v8;
  v28 = v18;
  v32 = v16;
  v33 = v17;
  v19 = v26;
  v29 = v19;
  v34 = v11;
  v35 = v12;
  v36 = v14;
  v37 = v15;
  v20 = v24;
  v30 = v20;
  v38 = a4;
  v21 = v25;
  v31 = v21;
  [v9 enumerateKeysAndObjectsUsingBlock:v27];
  v22 = [v21 copy];

  return v22;
}

- (id)getAnomalyPredictionsForHomePLMN:(id)a3 andEvents:(id)a4 atCurrentTimestamp:(unint64_t)a5 atCurrentTime:(id)a6 timeSinceLastFetch:(unint64_t)a7
{
  v41 = a3;
  v12 = a4;
  v42 = a6;
  v13 = [v12 count];
  v14 = +[FMConfiguration sharedInstance];
  v15 = [v14 FMTSAnomalyPredictionMinNumObservedEvents];

  if (v13 >= v15)
  {
    v17 = [(FMCoreData *)self sortObjects:v12 byKey:&stru_1002ACFC8];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10006C6E0;
    v70[3] = &unk_1002ACFF0;
    v18 = v12;
    v71 = v18;
    v40 = v17;
    [v17 enumerateKeysAndObjectsUsingBlock:v70];
    v19 = +[FMConfiguration sharedInstance];
    [v19 FMTSAnomalyUsedForPredictionDistanceThreshold];
    v21 = v20;

    v22 = +[FMConfiguration sharedInstance];
    v23 = [v22 FMTSAnomalyPredictionAdvanceTimeSeconds];

    v24 = +[FMConfiguration sharedInstance];
    v25 = [v24 FMTSAnomalyUseLastEventForPredictionAdvanceTime];

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_10006C8B0;
    v68 = sub_10006C8C0;
    v69 = 0;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FFB34();
    }

    v26 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10006C8C8;
    v45[3] = &unk_1002AD018;
    v45[4] = self;
    v39 = v40;
    v46 = v39;
    v47 = v41;
    v49 = &v60;
    v50 = &v56;
    v54 = v23;
    v55 = v25;
    v53 = v21;
    v48 = v42;
    v51 = &v64;
    v52 = a5;
    if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v45])
    {
      v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v72[0] = @"fetch_duration";
      v28 = [NSNumber numberWithUnsignedLongLong:(v27 - v26) / 0xF4240];
      v73[0] = v28;
      v72[1] = @"fetch_successful";
      v29 = [NSNumber numberWithBool:*(v57 + 24)];
      v73[1] = v29;
      v72[2] = @"num_observed_events";
      v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
      v73[2] = v30;
      v72[3] = @"num_anomalies";
      v31 = [NSNumber numberWithUnsignedInteger:v61[3]];
      v73[3] = v31;
      v72[4] = @"num_results";
      v32 = v65[5];
      if (v32)
      {
        v33 = [v32 count];
      }

      else
      {
        v33 = 0;
      }

      v34 = [NSNumber numberWithUnsignedInteger:v33];
      v73[4] = v34;
      v72[5] = @"time_since_last_fetch";
      v35 = [NSNumber numberWithUnsignedLongLong:a7];
      v73[5] = v35;
      v36 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:6];

      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10006D4F0;
      v43[3] = &unk_1002AB460;
      v44 = v36;
      v37 = v36;
      sub_1000158DC(@"com.apple.Telephony.fedMobilityTimeSeriesPerPredictionFetchPerformance", v43);
      v16 = v65[5];
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1001FFB70();
      }

      v16 = 0;
    }

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FFBA4();
    }

    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (BOOL)shouldConsiderAnomaly:(id)a3 atTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 2)
  {
    v8 = [v6 startTime];
    v9 = [FMUtil getTimeOfDayFromDate:v8];

    v10 = [v6 startTime];
    v11 = [FMUtil getDayOfWeekFromDate:v10];

    v13 = v11 == 1 || v11 == 7;
    v14 = [FMUtil getTimeOfDayFromDate:v7];
    v15 = [FMUtil getDayOfWeekFromDate:v7];
    v17 = v15 != 1 && v15 != 7;
    if (v13 == v17)
    {
      v20 = 0;
    }

    else
    {
      v18 = [(FMCoreData *)self getDifferenceBetweenMinutesSinceMidnight:v9 b:v14];
      v19 = +[FMConfiguration sharedInstance];
      v20 = v18 <= [v19 FMTSCongestionAnomalyMaxTimeOfDayDifference];
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (double)compareFMTSEventTimestamp:(id)a3 withTSEventTimeUntilAnomaly:(int)a4 usingBaseTimestamp:(unint64_t)a5 withTimeDistanceMaxTime:(int)a6 withPredictionAdvanceTime:(int)a7 withContext:(id)a8
{
  v12 = [a3 timestamp];
  if (a5 >= v12)
  {
    v14 = a7 - a4 + (a5 - v12) / 0x3B9ACA00;
    if (v14 < 0)
    {
      v14 = -v14;
    }

    return fmin(v14 / a6, 1.0);
  }

  else
  {
    v13 = 1.0;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FFDA8();
    }
  }

  return v13;
}

- (void)storePrediction:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E77C;
  v4[3] = &unk_1002ABDD8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(FMCoreData *)v5 backgroundContextPerformBlockAndWait:v4];
}

- (void)generateTagsForUntaggedAnomaliesWithContext:(id)a3
{
  v4 = a3;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  v6 = [NSPredicate predicateWithFormat:@"taggedBy.@count == 0 and events.@count > 0"];
  [v5 setPredicate:v6];

  v20 = 0;
  v15 = [v4 executeFetchRequest:v5 error:&v20];
  v7 = v20;
  v8 = *(qword_1002DBE98 + 136);
  if (v7)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FFF2C();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FFF78(v22, [v15 count]);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v15;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          [(FMCoreData *)self generateTagsForAnomaly:v13 withContext:v4];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)generateTagsForAnomaly:(id)a3 withContext:(id)a4
{
  v26 = a3;
  v27 = a4;
  v24 = [NSFetchRequest fetchRequestWithEntityName:@"TSEvent"];
  v5 = [NSPredicate predicateWithFormat:@"eventOf == %@ and type == %d", v26, 1];
  [v24 setPredicate:v5];

  [v24 setReturnsObjectsAsFaults:0];
  v33 = 0;
  v23 = [v27 executeFetchRequest:v24 error:&v33];
  v6 = v33;
  v7 = *(qword_1002DBE98 + 136);
  if (v6)
  {
    v8 = v6;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v8 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1001FFFBC();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      [v23 count];
      sub_100200008(v26, v37);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v23;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if ([v13 type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v14 = v13;
            v15 = [FMTSEventCellChanged alloc];
            v16 = [v14 fromCellGCI];
            v17 = [v14 toCellGCI];
            v18 = [(FMTSEventCellChanged *)v15 initWithTimestamp:0 fromCellGCI:v16 toCellGCI:v17];

            v19 = [(FMCoreData *)self tagContentForCellChangedEvent:v18];
            v20 = [NSEntityDescription insertNewObjectForEntityForName:@"TSAnomalyTag" inManagedObjectContext:v27];
            [v20 setType:1];
            [v20 setContent:v19];
            [v20 setAnomaly:v26];
            [v27 refreshObject:v14 mergeChanges:0];
          }

          else
          {
            v21 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v35 = v13;
              _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Event %@ is of unexpected type/class", buf, 0xCu);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v10);
    }

    v28 = 0;
    [v27 save:&v28];
    v8 = v28;
    if (v8 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v22 = [v8 localizedDescription];
      sub_10020005C(v26, v22, buf);
    }
  }
}

- (int64_t)tagContentForCellChangedEvent:(id)a3
{
  v3 = [a3 toCellGCI];
  v4 = [FMUtil int64SHA256HashFor:v3];

  return v4;
}

- (id)tagsForEvents:(id)a3 withContext:(id)a4
{
  v21 = a3;
  v22 = a4;
  v6 = [v21 objectForKey:&off_1002BEF88];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [NSNumber numberWithLongLong:[(FMCoreData *)self tagContentForCellChangedEvent:*(*(&v24 + 1) + 8 * i)]];
          [v8 addObject:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v14 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomalyTag"];
    v15 = [NSPredicate predicateWithFormat:@"type == %d and content IN %@", 1, v8];
    [v14 setPredicate:v15];
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002000B0();
    }

    v23 = 0;
    v16 = [v22 executeFetchRequest:v14 error:&v23];
    v17 = v23;
    if (v17)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        v18 = [v17 localizedDescription];
        sub_100200124(v9, v18, v28);
      }

      v19 = 0;
    }

    else
    {
      v19 = v16;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100200178();
    }

    v19 = &__NSArray0__struct;
  }

  return v19;
}

- (BOOL)generateChildEntitiesForEventsWithContext:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002001B4();
  }

  v25 = 0;
  v27 = 0;
  *&v4 = 134217984;
  v24 = v4;
  while (1)
  {
    v5 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = v24;
      v43 = v27;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Entity generation iteration %lu", buf, 0xCu);
    }

    context = objc_autoreleasePoolPush();
    v29 = [NSFetchRequest fetchRequestWithEntityName:@"TSEvent"];
    v6 = [NSPredicate predicateWithFormat:@"details != nil"];
    [v29 setPredicate:v6];

    [v29 setReturnsObjectsAsFaults:0];
    [v29 setFetchLimit:50];
    v40 = 0;
    v7 = [v3 executeFetchRequest:v29 error:&v40];
    v8 = v40;
    v9 = v8;
    v28 = v7;
    if (!v7 || v8)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v9 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1002002AC();
      }
    }

    else
    {
      if (![v7 count])
      {
        v9 = 0;
        v22 = 0;
        v21 = 1;
        v25 = 1;
        goto LABEL_37;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v11)
      {
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            v15 = [v14 details];
            if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v16 = -[FMCoreData createChildTSEventOfType:withDetails:withContext:](self, "createChildTSEventOfType:withDetails:withContext:", [v14 type], v15, v3);
              if (v16)
              {
                [v16 setTimeUntilAnomaly:{objc_msgSend(v14, "timeUntilAnomaly")}];
                [v16 setType:{objc_msgSend(v14, "type")}];
                v17 = [v14 eventOf];
                [v16 setEventOf:v17];
              }

              else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_1002001F0(&v34, v35);
              }
            }

            else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
            {
              sub_100200224(&v32, v33);
            }

            [v3 refreshObject:v14 mergeChanges:0];
            [v3 deleteObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }

      v31 = 0;
      v18 = [v3 save:&v31];
      v19 = v31;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        v9 = 0;
        v21 = 0;
        v22 = 1;
        goto LABEL_37;
      }

      v9 = v19;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v9 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100200258();
      }

      [(FMCoreData *)self clearDatabase];
    }

    v22 = 0;
    v21 = 0;
LABEL_37:

    objc_autoreleasePoolPop(context);
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (++v27 == 1000)
    {
      goto LABEL_41;
    }
  }

  if (!v21)
  {
    v25 = 0;
    goto LABEL_44;
  }

LABEL_41:
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100200300();
  }

LABEL_44:

  return v25 & 1;
}

- (FMCoreData)init
{
  v3 = [NSString stringWithUTF8String:"/var/wireless/wirelessinsightsd/FederatedMobility.sqlite"];
  v4 = [NSURL fileURLWithPath:v3];
  v5 = [(FMCoreData *)self initWithStoreURL:v4 WithModelURL:0];

  return v5;
}

- (FMCoreData)initWithStoreURL:(id)a3 WithModelURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = FMCoreData;
  v8 = [(FMCoreData *)&v33 init];
  if (v8)
  {
    if (v6)
    {
      if (v7)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1002006C4();
        }

        v9 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
        v10 = [NSString stringWithUTF8String:"WISFederatedMobility"];
        v11 = [NSPersistentContainer persistentContainerWithName:v10 managedObjectModel:v9];
        [(FMCoreData *)v8 setContainer:v11];
      }

      else
      {
        v9 = [NSString stringWithUTF8String:"WISFederatedMobility"];
        v10 = [NSPersistentContainer persistentContainerWithName:v9];
        [(FMCoreData *)v8 setContainer:v10];
      }

      v12 = [(FMCoreData *)v8 container];
      v13 = v12 == 0;

      if (!v13)
      {
        v14 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v6];
        [v14 setOption:NSFileProtectionCompleteUnlessOpen forKey:NSPersistentStoreFileProtectionKey];
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100200734();
        }

        v15 = [(FMCoreData *)v8 container];
        v34 = v14;
        v16 = [NSArray arrayWithObjects:&v34 count:1];
        [v15 setPersistentStoreDescriptions:v16];

        [(FMCoreData *)v8 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.FMCoreData", 0)];
        if (![(FMCoreData *)v8 queue])
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_100200804();
          }

          v28 = 0;
          goto LABEL_35;
        }

        [(FMCoreData *)v8 waitForDeviceUnlockAndLoadDataStore];
        v17 = [(FMCoreData *)v8 getLatestStoredConfiguration];
        v18 = +[FMConfiguration sharedInstance];
        v19 = [v17 values];
        v20 = [v18 isCompatibleToConfig:v19];

        if ((v20 & 1) == 0)
        {
          v21 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Database and current config are incompatible, pruning database", buf, 2u);
          }

          [(FMCoreData *)v8 clearDatabase];
        }

        v22 = +[FMConfiguration sharedInstance];
        v23 = [v22 configAsDict];
        v24 = [(FMCoreData *)v8 updateStoredConfigurationFrom:v17 to:v23];

        if (v24)
        {
          [(FMCoreData *)v8 setDatabaseMaintenanceTimer:dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [(FMCoreData *)v8 queue])];
          if ([(FMCoreData *)v8 databaseMaintenanceTimer])
          {
            v25 = [(FMCoreData *)v8 databaseMaintenanceTimer];
            v26 = +[FMConfiguration sharedInstance];
            dispatch_source_set_timer(v25, 0, 1000000000 * [v26 OOSTimeBetweenDatabaseMaintenance], 0xDF8475800uLL);

            objc_initWeak(buf, v8);
            v27 = [(FMCoreData *)v8 databaseMaintenanceTimer];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100075E1C;
            handler[3] = &unk_1002AC020;
            objc_copyWeak(&v31, buf);
            dispatch_source_set_event_handler(v27, handler);
            dispatch_resume([(FMCoreData *)v8 databaseMaintenanceTimer]);
            if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
            {
              sub_10020079C();
            }

            v28 = v8;
            objc_destroyWeak(&v31);
            objc_destroyWeak(buf);
            goto LABEL_34;
          }

          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_1002007D0();
          }
        }

        else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_100200768();
        }

        v28 = 0;
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100200838();
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_10020086C();
    }
  }

  v28 = 0;
LABEL_36:

  return v28;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002008D4();
  }

  if ([(FMCoreData *)self databaseMaintenanceTimer])
  {
    dispatch_release([(FMCoreData *)self databaseMaintenanceTimer]);
  }

  if ([(FMCoreData *)self queue])
  {
    dispatch_release([(FMCoreData *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FMCoreData;
  [(FMCoreData *)&v3 dealloc];
}

- (void)waitForDeviceUnlockAndLoadDataStore
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100075FD4;
  v2[3] = &unk_1002AD510;
  v2[4] = self;
  [FMUtil waitForDeviceUnlockAndRunBlock:v2];
}

- (void)clearDatabase
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002009E0();
  }

  v3 = [(FMCoreData *)self container];
  v4 = [v3 persistentStoreCoordinator];

  v5 = [v4 persistentStores];
  v6 = [v5 count] > 1;

  if (v6)
  {
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 persistentStores];
      *buf = 134217984;
      v18 = [v12 count];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Unexpected number of stores in the coordinator: %lu", buf, 0xCu);
    }
  }

  v8 = [v4 persistentStores];
  v9 = [v8 firstObject];

  v10 = [v9 URL];
  v11 = [v9 type];

  if (v10 && v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000764D0;
    v13[3] = &unk_1002AD538;
    v14 = v10;
    v15 = v11;
    v16 = v4;
    [FMUtil waitForDeviceUnlockAndRunBlock:v13];
    [(FMCoreData *)self waitForDeviceUnlockAndLoadDataStore];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100200A14();
  }
}

- (id)getLatestStoredConfiguration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100076794;
  v9 = sub_1000767A4;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000767AC;
  v4[3] = &unk_1002AD560;
  v4[4] = &v5;
  if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v4])
  {
    v2 = v6[5];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)updateStoredConfigurationFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076BFC;
  v12[3] = &unk_1002ABFB0;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v12])
  {
    v10 = *(v17 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v10 & 1;
}

- (void)updateServingCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 setLastSeen:v9];
  [v8 setSeenCount:{objc_msgSend(v8, "seenCount") + 1}];
  v11 = 0;
  [v7 save:&v11];
  v10 = v11;
  if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v10 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100200D50();
  }
}

- (id)fmServingCellsToExistingServingCellsWithContext:(id)a3 cells:(id)a4
{
  v25 = a3;
  v19 = a4;
  v24 = objc_alloc_init(NSMutableOrderedSet);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v19;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v22 = *v30;
    while (2)
    {
      v21 = v5;
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v28 = [v7 subscriptionID];
        v27 = [v7 radioAccessTechnology];
        v26 = [v7 cellID];
        v8 = [v7 mnc];
        v9 = [v7 mcc];
        v10 = [v7 bandInfo];
        v11 = [v7 tacOrLac];
        v12 = [v7 arfcnOrUarfcn];
        v13 = [v7 bandwidth];
        v14 = [v7 pci];
        v15 = [v7 deploymentType];
        v16 = [(FMCoreData *)self getServingCellWithContext:v25 subscriptionID:v28 radioAccessTechnology:v27 cellID:v26 mnc:v8 mcc:v9 bandInfo:v10 tacOrLac:v11 arfcnOrUarfcn:v12 bandwidth:v13 pci:v14 deploymentType:v15, v19];

        if (!v16)
        {

          v17 = 0;
          goto LABEL_11;
        }

        [v24 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v17 = [v24 copy];
LABEL_11:

  return v17;
}

- (id)fmServingCellsToServingCellsWithContext:(id)a3 cells:(id)a4
{
  v24 = a3;
  v19 = a4;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v19;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v22 = *v31;
    do
    {
      v25 = v5;
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v29 = [v7 subscriptionID];
        v26 = [v7 radioAccessTechnology];
        v28 = [v7 cellID];
        v27 = [v7 mnc];
        v8 = [v7 mcc];
        v9 = [v7 bandInfo];
        v10 = [v7 tacOrLac];
        v11 = [v7 arfcnOrUarfcn];
        v12 = [v7 bandwidth];
        v13 = [v7 pci];
        v14 = [v7 deploymentType];
        v15 = [v7 timestamp];
        v16 = [(FMCoreData *)self getOrCreateServingCellWithContext:v24 subscriptionID:v29 radioAccessTechnology:v26 cellID:v28 mnc:v27 mcc:v8 bandInfo:v9 tacOrLac:v10 arfcnOrUarfcn:v11 bandwidth:v12 pci:v13 deploymentType:v14 timestamp:v15, v19];

        if (v16)
        {
          [v21 addObject:v16];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  v17 = [v21 copy];

  return v17;
}

- (id)getOrCreateServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14 timestamp:(id)a15
{
  v20 = a3;
  v21 = a4;
  v50 = a5;
  v22 = a6;
  v23 = a7;
  v41 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v46 = v25;
  v47 = a15;
  v43 = v29;
  v44 = v27;
  v45 = v26;
  v40 = v24;
  v48 = v24;
  v30 = v20;
  v31 = v21;
  v49 = v23;
  v32 = [(FMCoreData *)self getServingCellWithContext:v30 subscriptionID:v21 radioAccessTechnology:v50 cellID:v22 mnc:v23 mcc:v41 bandInfo:v40 tacOrLac:v25 arfcnOrUarfcn:v26 bandwidth:v27 pci:v28 deploymentType:v29];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
    v36 = v26;
    v35 = v46;
    v37 = v44;
    v38 = v43;
  }

  else
  {
    v35 = v25;
    v38 = v43;
    v37 = v44;
    v36 = v45;
    v34 = [(FMCoreData *)self createServingCellWithContext:v30 subscriptionID:v31 radioAccessTechnology:v50 cellID:v22 mnc:v49 mcc:v41 bandInfo:v48 tacOrLac:v25 arfcnOrUarfcn:v45 bandwidth:v44 pci:v28 deploymentType:v43 timestamp:v47];
  }

  return v34;
}

- (id)createServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14 timestamp:(id)a15
{
  v20 = a3;
  v21 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v22 = v21;
  v37 = a9;
  v36 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100200D94();
  }

  v28 = [NSEntityDescription insertNewObjectForEntityForName:@"ServingCell" inManagedObjectContext:v20, a13];
  [v28 setLastSeen:v27];
  [v28 setSeenCount:0];
  [v28 setSubscriptionID:v21];
  [v28 setRadioAccessTechnology:v35];
  [v28 setCellID:v34];
  [v28 setMnc:v33];
  [v28 setMcc:v32];
  [v28 setBandInfo:v37];
  [v28 setTacOrLac:v36];
  [v28 setArfcnOrUarfcn:v23];
  [v28 setBandwidth:v24];
  [v28 setPci:v25];
  [v28 setDeploymentType:v26];
  v38 = 0;
  [v20 save:&v38];
  v29 = v38;
  if (v29)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v29 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200DC8();
    }

    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  return v30;
}

- (id)getServingCellWithContext:(id)a3 subscriptionID:(id)a4 radioAccessTechnology:(id)a5 cellID:(id)a6 mnc:(id)a7 mcc:(id)a8 bandInfo:(id)a9 tacOrLac:(id)a10 arfcnOrUarfcn:(id)a11 bandwidth:(id)a12 pci:(id)a13 deploymentType:(id)a14
{
  v37 = a3;
  v38 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v33 = v19;
  v34 = v23;
  v35 = v24;
  v36 = a14;
  v39 = [NSFetchRequest fetchRequestWithEntityName:@"ServingCell"];
  v28 = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (radioAccessTechnology == %@) AND (cellID == %@) AND (mnc == %@) AND (mcc == %@) AND (bandInfo == %@) AND (tacOrLac == %@) AND (arfcnOrUarfcn == %@) AND (bandwidth == %@) AND (pci == %@) AND (deploymentType == %@)", v38, v19, v20, v21, v22, v23, v24, v25, v26, v27, v36];
  [v39 setPredicate:v28];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v28 description];
    objc_claimAutoreleasedReturnValue();
    sub_100200E0C();
  }

  v40 = 0;
  v29 = [v37 executeFetchRequest:v39 error:&v40];
  v30 = v40;
  if (v30)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v30 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200E50();
    }

LABEL_6:
    v31 = 0;
    goto LABEL_12;
  }

  if (![v29 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100200EC8();
    }

    goto LABEL_6;
  }

  if ([v29 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100200E94();
  }

  v31 = [v29 firstObject];
LABEL_12:

  return v31;
}

- (id)filterOutOfServiceAreasWithContext:(id)a3 unfilteredOutOfServiceAreas:(id)a4 WithExactPrevCells:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 prevCells];
        v15 = [v14 count];
        LOBYTE(v15) = v15 == [v7 count];

        if (v15)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];

  return v16;
}

- (id)getOutOfServiceAreasWithoutNextVisitWithContext:(id)a3 After:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v8 = [NSPredicate predicateWithFormat:@"(nextVisit == nil) AND (lastSeen >= %@)", v6];
  [v7 setPredicate:v8];
  v9 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 description];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Fetching OutOfServiceArea with predicate %@", buf, 0xCu);
  }

  v15 = 0;
  v11 = [v5 executeFetchRequest:v7 error:&v15];
  v12 = v15;
  if (v12)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v12 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200EFC();
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

- (void)updateOutOfServiceAreaAfterLeavingWithContext:(id)a3 outOfServiceArea:(id)a4 startTime:(id)a5 nextCell:(id)a6 duration:(double)a7 entryLocation:(id)a8 exitLocation:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v52 = a6;
  v53 = a8;
  v18 = a9;
  v51 = v17;
  if (v16)
  {
    [v16 setLastSeen:v17];
    [v16 setSeenCount:{objc_msgSend(v16, "seenCount") + 1}];
    v50 = [NSEntityDescription insertNewObjectForEntityForName:@"OutOfServiceDuration" inManagedObjectContext:v15];
    [v50 setSeconds:llround(a7)];
    [v50 setTimestamp:v17];
    [v16 addDurationsObject:v50];
    v19 = [v16 durations];
    v20 = [v19 count];
    v21 = +[FMConfiguration sharedInstance];
    v22 = [v21 OOSDurationsInDatabase];

    if (v20 > v22)
    {
      v23 = [v16 durations];
      v24 = [v23 copy];
      v25 = [v16 durations];
      v26 = [v25 count];
      v27 = +[FMConfiguration sharedInstance];
      v28 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, v26 - [v27 OOSDurationsInDatabase]);
      v29 = [v24 objectsAtIndexes:v28];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v31)
      {
        v32 = *v56;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v55 + 1) + 8 * i);
            [v16 removeDurationsObject:v34];
            [v15 deleteObject:v34];
          }

          v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v31);
      }
    }

    if (v52)
    {
      [v16 addNextCellsObject:v52];
    }

    if (v53)
    {
      v35 = [v16 entryAccuracy];
      if (!v35)
      {
        goto LABEL_16;
      }

      v36 = [v16 entryAccuracy];
      [v53 accuracy];
      v37 = [NSNumber numberWithDouble:?];
      v38 = [v36 compare:v37] == 1;

      if (v38)
      {
LABEL_16:
        [v53 latitude];
        v39 = [NSNumber numberWithDouble:?];
        [v16 setEntryLatitude:v39];

        [v53 longitude];
        v40 = [NSNumber numberWithDouble:?];
        [v16 setEntryLongitude:v40];

        [v53 accuracy];
        v41 = [NSNumber numberWithDouble:?];
        [v16 setEntryAccuracy:v41];
      }
    }

    if (v18)
    {
      v42 = [v16 exitAccuracy];
      if (!v42)
      {
        goto LABEL_20;
      }

      v43 = [v16 exitAccuracy];
      [v18 accuracy];
      v44 = [NSNumber numberWithDouble:?];
      v45 = [v43 compare:v44] == 1;

      if (v45)
      {
LABEL_20:
        [v18 latitude];
        v46 = [NSNumber numberWithDouble:?];
        [v16 setExitLatitude:v46];

        [v18 longitude];
        v47 = [NSNumber numberWithDouble:?];
        [v16 setExitLongitude:v47];

        [v18 accuracy];
        v48 = [NSNumber numberWithDouble:?];
        [v16 setExitAccuracy:v48];
      }
    }

    v54 = 0;
    [v15 save:&v54];
    v49 = v54;
    if (v49 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v49 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200F40();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100200F84();
  }
}

- (id)handleOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 startTime:(id)a9 entryLocation:(id)a10 exitLocation:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v41 = a10;
  v24 = a11;
  v40 = v24;
  LOWORD(v37) = [(FMCoreData *)self NSDateToTimeOfDay:v23];
  v25 = [(FMCoreData *)self getOutOfServiceAreaWithContext:v17 prevVisit:v18 curVisit:v19 nextVisit:v20 subscriptionID:v21 prevCells:v22 timeOfDay:v37];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    goto LABEL_11;
  }

  v39 = [(FMCoreData *)self createOutOfServiceAreaWithContext:v17 prevVisit:v18 curVisit:v19 nextVisit:v20 subscriptionID:v21 prevCells:v22 entryLocation:v41 exitLocation:v24 startTime:v23];
  v28 = +[FMConfiguration sharedInstance];
  v29 = -[FMCoreData deleteOutOfServiceAreasOverThresholdCount:WithContext:](self, "deleteOutOfServiceAreasOverThresholdCount:WithContext:", [v28 OOSMaxOOSAreasInDatabase], v17);

  v38 = v22;
  if (v29)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000790DC;
    v42[3] = &unk_1002AD588;
    v43 = v39;
    if ([v29 indexOfObjectPassingTest:v42] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = v21;
      v31 = v20;
      v32 = v17;
      v33 = v19;
      v34 = v18;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100200FB8();
      }

      v27 = 0;
      v35 = v39;
      goto LABEL_10;
    }
  }

  v30 = v21;
  v31 = v20;
  v32 = v17;
  v33 = v19;
  v34 = v18;
  v35 = v39;
  v27 = v39;
LABEL_10:

  v18 = v34;
  v19 = v33;
  v17 = v32;
  v20 = v31;
  v21 = v30;
  v22 = v38;
LABEL_11:

  return v27;
}

- (id)createOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 entryLocation:(id)a9 exitLocation:(id)a10 startTime:(id)a11
{
  v52 = a3;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v54 = a8;
  v16 = a9;
  v17 = a10;
  v53 = a11;
  v18 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Creating new OutOfServiceArea", buf, 2u);
  }

  v19 = [NSEntityDescription insertNewObjectForEntityForName:@"OutOfServiceArea" inManagedObjectContext:v52];
  [v19 setLastSeen:v53];
  [v19 setSeenCount:0];
  [v19 setPrevVisit:v48];
  [v19 setCurVisit:v49];
  [v19 setNextVisit:v50];
  [v19 setSubscriptionID:v51];
  v20 = [v54 count];
  v21 = +[FMConfiguration sharedInstance];
  LODWORD(v20) = v20 > [v21 OOSPrevCellsInDatabase];

  if (v20)
  {
    v22 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v54 count];
      v24 = +[FMConfiguration sharedInstance];
      v25 = [v24 OOSPrevCellsInDatabase];
      *buf = 134218240;
      v62 = v23;
      v63 = 2048;
      v64 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Received more prevCells for database than expected: %lu > %lu", buf, 0x16u);
    }

    v26 = [NSOrderedSet alloc];
    v27 = [v54 count];
    v28 = +[FMConfiguration sharedInstance];
    v29 = [v28 OOSPrevCellsInDatabase];
    v30 = +[FMConfiguration sharedInstance];
    v31 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v27 - v29, [v30 OOSPrevCellsInDatabase]);
    v32 = [v54 objectsAtIndexes:v31];
    v33 = [v26 initWithArray:v32];
  }

  else
  {
    v33 = [v54 copy];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v35)
  {
    v36 = *v57;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v57 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [v19 addPrevCellsObject:*(*(&v56 + 1) + 8 * i)];
      }

      v35 = [v34 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v35);
  }

  if (v16)
  {
    [v16 latitude];
    v38 = [NSNumber numberWithDouble:?];
    [v19 setEntryLatitude:v38];

    [v16 longitude];
    v39 = [NSNumber numberWithDouble:?];
    [v19 setEntryLongitude:v39];

    [v16 accuracy];
    v40 = [NSNumber numberWithDouble:?];
    [v19 setEntryAccuracy:v40];
  }

  if (v17)
  {
    [v17 latitude];
    v41 = [NSNumber numberWithDouble:?];
    [v19 setExitLatitude:v41];

    [v17 longitude];
    v42 = [NSNumber numberWithDouble:?];
    [v19 setExitLongitude:v42];

    [v17 accuracy];
    v43 = [NSNumber numberWithDouble:?];
    [v19 setExitAccuracy:v43];
  }

  [v19 setTimeOfDay:{-[FMCoreData NSDateToTimeOfDay:](self, "NSDateToTimeOfDay:", v53)}];
  v55 = 0;
  [v52 save:&v55];
  v44 = v55;
  if (v44)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v44 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100200FEC();
    }

    v45 = 0;
  }

  else
  {
    v45 = v19;
  }

  return v45;
}

- (id)getOutOfServiceAreaWithContext:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 nextVisit:(id)a6 subscriptionID:(id)a7 prevCells:(id)a8 timeOfDay:(signed __int16)a9
{
  v51 = a3;
  v15 = a4;
  v53 = a5;
  v54 = a6;
  v49 = a7;
  v50 = a8;
  v47 = v15;
  v16 = +[FMConfiguration sharedInstance];
  v17 = -[FMCoreData getMinutesSinceMidnightFrom:addingOffset:](self, "getMinutesSinceMidnightFrom:addingOffset:", a9, -[v16 OOSTimeOfDayWindowBackMinutes]);

  v18 = +[FMConfiguration sharedInstance];
  v19 = -[FMCoreData getMinutesSinceMidnightFrom:addingOffset:](self, "getMinutesSinceMidnightFrom:addingOffset:", a9, [v18 OOSTimeOfDayWindowForwardMinutes]);

  v52 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v20 = v15;
  if (v17 >= v19)
  {
    if (!v15)
    {
      v20 = +[NSNull null];
    }

    v21 = v53;
    if (!v53)
    {
      v21 = +[NSNull null];
    }

    v22 = v54;
    if (!v54)
    {
      v22 = +[NSNull null];
    }

    v23 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(prevVisit == %@) AND (curVisit == %@) AND (nextVisit == %@) AND (subscriptionID == %@) AND (SUBQUERY(prevCells, $prevCell, $prevCell IN %@).@count == %d) AND ((timeOfDay >= %d) OR (timeOfDay <= %d))", v20, v21, v22, v49, v50, [v50 count], v17, v19);
  }

  else
  {
    if (!v15)
    {
      v20 = +[NSNull null];
    }

    v21 = v53;
    if (!v53)
    {
      v21 = +[NSNull null];
    }

    v22 = v54;
    if (!v54)
    {
      v22 = +[NSNull null];
    }

    v23 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(prevVisit == %@) AND (curVisit == %@) AND (nextVisit == %@) AND (subscriptionID == %@) AND (SUBQUERY(prevCells, $prevCell, $prevCell IN %@).@count == %d) AND (timeOfDay >= %d) AND (timeOfDay <= %d)", v20, v21, v22, v49, v50, [v50 count], v17, v19);
  }

  v24 = v23;
  if (!v54)
  {
  }

  if (!v53)
  {
  }

  v25 = v52;
  if (!v15)
  {
  }

  [v52 setPredicate:v24];
  [v52 setReturnsObjectsAsFaults:0];
  v26 = *(qword_1002DBE98 + 136);
  v27 = v51;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = [v24 description];
    *buf = 138412290;
    v62 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Fetching OutOfServiceArea with predicate %@", buf, 0xCu);

    v27 = v51;
    v25 = v52;
  }

  v59 = 0;
  v46 = v24;
  v29 = [v27 executeFetchRequest:v25 error:&v59];
  v30 = v59;
  v31 = *(qword_1002DBE98 + 136);
  v48 = v30;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v29 count];
    *buf = 134217984;
    v62 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Fetch done, %lu unfiltered results", buf, 0xCu);
  }

  if (v30)
  {
    if (!os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v33 = 0;
      goto LABEL_50;
    }

    v45 = v29;
    [v30 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100201030();
    v33 = 0;
  }

  else
  {
    v45 = v29;
    v34 = [(FMCoreData *)self filterOutOfServiceAreasWithContext:v27 unfilteredOutOfServiceAreas:v29 WithExactPrevCells:v50];
    if ([v34 count])
    {
      if ([v34 count] == 1)
      {
        v33 = [v34 firstObject];
      }

      else
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100201074();
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v35 = v34;
        v44 = v34;
        v33 = 0;
        v36 = [v35 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v36)
        {
          v37 = *v56;
          v38 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            for (i = 0; i != v36; i = i + 1)
            {
              if (*v56 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v55 + 1) + 8 * i);
              v41 = -[FMCoreData getDifferenceBetweenMinutesSinceMidnight:b:](self, "getDifferenceBetweenMinutesSinceMidnight:b:", [v40 timeOfDay], a9);
              if (v41 < v38)
              {
                v42 = v40;

                v33 = v42;
                v38 = v41;
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v55 objects:v60 count:16];
          }

          while (v36);
        }

        v34 = v44;
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1002010A8();
      }

      v33 = 0;
    }
  }

  v29 = v45;
LABEL_50:

  return v33;
}

- (id)getOrCreateLocationOfInterestAt:(id)a3 WithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMCoreData *)self getLocationOfInterestAt:v6 WithContext:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(FMCoreData *)self createLocationOfInterestAt:v6 WithContext:v7];
  }

  v11 = v10;

  return v11;
}

- (id)createLocationOfInterestAt:(id)a3 WithContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002010DC();
  }

  v7 = [NSEntityDescription insertNewObjectForEntityForName:@"LocationOfInterest" inManagedObjectContext:v6];
  v8 = [v5 timestamp];
  [v7 setLastSeen:v8];

  [v7 setSeenCount:0];
  [v5 latitude];
  [v7 setLatitude:?];
  [v5 longitude];
  [v7 setLongitude:?];
  [v5 accuracy];
  [v7 setAccuracy:?];
  v12 = 0;
  [v6 save:&v12];
  v9 = v12;
  if (v9)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v9 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201110();
    }

    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)getLocationOfInterestAt:(id)a3 WithContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v56 = v6;
  [v5 accuracy];
  v8 = v7;
  [v5 latitude];
  v10 = cos(v9 * 3.14159265 / 180.0);
  [v5 latitude];
  v12 = v11;
  [v5 latitude];
  v14 = v13;
  [v5 longitude];
  v16 = v15;
  [v5 longitude];
  v18 = v17;
  v19 = [NSFetchRequest fetchRequestWithEntityName:@"LocationOfInterest"];
  v20 = v8 * 1.1 / (v10 * 6371009.0) * 180.0 / 3.14159265;
  v55 = v19;
  v21 = [NSPredicate predicateWithFormat:@"(latitude >= %lf) AND (latitude <= %lf) AND (longitude >= %lf) AND (longitude <= %lf)", v12 - v8 * 1.1 / 6371009.0 * 180.0 / 3.14159265, v8 * 1.1 / 6371009.0 * 180.0 / 3.14159265 + v14, v16 - v20, v20 + v18];
  [v19 setPredicate:v21];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v21 description];
    objc_claimAutoreleasedReturnValue();
    sub_100201154();
  }

  v61 = 0;
  v22 = [v6 executeFetchRequest:v19 error:&v61];
  v23 = v61;
  if (v23)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v53 = v22;
      [v23 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201198();
LABEL_6:
      v24 = 0;
      v22 = v53;
      goto LABEL_31;
    }

LABEL_12:
    v24 = 0;
    goto LABEL_31;
  }

  if (![v22 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      v53 = v22;
      [v21 description];
      objc_claimAutoreleasedReturnValue();
      sub_100201244();
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if ([v22 count] == 1)
  {
    v25 = [v22 firstObject];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002011DC();
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v26 = v22;
    v54 = v22;
    v25 = 0;
    v27 = [v26 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v27)
    {
      v28 = *v58;
      v29 = 1.79769313e308;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v58 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v57 + 1) + 8 * i);
          [v5 latitude];
          v33 = v32;
          [v5 longitude];
          v35 = v34;
          [v31 latitude];
          v37 = v36;
          [v31 longitude];
          [FMCoreLocationController distanceBetween:v33 srcLongitude:v35 destLatitude:v37 destLongitude:v38];
          v40 = v39;
          if (v39 < v29)
          {
            v41 = v31;

            v25 = v41;
            v29 = v40;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v27);
    }

    v22 = v54;
  }

  [v5 latitude];
  v43 = v42;
  [v5 longitude];
  v45 = v44;
  [v25 latitude];
  v47 = v46;
  [v25 longitude];
  [FMCoreLocationController distanceBetween:v43 srcLongitude:v45 destLatitude:v47 destLongitude:v48];
  v50 = v49;
  [v5 accuracy];
  if (v50 <= v51)
  {
    v24 = v25;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100201210();
    }

    v24 = 0;
  }

LABEL_31:

  return v24;
}

- (id)deleteOutOfServiceAreasOverThresholdCount:(unint64_t)a3 WithContext:(id)a4
{
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v19 = 0;
  v8 = [v6 countForFetchRequest:v7 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201288();
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v11 = &v8[-a3];
  if (v8 <= a3)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002012CC();
    }

    v10 = 0;
    goto LABEL_11;
  }

  v12 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v13 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:1];
  v20 = v13;
  v14 = [NSArray arrayWithObjects:&v20 count:1];
  [v12 setSortDescriptors:v14];

  [v12 setFetchLimit:v11];
  v18 = 0;
  v15 = [v6 executeFetchRequest:v12 error:&v18];
  v10 = v18;
  if (v10)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201350();
    }

LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  if (![(FMCoreData *)self deleteOutOfServiceAreas:v15 AndAssociatedEntitiesWithContext:v6])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100201394();
    }

    goto LABEL_19;
  }

  v16 = v15;
LABEL_20:

LABEL_12:

  return v16;
}

- (void)deletedOrphanedServingCellsWithContext:(id)a3
{
  v3 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"ServingCell"];
  v4 = [NSPredicate predicateWithFormat:@"prevCellOf.@count == 0 AND nextCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v15 = [v3 executeFetchRequest:v16 error:&v22];
  v5 = v22;
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002013C8();
    }
  }

  else if ([v15 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v15;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v11 prevCellOf];
            v14 = [v11 nextCellOf];
            *buf = 138412802;
            v24 = v11;
            v25 = 2112;
            v26 = v13;
            v27 = 2112;
            v28 = v14;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Deleting serving cell: %@ (prevCellOf: %@, nextCellOf: %@)", buf, 0x20u);
          }

          [v3 deleteObject:{v11, v15}];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = 0;
    [v3 save:&v17];
    v6 = v17;
    if (v6 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020140C();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100201450();
    }

    v6 = 0;
  }
}

- (void)deletedOrphanedLocationsOfInterestWithContext:(id)a3
{
  v17 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"LocationOfInterest"];
  v3 = [NSPredicate predicateWithFormat:@"prevVisitOf.@count == 0 AND curVisitOf.@count == 0 AND nextVisitOf.@count == 0"];
  [v16 setPredicate:v3];

  v23 = 0;
  v15 = [v17 executeFetchRequest:v16 error:&v23];
  v4 = v23;
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v5 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201484();
    }
  }

  else if ([v15 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v15;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v32 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [v10 prevVisitOf];
            v13 = [v10 curVisitOf];
            v14 = [v10 nextVisitOf];
            *buf = 138413058;
            v25 = v10;
            v26 = 2112;
            v27 = v12;
            v28 = 2112;
            v29 = v13;
            v30 = 2112;
            v31 = v14;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Deleting location of interest: %@ (prevVisitOf: %@, curVisitOf: %@, nextVisitOf: %@)", buf, 0x2Au);
          }

          [v17 deleteObject:{v10, v15}];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v32 count:16];
      }

      while (v7);
    }

    v18 = 0;
    [v17 save:&v18];
    v5 = v18;
    if (v5 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v5 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002014C8();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020150C();
    }

    v5 = 0;
  }
}

- (unint64_t)deleteOutOfServiceAreasOlderThan:(id)a3 WithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v9 = [NSPredicate predicateWithFormat:@"lastSeen < %@", v6];
  [v8 setPredicate:v9];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v9 description];
    objc_claimAutoreleasedReturnValue();
    sub_100201540();
  }

  v14 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v14];
  v11 = v14;
  if (v11)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100201350();
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  if (![(FMCoreData *)self deleteOutOfServiceAreas:v10 AndAssociatedEntitiesWithContext:v7])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100201394();
    }

    goto LABEL_10;
  }

  v12 = [v10 count];
LABEL_11:

  return v12;
}

- (void)deleteOutOfServiceDurationsOlderThan:(id)a3 WithContext:(id)a4
{
  v5 = a3;
  v22 = a4;
  v19 = v5;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceDuration"];
  v21 = v6;
  v7 = [NSPredicate predicateWithFormat:@"timestamp < %@", v5];
  v20 = v7;
  [v6 setPredicate:v7];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v7 description];
    objc_claimAutoreleasedReturnValue();
    sub_100201584();
  }

  v28 = 0;
  v8 = [v22 executeFetchRequest:v6 error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002015C8();
LABEL_18:
      v8 = v18;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 timestamp];
            *buf = 138412546;
            v30 = v15;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Deleting OOS duration: %@ (timestamp: %@)", buf, 0x16u);
          }

          [v22 deleteObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    v23 = 0;
    [v22 save:&v23];
    v10 = v23;
    v8 = v18;
    if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020160C();
      goto LABEL_18;
    }
  }
}

- (void)performDatabaseMaintenance
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100201650();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007B7E8;
  v5[3] = &unk_1002AD5B0;
  v5[4] = self;
  v3 = [(FMCoreData *)self backgroundContextPerformBlockAndWait:v5];
  v4 = *(qword_1002DBE98 + 136);
  if (v3)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002016B8();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100201684();
  }
}

- (void)sendOnDeviceDBTelemetryEventWithContext:(id)a3 andNumberOfDeletedOOSAreasStale:(unint64_t)a4
{
  v5 = a3;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v27 = 0;
  v7 = [v5 countForFetchRequest:v6 error:&v27];
  v8 = v27;
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v9 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002016EC();
    }
  }

  else
  {
    v10 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceDuration"];
    v26 = 0;
    v11 = [v5 countForFetchRequest:v10 error:&v26];
    v12 = v26;
    if (v12)
    {
      v9 = v12;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v9 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100201730();
      }
    }

    else
    {
      v13 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
      v14 = [[NSSortDescriptor alloc] initWithKey:@"seenCount" ascending:0];
      v28 = v14;
      v15 = [NSArray arrayWithObjects:&v28 count:1];
      [v13 setSortDescriptors:v15];

      [v13 setFetchLimit:1];
      [v13 setReturnsObjectsAsFaults:0];
      v25 = 0;
      v19 = [v5 executeFetchRequest:v13 error:&v25];
      v9 = v25;
      if (v9)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          [v9 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100201774();
        }
      }

      else
      {
        v16 = [v19 firstObject];
        v17 = [NSString stringWithUTF8String:"com.apple.Telephony.fedMobilityOnDeviceLearningsDB"];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10007BD48;
        v20[3] = &unk_1002ABEF8;
        v18 = v16;
        v21 = v18;
        v22 = a4;
        v23 = v7;
        v24 = v11;
        sub_1000158DC(v17, v20);
      }
    }
  }
}

- (BOOL)backgroundContextPerformBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = [(FMCoreData *)self container];
  v6 = [v5 newBackgroundContext];

  if (!v6)
  {
    v12 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "FederatedMobility[FMCoreData]:#I Background context is nil";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v7 = [(FMCoreData *)self container];
  v8 = [v7 persistentStoreCoordinator];
  v9 = [v8 persistentStores];
  v10 = [v9 count];

  if (!v10)
  {
    v12 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "FederatedMobility[FMCoreData]:#I No persistent stores loaded";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007C208;
  v15[3] = &unk_1002AD5D8;
  v17 = v4;
  v16 = v6;
  v18 = buf;
  [v16 performBlockAndWait:v15];
  v11 = v20[24];

  _Block_object_dispose(buf, 8);
LABEL_10:

  return v11 & 1;
}

- (signed)NSDateToTimeOfDay:(id)a3
{
  v3 = a3;
  v4 = [NSTimeZone timeZoneWithName:@"UTC"];
  if (v4)
  {
    v5 = [FMUtil NSDate:v3 toTimeOfDayInTimeZone:v4];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020186C();
    }

    v5 = -1;
  }

  return v5;
}

- (int64_t)getMinutesSinceMidnightFrom:(int64_t)a3 addingOffset:(int64_t)a4
{
  v4 = (a4 + a3) % 1440;
  if (v4 >= 0)
  {
    return (a4 + a3) % 1440;
  }

  else
  {
    return v4 + 1440;
  }
}

- (int64_t)getDifferenceBetweenMinutesSinceMidnight:(int64_t)a3 b:(int64_t)a4
{
  v4 = a3 - a4;
  if (a3 - a4 < 0)
  {
    v4 = a4 - a3;
  }

  if (v4 >= 1440 - v4)
  {
    return 1440 - v4;
  }

  else
  {
    return v4;
  }
}

- (BOOL)deleteOutOfServiceAreas:(id)a3 AndAssociatedEntitiesWithContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 lastSeen];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Deleting OOS area: %@ (last seen: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v10 durations];
        v14 = [v13 copy];

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v24 + 1) + 8 * j);
              [v10 removeDurationsObject:v18];
              [v6 deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [v6 deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [v6 save:&v23];
  v19 = v23;
  if (v19)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v19 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002018A0();
    }
  }

  else
  {
    [(FMCoreData *)self deletedOrphanedServingCellsWithContext:v6];
    [(FMCoreData *)self deletedOrphanedLocationsOfInterestWithContext:v6];
  }

  return v19 == 0;
}

- (id)getOrCreateCellMapNodeWithContext:(id)a3 andCellMapCongestionMetric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 gci];
  v9 = [(FMCoreData *)self fetchCellMapNodeWithGCI:v8 andContext:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [(FMCoreData *)self createCellMapNodeWithContext:v6 andCellMapCongestionMetric:v7];
  }

  v11 = v10;

  return v11;
}

- (id)fetchCellMapNodeWithGCI:(id)a3 andContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  v8 = [NSPredicate predicateWithFormat:@"gci == %@", v5];
  [v7 setPredicate:v8];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v8 description];
    objc_claimAutoreleasedReturnValue();
    sub_1002020E0();
  }

  [v7 setReturnsObjectsAsFaults:0];
  v14 = 0;
  v9 = [v6 executeFetchRequest:v7 error:&v14];
  v10 = v14;
  v11 = v10;
  if (!v9 || v10)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100202194();
    }

    goto LABEL_14;
  }

  if (![v9 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100202160();
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if ([v9 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100202124();
  }

  v12 = [v9 firstObject];
LABEL_15:

  return v12;
}

- (BOOL)updateCellMapNode:(id)a3 withMetric:(id)a4 updateConnDuration:(BOOL)a5 andContext:(id)a6 atTime:(id)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v11 gci];
  v16 = [v12 gci];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    v18 = [v12 band];
    [v11 setBand:{objc_msgSend(v18, "shortValue")}];

    v19 = [v12 frequency];
    [v11 setFrequency:{objc_msgSend(v19, "intValue")}];

    [v11 setLastSeen:v14];
    v20 = [v12 pci];
    [v11 setPci:{objc_msgSend(v20, "shortValue")}];

    v21 = [v12 rat];
    [v11 setRat:{objc_msgSend(v21, "shortValue")}];

    v22 = [v12 scs];
    [v11 setScs:v22];

    [v11 setSeenCount:{(objc_msgSend(v11, "seenCount") + 1)}];
    if (v9)
    {
      v23 = [v12 connDuration];
      [v11 setSumConnDuration:{objc_msgSend(v23, "longLongValue") + objc_msgSend(v11, "sumConnDuration")}];
    }

    v24 = [v12 dlCongestionCount];
    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = [v12 ulCongestionCount];
    if (v25)
    {
      v26 = [v12 l1MitigationCount];

      if (!v26)
      {
LABEL_9:
        v29 = [v12 totalDuration];
        [v11 setSumTotalDuration:{objc_msgSend(v29, "longLongValue") + objc_msgSend(v11, "sumTotalDuration")}];

        v33 = 0;
        v30 = [v13 save:&v33];
        v31 = v33;
        if (v31)
        {
          v30 = 0;
        }

        if ((v30 & 1) == 0 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          [v31 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10020225C();
        }

        goto LABEL_18;
      }

      v27 = [v12 dlCongestionCount];
      [v11 setSumDlCongestionCount:{objc_msgSend(v11, "sumDlCongestionCount") + objc_msgSend(v27, "intValue")}];

      v28 = [v12 ulCongestionCount];
      [v11 setSumUlCongestionCount:{objc_msgSend(v11, "sumUlCongestionCount") + objc_msgSend(v28, "intValue")}];

      v24 = [v12 l1MitigationCount];
      [v11 setSumL1MitigationCount:{objc_msgSend(v11, "sumL1MitigationCount") + objc_msgSend(v24, "intValue")}];
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_1002021D8();
  }

  v30 = 0;
LABEL_18:

  return v30;
}

- (id)getOrCreateCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FMCoreData *)self fetchCellMapEdgeWithContext:v8 sourceNode:v9 destinationNode:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(FMCoreData *)self createCellMapEdgeWithContext:v8 sourceNode:v9 destinationNode:v10];
  }

  v14 = v13;

  return v14;
}

- (BOOL)updateCellMapEdge:(id)a3 withContext:(id)a4 atTime:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 setLastSeen:v9];
  [v7 setSeenCount:{(objc_msgSend(v7, "seenCount") + 1)}];
  v13 = 0;
  v10 = [v8 save:&v13];
  v11 = v13;
  if (v11)
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v11 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_1002022A0();
  }

  return v10;
}

- (id)fetchCellMapEdgesOfCellMapNode:(id)a3 maxCount:(unint64_t)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  v10 = [NSPredicate predicateWithFormat:@"source == %@", v7];
  v11 = [[NSSortDescriptor alloc] initWithKey:@"seenCount" ascending:0];
  v19 = v11;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  [v9 setSortDescriptors:v12];

  if (a4)
  {
    [v9 setFetchLimit:a4];
  }

  [v9 setPredicate:v10];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v10 description];
    objc_claimAutoreleasedReturnValue();
    sub_1002022E4();
  }

  [v9 setReturnsObjectsAsFaults:0];
  [v9 setRelationshipKeyPathsForPrefetching:&off_1002BF8C0];
  v18 = 0;
  v13 = [v8 executeFetchRequest:v9 error:&v18];
  v14 = v18;
  v15 = v14;
  if (!v13 || v14)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100202328();
    }

    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (void)deleteOldestCellMapNodesAndEdgesOverThreshold:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  v14 = 0;
  v8 = [v6 countForFetchRequest:v7 error:&v14];
  v9 = v14;
  if (v9)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100202398();
    }
  }

  else
  {
    v10 = &v8[-a3];
    if (v8 <= a3)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100202408();
      }
    }

    else
    {
      v11 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
      v12 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:1];
      v15 = v12;
      v13 = [NSArray arrayWithObjects:&v15 count:1];
      [v11 setSortDescriptors:v13];

      [v11 setFetchLimit:v10];
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_10020247C();
      }

      [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v11 andContext:v6];
    }
  }
}

- (void)deleteCellMapNodesAndEdgesOlderThan:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  v9 = [NSPredicate predicateWithFormat:@"lastSeen < %@", v6];
  [v8 setPredicate:v9];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v9 description];
    objc_claimAutoreleasedReturnValue();
    sub_1002024F0();
  }

  [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v8 andContext:v7];
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  v11 = [NSPredicate predicateWithFormat:@"lastSeen < %@", v6];
  [v10 setPredicate:v11];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v11 description];
    objc_claimAutoreleasedReturnValue();
    sub_100202534();
  }

  [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v10 andContext:v7];
}

- (void)deleteCellMapEntitiesWithFetchRequest:(id)a3 andContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v5];
  v17 = 0;
  v8 = [v6 executeRequest:v7 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v11 = [v5 entityName];
      sub_100202578(v11, v10, v18);
    }
  }

  else
  {
    v16 = 0;
    v12 = [v6 save:&v16];
    v13 = v16;
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = v13;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        v15 = [v5 entityName];
        sub_1002025D0(v15, v10, v18);
      }
    }
  }
}

- (id)createCellMapNodeWithContext:(id)a3 andCellMapCongestionMetric:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100202628();
  }

  v7 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapNode" inManagedObjectContext:v5];
  v8 = [v6 band];
  [v7 setBand:{objc_msgSend(v8, "shortValue")}];

  v9 = [v6 frequency];
  [v7 setFrequency:{objc_msgSend(v9, "intValue")}];

  v10 = [v6 gci];
  [v7 setGci:v10];

  [v7 setLastSeen:0];
  v11 = [v6 pci];
  [v7 setPci:{objc_msgSend(v11, "shortValue")}];

  v12 = [v6 rat];
  [v7 setRat:{objc_msgSend(v12, "shortValue")}];

  v13 = [v6 scs];
  [v7 setScs:v13];

  [v7 setSeenCount:0];
  [v7 setSumConnDuration:0];
  [v7 setSumDlCongestionCount:0];
  [v7 setSumL1MitigationCount:0];
  [v7 setSumTotalDuration:0];
  [v7 setSumUlCongestionCount:0];
  v19 = 0;
  v14 = [v5 save:&v19];
  v15 = v19;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    v17 = v7;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v15 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020265C();
    }

    v17 = 0;
  }

  return v17;
}

- (id)createCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002026A0();
  }

  v10 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapEdge" inManagedObjectContext:v7];
  [v10 setLastSeen:0];
  [v10 setSeenCount:0];
  [v10 setSource:v8];
  [v10 setDestination:v9];
  v16 = 0;
  v11 = [v7 save:&v16];
  v12 = v16;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v12 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002026D4();
    }

    v14 = 0;
  }

  return v14;
}

- (id)fetchCellMapEdgeWithContext:(id)a3 sourceNode:(id)a4 destinationNode:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  v11 = [NSPredicate predicateWithFormat:@"source == %@ AND destination == %@", v8, v9];
  [v10 setPredicate:v11];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v11 description];
    objc_claimAutoreleasedReturnValue();
    sub_100202718();
  }

  [v10 setReturnsObjectsAsFaults:0];
  v17 = 0;
  v12 = [v7 executeFetchRequest:v10 error:&v17];
  v13 = v17;
  v14 = v13;
  if (!v12 || v13)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v14 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002027CC();
    }

    goto LABEL_14;
  }

  if (![v12 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100202798();
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if ([v12 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020275C();
  }

  v15 = [v12 firstObject];
LABEL_15:

  return v15;
}

- (BOOL)resetAndPopulateCellMapDatabaseWithJSON:(id)a3
{
  v4 = a3;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+CellMap]:#I Received request to populate CellMap database: %@", &buf, 0xCu);
  }

  if (v4 && [v4 length])
  {
    v6 = [v4 dataUsingEncoding:4];
    v18 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v18];
    v8 = v18;

    if (!v7 || v8)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_10020284C();
      }

      v12 = 0;
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x2020000000;
      v23 = 1;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100087084;
      v14[3] = &unk_1002ADE60;
      v14[4] = self;
      v16 = 0;
      p_buf = &buf;
      v15 = v7;
      v9 = [(FMCoreData *)self backgroundContextPerformBlockAndWait:v14];
      v10 = *(qword_1002DBE98 + 136);
      if (v9)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_INFO))
        {
          v11 = *(*(&buf + 1) + 24);
          *v19 = 67109120;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+CellMap]:#I Done populating DB. Success: %{BOOL}d", v19, 8u);
        }

        v12 = *(*(&buf + 1) + 24);
      }

      else
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
        {
          sub_100202810();
        }

        v12 = 0;
      }

      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (id)updateMapWithCellMapCongestionMetric:(id)a3 andPreviousNodeObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000ABD78;
  v21 = sub_1000ABD88;
  v22 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ABD90;
  v13[3] = &unk_1002ADE60;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v16 = &v17;
  v9 = v7;
  v15 = v9;
  if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v13])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AC024;
    v12[3] = &unk_1002AD5B0;
    v12[4] = self;
    [(FMCoreData *)self backgroundContextPerformBlockAndWait:v12];
    v10 = v18[5];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100204E70();
    }

    v10 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (id)cellMapPredictionForGCI:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000ABD78;
  v14 = sub_1000ABD88;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC230;
  v6[3] = &unk_1002ABFB0;
  v7 = self;
  v3 = a3;
  v8 = v3;
  v9 = &v10;
  if ([(FMCoreData *)v7 backgroundContextPerformBlockAndWait:v6])
  {
    v4 = v11[5];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_100204E70();
    }

    v4 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v4;
}

+ (BOOL)isFMCellMapNodeCongested:(id)a3
{
  v3 = a3;
  v4 = +[FMCoreData isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:](FMCoreData, "isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:", [v3 dlCongestionCount], objc_msgSend(v3, "ulCongestionCount"), objc_msgSend(v3, "l1MitigationCount"));

  return v4;
}

+ (BOOL)isFMCellMapCongestionMetricCongested:(id)a3
{
  v3 = a3;
  v4 = [v3 dlCongestionCount];
  if (v4)
  {
    v5 = [v3 ulCongestionCount];
    if (!v5)
    {
      LOBYTE(v6) = 0;
      goto LABEL_7;
    }

    v6 = [v3 l1MitigationCount];

    if (v6)
    {
      v4 = [v3 dlCongestionCount];
      v7 = [v4 unsignedIntValue];
      v8 = [v3 ulCongestionCount];
      v9 = [v8 unsignedIntValue];
      v10 = [v3 l1MitigationCount];
      LOBYTE(v6) = +[FMCoreData isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:](FMCoreData, "isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:", v7, v9, [v10 unsignedIntValue]);

LABEL_7:
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)fmCellMapNodeFromCellMapNode:(id)a3 edgeSeenCount:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 gci];
  v7 = [v6 componentsSeparatedByString:@"."];

  if ([v7 count] == 4)
  {
    v8 = [FMCellMapNode alloc];
    v39 = [v5 gci];
    v9 = [v5 rat];
    v10 = [v5 frequency];
    v38 = [v7 objectAtIndexedSubscript:3];
    v11 = [v38 longLongValue];
    v37 = [v7 objectAtIndexedSubscript:2];
    v12 = [v37 intValue];
    [v7 objectAtIndexedSubscript:0];
    v30 = v12;
    v31 = v11;
    v32 = v10;
    v33 = v9;
    v34 = v8;
    v36 = v35 = v4;
    v29 = [v36 intValue];
    v13 = [v7 objectAtIndexedSubscript:1];
    v28 = [v13 intValue];
    v27 = [v5 band];
    LODWORD(v8) = [v5 pci];
    v14 = [v5 sumConnDuration];
    v15 = [v5 sumTotalDuration];
    v16 = [v5 sumDlCongestionCount];
    v17 = [v5 sumUlCongestionCount];
    v18 = [v5 sumL1MitigationCount];
    v19 = [v5 scs];
    LODWORD(v26) = v35;
    HIDWORD(v25) = v16;
    HIDWORD(v24) = v14 / 1000;
    LODWORD(v25) = v15 / 1000;
    LODWORD(v24) = v8;
    v20 = [FMCellMapNode initWithGCI:v34 rat:"initWithGCI:rat:frequency:cellIdentity:tac:mcc:mnc:band:pci:dsDuration:totalDuration:dlCongestionCount:ulCongestionCount:l1MitigationCount:weight:scs:" frequency:v39 cellIdentity:v33 tac:v32 mcc:v31 mnc:v30 band:v29 pci:__PAIR64__(v27 dsDuration:v28) totalDuration:v24 dlCongestionCount:v25 ulCongestionCount:__PAIR64__(v18 l1MitigationCount:v17) weight:v26 scs:v19];
  }

  else
  {
    v21 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v5 gci];
      sub_1002051F4(v22, buf, v21);
    }

    v20 = 0;
  }

  return v20;
}

- (id)createChildTSEventOfType:(signed __int16)a3 withDetails:(id)a4 withContext:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v9 = [v7 valueForKey:@"latitude"];
      v11 = [v7 valueForKey:@"longitude"];
      v17 = [v7 valueForKey:@"accuracy"];
      v14 = v17;
      if (v9)
      {
        if (v11)
        {
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitStarted" inManagedObjectContext:v8];
                  [v9 doubleValue];
                  [v12 setLatitude:?];
                  [v11 doubleValue];
                  [v12 setLongitude:?];
                  [v14 doubleValue];
                  [v12 setAccuracy:?];
                  goto LABEL_38;
                }
              }
            }
          }
        }
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1002052C4();
      }
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_18;
      }

      v9 = [v7 valueForKey:@"latitude"];
      v11 = [v7 valueForKey:@"longitude"];
      v13 = [v7 valueForKey:@"accuracy"];
      v14 = v13;
      if (v9)
      {
        if (v11)
        {
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitEnded" inManagedObjectContext:v8];
                  [v9 doubleValue];
                  [v12 setLatitude:?];
                  [v11 doubleValue];
                  [v12 setLongitude:?];
                  [v14 doubleValue];
                  [v12 setAccuracy:?];
LABEL_38:

                  goto LABEL_44;
                }
              }
            }
          }
        }
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205290();
      }
    }

    v12 = 0;
    goto LABEL_38;
  }

  if (v6 == 1)
  {
    v9 = [v7 valueForKey:@"from"];
    v16 = [v7 valueForKey:@"to"];
    v11 = v16;
    if (v9)
    {
      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventCellChanged" inManagedObjectContext:v8];
            [v12 setFromCellGCI:v9];
            [v12 setToCellGCI:v11];
            goto LABEL_44;
          }
        }
      }
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_10020532C();
    }

LABEL_43:
    v12 = 0;
    goto LABEL_44;
  }

  if (v6 == 2)
  {
    v9 = [v7 valueForKey:@"from"];
    v10 = [v7 valueForKey:@"to"];
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventSignalStrengthChanged" inManagedObjectContext:v8];
            [v12 setFromBars:{objc_msgSend(v9, "shortValue")}];
            [v12 setToBars:{objc_msgSend(v11, "shortValue")}];
LABEL_44:

            goto LABEL_45;
          }
        }
      }
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1002052F8();
    }

    goto LABEL_43;
  }

LABEL_18:
  v15 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100205360(v6, v15);
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)createTSEventFrom:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = v5;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitStarted" inManagedObjectContext:v6];
      [v8 latitude];
      [v9 setLatitude:?];
      [v8 longitude];
      [v9 setLongitude:?];
      [v8 accuracy];
      [v9 setAccuracy:?];
      goto LABEL_14;
    }

    if (v7 == 4)
    {
      v8 = v5;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitEnded" inManagedObjectContext:v6];
      [v8 latitude];
      [v9 setLatitude:?];
      [v8 longitude];
      [v9 setLongitude:?];
      [v8 accuracy];
      [v9 setAccuracy:?];
LABEL_14:

      goto LABEL_15;
    }
  }

  else
  {
    if (v7 == 1)
    {
      v8 = v5;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventCellChanged" inManagedObjectContext:v6];
      v13 = [v8 fromCellGCI];
      [v9 setFromCellGCI:v13];

      v11 = [v8 toCellGCI];
      [v9 setToCellGCI:v11];
      goto LABEL_12;
    }

    if (v7 == 2)
    {
      v8 = v5;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventSignalStrengthChanged" inManagedObjectContext:v6];
      v10 = [v8 fromBars];
      [v9 setFromBars:{objc_msgSend(v10, "shortValue")}];

      v11 = [v8 toBars];
      [v9 setToBars:{objc_msgSend(v11, "shortValue")}];
LABEL_12:

      goto LABEL_14;
    }
  }

  v12 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1002053D8([v5 type], v15, v12);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)createTSAnomalyWithContext:(id)a3 anomaly:(id)a4 homePLMN:(id)a5
{
  v28 = a3;
  v8 = a4;
  v27 = a5;
  v9 = [v8 startTimestamp];
  if (v9 <= [v8 endTimestamp])
  {
    v11 = [NSEntityDescription insertNewObjectForEntityForName:@"TSAnomaly" inManagedObjectContext:v28];
    [v11 setDuration:{(objc_msgSend(v8, "endTimestamp") - objc_msgSend(v8, "startTimestamp")) / 0x3B9ACA00uLL}];
    [v11 setHomePLMN:v27];
    v12 = [v8 startTime];
    [v11 setStartTime:v12];

    [v11 setType:{objc_msgSend(v8, "type")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v8 events];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v17 timestamp];
          if (v18 <= [v8 startTimestamp])
          {
            v20 = -[FMCoreData createTSEventFrom:withContext:timeUntilAnomaly:eventOf:](self, "createTSEventFrom:withContext:timeUntilAnomaly:eventOf:", v17, v28, ([v8 startTimestamp] - objc_msgSend(v17, "timestamp")) / 0x3B9ACA00uLL, v11);
            if (!v20)
            {
              v21 = *(qword_1002DBE98 + 136);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100205528(&buf, v31, v21);
              }
            }
          }

          else
          {
            v19 = *(qword_1002DBE98 + 136);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100205568(&v32, v33, v19);
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v29 = 0;
    [v28 save:&v29];
    v22 = v29;
    v23 = *(qword_1002DBE98 + 136);
    if (v22)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v22 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1002055A8();
      }

      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1002055EC();
      }

      v24 = +[FMConfiguration sharedInstance];
      v25 = -[FMCoreData deleteTSAnomaliesOverThresholdCount:withContext:](self, "deleteTSAnomaliesOverThresholdCount:withContext:", [v24 FMTSAnomaliesInDatabase], v28);

      v10 = v11;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_10020565C();
    }

    v10 = 0;
  }

  return v10;
}

- (id)createTSPredictionWithContext:(id)a3 prediction:(id)a4
{
  v29 = a3;
  v27 = a4;
  if ([v27 didAnomalyHappen])
  {
    v5 = [v27 actualStartTimestamp];
    if (v5 > [v27 actualEndTimestamp])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205778();
      }

LABEL_8:
      v7 = 0;
      goto LABEL_32;
    }

    v6 = [v27 predictionTimestamp];
    if (v6 > [v27 actualStartTimestamp])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205744();
      }

      goto LABEL_8;
    }
  }

  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"TSPrediction" inManagedObjectContext:v29];
  v28 = v8;
  [v8 setActualDuration:0];
  [v8 setActualTimeUntilAnomaly:0];
  [v8 setDidAnomalyHappen:0];
  if ([v27 didAnomalyHappen])
  {
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 actualDuration]);
    [v8 setActualDuration:v9];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 actualTimeUntilAnomaly]);
    [v8 setActualTimeUntilAnomaly:v10];

    [v8 setDidAnomalyHappen:1];
  }

  [v27 confidenceAnomaly];
  [v8 setConfidenceAnomaly:?];
  [v27 confidenceDuration];
  [v8 setConfidenceDuration:?];
  [v27 confidenceTimeUntilAnomaly];
  [v8 setConfidenceTimeUntilAnomaly:?];
  [v8 setPredictedDuration:{objc_msgSend(v27, "predictedDuration")}];
  [v8 setPredictedTimeUntilAnomaly:{objc_msgSend(v27, "predictedTimeUntilAnomaly")}];
  v11 = [v27 predictionTime];
  [v8 setTime:v11];

  [v8 setType:{objc_msgSend(v27, "predictedAnomalyType")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [v27 predictionSources];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v31 = 0;
        v18 = [v29 existingObjectWithID:v16 error:&v31];
        v19 = v31;
        if (!v19 && v18 && ([v18 entity], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "name"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"TSAnomaly"), v21, v20, (v22 & 1) != 0))
        {
          [v28 addPredictionSourcesObject:v18];
        }

        else
        {
          v23 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v18;
            v38 = 2112;
            v39 = v19;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Prediction source invalid: %@ (%@)", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v13);
  }

  v30 = 0;
  [v29 save:&v30];
  v24 = v30;
  v25 = *(qword_1002DBE98 + 136);
  if (v24)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v24 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100205690();
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002056D4();
    }

    v7 = v28;
  }

LABEL_32:

  return v7;
}

- (id)deleteTSAnomaliesOverThresholdCount:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  v19 = 0;
  v8 = [v6 countForFetchRequest:v7 error:&v19];
  v9 = v19;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002057AC();
    }

    v11 = 0;
    goto LABEL_18;
  }

  v12 = &v8[-a3];
  if (v8 > a3)
  {
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
    v14 = [[NSSortDescriptor alloc] initWithKey:@"startTime" ascending:1];
    v20 = v14;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v13 setSortDescriptors:v15];

    [v13 setFetchLimit:v12];
    v18 = 0;
    v16 = [v6 executeFetchRequest:v13 error:&v18];
    v10 = v18;
    if (v10)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v10 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100205874();
      }
    }

    else
    {
      if ([(FMCoreData *)self deleteTSAnomalies:v16 andAssociatedEntitiesWithContext:v6])
      {
        v11 = v16;
LABEL_17:

        goto LABEL_18;
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_1002058B8();
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002057F0();
  }

  v10 = 0;
  v11 = &__NSArray0__struct;
LABEL_18:

  return v11;
}

- (BOOL)deleteTSAnomalies:(id)a3 andAssociatedEntitiesWithContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 startTime];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+TimeSeries]:#I Deleting TSAnomaly: %@ (startTime: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v10 events];
        v14 = [v13 copy];

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v24 + 1) + 8 * j);
              [v10 removeEventsObject:v18];
              [v6 deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [v6 deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [v6 save:&v23];
  v19 = v23;
  if (v19)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v19 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002058EC();
    }
  }

  else
  {
    [(FMCoreData *)self deleteOrphanedTSPredictionsWithContext:v6];
    [(FMCoreData *)self deletedOrphanedTSAnomalyTagsWithContext:v6];
  }

  return v19 == 0;
}

- (void)deleteOrphanedTSPredictionsWithContext:(id)a3
{
  v3 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"TSPrediction"];
  v4 = [NSPredicate predicateWithFormat:@"predictionSources.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [v3 executeFetchRequest:v16 error:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v15 = v5;
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100205930();
LABEL_4:
      v5 = v15;
    }
  }

  else if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 predictionSources];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = v14;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Deleting TSPrediction: %@ (predictionSources: %@)", buf, 0x16u);
          }

          [v3 deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [v3 save:&v17];
    v7 = v17;
    if (v7 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100205974();
      goto LABEL_4;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002059B8();
    }

    v7 = 0;
  }
}

- (void)deletedOrphanedTSAnomalyTagsWithContext:(id)a3
{
  v3 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomalyTag"];
  v4 = [NSPredicate predicateWithFormat:@"anomaly == nil"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [v3 executeFetchRequest:v16 error:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v15 = v5;
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1002059F4();
LABEL_4:
      v5 = v15;
    }
  }

  else if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 anomaly];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = v14;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Deleting TSAnomalyTag: %@ (anomaly: %@)", buf, 0x16u);
          }

          [v3 deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [v3 save:&v17];
    v7 = v17;
    if (v7 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100205A38();
      goto LABEL_4;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_100205A7C();
    }

    v7 = 0;
  }
}

- (void)deleteTSAnomaliesWithContext:(id)a3 olderThan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  v9 = [NSPredicate predicateWithFormat:@"startTime < %@", v7];
  [v8 setPredicate:v9];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v9 description];
    objc_claimAutoreleasedReturnValue();
    sub_100205AB8();
  }

  v12 = 0;
  v10 = [v6 executeFetchRequest:v8 error:&v12];
  v11 = v12;
  if (v11)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100205B08();
    }
  }

  else if (![(FMCoreData *)self deleteTSAnomalies:v10 andAssociatedEntitiesWithContext:v6]&& os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100205B4C();
  }
}

- (void)updateCongestionCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5 congestionMetric:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 ratType];
  v14 = [v12 ratType];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v16 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v12 ratType];
      v18 = [v10 ratType];
      sub_10020B418(v17, v18, buf, v16);
    }

    v19 = [v12 ratType];
    [v10 setRatType:v19];
  }

  [v10 setRsrp:{objc_msgSend(v12, "rsrp")}];
  [v10 setRsrq:{objc_msgSend(v12, "rsrq")}];
  [v10 setSinr:{objc_msgSend(v12, "sinr")}];
  [v10 setDlBottleneckScoreInvalid:{objc_msgSend(v12, "dlBottleneckScoreInvalid")}];
  [v10 setDlBottleneckScoreNo:{objc_msgSend(v12, "dlBottleneckScoreNo")}];
  [v10 setDlBottleneckScoreLow:{objc_msgSend(v12, "dlBottleneckScoreLow")}];
  [v10 setDlBottleneckScoreMedium:{objc_msgSend(v12, "dlBottleneckScoreMedium")}];
  [v10 setDlBottleneckScoreHigh:{objc_msgSend(v12, "dlBottleneckScoreHigh")}];
  [v10 setUlBottleneckScoreInvalid:{objc_msgSend(v12, "ulBottleneckScoreInvalid")}];
  [v10 setUlBottleneckScoreNo:{objc_msgSend(v12, "ulBottleneckScoreNo")}];
  [v10 setUlBottleneckScoreLow:{objc_msgSend(v12, "ulBottleneckScoreLow")}];
  [v10 setUlBottleneckScoreMedium:{objc_msgSend(v12, "ulBottleneckScoreMedium")}];
  [v10 setUlBottleneckScoreHigh:{objc_msgSend(v12, "ulBottleneckScoreHigh")}];
  [v10 setDataStallIndicatorAVS:{objc_msgSend(v12, "dataStallIndicatorAVS")}];
  [v10 setDataStallIndicatorUL:{objc_msgSend(v12, "dataStallIndicatorUL")}];
  if ([v12 isQoEScoreValid])
  {
    if ([v10 qoeScore])
    {
      v20 = llround(vcvtd_n_f64_u32([v12 qoeScore], 1uLL) + objc_msgSend(v10, "qoeScore") * 0.5);
    }

    else
    {
      v20 = [v12 qoeScore];
    }

    [v10 setQoeScore:v20];
    [v10 setQoeDuration:{objc_msgSend(v10, "qoeDuration") + objc_msgSend(v12, "qoeDuration")}];
  }

  [v10 setIsSubway:{objc_msgSend(v12, "isSubway")}];
  [v10 setPsPref:{objc_msgSend(v12, "psPref")}];
  [v10 setLastSeen:v11];
  [v10 setSeenCount:{objc_msgSend(v10, "seenCount") + 1}];
  v22 = 0;
  [v9 save:&v22];
  v21 = v22;
  if (v21 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v21 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10020B488();
  }
}

- (id)createCongestionCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 congestionMetric:(id)a10 timestamp:(id)a11
{
  v16 = a3;
  v28 = a4;
  v29 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B4CC();
  }

  v23 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionCell" inManagedObjectContext:v16];
  [v23 setLastSeen:v22];
  [v23 setSeenCount:0];
  [v23 setSubscriptionID:v28];
  [v23 setGci:v29];
  [v23 setMcc:v17];
  [v23 setMnc:v18];
  [v23 setRadioAccessTechnology:v19];
  [v23 setArfcnOrUarfcn:v20];
  v24 = [v21 ratType];
  [v23 setRatType:v24];

  [v23 setRsrp:{objc_msgSend(v21, "rsrp")}];
  [v23 setRsrq:{objc_msgSend(v21, "rsrq")}];
  [v23 setSinr:{objc_msgSend(v21, "sinr")}];
  [v23 setDlBottleneckScoreInvalid:{objc_msgSend(v21, "dlBottleneckScoreInvalid")}];
  [v23 setDlBottleneckScoreNo:{objc_msgSend(v21, "dlBottleneckScoreNo")}];
  [v23 setDlBottleneckScoreLow:{objc_msgSend(v21, "dlBottleneckScoreLow")}];
  [v23 setDlBottleneckScoreMedium:{objc_msgSend(v21, "dlBottleneckScoreMedium")}];
  [v23 setDlBottleneckScoreHigh:{objc_msgSend(v21, "dlBottleneckScoreHigh")}];
  [v23 setUlBottleneckScoreInvalid:{objc_msgSend(v21, "ulBottleneckScoreInvalid")}];
  [v23 setUlBottleneckScoreNo:{objc_msgSend(v21, "ulBottleneckScoreNo")}];
  [v23 setUlBottleneckScoreLow:{objc_msgSend(v21, "ulBottleneckScoreLow")}];
  [v23 setUlBottleneckScoreMedium:{objc_msgSend(v21, "ulBottleneckScoreMedium")}];
  [v23 setUlBottleneckScoreHigh:{objc_msgSend(v21, "ulBottleneckScoreHigh")}];
  [v23 setDataStallIndicatorAVS:{objc_msgSend(v21, "dataStallIndicatorAVS")}];
  [v23 setDataStallIndicatorUL:{objc_msgSend(v21, "dataStallIndicatorUL")}];
  [v23 setQoeScore:{objc_msgSend(v21, "qoeScore")}];
  [v23 setQoeDuration:{objc_msgSend(v21, "qoeDuration")}];
  [v23 setIsSubway:{objc_msgSend(v21, "isSubway")}];
  [v23 setPsPref:{objc_msgSend(v21, "psPref")}];
  v30 = 0;
  [v16 save:&v30];
  v25 = v30;
  if (v25)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v25 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B500();
    }

    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  return v26;
}

- (id)getCongestionCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 atTime:(id)a10
{
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v36 = a10;
  v16 = [FMUtil getTimeOfDayFromDate:v36];
  v17 = [FMUtil getDayOfWeekFromDate:v36];
  v48 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
  v38 = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (gci == %@) AND (mcc == %@) AND (mnc == %@) AND (radioAccessTechnology == %@) AND (arfcnOrUarfcn == %@)", v41, v42, v43, v44, v45, v46];
  [v48 setPredicate:?];
  v18 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:0];
  v57 = v18;
  v19 = [NSArray arrayWithObjects:&v57 count:1];
  [v48 setSortDescriptors:v19];

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v38 description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B544();
  }

  v53 = 0;
  v39 = [v40 executeFetchRequest:v48 error:&v53];
  v37 = v53;
  if (v37)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v37 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B588();
    }

    goto LABEL_29;
  }

  if (![v39 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020B5F8();
    }

    goto LABEL_29;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v39;
  v20 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = *v50;
  do
  {
    v22 = 0;
    do
    {
      if (*v50 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v49 + 1) + 8 * v22);
      v24 = [v23 goodCellOf];
      if (v24)
      {
      }

      else
      {
        v25 = [v23 badCellOf];
        v26 = v25 == 0;

        if (v26)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
          {
            sub_10020B5CC(&v55, v56);
          }

          goto LABEL_20;
        }
      }

      v27 = [v23 goodCellOf];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = [v23 badCellOf];
      }

      v30 = v29;

      v31 = [(FMCoreData *)self getRushHourPredicateForDayOfWeek:v17 andTimeOfDay:v16];
      v32 = [v31 evaluateWithObject:v30];

      if (v32)
      {
        v34 = v23;

        goto LABEL_30;
      }

LABEL_20:
      v22 = v22 + 1;
    }

    while (v20 != v22);
    v33 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    v20 = v33;
  }

  while (v33);
LABEL_25:

LABEL_29:
  v34 = 0;
LABEL_30:

  return v34;
}

- (void)updateCongestionPrevCellSeenWithContext:(id)a3 cell:(id)a4 atTimestamp:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 setLastSeen:v9];
  [v8 setSeenCount:{objc_msgSend(v8, "seenCount") + 1}];
  v11 = 0;
  [v7 save:&v11];
  v10 = v11;
  if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v10 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10020B62C();
  }
}

- (id)fmCongestionCellsToExistingCongestionPrevCellsWithContext:(id)a3 cells:(id)a4
{
  v22 = a3;
  v18 = a4;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v18;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 subscriptionID];
        v10 = [v8 gci];
        v11 = [v8 mcc];
        v12 = [v8 mnc];
        v13 = [v8 rat];
        v14 = [v8 arfcnOrUarfcn];
        v15 = [(FMCoreData *)self getCongestionPrevCellWithContext:v22 subscriptionID:v9 gci:v10 mcc:v11 mnc:v12 rat:v13 arfcnOrUarfcn:v14, v18];

        if (!v15)
        {

          v16 = 0;
          goto LABEL_11;
        }

        [v21 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v21 copy];
LABEL_11:

  return v16;
}

- (id)convertFMCongestionCells:(id)a3 toUpdatedCongestionPrevCellsWithContext:(id)a4
{
  v5 = a3;
  v24 = a4;
  v19 = v5;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v22 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 subscriptionID];
        v10 = [v8 gci];
        v11 = [v8 mcc];
        v12 = [v8 mnc];
        v13 = [v8 rat];
        v14 = [v8 arfcnOrUarfcn];
        v15 = [v8 timestamp];
        v16 = [(FMCoreData *)self getOrCreateAndUpdateCongestionPrevCellWithContext:v24 subscriptionID:v9 gci:v10 mcc:v11 mnc:v12 rat:v13 arfcnOrUarfcn:v14 timestamp:v15, v19];

        if (v16)
        {
          [v21 addObject:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v17 = [v21 copy];

  return v17;
}

- (id)getOrCreateAndUpdateCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 timestamp:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = [(FMCoreData *)self getCongestionPrevCellWithContext:v16 subscriptionID:v17 gci:v18 mcc:v19 mnc:v20 rat:v21 arfcnOrUarfcn:v22];
  if (v24)
  {
    [(FMCoreData *)self updateCongestionPrevCellSeenWithContext:v16 cell:v24 atTimestamp:v23];
    v25 = v24;
  }

  else
  {
    v25 = [(FMCoreData *)self createCongestionPrevCellWithContext:v16 subscriptionID:v17 gci:v18 mcc:v19 mnc:v20 rat:v21 arfcnOrUarfcn:v22 timestamp:v23];
  }

  v26 = v25;

  return v26;
}

- (id)createCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9 timestamp:(id)a10
{
  v15 = a3;
  v26 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B670();
  }

  v22 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionPrevCell" inManagedObjectContext:v15, v26];
  [v22 setLastSeen:v21];
  [v22 setSeenCount:0];
  [v22 setSubscriptionID:v27];
  [v22 setGci:v16];
  [v22 setMcc:v17];
  [v22 setMnc:v18];
  [v22 setRadioAccessTechnology:v19];
  [v22 setArfcnOrUarfcn:v20];
  v28 = 0;
  [v15 save:&v28];
  v23 = v28;
  if (v23)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v23 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B500();
    }

    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  return v24;
}

- (id)getCongestionPrevCellWithContext:(id)a3 subscriptionID:(id)a4 gci:(id)a5 mcc:(id)a6 mnc:(id)a7 rat:(id)a8 arfcnOrUarfcn:(id)a9
{
  v27 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v26 = v14;
  v20 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionPrevCell"];
  v21 = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (gci == %@) AND (mcc == %@) AND (mnc == %@) AND (radioAccessTechnology == %@) AND (arfcnOrUarfcn == %@)", v14, v15, v16, v17, v18, v19];
  [v20 setPredicate:v21];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v21 description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B6A4();
  }

  v28 = 0;
  v22 = [v27 executeFetchRequest:v20 error:&v28];
  v23 = v28;
  if (v23)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v23 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B6E8();
    }

LABEL_6:
    v24 = 0;
    goto LABEL_12;
  }

  if (![v22 count])
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020B760();
    }

    goto LABEL_6;
  }

  if ([v22 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020B72C();
  }

  v24 = [v22 firstObject];
LABEL_12:

  return v24;
}

- (id)filterCongestionAreasWithContext:(id)a3 unfilteredCongestionAreas:(id)a4 withExactPrevCells:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 prevCells];
        v15 = [v14 count];
        LOBYTE(v15) = v15 == [v7 count];

        if (v15)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];

  return v16;
}

- (void)updateCongestionAreaAfterLeavingWithContext:(id)a3 congestionArea:(id)a4 startTime:(id)a5 goodCells:(id)a6 badCells:(id)a7 secondsUntilCongestion:(double)a8 secondsCongestionDuration:(double)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v93 = a6;
  v94 = a7;
  v109 = v17;
  v92 = v18;
  if (v17)
  {
    [v17 setLastSeen:v18];
    [v17 setSeenCount:{objc_msgSend(v17, "seenCount") + 1}];
    v91 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionOccurrence" inManagedObjectContext:v16];
    [v91 setSecondsUntilCongestion:llround(a8)];
    [v91 setSecondsCongestionDuration:llround(a9)];
    [v91 setTimestamp:v18];
    [v17 addCongestionOccurrencesObject:v91];
    v19 = [v17 congestionOccurrences];
    v20 = [v19 count];

    v21 = +[FMConfiguration sharedInstance];
    v22 = [v21 congestionOccurrencesInDatabase];

    v23 = v20 >= v22;
    v24 = v20 - v22;
    if (v24 != 0 && v23)
    {
      v25 = [v17 congestionOccurrences];
      v26 = [v25 copy];
      v27 = [NSIndexSet indexSetWithIndexesInRange:0, v24];
      v28 = [v26 objectsAtIndexes:v27];

      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v143 objects:v153 count:16];
      if (v30)
      {
        v31 = *v144;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v144 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v143 + 1) + 8 * i);
            [v17 removeCongestionOccurrencesObject:v33];
            [v16 deleteObject:v33];
          }

          v30 = [v29 countByEnumeratingWithState:&v143 objects:v153 count:16];
        }

        while (v30);
      }
    }

    if (v94)
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = v94;
      v103 = [obj countByEnumeratingWithState:&v139 objects:v152 count:16];
      if (v103)
      {
        v101 = *v140;
        do
        {
          v34 = 0;
          do
          {
            if (*v140 != v101)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v139 + 1) + 8 * v34);
            v36 = [v35 congestionMetric];
            v105 = v34;
            v37 = v36 == 0;

            if (v37)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_10020B794(&v137, v138);
              }
            }

            else
            {
              v38 = [v109 badCells];
              v136[0] = _NSConcreteStackBlock;
              v136[1] = 3221225472;
              v136[2] = sub_10013BA18;
              v136[3] = &unk_1002B3910;
              v136[4] = self;
              v136[5] = v35;
              v107 = [v38 objectsPassingTest:v136];

              if ([v107 count])
              {
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v39 = v107;
                v40 = [v39 countByEnumeratingWithState:&v132 objects:v151 count:16];
                if (v40)
                {
                  v41 = *v133;
                  do
                  {
                    for (j = 0; j != v40; j = j + 1)
                    {
                      if (*v133 != v41)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v43 = *(*(&v132 + 1) + 8 * j);
                      v44 = [v35 timestamp];
                      v45 = [v35 congestionMetric];
                      [(FMCoreData *)self updateCongestionCellSeenWithContext:v16 cell:v43 atTimestamp:v44 congestionMetric:v45];
                    }

                    v40 = [v39 countByEnumeratingWithState:&v132 objects:v151 count:16];
                  }

                  while (v40);
                }
              }

              else
              {
                v46 = [v109 goodCells];
                v131[0] = _NSConcreteStackBlock;
                v131[1] = 3221225472;
                v131[2] = sub_10013BA28;
                v131[3] = &unk_1002B3910;
                v131[4] = self;
                v131[5] = v35;
                v99 = [v46 objectsPassingTest:v131];

                if ([v99 count])
                {
                  v129 = 0u;
                  v130 = 0u;
                  v127 = 0u;
                  v128 = 0u;
                  v47 = v99;
                  v48 = [v47 countByEnumeratingWithState:&v127 objects:v150 count:16];
                  if (v48)
                  {
                    v49 = *v128;
                    do
                    {
                      for (k = 0; k != v48; k = k + 1)
                      {
                        if (*v128 != v49)
                        {
                          objc_enumerationMutation(v47);
                        }

                        v51 = *(*(&v127 + 1) + 8 * k);
                        v52 = [v35 timestamp];
                        v53 = [v35 congestionMetric];
                        [(FMCoreData *)self updateCongestionCellSeenWithContext:v16 cell:v51 atTimestamp:v52 congestionMetric:v53];

                        [v109 removeGoodCellsObject:v51];
                        [v109 addBadCellsObject:v51];
                      }

                      v48 = [v47 countByEnumeratingWithState:&v127 objects:v150 count:16];
                    }

                    while (v48);
                  }
                }

                else
                {
                  v95 = [v35 subscriptionID];
                  v54 = [v35 gci];
                  v55 = [v35 mcc];
                  v56 = [v35 mnc];
                  v57 = [v35 rat];
                  v58 = [v35 arfcnOrUarfcn];
                  v59 = [v35 congestionMetric];
                  v60 = [v35 timestamp];
                  v61 = v55;
                  v47 = [(FMCoreData *)self createCongestionCellWithContext:v16 subscriptionID:v95 gci:v54 mcc:v55 mnc:v56 rat:v57 arfcnOrUarfcn:v58 congestionMetric:v59 timestamp:v60];

                  if (v47)
                  {
                    [v109 addBadCellsObject:v47];
                  }
                }
              }
            }

            v34 = v105 + 1;
          }

          while ((v105 + 1) != v103);
          v103 = [obj countByEnumeratingWithState:&v139 objects:v152 count:16];
        }

        while (v103);
      }
    }

    if (v93)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obja = v93;
      v104 = [obja countByEnumeratingWithState:&v123 objects:v149 count:16];
      if (v104)
      {
        v102 = *v124;
        do
        {
          v62 = 0;
          do
          {
            if (*v124 != v102)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v123 + 1) + 8 * v62);
            v64 = [v63 congestionMetric];
            v106 = v62;
            v65 = v64 == 0;

            if (v65)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_10020B7C0(&v121, v122);
              }
            }

            else
            {
              v66 = [v109 goodCells];
              v120[0] = _NSConcreteStackBlock;
              v120[1] = 3221225472;
              v120[2] = sub_10013BA38;
              v120[3] = &unk_1002B3910;
              v120[4] = self;
              v120[5] = v63;
              v108 = [v66 objectsPassingTest:v120];

              if ([v108 count])
              {
                v118 = 0u;
                v119 = 0u;
                v117 = 0u;
                v116 = 0u;
                v67 = v108;
                v68 = [v67 countByEnumeratingWithState:&v116 objects:v148 count:16];
                if (v68)
                {
                  v69 = *v117;
                  do
                  {
                    for (m = 0; m != v68; m = m + 1)
                    {
                      if (*v117 != v69)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v71 = *(*(&v116 + 1) + 8 * m);
                      v72 = [v63 timestamp];
                      v73 = [v63 congestionMetric];
                      [(FMCoreData *)self updateCongestionCellSeenWithContext:v16 cell:v71 atTimestamp:v72 congestionMetric:v73];
                    }

                    v68 = [v67 countByEnumeratingWithState:&v116 objects:v148 count:16];
                  }

                  while (v68);
                }
              }

              else
              {
                v74 = [v109 badCells];
                v115[0] = _NSConcreteStackBlock;
                v115[1] = 3221225472;
                v115[2] = sub_10013BA48;
                v115[3] = &unk_1002B3910;
                v115[4] = self;
                v115[5] = v63;
                v100 = [v74 objectsPassingTest:v115];

                if ([v100 count])
                {
                  v113 = 0u;
                  v114 = 0u;
                  v111 = 0u;
                  v112 = 0u;
                  v75 = v100;
                  v76 = [v75 countByEnumeratingWithState:&v111 objects:v147 count:16];
                  if (v76)
                  {
                    v77 = *v112;
                    do
                    {
                      for (n = 0; n != v76; n = n + 1)
                      {
                        if (*v112 != v77)
                        {
                          objc_enumerationMutation(v75);
                        }

                        v79 = *(*(&v111 + 1) + 8 * n);
                        v80 = [v63 timestamp];
                        v81 = [v63 congestionMetric];
                        [(FMCoreData *)self updateCongestionCellSeenWithContext:v16 cell:v79 atTimestamp:v80 congestionMetric:v81];

                        [v109 removeBadCellsObject:v79];
                        [v109 addGoodCellsObject:v79];
                      }

                      v76 = [v75 countByEnumeratingWithState:&v111 objects:v147 count:16];
                    }

                    while (v76);
                  }
                }

                else
                {
                  v96 = [v63 subscriptionID];
                  v82 = [v63 gci];
                  v83 = [v63 mcc];
                  v84 = [v63 mnc];
                  v85 = [v63 rat];
                  v86 = [v63 arfcnOrUarfcn];
                  v87 = [v63 congestionMetric];
                  v88 = [v63 timestamp];
                  v89 = v83;
                  v75 = [(FMCoreData *)self createCongestionCellWithContext:v16 subscriptionID:v96 gci:v82 mcc:v83 mnc:v84 rat:v85 arfcnOrUarfcn:v86 congestionMetric:v87 timestamp:v88];

                  if (v75)
                  {
                    [v109 addGoodCellsObject:v75];
                  }
                }
              }
            }

            v62 = v106 + 1;
          }

          while ((v106 + 1) != v104);
          v104 = [obja countByEnumeratingWithState:&v123 objects:v149 count:16];
        }

        while (v104);
      }
    }

    v110 = 0;
    [v16 save:&v110];
    v90 = v110;
    if (v90 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v90 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B7EC();
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020B830();
  }
}

- (id)handleCongestionAreaWithContext:(id)a3 subscriptionID:(id)a4 prevCells:(id)a5 startTime:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FMCoreData *)self getCongestionAreaWithContext:v10 subscriptionID:v11 prevCells:v12 timeOfDay:[FMUtil dayOfWeek:"getTimeOfDayFromDate:" getTimeOfDayFromDate:v13], [FMUtil getDayOfWeekFromDate:v13]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    goto LABEL_11;
  }

  v17 = [(FMCoreData *)self createCongestionAreaWithContext:v10 subscriptionID:v11 prevCells:v12 startTime:v13];
  v18 = +[FMConfiguration sharedInstance];
  v19 = -[FMCoreData deleteCongestionAreasOverThresholdCount:withContext:](self, "deleteCongestionAreasOverThresholdCount:withContext:", [v18 congestionMaxAreasInDatabase], v10);

  if (v19)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013BCA4;
    v21[3] = &unk_1002B3938;
    v22 = v17;
    if ([v19 indexOfObjectPassingTest:v21] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_10020B864();
      }

      v16 = 0;
      goto LABEL_10;
    }
  }

  v16 = v17;
LABEL_10:

LABEL_11:

  return v16;
}

- (id)createCongestionAreaWithContext:(id)a3 subscriptionID:(id)a4 prevCells:(id)a5 startTime:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Creating new CongestionArea", buf, 2u);
  }

  v14 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionArea" inManagedObjectContext:v9];
  [v14 setLastSeen:v12];
  [v14 setSeenCount:0];
  [v14 setSubscriptionID:v10];
  v15 = +[FMConfiguration sharedInstance];
  v16 = [v15 congestionPrevCellsInDatabase];

  if ([v11 count] <= v16)
  {
    v22 = [v11 copy];
  }

  else
  {
    v17 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v11 count];
      *buf = 134218240;
      v37 = v18;
      v38 = 2048;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Received more prevCells for database than expected: %lu > %lu", buf, 0x16u);
    }

    v19 = [NSOrderedSet alloc];
    v20 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", [v11 count] - v16, v16);
    v21 = [v11 objectsAtIndexes:v20];
    v22 = [v19 initWithArray:v21];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v24)
  {
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [v14 addPrevCellsObject:*(*(&v31 + 1) + 8 * i)];
      }

      v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  [v14 setTimeOfDay:{+[FMUtil getTimeOfDayFromDate:](FMUtil, "getTimeOfDayFromDate:", v12)}];
  [v14 setDayOfWeek:{+[FMUtil getDayOfWeekFromDate:](FMUtil, "getDayOfWeekFromDate:", v12)}];
  v30 = 0;
  [v9 save:&v30];
  v27 = v30;
  if (v27)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v27 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B898();
    }

    v28 = 0;
  }

  else
  {
    v28 = v14;
  }

  return v28;
}

- (void)deleteCongestionAreasOlderThan:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
  v9 = [NSPredicate predicateWithFormat:@"lastSeen < %@", v6];
  [v8 setPredicate:v9];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v9 description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B988();
  }

  v12 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v12];
  v11 = v12;
  if (v11)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v11 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020B9CC();
    }
  }

  else if (![(FMCoreData *)self deleteCongestionAreas:v10 andAssociatedEntitiesWithContext:v7]&& os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020BA10();
  }
}

- (void)deleteCongestionOccurrencesOlderThan:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v22 = a4;
  v19 = v5;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionOccurrence"];
  v21 = v6;
  v7 = [NSPredicate predicateWithFormat:@"timestamp < %@", v5];
  v20 = v7;
  [v6 setPredicate:v7];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [v7 description];
    objc_claimAutoreleasedReturnValue();
    sub_10020BA44();
  }

  v28 = 0;
  v8 = [v22 executeFetchRequest:v6 error:&v28];
  v9 = v28;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BA88();
LABEL_18:
      v8 = v18;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v15 timestamp];
            *buf = 138412546;
            v30 = v15;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Deleting congestion occurrence: %@ (timestamp: %@)", buf, 0x16u);
          }

          [v22 deleteObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    v23 = 0;
    [v22 save:&v23];
    v10 = v23;
    v8 = v18;
    if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BACC();
      goto LABEL_18;
    }
  }
}

- (id)deleteCongestionAreasOverThresholdCount:(unint64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
  v20 = 0;
  v8 = [v6 countForFetchRequest:v7 error:&v20];
  v9 = v20;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BB10();
    }

    v11 = 0;
    goto LABEL_18;
  }

  v12 = &v8[-a3];
  if (v8 > a3)
  {
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
    v14 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:1];
    v21 = v14;
    v15 = [NSArray arrayWithObjects:&v21 count:1];
    [v13 setSortDescriptors:v15];

    [v13 setFetchLimit:v12];
    v19 = 0;
    v16 = [v6 executeFetchRequest:v13 error:&v19];
    v10 = v19;
    if (v10)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        [v10 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10020B9CC();
      }
    }

    else
    {
      if ([(FMCoreData *)self deleteCongestionAreas:v16 andAssociatedEntitiesWithContext:v6])
      {
        v11 = v16;
LABEL_17:

        goto LABEL_18;
      }

      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_10020BA10();
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  v17 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10020BB54(v8, a3, v17);
  }

  v10 = 0;
  v11 = &__NSArray0__struct;
LABEL_18:

  return v11;
}

- (BOOL)deleteCongestionAreas:(id)a3 andAssociatedEntitiesWithContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = *(qword_1002DBE98 + 136);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 lastSeen];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Deleting congestion area: %@ (last seen: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v10 congestionOccurrences];
        v14 = [v13 copy];

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v24 + 1) + 8 * j);
              [v10 removeCongestionOccurrencesObject:v18];
              [v6 deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [v6 deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [v6 save:&v23];
  v19 = v23;
  if (v19)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v19 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BBDC();
    }
  }

  else
  {
    [(FMCoreData *)self deleteOrphanedCongestionCellsWithContext:v6];
    [(FMCoreData *)self deleteOrphanedCongestionPrevCellsWithContext:v6];
  }

  return v19 == 0;
}

- (void)deleteOrphanedCongestionCellsWithContext:(id)a3
{
  v3 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
  v4 = [NSPredicate predicateWithFormat:@"badCellOf.@count == 0 AND goodCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v15 = [v3 executeFetchRequest:v16 error:&v22];
  v5 = v22;
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BC20();
    }
  }

  else if ([v15 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v15;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = [v11 badCellOf];
            v14 = [v11 goodCellOf];
            *buf = 138412802;
            v24 = v11;
            v25 = 2112;
            v26 = v13;
            v27 = 2112;
            v28 = v14;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Deleting congestion cell: %@ (badCellOf: %@, goodCellOf: %@)", buf, 0x20u);
          }

          [v3 deleteObject:{v11, v15}];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = 0;
    [v3 save:&v17];
    v6 = v17;
    if (v6 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v6 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BC64();
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020BCA8();
    }

    v6 = 0;
  }
}

- (void)deleteOrphanedCongestionPrevCellsWithContext:(id)a3
{
  v3 = a3;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionPrevCell"];
  v4 = [NSPredicate predicateWithFormat:@"prevCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [v3 executeFetchRequest:v16 error:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      v15 = v5;
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BCDC();
LABEL_4:
      v5 = v15;
    }
  }

  else if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = *(qword_1002DBE98 + 136);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 prevCellOf];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = v14;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Deleting congestion prev cell: %@ (prevCellOf: %@)", buf, 0x16u);
          }

          [v3 deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [v3 save:&v17];
    v7 = v17;
    if (v7 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      [v7 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020BD20();
      goto LABEL_4;
    }
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_10020BD64();
    }

    v7 = 0;
  }
}

- (BOOL)isFMCongestionCell:(id)a3 equalToCongestionCell:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mcc];
  v8 = [v6 mcc];
  if ([v7 isEqualToNumber:v8])
  {
    v9 = [v5 mnc];
    v10 = [v6 mnc];
    if (![v9 isEqualToNumber:v10])
    {
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v18 = [v5 gci];
    v17 = [v6 gci];
    if (![v18 isEqualToString:?])
    {
      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v11 = [v5 arfcnOrUarfcn];
    if (v11 || ([v6 arfcnOrUarfcn], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v5 arfcnOrUarfcn];
      v13 = [v6 arfcnOrUarfcn];
      v14 = [v12 isEqualToNumber:v13];

      if (v11)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
      v14 = 1;
    }

    v11 = v16;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)getRushHourPredicateForDayOfWeek:(signed __int16)a3 andTimeOfDay:(signed __int16)a4
{
  v4 = a3 - 2;
  if (v4 > 4 || a4 - 420 > 0x77)
  {
    if (v4 > 4 || a4 - 1020 > 0x77)
    {
      v5 = @"NOT ((dayOfWeek >= 2 AND dayOfWeek <= 6) AND ((timeOfDay >= 420 AND timeOfDay < 540) OR (timeOfDay >= 1020 AND timeOfDay < 1140)))";
    }

    else
    {
      v5 = @"(dayOfWeek >= 2 AND dayOfWeek <= 6) AND (timeOfDay >= 1020 AND timeOfDay < 1140)";
    }
  }

  else
  {
    v5 = @"(dayOfWeek >= 2 AND dayOfWeek <= 6) AND (timeOfDay >= 420 AND timeOfDay < 540)";
  }

  v6 = [NSPredicate predicateWithFormat:v5];

  return v6;
}

@end
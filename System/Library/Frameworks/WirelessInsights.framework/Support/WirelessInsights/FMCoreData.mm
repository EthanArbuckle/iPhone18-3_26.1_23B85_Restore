@interface FMCoreData
+ (BOOL)isFMCellMapCongestionMetricCongested:(id)congested;
+ (BOOL)isFMCellMapNodeCongested:(id)congested;
- (BOOL)backgroundContextPerformBlockAndWait:(id)wait;
- (BOOL)deleteCongestionAreas:(id)areas andAssociatedEntitiesWithContext:(id)context;
- (BOOL)deleteOutOfServiceAreas:(id)areas AndAssociatedEntitiesWithContext:(id)context;
- (BOOL)deleteTSAnomalies:(id)anomalies andAssociatedEntitiesWithContext:(id)context;
- (BOOL)generateChildEntitiesForEventsWithContext:(id)context;
- (BOOL)isFMCongestionCell:(id)cell equalToCongestionCell:(id)congestionCell;
- (BOOL)resetAndPopulateCellMapDatabaseWithJSON:(id)n;
- (BOOL)shouldConsiderAnomaly:(id)anomaly atTime:(id)time;
- (BOOL)updateCellMapEdge:(id)edge withContext:(id)context atTime:(id)time;
- (BOOL)updateCellMapNode:(id)node withMetric:(id)metric updateConnDuration:(BOOL)duration andContext:(id)context atTime:(id)time;
- (BOOL)updateStoredConfigurationFrom:(id)from to:(id)to;
- (FMCoreData)init;
- (FMCoreData)initWithStoreURL:(id)l WithModelURL:(id)rL;
- (double)compareFMTSEventTimestamp:(id)timestamp withTSEventTimeUntilAnomaly:(int)anomaly usingBaseTimestamp:(unint64_t)baseTimestamp withTimeDistanceMaxTime:(int)time withPredictionAdvanceTime:(int)advanceTime withContext:(id)context;
- (id)cellMapPredictionForGCI:(id)i;
- (id)congestionAreaID:(id)d congestionAreaSeenCount:(int)count toFMCongestionPredictionWithContext:(id)context;
- (id)congestionCell:(id)cell toFMCongestionCellWithContext:(id)context;
- (id)congestionCells:(id)cells toFMCongestionCellsWithContext:(id)context;
- (id)convertFMCongestionCells:(id)cells toUpdatedCongestionPrevCellsWithContext:(id)context;
- (id)createCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode;
- (id)createCellMapNodeWithContext:(id)context andCellMapCongestionMetric:(id)metric;
- (id)createChildTSEventOfType:(signed __int16)type withDetails:(id)details withContext:(id)context;
- (id)createCongestionAreaWithContext:(id)context subscriptionID:(id)d prevCells:(id)cells startTime:(id)time;
- (id)createCongestionCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn congestionMetric:(id)self0 timestamp:(id)self1;
- (id)createCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn timestamp:(id)self0;
- (id)createLocationOfInterestAt:(id)at WithContext:(id)context;
- (id)createOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells entryLocation:(id)location exitLocation:(id)self0 startTime:(id)self1;
- (id)createServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4 timestamp:(id)self5;
- (id)createTSAnomalyWithContext:(id)context anomaly:(id)anomaly homePLMN:(id)n;
- (id)createTSEventFrom:(id)from withContext:(id)context;
- (id)createTSPredictionWithContext:(id)context prediction:(id)prediction;
- (id)deleteCongestionAreasOverThresholdCount:(unint64_t)count withContext:(id)context;
- (id)deleteOutOfServiceAreasOverThresholdCount:(unint64_t)count WithContext:(id)context;
- (id)deleteTSAnomaliesOverThresholdCount:(unint64_t)count withContext:(id)context;
- (id)fetchCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode;
- (id)fetchCellMapEdgesOfCellMapNode:(id)node maxCount:(unint64_t)count withContext:(id)context;
- (id)fetchCellMapNodeWithGCI:(id)i andContext:(id)context;
- (id)filterCongestionAreasWithContext:(id)context unfilteredCongestionAreas:(id)areas withExactPrevCells:(id)cells;
- (id)filterOutOfServiceAreasWithContext:(id)context unfilteredOutOfServiceAreas:(id)areas WithExactPrevCells:(id)cells;
- (id)fmCellMapNodeFromCellMapNode:(id)node edgeSeenCount:(signed __int16)count;
- (id)fmCongestionCellsToExistingCongestionPrevCellsWithContext:(id)context cells:(id)cells;
- (id)fmServingCellsToExistingServingCellsWithContext:(id)context cells:(id)cells;
- (id)fmServingCellsToServingCellsWithContext:(id)context cells:(id)cells;
- (id)getAnomalyPredictionsForHomePLMN:(id)n andEvents:(id)events atCurrentTimestamp:(unint64_t)timestamp atCurrentTime:(id)time timeSinceLastFetch:(unint64_t)fetch;
- (id)getCongestionCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn atTime:(id)self0;
- (id)getCongestionPredictionsForSubscriptionID:(id)d andPrevCells:(id)cells atTime:(id)time;
- (id)getCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn;
- (id)getFMTSPredictionsFromRelevantTSAnomalies:(id)anomalies atCurrentTimestamp:(unint64_t)timestamp withContext:(id)context;
- (id)getLatestStoredConfiguration;
- (id)getLocationOfInterestAt:(id)at WithContext:(id)context;
- (id)getOrCreateAndUpdateCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn timestamp:(id)self0;
- (id)getOrCreateCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode;
- (id)getOrCreateCellMapNodeWithContext:(id)context andCellMapCongestionMetric:(id)metric;
- (id)getOrCreateLocationOfInterestAt:(id)at WithContext:(id)context;
- (id)getOrCreateServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4 timestamp:(id)self5;
- (id)getOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells timeOfDay:(signed __int16)day;
- (id)getOutOfServiceAreasWithoutNextVisitWithContext:(id)context After:(id)after;
- (id)getPreviouslyStoredMatchingFMCongestionCell:(id)cell;
- (id)getRushHourPredicateForDayOfWeek:(signed __int16)week andTimeOfDay:(signed __int16)day;
- (id)getServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4;
- (id)handleCongestionAreaWithContext:(id)context subscriptionID:(id)d prevCells:(id)cells startTime:(id)time;
- (id)handleOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells startTime:(id)time entryLocation:(id)self0 exitLocation:(id)self1;
- (id)sortObjects:(id)objects byKey:(id)key;
- (id)tagsForEvents:(id)events withContext:(id)context;
- (id)updateMapWithCellMapCongestionMetric:(id)metric andPreviousNodeObjectID:(id)d;
- (int64_t)getDifferenceBetweenMinutesSinceMidnight:(int64_t)midnight b:(int64_t)b;
- (int64_t)getMinutesSinceMidnightFrom:(int64_t)from addingOffset:(int64_t)offset;
- (int64_t)tagContentForCellChangedEvent:(id)event;
- (signed)NSDateToTimeOfDay:(id)day;
- (unint64_t)deleteOutOfServiceAreasOlderThan:(id)than WithContext:(id)context;
- (void)clearDatabase;
- (void)dealloc;
- (void)deleteCellMapEntitiesWithFetchRequest:(id)request andContext:(id)context;
- (void)deleteCellMapNodesAndEdgesOlderThan:(id)than withContext:(id)context;
- (void)deleteCongestionAreasOlderThan:(id)than withContext:(id)context;
- (void)deleteCongestionOccurrencesOlderThan:(id)than withContext:(id)context;
- (void)deleteOldestCellMapNodesAndEdgesOverThreshold:(unint64_t)threshold withContext:(id)context;
- (void)deleteOrphanedCongestionCellsWithContext:(id)context;
- (void)deleteOrphanedCongestionPrevCellsWithContext:(id)context;
- (void)deleteOrphanedTSPredictionsWithContext:(id)context;
- (void)deleteOutOfServiceDurationsOlderThan:(id)than WithContext:(id)context;
- (void)deleteTSAnomaliesWithContext:(id)context olderThan:(id)than;
- (void)deletedOrphanedLocationsOfInterestWithContext:(id)context;
- (void)deletedOrphanedServingCellsWithContext:(id)context;
- (void)deletedOrphanedTSAnomalyTagsWithContext:(id)context;
- (void)finalizedCongestionArea:(id)area withSubscriptionID:(id)d;
- (void)generateTagsForAnomaly:(id)anomaly withContext:(id)context;
- (void)generateTagsForUntaggedAnomaliesWithContext:(id)context;
- (void)leftOutOfServiceArea:(double)area startTime:(id)time prevVisit:(id)visit curVisit:(id)curVisit subscriptionID:(id)d prevCells:(id)cells nextCell:(id)cell entryLocation:(id)self0 exitLocation:(id)self1;
- (void)performDatabaseMaintenance;
- (void)sendOnDeviceDBTelemetryEventWithContext:(id)context andNumberOfDeletedOOSAreasStale:(unint64_t)stale;
- (void)storeAnomaly:(id)anomaly forHomePLMN:(id)n;
- (void)storePrediction:(id)prediction;
- (void)updateCongestionAreaAfterLeavingWithContext:(id)context congestionArea:(id)area startTime:(id)time goodCells:(id)cells badCells:(id)badCells secondsUntilCongestion:(double)congestion secondsCongestionDuration:(double)duration;
- (void)updateCongestionCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp congestionMetric:(id)metric;
- (void)updateCongestionPrevCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp;
- (void)updateOutOfServiceAreaAfterLeavingWithContext:(id)context outOfServiceArea:(id)area startTime:(id)time nextCell:(id)cell duration:(double)duration entryLocation:(id)location exitLocation:(id)exitLocation;
- (void)updateOutOfServiceAreasWithNextVisit:(id)visit;
- (void)updateServingCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp;
- (void)waitForDeviceUnlockAndLoadDataStore;
@end

@implementation FMCoreData

- (void)leftOutOfServiceArea:(double)area startTime:(id)time prevVisit:(id)visit curVisit:(id)curVisit subscriptionID:(id)d prevCells:(id)cells nextCell:(id)cell entryLocation:(id)self0 exitLocation:(id)self1
{
  timeCopy = time;
  visitCopy = visit;
  curVisitCopy = curVisit;
  dCopy = d;
  cellsCopy = cells;
  cellCopy = cell;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10003B964;
  v32[3] = &unk_1002ABDB0;
  v32[4] = self;
  v33 = cellsCopy;
  v34 = visitCopy;
  v35 = curVisitCopy;
  v36 = dCopy;
  v37 = timeCopy;
  locationCopy = location;
  exitLocationCopy = exitLocation;
  v40 = cellCopy;
  areaCopy = area;
  v24 = cellCopy;
  v25 = exitLocationCopy;
  v26 = locationCopy;
  v27 = timeCopy;
  v28 = dCopy;
  v29 = curVisitCopy;
  v30 = visitCopy;
  v31 = cellsCopy;
  [(FMCoreData *)self backgroundContextPerformBlockAndWait:v32];
}

- (void)updateOutOfServiceAreasWithNextVisit:(id)visit
{
  visitCopy = visit;
  v5 = visitCopy;
  if (visitCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003BE84;
    v6[3] = &unk_1002ABDD8;
    v6[4] = self;
    v7 = visitCopy;
    [(FMCoreData *)self backgroundContextPerformBlockAndWait:v6];
  }
}

- (void)finalizedCongestionArea:(id)area withSubscriptionID:(id)d
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004C0D0;
  v7[3] = &unk_1002ABF20;
  selfCopy = self;
  areaCopy = area;
  dCopy = d;
  v5 = dCopy;
  v6 = areaCopy;
  [(FMCoreData *)selfCopy backgroundContextPerformBlockAndWait:v7];
}

- (id)getCongestionPredictionsForSubscriptionID:(id)d andPrevCells:(id)cells atTime:(id)time
{
  dCopy = d;
  cellsCopy = cells;
  timeCopy = time;
  v11 = +[FMConfiguration sharedInstance];
  congestionPrevCellsInDatabase = [v11 congestionPrevCellsInDatabase];

  if ([cellsCopy count] <= congestionPrevCellsInDatabase)
  {
    v13 = 0;
  }

  else
  {
    v13 = ([cellsCopy count] - congestionPrevCellsInDatabase);
  }

  if ([cellsCopy count] < congestionPrevCellsInDatabase)
  {
    congestionPrevCellsInDatabase = [cellsCopy count];
  }

  v14 = [cellsCopy subarrayWithRange:{v13, congestionPrevCellsInDatabase}];
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
  v15 = timeCopy;
  v22 = v15;
  selfCopy = self;
  v16 = v14;
  v24 = v16;
  v26 = &v27;
  v17 = dCopy;
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

- (id)congestionAreaID:(id)d congestionAreaSeenCount:(int)count toFMCongestionPredictionWithContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v34 = dCopy;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionOccurrence"];
  dCopy = [NSPredicate predicateWithFormat:@"congestionOccurrenceOf == %@", dCopy];
  [v9 setPredicate:dCopy];

  [v9 setReturnsObjectsAsFaults:0];
  v43 = 0;
  v35 = [contextCopy executeFetchRequest:v9 error:&v43];
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
  selfCopy = self;
  countCopy = count;
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
  v33 = [contextCopy executeFetchRequest:v22 error:&v38];
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
    v26 = [contextCopy executeFetchRequest:v30 error:&v37];
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
      v29 = [(FMCoreData *)selfCopy congestionCells:v33 toFMCongestionCellsWithContext:contextCopy];
      v28 = [(FMCoreData *)selfCopy congestionCells:v26 toFMCongestionCellsWithContext:contextCopy];
      v12 = [(FMCongestionPrediction *)v27 initWithSeenCount:countCopy predictedBadCells:v29 predictedGoodCells:v28 predictedTimeUntilCongestion:v18 / v14 predictedTimeInCongestion:v17 / v14];
    }
  }

LABEL_5:

  return v12;
}

- (id)congestionCells:(id)cells toFMCongestionCellsWithContext:(id)context
{
  cellsCopy = cells;
  contextCopy = context;
  v8 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = cellsCopy;
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

        v13 = [(FMCoreData *)self congestionCell:*(*(&v16 + 1) + 8 * i) toFMCongestionCellWithContext:contextCopy, v16];
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

- (id)congestionCell:(id)cell toFMCongestionCellWithContext:(id)context
{
  cellCopy = cell;
  v5 = [FMCongestionCell alloc];
  lastSeen = [cellCopy lastSeen];
  subscriptionID = [cellCopy subscriptionID];
  v8 = [cellCopy mcc];
  v9 = [cellCopy mnc];
  v10 = [cellCopy gci];
  radioAccessTechnology = [cellCopy radioAccessTechnology];
  arfcnOrUarfcn = [cellCopy arfcnOrUarfcn];
  v13 = [(FMCongestionCell *)v5 init:lastSeen subscriptionID:subscriptionID mcc:v8 mnc:v9 gci:v10 rat:radioAccessTechnology arfcnOrUarfcn:arfcnOrUarfcn];

  if (v13)
  {
    v40 = [FMCongestionMetric alloc];
    lastSeen2 = [cellCopy lastSeen];
    [lastSeen2 timeIntervalSince1970];
    v15 = v14;
    v43 = [cellCopy gci];
    arfcnOrUarfcn2 = [cellCopy arfcnOrUarfcn];
    intValue = [arfcnOrUarfcn2 intValue];
    ratType = [cellCopy ratType];
    rsrp = [cellCopy rsrp];
    rsrq = [cellCopy rsrq];
    sinr = [cellCopy sinr];
    dlBottleneckScoreInvalid = [cellCopy dlBottleneckScoreInvalid];
    dlBottleneckScoreNo = [cellCopy dlBottleneckScoreNo];
    dlBottleneckScoreLow = [cellCopy dlBottleneckScoreLow];
    dlBottleneckScoreMedium = [cellCopy dlBottleneckScoreMedium];
    dlBottleneckScoreHigh = [cellCopy dlBottleneckScoreHigh];
    ulBottleneckScoreInvalid = [cellCopy ulBottleneckScoreInvalid];
    ulBottleneckScoreNo = [cellCopy ulBottleneckScoreNo];
    ulBottleneckScoreLow = [cellCopy ulBottleneckScoreLow];
    ulBottleneckScoreMedium = [cellCopy ulBottleneckScoreMedium];
    ulBottleneckScoreHigh = [cellCopy ulBottleneckScoreHigh];
    dataStallIndicatorAVS = [cellCopy dataStallIndicatorAVS];
    dataStallIndicatorUL = [cellCopy dataStallIndicatorUL];
    isSubway = [cellCopy isSubway];
    qoeScore = [cellCopy qoeScore];
    qoeDuration = [cellCopy qoeDuration];
    psPref = [cellCopy psPref];
    subscriptionID2 = [cellCopy subscriptionID];
    v22 = -[FMCongestionMetric init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:](v40, "init:gci:arfnc:ratType:rsrp:rsrq:sinr:dlBottleneckScoreInvalid:dlBottleneckScoreNo:dlBottleneckScoreLow:dlBottleneckScoreMedium:dlBottleneckScoreHigh:ulBottleneckScoreInvalid:ulBottleneckScoreNo:ulBottleneckScoreLow:ulBottleneckScoreMedium:ulBottleneckScoreHigh:dataStallIndicatorAVS:dataStallIndicatorUL:isSubway:qoeScore:qoeDuration:psPref:subsId:", llround(v15), v43, intValue, ratType, rsrp, rsrq, __PAIR64__(dlBottleneckScoreInvalid, sinr), __PAIR64__(dlBottleneckScoreLow, dlBottleneckScoreNo), __PAIR64__(dlBottleneckScoreHigh, dlBottleneckScoreMedium), __PAIR64__(ulBottleneckScoreNo, ulBottleneckScoreInvalid), __PAIR64__(ulBottleneckScoreMedium, ulBottleneckScoreLow), __PAIR64__(dataStallIndicatorAVS, ulBottleneckScoreHigh), __PAIR64__(isSubway, dataStallIndicatorUL), __PAIR64__(qoeDuration, qoeScore), __PAIR64__([subscriptionID2 intValue], psPref));

    [v13 setCongestionMetric:v22];
    v23 = v13;
  }

  return v13;
}

- (id)getPreviouslyStoredMatchingFMCongestionCell:(id)cell
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
  selfCopy = self;
  cellCopy = cell;
  v8 = cellCopy;
  v9 = &v10;
  if ([(FMCoreData *)selfCopy backgroundContextPerformBlockAndWait:v6])
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

- (void)storeAnomaly:(id)anomaly forHomePLMN:(id)n
{
  anomalyCopy = anomaly;
  nCopy = n;
  events = [anomalyCopy events];
  v9 = [events count];
  v10 = +[FMConfiguration sharedInstance];
  fMTSAnomalyStoringMinNumObservedEvents = [v10 FMTSAnomalyStoringMinNumObservedEvents];

  if (v9 >= fMTSAnomalyStoringMinNumObservedEvents)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006B38C;
    v12[3] = &unk_1002ABF20;
    v12[4] = self;
    v13 = anomalyCopy;
    v14 = nCopy;
    [(FMCoreData *)self backgroundContextPerformBlockAndWait:v12];
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FFAC0();
  }
}

- (id)sortObjects:(id)objects byKey:(id)key
{
  objectsCopy = objects;
  keyCopy = key;
  v7 = objc_alloc_init(NSMutableDictionary);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = objectsCopy;
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
        v13 = keyCopy[2](keyCopy, v12);
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

- (id)getFMTSPredictionsFromRelevantTSAnomalies:(id)anomalies atCurrentTimestamp:(unint64_t)timestamp withContext:(id)context
{
  anomaliesCopy = anomalies;
  contextCopy = context;
  v25 = objc_alloc_init(NSMutableArray);
  v24 = +[NSDate now];
  v9 = [(FMCoreData *)self sortObjects:anomaliesCopy byKey:&stru_1002ACF60];
  v10 = +[FMConfiguration sharedInstance];
  fMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds = [v10 FMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds];
  fMTSAnomalyPredictionDurationConfidenceRangeSeconds = [v10 FMTSAnomalyPredictionDurationConfidenceRangeSeconds];
  [v10 FMTSAnomalyBaseConfidence];
  v14 = v13;
  fMTSAnomalyConfidenceMinPredictionCount = [v10 FMTSAnomalyConfidenceMinPredictionCount];
  fMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect = [v10 FMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect];
  fMTSMaxDurationPredictionErrorConsideredCorrect = [v10 FMTSMaxDurationPredictionErrorConsideredCorrect];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10006B8AC;
  v27[3] = &unk_1002ACF88;
  v18 = anomaliesCopy;
  v28 = v18;
  v32 = fMTSMaxTimeUntilAnomalyPredictionErrorConsideredCorrect;
  v33 = fMTSMaxDurationPredictionErrorConsideredCorrect;
  v19 = contextCopy;
  v29 = v19;
  v34 = fMTSAnomalyPredictionTimeToAnomalyConfidenceRangeSeconds;
  v35 = fMTSAnomalyPredictionDurationConfidenceRangeSeconds;
  v36 = v14;
  v37 = fMTSAnomalyConfidenceMinPredictionCount;
  v20 = v24;
  v30 = v20;
  timestampCopy = timestamp;
  v21 = v25;
  v31 = v21;
  [v9 enumerateKeysAndObjectsUsingBlock:v27];
  v22 = [v21 copy];

  return v22;
}

- (id)getAnomalyPredictionsForHomePLMN:(id)n andEvents:(id)events atCurrentTimestamp:(unint64_t)timestamp atCurrentTime:(id)time timeSinceLastFetch:(unint64_t)fetch
{
  nCopy = n;
  eventsCopy = events;
  timeCopy = time;
  v13 = [eventsCopy count];
  v14 = +[FMConfiguration sharedInstance];
  fMTSAnomalyPredictionMinNumObservedEvents = [v14 FMTSAnomalyPredictionMinNumObservedEvents];

  if (v13 >= fMTSAnomalyPredictionMinNumObservedEvents)
  {
    v17 = [(FMCoreData *)self sortObjects:eventsCopy byKey:&stru_1002ACFC8];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_10006C6E0;
    v70[3] = &unk_1002ACFF0;
    v18 = eventsCopy;
    v71 = v18;
    v40 = v17;
    [v17 enumerateKeysAndObjectsUsingBlock:v70];
    v19 = +[FMConfiguration sharedInstance];
    [v19 FMTSAnomalyUsedForPredictionDistanceThreshold];
    v21 = v20;

    v22 = +[FMConfiguration sharedInstance];
    fMTSAnomalyPredictionAdvanceTimeSeconds = [v22 FMTSAnomalyPredictionAdvanceTimeSeconds];

    v24 = +[FMConfiguration sharedInstance];
    fMTSAnomalyUseLastEventForPredictionAdvanceTime = [v24 FMTSAnomalyUseLastEventForPredictionAdvanceTime];

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
    v47 = nCopy;
    v49 = &v60;
    v50 = &v56;
    v54 = fMTSAnomalyPredictionAdvanceTimeSeconds;
    v55 = fMTSAnomalyUseLastEventForPredictionAdvanceTime;
    v53 = v21;
    v48 = timeCopy;
    v51 = &v64;
    timestampCopy = timestamp;
    if ([(FMCoreData *)self backgroundContextPerformBlockAndWait:v45])
    {
      v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v72[0] = @"fetch_duration";
      0xF4240 = [NSNumber numberWithUnsignedLongLong:(v27 - v26) / 0xF4240];
      v73[0] = 0xF4240;
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
      v35 = [NSNumber numberWithUnsignedLongLong:fetch];
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

- (BOOL)shouldConsiderAnomaly:(id)anomaly atTime:(id)time
{
  anomalyCopy = anomaly;
  timeCopy = time;
  if ([anomalyCopy type] == 2)
  {
    startTime = [anomalyCopy startTime];
    v9 = [FMUtil getTimeOfDayFromDate:startTime];

    startTime2 = [anomalyCopy startTime];
    v11 = [FMUtil getDayOfWeekFromDate:startTime2];

    v13 = v11 == 1 || v11 == 7;
    v14 = [FMUtil getTimeOfDayFromDate:timeCopy];
    v15 = [FMUtil getDayOfWeekFromDate:timeCopy];
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

- (double)compareFMTSEventTimestamp:(id)timestamp withTSEventTimeUntilAnomaly:(int)anomaly usingBaseTimestamp:(unint64_t)baseTimestamp withTimeDistanceMaxTime:(int)time withPredictionAdvanceTime:(int)advanceTime withContext:(id)context
{
  timestamp = [timestamp timestamp];
  if (baseTimestamp >= timestamp)
  {
    v14 = advanceTime - anomaly + (baseTimestamp - timestamp) / 0x3B9ACA00;
    if (v14 < 0)
    {
      v14 = -v14;
    }

    return fmin(v14 / time, 1.0);
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

- (void)storePrediction:(id)prediction
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E77C;
  v4[3] = &unk_1002ABDD8;
  selfCopy = self;
  predictionCopy = prediction;
  v3 = predictionCopy;
  [(FMCoreData *)selfCopy backgroundContextPerformBlockAndWait:v4];
}

- (void)generateTagsForUntaggedAnomaliesWithContext:(id)context
{
  contextCopy = context;
  v5 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  v6 = [NSPredicate predicateWithFormat:@"taggedBy.@count == 0 and events.@count > 0"];
  [v5 setPredicate:v6];

  v20 = 0;
  v15 = [contextCopy executeFetchRequest:v5 error:&v20];
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
          [(FMCoreData *)self generateTagsForAnomaly:v13 withContext:contextCopy];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)generateTagsForAnomaly:(id)anomaly withContext:(id)context
{
  anomalyCopy = anomaly;
  contextCopy = context;
  v24 = [NSFetchRequest fetchRequestWithEntityName:@"TSEvent"];
  v5 = [NSPredicate predicateWithFormat:@"eventOf == %@ and type == %d", anomalyCopy, 1];
  [v24 setPredicate:v5];

  [v24 setReturnsObjectsAsFaults:0];
  v33 = 0;
  v23 = [contextCopy executeFetchRequest:v24 error:&v33];
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
      sub_100200008(anomalyCopy, v37);
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
            fromCellGCI = [v14 fromCellGCI];
            toCellGCI = [v14 toCellGCI];
            v18 = [(FMTSEventCellChanged *)v15 initWithTimestamp:0 fromCellGCI:fromCellGCI toCellGCI:toCellGCI];

            v19 = [(FMCoreData *)self tagContentForCellChangedEvent:v18];
            v20 = [NSEntityDescription insertNewObjectForEntityForName:@"TSAnomalyTag" inManagedObjectContext:contextCopy];
            [v20 setType:1];
            [v20 setContent:v19];
            [v20 setAnomaly:anomalyCopy];
            [contextCopy refreshObject:v14 mergeChanges:0];
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
    [contextCopy save:&v28];
    v8 = v28;
    if (v8 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v8 localizedDescription];
      sub_10020005C(anomalyCopy, localizedDescription, buf);
    }
  }
}

- (int64_t)tagContentForCellChangedEvent:(id)event
{
  toCellGCI = [event toCellGCI];
  v4 = [FMUtil int64SHA256HashFor:toCellGCI];

  return v4;
}

- (id)tagsForEvents:(id)events withContext:(id)context
{
  eventsCopy = events;
  contextCopy = context;
  v6 = [eventsCopy objectForKey:&off_1002BEF88];
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
    v16 = [contextCopy executeFetchRequest:v14 error:&v23];
    v17 = v23;
    if (v17)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v17 localizedDescription];
        sub_100200124(v9, localizedDescription, v28);
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

- (BOOL)generateChildEntitiesForEventsWithContext:(id)context
{
  contextCopy = context;
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
    v7 = [contextCopy executeFetchRequest:v29 error:&v40];
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
            details = [v14 details];
            if (details && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v16 = -[FMCoreData createChildTSEventOfType:withDetails:withContext:](self, "createChildTSEventOfType:withDetails:withContext:", [v14 type], details, contextCopy);
              if (v16)
              {
                [v16 setTimeUntilAnomaly:{objc_msgSend(v14, "timeUntilAnomaly")}];
                [v16 setType:{objc_msgSend(v14, "type")}];
                eventOf = [v14 eventOf];
                [v16 setEventOf:eventOf];
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

            [contextCopy refreshObject:v14 mergeChanges:0];
            [contextCopy deleteObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }

      v31 = 0;
      v18 = [contextCopy save:&v31];
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

- (FMCoreData)initWithStoreURL:(id)l WithModelURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v33.receiver = self;
  v33.super_class = FMCoreData;
  v8 = [(FMCoreData *)&v33 init];
  if (v8)
  {
    if (lCopy)
    {
      if (rLCopy)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_1002006C4();
        }

        v9 = [[NSManagedObjectModel alloc] initWithContentsOfURL:rLCopy];
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

      container = [(FMCoreData *)v8 container];
      v13 = container == 0;

      if (!v13)
      {
        v14 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:lCopy];
        [v14 setOption:NSFileProtectionCompleteUnlessOpen forKey:NSPersistentStoreFileProtectionKey];
        if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
        {
          sub_100200734();
        }

        container2 = [(FMCoreData *)v8 container];
        v34 = v14;
        v16 = [NSArray arrayWithObjects:&v34 count:1];
        [container2 setPersistentStoreDescriptions:v16];

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
        getLatestStoredConfiguration = [(FMCoreData *)v8 getLatestStoredConfiguration];
        v18 = +[FMConfiguration sharedInstance];
        values = [getLatestStoredConfiguration values];
        v20 = [v18 isCompatibleToConfig:values];

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
        configAsDict = [v22 configAsDict];
        v24 = [(FMCoreData *)v8 updateStoredConfigurationFrom:getLatestStoredConfiguration to:configAsDict];

        if (v24)
        {
          [(FMCoreData *)v8 setDatabaseMaintenanceTimer:dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [(FMCoreData *)v8 queue])];
          if ([(FMCoreData *)v8 databaseMaintenanceTimer])
          {
            databaseMaintenanceTimer = [(FMCoreData *)v8 databaseMaintenanceTimer];
            v26 = +[FMConfiguration sharedInstance];
            dispatch_source_set_timer(databaseMaintenanceTimer, 0, 1000000000 * [v26 OOSTimeBetweenDatabaseMaintenance], 0xDF8475800uLL);

            objc_initWeak(buf, v8);
            databaseMaintenanceTimer2 = [(FMCoreData *)v8 databaseMaintenanceTimer];
            handler[0] = _NSConcreteStackBlock;
            handler[1] = 3221225472;
            handler[2] = sub_100075E1C;
            handler[3] = &unk_1002AC020;
            objc_copyWeak(&v31, buf);
            dispatch_source_set_event_handler(databaseMaintenanceTimer2, handler);
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

  container = [(FMCoreData *)self container];
  persistentStoreCoordinator = [container persistentStoreCoordinator];

  persistentStores = [persistentStoreCoordinator persistentStores];
  v6 = [persistentStores count] > 1;

  if (v6)
  {
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      persistentStores2 = [persistentStoreCoordinator persistentStores];
      *buf = 134217984;
      v18 = [persistentStores2 count];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Unexpected number of stores in the coordinator: %lu", buf, 0xCu);
    }
  }

  persistentStores3 = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores3 firstObject];

  v10 = [firstObject URL];
  type = [firstObject type];

  if (v10 && type)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000764D0;
    v13[3] = &unk_1002AD538;
    v14 = v10;
    v15 = type;
    v16 = persistentStoreCoordinator;
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

- (BOOL)updateStoredConfigurationFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076BFC;
  v12[3] = &unk_1002ABFB0;
  v8 = fromCopy;
  v13 = v8;
  v9 = toCopy;
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

- (void)updateServingCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp
{
  contextCopy = context;
  cellCopy = cell;
  timestampCopy = timestamp;
  [cellCopy setLastSeen:timestampCopy];
  [cellCopy setSeenCount:{objc_msgSend(cellCopy, "seenCount") + 1}];
  v11 = 0;
  [contextCopy save:&v11];
  v10 = v11;
  if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v10 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100200D50();
  }
}

- (id)fmServingCellsToExistingServingCellsWithContext:(id)context cells:(id)cells
{
  contextCopy = context;
  cellsCopy = cells;
  v24 = objc_alloc_init(NSMutableOrderedSet);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = cellsCopy;
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
        subscriptionID = [v7 subscriptionID];
        radioAccessTechnology = [v7 radioAccessTechnology];
        cellID = [v7 cellID];
        v8 = [v7 mnc];
        v9 = [v7 mcc];
        bandInfo = [v7 bandInfo];
        tacOrLac = [v7 tacOrLac];
        arfcnOrUarfcn = [v7 arfcnOrUarfcn];
        bandwidth = [v7 bandwidth];
        v14 = [v7 pci];
        deploymentType = [v7 deploymentType];
        cellsCopy = [(FMCoreData *)self getServingCellWithContext:contextCopy subscriptionID:subscriptionID radioAccessTechnology:radioAccessTechnology cellID:cellID mnc:v8 mcc:v9 bandInfo:bandInfo tacOrLac:tacOrLac arfcnOrUarfcn:arfcnOrUarfcn bandwidth:bandwidth pci:v14 deploymentType:deploymentType, cellsCopy];

        if (!cellsCopy)
        {

          v17 = 0;
          goto LABEL_11;
        }

        [v24 addObject:cellsCopy];
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

- (id)fmServingCellsToServingCellsWithContext:(id)context cells:(id)cells
{
  contextCopy = context;
  cellsCopy = cells;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = cellsCopy;
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
        subscriptionID = [v7 subscriptionID];
        radioAccessTechnology = [v7 radioAccessTechnology];
        cellID = [v7 cellID];
        v27 = [v7 mnc];
        v8 = [v7 mcc];
        bandInfo = [v7 bandInfo];
        tacOrLac = [v7 tacOrLac];
        arfcnOrUarfcn = [v7 arfcnOrUarfcn];
        bandwidth = [v7 bandwidth];
        v13 = [v7 pci];
        deploymentType = [v7 deploymentType];
        timestamp = [v7 timestamp];
        cellsCopy = [(FMCoreData *)self getOrCreateServingCellWithContext:contextCopy subscriptionID:subscriptionID radioAccessTechnology:radioAccessTechnology cellID:cellID mnc:v27 mcc:v8 bandInfo:bandInfo tacOrLac:tacOrLac arfcnOrUarfcn:arfcnOrUarfcn bandwidth:bandwidth pci:v13 deploymentType:deploymentType timestamp:timestamp, cellsCopy];

        if (cellsCopy)
        {
          [v21 addObject:cellsCopy];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  v17 = [v21 copy];

  return v17;
}

- (id)getOrCreateServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4 timestamp:(id)self5
{
  contextCopy = context;
  dCopy = d;
  technologyCopy = technology;
  iDCopy = iD;
  mncCopy = mnc;
  mccCopy = mcc;
  infoCopy = info;
  lacCopy = lac;
  uarfcnCopy = uarfcn;
  bandwidthCopy = bandwidth;
  pciCopy = pci;
  typeCopy = type;
  v46 = lacCopy;
  timestampCopy = timestamp;
  v43 = typeCopy;
  v44 = bandwidthCopy;
  v45 = uarfcnCopy;
  v40 = infoCopy;
  v48 = infoCopy;
  v30 = contextCopy;
  v31 = dCopy;
  v49 = mncCopy;
  v32 = [(FMCoreData *)self getServingCellWithContext:v30 subscriptionID:dCopy radioAccessTechnology:technologyCopy cellID:iDCopy mnc:mncCopy mcc:mccCopy bandInfo:v40 tacOrLac:lacCopy arfcnOrUarfcn:uarfcnCopy bandwidth:bandwidthCopy pci:pciCopy deploymentType:typeCopy];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
    v36 = uarfcnCopy;
    v35 = v46;
    v37 = v44;
    v38 = v43;
  }

  else
  {
    v35 = lacCopy;
    v38 = v43;
    v37 = v44;
    v36 = v45;
    v34 = [(FMCoreData *)self createServingCellWithContext:v30 subscriptionID:v31 radioAccessTechnology:technologyCopy cellID:iDCopy mnc:v49 mcc:mccCopy bandInfo:v48 tacOrLac:lacCopy arfcnOrUarfcn:v45 bandwidth:v44 pci:pciCopy deploymentType:v43 timestamp:timestampCopy];
  }

  return v34;
}

- (id)createServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4 timestamp:(id)self5
{
  contextCopy = context;
  dCopy = d;
  technologyCopy = technology;
  iDCopy = iD;
  mncCopy = mnc;
  mccCopy = mcc;
  v22 = dCopy;
  infoCopy = info;
  lacCopy = lac;
  uarfcnCopy = uarfcn;
  bandwidthCopy = bandwidth;
  pciCopy = pci;
  typeCopy = type;
  timestampCopy = timestamp;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100200D94();
  }

  v28 = [NSEntityDescription insertNewObjectForEntityForName:@"ServingCell" inManagedObjectContext:contextCopy, pci];
  [v28 setLastSeen:timestampCopy];
  [v28 setSeenCount:0];
  [v28 setSubscriptionID:dCopy];
  [v28 setRadioAccessTechnology:technologyCopy];
  [v28 setCellID:iDCopy];
  [v28 setMnc:mncCopy];
  [v28 setMcc:mccCopy];
  [v28 setBandInfo:infoCopy];
  [v28 setTacOrLac:lacCopy];
  [v28 setArfcnOrUarfcn:uarfcnCopy];
  [v28 setBandwidth:bandwidthCopy];
  [v28 setPci:pciCopy];
  [v28 setDeploymentType:typeCopy];
  v38 = 0;
  [contextCopy save:&v38];
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

- (id)getServingCellWithContext:(id)context subscriptionID:(id)d radioAccessTechnology:(id)technology cellID:(id)iD mnc:(id)mnc mcc:(id)mcc bandInfo:(id)info tacOrLac:(id)self0 arfcnOrUarfcn:(id)self1 bandwidth:(id)self2 pci:(id)self3 deploymentType:(id)self4
{
  contextCopy = context;
  dCopy = d;
  technologyCopy = technology;
  iDCopy = iD;
  mncCopy = mnc;
  mccCopy = mcc;
  infoCopy = info;
  lacCopy = lac;
  uarfcnCopy = uarfcn;
  bandwidthCopy = bandwidth;
  pciCopy = pci;
  v33 = technologyCopy;
  v34 = infoCopy;
  v35 = lacCopy;
  typeCopy = type;
  v39 = [NSFetchRequest fetchRequestWithEntityName:@"ServingCell"];
  typeCopy = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (radioAccessTechnology == %@) AND (cellID == %@) AND (mnc == %@) AND (mcc == %@) AND (bandInfo == %@) AND (tacOrLac == %@) AND (arfcnOrUarfcn == %@) AND (bandwidth == %@) AND (pci == %@) AND (deploymentType == %@)", dCopy, technologyCopy, iDCopy, mncCopy, mccCopy, infoCopy, lacCopy, uarfcnCopy, bandwidthCopy, pciCopy, typeCopy];
  [v39 setPredicate:typeCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [typeCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_100200E0C();
  }

  v40 = 0;
  v29 = [contextCopy executeFetchRequest:v39 error:&v40];
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
    firstObject = 0;
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

  firstObject = [v29 firstObject];
LABEL_12:

  return firstObject;
}

- (id)filterOutOfServiceAreasWithContext:(id)context unfilteredOutOfServiceAreas:(id)areas WithExactPrevCells:(id)cells
{
  areasCopy = areas;
  cellsCopy = cells;
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = areasCopy;
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
        prevCells = [v13 prevCells];
        v15 = [prevCells count];
        LOBYTE(v15) = v15 == [cellsCopy count];

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

- (id)getOutOfServiceAreasWithoutNextVisitWithContext:(id)context After:(id)after
{
  contextCopy = context;
  afterCopy = after;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  afterCopy = [NSPredicate predicateWithFormat:@"(nextVisit == nil) AND (lastSeen >= %@)", afterCopy];
  [v7 setPredicate:afterCopy];
  v9 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [afterCopy description];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Fetching OutOfServiceArea with predicate %@", buf, 0xCu);
  }

  v15 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v15];
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

- (void)updateOutOfServiceAreaAfterLeavingWithContext:(id)context outOfServiceArea:(id)area startTime:(id)time nextCell:(id)cell duration:(double)duration entryLocation:(id)location exitLocation:(id)exitLocation
{
  contextCopy = context;
  areaCopy = area;
  timeCopy = time;
  cellCopy = cell;
  locationCopy = location;
  exitLocationCopy = exitLocation;
  v51 = timeCopy;
  if (areaCopy)
  {
    [areaCopy setLastSeen:timeCopy];
    [areaCopy setSeenCount:{objc_msgSend(areaCopy, "seenCount") + 1}];
    v50 = [NSEntityDescription insertNewObjectForEntityForName:@"OutOfServiceDuration" inManagedObjectContext:contextCopy];
    [v50 setSeconds:llround(duration)];
    [v50 setTimestamp:timeCopy];
    [areaCopy addDurationsObject:v50];
    durations = [areaCopy durations];
    v20 = [durations count];
    v21 = +[FMConfiguration sharedInstance];
    oOSDurationsInDatabase = [v21 OOSDurationsInDatabase];

    if (v20 > oOSDurationsInDatabase)
    {
      durations2 = [areaCopy durations];
      v24 = [durations2 copy];
      durations3 = [areaCopy durations];
      v26 = [durations3 count];
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
            [areaCopy removeDurationsObject:v34];
            [contextCopy deleteObject:v34];
          }

          v31 = [v30 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v31);
      }
    }

    if (cellCopy)
    {
      [areaCopy addNextCellsObject:cellCopy];
    }

    if (locationCopy)
    {
      entryAccuracy = [areaCopy entryAccuracy];
      if (!entryAccuracy)
      {
        goto LABEL_16;
      }

      entryAccuracy2 = [areaCopy entryAccuracy];
      [locationCopy accuracy];
      v37 = [NSNumber numberWithDouble:?];
      v38 = [entryAccuracy2 compare:v37] == 1;

      if (v38)
      {
LABEL_16:
        [locationCopy latitude];
        v39 = [NSNumber numberWithDouble:?];
        [areaCopy setEntryLatitude:v39];

        [locationCopy longitude];
        v40 = [NSNumber numberWithDouble:?];
        [areaCopy setEntryLongitude:v40];

        [locationCopy accuracy];
        v41 = [NSNumber numberWithDouble:?];
        [areaCopy setEntryAccuracy:v41];
      }
    }

    if (exitLocationCopy)
    {
      exitAccuracy = [areaCopy exitAccuracy];
      if (!exitAccuracy)
      {
        goto LABEL_20;
      }

      exitAccuracy2 = [areaCopy exitAccuracy];
      [exitLocationCopy accuracy];
      v44 = [NSNumber numberWithDouble:?];
      v45 = [exitAccuracy2 compare:v44] == 1;

      if (v45)
      {
LABEL_20:
        [exitLocationCopy latitude];
        v46 = [NSNumber numberWithDouble:?];
        [areaCopy setExitLatitude:v46];

        [exitLocationCopy longitude];
        v47 = [NSNumber numberWithDouble:?];
        [areaCopy setExitLongitude:v47];

        [exitLocationCopy accuracy];
        v48 = [NSNumber numberWithDouble:?];
        [areaCopy setExitAccuracy:v48];
      }
    }

    v54 = 0;
    [contextCopy save:&v54];
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

- (id)handleOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells startTime:(id)time entryLocation:(id)self0 exitLocation:(id)self1
{
  contextCopy = context;
  visitCopy = visit;
  curVisitCopy = curVisit;
  nextVisitCopy = nextVisit;
  dCopy = d;
  cellsCopy = cells;
  timeCopy = time;
  locationCopy = location;
  exitLocationCopy = exitLocation;
  v40 = exitLocationCopy;
  LOWORD(v37) = [(FMCoreData *)self NSDateToTimeOfDay:timeCopy];
  v25 = [(FMCoreData *)self getOutOfServiceAreaWithContext:contextCopy prevVisit:visitCopy curVisit:curVisitCopy nextVisit:nextVisitCopy subscriptionID:dCopy prevCells:cellsCopy timeOfDay:v37];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    goto LABEL_11;
  }

  v39 = [(FMCoreData *)self createOutOfServiceAreaWithContext:contextCopy prevVisit:visitCopy curVisit:curVisitCopy nextVisit:nextVisitCopy subscriptionID:dCopy prevCells:cellsCopy entryLocation:locationCopy exitLocation:exitLocationCopy startTime:timeCopy];
  v28 = +[FMConfiguration sharedInstance];
  v29 = -[FMCoreData deleteOutOfServiceAreasOverThresholdCount:WithContext:](self, "deleteOutOfServiceAreasOverThresholdCount:WithContext:", [v28 OOSMaxOOSAreasInDatabase], contextCopy);

  v38 = cellsCopy;
  if (v29)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000790DC;
    v42[3] = &unk_1002AD588;
    v43 = v39;
    if ([v29 indexOfObjectPassingTest:v42] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = dCopy;
      v31 = nextVisitCopy;
      v32 = contextCopy;
      v33 = curVisitCopy;
      v34 = visitCopy;
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_100200FB8();
      }

      v27 = 0;
      v35 = v39;
      goto LABEL_10;
    }
  }

  v30 = dCopy;
  v31 = nextVisitCopy;
  v32 = contextCopy;
  v33 = curVisitCopy;
  v34 = visitCopy;
  v35 = v39;
  v27 = v39;
LABEL_10:

  visitCopy = v34;
  curVisitCopy = v33;
  contextCopy = v32;
  nextVisitCopy = v31;
  dCopy = v30;
  cellsCopy = v38;
LABEL_11:

  return v27;
}

- (id)createOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells entryLocation:(id)location exitLocation:(id)self0 startTime:(id)self1
{
  contextCopy = context;
  visitCopy = visit;
  curVisitCopy = curVisit;
  nextVisitCopy = nextVisit;
  dCopy = d;
  cellsCopy = cells;
  locationCopy = location;
  exitLocationCopy = exitLocation;
  timeCopy = time;
  v18 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Creating new OutOfServiceArea", buf, 2u);
  }

  v19 = [NSEntityDescription insertNewObjectForEntityForName:@"OutOfServiceArea" inManagedObjectContext:contextCopy];
  [v19 setLastSeen:timeCopy];
  [v19 setSeenCount:0];
  [v19 setPrevVisit:visitCopy];
  [v19 setCurVisit:curVisitCopy];
  [v19 setNextVisit:nextVisitCopy];
  [v19 setSubscriptionID:dCopy];
  v20 = [cellsCopy count];
  v21 = +[FMConfiguration sharedInstance];
  LODWORD(v20) = v20 > [v21 OOSPrevCellsInDatabase];

  if (v20)
  {
    v22 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [cellsCopy count];
      v24 = +[FMConfiguration sharedInstance];
      oOSPrevCellsInDatabase = [v24 OOSPrevCellsInDatabase];
      *buf = 134218240;
      v62 = v23;
      v63 = 2048;
      v64 = oOSPrevCellsInDatabase;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Received more prevCells for database than expected: %lu > %lu", buf, 0x16u);
    }

    v26 = [NSOrderedSet alloc];
    v27 = [cellsCopy count];
    v28 = +[FMConfiguration sharedInstance];
    oOSPrevCellsInDatabase2 = [v28 OOSPrevCellsInDatabase];
    v30 = +[FMConfiguration sharedInstance];
    v31 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v27 - oOSPrevCellsInDatabase2, [v30 OOSPrevCellsInDatabase]);
    v32 = [cellsCopy objectsAtIndexes:v31];
    v33 = [v26 initWithArray:v32];
  }

  else
  {
    v33 = [cellsCopy copy];
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

  if (locationCopy)
  {
    [locationCopy latitude];
    v38 = [NSNumber numberWithDouble:?];
    [v19 setEntryLatitude:v38];

    [locationCopy longitude];
    v39 = [NSNumber numberWithDouble:?];
    [v19 setEntryLongitude:v39];

    [locationCopy accuracy];
    v40 = [NSNumber numberWithDouble:?];
    [v19 setEntryAccuracy:v40];
  }

  if (exitLocationCopy)
  {
    [exitLocationCopy latitude];
    v41 = [NSNumber numberWithDouble:?];
    [v19 setExitLatitude:v41];

    [exitLocationCopy longitude];
    v42 = [NSNumber numberWithDouble:?];
    [v19 setExitLongitude:v42];

    [exitLocationCopy accuracy];
    v43 = [NSNumber numberWithDouble:?];
    [v19 setExitAccuracy:v43];
  }

  [v19 setTimeOfDay:{-[FMCoreData NSDateToTimeOfDay:](self, "NSDateToTimeOfDay:", timeCopy)}];
  v55 = 0;
  [contextCopy save:&v55];
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

- (id)getOutOfServiceAreaWithContext:(id)context prevVisit:(id)visit curVisit:(id)curVisit nextVisit:(id)nextVisit subscriptionID:(id)d prevCells:(id)cells timeOfDay:(signed __int16)day
{
  contextCopy = context;
  visitCopy = visit;
  curVisitCopy = curVisit;
  nextVisitCopy = nextVisit;
  dCopy = d;
  cellsCopy = cells;
  v47 = visitCopy;
  v16 = +[FMConfiguration sharedInstance];
  v17 = -[FMCoreData getMinutesSinceMidnightFrom:addingOffset:](self, "getMinutesSinceMidnightFrom:addingOffset:", day, -[v16 OOSTimeOfDayWindowBackMinutes]);

  v18 = +[FMConfiguration sharedInstance];
  v19 = -[FMCoreData getMinutesSinceMidnightFrom:addingOffset:](self, "getMinutesSinceMidnightFrom:addingOffset:", day, [v18 OOSTimeOfDayWindowForwardMinutes]);

  v52 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v20 = visitCopy;
  if (v17 >= v19)
  {
    if (!visitCopy)
    {
      v20 = +[NSNull null];
    }

    v21 = curVisitCopy;
    if (!curVisitCopy)
    {
      v21 = +[NSNull null];
    }

    v22 = nextVisitCopy;
    if (!nextVisitCopy)
    {
      v22 = +[NSNull null];
    }

    v23 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(prevVisit == %@) AND (curVisit == %@) AND (nextVisit == %@) AND (subscriptionID == %@) AND (SUBQUERY(prevCells, $prevCell, $prevCell IN %@).@count == %d) AND ((timeOfDay >= %d) OR (timeOfDay <= %d))", v20, v21, v22, dCopy, cellsCopy, [cellsCopy count], v17, v19);
  }

  else
  {
    if (!visitCopy)
    {
      v20 = +[NSNull null];
    }

    v21 = curVisitCopy;
    if (!curVisitCopy)
    {
      v21 = +[NSNull null];
    }

    v22 = nextVisitCopy;
    if (!nextVisitCopy)
    {
      v22 = +[NSNull null];
    }

    v23 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(prevVisit == %@) AND (curVisit == %@) AND (nextVisit == %@) AND (subscriptionID == %@) AND (SUBQUERY(prevCells, $prevCell, $prevCell IN %@).@count == %d) AND (timeOfDay >= %d) AND (timeOfDay <= %d)", v20, v21, v22, dCopy, cellsCopy, [cellsCopy count], v17, v19);
  }

  v24 = v23;
  if (!nextVisitCopy)
  {
  }

  if (!curVisitCopy)
  {
  }

  v25 = v52;
  if (!visitCopy)
  {
  }

  [v52 setPredicate:v24];
  [v52 setReturnsObjectsAsFaults:0];
  v26 = *(qword_1002DBE98 + 136);
  v27 = contextCopy;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = [v24 description];
    *buf = 138412290;
    v62 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Fetching OutOfServiceArea with predicate %@", buf, 0xCu);

    v27 = contextCopy;
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
      firstObject = 0;
      goto LABEL_50;
    }

    v45 = v29;
    [v30 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100201030();
    firstObject = 0;
  }

  else
  {
    v45 = v29;
    v34 = [(FMCoreData *)self filterOutOfServiceAreasWithContext:v27 unfilteredOutOfServiceAreas:v29 WithExactPrevCells:cellsCopy];
    if ([v34 count])
    {
      if ([v34 count] == 1)
      {
        firstObject = [v34 firstObject];
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
        firstObject = 0;
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
              v41 = -[FMCoreData getDifferenceBetweenMinutesSinceMidnight:b:](self, "getDifferenceBetweenMinutesSinceMidnight:b:", [v40 timeOfDay], day);
              if (v41 < v38)
              {
                v42 = v40;

                firstObject = v42;
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

      firstObject = 0;
    }
  }

  v29 = v45;
LABEL_50:

  return firstObject;
}

- (id)getOrCreateLocationOfInterestAt:(id)at WithContext:(id)context
{
  atCopy = at;
  contextCopy = context;
  v8 = [(FMCoreData *)self getLocationOfInterestAt:atCopy WithContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(FMCoreData *)self createLocationOfInterestAt:atCopy WithContext:contextCopy];
  }

  v11 = v10;

  return v11;
}

- (id)createLocationOfInterestAt:(id)at WithContext:(id)context
{
  atCopy = at;
  contextCopy = context;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002010DC();
  }

  v7 = [NSEntityDescription insertNewObjectForEntityForName:@"LocationOfInterest" inManagedObjectContext:contextCopy];
  timestamp = [atCopy timestamp];
  [v7 setLastSeen:timestamp];

  [v7 setSeenCount:0];
  [atCopy latitude];
  [v7 setLatitude:?];
  [atCopy longitude];
  [v7 setLongitude:?];
  [atCopy accuracy];
  [v7 setAccuracy:?];
  v12 = 0;
  [contextCopy save:&v12];
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

- (id)getLocationOfInterestAt:(id)at WithContext:(id)context
{
  atCopy = at;
  contextCopy = context;
  v56 = contextCopy;
  [atCopy accuracy];
  v8 = v7;
  [atCopy latitude];
  v10 = cos(v9 * 3.14159265 / 180.0);
  [atCopy latitude];
  v12 = v11;
  [atCopy latitude];
  v14 = v13;
  [atCopy longitude];
  v16 = v15;
  [atCopy longitude];
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
  v22 = [contextCopy executeFetchRequest:v19 error:&v61];
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
    firstObject = [v22 firstObject];
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
    firstObject = 0;
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
          [atCopy latitude];
          v33 = v32;
          [atCopy longitude];
          v35 = v34;
          [v31 latitude];
          v37 = v36;
          [v31 longitude];
          [FMCoreLocationController distanceBetween:v33 srcLongitude:v35 destLatitude:v37 destLongitude:v38];
          v40 = v39;
          if (v39 < v29)
          {
            v41 = v31;

            firstObject = v41;
            v29 = v40;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v27);
    }

    v22 = v54;
  }

  [atCopy latitude];
  v43 = v42;
  [atCopy longitude];
  v45 = v44;
  [firstObject latitude];
  v47 = v46;
  [firstObject longitude];
  [FMCoreLocationController distanceBetween:v43 srcLongitude:v45 destLatitude:v47 destLongitude:v48];
  v50 = v49;
  [atCopy accuracy];
  if (v50 <= v51)
  {
    v24 = firstObject;
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

- (id)deleteOutOfServiceAreasOverThresholdCount:(unint64_t)count WithContext:(id)context
{
  contextCopy = context;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v19 = 0;
  v8 = [contextCopy countForFetchRequest:v7 error:&v19];
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

  v11 = &v8[-count];
  if (v8 <= count)
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
  v15 = [contextCopy executeFetchRequest:v12 error:&v18];
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

  if (![(FMCoreData *)self deleteOutOfServiceAreas:v15 AndAssociatedEntitiesWithContext:contextCopy])
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

- (void)deletedOrphanedServingCellsWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"ServingCell"];
  v4 = [NSPredicate predicateWithFormat:@"prevCellOf.@count == 0 AND nextCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v15 = [contextCopy executeFetchRequest:v16 error:&v22];
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
            prevCellOf = [v11 prevCellOf];
            nextCellOf = [v11 nextCellOf];
            *buf = 138412802;
            v24 = v11;
            v25 = 2112;
            v26 = prevCellOf;
            v27 = 2112;
            v28 = nextCellOf;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Deleting serving cell: %@ (prevCellOf: %@, nextCellOf: %@)", buf, 0x20u);
          }

          [contextCopy deleteObject:{v11, v15}];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = 0;
    [contextCopy save:&v17];
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

- (void)deletedOrphanedLocationsOfInterestWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"LocationOfInterest"];
  v3 = [NSPredicate predicateWithFormat:@"prevVisitOf.@count == 0 AND curVisitOf.@count == 0 AND nextVisitOf.@count == 0"];
  [v16 setPredicate:v3];

  v23 = 0;
  v15 = [contextCopy executeFetchRequest:v16 error:&v23];
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
            prevVisitOf = [v10 prevVisitOf];
            curVisitOf = [v10 curVisitOf];
            nextVisitOf = [v10 nextVisitOf];
            *buf = 138413058;
            v25 = v10;
            v26 = 2112;
            v27 = prevVisitOf;
            v28 = 2112;
            v29 = curVisitOf;
            v30 = 2112;
            v31 = nextVisitOf;
            _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Deleting location of interest: %@ (prevVisitOf: %@, curVisitOf: %@, nextVisitOf: %@)", buf, 0x2Au);
          }

          [contextCopy deleteObject:{v10, v15}];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v32 count:16];
      }

      while (v7);
    }

    v18 = 0;
    [contextCopy save:&v18];
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

- (unint64_t)deleteOutOfServiceAreasOlderThan:(id)than WithContext:(id)context
{
  thanCopy = than;
  contextCopy = context;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  thanCopy = [NSPredicate predicateWithFormat:@"lastSeen < %@", thanCopy];
  [v8 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_100201540();
  }

  v14 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v14];
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

  if (![(FMCoreData *)self deleteOutOfServiceAreas:v10 AndAssociatedEntitiesWithContext:contextCopy])
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

- (void)deleteOutOfServiceDurationsOlderThan:(id)than WithContext:(id)context
{
  thanCopy = than;
  contextCopy = context;
  v19 = thanCopy;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceDuration"];
  v21 = v6;
  thanCopy = [NSPredicate predicateWithFormat:@"timestamp < %@", thanCopy];
  v20 = thanCopy;
  [v6 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_100201584();
  }

  v28 = 0;
  v8 = [contextCopy executeFetchRequest:v6 error:&v28];
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
            timestamp = [v15 timestamp];
            *buf = 138412546;
            v30 = v15;
            v31 = 2112;
            v32 = timestamp;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Deleting OOS duration: %@ (timestamp: %@)", buf, 0x16u);
          }

          [contextCopy deleteObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    v23 = 0;
    [contextCopy save:&v23];
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

- (void)sendOnDeviceDBTelemetryEventWithContext:(id)context andNumberOfDeletedOOSAreasStale:(unint64_t)stale
{
  contextCopy = context;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"OutOfServiceArea"];
  v27 = 0;
  v7 = [contextCopy countForFetchRequest:v6 error:&v27];
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
    v11 = [contextCopy countForFetchRequest:v10 error:&v26];
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
      v19 = [contextCopy executeFetchRequest:v13 error:&v25];
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
        firstObject = [v19 firstObject];
        v17 = [NSString stringWithUTF8String:"com.apple.Telephony.fedMobilityOnDeviceLearningsDB"];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10007BD48;
        v20[3] = &unk_1002ABEF8;
        v18 = firstObject;
        v21 = v18;
        staleCopy = stale;
        v23 = v7;
        v24 = v11;
        sub_1000158DC(v17, v20);
      }
    }
  }
}

- (BOOL)backgroundContextPerformBlockAndWait:(id)wait
{
  waitCopy = wait;
  container = [(FMCoreData *)self container];
  newBackgroundContext = [container newBackgroundContext];

  if (!newBackgroundContext)
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

  container2 = [(FMCoreData *)self container];
  persistentStoreCoordinator = [container2 persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  v10 = [persistentStores count];

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
  v17 = waitCopy;
  v16 = newBackgroundContext;
  v18 = buf;
  [v16 performBlockAndWait:v15];
  v11 = v20[24];

  _Block_object_dispose(buf, 8);
LABEL_10:

  return v11 & 1;
}

- (signed)NSDateToTimeOfDay:(id)day
{
  dayCopy = day;
  v4 = [NSTimeZone timeZoneWithName:@"UTC"];
  if (v4)
  {
    v5 = [FMUtil NSDate:dayCopy toTimeOfDayInTimeZone:v4];
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

- (int64_t)getMinutesSinceMidnightFrom:(int64_t)from addingOffset:(int64_t)offset
{
  v4 = (offset + from) % 1440;
  if (v4 >= 0)
  {
    return (offset + from) % 1440;
  }

  else
  {
    return v4 + 1440;
  }
}

- (int64_t)getDifferenceBetweenMinutesSinceMidnight:(int64_t)midnight b:(int64_t)b
{
  v4 = midnight - b;
  if (midnight - b < 0)
  {
    v4 = b - midnight;
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

- (BOOL)deleteOutOfServiceAreas:(id)areas AndAssociatedEntitiesWithContext:(id)context
{
  areasCopy = areas;
  contextCopy = context;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = areasCopy;
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
          lastSeen = [v10 lastSeen];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = lastSeen;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData]:#I Deleting OOS area: %@ (last seen: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        durations = [v10 durations];
        v14 = [durations copy];

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
              [contextCopy deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [contextCopy deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [contextCopy save:&v23];
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
    [(FMCoreData *)self deletedOrphanedServingCellsWithContext:contextCopy];
    [(FMCoreData *)self deletedOrphanedLocationsOfInterestWithContext:contextCopy];
  }

  return v19 == 0;
}

- (id)getOrCreateCellMapNodeWithContext:(id)context andCellMapCongestionMetric:(id)metric
{
  contextCopy = context;
  metricCopy = metric;
  v8 = [metricCopy gci];
  v9 = [(FMCoreData *)self fetchCellMapNodeWithGCI:v8 andContext:contextCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [(FMCoreData *)self createCellMapNodeWithContext:contextCopy andCellMapCongestionMetric:metricCopy];
  }

  v11 = v10;

  return v11;
}

- (id)fetchCellMapNodeWithGCI:(id)i andContext:(id)context
{
  iCopy = i;
  contextCopy = context;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  iCopy = [NSPredicate predicateWithFormat:@"gci == %@", iCopy];
  [v7 setPredicate:iCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [iCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_1002020E0();
  }

  [v7 setReturnsObjectsAsFaults:0];
  v14 = 0;
  v9 = [contextCopy executeFetchRequest:v7 error:&v14];
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
    firstObject = 0;
    goto LABEL_15;
  }

  if ([v9 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100202124();
  }

  firstObject = [v9 firstObject];
LABEL_15:

  return firstObject;
}

- (BOOL)updateCellMapNode:(id)node withMetric:(id)metric updateConnDuration:(BOOL)duration andContext:(id)context atTime:(id)time
{
  durationCopy = duration;
  nodeCopy = node;
  metricCopy = metric;
  contextCopy = context;
  timeCopy = time;
  v15 = [nodeCopy gci];
  v16 = [metricCopy gci];
  v17 = [v15 isEqualToString:v16];

  if (v17)
  {
    band = [metricCopy band];
    [nodeCopy setBand:{objc_msgSend(band, "shortValue")}];

    frequency = [metricCopy frequency];
    [nodeCopy setFrequency:{objc_msgSend(frequency, "intValue")}];

    [nodeCopy setLastSeen:timeCopy];
    v20 = [metricCopy pci];
    [nodeCopy setPci:{objc_msgSend(v20, "shortValue")}];

    v21 = [metricCopy rat];
    [nodeCopy setRat:{objc_msgSend(v21, "shortValue")}];

    v22 = [metricCopy scs];
    [nodeCopy setScs:v22];

    [nodeCopy setSeenCount:{(objc_msgSend(nodeCopy, "seenCount") + 1)}];
    if (durationCopy)
    {
      connDuration = [metricCopy connDuration];
      [nodeCopy setSumConnDuration:{objc_msgSend(connDuration, "longLongValue") + objc_msgSend(nodeCopy, "sumConnDuration")}];
    }

    dlCongestionCount = [metricCopy dlCongestionCount];
    if (!dlCongestionCount)
    {
      goto LABEL_9;
    }

    ulCongestionCount = [metricCopy ulCongestionCount];
    if (ulCongestionCount)
    {
      l1MitigationCount = [metricCopy l1MitigationCount];

      if (!l1MitigationCount)
      {
LABEL_9:
        totalDuration = [metricCopy totalDuration];
        [nodeCopy setSumTotalDuration:{objc_msgSend(totalDuration, "longLongValue") + objc_msgSend(nodeCopy, "sumTotalDuration")}];

        v33 = 0;
        v30 = [contextCopy save:&v33];
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

      dlCongestionCount2 = [metricCopy dlCongestionCount];
      [nodeCopy setSumDlCongestionCount:{objc_msgSend(nodeCopy, "sumDlCongestionCount") + objc_msgSend(dlCongestionCount2, "intValue")}];

      ulCongestionCount2 = [metricCopy ulCongestionCount];
      [nodeCopy setSumUlCongestionCount:{objc_msgSend(nodeCopy, "sumUlCongestionCount") + objc_msgSend(ulCongestionCount2, "intValue")}];

      dlCongestionCount = [metricCopy l1MitigationCount];
      [nodeCopy setSumL1MitigationCount:{objc_msgSend(nodeCopy, "sumL1MitigationCount") + objc_msgSend(dlCongestionCount, "intValue")}];
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

- (id)getOrCreateCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode
{
  contextCopy = context;
  nodeCopy = node;
  destinationNodeCopy = destinationNode;
  v11 = [(FMCoreData *)self fetchCellMapEdgeWithContext:contextCopy sourceNode:nodeCopy destinationNode:destinationNodeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(FMCoreData *)self createCellMapEdgeWithContext:contextCopy sourceNode:nodeCopy destinationNode:destinationNodeCopy];
  }

  v14 = v13;

  return v14;
}

- (BOOL)updateCellMapEdge:(id)edge withContext:(id)context atTime:(id)time
{
  edgeCopy = edge;
  contextCopy = context;
  timeCopy = time;
  [edgeCopy setLastSeen:timeCopy];
  [edgeCopy setSeenCount:{(objc_msgSend(edgeCopy, "seenCount") + 1)}];
  v13 = 0;
  v10 = [contextCopy save:&v13];
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

- (id)fetchCellMapEdgesOfCellMapNode:(id)node maxCount:(unint64_t)count withContext:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  v9 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  nodeCopy = [NSPredicate predicateWithFormat:@"source == %@", nodeCopy];
  v11 = [[NSSortDescriptor alloc] initWithKey:@"seenCount" ascending:0];
  v19 = v11;
  v12 = [NSArray arrayWithObjects:&v19 count:1];
  [v9 setSortDescriptors:v12];

  if (count)
  {
    [v9 setFetchLimit:count];
  }

  [v9 setPredicate:nodeCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [nodeCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_1002022E4();
  }

  [v9 setReturnsObjectsAsFaults:0];
  [v9 setRelationshipKeyPathsForPrefetching:&off_1002BF8C0];
  v18 = 0;
  v13 = [contextCopy executeFetchRequest:v9 error:&v18];
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

- (void)deleteOldestCellMapNodesAndEdgesOverThreshold:(unint64_t)threshold withContext:(id)context
{
  contextCopy = context;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  v14 = 0;
  v8 = [contextCopy countForFetchRequest:v7 error:&v14];
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
    v10 = &v8[-threshold];
    if (v8 <= threshold)
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

      [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v11 andContext:contextCopy];
    }
  }
}

- (void)deleteCellMapNodesAndEdgesOlderThan:(id)than withContext:(id)context
{
  thanCopy = than;
  contextCopy = context;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapNode"];
  thanCopy = [NSPredicate predicateWithFormat:@"lastSeen < %@", thanCopy];
  [v8 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_1002024F0();
  }

  [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v8 andContext:contextCopy];
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  thanCopy2 = [NSPredicate predicateWithFormat:@"lastSeen < %@", thanCopy];
  [v10 setPredicate:thanCopy2];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy2 description];
    objc_claimAutoreleasedReturnValue();
    sub_100202534();
  }

  [(FMCoreData *)self deleteCellMapEntitiesWithFetchRequest:v10 andContext:contextCopy];
}

- (void)deleteCellMapEntitiesWithFetchRequest:(id)request andContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:requestCopy];
  v17 = 0;
  v8 = [contextCopy executeRequest:v7 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      entityName = [requestCopy entityName];
      sub_100202578(entityName, v10, v18);
    }
  }

  else
  {
    v16 = 0;
    v12 = [contextCopy save:&v16];
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
        entityName2 = [requestCopy entityName];
        sub_1002025D0(entityName2, v10, v18);
      }
    }
  }
}

- (id)createCellMapNodeWithContext:(id)context andCellMapCongestionMetric:(id)metric
{
  contextCopy = context;
  metricCopy = metric;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100202628();
  }

  v7 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapNode" inManagedObjectContext:contextCopy];
  band = [metricCopy band];
  [v7 setBand:{objc_msgSend(band, "shortValue")}];

  frequency = [metricCopy frequency];
  [v7 setFrequency:{objc_msgSend(frequency, "intValue")}];

  v10 = [metricCopy gci];
  [v7 setGci:v10];

  [v7 setLastSeen:0];
  v11 = [metricCopy pci];
  [v7 setPci:{objc_msgSend(v11, "shortValue")}];

  v12 = [metricCopy rat];
  [v7 setRat:{objc_msgSend(v12, "shortValue")}];

  v13 = [metricCopy scs];
  [v7 setScs:v13];

  [v7 setSeenCount:0];
  [v7 setSumConnDuration:0];
  [v7 setSumDlCongestionCount:0];
  [v7 setSumL1MitigationCount:0];
  [v7 setSumTotalDuration:0];
  [v7 setSumUlCongestionCount:0];
  v19 = 0;
  v14 = [contextCopy save:&v19];
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

- (id)createCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode
{
  contextCopy = context;
  nodeCopy = node;
  destinationNodeCopy = destinationNode;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1002026A0();
  }

  v10 = [NSEntityDescription insertNewObjectForEntityForName:@"CellMapEdge" inManagedObjectContext:contextCopy];
  [v10 setLastSeen:0];
  [v10 setSeenCount:0];
  [v10 setSource:nodeCopy];
  [v10 setDestination:destinationNodeCopy];
  v16 = 0;
  v11 = [contextCopy save:&v16];
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

- (id)fetchCellMapEdgeWithContext:(id)context sourceNode:(id)node destinationNode:(id)destinationNode
{
  contextCopy = context;
  nodeCopy = node;
  destinationNodeCopy = destinationNode;
  v10 = [NSFetchRequest fetchRequestWithEntityName:@"CellMapEdge"];
  destinationNodeCopy = [NSPredicate predicateWithFormat:@"source == %@ AND destination == %@", nodeCopy, destinationNodeCopy];
  [v10 setPredicate:destinationNodeCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [destinationNodeCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_100202718();
  }

  [v10 setReturnsObjectsAsFaults:0];
  v17 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v17];
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
    firstObject = 0;
    goto LABEL_15;
  }

  if ([v12 count] >= 2 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020275C();
  }

  firstObject = [v12 firstObject];
LABEL_15:

  return firstObject;
}

- (BOOL)resetAndPopulateCellMapDatabaseWithJSON:(id)n
{
  nCopy = n;
  v5 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = nCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+CellMap]:#I Received request to populate CellMap database: %@", &buf, 0xCu);
  }

  if (nCopy && [nCopy length])
  {
    v6 = [nCopy dataUsingEncoding:4];
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

- (id)updateMapWithCellMapCongestionMetric:(id)metric andPreviousNodeObjectID:(id)d
{
  metricCopy = metric;
  dCopy = d;
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
  v8 = metricCopy;
  v14 = v8;
  v16 = &v17;
  v9 = dCopy;
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

- (id)cellMapPredictionForGCI:(id)i
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
  selfCopy = self;
  iCopy = i;
  v8 = iCopy;
  v9 = &v10;
  if ([(FMCoreData *)selfCopy backgroundContextPerformBlockAndWait:v6])
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

+ (BOOL)isFMCellMapNodeCongested:(id)congested
{
  congestedCopy = congested;
  v4 = +[FMCoreData isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:](FMCoreData, "isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:", [congestedCopy dlCongestionCount], objc_msgSend(congestedCopy, "ulCongestionCount"), objc_msgSend(congestedCopy, "l1MitigationCount"));

  return v4;
}

+ (BOOL)isFMCellMapCongestionMetricCongested:(id)congested
{
  congestedCopy = congested;
  dlCongestionCount = [congestedCopy dlCongestionCount];
  if (dlCongestionCount)
  {
    ulCongestionCount = [congestedCopy ulCongestionCount];
    if (!ulCongestionCount)
    {
      LOBYTE(l1MitigationCount) = 0;
      goto LABEL_7;
    }

    l1MitigationCount = [congestedCopy l1MitigationCount];

    if (l1MitigationCount)
    {
      dlCongestionCount = [congestedCopy dlCongestionCount];
      unsignedIntValue = [dlCongestionCount unsignedIntValue];
      ulCongestionCount2 = [congestedCopy ulCongestionCount];
      unsignedIntValue2 = [ulCongestionCount2 unsignedIntValue];
      l1MitigationCount2 = [congestedCopy l1MitigationCount];
      LOBYTE(l1MitigationCount) = +[FMCoreData isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:](FMCoreData, "isCongestedWithDLCongestionCount:ulCongestionCount:l1MitigationCount:", unsignedIntValue, unsignedIntValue2, [l1MitigationCount2 unsignedIntValue]);

LABEL_7:
    }
  }

  else
  {
    LOBYTE(l1MitigationCount) = 0;
  }

  return l1MitigationCount;
}

- (id)fmCellMapNodeFromCellMapNode:(id)node edgeSeenCount:(signed __int16)count
{
  countCopy = count;
  nodeCopy = node;
  v6 = [nodeCopy gci];
  v7 = [v6 componentsSeparatedByString:@"."];

  if ([v7 count] == 4)
  {
    v8 = [FMCellMapNode alloc];
    v39 = [nodeCopy gci];
    v9 = [nodeCopy rat];
    frequency = [nodeCopy frequency];
    v38 = [v7 objectAtIndexedSubscript:3];
    longLongValue = [v38 longLongValue];
    v37 = [v7 objectAtIndexedSubscript:2];
    intValue = [v37 intValue];
    [v7 objectAtIndexedSubscript:0];
    v30 = intValue;
    v31 = longLongValue;
    v32 = frequency;
    v33 = v9;
    v34 = v8;
    v36 = v35 = countCopy;
    intValue2 = [v36 intValue];
    v13 = [v7 objectAtIndexedSubscript:1];
    intValue3 = [v13 intValue];
    band = [nodeCopy band];
    LODWORD(v8) = [nodeCopy pci];
    sumConnDuration = [nodeCopy sumConnDuration];
    sumTotalDuration = [nodeCopy sumTotalDuration];
    sumDlCongestionCount = [nodeCopy sumDlCongestionCount];
    sumUlCongestionCount = [nodeCopy sumUlCongestionCount];
    sumL1MitigationCount = [nodeCopy sumL1MitigationCount];
    v19 = [nodeCopy scs];
    LODWORD(v26) = v35;
    HIDWORD(v25) = sumDlCongestionCount;
    HIDWORD(v24) = sumConnDuration / 1000;
    LODWORD(v25) = sumTotalDuration / 1000;
    LODWORD(v24) = v8;
    v20 = [FMCellMapNode initWithGCI:v34 rat:"initWithGCI:rat:frequency:cellIdentity:tac:mcc:mnc:band:pci:dsDuration:totalDuration:dlCongestionCount:ulCongestionCount:l1MitigationCount:weight:scs:" frequency:v39 cellIdentity:v33 tac:v32 mcc:v31 mnc:v30 band:intValue2 pci:__PAIR64__(band dsDuration:intValue3) totalDuration:v24 dlCongestionCount:v25 ulCongestionCount:__PAIR64__(sumL1MitigationCount l1MitigationCount:sumUlCongestionCount) weight:v26 scs:v19];
  }

  else
  {
    v21 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [nodeCopy gci];
      sub_1002051F4(v22, buf, v21);
    }

    v20 = 0;
  }

  return v20;
}

- (id)createChildTSEventOfType:(signed __int16)type withDetails:(id)details withContext:(id)context
{
  typeCopy = type;
  detailsCopy = details;
  contextCopy = context;
  if (typeCopy > 2)
  {
    if (typeCopy == 3)
    {
      v9 = [detailsCopy valueForKey:@"latitude"];
      v11 = [detailsCopy valueForKey:@"longitude"];
      v17 = [detailsCopy valueForKey:@"accuracy"];
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
                  v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitStarted" inManagedObjectContext:contextCopy];
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
      if (typeCopy != 4)
      {
        goto LABEL_18;
      }

      v9 = [detailsCopy valueForKey:@"latitude"];
      v11 = [detailsCopy valueForKey:@"longitude"];
      v13 = [detailsCopy valueForKey:@"accuracy"];
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
                  v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitEnded" inManagedObjectContext:contextCopy];
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

  if (typeCopy == 1)
  {
    v9 = [detailsCopy valueForKey:@"from"];
    v16 = [detailsCopy valueForKey:@"to"];
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
            v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventCellChanged" inManagedObjectContext:contextCopy];
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

  if (typeCopy == 2)
  {
    v9 = [detailsCopy valueForKey:@"from"];
    v10 = [detailsCopy valueForKey:@"to"];
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
            v12 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventSignalStrengthChanged" inManagedObjectContext:contextCopy];
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
    sub_100205360(typeCopy, v15);
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)createTSEventFrom:(id)from withContext:(id)context
{
  fromCopy = from;
  contextCopy = context;
  type = [fromCopy type];
  if (type > 2)
  {
    if (type == 3)
    {
      v8 = fromCopy;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitStarted" inManagedObjectContext:contextCopy];
      [v8 latitude];
      [v9 setLatitude:?];
      [v8 longitude];
      [v9 setLongitude:?];
      [v8 accuracy];
      [v9 setAccuracy:?];
      goto LABEL_14;
    }

    if (type == 4)
    {
      v8 = fromCopy;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventVisitEnded" inManagedObjectContext:contextCopy];
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
    if (type == 1)
    {
      v8 = fromCopy;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventCellChanged" inManagedObjectContext:contextCopy];
      fromCellGCI = [v8 fromCellGCI];
      [v9 setFromCellGCI:fromCellGCI];

      toCellGCI = [v8 toCellGCI];
      [v9 setToCellGCI:toCellGCI];
      goto LABEL_12;
    }

    if (type == 2)
    {
      v8 = fromCopy;
      v9 = [NSEntityDescription insertNewObjectForEntityForName:@"TSEventSignalStrengthChanged" inManagedObjectContext:contextCopy];
      fromBars = [v8 fromBars];
      [v9 setFromBars:{objc_msgSend(fromBars, "shortValue")}];

      toCellGCI = [v8 toBars];
      [v9 setToBars:{objc_msgSend(toCellGCI, "shortValue")}];
LABEL_12:

      goto LABEL_14;
    }
  }

  v12 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1002053D8([fromCopy type], v15, v12);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)createTSAnomalyWithContext:(id)context anomaly:(id)anomaly homePLMN:(id)n
{
  contextCopy = context;
  anomalyCopy = anomaly;
  nCopy = n;
  startTimestamp = [anomalyCopy startTimestamp];
  if (startTimestamp <= [anomalyCopy endTimestamp])
  {
    v11 = [NSEntityDescription insertNewObjectForEntityForName:@"TSAnomaly" inManagedObjectContext:contextCopy];
    [v11 setDuration:{(objc_msgSend(anomalyCopy, "endTimestamp") - objc_msgSend(anomalyCopy, "startTimestamp")) / 0x3B9ACA00uLL}];
    [v11 setHomePLMN:nCopy];
    startTime = [anomalyCopy startTime];
    [v11 setStartTime:startTime];

    [v11 setType:{objc_msgSend(anomalyCopy, "type")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    events = [anomalyCopy events];
    v14 = [events countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(events);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          timestamp = [v17 timestamp];
          if (timestamp <= [anomalyCopy startTimestamp])
          {
            v20 = -[FMCoreData createTSEventFrom:withContext:timeUntilAnomaly:eventOf:](self, "createTSEventFrom:withContext:timeUntilAnomaly:eventOf:", v17, contextCopy, ([anomalyCopy startTimestamp] - objc_msgSend(v17, "timestamp")) / 0x3B9ACA00uLL, v11);
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

        v14 = [events countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v29 = 0;
    [contextCopy save:&v29];
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
      v25 = -[FMCoreData deleteTSAnomaliesOverThresholdCount:withContext:](self, "deleteTSAnomaliesOverThresholdCount:withContext:", [v24 FMTSAnomaliesInDatabase], contextCopy);

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

- (id)createTSPredictionWithContext:(id)context prediction:(id)prediction
{
  contextCopy = context;
  predictionCopy = prediction;
  if ([predictionCopy didAnomalyHappen])
  {
    actualStartTimestamp = [predictionCopy actualStartTimestamp];
    if (actualStartTimestamp > [predictionCopy actualEndTimestamp])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205778();
      }

LABEL_8:
      v7 = 0;
      goto LABEL_32;
    }

    predictionTimestamp = [predictionCopy predictionTimestamp];
    if (predictionTimestamp > [predictionCopy actualStartTimestamp])
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
      {
        sub_100205744();
      }

      goto LABEL_8;
    }
  }

  v8 = [NSEntityDescription insertNewObjectForEntityForName:@"TSPrediction" inManagedObjectContext:contextCopy];
  v28 = v8;
  [v8 setActualDuration:0];
  [v8 setActualTimeUntilAnomaly:0];
  [v8 setDidAnomalyHappen:0];
  if ([predictionCopy didAnomalyHappen])
  {
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [predictionCopy actualDuration]);
    [v8 setActualDuration:v9];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [predictionCopy actualTimeUntilAnomaly]);
    [v8 setActualTimeUntilAnomaly:v10];

    [v8 setDidAnomalyHappen:1];
  }

  [predictionCopy confidenceAnomaly];
  [v8 setConfidenceAnomaly:?];
  [predictionCopy confidenceDuration];
  [v8 setConfidenceDuration:?];
  [predictionCopy confidenceTimeUntilAnomaly];
  [v8 setConfidenceTimeUntilAnomaly:?];
  [v8 setPredictedDuration:{objc_msgSend(predictionCopy, "predictedDuration")}];
  [v8 setPredictedTimeUntilAnomaly:{objc_msgSend(predictionCopy, "predictedTimeUntilAnomaly")}];
  predictionTime = [predictionCopy predictionTime];
  [v8 setTime:predictionTime];

  [v8 setType:{objc_msgSend(predictionCopy, "predictedAnomalyType")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  predictionSources = [predictionCopy predictionSources];
  v13 = [predictionSources countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(predictionSources);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v31 = 0;
        v18 = [contextCopy existingObjectWithID:v16 error:&v31];
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

      v13 = [predictionSources countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v13);
  }

  v30 = 0;
  [contextCopy save:&v30];
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

- (id)deleteTSAnomaliesOverThresholdCount:(unint64_t)count withContext:(id)context
{
  contextCopy = context;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  v19 = 0;
  v8 = [contextCopy countForFetchRequest:v7 error:&v19];
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

  v12 = &v8[-count];
  if (v8 > count)
  {
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
    v14 = [[NSSortDescriptor alloc] initWithKey:@"startTime" ascending:1];
    v20 = v14;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v13 setSortDescriptors:v15];

    [v13 setFetchLimit:v12];
    v18 = 0;
    v16 = [contextCopy executeFetchRequest:v13 error:&v18];
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
      if ([(FMCoreData *)self deleteTSAnomalies:v16 andAssociatedEntitiesWithContext:contextCopy])
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

- (BOOL)deleteTSAnomalies:(id)anomalies andAssociatedEntitiesWithContext:(id)context
{
  anomaliesCopy = anomalies;
  contextCopy = context;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = anomaliesCopy;
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
          startTime = [v10 startTime];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = startTime;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+TimeSeries]:#I Deleting TSAnomaly: %@ (startTime: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        events = [v10 events];
        v14 = [events copy];

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
              [contextCopy deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [contextCopy deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [contextCopy save:&v23];
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
    [(FMCoreData *)self deleteOrphanedTSPredictionsWithContext:contextCopy];
    [(FMCoreData *)self deletedOrphanedTSAnomalyTagsWithContext:contextCopy];
  }

  return v19 == 0;
}

- (void)deleteOrphanedTSPredictionsWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"TSPrediction"];
  v4 = [NSPredicate predicateWithFormat:@"predictionSources.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [contextCopy executeFetchRequest:v16 error:&v22];
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
            predictionSources = [v12 predictionSources];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = predictionSources;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Deleting TSPrediction: %@ (predictionSources: %@)", buf, 0x16u);
          }

          [contextCopy deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [contextCopy save:&v17];
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

- (void)deletedOrphanedTSAnomalyTagsWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomalyTag"];
  v4 = [NSPredicate predicateWithFormat:@"anomaly == nil"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [contextCopy executeFetchRequest:v16 error:&v22];
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
            anomaly = [v12 anomaly];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = anomaly;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Deleting TSAnomalyTag: %@ (anomaly: %@)", buf, 0x16u);
          }

          [contextCopy deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [contextCopy save:&v17];
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

- (void)deleteTSAnomaliesWithContext:(id)context olderThan:(id)than
{
  contextCopy = context;
  thanCopy = than;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"TSAnomaly"];
  thanCopy = [NSPredicate predicateWithFormat:@"startTime < %@", thanCopy];
  [v8 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_100205AB8();
  }

  v12 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v12];
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

  else if (![(FMCoreData *)self deleteTSAnomalies:v10 andAssociatedEntitiesWithContext:contextCopy]&& os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100205B4C();
  }
}

- (void)updateCongestionCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp congestionMetric:(id)metric
{
  contextCopy = context;
  cellCopy = cell;
  timestampCopy = timestamp;
  metricCopy = metric;
  ratType = [cellCopy ratType];
  ratType2 = [metricCopy ratType];
  v15 = [ratType isEqualToString:ratType2];

  if ((v15 & 1) == 0)
  {
    v16 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ratType3 = [metricCopy ratType];
      ratType4 = [cellCopy ratType];
      sub_10020B418(ratType3, ratType4, buf, v16);
    }

    ratType5 = [metricCopy ratType];
    [cellCopy setRatType:ratType5];
  }

  [cellCopy setRsrp:{objc_msgSend(metricCopy, "rsrp")}];
  [cellCopy setRsrq:{objc_msgSend(metricCopy, "rsrq")}];
  [cellCopy setSinr:{objc_msgSend(metricCopy, "sinr")}];
  [cellCopy setDlBottleneckScoreInvalid:{objc_msgSend(metricCopy, "dlBottleneckScoreInvalid")}];
  [cellCopy setDlBottleneckScoreNo:{objc_msgSend(metricCopy, "dlBottleneckScoreNo")}];
  [cellCopy setDlBottleneckScoreLow:{objc_msgSend(metricCopy, "dlBottleneckScoreLow")}];
  [cellCopy setDlBottleneckScoreMedium:{objc_msgSend(metricCopy, "dlBottleneckScoreMedium")}];
  [cellCopy setDlBottleneckScoreHigh:{objc_msgSend(metricCopy, "dlBottleneckScoreHigh")}];
  [cellCopy setUlBottleneckScoreInvalid:{objc_msgSend(metricCopy, "ulBottleneckScoreInvalid")}];
  [cellCopy setUlBottleneckScoreNo:{objc_msgSend(metricCopy, "ulBottleneckScoreNo")}];
  [cellCopy setUlBottleneckScoreLow:{objc_msgSend(metricCopy, "ulBottleneckScoreLow")}];
  [cellCopy setUlBottleneckScoreMedium:{objc_msgSend(metricCopy, "ulBottleneckScoreMedium")}];
  [cellCopy setUlBottleneckScoreHigh:{objc_msgSend(metricCopy, "ulBottleneckScoreHigh")}];
  [cellCopy setDataStallIndicatorAVS:{objc_msgSend(metricCopy, "dataStallIndicatorAVS")}];
  [cellCopy setDataStallIndicatorUL:{objc_msgSend(metricCopy, "dataStallIndicatorUL")}];
  if ([metricCopy isQoEScoreValid])
  {
    if ([cellCopy qoeScore])
    {
      qoeScore = llround(vcvtd_n_f64_u32([metricCopy qoeScore], 1uLL) + objc_msgSend(cellCopy, "qoeScore") * 0.5);
    }

    else
    {
      qoeScore = [metricCopy qoeScore];
    }

    [cellCopy setQoeScore:qoeScore];
    [cellCopy setQoeDuration:{objc_msgSend(cellCopy, "qoeDuration") + objc_msgSend(metricCopy, "qoeDuration")}];
  }

  [cellCopy setIsSubway:{objc_msgSend(metricCopy, "isSubway")}];
  [cellCopy setPsPref:{objc_msgSend(metricCopy, "psPref")}];
  [cellCopy setLastSeen:timestampCopy];
  [cellCopy setSeenCount:{objc_msgSend(cellCopy, "seenCount") + 1}];
  v22 = 0;
  [contextCopy save:&v22];
  v21 = v22;
  if (v21 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v21 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10020B488();
  }
}

- (id)createCongestionCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn congestionMetric:(id)self0 timestamp:(id)self1
{
  contextCopy = context;
  dCopy = d;
  gciCopy = gci;
  mccCopy = mcc;
  mncCopy = mnc;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  metricCopy = metric;
  timestampCopy = timestamp;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B4CC();
  }

  v23 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionCell" inManagedObjectContext:contextCopy];
  [v23 setLastSeen:timestampCopy];
  [v23 setSeenCount:0];
  [v23 setSubscriptionID:dCopy];
  [v23 setGci:gciCopy];
  [v23 setMcc:mccCopy];
  [v23 setMnc:mncCopy];
  [v23 setRadioAccessTechnology:ratCopy];
  [v23 setArfcnOrUarfcn:uarfcnCopy];
  ratType = [metricCopy ratType];
  [v23 setRatType:ratType];

  [v23 setRsrp:{objc_msgSend(metricCopy, "rsrp")}];
  [v23 setRsrq:{objc_msgSend(metricCopy, "rsrq")}];
  [v23 setSinr:{objc_msgSend(metricCopy, "sinr")}];
  [v23 setDlBottleneckScoreInvalid:{objc_msgSend(metricCopy, "dlBottleneckScoreInvalid")}];
  [v23 setDlBottleneckScoreNo:{objc_msgSend(metricCopy, "dlBottleneckScoreNo")}];
  [v23 setDlBottleneckScoreLow:{objc_msgSend(metricCopy, "dlBottleneckScoreLow")}];
  [v23 setDlBottleneckScoreMedium:{objc_msgSend(metricCopy, "dlBottleneckScoreMedium")}];
  [v23 setDlBottleneckScoreHigh:{objc_msgSend(metricCopy, "dlBottleneckScoreHigh")}];
  [v23 setUlBottleneckScoreInvalid:{objc_msgSend(metricCopy, "ulBottleneckScoreInvalid")}];
  [v23 setUlBottleneckScoreNo:{objc_msgSend(metricCopy, "ulBottleneckScoreNo")}];
  [v23 setUlBottleneckScoreLow:{objc_msgSend(metricCopy, "ulBottleneckScoreLow")}];
  [v23 setUlBottleneckScoreMedium:{objc_msgSend(metricCopy, "ulBottleneckScoreMedium")}];
  [v23 setUlBottleneckScoreHigh:{objc_msgSend(metricCopy, "ulBottleneckScoreHigh")}];
  [v23 setDataStallIndicatorAVS:{objc_msgSend(metricCopy, "dataStallIndicatorAVS")}];
  [v23 setDataStallIndicatorUL:{objc_msgSend(metricCopy, "dataStallIndicatorUL")}];
  [v23 setQoeScore:{objc_msgSend(metricCopy, "qoeScore")}];
  [v23 setQoeDuration:{objc_msgSend(metricCopy, "qoeDuration")}];
  [v23 setIsSubway:{objc_msgSend(metricCopy, "isSubway")}];
  [v23 setPsPref:{objc_msgSend(metricCopy, "psPref")}];
  v30 = 0;
  [contextCopy save:&v30];
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

- (id)getCongestionCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn atTime:(id)self0
{
  contextCopy = context;
  dCopy = d;
  gciCopy = gci;
  mccCopy = mcc;
  mncCopy = mnc;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  timeCopy = time;
  v16 = [FMUtil getTimeOfDayFromDate:timeCopy];
  v17 = [FMUtil getDayOfWeekFromDate:timeCopy];
  v48 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
  uarfcnCopy = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (gci == %@) AND (mcc == %@) AND (mnc == %@) AND (radioAccessTechnology == %@) AND (arfcnOrUarfcn == %@)", dCopy, gciCopy, mccCopy, mncCopy, ratCopy, uarfcnCopy];
  [v48 setPredicate:?];
  v18 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:0];
  v57 = v18;
  v19 = [NSArray arrayWithObjects:&v57 count:1];
  [v48 setSortDescriptors:v19];

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [uarfcnCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B544();
  }

  v53 = 0;
  v39 = [contextCopy executeFetchRequest:v48 error:&v53];
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
      goodCellOf = [v23 goodCellOf];
      if (goodCellOf)
      {
      }

      else
      {
        badCellOf = [v23 badCellOf];
        v26 = badCellOf == 0;

        if (v26)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
          {
            sub_10020B5CC(&v55, v56);
          }

          goto LABEL_20;
        }
      }

      goodCellOf2 = [v23 goodCellOf];
      v28 = goodCellOf2;
      if (goodCellOf2)
      {
        badCellOf2 = goodCellOf2;
      }

      else
      {
        badCellOf2 = [v23 badCellOf];
      }

      v30 = badCellOf2;

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

- (void)updateCongestionPrevCellSeenWithContext:(id)context cell:(id)cell atTimestamp:(id)timestamp
{
  contextCopy = context;
  cellCopy = cell;
  timestampCopy = timestamp;
  [cellCopy setLastSeen:timestampCopy];
  [cellCopy setSeenCount:{objc_msgSend(cellCopy, "seenCount") + 1}];
  v11 = 0;
  [contextCopy save:&v11];
  v10 = v11;
  if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    [v10 localizedDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10020B62C();
  }
}

- (id)fmCongestionCellsToExistingCongestionPrevCellsWithContext:(id)context cells:(id)cells
{
  contextCopy = context;
  cellsCopy = cells;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = cellsCopy;
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
        subscriptionID = [v8 subscriptionID];
        v10 = [v8 gci];
        v11 = [v8 mcc];
        v12 = [v8 mnc];
        v13 = [v8 rat];
        arfcnOrUarfcn = [v8 arfcnOrUarfcn];
        cellsCopy = [(FMCoreData *)self getCongestionPrevCellWithContext:contextCopy subscriptionID:subscriptionID gci:v10 mcc:v11 mnc:v12 rat:v13 arfcnOrUarfcn:arfcnOrUarfcn, cellsCopy];

        if (!cellsCopy)
        {

          v16 = 0;
          goto LABEL_11;
        }

        [v21 addObject:cellsCopy];
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

- (id)convertFMCongestionCells:(id)cells toUpdatedCongestionPrevCellsWithContext:(id)context
{
  cellsCopy = cells;
  contextCopy = context;
  v19 = cellsCopy;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = cellsCopy;
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
        subscriptionID = [v8 subscriptionID];
        v10 = [v8 gci];
        v11 = [v8 mcc];
        v12 = [v8 mnc];
        v13 = [v8 rat];
        arfcnOrUarfcn = [v8 arfcnOrUarfcn];
        timestamp = [v8 timestamp];
        v16 = [(FMCoreData *)self getOrCreateAndUpdateCongestionPrevCellWithContext:contextCopy subscriptionID:subscriptionID gci:v10 mcc:v11 mnc:v12 rat:v13 arfcnOrUarfcn:arfcnOrUarfcn timestamp:timestamp, v19];

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

- (id)getOrCreateAndUpdateCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn timestamp:(id)self0
{
  contextCopy = context;
  dCopy = d;
  gciCopy = gci;
  mccCopy = mcc;
  mncCopy = mnc;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  timestampCopy = timestamp;
  v24 = [(FMCoreData *)self getCongestionPrevCellWithContext:contextCopy subscriptionID:dCopy gci:gciCopy mcc:mccCopy mnc:mncCopy rat:ratCopy arfcnOrUarfcn:uarfcnCopy];
  if (v24)
  {
    [(FMCoreData *)self updateCongestionPrevCellSeenWithContext:contextCopy cell:v24 atTimestamp:timestampCopy];
    v25 = v24;
  }

  else
  {
    v25 = [(FMCoreData *)self createCongestionPrevCellWithContext:contextCopy subscriptionID:dCopy gci:gciCopy mcc:mccCopy mnc:mncCopy rat:ratCopy arfcnOrUarfcn:uarfcnCopy timestamp:timestampCopy];
  }

  v26 = v25;

  return v26;
}

- (id)createCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn timestamp:(id)self0
{
  contextCopy = context;
  dCopy = d;
  gciCopy = gci;
  mccCopy = mcc;
  mncCopy = mnc;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  timestampCopy = timestamp;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_10020B670();
  }

  dCopy = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionPrevCell" inManagedObjectContext:contextCopy, dCopy];
  [dCopy setLastSeen:timestampCopy];
  [dCopy setSeenCount:0];
  [dCopy setSubscriptionID:v27];
  [dCopy setGci:gciCopy];
  [dCopy setMcc:mccCopy];
  [dCopy setMnc:mncCopy];
  [dCopy setRadioAccessTechnology:ratCopy];
  [dCopy setArfcnOrUarfcn:uarfcnCopy];
  v28 = 0;
  [contextCopy save:&v28];
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
    v24 = dCopy;
  }

  return v24;
}

- (id)getCongestionPrevCellWithContext:(id)context subscriptionID:(id)d gci:(id)gci mcc:(id)mcc mnc:(id)mnc rat:(id)rat arfcnOrUarfcn:(id)uarfcn
{
  contextCopy = context;
  dCopy = d;
  gciCopy = gci;
  mccCopy = mcc;
  mncCopy = mnc;
  ratCopy = rat;
  uarfcnCopy = uarfcn;
  v26 = dCopy;
  v20 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionPrevCell"];
  uarfcnCopy = [NSPredicate predicateWithFormat:@"(subscriptionID == %@) AND (gci == %@) AND (mcc == %@) AND (mnc == %@) AND (radioAccessTechnology == %@) AND (arfcnOrUarfcn == %@)", dCopy, gciCopy, mccCopy, mncCopy, ratCopy, uarfcnCopy];
  [v20 setPredicate:uarfcnCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [uarfcnCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B6A4();
  }

  v28 = 0;
  v22 = [contextCopy executeFetchRequest:v20 error:&v28];
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
    firstObject = 0;
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

  firstObject = [v22 firstObject];
LABEL_12:

  return firstObject;
}

- (id)filterCongestionAreasWithContext:(id)context unfilteredCongestionAreas:(id)areas withExactPrevCells:(id)cells
{
  areasCopy = areas;
  cellsCopy = cells;
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = areasCopy;
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
        prevCells = [v13 prevCells];
        v15 = [prevCells count];
        LOBYTE(v15) = v15 == [cellsCopy count];

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

- (void)updateCongestionAreaAfterLeavingWithContext:(id)context congestionArea:(id)area startTime:(id)time goodCells:(id)cells badCells:(id)badCells secondsUntilCongestion:(double)congestion secondsCongestionDuration:(double)duration
{
  contextCopy = context;
  areaCopy = area;
  timeCopy = time;
  cellsCopy = cells;
  badCellsCopy = badCells;
  v109 = areaCopy;
  v92 = timeCopy;
  if (areaCopy)
  {
    [areaCopy setLastSeen:timeCopy];
    [areaCopy setSeenCount:{objc_msgSend(areaCopy, "seenCount") + 1}];
    v91 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionOccurrence" inManagedObjectContext:contextCopy];
    [v91 setSecondsUntilCongestion:llround(congestion)];
    [v91 setSecondsCongestionDuration:llround(duration)];
    [v91 setTimestamp:timeCopy];
    [areaCopy addCongestionOccurrencesObject:v91];
    congestionOccurrences = [areaCopy congestionOccurrences];
    v20 = [congestionOccurrences count];

    v21 = +[FMConfiguration sharedInstance];
    congestionOccurrencesInDatabase = [v21 congestionOccurrencesInDatabase];

    v23 = v20 >= congestionOccurrencesInDatabase;
    v24 = v20 - congestionOccurrencesInDatabase;
    if (v24 != 0 && v23)
    {
      congestionOccurrences2 = [areaCopy congestionOccurrences];
      v26 = [congestionOccurrences2 copy];
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
            [areaCopy removeCongestionOccurrencesObject:v33];
            [contextCopy deleteObject:v33];
          }

          v30 = [v29 countByEnumeratingWithState:&v143 objects:v153 count:16];
        }

        while (v30);
      }
    }

    if (badCellsCopy)
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = badCellsCopy;
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
            congestionMetric = [v35 congestionMetric];
            v105 = v34;
            v37 = congestionMetric == 0;

            if (v37)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_10020B794(&v137, v138);
              }
            }

            else
            {
              badCells = [v109 badCells];
              v136[0] = _NSConcreteStackBlock;
              v136[1] = 3221225472;
              v136[2] = sub_10013BA18;
              v136[3] = &unk_1002B3910;
              v136[4] = self;
              v136[5] = v35;
              v107 = [badCells objectsPassingTest:v136];

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
                      timestamp = [v35 timestamp];
                      congestionMetric2 = [v35 congestionMetric];
                      [(FMCoreData *)self updateCongestionCellSeenWithContext:contextCopy cell:v43 atTimestamp:timestamp congestionMetric:congestionMetric2];
                    }

                    v40 = [v39 countByEnumeratingWithState:&v132 objects:v151 count:16];
                  }

                  while (v40);
                }
              }

              else
              {
                goodCells = [v109 goodCells];
                v131[0] = _NSConcreteStackBlock;
                v131[1] = 3221225472;
                v131[2] = sub_10013BA28;
                v131[3] = &unk_1002B3910;
                v131[4] = self;
                v131[5] = v35;
                v99 = [goodCells objectsPassingTest:v131];

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
                        timestamp2 = [v35 timestamp];
                        congestionMetric3 = [v35 congestionMetric];
                        [(FMCoreData *)self updateCongestionCellSeenWithContext:contextCopy cell:v51 atTimestamp:timestamp2 congestionMetric:congestionMetric3];

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
                  subscriptionID = [v35 subscriptionID];
                  v54 = [v35 gci];
                  v55 = [v35 mcc];
                  v56 = [v35 mnc];
                  v57 = [v35 rat];
                  arfcnOrUarfcn = [v35 arfcnOrUarfcn];
                  congestionMetric4 = [v35 congestionMetric];
                  timestamp3 = [v35 timestamp];
                  v61 = v55;
                  v47 = [(FMCoreData *)self createCongestionCellWithContext:contextCopy subscriptionID:subscriptionID gci:v54 mcc:v55 mnc:v56 rat:v57 arfcnOrUarfcn:arfcnOrUarfcn congestionMetric:congestionMetric4 timestamp:timestamp3];

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

    if (cellsCopy)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obja = cellsCopy;
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
            congestionMetric5 = [v63 congestionMetric];
            v106 = v62;
            v65 = congestionMetric5 == 0;

            if (v65)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
              {
                sub_10020B7C0(&v121, v122);
              }
            }

            else
            {
              goodCells2 = [v109 goodCells];
              v120[0] = _NSConcreteStackBlock;
              v120[1] = 3221225472;
              v120[2] = sub_10013BA38;
              v120[3] = &unk_1002B3910;
              v120[4] = self;
              v120[5] = v63;
              v108 = [goodCells2 objectsPassingTest:v120];

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
                      timestamp4 = [v63 timestamp];
                      congestionMetric6 = [v63 congestionMetric];
                      [(FMCoreData *)self updateCongestionCellSeenWithContext:contextCopy cell:v71 atTimestamp:timestamp4 congestionMetric:congestionMetric6];
                    }

                    v68 = [v67 countByEnumeratingWithState:&v116 objects:v148 count:16];
                  }

                  while (v68);
                }
              }

              else
              {
                badCells2 = [v109 badCells];
                v115[0] = _NSConcreteStackBlock;
                v115[1] = 3221225472;
                v115[2] = sub_10013BA48;
                v115[3] = &unk_1002B3910;
                v115[4] = self;
                v115[5] = v63;
                v100 = [badCells2 objectsPassingTest:v115];

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
                        timestamp5 = [v63 timestamp];
                        congestionMetric7 = [v63 congestionMetric];
                        [(FMCoreData *)self updateCongestionCellSeenWithContext:contextCopy cell:v79 atTimestamp:timestamp5 congestionMetric:congestionMetric7];

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
                  subscriptionID2 = [v63 subscriptionID];
                  v82 = [v63 gci];
                  v83 = [v63 mcc];
                  v84 = [v63 mnc];
                  v85 = [v63 rat];
                  arfcnOrUarfcn2 = [v63 arfcnOrUarfcn];
                  congestionMetric8 = [v63 congestionMetric];
                  timestamp6 = [v63 timestamp];
                  v89 = v83;
                  v75 = [(FMCoreData *)self createCongestionCellWithContext:contextCopy subscriptionID:subscriptionID2 gci:v82 mcc:v83 mnc:v84 rat:v85 arfcnOrUarfcn:arfcnOrUarfcn2 congestionMetric:congestionMetric8 timestamp:timestamp6];

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
    [contextCopy save:&v110];
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

- (id)handleCongestionAreaWithContext:(id)context subscriptionID:(id)d prevCells:(id)cells startTime:(id)time
{
  contextCopy = context;
  dCopy = d;
  cellsCopy = cells;
  timeCopy = time;
  v14 = [(FMCoreData *)self getCongestionAreaWithContext:contextCopy subscriptionID:dCopy prevCells:cellsCopy timeOfDay:[FMUtil dayOfWeek:"getTimeOfDayFromDate:" getTimeOfDayFromDate:timeCopy], [FMUtil getDayOfWeekFromDate:timeCopy]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    goto LABEL_11;
  }

  v17 = [(FMCoreData *)self createCongestionAreaWithContext:contextCopy subscriptionID:dCopy prevCells:cellsCopy startTime:timeCopy];
  v18 = +[FMConfiguration sharedInstance];
  v19 = -[FMCoreData deleteCongestionAreasOverThresholdCount:withContext:](self, "deleteCongestionAreasOverThresholdCount:withContext:", [v18 congestionMaxAreasInDatabase], contextCopy);

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

- (id)createCongestionAreaWithContext:(id)context subscriptionID:(id)d prevCells:(id)cells startTime:(id)time
{
  contextCopy = context;
  dCopy = d;
  cellsCopy = cells;
  timeCopy = time;
  v13 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Creating new CongestionArea", buf, 2u);
  }

  v14 = [NSEntityDescription insertNewObjectForEntityForName:@"CongestionArea" inManagedObjectContext:contextCopy];
  [v14 setLastSeen:timeCopy];
  [v14 setSeenCount:0];
  [v14 setSubscriptionID:dCopy];
  v15 = +[FMConfiguration sharedInstance];
  congestionPrevCellsInDatabase = [v15 congestionPrevCellsInDatabase];

  if ([cellsCopy count] <= congestionPrevCellsInDatabase)
  {
    v22 = [cellsCopy copy];
  }

  else
  {
    v17 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [cellsCopy count];
      *buf = 134218240;
      v37 = v18;
      v38 = 2048;
      v39 = congestionPrevCellsInDatabase;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Received more prevCells for database than expected: %lu > %lu", buf, 0x16u);
    }

    v19 = [NSOrderedSet alloc];
    v20 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", [cellsCopy count] - congestionPrevCellsInDatabase, congestionPrevCellsInDatabase);
    v21 = [cellsCopy objectsAtIndexes:v20];
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

  [v14 setTimeOfDay:{+[FMUtil getTimeOfDayFromDate:](FMUtil, "getTimeOfDayFromDate:", timeCopy)}];
  [v14 setDayOfWeek:{+[FMUtil getDayOfWeekFromDate:](FMUtil, "getDayOfWeekFromDate:", timeCopy)}];
  v30 = 0;
  [contextCopy save:&v30];
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

- (void)deleteCongestionAreasOlderThan:(id)than withContext:(id)context
{
  thanCopy = than;
  contextCopy = context;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
  thanCopy = [NSPredicate predicateWithFormat:@"lastSeen < %@", thanCopy];
  [v8 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_10020B988();
  }

  v12 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v12];
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

  else if (![(FMCoreData *)self deleteCongestionAreas:v10 andAssociatedEntitiesWithContext:contextCopy]&& os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_10020BA10();
  }
}

- (void)deleteCongestionOccurrencesOlderThan:(id)than withContext:(id)context
{
  thanCopy = than;
  contextCopy = context;
  v19 = thanCopy;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionOccurrence"];
  v21 = v6;
  thanCopy = [NSPredicate predicateWithFormat:@"timestamp < %@", thanCopy];
  v20 = thanCopy;
  [v6 setPredicate:thanCopy];
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    [thanCopy description];
    objc_claimAutoreleasedReturnValue();
    sub_10020BA44();
  }

  v28 = 0;
  v8 = [contextCopy executeFetchRequest:v6 error:&v28];
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
            timestamp = [v15 timestamp];
            *buf = 138412546;
            v30 = v15;
            v31 = 2112;
            v32 = timestamp;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Deleting congestion occurrence: %@ (timestamp: %@)", buf, 0x16u);
          }

          [contextCopy deleteObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    v23 = 0;
    [contextCopy save:&v23];
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

- (id)deleteCongestionAreasOverThresholdCount:(unint64_t)count withContext:(id)context
{
  contextCopy = context;
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
  v20 = 0;
  v8 = [contextCopy countForFetchRequest:v7 error:&v20];
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

  v12 = &v8[-count];
  if (v8 > count)
  {
    v13 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionArea"];
    v14 = [[NSSortDescriptor alloc] initWithKey:@"lastSeen" ascending:1];
    v21 = v14;
    v15 = [NSArray arrayWithObjects:&v21 count:1];
    [v13 setSortDescriptors:v15];

    [v13 setFetchLimit:v12];
    v19 = 0;
    v16 = [contextCopy executeFetchRequest:v13 error:&v19];
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
      if ([(FMCoreData *)self deleteCongestionAreas:v16 andAssociatedEntitiesWithContext:contextCopy])
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
    sub_10020BB54(v8, count, v17);
  }

  v10 = 0;
  v11 = &__NSArray0__struct;
LABEL_18:

  return v11;
}

- (BOOL)deleteCongestionAreas:(id)areas andAssociatedEntitiesWithContext:(id)context
{
  areasCopy = areas;
  contextCopy = context;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = areasCopy;
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
          lastSeen = [v10 lastSeen];
          *buf = 138412546;
          v34 = v10;
          v35 = 2112;
          v36 = lastSeen;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "FederatedMobility[FMCoreData+Congestion]:#I Deleting congestion area: %@ (last seen: %@)", buf, 0x16u);
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        congestionOccurrences = [v10 congestionOccurrences];
        v14 = [congestionOccurrences copy];

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
              [contextCopy deleteObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }

        [contextCopy deleteObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v7);
  }

  v23 = 0;
  [contextCopy save:&v23];
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
    [(FMCoreData *)self deleteOrphanedCongestionCellsWithContext:contextCopy];
    [(FMCoreData *)self deleteOrphanedCongestionPrevCellsWithContext:contextCopy];
  }

  return v19 == 0;
}

- (void)deleteOrphanedCongestionCellsWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionCell"];
  v4 = [NSPredicate predicateWithFormat:@"badCellOf.@count == 0 AND goodCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v15 = [contextCopy executeFetchRequest:v16 error:&v22];
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
            badCellOf = [v11 badCellOf];
            goodCellOf = [v11 goodCellOf];
            *buf = 138412802;
            v24 = v11;
            v25 = 2112;
            v26 = badCellOf;
            v27 = 2112;
            v28 = goodCellOf;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Deleting congestion cell: %@ (badCellOf: %@, goodCellOf: %@)", buf, 0x20u);
          }

          [contextCopy deleteObject:{v11, v15}];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v29 count:16];
      }

      while (v8);
    }

    v17 = 0;
    [contextCopy save:&v17];
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

- (void)deleteOrphanedCongestionPrevCellsWithContext:(id)context
{
  contextCopy = context;
  v16 = [NSFetchRequest fetchRequestWithEntityName:@"CongestionPrevCell"];
  v4 = [NSPredicate predicateWithFormat:@"prevCellOf.@count == 0"];
  [v16 setPredicate:v4];

  v22 = 0;
  v5 = [contextCopy executeFetchRequest:v16 error:&v22];
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
            prevCellOf = [v12 prevCellOf];
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = prevCellOf;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Deleting congestion prev cell: %@ (prevCellOf: %@)", buf, 0x16u);
          }

          [contextCopy deleteObject:{v12, v15}];
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v9);
    }

    v17 = 0;
    v5 = v15;
    [contextCopy save:&v17];
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

- (BOOL)isFMCongestionCell:(id)cell equalToCongestionCell:(id)congestionCell
{
  cellCopy = cell;
  congestionCellCopy = congestionCell;
  v7 = [cellCopy mcc];
  v8 = [congestionCellCopy mcc];
  if ([v7 isEqualToNumber:v8])
  {
    v9 = [cellCopy mnc];
    v10 = [congestionCellCopy mnc];
    if (![v9 isEqualToNumber:v10])
    {
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v18 = [cellCopy gci];
    v17 = [congestionCellCopy gci];
    if (![v18 isEqualToString:?])
    {
      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    arfcnOrUarfcn = [cellCopy arfcnOrUarfcn];
    if (arfcnOrUarfcn || ([congestionCellCopy arfcnOrUarfcn], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      arfcnOrUarfcn2 = [cellCopy arfcnOrUarfcn];
      arfcnOrUarfcn3 = [congestionCellCopy arfcnOrUarfcn];
      v14 = [arfcnOrUarfcn2 isEqualToNumber:arfcnOrUarfcn3];

      if (arfcnOrUarfcn)
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

    arfcnOrUarfcn = v16;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)getRushHourPredicateForDayOfWeek:(signed __int16)week andTimeOfDay:(signed __int16)day
{
  v4 = week - 2;
  if (v4 > 4 || day - 420 > 0x77)
  {
    if (v4 > 4 || day - 1020 > 0x77)
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
@interface FMOOSPredictor
+ (id)getElementFromSortedArray:(id)array forPercentile:(unint64_t)percentile;
+ (id)getOutOfServiceRecoveryPredictionWithFMCoreData:(id)data prevVisit:(id)visit curVisit:(id)curVisit subscriptionID:(id)d prevCells:(id)cells startTime:(id)time entryLocation:(id)location;
+ (id)outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:(id)context WithOutOfServiceArea:(id)area FromTimestamp:(id)timestamp;
@end

@implementation FMOOSPredictor

+ (id)getOutOfServiceRecoveryPredictionWithFMCoreData:(id)data prevVisit:(id)visit curVisit:(id)curVisit subscriptionID:(id)d prevCells:(id)cells startTime:(id)time entryLocation:(id)location
{
  dataCopy = data;
  visitCopy = visit;
  curVisitCopy = curVisit;
  dCopy = d;
  cellsCopy = cells;
  timeCopy = time;
  v16 = [cellsCopy count];
  p_info = &OBJC_METACLASS___WISTrialExperimentsManager.info;
  v18 = +[FMConfiguration sharedInstance];
  oOSPrevCellsInDatabase = [v18 OOSPrevCellsInDatabase];
  if (v16 <= oOSPrevCellsInDatabase)
  {
    v21 = 0;
  }

  else
  {
    v20 = [cellsCopy count];
    v9 = +[FMConfiguration sharedInstance];
    v21 = v20 - [v9 OOSPrevCellsInDatabase];
  }

  v22 = [cellsCopy count];
  v23 = +[FMConfiguration sharedInstance];
  oOSPrevCellsInDatabase2 = [v23 OOSPrevCellsInDatabase];
  if (v22 >= oOSPrevCellsInDatabase2)
  {
    p_info = +[FMConfiguration sharedInstance];
    oOSPrevCellsInDatabase3 = [p_info OOSPrevCellsInDatabase];
  }

  else
  {
    oOSPrevCellsInDatabase3 = [cellsCopy count];
  }

  v26 = [cellsCopy subarrayWithRange:{v21, oOSPrevCellsInDatabase3}];
  if (v22 >= oOSPrevCellsInDatabase2)
  {
  }

  if (v16 > oOSPrevCellsInDatabase)
  {
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100080D7C;
  v55 = sub_100080D8C;
  v56 = 0;
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_100201E70();
  }

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100080D94;
  v42[3] = &unk_1002AD8C0;
  v27 = dataCopy;
  v43 = v27;
  v28 = timeCopy;
  v44 = v28;
  v29 = visitCopy;
  v45 = v29;
  v30 = curVisitCopy;
  v46 = v30;
  v31 = v26;
  v47 = v31;
  v49 = &v51;
  v32 = dCopy;
  v48 = v32;
  selfCopy = self;
  if ([v27 backgroundContextPerformBlockAndWait:v42])
  {
    v33 = v52[5];
    if (v33)
    {
      v34 = [v33 copy];
      goto LABEL_19;
    }
  }

  else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
  {
    sub_100201EA4();
  }

  v34 = 0;
LABEL_19:

  _Block_object_dispose(&v51, 8);

  return v34;
}

+ (id)outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:(id)context WithOutOfServiceArea:(id)area FromTimestamp:(id)timestamp
{
  areaCopy = area;
  timestampCopy = timestamp;
  v42 = areaCopy;
  durations = [areaCopy durations];
  v8 = [durations count];

  if (v8)
  {
    v9 = [NSMutableArray alloc];
    durations2 = [v42 durations];
    array = [durations2 array];
    v12 = [v9 initWithArray:array];

    [v12 sortUsingComparator:&stru_1002AD900];
    v48 = objc_alloc_init(NSMutableArray);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v13)
    {
      v14 = *v60;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v59 + 1) + 8 * i) seconds]);
          [v48 addObject:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v13);
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100081F28;
    v57[3] = &unk_1002AD968;
    v58 = &stru_1002AD940;
    v41 = objc_retainBlock(v57);
    v17 = +[FMConfiguration sharedInstance];
    [v17 selectPredictedCellBasedOnSeenCountLikelihood];
    v19 = [FMUtil randomlyTrueWithLikelihood:v18];

    v20 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100202030(v19, v20);
    }

    nextCells = [v42 nextCells];
    allObjects = [nextCells allObjects];
    v23 = allObjects;
    if (v19)
    {
      v24 = v41;
    }

    else
    {
      v24 = &stru_1002AD940;
    }

    v40 = [allObjects sortedArrayUsingComparator:v24];

    v45 = objc_alloc_init(NSMutableArray);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = v40;
    v25 = [v43 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v25)
    {
      v46 = *v54;
      do
      {
        v49 = v25;
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v27 = *(*(&v53 + 1) + 8 * j);
          v28 = [FMServingCell alloc];
          subscriptionID = [v27 subscriptionID];
          radioAccessTechnology = [v27 radioAccessTechnology];
          cellID = [v27 cellID];
          v29 = [v27 mnc];
          v30 = [v27 mcc];
          bandInfo = [v27 bandInfo];
          tacOrLac = [v27 tacOrLac];
          arfcnOrUarfcn = [v27 arfcnOrUarfcn];
          bandwidth = [v27 bandwidth];
          v35 = [v27 pci];
          deploymentType = [v27 deploymentType];
          v37 = [(FMServingCell *)v28 init:timestampCopy subscriptionID:subscriptionID radioAccessTechnology:radioAccessTechnology cellID:cellID mnc:v29 mcc:v30 bandInfo:bandInfo tacOrLac:tacOrLac arfcnOrUarfcn:arfcnOrUarfcn bandwidth:bandwidth pci:v35 deploymentType:deploymentType];

          if (v37)
          {
            [v45 addObject:v37];
          }
        }

        v25 = [v43 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v25);
    }

    v38 = -[FMOOSRecoveryPrediction init:seenCount:cells:]([FMOOSRecoveryPrediction alloc], "init:seenCount:cells:", v48, [v42 seenCount], v45);
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1002020AC();
    }

    v38 = 0;
  }

  return v38;
}

+ (id)getElementFromSortedArray:(id)array forPercentile:(unint64_t)percentile
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (arrayCopy && [arrayCopy count])
  {
    if (!percentile)
    {
      firstObject = [v6 firstObject];
      goto LABEL_7;
    }

    if (percentile >= 0x65)
    {
      firstObject = [v6 lastObject];
LABEL_7:
      v8 = firstObject;
      goto LABEL_16;
    }

    *v9.i64 = ([v6 count] - 1) / (100.0 / percentile);
    *v10.i64 = *v9.i64 - trunc(*v9.i64);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    if (fabs(*vbslq_s8(vnegq_f64(v11), v10, v9).i64 + -0.5) >= 2.22044605e-16)
    {
      v19 = llround(*v9.i64);
      if ((v19 & 0x8000000000000000) == 0 && v19 < [v6 count])
      {
        firstObject = [v6 objectAtIndexedSubscript:v19];
        goto LABEL_7;
      }
    }

    else
    {
      v12 = llround(floor(*v9.i64));
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v12 + 1;
        if (v12 + 1 < [v6 count])
        {
          v14 = [v6 objectAtIndexedSubscript:v12];
          [v14 doubleValue];
          v16 = v15;
          v17 = [v6 objectAtIndexedSubscript:v13];
          [v17 doubleValue];
          v8 = [NSNumber numberWithDouble:(v16 + v18) * 0.5];

          goto LABEL_16;
        }
      }
    }
  }

  v8 = 0;
LABEL_16:

  return v8;
}

@end
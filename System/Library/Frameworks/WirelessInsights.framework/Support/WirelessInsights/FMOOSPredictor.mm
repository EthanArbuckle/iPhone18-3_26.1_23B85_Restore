@interface FMOOSPredictor
+ (id)getElementFromSortedArray:(id)a3 forPercentile:(unint64_t)a4;
+ (id)getOutOfServiceRecoveryPredictionWithFMCoreData:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 subscriptionID:(id)a6 prevCells:(id)a7 startTime:(id)a8 entryLocation:(id)a9;
+ (id)outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:(id)a3 WithOutOfServiceArea:(id)a4 FromTimestamp:(id)a5;
@end

@implementation FMOOSPredictor

+ (id)getOutOfServiceRecoveryPredictionWithFMCoreData:(id)a3 prevVisit:(id)a4 curVisit:(id)a5 subscriptionID:(id)a6 prevCells:(id)a7 startTime:(id)a8 entryLocation:(id)a9
{
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v15 = a7;
  v37 = a8;
  v16 = [v15 count];
  p_info = &OBJC_METACLASS___WISTrialExperimentsManager.info;
  v18 = +[FMConfiguration sharedInstance];
  v19 = [v18 OOSPrevCellsInDatabase];
  if (v16 <= v19)
  {
    v21 = 0;
  }

  else
  {
    v20 = [v15 count];
    v9 = +[FMConfiguration sharedInstance];
    v21 = v20 - [v9 OOSPrevCellsInDatabase];
  }

  v22 = [v15 count];
  v23 = +[FMConfiguration sharedInstance];
  v24 = [v23 OOSPrevCellsInDatabase];
  if (v22 >= v24)
  {
    p_info = +[FMConfiguration sharedInstance];
    v25 = [p_info OOSPrevCellsInDatabase];
  }

  else
  {
    v25 = [v15 count];
  }

  v26 = [v15 subarrayWithRange:{v21, v25}];
  if (v22 >= v24)
  {
  }

  if (v16 > v19)
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
  v27 = v41;
  v43 = v27;
  v28 = v37;
  v44 = v28;
  v29 = v40;
  v45 = v29;
  v30 = v39;
  v46 = v30;
  v31 = v26;
  v47 = v31;
  v49 = &v51;
  v32 = v38;
  v48 = v32;
  v50 = a1;
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

+ (id)outOfServiceAreaToFMOOSRecoveryPredictionsWithContext:(id)a3 WithOutOfServiceArea:(id)a4 FromTimestamp:(id)a5
{
  v6 = a4;
  v47 = a5;
  v42 = v6;
  v7 = [v6 durations];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [NSMutableArray alloc];
    v10 = [v42 durations];
    v11 = [v10 array];
    v12 = [v9 initWithArray:v11];

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

    v21 = [v42 nextCells];
    v22 = [v21 allObjects];
    v23 = v22;
    if (v19)
    {
      v24 = v41;
    }

    else
    {
      v24 = &stru_1002AD940;
    }

    v40 = [v22 sortedArrayUsingComparator:v24];

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
          v52 = [v27 subscriptionID];
          v51 = [v27 radioAccessTechnology];
          v50 = [v27 cellID];
          v29 = [v27 mnc];
          v30 = [v27 mcc];
          v31 = [v27 bandInfo];
          v32 = [v27 tacOrLac];
          v33 = [v27 arfcnOrUarfcn];
          v34 = [v27 bandwidth];
          v35 = [v27 pci];
          v36 = [v27 deploymentType];
          v37 = [(FMServingCell *)v28 init:v47 subscriptionID:v52 radioAccessTechnology:v51 cellID:v50 mnc:v29 mcc:v30 bandInfo:v31 tacOrLac:v32 arfcnOrUarfcn:v33 bandwidth:v34 pci:v35 deploymentType:v36];

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

+ (id)getElementFromSortedArray:(id)a3 forPercentile:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    if (!a4)
    {
      v7 = [v6 firstObject];
      goto LABEL_7;
    }

    if (a4 >= 0x65)
    {
      v7 = [v6 lastObject];
LABEL_7:
      v8 = v7;
      goto LABEL_16;
    }

    *v9.i64 = ([v6 count] - 1) / (100.0 / a4);
    *v10.i64 = *v9.i64 - trunc(*v9.i64);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    if (fabs(*vbslq_s8(vnegq_f64(v11), v10, v9).i64 + -0.5) >= 2.22044605e-16)
    {
      v19 = llround(*v9.i64);
      if ((v19 & 0x8000000000000000) == 0 && v19 < [v6 count])
      {
        v7 = [v6 objectAtIndexedSubscript:v19];
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
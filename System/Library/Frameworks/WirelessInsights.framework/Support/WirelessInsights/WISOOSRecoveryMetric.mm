@interface WISOOSRecoveryMetric
+ (id)getSharedInstance;
- (BOOL)insertOrMoveObject:(id)a3 InMutableOrderedSet:(id)a4 WithSizeLimit:(unint64_t)a5;
- (WISOOSRecoveryMetric)init;
- (id)extractCellInfo:(id)a3 error:(id *)a4;
- (id)findContextsToDelete:(id)a3;
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)currentDataSimChanged:(id)a3;
- (void)handleCompletedOutOfServiceEventWithState:(id)a3 atTime:(unint64_t)a4;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)initializeStateForContext:(id)a3 isDataContext:(BOOL)a4;
- (void)populateSubscriptionContextsInUse;
- (void)registrationStatusChanged:(id)a3 status:(id)a4;
- (void)subscriptionInfoDidChange;
@end

@implementation WISOOSRecoveryMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2BC8;
  block[3] = &unk_1002AB480;
  block[4] = a1;
  if (qword_1002D85D8 != -1)
  {
    dispatch_once(&qword_1002D85D8, block);
  }

  v2 = qword_1002D85D0;

  return v2;
}

- (WISOOSRecoveryMetric)init
{
  v10.receiver = self;
  v10.super_class = WISOOSRecoveryMetric;
  v2 = [(WISOOSRecoveryMetric *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(WISOOSRecoveryMetric *)v2 setContextUUIDToStateMap:v3];

    [(WISOOSRecoveryMetric *)v2 setIsContextMapInitialized:0];
    [(WISOOSRecoveryMetric *)v2 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.OOSRecoveryMetric", 0)];
    v4 = [(WISOOSRecoveryMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F2D48;
    block[3] = &unk_1002AB4D0;
    v5 = v2;
    v9 = v5;
    dispatch_async(v4, block);
    v6 = v5;
  }

  return v2;
}

- (void)populateSubscriptionContextsInUse
{
  v3 = [(WISOOSRecoveryMetric *)self ctRelay];
  v4 = [v3 coreTelephonyClient];
  v33 = 0;
  v25 = [v4 getSubscriptionInfoWithError:&v33];
  v26 = v33;

  if (v26)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v26 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100208EC8();
    }
  }

  else
  {
    v5 = [v25 subscriptionsInUse];
    v24 = [WISTelephonyUtils sanitizedSubscriptions:v5];

    if (v24)
    {
      v6 = [(WISOOSRecoveryMetric *)self ctRelay];
      v7 = [v6 coreTelephonyClient];
      v32 = 0;
      v23 = [v7 getCurrentDataSubscriptionContextSync:&v32];
      v26 = v32;

      if (v26)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v26 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100208F0C();
        }
      }

      else
      {
        [(WISOOSRecoveryMetric *)self setIsContextMapInitialized:1];
        v27 = [v23 uuid];
        v21 = [(WISOOSRecoveryMetric *)self findContextsToDelete:v24];
        v8 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_100208F50(v35, [v21 count], objc_msgSend(v24, "count"), v8);
        }

        v9 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
        [v9 removeObjectsForKeys:v22];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v24;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v11)
        {
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              v15 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
              v16 = [v14 uuid];
              v17 = [v15 objectForKey:v16];
              v18 = v17 == 0;

              v19 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
              if (v18)
              {
                if (v19)
                {
                  [v14 uuid];
                  objc_claimAutoreleasedReturnValue();
                  sub_100208FEC();
                }

                v20 = [v14 uuid];
                -[WISOOSRecoveryMetric initializeStateForContext:isDataContext:](self, "initializeStateForContext:isDataContext:", v14, [v27 isEqual:v20]);
              }

              else if (v19)
              {
                [v14 uuid];
                objc_claimAutoreleasedReturnValue();
                sub_100208F9C();
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
          }

          while (v11);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_10020903C();
      }

      v26 = 0;
    }
  }
}

- (void)initializeStateForContext:(id)a3 isDataContext:(BOOL)a4
{
  v6 = a3;
  v7 = [(WISOOSRecoveryMetric *)self ctRelay];
  v8 = [v7 coreTelephonyClient];
  v18 = 0;
  v9 = [v8 copyRegistrationDisplayStatus:v6 error:&v18];
  v10 = v18;

  if (v10)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v10 localizedDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10020907C();
    }
  }

  else
  {
    v11 = [(WISOOSRecoveryMetric *)self ctRelay];
    v12 = [v11 coreTelephonyClient];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F353C;
    v13[3] = &unk_1002B1460;
    v14 = v6;
    v15 = self;
    v17 = a4;
    v16 = v9;
    [v12 copyCellInfo:v14 completion:v13];
  }
}

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = v8;
  if (a4 <= 5)
  {
    if (a4)
    {
      if (a4 == 3)
      {
        [(WISOOSRecoveryMetric *)self currentDataSimChanged:v10];
      }
    }

    else
    {
      [(WISOOSRecoveryMetric *)self cellMonitorUpdate:v10 info:v8];
    }
  }

  else
  {
    switch(a4)
    {
      case 8:
        [(WISOOSRecoveryMetric *)self registrationStatusChanged:v10 status:v8];
        break;
      case 7:
        -[WISOOSRecoveryMetric airplaneModeStatusChanged:](self, "airplaneModeStatusChanged:", [v8 BOOLValue]);
        break;
      case 6:
        [(WISOOSRecoveryMetric *)self subscriptionInfoDidChange];
        break;
    }
  }
}

- (void)subscriptionInfoDidChange
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100209230();
  }

  [(WISOOSRecoveryMetric *)self populateSubscriptionContextsInUse];
}

- (void)registrationStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([WISTelephonyUtils isValidContext:v6])
  {
    if (v7)
    {
      v8 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
      v9 = [v6 uuid];
      v10 = [v8 objectForKey:v9];

      if (!v10)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1002093BC();
        }

        goto LABEL_35;
      }

      v11 = [v10 registrationState];
      v12 = [v11 isEqualToString:v7];

      v13 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v13)
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_100209378();
        }

        goto LABEL_35;
      }

      if (v13)
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_100209264();
      }

      if ([(WISOOSRecoveryMetric *)self isAirplaneModeActive])
      {
        goto LABEL_34;
      }

      v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v15 = [v10 registrationState];
      if ([WISTelephonyUtils isRegistrationDisplayStatusInService:v15]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:v7])
      {
        v16 = [v10 oosStart];
        v17 = v16 == 0;

        if (v17)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
          {
            [v6 uuid];
            objc_claimAutoreleasedReturnValue();
            sub_100209334();
          }

          v18 = [OOSRecoveryMetricOOSStartState alloc];
          v19 = [v10 registrationState];
          v20 = [v10 cellInfo];
          v21 = [(OOSRecoveryMetricOOSStartState *)v18 initWithTimestamp:v14 registrationState:v19 cellInfo:v20];
          [v10 setOosStart:v21];

          goto LABEL_34;
        }
      }

      else
      {
      }

      if (!+[WISTelephonyUtils isRegistrationDisplayStatusInService:](WISTelephonyUtils, "isRegistrationDisplayStatusInService:", v7) || ([v10 oosStart], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v23))
      {
LABEL_34:
        [v10 setRegistrationState:v7];
LABEL_35:

        goto LABEL_36;
      }

      v24 = [v10 cellInfo];
      if (v24)
      {
        v25 = [v10 cellInfo];
        if ([v25 timestamp] < v14)
        {
          v29 = [v10 cellInfo];
          if (v14 - [v29 timestamp] < 0x28FA6AE00)
          {
            v28 = [v10 oosStart];
            v26 = [v28 timestamp];
            v27 = [v10 cellInfo];
            LODWORD(v26) = v26 < [v27 timestamp];

            if (v26)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
              {
                [v6 uuid];
                objc_claimAutoreleasedReturnValue();
                sub_1002092AC();
              }

              [v10 setRegistrationState:v7];
              [(WISOOSRecoveryMetric *)self handleCompletedOutOfServiceEventWithState:v10 atTime:v14];
              goto LABEL_34;
            }

            goto LABEL_32;
          }
        }
      }

LABEL_32:
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v6 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1002092F0();
      }

      goto LABEL_34;
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100209400();
    }
  }

LABEL_36:
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = a3;
  if ([WISTelephonyUtils isValidContext:v4])
  {
    v5 = [(WISOOSRecoveryMetric *)self isContextMapInitialized];
    v6 = *(qword_1002DBE98 + 48);
    if (v5)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [v4 uuid];
        objc_claimAutoreleasedReturnValue();
        sub_100209444();
      }

      v7 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000F4248;
      v9[3] = &unk_1002B1488;
      v10 = v4;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_INFO))
      {
        v8 = [v4 uuid];
        *buf = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "OOSRecoveryMetric:#I Current data context changed to %@, but we did not successfully initialize. Running initialization", buf, 0xCu);
      }

      [(WISOOSRecoveryMetric *)self populateSubscriptionContextsInUse];
    }
  }
}

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [WISTelephonyUtils isValidContext:v6];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
    v11 = [v6 uuid];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v19 = 0;
      v13 = [(WISOOSRecoveryMetric *)self extractCellInfo:v7 error:&v19];
      v14 = v19;
      v15 = *(qword_1002DBE98 + 48);
      if (v14 || !v13)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          [v14 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100209488();
        }
      }

      else
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [v6 uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1002094E4();
        }

        [v12 setCellInfo:v13];
        if (![(WISOOSRecoveryMetric *)self isAirplaneModeActive])
        {
          v16 = [v12 oosStart];
          if (v16)
          {
            v17 = [v12 registrationState];
            v18 = [WISTelephonyUtils isRegistrationDisplayStatusInService:v17];

            if (v18)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
              {
                [v6 uuid];
                objc_claimAutoreleasedReturnValue();
                sub_1002092AC();
              }

              [(WISOOSRecoveryMetric *)self handleCompletedOutOfServiceEventWithState:v12 atTime:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
            }
          }
        }
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
    {
      [v6 uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100209528();
    }
  }
}

- (void)handleCompletedOutOfServiceEventWithState:(id)a3 atTime:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 cellInfo];
  if (v6)
  {
    v7 = [v5 oosStart];
    v8 = [v7 cellInfo];
    if (v8)
    {
      v9 = [v5 oosStart];
      v10 = [v9 timestamp];

      if (v10 <= a4)
      {
        v11 = [v5 oosStart];
        v12 = [v11 timestamp];

        v77[0] = @"dataContext";
        v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDataContext]);
        v78[0] = v66;
        v77[1] = @"duration";
        v64 = [NSNumber numberWithUnsignedLongLong:(a4 - v12) / 0x3B9ACA00];
        v78[1] = v64;
        v77[2] = @"sameRAT";
        v65 = [v5 oosStart];
        v63 = [v65 cellInfo];
        v73 = [v63 rat];
        v67 = [v5 cellInfo];
        v68 = [v67 rat];
        v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v73 isEqualToString:?]);
        v78[2] = v60;
        v77[3] = @"sameTAC";
        v59 = [v5 oosStart];
        v58 = [v59 cellInfo];
        v72 = [v58 tacOrLac];
        v61 = [v5 cellInfo];
        v62 = [v61 tacOrLac];
        v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v72 isEqualToNumber:?]);
        v78[3] = v55;
        v77[4] = @"sameCell";
        v54 = [v5 oosStart];
        v53 = [v54 cellInfo];
        v71 = [v53 gci];
        v56 = [v5 cellInfo];
        v57 = [v56 gci];
        v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v71 isEqualToString:?]);
        v78[4] = v49;
        v77[5] = @"knownOOSTAC";
        v70 = [v5 knownOosTacs];
        v50 = [v5 oosStart];
        v51 = [v50 cellInfo];
        v52 = [v51 tacOrLac];
        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v70 containsObject:?]);
        v78[5] = v45;
        v77[6] = @"knownOOSCell";
        v69 = [v5 knownOosGcis];
        v46 = [v5 oosStart];
        v47 = [v46 cellInfo];
        v48 = [v47 gci];
        v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v69 containsObject:?]);
        v78[6] = v37;
        v77[7] = @"ratBefore";
        v36 = [v5 oosStart];
        v44 = [v36 cellInfo];
        v43 = [v44 rat];
        v78[7] = v43;
        v77[8] = @"ratAfter";
        v42 = [v5 cellInfo];
        v41 = [v42 rat];
        v78[8] = v41;
        v77[9] = @"registrationStateBefore";
        v40 = [v5 oosStart];
        v39 = [v40 registrationState];
        v38 = [WISTelephonyUtils getShortenedRegistrationStateString:?];
        v78[9] = v38;
        v77[10] = @"registrationStateAfter";
        v13 = [v5 registrationState];
        v14 = [WISTelephonyUtils getShortenedRegistrationStateString:v13];
        v78[10] = v14;
        v77[11] = @"bandBefore";
        v15 = [v5 oosStart];
        v16 = [v15 cellInfo];
        v17 = [v16 band];
        v78[11] = v17;
        v77[12] = @"bandAfter";
        v18 = [v5 cellInfo];
        v19 = [v18 band];
        v78[12] = v19;
        v77[13] = @"oosTACCacheFull";
        v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 knownOosTacsSizeLimited]);
        v78[13] = v20;
        v77[14] = @"oosCellCacheFull";
        v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 knownOosGcisSizeLimited]);
        v78[14] = v21;
        v35 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:15];

        v22 = [NSString stringWithUTF8String:"com.apple.Telephony.cellularOutOfService"];
        v75[0] = _NSConcreteStackBlock;
        v75[1] = 3221225472;
        v75[2] = sub_1000F533C;
        v75[3] = &unk_1002AB460;
        v23 = v35;
        v76 = v23;
        sub_1000158DC(v22, v75);

        v24 = [v5 oosStart];
        v25 = [v24 cellInfo];
        v26 = [v25 tacOrLac];
        v27 = [v5 knownOosTacs];
        LODWORD(v16) = [(WISOOSRecoveryMetric *)self insertOrMoveObject:v26 InMutableOrderedSet:v27 WithSizeLimit:25];

        if (v16)
        {
          [v5 setKnownOosTacsSizeLimited:1];
        }

        v28 = [v5 oosStart];
        v29 = [v28 cellInfo];
        v30 = [v29 gci];
        v31 = [v5 knownOosGcis];
        v32 = [(WISOOSRecoveryMetric *)self insertOrMoveObject:v30 InMutableOrderedSet:v31 WithSizeLimit:25];

        if (v32)
        {
          [v5 setKnownOosGcisSizeLimited:1];
        }

        v33 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_100209628(v5, v33, v34);
        }

        [v5 setOosStart:0];

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
  {
    sub_100209698();
  }

  [v5 setOosStart:0];
LABEL_15:
}

- (BOOL)insertOrMoveObject:(id)a3 InMutableOrderedSet:(id)a4 WithSizeLimit:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 indexOfObject:v7];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addObject:v7];
    v10 = 0;
    while ([v8 count] > a5)
    {
      v10 = 1;
      [v8 removeObjectAtIndex:0];
    }
  }

  else
  {
    v11 = [NSIndexSet indexSetWithIndex:v9];
    [v8 moveObjectsAtIndexes:v11 toIndex:{objc_msgSend(v8, "count") - 1}];

    v10 = 0;
  }

  return v10 & 1;
}

- (id)extractCellInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [WISTelephonyUtils getServingCellInfo:v5];
  v7 = [WISTelephonyUtils getBandFromCellInfo:v6 error:a4];
  v8 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a4];
  if (v8)
  {
    v9 = [WISTelephonyUtils getRATFromCellMonitorString:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([WISTelephonyUtils isLteRat:v8])
  {
    v25 = 0;
    v10 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:&v25];
    v11 = v25;
    if (!v11 && v10)
    {
      if ([v10 isEqualToNumber:&off_1002BF1F8] & 1) != 0 || (objc_msgSend(v10, "isEqualToNumber:", &off_1002BF210))
      {
        v11 = 0;
      }

      else
      {
        v23 = [NSString stringWithUTF8String:"NR_NSA"];

        v12 = [WISTelephonyUtils getMAVNRNSANeighborCellInfo:v5];
        v24 = 0;
        v13 = [WISTelephonyUtils getBandFromCellInfo:v12 error:&v24];
        v11 = v24;
        if (!v11 && v13)
        {
          v22 = v13;

          v7 = v22;
        }

        v9 = v23;
      }
    }
  }

  v14 = [WISTelephonyUtils getLacOrTacFromCellInfo:v6 error:a4, v22];
  v15 = [WISTelephonyUtils getGciFromCellInfo:v6 error:a4];
  v16 = v15;
  v17 = *a4;
  if (!*a4 && v9 && v7 && v14 && v15)
  {
    v18 = [[OOSRecoveryMetricCellInfo alloc] initWithTimestamp:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) rat:v9 tacOrLac:v14 gci:v15 band:v7];
  }

  else
  {
    v19 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v17 localizedDescription];
      *buf = 138413570;
      v27 = v21;
      v28 = 2048;
      v29 = v6;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v7;
      v34 = 2048;
      v35 = v14;
      v36 = 2048;
      v37 = v16;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "OOSRecoveryMetric:#D Cell info extraction failed. Error %@, servingCellInfo %p, rat %p, band %p, tacOrLac %p, gci %p", buf, 0x3Eu);
    }

    v18 = 0;
  }

  return v18;
}

- (id)findContextsToDelete:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) uuid];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [v11 copy];

  return v17;
}

@end
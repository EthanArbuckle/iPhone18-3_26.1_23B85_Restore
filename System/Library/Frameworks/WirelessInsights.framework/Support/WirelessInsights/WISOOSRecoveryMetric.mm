@interface WISOOSRecoveryMetric
+ (id)getSharedInstance;
- (BOOL)insertOrMoveObject:(id)object InMutableOrderedSet:(id)set WithSizeLimit:(unint64_t)limit;
- (WISOOSRecoveryMetric)init;
- (id)extractCellInfo:(id)info error:(id *)error;
- (id)findContextsToDelete:(id)delete;
- (void)cellMonitorUpdate:(id)update info:(id)info;
- (void)currentDataSimChanged:(id)changed;
- (void)handleCompletedOutOfServiceEventWithState:(id)state atTime:(unint64_t)time;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)initializeStateForContext:(id)context isDataContext:(BOOL)dataContext;
- (void)populateSubscriptionContextsInUse;
- (void)registrationStatusChanged:(id)changed status:(id)status;
- (void)subscriptionInfoDidChange;
@end

@implementation WISOOSRecoveryMetric

+ (id)getSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2BC8;
  block[3] = &unk_1002AB480;
  block[4] = self;
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
    queue = [(WISOOSRecoveryMetric *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F2D48;
    block[3] = &unk_1002AB4D0;
    v5 = v2;
    v9 = v5;
    dispatch_async(queue, block);
    v6 = v5;
  }

  return v2;
}

- (void)populateSubscriptionContextsInUse
{
  ctRelay = [(WISOOSRecoveryMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v33 = 0;
  v25 = [coreTelephonyClient getSubscriptionInfoWithError:&v33];
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
    subscriptionsInUse = [v25 subscriptionsInUse];
    v24 = [WISTelephonyUtils sanitizedSubscriptions:subscriptionsInUse];

    if (v24)
    {
      ctRelay2 = [(WISOOSRecoveryMetric *)self ctRelay];
      coreTelephonyClient2 = [ctRelay2 coreTelephonyClient];
      v32 = 0;
      v23 = [coreTelephonyClient2 getCurrentDataSubscriptionContextSync:&v32];
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
        uuid = [v23 uuid];
        v21 = [(WISOOSRecoveryMetric *)self findContextsToDelete:v24];
        v8 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_100208F50(v35, [v21 count], objc_msgSend(v24, "count"), v8);
        }

        contextUUIDToStateMap = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
        [contextUUIDToStateMap removeObjectsForKeys:v22];

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
              contextUUIDToStateMap2 = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
              uuid2 = [v14 uuid];
              v17 = [contextUUIDToStateMap2 objectForKey:uuid2];
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

                uuid3 = [v14 uuid];
                -[WISOOSRecoveryMetric initializeStateForContext:isDataContext:](self, "initializeStateForContext:isDataContext:", v14, [uuid isEqual:uuid3]);
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

- (void)initializeStateForContext:(id)context isDataContext:(BOOL)dataContext
{
  contextCopy = context;
  ctRelay = [(WISOOSRecoveryMetric *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v18 = 0;
  v9 = [coreTelephonyClient copyRegistrationDisplayStatus:contextCopy error:&v18];
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
    ctRelay2 = [(WISOOSRecoveryMetric *)self ctRelay];
    coreTelephonyClient2 = [ctRelay2 coreTelephonyClient];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F353C;
    v13[3] = &unk_1002B1460;
    v14 = contextCopy;
    selfCopy = self;
    dataContextCopy = dataContext;
    v16 = v9;
    [coreTelephonyClient2 copyCellInfo:v14 completion:v13];
  }
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  v9 = stateCopy;
  if (key <= 5)
  {
    if (key)
    {
      if (key == 3)
      {
        [(WISOOSRecoveryMetric *)self currentDataSimChanged:updateCopy];
      }
    }

    else
    {
      [(WISOOSRecoveryMetric *)self cellMonitorUpdate:updateCopy info:stateCopy];
    }
  }

  else
  {
    switch(key)
    {
      case 8:
        [(WISOOSRecoveryMetric *)self registrationStatusChanged:updateCopy status:stateCopy];
        break;
      case 7:
        -[WISOOSRecoveryMetric airplaneModeStatusChanged:](self, "airplaneModeStatusChanged:", [stateCopy BOOLValue]);
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

- (void)registrationStatusChanged:(id)changed status:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  if ([WISTelephonyUtils isValidContext:changedCopy])
  {
    if (statusCopy)
    {
      contextUUIDToStateMap = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
      uuid = [changedCopy uuid];
      v10 = [contextUUIDToStateMap objectForKey:uuid];

      if (!v10)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
        {
          [changedCopy uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1002093BC();
        }

        goto LABEL_35;
      }

      registrationState = [v10 registrationState];
      v12 = [registrationState isEqualToString:statusCopy];

      v13 = os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v13)
        {
          [changedCopy uuid];
          objc_claimAutoreleasedReturnValue();
          sub_100209378();
        }

        goto LABEL_35;
      }

      if (v13)
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_100209264();
      }

      if ([(WISOOSRecoveryMetric *)self isAirplaneModeActive])
      {
        goto LABEL_34;
      }

      v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      registrationState2 = [v10 registrationState];
      if ([WISTelephonyUtils isRegistrationDisplayStatusInService:registrationState2]&& [WISTelephonyUtils isRegistrationDisplayStatusOutOfService:statusCopy])
      {
        oosStart = [v10 oosStart];
        v17 = oosStart == 0;

        if (v17)
        {
          if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
          {
            [changedCopy uuid];
            objc_claimAutoreleasedReturnValue();
            sub_100209334();
          }

          v18 = [OOSRecoveryMetricOOSStartState alloc];
          registrationState3 = [v10 registrationState];
          cellInfo = [v10 cellInfo];
          v21 = [(OOSRecoveryMetricOOSStartState *)v18 initWithTimestamp:v14 registrationState:registrationState3 cellInfo:cellInfo];
          [v10 setOosStart:v21];

          goto LABEL_34;
        }
      }

      else
      {
      }

      if (!+[WISTelephonyUtils isRegistrationDisplayStatusInService:](WISTelephonyUtils, "isRegistrationDisplayStatusInService:", statusCopy) || ([v10 oosStart], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == 0, v22, v23))
      {
LABEL_34:
        [v10 setRegistrationState:statusCopy];
LABEL_35:

        goto LABEL_36;
      }

      cellInfo2 = [v10 cellInfo];
      if (cellInfo2)
      {
        cellInfo3 = [v10 cellInfo];
        if ([cellInfo3 timestamp] < v14)
        {
          cellInfo4 = [v10 cellInfo];
          if (v14 - [cellInfo4 timestamp] < 0x28FA6AE00)
          {
            oosStart2 = [v10 oosStart];
            timestamp = [oosStart2 timestamp];
            cellInfo5 = [v10 cellInfo];
            LODWORD(timestamp) = timestamp < [cellInfo5 timestamp];

            if (timestamp)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
              {
                [changedCopy uuid];
                objc_claimAutoreleasedReturnValue();
                sub_1002092AC();
              }

              [v10 setRegistrationState:statusCopy];
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
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_1002092F0();
      }

      goto LABEL_34;
    }

    if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      [changedCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100209400();
    }
  }

LABEL_36:
}

- (void)currentDataSimChanged:(id)changed
{
  changedCopy = changed;
  if ([WISTelephonyUtils isValidContext:changedCopy])
  {
    isContextMapInitialized = [(WISOOSRecoveryMetric *)self isContextMapInitialized];
    v6 = *(qword_1002DBE98 + 48);
    if (isContextMapInitialized)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
      {
        [changedCopy uuid];
        objc_claimAutoreleasedReturnValue();
        sub_100209444();
      }

      contextUUIDToStateMap = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000F4248;
      v9[3] = &unk_1002B1488;
      v10 = changedCopy;
      [contextUUIDToStateMap enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_INFO))
      {
        uuid = [changedCopy uuid];
        *buf = 138412290;
        v12 = uuid;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "OOSRecoveryMetric:#I Current data context changed to %@, but we did not successfully initialize. Running initialization", buf, 0xCu);
      }

      [(WISOOSRecoveryMetric *)self populateSubscriptionContextsInUse];
    }
  }
}

- (void)cellMonitorUpdate:(id)update info:(id)info
{
  updateCopy = update;
  infoCopy = info;
  v8 = [WISTelephonyUtils isValidContext:updateCopy];
  if (infoCopy)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    contextUUIDToStateMap = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
    uuid = [updateCopy uuid];
    v12 = [contextUUIDToStateMap objectForKey:uuid];

    if (v12)
    {
      v19 = 0;
      v13 = [(WISOOSRecoveryMetric *)self extractCellInfo:infoCopy error:&v19];
      v14 = v19;
      v15 = *(qword_1002DBE98 + 48);
      if (v14 || !v13)
      {
        if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
        {
          [updateCopy uuid];
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
          [updateCopy uuid];
          objc_claimAutoreleasedReturnValue();
          sub_1002094E4();
        }

        [v12 setCellInfo:v13];
        if (![(WISOOSRecoveryMetric *)self isAirplaneModeActive])
        {
          oosStart = [v12 oosStart];
          if (oosStart)
          {
            registrationState = [v12 registrationState];
            v18 = [WISTelephonyUtils isRegistrationDisplayStatusInService:registrationState];

            if (v18)
            {
              if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_DEBUG))
              {
                [updateCopy uuid];
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
      [updateCopy uuid];
      objc_claimAutoreleasedReturnValue();
      sub_100209528();
    }
  }
}

- (void)handleCompletedOutOfServiceEventWithState:(id)state atTime:(unint64_t)time
{
  stateCopy = state;
  cellInfo = [stateCopy cellInfo];
  if (cellInfo)
  {
    oosStart = [stateCopy oosStart];
    cellInfo2 = [oosStart cellInfo];
    if (cellInfo2)
    {
      oosStart2 = [stateCopy oosStart];
      timestamp = [oosStart2 timestamp];

      if (timestamp <= time)
      {
        oosStart3 = [stateCopy oosStart];
        timestamp2 = [oosStart3 timestamp];

        v77[0] = @"dataContext";
        v66 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [stateCopy isDataContext]);
        v78[0] = v66;
        v77[1] = @"duration";
        0x3B9ACA00 = [NSNumber numberWithUnsignedLongLong:(time - timestamp2) / 0x3B9ACA00];
        v78[1] = 0x3B9ACA00;
        v77[2] = @"sameRAT";
        oosStart4 = [stateCopy oosStart];
        cellInfo3 = [oosStart4 cellInfo];
        v73 = [cellInfo3 rat];
        cellInfo4 = [stateCopy cellInfo];
        v68 = [cellInfo4 rat];
        v60 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v73 isEqualToString:?]);
        v78[2] = v60;
        v77[3] = @"sameTAC";
        oosStart5 = [stateCopy oosStart];
        cellInfo5 = [oosStart5 cellInfo];
        tacOrLac = [cellInfo5 tacOrLac];
        cellInfo6 = [stateCopy cellInfo];
        tacOrLac2 = [cellInfo6 tacOrLac];
        v55 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [tacOrLac isEqualToNumber:?]);
        v78[3] = v55;
        v77[4] = @"sameCell";
        oosStart6 = [stateCopy oosStart];
        cellInfo7 = [oosStart6 cellInfo];
        v71 = [cellInfo7 gci];
        cellInfo8 = [stateCopy cellInfo];
        v57 = [cellInfo8 gci];
        v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v71 isEqualToString:?]);
        v78[4] = v49;
        v77[5] = @"knownOOSTAC";
        knownOosTacs = [stateCopy knownOosTacs];
        oosStart7 = [stateCopy oosStart];
        cellInfo9 = [oosStart7 cellInfo];
        tacOrLac3 = [cellInfo9 tacOrLac];
        v45 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [knownOosTacs containsObject:?]);
        v78[5] = v45;
        v77[6] = @"knownOOSCell";
        knownOosGcis = [stateCopy knownOosGcis];
        oosStart8 = [stateCopy oosStart];
        cellInfo10 = [oosStart8 cellInfo];
        v48 = [cellInfo10 gci];
        v37 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [knownOosGcis containsObject:?]);
        v78[6] = v37;
        v77[7] = @"ratBefore";
        oosStart9 = [stateCopy oosStart];
        cellInfo11 = [oosStart9 cellInfo];
        v43 = [cellInfo11 rat];
        v78[7] = v43;
        v77[8] = @"ratAfter";
        cellInfo12 = [stateCopy cellInfo];
        v41 = [cellInfo12 rat];
        v78[8] = v41;
        v77[9] = @"registrationStateBefore";
        oosStart10 = [stateCopy oosStart];
        registrationState = [oosStart10 registrationState];
        v38 = [WISTelephonyUtils getShortenedRegistrationStateString:?];
        v78[9] = v38;
        v77[10] = @"registrationStateAfter";
        registrationState2 = [stateCopy registrationState];
        v14 = [WISTelephonyUtils getShortenedRegistrationStateString:registrationState2];
        v78[10] = v14;
        v77[11] = @"bandBefore";
        oosStart11 = [stateCopy oosStart];
        cellInfo13 = [oosStart11 cellInfo];
        band = [cellInfo13 band];
        v78[11] = band;
        v77[12] = @"bandAfter";
        cellInfo14 = [stateCopy cellInfo];
        band2 = [cellInfo14 band];
        v78[12] = band2;
        v77[13] = @"oosTACCacheFull";
        v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [stateCopy knownOosTacsSizeLimited]);
        v78[13] = v20;
        v77[14] = @"oosCellCacheFull";
        v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [stateCopy knownOosGcisSizeLimited]);
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

        oosStart12 = [stateCopy oosStart];
        cellInfo15 = [oosStart12 cellInfo];
        tacOrLac4 = [cellInfo15 tacOrLac];
        knownOosTacs2 = [stateCopy knownOosTacs];
        LODWORD(cellInfo13) = [(WISOOSRecoveryMetric *)self insertOrMoveObject:tacOrLac4 InMutableOrderedSet:knownOosTacs2 WithSizeLimit:25];

        if (cellInfo13)
        {
          [stateCopy setKnownOosTacsSizeLimited:1];
        }

        oosStart13 = [stateCopy oosStart];
        cellInfo16 = [oosStart13 cellInfo];
        v30 = [cellInfo16 gci];
        knownOosGcis2 = [stateCopy knownOosGcis];
        v32 = [(WISOOSRecoveryMetric *)self insertOrMoveObject:v30 InMutableOrderedSet:knownOosGcis2 WithSizeLimit:25];

        if (v32)
        {
          [stateCopy setKnownOosGcisSizeLimited:1];
        }

        v33 = *(qword_1002DBE98 + 48);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_100209628(stateCopy, v33, v34);
        }

        [stateCopy setOosStart:0];

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

  [stateCopy setOosStart:0];
LABEL_15:
}

- (BOOL)insertOrMoveObject:(id)object InMutableOrderedSet:(id)set WithSizeLimit:(unint64_t)limit
{
  objectCopy = object;
  setCopy = set;
  v9 = [setCopy indexOfObject:objectCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [setCopy addObject:objectCopy];
    v10 = 0;
    while ([setCopy count] > limit)
    {
      v10 = 1;
      [setCopy removeObjectAtIndex:0];
    }
  }

  else
  {
    v11 = [NSIndexSet indexSetWithIndex:v9];
    [setCopy moveObjectsAtIndexes:v11 toIndex:{objc_msgSend(setCopy, "count") - 1}];

    v10 = 0;
  }

  return v10 & 1;
}

- (id)extractCellInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [WISTelephonyUtils getServingCellInfo:infoCopy];
  v7 = [WISTelephonyUtils getBandFromCellInfo:v6 error:error];
  v8 = [WISTelephonyUtils extractCellInfoValue:v6 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
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

        v12 = [WISTelephonyUtils getMAVNRNSANeighborCellInfo:infoCopy];
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

  v14 = [WISTelephonyUtils getLacOrTacFromCellInfo:v6 error:error, v22];
  v15 = [WISTelephonyUtils getGciFromCellInfo:v6 error:error];
  v16 = v15;
  v17 = *error;
  if (!*error && v9 && v7 && v14 && v15)
  {
    v18 = [[OOSRecoveryMetricCellInfo alloc] initWithTimestamp:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) rat:v9 tacOrLac:v14 gci:v15 band:v7];
  }

  else
  {
    v19 = *(qword_1002DBE98 + 48);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription = [v17 localizedDescription];
      *buf = 138413570;
      v27 = localizedDescription;
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

- (id)findContextsToDelete:(id)delete
{
  deleteCopy = delete;
  v5 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = deleteCopy;
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

        uuid = [*(*(&v23 + 1) + 8 * i) uuid];
        [v5 addObject:uuid];
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
  contextUUIDToStateMap = [(WISOOSRecoveryMetric *)self contextUUIDToStateMap];
  v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(contextUUIDToStateMap);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        if (([v5 containsObject:v16] & 1) == 0)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [contextUUIDToStateMap countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  v17 = [v11 copy];

  return v17;
}

@end
@interface PDASMSyncOperation
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)processResponseZone:(id)zone;
- (BOOL)wantsToExecute;
- (PDASMSyncOperation)initWithDatabase:(id)database;
- (id)requestData;
- (void)abortWithError:(id)error;
- (void)execute;
- (void)prepare;
- (void)rescheduleOperation;
@end

@implementation PDASMSyncOperation

- (PDASMSyncOperation)initWithDatabase:(id)database
{
  v4.receiver = self;
  v4.super_class = PDASMSyncOperation;
  result = [(PDASMPayloadOperation *)&v4 initWithDatabase:database];
  if (result)
  {
    BYTE2(result->_initialSyncZoneNames) = 1;
  }

  return result;
}

- (void)prepare
{
  v20.receiver = self;
  v20.super_class = PDASMSyncOperation;
  [(PDAsyncOperation *)&v20 prepare];
  if (!-[PDOperation isFinished](self, "isFinished") && ![*(&self->super._unresolvedMissingEntityIDs + 2) count])
  {
    database = [(PDOperation *)self database];
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_class();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1001344BC;
    v17 = &unk_100205F10;
    v7 = v4;
    v18 = v7;
    v8 = v5;
    v19 = v8;
    [database selectAll:v6 block:&v14];
    objc_storeStrong((&self->super._unresolvedMissingEntityIDs + 2), v4);
    objc_storeStrong((&self->_zoneNames + 2), v5);
    if ([*(&self->_zoneNames + 2) count])
    {
      sub_100169F38(database, 1, @"initialASMSyncRequired");
      CLSInitLog();
      logSubsystem = [(PDASMSyncOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        operationID = [(PDURLRequestOperation *)self operationID];
        *buf = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = operationID;
        _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Initial ASM sync required.", buf, 0x16u);
      }

      v13 = +[NSDate now];
      sub_10016A5AC(database, v13, @"initialASMSyncStartDate");
    }
  }
}

- (void)execute
{
  if (![(PDASMSyncOperation *)self wantsToExecute])
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
  }

  v3.receiver = self;
  v3.super_class = PDASMSyncOperation;
  [(PDEndpointRequestOperation *)&v3 execute];
  BYTE2(self->_initialSyncZoneNames) = 0;
}

- (BOOL)wantsToExecute
{
  v3 = (BYTE2(self->_initialSyncZoneNames) & 1) != 0 || [*(&self->super._unresolvedMissingEntityIDs + 2) count] != 0;
  database = [(PDOperation *)self database];
  v5 = sub_1000BA854(database);
  v6 = v5;
  if (!v5)
  {
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((v3 & ~*(v5 + 14) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (!sub_100169FD0(database, @"initialASMSyncRequired") || (sub_1000507D8(database) & 1) != 0 || (sub_100050844(database) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    CLSInitLog();
    logSubsystem = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      operationID = [(PDURLRequestOperation *)self operationID];
      v12 = BYTE2(self->_initialSyncZoneNames);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = operationID;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Initial ASM sync in progress but deferring. firstRun: %d", &v14, 0x1Cu);
    }

    v7 = BYTE2(self->_initialSyncZoneNames);
  }

LABEL_15:

  return v7 & 1;
}

- (id)requestData
{
  selfCopy = self;
  if ([(PDOperation *)self isAborted])
  {
    data = 0;
    goto LABEL_25;
  }

  endpointInfo = [(PDEndpointRequestOperation *)selfCopy endpointInfo];
  if (endpointInfo)
  {
    v5 = endpointInfo[8];

    if (v5 < 1)
    {
      v6 = 1000;
      goto LABEL_9;
    }

    endpointInfo = [(PDEndpointRequestOperation *)selfCopy endpointInfo];
    if (endpointInfo)
    {
      v6 = *(endpointInfo + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1000;
  }

LABEL_9:
  v7 = objc_alloc_init(PDDPEESyncRequest);
  database = [(PDOperation *)selfCopy database];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = *(&selfCopy->super._unresolvedMissingEntityIDs + 2);
  v38 = database;
  v41 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v41)
  {
    v10 = *v43;
    v37 = v7;
    v36 = v6;
    v35 = v9;
    v40 = *v43;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = [database select:objc_opt_class() identity:*(*(&v42 + 1) + 8 * i)];
        v13 = sub_100084548(v12);
        [v13 setLimit:v6];
        [(PDDPEESyncRequest *)v7 addRequestZones:v13];
        if ([v13 hasCursor])
        {
          CLSInitLog();
          logSubsystem = [(PDASMSyncOperation *)selfCopy logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            v39 = v15;
            operationID = [(PDURLRequestOperation *)selfCopy operationID];
            zoneName = [v13 zoneName];
            [v13 cursor];
            v19 = v18 = selfCopy;
            v20 = [v19 base64EncodedStringWithOptions:0];
            *buf = 138544130;
            v47 = v15;
            database = v38;
            v48 = 2114;
            v49 = operationID;
            v50 = 2112;
            *v51 = zoneName;
            *&v51[8] = 2112;
            v52 = v20;
            _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ cursor: %@", buf, 0x2Au);

            selfCopy = v18;
            v7 = v37;

            v9 = v35;
            v6 = v36;
          }

          v10 = v40;
        }
      }

      v41 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v41);
  }

  [*(&selfCopy->super._unresolvedMissingEntityIDs + 2) removeAllObjects];
  CLSInitLog();
  logSubsystem2 = [(PDASMSyncOperation *)selfCopy logSubsystem];
  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
  {
    v24 = objc_opt_class();
    v25 = v24;
    operationID2 = [(PDURLRequestOperation *)selfCopy operationID];
    v27 = sub_100169FD0(database, @"initialASMSyncRequired");
    v28 = selfCopy;
    v29 = sub_100169FD0(v38, @"initialASMSyncComplete");
    v30 = sub_100169FD0(v38, @"initialOrionSyncComplete");
    *buf = 138544386;
    v47 = v24;
    v48 = 2114;
    v49 = operationID2;
    v50 = 1024;
    *v51 = v27;
    database = v38;
    *&v51[4] = 1024;
    *&v51[6] = v29;
    selfCopy = v28;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = v30;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync request: initialASMSyncRequired:%d initialASMSyncComplete:%d initialOrionSyncComplete:%d", buf, 0x28u);
  }

  CLSInitLog();
  logSubsystem3 = [(PDASMSyncOperation *)selfCopy logSubsystem];
  if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
  {
    v31 = objc_opt_class();
    v32 = v31;
    operationID3 = [(PDURLRequestOperation *)selfCopy operationID];
    dictionaryRepresentation = [(PDDPEESyncRequest *)v7 dictionaryRepresentation];
    *buf = 138543874;
    v47 = v31;
    v48 = 2114;
    v49 = operationID3;
    v50 = 2114;
    *v51 = dictionaryRepresentation;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync request: %{public}@", buf, 0x20u);

    database = v38;
  }

  data = [(PDDPEESyncRequest *)v7 data];

LABEL_25:

  return data;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  v28.receiver = self;
  v28.super_class = PDASMSyncOperation;
  v5 = [(PDASMPayloadOperation *)&v28 processResponseObject:object error:error];
  database = [(PDOperation *)self database];
  v7 = database;
  if (v5)
  {
    if (!sub_1000507D8(database))
    {
      v8 = sub_10016A160(v7, @"initialASMSyncRoundTripCount");
      sub_10016A0C8(v7, v8 + 1, @"initialASMSyncRoundTripCount");
      if (![*(&self->super._unresolvedMissingEntityIDs + 2) count])
      {
        sub_100169F38(v7, 0, @"initialASMSyncRequired");
        sub_100169F38(v7, 1, @"initialASMSyncComplete");
        v9 = +[NSDate date];
        sub_10016A5AC(v7, v9, CLSSyncInitialRosterSyncDateKey);

        v10 = +[NSNotificationCenter defaultCenter];
        [v10 postNotificationName:CLSInitialServerSyncCompleteNotificationName object:0 userInfo:0];

        CLSInitLog();
        logSubsystem = [(PDASMSyncOperation *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = v12;
          operationID = [(PDURLRequestOperation *)self operationID];
          *buf = 138543618;
          v30 = v12;
          v31 = 2114;
          v32 = operationID;
          _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Sync Initial ASM sync complete", buf, 0x16u);
        }

        v15 = sub_1000B51E4();
        v16 = sub_1000B51E4();
        v17 = +[NSDate now];
        v18 = sub_1000B5A58(v16, v17, v7);
        sub_1000B5E40(v15, v18, v7);
      }
    }

    if (![*(&self->super._unresolvedMissingEntityIDs + 2) count])
    {
      v19 = +[NSDate date];
      sub_10016A5AC(v7, v19, CLSSyncLatestRosterSyncDateKey);
    }
  }

  CLSInitLog();
  logSubsystem2 = [(PDASMSyncOperation *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = v22;
    operationID2 = [(PDURLRequestOperation *)self operationID];
    v25 = sub_100169FD0(v7, @"initialASMSyncRequired");
    v26 = sub_100169FD0(v7, @"initialASMSyncComplete");
    v27 = sub_100169FD0(v7, @"initialOrionSyncComplete");
    *buf = 138544386;
    v30 = v22;
    v31 = 2114;
    v32 = operationID2;
    v33 = 1024;
    v34 = v25;
    v35 = 1024;
    v36 = v26;
    v37 = 1024;
    v38 = v27;
    _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync response: initialASMSyncRequired:%d initialASMSyncComplete:%d initialOrionSyncComplete:%d", buf, 0x28u);
  }

  return v5;
}

- (BOOL)processResponseZone:(id)zone
{
  zoneCopy = zone;
  database = [(PDOperation *)self database];
  v6 = sub_100084618(zoneCopy);
  status = [zoneCopy status];
  code = [status code];

  status2 = [zoneCopy status];
  code2 = [status2 code];

  if ([zoneCopy hasCursor])
  {
    CLSInitLog();
    logSubsystem = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v40 = v12;
      [(PDURLRequestOperation *)self operationID];
      v13 = v41 = v6;
      zoneName = [zoneCopy zoneName];
      [zoneCopy cursor];
      v15 = v42 = database;
      v16 = [v15 base64EncodedStringWithOptions:0];
      *buf = 138544130;
      v45 = v12;
      v46 = 2114;
      v47 = v13;
      v48 = 2112;
      v49 = zoneName;
      v50 = 2112;
      v51 = v16;
      _os_log_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ cursor: %@", buf, 0x2Au);

      database = v42;
      v6 = v41;
    }
  }

  if (code2 == 111)
  {
    CLSInitLog();
    logSubsystem2 = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_opt_class();
      v33 = v32;
      operationID = [(PDURLRequestOperation *)self operationID];
      zoneName2 = [zoneCopy zoneName];
      *buf = 138543874;
      v45 = v32;
      v46 = 2114;
      v47 = operationID;
      v48 = 2112;
      v49 = zoneName2;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ zone access denied: %@", buf, 0x20u);
    }

    if (v6)
    {
      v18 = v6[1];
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v43.receiver = self;
    v43.super_class = PDASMSyncOperation;
    v20 = [(PDASMPayloadOperation *)&v43 handleZoneRemoved:v19];

    if (v20)
    {
      v21 = *(&self->super._unresolvedMissingEntityIDs + 2);
      zoneName3 = [zoneCopy zoneName];
      [v21 removeObject:zoneName3];

      v23 = *(&self->_zoneNames + 2);
      zoneName4 = [zoneCopy zoneName];
      [v23 removeObject:zoneName4];

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (code == 4)
    {
      CLSInitLog();
      logSubsystem3 = [(PDASMSyncOperation *)self logSubsystem];
      if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
      {
        v36 = objc_opt_class();
        v37 = v36;
        operationID2 = [(PDURLRequestOperation *)self operationID];
        zoneName5 = [zoneCopy zoneName];
        *buf = 138543874;
        v45 = v36;
        v46 = 2114;
        v47 = operationID2;
        v48 = 2112;
        v49 = zoneName5;
        _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ zone: %@ has more data", buf, 0x20u);
      }

      v27 = *(&self->super._unresolvedMissingEntityIDs + 2);
      if (v6)
      {
        v28 = v6[1];
      }

      else
      {
        v28 = 0;
      }

      zoneName6 = v28;
      [v27 addObject:zoneName6];
    }

    else
    {
      v30 = *(&self->_zoneNames + 2);
      zoneName6 = [zoneCopy zoneName];
      [v30 removeObject:zoneName6];
    }

    v25 = [database insertOrUpdateObject:v6];
  }

  return v25;
}

- (void)rescheduleOperation
{
  manager = [(PDOperation *)self manager];
  sub_10012175C(manager, 0);

  v4.receiver = self;
  v4.super_class = PDASMSyncOperation;
  [(PDURLRequestOperation *)&v4 rescheduleOperation];
}

- (void)abortWithError:(id)error
{
  errorCopy = error;
  database = [(PDOperation *)self database];
  v6 = +[NSDate date];
  sub_10016A5AC(database, v6, CLSSyncLatestRosterSyncFailureDateKey);

  v7.receiver = self;
  v7.super_class = PDASMSyncOperation;
  [(PDURLRequestOperation *)&v7 abortWithError:errorCopy];
}

@end
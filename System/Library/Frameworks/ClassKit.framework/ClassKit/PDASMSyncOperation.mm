@interface PDASMSyncOperation
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)processResponseZone:(id)a3;
- (BOOL)wantsToExecute;
- (PDASMSyncOperation)initWithDatabase:(id)a3;
- (id)requestData;
- (void)abortWithError:(id)a3;
- (void)execute;
- (void)prepare;
- (void)rescheduleOperation;
@end

@implementation PDASMSyncOperation

- (PDASMSyncOperation)initWithDatabase:(id)a3
{
  v4.receiver = self;
  v4.super_class = PDASMSyncOperation;
  result = [(PDASMPayloadOperation *)&v4 initWithDatabase:a3];
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
    v3 = [(PDOperation *)self database];
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
    [v3 selectAll:v6 block:&v14];
    objc_storeStrong((&self->super._unresolvedMissingEntityIDs + 2), v4);
    objc_storeStrong((&self->_zoneNames + 2), v5);
    if ([*(&self->_zoneNames + 2) count])
    {
      sub_100169F38(v3, 1, @"initialASMSyncRequired");
      CLSInitLog();
      v9 = [(PDASMSyncOperation *)self logSubsystem];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = [(PDURLRequestOperation *)self operationID];
        *buf = 138543618;
        v22 = v10;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Initial ASM sync required.", buf, 0x16u);
      }

      v13 = +[NSDate now];
      sub_10016A5AC(v3, v13, @"initialASMSyncStartDate");
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
  v4 = [(PDOperation *)self database];
  v5 = sub_1000BA854(v4);
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
  if (!sub_100169FD0(v4, @"initialASMSyncRequired") || (sub_1000507D8(v4) & 1) != 0 || (sub_100050844(v4) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    CLSInitLog();
    v8 = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [(PDURLRequestOperation *)self operationID];
      v12 = BYTE2(self->_initialSyncZoneNames);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Initial ASM sync in progress but deferring. firstRun: %d", &v14, 0x1Cu);
    }

    v7 = BYTE2(self->_initialSyncZoneNames);
  }

LABEL_15:

  return v7 & 1;
}

- (id)requestData
{
  v2 = self;
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
    goto LABEL_25;
  }

  v4 = [(PDEndpointRequestOperation *)v2 endpointInfo];
  if (v4)
  {
    v5 = v4[8];

    if (v5 < 1)
    {
      v6 = 1000;
      goto LABEL_9;
    }

    v4 = [(PDEndpointRequestOperation *)v2 endpointInfo];
    if (v4)
    {
      v6 = *(v4 + 16);
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
  v8 = [(PDOperation *)v2 database];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = *(&v2->super._unresolvedMissingEntityIDs + 2);
  v38 = v8;
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

        v12 = [v8 select:objc_opt_class() identity:*(*(&v42 + 1) + 8 * i)];
        v13 = sub_100084548(v12);
        [v13 setLimit:v6];
        [(PDDPEESyncRequest *)v7 addRequestZones:v13];
        if ([v13 hasCursor])
        {
          CLSInitLog();
          v14 = [(PDASMSyncOperation *)v2 logSubsystem];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            v39 = v15;
            v16 = [(PDURLRequestOperation *)v2 operationID];
            v17 = [v13 zoneName];
            [v13 cursor];
            v19 = v18 = v2;
            v20 = [v19 base64EncodedStringWithOptions:0];
            *buf = 138544130;
            v47 = v15;
            v8 = v38;
            v48 = 2114;
            v49 = v16;
            v50 = 2112;
            *v51 = v17;
            *&v51[8] = 2112;
            v52 = v20;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ cursor: %@", buf, 0x2Au);

            v2 = v18;
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

  [*(&v2->super._unresolvedMissingEntityIDs + 2) removeAllObjects];
  CLSInitLog();
  v21 = [(PDASMSyncOperation *)v2 logSubsystem];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v24 = objc_opt_class();
    v25 = v24;
    v26 = [(PDURLRequestOperation *)v2 operationID];
    v27 = sub_100169FD0(v8, @"initialASMSyncRequired");
    v28 = v2;
    v29 = sub_100169FD0(v38, @"initialASMSyncComplete");
    v30 = sub_100169FD0(v38, @"initialOrionSyncComplete");
    *buf = 138544386;
    v47 = v24;
    v48 = 2114;
    v49 = v26;
    v50 = 1024;
    *v51 = v27;
    v8 = v38;
    *&v51[4] = 1024;
    *&v51[6] = v29;
    v2 = v28;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = v30;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync request: initialASMSyncRequired:%d initialASMSyncComplete:%d initialOrionSyncComplete:%d", buf, 0x28u);
  }

  CLSInitLog();
  v22 = [(PDASMSyncOperation *)v2 logSubsystem];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v31 = objc_opt_class();
    v32 = v31;
    v33 = [(PDURLRequestOperation *)v2 operationID];
    v34 = [(PDDPEESyncRequest *)v7 dictionaryRepresentation];
    *buf = 138543874;
    v47 = v31;
    v48 = 2114;
    v49 = v33;
    v50 = 2114;
    *v51 = v34;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync request: %{public}@", buf, 0x20u);

    v8 = v38;
  }

  v3 = [(PDDPEESyncRequest *)v7 data];

LABEL_25:

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v28.receiver = self;
  v28.super_class = PDASMSyncOperation;
  v5 = [(PDASMPayloadOperation *)&v28 processResponseObject:a3 error:a4];
  v6 = [(PDOperation *)self database];
  v7 = v6;
  if (v5)
  {
    if (!sub_1000507D8(v6))
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
        v11 = [(PDASMSyncOperation *)self logSubsystem];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = v12;
          v14 = [(PDURLRequestOperation *)self operationID];
          *buf = 138543618;
          v30 = v12;
          v31 = 2114;
          v32 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Sync Initial ASM sync complete", buf, 0x16u);
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
  v20 = [(PDASMSyncOperation *)self logSubsystem];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [(PDURLRequestOperation *)self operationID];
    v25 = sub_100169FD0(v7, @"initialASMSyncRequired");
    v26 = sub_100169FD0(v7, @"initialASMSyncComplete");
    v27 = sub_100169FD0(v7, @"initialOrionSyncComplete");
    *buf = 138544386;
    v30 = v22;
    v31 = 2114;
    v32 = v24;
    v33 = 1024;
    v34 = v25;
    v35 = 1024;
    v36 = v26;
    v37 = 1024;
    v38 = v27;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Sync response: initialASMSyncRequired:%d initialASMSyncComplete:%d initialOrionSyncComplete:%d", buf, 0x28u);
  }

  return v5;
}

- (BOOL)processResponseZone:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = sub_100084618(v4);
  v7 = [v4 status];
  v8 = [v7 code];

  v9 = [v4 status];
  v10 = [v9 code];

  if ([v4 hasCursor])
  {
    CLSInitLog();
    v11 = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v40 = v12;
      [(PDURLRequestOperation *)self operationID];
      v13 = v41 = v6;
      v14 = [v4 zoneName];
      [v4 cursor];
      v15 = v42 = v5;
      v16 = [v15 base64EncodedStringWithOptions:0];
      *buf = 138544130;
      v45 = v12;
      v46 = 2114;
      v47 = v13;
      v48 = 2112;
      v49 = v14;
      v50 = 2112;
      v51 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ cursor: %@", buf, 0x2Au);

      v5 = v42;
      v6 = v41;
    }
  }

  if (v10 == 111)
  {
    CLSInitLog();
    v17 = [(PDASMSyncOperation *)self logSubsystem];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_opt_class();
      v33 = v32;
      v34 = [(PDURLRequestOperation *)self operationID];
      v35 = [v4 zoneName];
      *buf = 138543874;
      v45 = v32;
      v46 = 2114;
      v47 = v34;
      v48 = 2112;
      v49 = v35;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ zone access denied: %@", buf, 0x20u);
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
      v22 = [v4 zoneName];
      [v21 removeObject:v22];

      v23 = *(&self->_zoneNames + 2);
      v24 = [v4 zoneName];
      [v23 removeObject:v24];

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    if (v8 == 4)
    {
      CLSInitLog();
      v26 = [(PDASMSyncOperation *)self logSubsystem];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v36 = objc_opt_class();
        v37 = v36;
        v38 = [(PDURLRequestOperation *)self operationID];
        v39 = [v4 zoneName];
        *buf = 138543874;
        v45 = v36;
        v46 = 2114;
        v47 = v38;
        v48 = 2112;
        v49 = v39;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ zone: %@ has more data", buf, 0x20u);
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

      v29 = v28;
      [v27 addObject:v29];
    }

    else
    {
      v30 = *(&self->_zoneNames + 2);
      v29 = [v4 zoneName];
      [v30 removeObject:v29];
    }

    v25 = [v5 insertOrUpdateObject:v6];
  }

  return v25;
}

- (void)rescheduleOperation
{
  v3 = [(PDOperation *)self manager];
  sub_10012175C(v3, 0);

  v4.receiver = self;
  v4.super_class = PDASMSyncOperation;
  [(PDURLRequestOperation *)&v4 rescheduleOperation];
}

- (void)abortWithError:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = +[NSDate date];
  sub_10016A5AC(v5, v6, CLSSyncLatestRosterSyncFailureDateKey);

  v7.receiver = self;
  v7.super_class = PDASMSyncOperation;
  [(PDURLRequestOperation *)&v7 abortWithError:v4];
}

@end
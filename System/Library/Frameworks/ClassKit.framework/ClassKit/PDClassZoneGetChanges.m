@interface PDClassZoneGetChanges
+ (id)defaultEndpointInfo;
- (BOOL)_needsFullSync;
- (BOOL)handleZoneRemoved:(id)a3 forClassWithObjectID:(id)a4;
- (BOOL)processAttachment:(id)a3;
- (BOOL)processAttachmentPayload:(id)a3;
- (BOOL)processClassZonePayload:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (PDClassZoneGetChanges)initWithDatabase:(id)a3;
- (id)requestData;
- (void)abortWithError:(id)a3;
- (void)execute;
- (void)prepare;
- (void)processUpdatedTimeExpectation:(id)a3 newExpectation:(double)a4;
- (void)rescheduleOperation;
- (void)updateAttachmentCollabStatesIfNeeded;
@end

@implementation PDClassZoneGetChanges

+ (id)defaultEndpointInfo
{
  v2 = objc_alloc_init(PDEndpointInfo);
  sub_100087930(v2, @"orion");
  sub_10003F68C(v2, @"getChanges");
  sub_10003F69C(v2, @"https://cls-iosclient.itunes.apple.com/v5/getchanges");
  if (v2)
  {
    v2->_payloadLimitItems = 0;
    v2->_payloadLimitBytes = 0;
    v2->_responseTTLSeconds = 0;
    *&v2->_requiresAuth = 257;
  }

  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (PDClassZoneGetChanges)initWithDatabase:(id)a3
{
  v8.receiver = self;
  v8.super_class = PDClassZoneGetChanges;
  v3 = [(PDURLRequestOperation *)&v8 initWithDatabase:a3];
  v4 = v3;
  if (v3)
  {
    *(&v3->super._responseStatusPayloadFailed + 3) = 1;
    v5 = objc_opt_new();
    v6 = *(&v4->_zoneIDs + 3);
    *(&v4->_zoneIDs + 3) = v5;
  }

  return v4;
}

- (void)prepare
{
  v14.receiver = self;
  v14.super_class = PDClassZoneGetChanges;
  [(PDAsyncOperation *)&v14 prepare];
  if (![(PDOperation *)self isFinished])
  {
    v3 = [(PDOperation *)self database];
    if (![*(&self->super.super._responseStatusError + 3) count])
    {
      v4 = objc_opt_new();
      v5 = objc_opt_class();
      v6 = +[PDClassZoneGetChanges syncZonesMatchingSQL];
      v7 = +[PDClassZoneGetChanges syncZonesBindings];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001008C8;
      v12[3] = &unk_1002053F8;
      v8 = v4;
      v13 = v8;
      [v3 selectAll:v5 where:v6 bindings:v7 block:v12];

      v9 = *(&self->super.super._responseStatusError + 3);
      *(&self->super.super._responseStatusError + 3) = v8;
      v10 = v8;
    }

    if ([(PDClassZoneGetChanges *)self _needsFullSync])
    {
      v11 = +[NSDate now];
      sub_10016A5AC(v3, v11, @"initialOrionSyncStartDate");

      sub_100169F38(v3, 0, @"initialOrionSyncComplete");
    }
  }
}

- (BOOL)_needsFullSync
{
  if ([*(&self->super.super._responseStatusError + 3) count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v3 = objc_opt_new();
    v4 = [(PDOperation *)self database];
    v5 = objc_opt_class();
    v6 = +[PDClassZoneGetChanges syncZonesMatchingSQL];
    v7 = +[PDClassZoneGetChanges syncZonesBindings];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100100C08;
    v11[3] = &unk_100205420;
    v8 = v3;
    v12 = v8;
    v13 = &v14;
    [v4 selectAll:v5 where:v6 bindings:v7 block:v11];

    v9 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (void)execute
{
  v3.receiver = self;
  v3.super_class = PDClassZoneGetChanges;
  [(PDEndpointRequestOperation *)&v3 execute];
  *(&self->super._responseStatusPayloadFailed + 3) = 0;
}

- (id)requestData
{
  v2 = self;
  if ([(PDOperation *)self isAborted])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(PDOperation *)v2 database];
    v5 = objc_alloc_init(PDDPGetChangesRequest);
    v45 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = *(&v2->super.super._responseStatusError + 3);
    v39 = v5;
    v40 = v4;
    v44 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v44)
    {
      v43 = *v47;
LABEL_5:
      v6 = 0;
      while (1)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        v8 = [v45 count];
        v9 = [(PDEndpointRequestOperation *)v2 endpointInfo];
        if (!v9)
        {
          break;
        }

        v10 = v9[8];

        if (v8 >= v10)
        {
          break;
        }

        v11 = objc_opt_class();
        v12 = [v7 zoneName];
        v13 = [v4 select:v11 identity:v12];

        v14 = [v7 zoneName];
        v15 = sub_100018A30(v13, v14);

        [(PDDPGetChangesRequest *)v5 addZones:v15];
        [v45 addObject:v7];
        if ([v15 hasChangeToken])
        {
          CLSInitLog();
          v16 = [(PDClassZoneGetChanges *)v2 logSubsystem];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_opt_class();
            v41 = v17;
            v18 = [(PDURLRequestOperation *)v2 operationID];
            [v15 zoneName];
            v20 = v19 = v2;
            v21 = [v15 changeToken];
            v22 = [v21 base64EncodedStringWithOptions:0];
            *buf = 138544130;
            v51 = v17;
            v52 = 2114;
            v53 = v18;
            v54 = 2112;
            *v55 = v20;
            *&v55[8] = 2112;
            v56 = v22;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ changeToken: %@", buf, 0x2Au);

            v4 = v40;
            v2 = v19;

            v5 = v39;
          }
        }

        if (v44 == ++v6)
        {
          v44 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
          if (v44)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    [*(&v2->super.super._responseStatusError + 3) removeObjectsInArray:v45];
    CLSInitLog();
    [(PDClassZoneGetChanges *)v2 logSubsystem];
    v24 = v23 = v2;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [(PDURLRequestOperation *)v23 operationID];
      v32 = [(PDDPGetChangesRequest *)v5 dictionaryRepresentation];
      *buf = 138543874;
      v51 = v29;
      v52 = 2114;
      v53 = v31;
      v54 = 2112;
      *v55 = v32;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ Request payload: %@", buf, 0x20u);

      v5 = v39;
      v4 = v40;
    }

    CLSInitLog();
    v25 = [(PDClassZoneGetChanges *)v23 logSubsystem];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v33 = objc_opt_class();
      v34 = v33;
      v35 = [(PDURLRequestOperation *)v23 operationID];
      v36 = sub_100169FD0(v4, @"initialASMSyncRequired");
      v37 = sub_100169FD0(v4, @"initialASMSyncComplete");
      v38 = sub_100169FD0(v40, @"initialOrionSyncComplete");
      *buf = 138544386;
      v51 = v33;
      v52 = 2114;
      v53 = v35;
      v54 = 1024;
      *v55 = v36;
      *&v55[4] = 1024;
      *&v55[6] = v37;
      v4 = v40;
      LOWORD(v56) = 1024;
      *(&v56 + 2) = v38;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ GetChanges: initialASMSyncRequired:%d initialASMSyncComplete:%d initialOrionSyncComplete:%d", buf, 0x28u);

      v5 = v39;
    }

    v26 = [v45 count];
    v27 = [(PDURLRequestOperation *)v23 stats];
    if (v27)
    {
      v27[14] = v26;
    }

    v3 = [(PDDPGetChangesRequest *)v5 data];
  }

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v21.receiver = self;
  v21.super_class = PDClassZoneGetChanges;
  v5 = [(PDAbstractClassZoneOperation *)&v21 processResponseObject:a3 error:a4];
  v6 = [(PDOperation *)self database];
  v7 = v6;
  if (v5)
  {
    if (!sub_100050844(v6))
    {
      v8 = sub_10016A160(v7, @"initialOrionSyncRoundTripCount");
      sub_10016A0C8(v7, v8 + 1, @"initialOrionSyncRoundTripCount");
      if (![*(&self->super.super._responseStatusError + 3) count])
      {
        sub_100169F38(v7, 1, @"initialOrionSyncComplete");
        v9 = +[NSDate date];
        sub_10016A5AC(v7, v9, CLSSyncInitialHandoutSyncDateKey);

        CLSInitLog();
        v10 = [(PDClassZoneGetChanges *)self logSubsystem];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = v11;
          v13 = [(PDURLRequestOperation *)self operationID];
          *buf = 138543618;
          v23 = v11;
          v24 = 2114;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Initial Schoolwork sync complete", buf, 0x16u);
        }

        v14 = +[NSNotificationCenter defaultCenter];
        [v14 postNotificationName:CLSInitialServerSyncCompleteNotificationName object:0 userInfo:0];

        v15 = sub_1000B51E4();
        v16 = sub_1000B51E4();
        v17 = +[NSDate now];
        v18 = sub_1000B5C7C(v16, v17, v7);
        sub_1000B5E40(v15, v18, v7);
      }
    }

    if (![*(&self->super.super._responseStatusError + 3) count])
    {
      v19 = +[NSDate date];
      sub_10016A5AC(v7, v19, CLSSyncLatestHandoutSyncDateKey);
    }
  }

  [(PDClassZoneGetChanges *)self updateAttachmentCollabStatesIfNeeded];

  return v5;
}

- (void)updateAttachmentCollabStatesIfNeeded
{
  v3 = [(PDOperation *)self database];
  v29 = self;
  if ([*(&self->_zoneIDs + 3) count])
  {
    v4 = &CLSLogAsset_ptr;
    v28 = objc_opt_new();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = *(&self->_zoneIDs + 3);
    v32 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v32)
    {
      v31 = *v37;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v36 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v7 = v6;
          v8 = v4[213];
          v9 = objc_opt_new();
          v10 = v7;
          v11 = [v3 select:objc_opt_class() identity:v7];
          v12 = objc_opt_class();
          v13 = [v11 parentObjectID];
          v14 = [v3 select:v12 identity:v13];

          if (v14)
          {
            v15 = v11 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = objc_opt_class();
            v40 = v10;
            v17 = [NSArray arrayWithObjects:&v40 count:1];
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_100101898;
            v34[3] = &unk_100204398;
            v18 = v9;
            v35 = v18;
            [v3 selectAll:v16 where:@"parentObjectID = ?" bindings:v17 block:v34];

            v19 = sub_1000711FC(v3);
            v20 = [v19 objectID];

            v21 = [*(&v29->_zoneIDs + 3) objectForKey:v10];
            v22 = v3;
            v23 = [v21 integerValue];

            v24 = v23;
            v3 = v22;
            v25 = [PDSchoolworkCollaborationStateAdaptor setActivityState:v24 forAttachment:v11 forHandout:v14 senderPersonID:v20 withStates:v18];
            [v28 addObject:v25];

            v4 = &CLSLogAsset_ptr;
          }

          objc_autoreleasePoolPop(context);
        }

        v32 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v32);
    }

    v26 = sub_1001596A4([PDCollaborationStateChangePublish alloc], v3, v28);
    v27 = [(PDOperation *)v29 manager];
    sub_100123A84(v27, v26);
  }
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(PDOperation *)self isAborted])
  {
    v7 = 0;
  }

  else
  {
    if ([v6 type] == 12 || objc_msgSend(v6, "type") == 3)
    {
      [(PDAbstractClassZoneOperation *)self logPayloadBeforeProcessing:v6];
      if ([v6 type] == 3)
      {
        v8 = [(PDClassZoneGetChanges *)self processAttachmentPayload:v6];
      }

      else
      {
        if ([v6 hasClassZone])
        {
          v9 = [v6 classZone];
          v10 = [v9 hasChangeToken];

          if (v10)
          {
            CLSInitLog();
            v11 = [(PDClassZoneGetChanges *)self logSubsystem];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = objc_opt_class();
              v20 = v12;
              v13 = [(PDURLRequestOperation *)self operationID];
              v14 = [v6 classZone];
              v15 = [v14 zoneName];
              v16 = [v6 classZone];
              v17 = [v16 changeToken];
              v18 = [v17 base64EncodedStringWithOptions:0];
              *buf = 138544130;
              v23 = v12;
              v24 = 2114;
              v25 = v13;
              v26 = 2112;
              v27 = v15;
              v28 = 2112;
              v29 = v18;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ zoneName: %@ changeToken: %@", buf, 0x2Au);
            }
          }
        }

        v8 = [(PDClassZoneGetChanges *)self processClassZonePayload:v6];
      }
    }

    else
    {
      v21.receiver = self;
      v21.super_class = PDClassZoneGetChanges;
      v8 = [(PDAbstractClassZoneOperation *)&v21 processPayloadFromResponse:v6 error:a4];
    }

    v7 = v8;
  }

  return v7;
}

- (BOOL)processAttachmentPayload:(id)a3
{
  v4 = a3;
  if ([v4 action] == 3)
  {
    v8 = 0;
    v5 = [(PDAbstractClassZoneOperation *)self _deleteWithPayload:v4 error:&v8];
  }

  else
  {
    v6 = [v4 attachment];

    v5 = [(PDClassZoneGetChanges *)self processAttachment:v6];
  }

  return v5;
}

- (BOOL)processAttachment:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = sub_1000196F4(v4);
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v4 objectId];
    v9 = [v5 select:v7 identity:v8];

    if (v9)
    {
      [v6 setCompletionStatus:{objc_msgSend(v9, "completionStatus")}];
      if (v5)
      {
        v10 = (sub_1000717E8(v5) >> 1) & 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      [v9 timeExpectation];
      v12 = v11;
      [v6 timeExpectation];
      if (v12 != v13 && (v10 & 1) == 0)
      {
        [v6 timeExpectation];
        [(PDClassZoneGetChanges *)self processUpdatedTimeExpectation:v9 newExpectation:?];
      }
    }

    if ([v5 insertOrUpdateObject:v6])
    {
      v14 = objc_opt_class();
      v15 = [v6 objectID];
      v28 = v15;
      v16 = [NSArray arrayWithObjects:&v28 count:1];
      v17 = [v5 deleteAll:v14 where:@"entityID = ?" bindings:v16];
    }

    else
    {
      CLSInitLog();
      v15 = [(PDClassZoneGetChanges *)self logSubsystem];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = [(PDURLRequestOperation *)self operationID];
        v22 = 138543874;
        v23 = v18;
        v24 = 2114;
        v25 = v20;
        v26 = 2114;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Failed to insert %{public}@.", &v22, 0x20u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)processUpdatedTimeExpectation:(id)a3 newExpectation:(double)a4
{
  v6 = a3;
  v7 = [(PDOperation *)self database];
  v8 = [v6 objectID];
  v15 = 0;
  v9 = sub_100160CEC(v7, v6, &v15);
  v10 = v15;
  if (v10 && (CLSInitLog(), v11 = CLSLogDefault, os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR)))
  {
    v13 = v11;
    v14 = [v10 description];
    *buf = 138412290;
    v17 = v14;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to determine activity state due to missing collaboration states: %@.", buf, 0xCu);

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (v9)
  {
    goto LABEL_7;
  }

  if (sub_100088364(v7, v8, 0) < a4 && sub_100160B68(v7, v6))
  {
    v12 = [NSNumber numberWithInteger:1];
    [*(&self->_zoneIDs + 3) setObject:v12 forKeyedSubscript:v8];
  }

LABEL_7:
}

- (BOOL)processClassZonePayload:(id)a3
{
  v4 = a3;
  v5 = [v4 classZone];
  v6 = [(__CFString *)v5 zoneName];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [CKRecordZoneID alloc];
    v9 = [(__CFString *)v5 zoneName];
    v10 = [v8 initWithZoneName:v9 ownerName:CKCurrentUserDefaultName];

    v11 = [(__CFString *)v5 zoneName];
    sub_10008122C(v7, v11);

    if ([(__CFString *)v5 hasChangeToken])
    {
      v12 = [CKServerChangeToken alloc];
      v13 = [(__CFString *)v5 changeToken];
      v14 = [v12 initWithData:v13];

      sub_10008120C(v7, v14);
    }

    if ([v4 action] == 3 || -[__CFString isAccessDenied](v5, "isAccessDenied"))
    {
      CLSInitLog();
      v15 = [(PDClassZoneGetChanges *)self logSubsystem];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v38 = v16;
        v17 = [(PDURLRequestOperation *)self operationID];
        v18 = v10;
        if ([(__CFString *)v5 isAccessDenied])
        {
          v19 = @"zone access denied";
        }

        else
        {
          v19 = @"zone deleted";
        }

        v20 = [(__CFString *)v5 zoneName];
        *buf = 138544130;
        v40 = v16;
        v41 = 2114;
        v42 = v17;
        v43 = 2112;
        v44 = v19;
        v10 = v18;
        v45 = 2112;
        v46 = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ %@: %@", buf, 0x2Au);
      }

      v21 = [(__CFString *)v5 classId];

      if (!v21)
      {
        CLSInitLog();
        v22 = [(PDClassZoneGetChanges *)self logSubsystem];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = v30;
          v32 = [(PDURLRequestOperation *)self operationID];
          v33 = [(__CFString *)v5 zoneName];
          *buf = 138543874;
          v40 = v30;
          v41 = 2114;
          v42 = v32;
          v43 = 2112;
          v44 = v33;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ SWK server sent a payload with DELETE action but did not specify a classID, maybe progressd sent a user zone was sent in the request. Zone name: %@", buf, 0x20u);
        }

        v24 = 1;
        goto LABEL_25;
      }

      v22 = [(__CFString *)v5 classId];
      v23 = [(PDClassZoneGetChanges *)self handleZoneRemoved:v10 forClassWithObjectID:v22];
    }

    else
    {
      if ([(__CFString *)v5 moreDataAvailable])
      {
        CLSInitLog();
        v25 = [(PDClassZoneGetChanges *)self logSubsystem];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v34 = objc_opt_class();
          v35 = v34;
          v36 = [(PDURLRequestOperation *)self operationID];
          v37 = [(__CFString *)v5 zoneName];
          *buf = 138543874;
          v40 = v34;
          v41 = 2114;
          v42 = v36;
          v43 = 2112;
          v44 = v37;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ zone: %@ has more data", buf, 0x20u);
        }

        [*(&self->super.super._responseStatusError + 3) addObject:v10];
      }

      v22 = [(PDOperation *)self database];
      v23 = [v22 insertOrUpdateObject:v7];
    }

    v24 = v23;
LABEL_25:

    goto LABEL_26;
  }

  CLSInitLog();
  v7 = [(PDClassZoneGetChanges *)self logSubsystem];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v27 = objc_opt_class();
    v28 = v27;
    v29 = [(PDURLRequestOperation *)self operationID];
    *buf = 138543874;
    v40 = v27;
    v41 = 2114;
    v42 = v29;
    v43 = 2112;
    v44 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ illegal server response (missing zone name): %@", buf, 0x20u);
  }

  v24 = 0;
LABEL_26:

  return v24;
}

- (BOOL)handleZoneRemoved:(id)a3 forClassWithObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PDOperation *)self database];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1001026B8;
  v8 = v21 = &unk_100205470;
  v22 = v8;
  v9 = v6;
  v23 = v9;
  v24 = self;
  v10 = v7;
  v25 = v10;
  if (v8)
  {
    v11 = [v8 performTransaction:&v18 forWriting:1];
  }

  else
  {
    v11 = 0;
  }

  [*(&self->super.super._responseStatusError + 3) removeObject:{v9, v18, v19, v20, v21}];
  CLSInitLog();
  v12 = [(PDClassZoneGetChanges *)self logSubsystem];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [(PDURLRequestOperation *)self operationID];
    v17 = [v9 zoneName];
    *buf = 138543874;
    v27 = v14;
    v28 = 2114;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ removed from zoneIDs: zone %@", buf, 0x20u);
  }

  return v11;
}

- (void)rescheduleOperation
{
  v3 = [(PDOperation *)self manager];
  sub_10012175C(v3, 0);

  v4.receiver = self;
  v4.super_class = PDClassZoneGetChanges;
  [(PDURLRequestOperation *)&v4 rescheduleOperation];
}

- (void)abortWithError:(id)a3
{
  v4 = a3;
  v5 = [(PDOperation *)self database];
  v6 = +[NSDate date];
  sub_10016A5AC(v5, v6, CLSSyncLatestHandoutSyncFailureDateKey);

  v7.receiver = self;
  v7.super_class = PDClassZoneGetChanges;
  [(PDURLRequestOperation *)&v7 abortWithError:v4];
}

@end
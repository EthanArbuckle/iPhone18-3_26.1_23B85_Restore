@interface PDCollaborationStateChangePublish
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (id)assetsPayloadsForStateChange:(id)change;
- (id)requestData;
- (int64_t)maxExecutionCount;
- (void)consolidateChangesByTargetAndOwner;
- (void)mergeExistingLocalStateIntoRequestStateChange:(id)change;
@end

@implementation PDCollaborationStateChangePublish

- (int64_t)maxExecutionCount
{
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!endpointInfo)
  {
    goto LABEL_13;
  }

  v4 = endpointInfo;
  endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!endpointInfo2)
  {

    goto LABEL_13;
  }

  v6 = endpointInfo2[8];

  if (v6 < 1)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = PDCollaborationStateChangePublish;
    return [(PDOperation *)&v14 maxExecutionCount];
  }

  v7 = *(&self->super.super._responseStatusError + 3);
  endpointInfo3 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (endpointInfo3)
  {
    v9 = endpointInfo3[8];
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 / v9;

  v15.receiver = self;
  v15.super_class = PDCollaborationStateChangePublish;
  maxExecutionCount = [(PDOperation *)&v15 maxExecutionCount];
  if (v10 + 1 > maxExecutionCount)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = maxExecutionCount;
  }

  if (v12 >= 67)
  {
    return 67;
  }

  else
  {
    return v12;
  }
}

- (void)mergeExistingLocalStateIntoRequestStateChange:(id)change
{
  changeCopy = change;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [changeCopy states];
  v5 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    v8 = &CLSLogAsset_ptr;
    selfCopy = self;
    v41 = changeCopy;
    v39 = *v52;
    do
    {
      v9 = 0;
      v42 = v6;
      do
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = v8[75];
        targetObjectID = [changeCopy targetObjectID];
        ownerPersonID = [changeCopy ownerPersonID];
        v14 = [v11 identifierForTargetObjectID:targetObjectID ownerPersonID:ownerPersonID domain:{objc_msgSend(v10, "domain")}];

        v15 = v14;
        database = [(PDOperation *)self database];
        v17 = v8[75];
        v18 = [database select:objc_opt_class() identity:v15];

        if (v18)
        {
          [v10 setServerStatus:{objc_msgSend(v18, "serverStatus")}];
          serverExecutionID = [v18 serverExecutionID];
          [v10 setServerExecutionID:serverExecutionID];

          serverETag = [v18 serverETag];
          [v10 setServerETag:serverETag];
        }

        v46 = v18;
        info = [v18 info];

        info2 = [v10 info];

        if (info2)
        {
          v23 = v46;
          if (!info)
          {
            goto LABEL_28;
          }

          v44 = v15;
          v45 = v9;
          info3 = [v10 info];
          v25 = [info3 mutableCopy];

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          info4 = [v46 info];
          v27 = [info4 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v48;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v48 != v29)
                {
                  objc_enumerationMutation(info4);
                }

                v31 = *(*(&v47 + 1) + 8 * i);
                info5 = [v10 info];
                v33 = [info5 objectForKeyedSubscript:v31];

                if (v33)
                {
                  v34 = +[NSNull null];
                  v35 = [v34 isEqual:v33];

                  if (v35)
                  {
                    [v25 setObject:0 forKeyedSubscript:v31];
                  }
                }

                else
                {
                  info6 = [v46 info];
                  v37 = [info6 objectForKeyedSubscript:v31];
                  [v25 setObject:v37 forKeyedSubscript:v31];
                }
              }

              v28 = [info4 countByEnumeratingWithState:&v47 objects:v55 count:16];
            }

            while (v28);
          }

          if ([v25 count])
          {
            info7 = v25;
          }

          else
          {
            info7 = 0;
          }

          self = selfCopy;
          changeCopy = v41;
          v7 = v39;
          v8 = &CLSLogAsset_ptr;
          v6 = v42;
          v15 = v44;
          v23 = v46;
        }

        else
        {
          v23 = v46;
          if (!info)
          {
            goto LABEL_28;
          }

          v45 = v9;
          info7 = [v46 info];
          v25 = info7;
        }

        [v10 setInfo:info7];

        v9 = v45;
LABEL_28:

        v9 = v9 + 1;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v6);
  }
}

- (id)assetsPayloadsForStateChange:(id)change
{
  changeCopy = change;
  v53 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [changeCopy states];
  v48 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v48)
  {
    v46 = *v66;
    do
    {
      v4 = 0;
      do
      {
        if (*v66 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v4;
        v5 = *(*(&v65 + 1) + 8 * v4);
        v6 = objc_opt_new();
        v7 = objc_opt_new();
        database = [(PDOperation *)self database];
        v9 = objc_opt_class();
        objectID = [v5 objectID];
        v71 = objectID;
        v11 = [NSArray arrayWithObjects:&v71 count:1];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10015A2B8;
        v62[3] = &unk_100206438;
        v49 = v6;
        v63 = v49;
        v52 = v7;
        v64 = v52;
        [database selectAll:v9 where:@"parentObjectID = ?" bindings:v11 block:v62];

        assetsToAddOrUpdate = [v5 assetsToAddOrUpdate];
        v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(assetsToAddOrUpdate, "count")}];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v51 = assetsToAddOrUpdate;
        v14 = [v51 countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v59;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v59 != v16)
              {
                objc_enumerationMutation(v51);
              }

              v18 = *(*(&v58 + 1) + 8 * i);
              objectID2 = [v5 objectID];
              [v18 setParentObjectID:objectID2];

              [v18 setParentEntityType:6];
              objectID3 = [v18 objectID];
              [v13 addObject:objectID3];

              v21 = objc_alloc_init(PDDPPayload);
              [(PDDPPayload *)v21 setType:15];
              objectID4 = [v18 objectID];
              v23 = [v52 containsObject:objectID4];

              if (v23)
              {
                v24 = 2;
              }

              else
              {
                v24 = 1;
              }

              [(PDDPPayload *)v21 setAction:v24];
              v25 = sub_10001E528(v18);
              [(PDDPPayload *)v21 setAsset:v25];

              v26 = [NSMutableArray alloc];
              targetClassID = [changeCopy targetClassID];
              v28 = [v26 initWithObjects:{targetClassID, 0}];
              asset = [(PDDPPayload *)v21 asset];
              [asset setClassIds:v28];

              [v53 addObject:v21];
            }

            v15 = [v51 countByEnumeratingWithState:&v58 objects:v70 count:16];
          }

          while (v15);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v30 = v49;
        v31 = [v30 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v55;
          do
          {
            for (j = 0; j != v32; j = j + 1)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v54 + 1) + 8 * j);
              objectID5 = [v35 objectID];
              v37 = [v13 containsObject:objectID5];

              if ((v37 & 1) == 0)
              {
                v38 = objc_alloc_init(PDDPPayload);
                [(PDDPPayload *)v38 setType:15];
                [(PDDPPayload *)v38 setAction:3];
                v39 = sub_10001E528(v35);
                [(PDDPPayload *)v38 setAsset:v39];

                v40 = [NSMutableArray alloc];
                targetClassID2 = [changeCopy targetClassID];
                v42 = [v40 initWithObjects:{targetClassID2, 0}];
                asset2 = [(PDDPPayload *)v38 asset];
                [asset2 setClassIds:v42];

                [v53 addObject:v38];
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v54 objects:v69 count:16];
          }

          while (v32);
        }

        v4 = v50 + 1;
      }

      while ((v50 + 1) != v48);
      v48 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v48);
  }

  return v53;
}

- (void)consolidateChangesByTargetAndOwner
{
  v3 = objc_opt_new();
  selfCopy = self;
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(&self->super._responseStatusPayloadFailed + 3);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        targetObjectID = [v8 targetObjectID];
        ownerPersonID = [v8 ownerPersonID];
        recipientPersonID = [v8 recipientPersonID];
        v12 = [NSString stringWithFormat:@"%@/%@/%@", targetObjectID, ownerPersonID, recipientPersonID];

        v13 = [v3 objectForKeyedSubscript:v12];
        v14 = v13;
        if (v13)
        {
          [v13 mergeChangesFrom:v8];
        }

        else
        {
          [v3 setObject:v8 forKeyedSubscript:v12];
          [v18 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = [NSArray arrayWithArray:v18];
  v16 = *(&selfCopy->super._responseStatusPayloadFailed + 3);
  *(&selfCopy->super._responseStatusPayloadFailed + 3) = v15;
}

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    immutableData = 0;
  }

  else
  {
    [(PDCollaborationStateChangePublish *)self consolidateChangesByTargetAndOwner];
    v4 = objc_alloc_init(PBDataWriter);
    v5 = objc_alloc_init(PDDPPublishStateChangeRequest);
    operationID = [(PDURLRequestOperation *)self operationID];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = *(&self->super._responseStatusPayloadFailed + 3);
    v6 = [obj countByEnumeratingWithState:&v95 objects:v113 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v96;
      v76 = *v96;
      while (2)
      {
        v10 = 0;
        v77 = v7;
        do
        {
          if (*v96 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v95 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          if ([v11 hasChanges])
          {
            v80 = v12;
            [(PDCollaborationStateChangePublish *)self mergeExistingLocalStateIntoRequestStateChange:v11];
            v13 = objc_alloc_init(PDDPPayload);
            [(PDDPPayload *)v13 setType:19];
            [(PDDPPayload *)v13 setAction:1];
            v14 = sub_10001A104(v11);
            [(PDDPPayload *)v13 setStateChange:v14];

            v82 = v13;
            [(PDDPPublishStateChangeRequest *)v5 addPayload:v13];
            [(PDDPPublishStateChangeRequest *)v5 writeTo:v4];
            [(PDDPPublishStateChangeRequest *)v5 clearPayloads];
            data = [v4 data];
            v16 = [data length];
            stats = [(PDURLRequestOperation *)self stats];
            if (stats)
            {
              stats[10] = v16;
            }

            v79 = v10;
            v81 = v8;

            stats2 = [(PDURLRequestOperation *)self stats];
            if (stats2)
            {
              ++stats2[14];
            }

            v19 = [(PDCollaborationStateChangePublish *)self assetsPayloadsForStateChange:v11];
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v91 objects:v112 count:16];
            v85 = v20;
            if (v21)
            {
              v22 = v21;
              v23 = *v92;
              do
              {
                for (i = 0; i != v22; i = i + 1)
                {
                  if (*v92 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v91 + 1) + 8 * i);
                  [(PDDPPublishStateChangeRequest *)v5 addPayload:v25];
                  [(PDDPPublishStateChangeRequest *)v5 writeTo:v4];
                  [(PDDPPublishStateChangeRequest *)v5 clearPayloads];
                  data2 = [v4 data];
                  v27 = [data2 length];
                  stats3 = [(PDURLRequestOperation *)self stats];
                  if (stats3)
                  {
                    stats3[10] = v27;
                  }

                  stats4 = [(PDURLRequestOperation *)self stats];
                  if (stats4)
                  {
                    ++stats4[14];
                  }

                  CLSInitLog();
                  logSubsystem = [(PDCollaborationStateChangePublish *)self logSubsystem];
                  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
                  {
                    v31 = objc_opt_class();
                    v32 = v31;
                    dictionaryRepresentation = [v25 dictionaryRepresentation];
                    *buf = 138543874;
                    v101 = v31;
                    v102 = 2114;
                    v103 = operationID;
                    v104 = 2112;
                    v105 = dictionaryRepresentation;
                    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added asset payload item %@ ", buf, 0x20u);

                    v20 = v85;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v91 objects:v112 count:16];
              }

              while (v22);
            }

            CLSInitLog();
            logSubsystem2 = [(PDCollaborationStateChangePublish *)self logSubsystem];
            if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
            {
              v55 = objc_opt_class();
              v56 = v55;
              dictionaryRepresentation2 = [(PDDPPayload *)v82 dictionaryRepresentation];
              *buf = 138543874;
              v101 = v55;
              v102 = 2114;
              v103 = operationID;
              v104 = 2112;
              v105 = dictionaryRepresentation2;
              _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
            }

            v35 = +[PDUserDefaults sharedDefaults];
            enableVerboseLogging = [v35 enableVerboseLogging];

            if (enableVerboseLogging)
            {
              CLSInitLog();
              logSubsystem3 = [(PDCollaborationStateChangePublish *)self logSubsystem];
              if (os_log_type_enabled(logSubsystem3, OS_LOG_TYPE_DEBUG))
              {
                v58 = objc_opt_class();
                v84 = v58;
                stateChange = [(PDDPPayload *)v82 stateChange];
                targetEntityName = [stateChange targetEntityName];
                stateChange2 = [(PDDPPayload *)v82 stateChange];
                targetObjectId = [stateChange2 targetObjectId];
                stateChange3 = [(PDDPPayload *)v82 stateChange];
                targetOwnerPersonId = [stateChange3 targetOwnerPersonId];
                stateChange4 = [(PDDPPayload *)v82 stateChange];
                targetClassId = [stateChange4 targetClassId];
                *buf = 138544642;
                v101 = v58;
                v102 = 2114;
                v103 = operationID;
                v104 = 2112;
                v105 = targetEntityName;
                v106 = 2112;
                v107 = targetObjectId;
                v108 = 2112;
                v109 = targetOwnerPersonId;
                v110 = 2112;
                v111 = targetClassId;
                _os_log_debug_impl(&_mh_execute_header, logSubsystem3, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ state change payload targetEntity:%@ targetObjectID:%@ ownerPersonID:%@ targetClassID:%@", buf, 0x3Eu);
              }

              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              stateChange5 = [(PDDPPayload *)v82 stateChange];
              stateChangePayloads = [stateChange5 stateChangePayloads];

              v40 = [stateChangePayloads countByEnumeratingWithState:&v87 objects:v99 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v88;
                do
                {
                  for (j = 0; j != v41; j = j + 1)
                  {
                    if (*v88 != v42)
                    {
                      objc_enumerationMutation(stateChangePayloads);
                    }

                    v44 = *(*(&v87 + 1) + 8 * j);
                    CLSInitLog();
                    logSubsystem4 = [(PDCollaborationStateChangePublish *)self logSubsystem];
                    if (os_log_type_enabled(logSubsystem4, OS_LOG_TYPE_DEBUG))
                    {
                      v46 = objc_opt_class();
                      v83 = v46;
                      dictionaryRepresentation3 = [v44 dictionaryRepresentation];
                      *buf = 138543874;
                      v101 = v46;
                      v102 = 2114;
                      v103 = operationID;
                      v104 = 2112;
                      v105 = dictionaryRepresentation3;
                      _os_log_debug_impl(&_mh_execute_header, logSubsystem4, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ state change: %@", buf, 0x20u);
                    }
                  }

                  v41 = [stateChangePayloads countByEnumeratingWithState:&v87 objects:v99 count:16];
                }

                while (v41);
              }
            }

            stats5 = [(PDURLRequestOperation *)self stats];
            v49 = stats5;
            v10 = v79;
            if (stats5)
            {
              v50 = *(stats5 + 80);
            }

            else
            {
              v50 = 0;
            }

            stats6 = [(PDURLRequestOperation *)self stats];
            v52 = stats6;
            if (stats6)
            {
              v53 = *(stats6 + 112);
            }

            else
            {
              v53 = 0;
            }

            v8 = v81 + 1;
            v54 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v50 count:v53];

            if (v54)
            {
              CLSInitLog();
              logSubsystem5 = [(PDCollaborationStateChangePublish *)self logSubsystem];
              if (os_log_type_enabled(logSubsystem5, OS_LOG_TYPE_DEBUG))
              {
                v69 = objc_opt_class();
                *buf = 138543618;
                v101 = v69;
                v102 = 2114;
                v103 = operationID;
                v70 = v69;
                _os_log_debug_impl(&_mh_execute_header, logSubsystem5, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ payload limit reached.", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v80);
              goto LABEL_57;
            }

            v9 = v76;
            v7 = v77;
            v12 = v80;
          }

          objc_autoreleasePoolPop(v12);
          v10 = v10 + 1;
        }

        while (v10 != v7);
        v63 = [obj countByEnumeratingWithState:&v95 objects:v113 count:16];
        v7 = v63;
        if (v63)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_57:

    stats7 = [(PDURLRequestOperation *)self stats];
    if (stats7 && (v66 = stats7[14], stats7, v66))
    {
      if (v8 >= 1)
      {
        v67 = [*(&self->super._responseStatusPayloadFailed + 3) subarrayWithRange:{v8, objc_msgSend(*(&self->super._responseStatusPayloadFailed + 3), "count") - v8}];
        v68 = *(&self->super._responseStatusPayloadFailed + 3);
        *(&self->super._responseStatusPayloadFailed + 3) = v67;
      }

      immutableData = [v4 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      immutableData = 0;
    }
  }

  return immutableData;
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v44.receiver = self;
  v44.super_class = PDCollaborationStateChangePublish;
  v7 = [(PDAbstractClassZoneOperation *)&v44 processPayloadFromResponse:responseCopy error:error];
  if ([responseCopy type] == 19)
  {
    stateChange = [responseCopy stateChange];
    v9 = sub_10001A6C0(stateChange);

    if ([responseCopy hasStatus])
    {
      status = [responseCopy status];
      code = [status code];

      status2 = [responseCopy status];
      code2 = [status2 code];

      if (code != 1 || !v7)
      {
        if (code2 == 112)
        {
          CLSInitLog();
          logSubsystem = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            v40 = v39;
            operationID = [(PDURLRequestOperation *)self operationID];
            dictionaryRepresentation = [responseCopy dictionaryRepresentation];
            *buf = 138543874;
            v46 = v39;
            v47 = 2114;
            v48 = operationID;
            v49 = 2112;
            v50 = dictionaryRepresentation;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ detected conflicted response payload for item %@", buf, 0x20u);
          }

          v16 = *(&self->_statesByError + 3);
          if (!v16)
          {
            v17 = objc_opt_new();
            v18 = *(&self->_statesByError + 3);
            *(&self->_statesByError + 3) = v17;

            v16 = *(&self->_statesByError + 3);
          }

          goto LABEL_15;
        }

LABEL_16:
        status3 = [responseCopy status];

        if (status3)
        {
          if (!*(&self->_totalStateChanges + 3))
          {
            v20 = objc_opt_new();
            v21 = *(&self->_totalStateChanges + 3);
            *(&self->_totalStateChanges + 3) = v20;
          }

          status4 = [responseCopy status];
          v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100105358([status4 code]));
          stringValue = [v23 stringValue];

          CLSInitLog();
          logSubsystem2 = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_DEBUG))
          {
            v34 = objc_opt_class();
            v43 = v34;
            operationID2 = [(PDURLRequestOperation *)self operationID];
            dictionaryRepresentation2 = [responseCopy dictionaryRepresentation];
            v37 = *error;
            *buf = 138544386;
            v46 = v34;
            v47 = 2114;
            v48 = operationID2;
            v49 = 2112;
            v50 = stringValue;
            v51 = 2112;
            v52 = dictionaryRepresentation2;
            v38 = dictionaryRepresentation2;
            v53 = 2112;
            v54 = v37;
            _os_log_debug_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ errorKey %@ for payload item %@ with error %@", buf, 0x34u);
          }

          v26 = [*(&self->_totalStateChanges + 3) objectForKey:stringValue];

          if (v26)
          {
            v27 = [*(&self->_totalStateChanges + 3) valueForKey:stringValue];
            [v27 addObjectsFromArray:v9];
          }

          else
          {
            v27 = objc_alloc_init(NSMutableArray);
            [v27 addObjectsFromArray:v9];
            [*(&self->_totalStateChanges + 3) setObject:v27 forKey:stringValue];
          }
        }

        else
        {
          CLSInitLog();
          stringValue = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(stringValue, OS_LOG_TYPE_DEBUG))
          {
            v28 = objc_opt_class();
            v29 = v28;
            operationID3 = [(PDURLRequestOperation *)self operationID];
            dictionaryRepresentation3 = [responseCopy dictionaryRepresentation];
            v32 = *error;
            *buf = 138544130;
            v46 = v28;
            v47 = 2114;
            v48 = operationID3;
            v49 = 2112;
            v50 = dictionaryRepresentation3;
            v51 = 2112;
            v52 = v32;
            _os_log_debug_impl(&_mh_execute_header, stringValue, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ with error %@", buf, 0x2Au);
          }
        }

        goto LABEL_28;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    if (![v9 count])
    {
LABEL_28:

      goto LABEL_29;
    }

    v16 = *(&self->_requestedStateChanges + 3);
LABEL_15:
    [v16 addObjectsFromArray:v9];
    goto LABEL_28;
  }

LABEL_29:

  return v7;
}

@end
@interface PDCollaborationStateChangePublish
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (id)assetsPayloadsForStateChange:(id)a3;
- (id)requestData;
- (int64_t)maxExecutionCount;
- (void)consolidateChangesByTargetAndOwner;
- (void)mergeExistingLocalStateIntoRequestStateChange:(id)a3;
@end

@implementation PDCollaborationStateChangePublish

- (int64_t)maxExecutionCount
{
  v3 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (!v5)
  {

    goto LABEL_13;
  }

  v6 = v5[8];

  if (v6 < 1)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = PDCollaborationStateChangePublish;
    return [(PDOperation *)&v14 maxExecutionCount];
  }

  v7 = *(&self->super.super._responseStatusError + 3);
  v8 = [(PDEndpointRequestOperation *)self endpointInfo];
  if (v8)
  {
    v9 = v8[8];
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 / v9;

  v15.receiver = self;
  v15.super_class = PDCollaborationStateChangePublish;
  v11 = [(PDOperation *)&v15 maxExecutionCount];
  if (v10 + 1 > v11)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v11;
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

- (void)mergeExistingLocalStateIntoRequestStateChange:(id)a3
{
  v4 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v4 states];
  v5 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    v8 = &CLSLogAsset_ptr;
    v40 = self;
    v41 = v4;
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
        v12 = [v4 targetObjectID];
        v13 = [v4 ownerPersonID];
        v14 = [v11 identifierForTargetObjectID:v12 ownerPersonID:v13 domain:{objc_msgSend(v10, "domain")}];

        v15 = v14;
        v16 = [(PDOperation *)self database];
        v17 = v8[75];
        v18 = [v16 select:objc_opt_class() identity:v15];

        if (v18)
        {
          [v10 setServerStatus:{objc_msgSend(v18, "serverStatus")}];
          v19 = [v18 serverExecutionID];
          [v10 setServerExecutionID:v19];

          v20 = [v18 serverETag];
          [v10 setServerETag:v20];
        }

        v46 = v18;
        v21 = [v18 info];

        v22 = [v10 info];

        if (v22)
        {
          v23 = v46;
          if (!v21)
          {
            goto LABEL_28;
          }

          v44 = v15;
          v45 = v9;
          v24 = [v10 info];
          v25 = [v24 mutableCopy];

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v26 = [v46 info];
          v27 = [v26 countByEnumeratingWithState:&v47 objects:v55 count:16];
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
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v47 + 1) + 8 * i);
                v32 = [v10 info];
                v33 = [v32 objectForKeyedSubscript:v31];

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
                  v36 = [v46 info];
                  v37 = [v36 objectForKeyedSubscript:v31];
                  [v25 setObject:v37 forKeyedSubscript:v31];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v47 objects:v55 count:16];
            }

            while (v28);
          }

          if ([v25 count])
          {
            v38 = v25;
          }

          else
          {
            v38 = 0;
          }

          self = v40;
          v4 = v41;
          v7 = v39;
          v8 = &CLSLogAsset_ptr;
          v6 = v42;
          v15 = v44;
          v23 = v46;
        }

        else
        {
          v23 = v46;
          if (!v21)
          {
            goto LABEL_28;
          }

          v45 = v9;
          v38 = [v46 info];
          v25 = v38;
        }

        [v10 setInfo:v38];

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

- (id)assetsPayloadsForStateChange:(id)a3
{
  v3 = a3;
  v53 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = [v3 states];
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
        v8 = [(PDOperation *)self database];
        v9 = objc_opt_class();
        v10 = [v5 objectID];
        v71 = v10;
        v11 = [NSArray arrayWithObjects:&v71 count:1];
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10015A2B8;
        v62[3] = &unk_100206438;
        v49 = v6;
        v63 = v49;
        v52 = v7;
        v64 = v52;
        [v8 selectAll:v9 where:@"parentObjectID = ?" bindings:v11 block:v62];

        v12 = [v5 assetsToAddOrUpdate];
        v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v51 = v12;
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
              v19 = [v5 objectID];
              [v18 setParentObjectID:v19];

              [v18 setParentEntityType:6];
              v20 = [v18 objectID];
              [v13 addObject:v20];

              v21 = objc_alloc_init(PDDPPayload);
              [(PDDPPayload *)v21 setType:15];
              v22 = [v18 objectID];
              v23 = [v52 containsObject:v22];

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
              v27 = [v3 targetClassID];
              v28 = [v26 initWithObjects:{v27, 0}];
              v29 = [(PDDPPayload *)v21 asset];
              [v29 setClassIds:v28];

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
              v36 = [v35 objectID];
              v37 = [v13 containsObject:v36];

              if ((v37 & 1) == 0)
              {
                v38 = objc_alloc_init(PDDPPayload);
                [(PDDPPayload *)v38 setType:15];
                [(PDDPPayload *)v38 setAction:3];
                v39 = sub_10001E528(v35);
                [(PDDPPayload *)v38 setAsset:v39];

                v40 = [NSMutableArray alloc];
                v41 = [v3 targetClassID];
                v42 = [v40 initWithObjects:{v41, 0}];
                v43 = [(PDDPPayload *)v38 asset];
                [v43 setClassIds:v42];

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
  v17 = self;
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
        v9 = [v8 targetObjectID];
        v10 = [v8 ownerPersonID];
        v11 = [v8 recipientPersonID];
        v12 = [NSString stringWithFormat:@"%@/%@/%@", v9, v10, v11];

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
  v16 = *(&v17->super._responseStatusPayloadFailed + 3);
  *(&v17->super._responseStatusPayloadFailed + 3) = v15;
}

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
  }

  else
  {
    [(PDCollaborationStateChangePublish *)self consolidateChangesByTargetAndOwner];
    v4 = objc_alloc_init(PBDataWriter);
    v5 = objc_alloc_init(PDDPPublishStateChangeRequest);
    v86 = [(PDURLRequestOperation *)self operationID];
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
            v15 = [v4 data];
            v16 = [v15 length];
            v17 = [(PDURLRequestOperation *)self stats];
            if (v17)
            {
              v17[10] = v16;
            }

            v79 = v10;
            v81 = v8;

            v18 = [(PDURLRequestOperation *)self stats];
            if (v18)
            {
              ++v18[14];
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
                  v26 = [v4 data];
                  v27 = [v26 length];
                  v28 = [(PDURLRequestOperation *)self stats];
                  if (v28)
                  {
                    v28[10] = v27;
                  }

                  v29 = [(PDURLRequestOperation *)self stats];
                  if (v29)
                  {
                    ++v29[14];
                  }

                  CLSInitLog();
                  v30 = [(PDCollaborationStateChangePublish *)self logSubsystem];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                  {
                    v31 = objc_opt_class();
                    v32 = v31;
                    v33 = [v25 dictionaryRepresentation];
                    *buf = 138543874;
                    v101 = v31;
                    v102 = 2114;
                    v103 = v86;
                    v104 = 2112;
                    v105 = v33;
                    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added asset payload item %@ ", buf, 0x20u);

                    v20 = v85;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v91 objects:v112 count:16];
              }

              while (v22);
            }

            CLSInitLog();
            v34 = [(PDCollaborationStateChangePublish *)self logSubsystem];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v55 = objc_opt_class();
              v56 = v55;
              v57 = [(PDDPPayload *)v82 dictionaryRepresentation];
              *buf = 138543874;
              v101 = v55;
              v102 = 2114;
              v103 = v86;
              v104 = 2112;
              v105 = v57;
              _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
            }

            v35 = +[PDUserDefaults sharedDefaults];
            v36 = [v35 enableVerboseLogging];

            if (v36)
            {
              CLSInitLog();
              v37 = [(PDCollaborationStateChangePublish *)self logSubsystem];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v58 = objc_opt_class();
                v84 = v58;
                v75 = [(PDDPPayload *)v82 stateChange];
                v59 = [v75 targetEntityName];
                v74 = [(PDDPPayload *)v82 stateChange];
                v72 = [v74 targetObjectId];
                v73 = [(PDDPPayload *)v82 stateChange];
                v60 = [v73 targetOwnerPersonId];
                v61 = [(PDDPPayload *)v82 stateChange];
                v62 = [v61 targetClassId];
                *buf = 138544642;
                v101 = v58;
                v102 = 2114;
                v103 = v86;
                v104 = 2112;
                v105 = v59;
                v106 = 2112;
                v107 = v72;
                v108 = 2112;
                v109 = v60;
                v110 = 2112;
                v111 = v62;
                _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ state change payload targetEntity:%@ targetObjectID:%@ ownerPersonID:%@ targetClassID:%@", buf, 0x3Eu);
              }

              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v38 = [(PDDPPayload *)v82 stateChange];
              v39 = [v38 stateChangePayloads];

              v40 = [v39 countByEnumeratingWithState:&v87 objects:v99 count:16];
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
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v87 + 1) + 8 * j);
                    CLSInitLog();
                    v45 = [(PDCollaborationStateChangePublish *)self logSubsystem];
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                    {
                      v46 = objc_opt_class();
                      v83 = v46;
                      v47 = [v44 dictionaryRepresentation];
                      *buf = 138543874;
                      v101 = v46;
                      v102 = 2114;
                      v103 = v86;
                      v104 = 2112;
                      v105 = v47;
                      _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ state change: %@", buf, 0x20u);
                    }
                  }

                  v41 = [v39 countByEnumeratingWithState:&v87 objects:v99 count:16];
                }

                while (v41);
              }
            }

            v48 = [(PDURLRequestOperation *)self stats];
            v49 = v48;
            v10 = v79;
            if (v48)
            {
              v50 = *(v48 + 80);
            }

            else
            {
              v50 = 0;
            }

            v51 = [(PDURLRequestOperation *)self stats];
            v52 = v51;
            if (v51)
            {
              v53 = *(v51 + 112);
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
              v64 = [(PDCollaborationStateChangePublish *)self logSubsystem];
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                v69 = objc_opt_class();
                *buf = 138543618;
                v101 = v69;
                v102 = 2114;
                v103 = v86;
                v70 = v69;
                _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ payload limit reached.", buf, 0x16u);
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

    v65 = [(PDURLRequestOperation *)self stats];
    if (v65 && (v66 = v65[14], v65, v66))
    {
      if (v8 >= 1)
      {
        v67 = [*(&self->super._responseStatusPayloadFailed + 3) subarrayWithRange:{v8, objc_msgSend(*(&self->super._responseStatusPayloadFailed + 3), "count") - v8}];
        v68 = *(&self->super._responseStatusPayloadFailed + 3);
        *(&self->super._responseStatusPayloadFailed + 3) = v67;
      }

      v3 = [v4 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v44.receiver = self;
  v44.super_class = PDCollaborationStateChangePublish;
  v7 = [(PDAbstractClassZoneOperation *)&v44 processPayloadFromResponse:v6 error:a4];
  if ([v6 type] == 19)
  {
    v8 = [v6 stateChange];
    v9 = sub_10001A6C0(v8);

    if ([v6 hasStatus])
    {
      v10 = [v6 status];
      v11 = [v10 code];

      v12 = [v6 status];
      v13 = [v12 code];

      if (v11 != 1 || !v7)
      {
        if (v13 == 112)
        {
          CLSInitLog();
          v15 = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            v40 = v39;
            v41 = [(PDURLRequestOperation *)self operationID];
            v42 = [v6 dictionaryRepresentation];
            *buf = 138543874;
            v46 = v39;
            v47 = 2114;
            v48 = v41;
            v49 = 2112;
            v50 = v42;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ detected conflicted response payload for item %@", buf, 0x20u);
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
        v19 = [v6 status];

        if (v19)
        {
          if (!*(&self->_totalStateChanges + 3))
          {
            v20 = objc_opt_new();
            v21 = *(&self->_totalStateChanges + 3);
            *(&self->_totalStateChanges + 3) = v20;
          }

          v22 = [v6 status];
          v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_100105358([v22 code]));
          v24 = [v23 stringValue];

          CLSInitLog();
          v25 = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v34 = objc_opt_class();
            v43 = v34;
            v35 = [(PDURLRequestOperation *)self operationID];
            v36 = [v6 dictionaryRepresentation];
            v37 = *a4;
            *buf = 138544386;
            v46 = v34;
            v47 = 2114;
            v48 = v35;
            v49 = 2112;
            v50 = v24;
            v51 = 2112;
            v52 = v36;
            v38 = v36;
            v53 = 2112;
            v54 = v37;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ errorKey %@ for payload item %@ with error %@", buf, 0x34u);
          }

          v26 = [*(&self->_totalStateChanges + 3) objectForKey:v24];

          if (v26)
          {
            v27 = [*(&self->_totalStateChanges + 3) valueForKey:v24];
            [v27 addObjectsFromArray:v9];
          }

          else
          {
            v27 = objc_alloc_init(NSMutableArray);
            [v27 addObjectsFromArray:v9];
            [*(&self->_totalStateChanges + 3) setObject:v27 forKey:v24];
          }
        }

        else
        {
          CLSInitLog();
          v24 = [(PDCollaborationStateChangePublish *)self logSubsystem];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v28 = objc_opt_class();
            v29 = v28;
            v30 = [(PDURLRequestOperation *)self operationID];
            v31 = [v6 dictionaryRepresentation];
            v32 = *a4;
            *buf = 138544130;
            v46 = v28;
            v47 = 2114;
            v48 = v30;
            v49 = 2112;
            v50 = v31;
            v51 = 2112;
            v52 = v32;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ ignoring response payload item %@ with error %@", buf, 0x2Au);
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
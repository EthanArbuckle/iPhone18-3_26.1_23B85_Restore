@interface PDHandoutPublish
- (BOOL)processPayloadStatus:(id)status allowMixedResponse:(BOOL)response error:(id *)error;
- (BOOL)shouldProcessPayload:(id)payload;
- (id)_findDependencyObjects:(id)objects from:(id)from;
- (id)requestData;
- (void)_addDependentObject:(id)object to:(id)to;
- (void)_buildDependencyHashMap:(id)map;
@end

@implementation PDHandoutPublish

- (BOOL)shouldProcessPayload:(id)payload
{
  payloadCopy = payload;
  status = [payloadCopy status];
  type = [payloadCopy type];

  code = [status code];
  if (type == 1)
  {
    v7 = code == 1;
  }

  else
  {
    v7 = code - 1 < 2;
  }

  return v7;
}

- (BOOL)processPayloadStatus:(id)status allowMixedResponse:(BOOL)response error:(id *)error
{
  statusCopy = status;
  status = [statusCopy status];
  if ([status hasInternalMessage])
  {
    CLSInitLog();
    logSubsystem = [(PDHandoutPublish *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v26 = v18;
      operationID = [(PDURLRequestOperation *)self operationID];
      code = [status code];
      message = [status message];
      internalMessage = [status internalMessage];
      *buf = 138544386;
      v28 = v18;
      v29 = 2114;
      v30 = operationID;
      v31 = 1024;
      *v32 = code;
      *&v32[4] = 2112;
      *&v32[6] = message;
      v33 = 2112;
      v34 = internalMessage;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v11 = sub_100105CA4(status);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

  LOBYTE(v11) = [(PDHandoutPublish *)self shouldProcessPayload:statusCopy];
  if ((v11 & 1) != 0 || (sub_1001055FC(status, response), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 1;
  }

  else
  {
    v13 = v12;
    [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    CLSInitLog();
    logSubsystem2 = [(PDHandoutPublish *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      operationID2 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v28 = v22;
      v29 = 2114;
      v30 = operationID2;
      v31 = 2114;
      *v32 = v13;
      _os_log_error_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    immutableData = 0;
    goto LABEL_88;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  if (self)
  {
    v4 = *(&self->super._responseStatusPayloadFailed + 3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v82 objects:v96 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v82 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          classID = [v10 classID];
          if (classID)
          {
            v12 = classID;
            v95 = classID;
            v13 = [NSArray arrayWithObjects:&v95 count:1];

            if (v13)
            {
              goto LABEL_40;
            }

            goto LABEL_16;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v82 objects:v96 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  if (self)
  {
    v14 = *(&self->super._responseStatusPayloadFailed + 3);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v78 objects:v94 count:16];
  if (!v16)
  {
    v13 = 0;
    goto LABEL_39;
  }

  v17 = v16;
  v13 = 0;
  v18 = *v79;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v79 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v78 + 1) + 8 * j);
      v21 = objc_autoreleasePoolPush();
      database = [(PDOperation *)self database];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectID = [v20 objectID];
        v24 = sub_100175C6C(database, objectID);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objectID = [v20 objectID];
          v24 = sub_10016022C(database, objectID);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objectID = [v20 objectID];
            v24 = sub_1000C8950(database, objectID);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objectID = [v20 objectID];
              v24 = sub_10006FEFC(database, objectID);
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_34;
              }

              objectID = [v20 objectID];
              v24 = sub_10015CD74(database, objectID);
            }
          }
        }
      }

      v25 = v24;

      v13 = v25;
LABEL_34:
      v26 = [v13 count];

      objc_autoreleasePoolPop(v21);
      if (v26)
      {
        goto LABEL_39;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v78 objects:v94 count:16];
  }

  while (v17);
LABEL_39:

LABEL_40:
  if ([v13 count])
  {
    v27 = objc_alloc_init(PBDataWriter);
    v28 = objc_alloc_init(PDDPPublishHandoutRequest);
    operationID = [(PDURLRequestOperation *)self operationID];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v29 = *(&self->super._responseStatusPayloadFailed + 3);
    v66 = [v29 countByEnumeratingWithState:&v74 objects:v93 count:16];
    v67 = v13;
    if (v66)
    {
      v30 = *v75;
      v31 = @"select personID from CLSClassMember where parentObjectID=?";
      v63 = v29;
      v61 = *v75;
      do
      {
        for (k = 0; k != v66; k = k + 1)
        {
          if (*v75 != v30)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v74 + 1) + 8 * k);
          v34 = objc_autoreleasePoolPush();
          if ([objc_opt_class() conformsToProtocol:v31[90].length])
          {
            context = v34;
            v62 = k;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [(PDHandoutPublish *)self _findDependencyObjects:v33 from:*(&self->super._responseStatusPayloadFailed + 3)];
              v36 = [v33 payloadsWithClassIDs:v13 dependencies:v35];
            }

            else
            {
              v36 = [v33 payloadsWithClassIDs:v13 dependencies:0];
            }

            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            obj = v36;
            v37 = [obj countByEnumeratingWithState:&v70 objects:v92 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v71;
              do
              {
                v40 = 0;
                do
                {
                  if (*v71 != v39)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v41 = *(*(&v70 + 1) + 8 * v40);
                  if ([v33 needsRepair])
                  {
                    v42 = 5;
                  }

                  else
                  {
                    v42 = 1;
                  }

                  [v41 setAction:v42];
                  [(PDDPPublishHandoutRequest *)v28 addPayload:v41];
                  [(PDDPPublishHandoutRequest *)v28 writeTo:v27];
                  [(PDDPPublishHandoutRequest *)v28 clearPayloads];
                  data = [v27 data];
                  v44 = [data length];
                  stats = [(PDURLRequestOperation *)self stats];
                  if (stats)
                  {
                    stats[10] = v44;
                  }

                  stats2 = [(PDURLRequestOperation *)self stats];
                  if (stats2)
                  {
                    ++stats2[14];
                  }

                  CLSInitLog();
                  logSubsystem = [(PDHandoutPublish *)self logSubsystem];
                  if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
                  {
                    v55 = objc_opt_class();
                    v65 = v55;
                    dictionaryRepresentation = [v41 dictionaryRepresentation];
                    *buf = 138543874;
                    v87 = v55;
                    v88 = 2114;
                    v89 = operationID;
                    v90 = 2112;
                    v91 = dictionaryRepresentation;
                    _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
                  }

                  stats3 = [(PDURLRequestOperation *)self stats];
                  v49 = stats3;
                  if (stats3)
                  {
                    v50 = *(stats3 + 80);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  stats4 = [(PDURLRequestOperation *)self stats];
                  v52 = stats4;
                  if (stats4)
                  {
                    v53 = *(stats4 + 112);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = [(PDEndpointRequestOperation *)self hasReachedRequestPayloadLimitBytes:v50 count:v53];

                  if (v54)
                  {

                    objc_autoreleasePoolPop(context);
                    v29 = v63;
                    goto LABEL_79;
                  }

                  v40 = v40 + 1;
                }

                while (v38 != v40);
                v57 = [obj countByEnumeratingWithState:&v70 objects:v92 count:16];
                v38 = v57;
                v13 = v67;
              }

              while (v57);
            }

            k = v62;
            v29 = v63;
            v30 = v61;
            v31 = @"select personID from CLSClassMember where parentObjectID=?";
            v34 = context;
          }

          objc_autoreleasePoolPop(v34);
        }

        v66 = [v29 countByEnumeratingWithState:&v74 objects:v93 count:16];
      }

      while (v66);
    }

LABEL_79:

    stats5 = [(PDURLRequestOperation *)self stats];
    if (stats5 && (v59 = stats5[14], stats5, v59))
    {
      immutableData = [v27 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      immutableData = 0;
    }

    v13 = v67;
  }

  else
  {
    v27 = [NSError cls_createErrorWithCode:2 description:@"handout graph missing handout recipient classID."];
    [(PDOperation *)self finishWithError:v27];
    immutableData = 0;
  }

LABEL_88:

  return immutableData;
}

- (id)_findDependencyObjects:(id)objects from:(id)from
{
  objectsCopy = objects;
  fromCopy = from;
  if (![*(&self->super.super._responseStatusError + 3) count])
  {
    [(PDHandoutPublish *)self _buildDependencyHashMap:fromCopy];
  }

  v8 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectID = [objectsCopy objectID];
    [(PDHandoutPublish *)self _addDependentObject:objectID to:v8];
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_buildDependencyHashMap:(id)map
{
  mapCopy = map;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = mapCopy;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = objc_opt_new();
        objectID = [v12 objectID];
        [(NSError *)v6 setObject:v13 forKeyedSubscript:objectID];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        parentObjectID = [v20 parentObjectID];
        v22 = [(NSError *)v6 objectForKeyedSubscript:parentObjectID];

        if (v22)
        {
          v23 = [(NSError *)v6 objectForKeyedSubscript:parentObjectID];
          [v23 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v24 = *(&self->super.super._responseStatusError + 3);
  *(&self->super.super._responseStatusError + 3) = v6;

  objc_autoreleasePoolPop(v5);
}

- (void)_addDependentObject:(id)object to:(id)to
{
  objectCopy = object;
  toCopy = to;
  v8 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:objectCopy];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:objectCopy];
    [toCopy addObjectsFromArray:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:{objectCopy, 0}];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          objectID = [v16 objectID];
          [(PDHandoutPublish *)self _addDependentObject:objectID to:toCopy];

          objc_autoreleasePoolPop(v17);
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

@end
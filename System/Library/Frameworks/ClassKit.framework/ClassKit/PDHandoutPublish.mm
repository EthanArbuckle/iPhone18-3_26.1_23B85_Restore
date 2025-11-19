@interface PDHandoutPublish
- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5;
- (BOOL)shouldProcessPayload:(id)a3;
- (id)_findDependencyObjects:(id)a3 from:(id)a4;
- (id)requestData;
- (void)_addDependentObject:(id)a3 to:(id)a4;
- (void)_buildDependencyHashMap:(id)a3;
@end

@implementation PDHandoutPublish

- (BOOL)shouldProcessPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 status];
  v5 = [v3 type];

  v6 = [v4 code];
  if (v5 == 1)
  {
    v7 = v6 == 1;
  }

  else
  {
    v7 = v6 - 1 < 2;
  }

  return v7;
}

- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 status];
  if ([v9 hasInternalMessage])
  {
    CLSInitLog();
    v10 = [(PDHandoutPublish *)self logSubsystem];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v26 = v18;
      v19 = [(PDURLRequestOperation *)self operationID];
      v25 = [v9 code];
      v20 = [v9 message];
      v21 = [v9 internalMessage];
      *buf = 138544386;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 1024;
      *v32 = v25;
      *&v32[4] = 2112;
      *&v32[6] = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v11 = sub_100105CA4(v9);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

  LOBYTE(v11) = [(PDHandoutPublish *)self shouldProcessPayload:v8];
  if ((v11 & 1) != 0 || (sub_1001055FC(v9, a4), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 1;
  }

  else
  {
    v13 = v12;
    [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
    if (a5)
    {
      v14 = v13;
      *a5 = v13;
    }

    CLSInitLog();
    v15 = [(PDHandoutPublish *)self logSubsystem];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [(PDURLRequestOperation *)self operationID];
      *buf = 138543874;
      v28 = v22;
      v29 = 2114;
      v30 = v24;
      v31 = 2114;
      *v32 = v13;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)requestData
{
  if ([(PDOperation *)self isFinished])
  {
    v3 = 0;
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
          v11 = [v10 classID];
          if (v11)
          {
            v12 = v11;
            v95 = v11;
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
      v22 = [(PDOperation *)self database];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v20 objectID];
        v24 = sub_100175C6C(v22, v23);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v20 objectID];
          v24 = sub_10016022C(v22, v23);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [v20 objectID];
            v24 = sub_1000C8950(v22, v23);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v20 objectID];
              v24 = sub_10006FEFC(v22, v23);
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_34;
              }

              v23 = [v20 objectID];
              v24 = sub_10015CD74(v22, v23);
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
    v68 = [(PDURLRequestOperation *)self operationID];
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
                  v43 = [v27 data];
                  v44 = [v43 length];
                  v45 = [(PDURLRequestOperation *)self stats];
                  if (v45)
                  {
                    v45[10] = v44;
                  }

                  v46 = [(PDURLRequestOperation *)self stats];
                  if (v46)
                  {
                    ++v46[14];
                  }

                  CLSInitLog();
                  v47 = [(PDHandoutPublish *)self logSubsystem];
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    v55 = objc_opt_class();
                    v65 = v55;
                    v56 = [v41 dictionaryRepresentation];
                    *buf = 138543874;
                    v87 = v55;
                    v88 = 2114;
                    v89 = v68;
                    v90 = 2112;
                    v91 = v56;
                    _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ added payload item %@ ", buf, 0x20u);
                  }

                  v48 = [(PDURLRequestOperation *)self stats];
                  v49 = v48;
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

    v58 = [(PDURLRequestOperation *)self stats];
    if (v58 && (v59 = v58[14], v58, v59))
    {
      v3 = [v27 immutableData];
    }

    else
    {
      [(PDEndpointRequestOperation *)self markAsFinished];
      v3 = 0;
    }

    v13 = v67;
  }

  else
  {
    v27 = [NSError cls_createErrorWithCode:2 description:@"handout graph missing handout recipient classID."];
    [(PDOperation *)self finishWithError:v27];
    v3 = 0;
  }

LABEL_88:

  return v3;
}

- (id)_findDependencyObjects:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![*(&self->super.super._responseStatusError + 3) count])
  {
    [(PDHandoutPublish *)self _buildDependencyHashMap:v7];
  }

  v8 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 objectID];
    [(PDHandoutPublish *)self _addDependentObject:v9 to:v8];
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_buildDependencyHashMap:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
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
        v14 = [v12 objectID];
        [(NSError *)v6 setObject:v13 forKeyedSubscript:v14];
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
        v21 = [v20 parentObjectID];
        v22 = [(NSError *)v6 objectForKeyedSubscript:v21];

        if (v22)
        {
          v23 = [(NSError *)v6 objectForKeyedSubscript:v21];
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

- (void)_addDependentObject:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:v6];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:v6];
    [v7 addObjectsFromArray:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [*(&self->super.super._responseStatusError + 3) objectForKeyedSubscript:{v6, 0}];
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
          v18 = [v16 objectID];
          [(PDHandoutPublish *)self _addDependentObject:v18 to:v7];

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
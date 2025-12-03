@interface PDPushLocalClassChanges
- (BOOL)_deleteSyncItemsWithIDs:(id)ds;
- (BOOL)_shouldSkipGeneratingPayload:(id)payload;
- (BOOL)processPayloadFromResponse:(id)response error:(id *)error;
- (BOOL)processPayloadStatus:(id)status allowMixedResponse:(BOOL)response error:(id *)error;
- (BOOL)processResponseObject:(id)object error:(id *)error;
- (BOOL)shouldProcessPayload:(id)payload;
- (BOOL)wantsToExecute;
- (PDPushLocalClassChanges)initWithDatabase:(id)database;
- (id)requestData;
- (void)_updateAssetStatusUsingPendingCLSSyncItemsWithIDs:(id)ds status:(int64_t)status;
- (void)prepare;
- (void)updateSchdeuleSyncStatus:(id)status status:(int64_t)a4;
- (void)updateSurveySyncStatus:(id)status status:(int64_t)a4;
@end

@implementation PDPushLocalClassChanges

- (PDPushLocalClassChanges)initWithDatabase:(id)database
{
  v9.receiver = self;
  v9.super_class = PDPushLocalClassChanges;
  v3 = [(PDURLRequestOperation *)&v9 initWithDatabase:database];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(v3 + 267);
    *(v3 + 267) = v4;

    v6 = objc_opt_new();
    v7 = *(v3 + 283);
    *(v3 + 283) = v6;
  }

  return v3;
}

- (id)requestData
{
  if ([(PDOperation *)self isAborted])
  {
    immutableData = 0;
    goto LABEL_26;
  }

  stats = [(PDURLRequestOperation *)self stats];
  if (stats)
  {
    stats[14] = 0;
  }

  database = [(PDOperation *)self database];
  v28 = objc_alloc_init(PBDataWriter);
  v5 = objc_alloc_init(PDDPPublishHandoutRequest);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100157370;
  v34[4] = sub_100157380;
  operationID = [(PDURLRequestOperation *)self operationID];
  v6 = objc_opt_new();
  v7 = *(&self->super._responseStatusPayloadFailed + 3);
  *(&self->super._responseStatusPayloadFailed + 3) = v6;

  v8 = objc_opt_new();
  v9 = *(&self->_toBePushedSyncableNewCLSAssetItems + 3);
  *(&self->_toBePushedSyncableNewCLSAssetItems + 3) = v8;

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100157388;
  v33[3] = &unk_1002063C0;
  v33[4] = self;
  v33[5] = v34;
  v10 = objc_retainBlock(v33);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = *(&self->_beingPushedSyncableOtherItems + 3);
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (v10[2])(v10, *(*(&v29 + 1) + 8 * i), *(&self->super._responseStatusPayloadFailed + 3), *(&self->_toBePushedSyncableOtherItems + 3), v5, v28, database);
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  [*(&self->_beingPushedSyncableOtherItems + 3) removeObjectsInArray:*(&self->super._responseStatusPayloadFailed + 3)];
  stats2 = [(PDURLRequestOperation *)self stats];
  firstObject = stats2;
  if (stats2 && *(stats2 + 112))
  {
    goto LABEL_16;
  }

  v17 = [*(&self->_beingPushedSyncableCLSAssetItems + 3) count] == 0;

  if (!v17)
  {
    v18 = objc_opt_new();
    v19 = *(&self->super.super._responseStatusError + 3);
    *(&self->super.super._responseStatusError + 3) = v18;

    firstObject = [*(&self->_beingPushedSyncableCLSAssetItems + 3) firstObject];
    (v10[2])(v10, firstObject, *(&self->super.super._responseStatusError + 3), *(&self->_toBePushedSyncableOtherItems + 3), v5, v28, database);
    [*(&self->_beingPushedSyncableCLSAssetItems + 3) removeObjectsInArray:*(&self->super.super._responseStatusError + 3)];
LABEL_16:
  }

  CLSInitLog();
  v20 = CLSLogDefault;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    stats3 = [(PDURLRequestOperation *)self stats];
    v22 = stats3;
    if (stats3)
    {
      v23 = *(stats3 + 112);
    }

    else
    {
      v23 = 0;
    }

    *buf = 134217984;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges payloadItemCount:%ld.", buf, 0xCu);
  }

  stats4 = [(PDURLRequestOperation *)self stats];
  if (!stats4 || (v25 = stats4[14] == 0, stats4, v25))
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
    immutableData = 0;
  }

  else
  {
    immutableData = [v28 immutableData];
  }

  _Block_object_dispose(v34, 8);
LABEL_26:

  return immutableData;
}

- (BOOL)processResponseObject:(id)object error:(id *)error
{
  v43.receiver = self;
  v43.super_class = PDPushLocalClassChanges;
  v5 = [(PDAbstractClassZoneOperation *)&v43 processResponseObject:object error:error];
  if (v5)
  {
    if ([*(&self->super._responseStatusPayloadFailed + 3) count])
    {
      v6 = objc_opt_new();
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v7 = *(&self->super._responseStatusPayloadFailed + 3);
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v40;
        do
        {
          v11 = 0;
          do
          {
            if (*v40 != v10)
            {
              objc_enumerationMutation(v7);
            }

            syncItem = [*(*(&v39 + 1) + 8 * v11) syncItem];
            identityValue = [syncItem identityValue];
            [v6 addObject:identityValue];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v9);
      }

      if (![(PDPushLocalClassChanges *)self _deleteSyncItemsWithIDs:v6])
      {
        CLSInitLog();
        logSubsystem = [(PDPushLocalClassChanges *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_ERROR, "failed to delete processed pending sync items (other)", buf, 2u);
        }
      }

      [*(&self->super._responseStatusPayloadFailed + 3) removeAllObjects];
    }

    v15 = *(&self->_multipleChoiceAnswerItemParentChildMap + 3);
    if ((v15 & 0x10) != 0)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [*(&self->_surveyPayloadIDMap + 3) objectForKeyedSubscript:v17];
      allObjects = [v18 allObjects];

      [(PDPushLocalClassChanges *)self updateSurveySyncStatus:allObjects status:3];
      v15 = *(&self->_multipleChoiceAnswerItemParentChildMap + 3);
    }

    if ((v15 & 0x20) != 0)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [*(&self->_surveyPayloadIDMap + 3) objectForKeyedSubscript:v21];
      allObjects2 = [v22 allObjects];

      [(PDPushLocalClassChanges *)self updateSchdeuleSyncStatus:allObjects2 status:3];
    }

    if ([*(&self->super.super._responseStatusError + 3) count])
    {
      v24 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = *(&self->super.super._responseStatusError + 3);
      v26 = [v25 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          v29 = 0;
          do
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v25);
            }

            syncItem2 = [*(*(&v34 + 1) + 8 * v29) syncItem];
            identityValue2 = [syncItem2 identityValue];
            [v24 addObject:identityValue2];

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v27);
      }

      if (![(PDPushLocalClassChanges *)self _deleteSyncItemsWithIDs:v24])
      {
        CLSInitLog();
        logSubsystem2 = [(PDPushLocalClassChanges *)self logSubsystem];
        if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_ERROR, "failed to delete processed pending sync items (CLSAsset)", buf, 2u);
        }
      }

      [*(&self->super.super._responseStatusError + 3) removeAllObjects];
    }
  }

  return v5;
}

- (BOOL)processPayloadFromResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v25.receiver = self;
  v25.super_class = PDPushLocalClassChanges;
  v7 = [(PDAbstractClassZoneOperation *)&v25 processPayloadFromResponse:responseCopy error:error];
  if ([responseCopy hasStatus])
  {
    status = [responseCopy status];
    if ([status code] == 112)
    {

      goto LABEL_5;
    }

    status2 = [responseCopy status];
    code = [status2 code];

    if (code == 2)
    {
LABEL_5:
      type = [responseCopy type];
      v12 = 0;
      if (type > 29)
      {
        if (type != 30)
        {
          v13 = 0;
          if (type == 31)
          {
            *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x20);
            v16 = objc_opt_class();
            v13 = NSStringFromClass(v16);
            scheduledEvent = [responseCopy scheduledEvent];
            goto LABEL_12;
          }

LABEL_22:

          goto LABEL_23;
        }

        *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x20);
        v21 = objc_opt_class();
        v13 = NSStringFromClass(v21);
        schedule = [responseCopy schedule];
      }

      else
      {
        if (type != 25)
        {
          v13 = 0;
          if (type == 26)
          {
            *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x10);
            v14 = objc_opt_class();
            v13 = NSStringFromClass(v14);
            scheduledEvent = [responseCopy surveyStep];
LABEL_12:
            v17 = scheduledEvent;
            parentObjectId = [scheduledEvent parentObjectId];
LABEL_16:
            v12 = parentObjectId;

            if (v13 && v12)
            {
              v22 = [*(&self->_surveyPayloadIDMap + 3) objectForKey:v13];

              if (v22)
              {
                v23 = [*(&self->_surveyPayloadIDMap + 3) objectForKey:v13];
                [v23 addObject:v12];
              }

              else
              {
                v23 = objc_opt_new();
                [v23 addObject:v12];
                [*(&self->_surveyPayloadIDMap + 3) setObject:v23 forKeyedSubscript:v13];
              }
            }

            goto LABEL_22;
          }

          goto LABEL_22;
        }

        *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x10);
        v19 = objc_opt_class();
        v13 = NSStringFromClass(v19);
        schedule = [responseCopy survey];
      }

      v17 = schedule;
      parentObjectId = [schedule objectId];
      goto LABEL_16;
    }
  }

LABEL_23:

  return v7;
}

- (void)_updateAssetStatusUsingPendingCLSSyncItemsWithIDs:(id)ds status:(int64_t)status
{
  dsCopy = ds;
  v7 = +[(PDPendingSyncItem *)PDPendingCLSSyncItem];
  v8 = [v7 stringByAppendingString:@" in "];

  v9 = [PDDatabase whereSQLForArray:dsCopy prefix:v8];

  database = [(PDOperation *)self database];
  v11 = objc_opt_new();
  v12 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100157FC8;
  v14[3] = &unk_1002063E8;
  v13 = v11;
  v15 = v13;
  [database selectAll:v12 where:v9 bindings:dsCopy block:v14];

  if ([v13 count])
  {
    sub_10015D0C8(database, v13, status);
  }
}

- (void)updateSurveySyncStatus:(id)status status:(int64_t)a4
{
  statusCopy = status;
  database = [(PDOperation *)self database];
  if ([statusCopy count])
  {
    sub_1000C8DF8(database, statusCopy, a4);
  }
}

- (void)updateSchdeuleSyncStatus:(id)status status:(int64_t)a4
{
  statusCopy = status;
  database = [(PDOperation *)self database];
  if ([statusCopy count])
  {
    sub_1000C2538(database, statusCopy, a4);
  }
}

- (BOOL)_deleteSyncItemsWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[(PDPendingSyncItem *)PDPendingCLSSyncItem];
  v6 = [v5 stringByAppendingString:@" in "];

  v7 = [PDDatabase whereSQLForArray:dsCopy prefix:v6];

  database = [(PDOperation *)self database];
  v9 = objc_opt_class();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100158360;
  v12[3] = &unk_1002063E8;
  v13 = database;
  v10 = database;
  [v10 selectAll:v9 where:v7 bindings:dsCopy block:v12];
  LOBYTE(v9) = [v10 deleteAll:objc_opt_class() where:v7 bindings:dsCopy];

  return v9;
}

- (void)prepare
{
  selfCopy = self;
  v71.receiver = self;
  v71.super_class = PDPushLocalClassChanges;
  [(PDAsyncOperation *)&v71 prepare];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  database = [(PDOperation *)selfCopy database];
  v5 = objc_opt_new();
  v6 = *(&selfCopy->_beingPushedSyncableCLSAssetItems + 3);
  *(&selfCopy->_beingPushedSyncableCLSAssetItems + 3) = v5;

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = *(&selfCopy->_beingPushedSyncableOtherItems + 3);
  *(&selfCopy->_beingPushedSyncableOtherItems + 3) = v8;

  v10 = objc_opt_class();
  endpointInfo = [(PDEndpointRequestOperation *)selfCopy endpointInfo];
  v12 = endpointInfo;
  if (endpointInfo)
  {
    v13 = *(endpointInfo + 64);
  }

  else
  {
    v13 = 0;
  }

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100158B94;
  v67[3] = &unk_100206410;
  v67[4] = selfCopy;
  v14 = database;
  v68 = v14;
  v51 = v3;
  v69 = v51;
  v15 = v7;
  v70 = v15;
  [v14 selectAll:v10 where:@"entity != ?" orderBy:@"rowid asc limit:position asc offset:state desc bindings:syncOrder asc" block:{v13, 0, &off_10021BA78, v67}];

  if ([*(&selfCopy->_beingPushedSyncableCLSAssetItems + 3) count])
  {
    v49 = v15;
    v50 = v14;
    v53 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = *(&selfCopy->_beingPushedSyncableOtherItems + 3);
    v16 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v64;
      v19 = &CLSLogAsset_ptr;
      v54 = *v64;
      v55 = selfCopy;
      do
      {
        v20 = 0;
        v56 = v17;
        do
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v63 + 1) + 8 * v20);
          syncableItem = [v21 syncableItem];
          if (syncableItem)
          {
            syncItem = [v21 syncItem];
            entity = [syncItem entity];

            v25 = v19[90];
            v26 = objc_opt_self();
            LODWORD(entity) = [entity isSubclassOfClass:v26];

            if (entity)
            {
              v58 = v20;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v27 = *(&selfCopy->_beingPushedSyncableCLSAssetItems + 3);
              v28 = [v27 countByEnumeratingWithState:&v59 objects:v74 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v60;
LABEL_13:
                v31 = 0;
                while (1)
                {
                  if (*v60 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v59 + 1) + 8 * v31);
                  syncableItem2 = [v32 syncableItem];
                  v34 = syncableItem2;
                  if (syncableItem2)
                  {
                    parentObjectID = [syncableItem2 parentObjectID];
                    objectID = [syncableItem objectID];
                    v37 = [parentObjectID isEqualToString:objectID];

                    if (v37)
                    {
                      break;
                    }
                  }

                  if (v29 == ++v31)
                  {
                    v29 = [v27 countByEnumeratingWithState:&v59 objects:v74 count:16];
                    if (v29)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_20;
                  }
                }

                v38 = v32;

                if (!v38)
                {
                  goto LABEL_26;
                }

                [v53 addObject:v38];
                selfCopy = v55;
                [*(&v55->_beingPushedSyncableCLSAssetItems + 3) removeObject:v38];
                CLSInitLog();
                v39 = CLSLogDefault;
                v17 = v56;
                v19 = &CLSLogAsset_ptr;
                v20 = v58;
                if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = v39;
                  syncableItem3 = [v38 syncableItem];
                  objectID2 = [syncableItem3 objectID];
                  *buf = 138412290;
                  v73 = objectID2;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges: remove CLSAsset sync item (%@) from _toBePushedSyncableNewCLSAssetItems", buf, 0xCu);
                }

                v18 = v54;
                if (![*(&v55->_beingPushedSyncableCLSAssetItems + 3) count])
                {

                  goto LABEL_30;
                }
              }

              else
              {
LABEL_20:

                v38 = 0;
LABEL_26:
                v18 = v54;
                selfCopy = v55;
                v17 = v56;
                v19 = &CLSLogAsset_ptr;
                v20 = v58;
              }
            }
          }

          v20 = v20 + 1;
        }

        while (v20 != v17);
        v17 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v17);
    }

LABEL_30:

    [*(&selfCopy->_beingPushedSyncableOtherItems + 3) addObjectsFromArray:v53];
    CLSInitLog();
    v43 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      v45 = [v53 count];
      *buf = 134217984;
      v73 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges: insert %lu CLSAsset to _toBePushedSyncableOtherItems", buf, 0xCu);
    }

    [v53 removeAllObjects];

    v15 = v49;
    v14 = v50;
  }

  [*(&selfCopy->_beingPushedSyncableOtherItems + 3) addObjectsFromArray:v15];
  CLSInitLog();
  v46 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    v48 = [v15 count];
    *buf = 134217984;
    v73 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges: add %lu toBePushedSyncableOtherCLSAssetItems to _toBePushedSyncableOtherItems", buf, 0xCu);
  }

  [v15 removeAllObjects];
  if ([v51 count])
  {
    [(PDPushLocalClassChanges *)selfCopy _deleteSyncItemsWithIDs:v51];
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)wantsToExecute
{
  if ([(PDOperation *)self isAborted])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    if ([*(&self->_beingPushedSyncableCLSAssetItems + 3) count])
    {
      v3 = 1;
    }

    else
    {
      v3 = [*(&self->_beingPushedSyncableOtherItems + 3) count] != 0;
    }

    CLSInitLog();
    v4 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      v5 = "NO";
      if (v3)
      {
        v5 = "YES";
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PDPushLocalClassChanges wantsToExecute: %s.", &v7, 0xCu);
    }
  }

  return v3;
}

- (BOOL)shouldProcessPayload:(id)payload
{
  payloadCopy = payload;
  status = [payloadCopy status];
  type = [payloadCopy type];

  code = [status code];
  if (type == 1)
  {
    v7 = code == 1 || [status code] == 112;
  }

  else
  {
    v7 = code - 1 < 2 || code == 112;
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
    logSubsystem = [(PDPushLocalClassChanges *)self logSubsystem];
    if (os_log_type_enabled(logSubsystem, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v37 = v27;
      operationID = [(PDURLRequestOperation *)self operationID];
      code = [status code];
      message = [status message];
      [status internalMessage];
      *buf = 138544386;
      v44 = v27;
      v45 = 2114;
      v46 = operationID;
      v47 = 1024;
      *v48 = code;
      *&v48[4] = 2112;
      *&v48[6] = message;
      v50 = v49 = 2112;
      v30 = v50;
      _os_log_debug_impl(&_mh_execute_header, logSubsystem, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v11 = sub_100105CA4(status);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

  if ([(PDPushLocalClassChanges *)self shouldProcessPayload:statusCopy])
  {
    v12 = 0;
LABEL_24:
    v25 = 1;
    goto LABEL_25;
  }

  v12 = sub_1001055FC(status, response);
  if (!v12)
  {
    goto LABEL_24;
  }

  [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  CLSInitLog();
  logSubsystem2 = [(PDPushLocalClassChanges *)self logSubsystem];
  if (os_log_type_enabled(logSubsystem2, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    v32 = v31;
    operationID2 = [(PDURLRequestOperation *)self operationID];
    *buf = 138543874;
    v44 = v31;
    v45 = 2114;
    v46 = operationID2;
    v47 = 2114;
    *v48 = v12;
    _os_log_error_impl(&_mh_execute_header, logSubsystem2, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
  }

  if ([*(&self->super.super._responseStatusError + 3) count])
  {
    v36 = statusCopy;
    v15 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = 227;
    v16 = *(&self->super.super._responseStatusError + 3);
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          syncItem = [*(*(&v38 + 1) + 8 * i) syncItem];
          identityValue = [syncItem identityValue];
          [v15 addObject:identityValue];
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);
    }

    responseStatusError = [(PDEndpointRequestOperation *)self responseStatusError];
    if ([responseStatusError code] == 336)
    {
      v24 = 4;
    }

    else
    {
      v24 = 3;
    }

    [(PDPushLocalClassChanges *)self _updateAssetStatusUsingPendingCLSSyncItemsWithIDs:v15 status:v24];
    [*(&self->super.super.super.super.super.super.super.isa + v34) removeAllObjects];

    v25 = 0;
    statusCopy = v36;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  return v25;
}

- (BOOL)_shouldSkipGeneratingPayload:(id)payload
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentObjectID = [payloadCopy parentObjectID];
    v6 = [*(&self->_toBePushedSyncableNewCLSAssetItems + 3) objectForKey:parentObjectID];
    v7 = v6 != 0;

    if (!v6)
    {
      [*(&self->_toBePushedSyncableNewCLSAssetItems + 3) setObject:&off_10021B7B0 forKeyedSubscript:parentObjectID];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
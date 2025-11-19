@interface PDPushLocalClassChanges
- (BOOL)_deleteSyncItemsWithIDs:(id)a3;
- (BOOL)_shouldSkipGeneratingPayload:(id)a3;
- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4;
- (BOOL)processPayloadStatus:(id)a3 allowMixedResponse:(BOOL)a4 error:(id *)a5;
- (BOOL)processResponseObject:(id)a3 error:(id *)a4;
- (BOOL)shouldProcessPayload:(id)a3;
- (BOOL)wantsToExecute;
- (PDPushLocalClassChanges)initWithDatabase:(id)a3;
- (id)requestData;
- (void)_updateAssetStatusUsingPendingCLSSyncItemsWithIDs:(id)a3 status:(int64_t)a4;
- (void)prepare;
- (void)updateSchdeuleSyncStatus:(id)a3 status:(int64_t)a4;
- (void)updateSurveySyncStatus:(id)a3 status:(int64_t)a4;
@end

@implementation PDPushLocalClassChanges

- (PDPushLocalClassChanges)initWithDatabase:(id)a3
{
  v9.receiver = self;
  v9.super_class = PDPushLocalClassChanges;
  v3 = [(PDURLRequestOperation *)&v9 initWithDatabase:a3];
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
    v3 = 0;
    goto LABEL_26;
  }

  v4 = [(PDURLRequestOperation *)self stats];
  if (v4)
  {
    v4[14] = 0;
  }

  v27 = [(PDOperation *)self database];
  v28 = objc_alloc_init(PBDataWriter);
  v5 = objc_alloc_init(PDDPPublishHandoutRequest);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100157370;
  v34[4] = sub_100157380;
  v35 = [(PDURLRequestOperation *)self operationID];
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

        (v10[2])(v10, *(*(&v29 + 1) + 8 * i), *(&self->super._responseStatusPayloadFailed + 3), *(&self->_toBePushedSyncableOtherItems + 3), v5, v28, v27);
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  [*(&self->_beingPushedSyncableOtherItems + 3) removeObjectsInArray:*(&self->super._responseStatusPayloadFailed + 3)];
  v15 = [(PDURLRequestOperation *)self stats];
  v16 = v15;
  if (v15 && *(v15 + 112))
  {
    goto LABEL_16;
  }

  v17 = [*(&self->_beingPushedSyncableCLSAssetItems + 3) count] == 0;

  if (!v17)
  {
    v18 = objc_opt_new();
    v19 = *(&self->super.super._responseStatusError + 3);
    *(&self->super.super._responseStatusError + 3) = v18;

    v16 = [*(&self->_beingPushedSyncableCLSAssetItems + 3) firstObject];
    (v10[2])(v10, v16, *(&self->super.super._responseStatusError + 3), *(&self->_toBePushedSyncableOtherItems + 3), v5, v28, v27);
    [*(&self->_beingPushedSyncableCLSAssetItems + 3) removeObjectsInArray:*(&self->super.super._responseStatusError + 3)];
LABEL_16:
  }

  CLSInitLog();
  v20 = CLSLogDefault;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(PDURLRequestOperation *)self stats];
    v22 = v21;
    if (v21)
    {
      v23 = *(v21 + 112);
    }

    else
    {
      v23 = 0;
    }

    *buf = 134217984;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PDPushLocalClassChanges payloadItemCount:%ld.", buf, 0xCu);
  }

  v24 = [(PDURLRequestOperation *)self stats];
  if (!v24 || (v25 = v24[14] == 0, v24, v25))
  {
    [(PDEndpointRequestOperation *)self markAsFinished];
    v3 = 0;
  }

  else
  {
    v3 = [v28 immutableData];
  }

  _Block_object_dispose(v34, 8);
LABEL_26:

  return v3;
}

- (BOOL)processResponseObject:(id)a3 error:(id *)a4
{
  v43.receiver = self;
  v43.super_class = PDPushLocalClassChanges;
  v5 = [(PDAbstractClassZoneOperation *)&v43 processResponseObject:a3 error:a4];
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

            v12 = [*(*(&v39 + 1) + 8 * v11) syncItem];
            v13 = [v12 identityValue];
            [v6 addObject:v13];

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
        v14 = [(PDPushLocalClassChanges *)self logSubsystem];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to delete processed pending sync items (other)", buf, 2u);
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
      v19 = [v18 allObjects];

      [(PDPushLocalClassChanges *)self updateSurveySyncStatus:v19 status:3];
      v15 = *(&self->_multipleChoiceAnswerItemParentChildMap + 3);
    }

    if ((v15 & 0x20) != 0)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [*(&self->_surveyPayloadIDMap + 3) objectForKeyedSubscript:v21];
      v23 = [v22 allObjects];

      [(PDPushLocalClassChanges *)self updateSchdeuleSyncStatus:v23 status:3];
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

            v30 = [*(*(&v34 + 1) + 8 * v29) syncItem];
            v31 = [v30 identityValue];
            [v24 addObject:v31];

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
        v32 = [(PDPushLocalClassChanges *)self logSubsystem];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "failed to delete processed pending sync items (CLSAsset)", buf, 2u);
        }
      }

      [*(&self->super.super._responseStatusError + 3) removeAllObjects];
    }
  }

  return v5;
}

- (BOOL)processPayloadFromResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = PDPushLocalClassChanges;
  v7 = [(PDAbstractClassZoneOperation *)&v25 processPayloadFromResponse:v6 error:a4];
  if ([v6 hasStatus])
  {
    v8 = [v6 status];
    if ([v8 code] == 112)
    {

      goto LABEL_5;
    }

    v9 = [v6 status];
    v10 = [v9 code];

    if (v10 == 2)
    {
LABEL_5:
      v11 = [v6 type];
      v12 = 0;
      if (v11 > 29)
      {
        if (v11 != 30)
        {
          v13 = 0;
          if (v11 == 31)
          {
            *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x20);
            v16 = objc_opt_class();
            v13 = NSStringFromClass(v16);
            v15 = [v6 scheduledEvent];
            goto LABEL_12;
          }

LABEL_22:

          goto LABEL_23;
        }

        *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x20);
        v21 = objc_opt_class();
        v13 = NSStringFromClass(v21);
        v20 = [v6 schedule];
      }

      else
      {
        if (v11 != 25)
        {
          v13 = 0;
          if (v11 == 26)
          {
            *(&self->_multipleChoiceAnswerItemParentChildMap + 3) = (*(&self->_multipleChoiceAnswerItemParentChildMap + 3) | 0x10);
            v14 = objc_opt_class();
            v13 = NSStringFromClass(v14);
            v15 = [v6 surveyStep];
LABEL_12:
            v17 = v15;
            v18 = [v15 parentObjectId];
LABEL_16:
            v12 = v18;

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
        v20 = [v6 survey];
      }

      v17 = v20;
      v18 = [v20 objectId];
      goto LABEL_16;
    }
  }

LABEL_23:

  return v7;
}

- (void)_updateAssetStatusUsingPendingCLSSyncItemsWithIDs:(id)a3 status:(int64_t)a4
{
  v6 = a3;
  v7 = +[(PDPendingSyncItem *)PDPendingCLSSyncItem];
  v8 = [v7 stringByAppendingString:@" in "];

  v9 = [PDDatabase whereSQLForArray:v6 prefix:v8];

  v10 = [(PDOperation *)self database];
  v11 = objc_opt_new();
  v12 = objc_opt_class();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100157FC8;
  v14[3] = &unk_1002063E8;
  v13 = v11;
  v15 = v13;
  [v10 selectAll:v12 where:v9 bindings:v6 block:v14];

  if ([v13 count])
  {
    sub_10015D0C8(v10, v13, a4);
  }
}

- (void)updateSurveySyncStatus:(id)a3 status:(int64_t)a4
{
  v7 = a3;
  v6 = [(PDOperation *)self database];
  if ([v7 count])
  {
    sub_1000C8DF8(v6, v7, a4);
  }
}

- (void)updateSchdeuleSyncStatus:(id)a3 status:(int64_t)a4
{
  v7 = a3;
  v6 = [(PDOperation *)self database];
  if ([v7 count])
  {
    sub_1000C2538(v6, v7, a4);
  }
}

- (BOOL)_deleteSyncItemsWithIDs:(id)a3
{
  v4 = a3;
  v5 = +[(PDPendingSyncItem *)PDPendingCLSSyncItem];
  v6 = [v5 stringByAppendingString:@" in "];

  v7 = [PDDatabase whereSQLForArray:v4 prefix:v6];

  v8 = [(PDOperation *)self database];
  v9 = objc_opt_class();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100158360;
  v12[3] = &unk_1002063E8;
  v13 = v8;
  v10 = v8;
  [v10 selectAll:v9 where:v7 bindings:v4 block:v12];
  LOBYTE(v9) = [v10 deleteAll:objc_opt_class() where:v7 bindings:v4];

  return v9;
}

- (void)prepare
{
  v2 = self;
  v71.receiver = self;
  v71.super_class = PDPushLocalClassChanges;
  [(PDAsyncOperation *)&v71 prepare];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [(PDOperation *)v2 database];
  v5 = objc_opt_new();
  v6 = *(&v2->_beingPushedSyncableCLSAssetItems + 3);
  *(&v2->_beingPushedSyncableCLSAssetItems + 3) = v5;

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = *(&v2->_beingPushedSyncableOtherItems + 3);
  *(&v2->_beingPushedSyncableOtherItems + 3) = v8;

  v10 = objc_opt_class();
  v11 = [(PDEndpointRequestOperation *)v2 endpointInfo];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 64);
  }

  else
  {
    v13 = 0;
  }

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100158B94;
  v67[3] = &unk_100206410;
  v67[4] = v2;
  v14 = v4;
  v68 = v14;
  v51 = v3;
  v69 = v51;
  v15 = v7;
  v70 = v15;
  [v14 selectAll:v10 where:@"entity != ?" orderBy:@"rowid asc limit:position asc offset:state desc bindings:syncOrder asc" block:{v13, 0, &off_10021BA78, v67}];

  if ([*(&v2->_beingPushedSyncableCLSAssetItems + 3) count])
  {
    v49 = v15;
    v50 = v14;
    v53 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = *(&v2->_beingPushedSyncableOtherItems + 3);
    v16 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v64;
      v19 = &CLSLogAsset_ptr;
      v54 = *v64;
      v55 = v2;
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
          v22 = [v21 syncableItem];
          if (v22)
          {
            v23 = [v21 syncItem];
            v24 = [v23 entity];

            v25 = v19[90];
            v26 = objc_opt_self();
            LODWORD(v24) = [v24 isSubclassOfClass:v26];

            if (v24)
            {
              v58 = v20;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v27 = *(&v2->_beingPushedSyncableCLSAssetItems + 3);
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
                  v33 = [v32 syncableItem];
                  v34 = v33;
                  if (v33)
                  {
                    v35 = [v33 parentObjectID];
                    v36 = [v22 objectID];
                    v37 = [v35 isEqualToString:v36];

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
                v2 = v55;
                [*(&v55->_beingPushedSyncableCLSAssetItems + 3) removeObject:v38];
                CLSInitLog();
                v39 = CLSLogDefault;
                v17 = v56;
                v19 = &CLSLogAsset_ptr;
                v20 = v58;
                if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = v39;
                  v41 = [v38 syncableItem];
                  v42 = [v41 objectID];
                  *buf = 138412290;
                  v73 = v42;
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
                v2 = v55;
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

    [*(&v2->_beingPushedSyncableOtherItems + 3) addObjectsFromArray:v53];
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

  [*(&v2->_beingPushedSyncableOtherItems + 3) addObjectsFromArray:v15];
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
    [(PDPushLocalClassChanges *)v2 _deleteSyncItemsWithIDs:v51];
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

- (BOOL)shouldProcessPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 status];
  v5 = [v3 type];

  v6 = [v4 code];
  if (v5 == 1)
  {
    v7 = v6 == 1 || [v4 code] == 112;
  }

  else
  {
    v7 = v6 - 1 < 2 || v6 == 112;
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
    v10 = [(PDPushLocalClassChanges *)self logSubsystem];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v37 = v27;
      v28 = [(PDURLRequestOperation *)self operationID];
      v35 = [v9 code];
      v29 = [v9 message];
      [v9 internalMessage];
      *buf = 138544386;
      v44 = v27;
      v45 = 2114;
      v46 = v28;
      v47 = 1024;
      *v48 = v35;
      *&v48[4] = 2112;
      *&v48[6] = v29;
      v50 = v49 = 2112;
      v30 = v50;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ status code: %d message: %@ internal message:%@", buf, 0x30u);
    }
  }

  v11 = sub_100105CA4(v9);
  [(PDEndpointRequestOperation *)self handleServerAlerts:v11];

  if ([(PDPushLocalClassChanges *)self shouldProcessPayload:v8])
  {
    v12 = 0;
LABEL_24:
    v25 = 1;
    goto LABEL_25;
  }

  v12 = sub_1001055FC(v9, a4);
  if (!v12)
  {
    goto LABEL_24;
  }

  [(PDEndpointRequestOperation *)self setResponseStatusError:v12];
  if (a5)
  {
    v13 = v12;
    *a5 = v12;
  }

  CLSInitLog();
  v14 = [(PDPushLocalClassChanges *)self logSubsystem];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v31 = objc_opt_class();
    v32 = v31;
    v33 = [(PDURLRequestOperation *)self operationID];
    *buf = 138543874;
    v44 = v31;
    v45 = 2114;
    v46 = v33;
    v47 = 2114;
    *v48 = v12;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ assignment request errored: %{public}@;", buf, 0x20u);
  }

  if ([*(&self->super.super._responseStatusError + 3) count])
  {
    v36 = v8;
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

          v21 = [*(*(&v38 + 1) + 8 * i) syncItem];
          v22 = [v21 identityValue];
          [v15 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v18);
    }

    v23 = [(PDEndpointRequestOperation *)self responseStatusError];
    if ([v23 code] == 336)
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
    v8 = v36;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  return v25;
}

- (BOOL)_shouldSkipGeneratingPayload:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 parentObjectID];
    v6 = [*(&self->_toBePushedSyncableNewCLSAssetItems + 3) objectForKey:v5];
    v7 = v6 != 0;

    if (!v6)
    {
      [*(&self->_toBePushedSyncableNewCLSAssetItems + 3) setObject:&off_10021B7B0 forKeyedSubscript:v5];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
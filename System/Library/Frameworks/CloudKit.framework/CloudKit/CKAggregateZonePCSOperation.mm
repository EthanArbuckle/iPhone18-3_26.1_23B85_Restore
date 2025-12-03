@interface CKAggregateZonePCSOperation
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKAggregateZonePCSOperation)init;
- (CKAggregateZonePCSOperation)initWithSourceZoneIDs:(id)ds targetZone:(id)zone;
- (id)activityCreate;
- (id)aggregateZonePCSCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)setAggregateZonePCSCompletionBlock:(id)block;
@end

@implementation CKAggregateZonePCSOperation

- (CKAggregateZonePCSOperation)init
{
  v3.receiver = self;
  v3.super_class = CKAggregateZonePCSOperation;
  return [(CKOperation *)&v3 init];
}

- (CKAggregateZonePCSOperation)initWithSourceZoneIDs:(id)ds targetZone:(id)zone
{
  dsCopy = ds;
  zoneCopy = zone;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(dsCopy, v10, v11);
    sourceZoneIDs = v12->_sourceZoneIDs;
    v12->_sourceZoneIDs = v13;

    v17 = objc_msgSend_copy(zoneCopy, v15, v16);
    targetZone = v12->_targetZone;
    v12->_targetZone = v17;
  }

  return v12;
}

- (void)setAggregateZonePCSCompletionBlock:(id)block
{
  blockCopy = block;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885FAA44;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    aggregateZonePCSCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_aggregateZonePCSCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    aggregateZonePCSCompletionBlock = self->_aggregateZonePCSCompletionBlock;
    self->_aggregateZonePCSCompletionBlock = v9;
LABEL_9:
  }
}

- (id)aggregateZonePCSCompletionBlock
{
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, a2, v2))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, a2, v2) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1883EDEE8;
    v14 = sub_1883EF6EC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FAC40;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_aggregateZonePCSCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_sourceZoneIDs(self, v5, v6);
  objc_msgSend_setSourceZoneIDs_(infoCopy, v8, v7);

  v11 = objc_msgSend_targetZone(self, v9, v10);
  objc_msgSend_setTargetZone_(infoCopy, v12, v11);

  v13.receiver = self;
  v13.super_class = CKAggregateZonePCSOperation;
  [(CKDatabaseOperation *)&v13 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = CKAggregateZonePCSOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_sourceZoneIDs(infoCopy, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setSourceZoneIDs_(self, v8, v7);

  v11 = objc_msgSend_targetZone(infoCopy, v9, v10);

  objc_msgSend_setTargetZone_(self, v12, v11);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v8.receiver = self;
  v8.super_class = CKAggregateZonePCSOperation;
  if ([(CKOperation *)&v8 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v6 = objc_msgSend_aggregateZonePCSCompletionBlock(self, v3, v4);
  v5 = v6 != 0;

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_database(self, a2, run);
  v8 = objc_msgSend_scope(v5, v6, v7);

  if (v8 != 1)
  {
    v14 = objc_msgSend_sourceZoneIDs(self, v9, v10);
    if (objc_msgSend_count(v14, v15, v16))
    {
      v19 = objc_msgSend_targetZone(self, v17, v18);

      if (!v19)
      {
        goto LABEL_17;
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = objc_msgSend_sourceZoneIDs(self, v20, v21);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v22, &v38, v42, 16);
      if (!v23)
      {
LABEL_14:

        v30 = objc_msgSend_targetZone(self, v28, v29);
        v33 = objc_msgSend_zoneID(v30, v31, v32);
        v35 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v34, v33, run);

        if (v35)
        {
          v37.receiver = self;
          v37.super_class = CKAggregateZonePCSOperation;
          result = [(CKDatabaseOperation *)&v37 CKOperationShouldRun:run];
          goto LABEL_18;
        }

LABEL_17:
        result = 0;
        goto LABEL_18;
      }

      v25 = v23;
      v26 = *v39;
LABEL_8:
      v27 = 0;
      while (1)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v14);
        }

        if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v24, *(*(&v38 + 1) + 8 * v27), run))
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v24, &v38, v42, 16);
          if (v25)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    goto LABEL_17;
  }

  if (!run)
  {
    goto LABEL_17;
  }

  v11 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v9, @"CKErrorDomain", 12, @"You can't execute this operation in the public database");
  v12 = v11;
  result = 0;
  *run = v11;
LABEL_18:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v9 = self->super.super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super.super._signpost;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v18 = objc_msgSend_identifier(v15, v16, v17);

    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKAggregateZonePCSOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_targetZone(self, v7, v8);

  if (v19)
  {
    v22 = MEMORY[0x1E695DFA8];
    v23 = MEMORY[0x1E695DEC8];
    v24 = objc_msgSend_targetZone(self, v20, v21);
    v27 = objc_msgSend_zoneID(v24, v25, v26);
    v29 = objc_msgSend_arrayWithObjects_(v23, v28, v27, 0);
    v31 = objc_msgSend_setWithArray_(v22, v30, v29);

    v33 = objc_msgSend_zoneIDsToZoneNamesString_(self, v32, v31);
    v36 = objc_msgSend_operationMetric(self, v34, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v33, @"zoneNames");
  }

  v38 = objc_msgSend_aggregateZonePCSCompletionBlock(self, v20, v21);

  if (v38)
  {
    v43 = objc_msgSend_aggregateZonePCSCompletionBlock(self, v39, v40);
    if (errorCopy)
    {
      v44 = 0;
    }

    else
    {
      v44 = objc_msgSend_targetZone(self, v41, v42);
    }

    v45 = objc_msgSend_CKClientSuitableError(errorCopy, v41, v42);
    (v43)[2](v43, v44, v45);

    if (!errorCopy)
    {
    }

    objc_msgSend_setAggregateZonePCSCompletionBlock_(self, v46, 0);
  }

  v47.receiver = self;
  v47.super_class = CKAggregateZonePCSOperation;
  [(CKOperation *)&v47 _finishOnCallbackQueueWithError:errorCopy];
}

- (void)ckSignpostBegin
{
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v4 = signpost;

  if (v4)
  {
    if (self)
    {
      v5 = self->super.super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super.super._signpost;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v14 = objc_msgSend_identifier(v11, v12, v13);

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v17 = objc_msgSend_operationID(self, v15, v16);
      v20 = objc_msgSend_containerID(self, v18, v19);
      v23 = objc_msgSend_group(self, v21, v22);
      v26 = objc_msgSend_operationGroupID(v23, v24, v25);
      v29 = objc_msgSend_operationGroupName(self, v27, v28);
      v32 = objc_msgSend_operationInfo(self, v30, v31);
      v35 = objc_msgSend_discretionaryNetworkBehavior(v32, v33, v34);
      v36 = CKStringForDiscretionaryNetworkBehavior(v35);
      v39 = objc_msgSend_qualityOfService(self, v37, v38);
      v41 = CKStringForQOS(v39, v40);
      v43 = 138413570;
      v44 = v17;
      v45 = 2112;
      v46 = v20;
      v47 = 2112;
      v48 = v26;
      v49 = 2114;
      v50 = v29;
      v51 = 2114;
      v52 = v36;
      v53 = 2114;
      v54 = v41;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKAggregateZonePCSOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)ckSignpostEndWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v6 = signpost;

  if (v6)
  {
    if (self)
    {
      v7 = self->super.super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super.super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v18 = 138412290;
      v19 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKAggregateZonePCSOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/aggregate-zone-pcs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end
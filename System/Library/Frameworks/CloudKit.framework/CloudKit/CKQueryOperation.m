@interface CKQueryOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKQueryOperation)init;
- (CKQueryOperation)initWithCursor:(CKQueryCursor *)cursor;
- (CKQueryOperation)initWithQuery:(CKQuery *)query;
- (id)activityCreate;
- (id)queryCursorFetchedBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleOperationDidCompleteWithCursor:(id)a3 metrics:(id)a4 error:(id)a5;
- (void)handleQueryDidFetchCursor:(id)a3 reply:(id)a4;
- (void)handleQueryDidFetchForRecordID:(id)a3 record:(id)a4 error:(id)a5;
- (void)queryCompletionBlock;
- (void)recordFetchedBlock;
- (void)recordMatchedBlock;
- (void)setQueryCompletionBlock:(void *)queryCompletionBlock;
- (void)setQueryCompletionBlockIVar:(id)a3;
- (void)setQueryCursorFetchedBlock:(id)a3;
- (void)setRecordFetchedBlock:(void *)recordFetchedBlock;
- (void)setRecordMatchedBlock:(void *)recordMatchedBlock;
@end

@implementation CKQueryOperation

- (CKQueryOperation)init
{
  v6.receiver = self;
  v6.super_class = CKQueryOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v3;

    v2->_shouldFetchAssetContent = 1;
    v2->_resultsLimit = 0;
  }

  return v2;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/query", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)recordFetchedBlock
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
    v13 = sub_1883EDA34;
    v14 = sub_1883EF60C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B9754;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordFetchedBlock);
  }

  return v6;
}

- (void)recordMatchedBlock
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
    v13 = sub_1883EDA34;
    v14 = sub_1883EF60C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B9948;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordMatchedBlock);
  }

  return v6;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKQueryOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)queryCompletionBlock
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
    v13 = sub_1883EDA34;
    v14 = sub_1883EF60C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B9B3C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_queryCompletionBlock);
  }

  return v6;
}

- (CKQueryOperation)initWithQuery:(CKQuery *)query
{
  v4 = query;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_query;
    v9->_query = v10;
  }

  return v9;
}

- (CKQueryOperation)initWithCursor:(CKQueryCursor *)cursor
{
  v4 = cursor;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_cursor;
    v9->_cursor = v10;
  }

  return v9;
}

- (void)setRecordFetchedBlock:(void *)recordFetchedBlock
{
  v6 = recordFetchedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B96F0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordFetchedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordFetchedBlock;
    self->_recordFetchedBlock = v9;
LABEL_9:
  }
}

- (void)setRecordMatchedBlock:(void *)recordMatchedBlock
{
  v6 = recordMatchedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B98E4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordMatchedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordMatchedBlock;
    self->_recordMatchedBlock = v9;
LABEL_9:
  }
}

- (void)setQueryCompletionBlockIVar:(id)a3
{
  v6 = a3;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B9AD8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    queryCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_queryCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    queryCompletionBlock = self->_queryCompletionBlock;
    self->_queryCompletionBlock = v9;
LABEL_9:
  }
}

- (void)setQueryCursorFetchedBlock:(id)a3
{
  v6 = a3;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885B9CCC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    queryCursorFetchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_queryCursorFetchedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    queryCursorFetchedBlock = self->_queryCursorFetchedBlock;
    self->_queryCursorFetchedBlock = v9;
LABEL_9:
  }
}

- (id)queryCursorFetchedBlock
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
    v13 = sub_1883EDA34;
    v14 = sub_1883EF60C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885B9EC8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_queryCursorFetchedBlock);
  }

  return v6;
}

- (void)ckSignpostEndWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v19 = v4;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKQueryOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasCKOperationCallbacksSet
{
  v17.receiver = self;
  v17.super_class = CKQueryOperation;
  if ([(CKOperation *)&v17 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordFetchedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordMatchedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_queryCursorFetchedBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v15 = objc_msgSend_queryCompletionBlock(self, v12, v13);
        v5 = v15 != 0;
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v5 = objc_msgSend_query(self, a2, a3);
  v8 = objc_msgSend_recordType(v5, v6, v7);
  if (objc_msgSend_length(v8, v9, v10))
  {
  }

  else
  {
    v15 = objc_msgSend_cursor(self, v11, v12);

    if (!v15)
    {
      if (a3)
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v29, @"CKErrorDomain", 12, @"either a query or query cursor must be provided for %@", v28);
      }

      goto LABEL_16;
    }
  }

  v16 = objc_msgSend_recordFetchedBlock(self, v13, v14);
  if (v16 || (objc_msgSend_recordMatchedBlock(self, v17, v18), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    goto LABEL_7;
  }

  v30 = objc_msgSend_queryCompletionBlock(self, v19, v20);

  if (v30)
  {
LABEL_7:
    v23 = objc_msgSend_zoneID(self, v21, v22);
    v25 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v24, v23, a3);

    if (v25)
    {
      v33.receiver = self;
      v33.super_class = CKQueryOperation;
      LOBYTE(v26) = [(CKDatabaseOperation *)&v33 CKOperationShouldRun:a3];
      return v26;
    }

LABEL_16:
    LOBYTE(v26) = 0;
    return v26;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v31 = ck_log_facility_ck;
  v26 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO);
  if (v26)
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v31, OS_LOG_TYPE_INFO, "Warn: There's no point in running a query if there are no progress or completion blocks set. Bailing early.", buf, 2u);
    goto LABEL_16;
  }

  return v26;
}

- (void)setQueryCompletionBlock:(void *)queryCompletionBlock
{
  v4 = queryCompletionBlock == 0;
  v7 = queryCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setQueryCompletionBlockIVar_(self, v6, v7);
}

- (void)handleQueryDidFetchForRecordID:(id)a3 record:(id)a4 error:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v14 = signpost;

  if (v12)
  {
    if (!v14)
    {
      goto LABEL_22;
    }

    if (self)
    {
      v16 = self->super.super._signpost;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v20 = objc_msgSend_log(v17, v18, v19);

    if (self)
    {
      v21 = self->super.super._signpost;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v25 = objc_msgSend_identifier(v22, v23, v24);

    if ((v25 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
    {
      goto LABEL_21;
    }

    *buf = 138412546;
    v84 = v8;
    v85 = 2112;
    v86 = v12;
    v26 = "Record %@ fetched with error: %@";
    v27 = v20;
    v28 = v25;
    v29 = 22;
    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v30 = self->super.super._signpost;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;
  v20 = objc_msgSend_log(v31, v32, v33);

  if (self)
  {
    v34 = self->super.super._signpost;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v38 = objc_msgSend_identifier(v35, v36, v37);

  if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138412290;
    v84 = v8;
    v26 = "Record %@ fetched";
    v27 = v20;
    v28 = v38;
    v29 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v27, OS_SIGNPOST_EVENT, v28, "CKQueryOperation", v26, buf, v29);
  }

LABEL_21:

LABEL_22:
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_1885BA8C8;
  v82[3] = &unk_1E70BEBB0;
  v82[4] = self;
  objc_msgSend_countMergeableValueMetrics_(v9, v15, v82);
  v41 = objc_msgSend_recordMatchedBlock_wrapper(self, v39, v40);
  v44 = v41;
  if (v41)
  {
    v45 = _Block_copy(v41);
  }

  else
  {
    v46 = objc_msgSend_recordMatchedBlock(self, v42, v43);
    v45 = _Block_copy(v46);
  }

  if (v45)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v49 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v62 = v49;
      v65 = objc_msgSend_operationID(self, v63, v64);
      v68 = objc_msgSend_recordID(v9, v66, v67);
      v71 = objc_msgSend_recordChangeTag(v9, v69, v70);
      *buf = 138544130;
      v84 = v65;
      v85 = 2112;
      v86 = v68;
      v87 = 2112;
      v88 = v71;
      v89 = 2112;
      v90 = v12;
      _os_log_debug_impl(&dword_1883EA000, v62, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about matched record with ID %@ etag=%@: %@", buf, 0x2Au);
    }

    v45[2](v45, v8, v9, v12);
  }

  else
  {
    v52 = objc_msgSend_recordFetchedBlock(self, v47, v48);

    if (v9 && v52)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v53 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v72 = v53;
        v75 = objc_msgSend_operationID(self, v73, v74);
        v78 = objc_msgSend_recordID(v9, v76, v77);
        v81 = objc_msgSend_recordChangeTag(v9, v79, v80);
        *buf = 138544130;
        v84 = v75;
        v85 = 2112;
        v86 = v78;
        v87 = 2112;
        v88 = v81;
        v89 = 2112;
        v90 = v12;
        _os_log_debug_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about matched record with ID %@ etag=%@: %@", buf, 0x2Au);
      }

      v56 = objc_msgSend_recordFetchedBlock(self, v54, v55);
      (v56)[2](v56, v9);
    }
  }

  if (v8 && v12 && (objc_msgSend_canDropItemResultsEarly(self, v50, v51) & 1) == 0)
  {
    v59 = objc_msgSend_recordErrors(self, v57, v58);
    objc_msgSend_setObject_forKeyedSubscript_(v59, v60, v12, v8);
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (void)handleQueryDidFetchCursor:(id)a3 reply:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v9 = signpost;

  if (v9)
  {
    if (self)
    {
      v12 = self->super.super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_log(v13, v14, v15);

    if (self)
    {
      v17 = self->super.super._signpost;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v21 = objc_msgSend_identifier(v18, v19, v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v32 = 138412290;
      v33 = v6;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKQueryOperation", "Cursor %@ fetched", &v32, 0xCu);
    }
  }

  v22 = objc_msgSend_queryCursorFetchedBlock(self, v10, v11);

  if (v22)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v28 = v23;
      v31 = objc_msgSend_operationID(self, v29, v30);
      v32 = 138543618;
      v33 = v31;
      v34 = 2112;
      v35 = v6;
      _os_log_debug_impl(&dword_1883EA000, v28, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a query cursor %@", &v32, 0x16u);
    }

    v26 = objc_msgSend_queryCursorFetchedBlock(self, v24, v25);
    (v26)[2](v26, v6);
  }

  v7[2](v7, 0);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleOperationDidCompleteWithCursor:(id)a3 metrics:(id)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ((objc_msgSend_isCancelled(self, v11, v12) & 1) == 0)
  {
    objc_msgSend_setResultsCursor_(self, v13, v8);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v16 = v14;
    v19 = objc_msgSend_operationID(self, v17, v18);
    *buf = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Received completion callback for operation %{public}@ with cursor %@", buf, 0x16u);
  }

  v20.receiver = self;
  v20.super_class = CKQueryOperation;
  [(CKOperation *)&v20 handleOperationDidCompleteWithMetrics:v10 error:v9];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v108 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKQueryOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_recordErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_recordErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to fetch some query results");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = objc_msgSend_CKClientSuitableError(v4, v7, v8);
  v32 = objc_msgSend_queryCompletionBlock_wrapper(self, v30, v31);
  v35 = v32;
  if (v32)
  {
    v36 = _Block_copy(v32);
  }

  else
  {
    v37 = objc_msgSend_queryCompletionBlock(self, v33, v34);
    v36 = _Block_copy(v37);
  }

  if (v36)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v83 = v38;
      v86 = objc_msgSend_operationID(self, v84, v85);
      v89 = objc_msgSend_resultsCursor(self, v87, v88);
      v90 = v89;
      v91 = @" Error was: ";
      *buf = 138544130;
      v92 = &stru_1EFA32970;
      v101 = v86;
      v102 = 2112;
      if (!v29)
      {
        v91 = &stru_1EFA32970;
      }

      v103 = v89;
      if (v29)
      {
        v92 = v29;
      }

      v104 = 2114;
      v105 = v91;
      v106 = 2112;
      v107 = v92;
      _os_log_debug_impl(&dword_1883EA000, v83, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. Query cursor is %@.%{public}@%@", buf, 0x2Au);
    }

    v41 = objc_msgSend_resultsCursor(self, v39, v40);
    v36[2](v36, v41, v29);

    objc_msgSend_setQueryCompletionBlock_(self, v42, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v44 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v93 = v44;
      v96 = objc_msgSend_operationID(self, v94, v95);
      v97 = @" Error was: ";
      v98 = &stru_1EFA32970;
      *buf = 138543874;
      v101 = v96;
      if (v29)
      {
        v98 = v29;
      }

      else
      {
        v97 = &stru_1EFA32970;
      }

      v102 = 2114;
      v103 = v97;
      v104 = 2112;
      v105 = v98;
      _os_log_debug_impl(&dword_1883EA000, v93, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no queryCompletionBlock was set.%{public}@%@", buf, 0x20u);
    }
  }

  objc_msgSend_setRecordFetchedBlock_(self, v43, 0);
  objc_msgSend_setRecordMatchedBlock_(self, v45, 0);
  objc_msgSend_setQueryCursorFetchedBlock_(self, v46, 0);
  if (self)
  {
    mergeableValueCount = self->_mergeableValueCount;
    if (mergeableValueCount)
    {
      v50 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v47, mergeableValueCount);
      v53 = objc_msgSend_operationMetric(self, v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v50, @"mergeable_valueCount");
    }

    mergeableDeltaCount = self->_mergeableDeltaCount;
    if (mergeableDeltaCount)
    {
      v56 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v47, mergeableDeltaCount);
      v59 = objc_msgSend_operationMetric(self, v57, v58);
      objc_msgSend_setObject_forKeyedSubscript_(v59, v60, v56, @"mergeable_fetchedDeltaCount");
    }

    assetBackedMergeableDeltaCount = self->_assetBackedMergeableDeltaCount;
    if (assetBackedMergeableDeltaCount)
    {
      v61 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v47, assetBackedMergeableDeltaCount);
      v64 = objc_msgSend_operationMetric(self, v62, v63);
      objc_msgSend_setObject_forKeyedSubscript_(v64, v65, v61, @"mergeable_assetCount");
    }
  }

  v66 = objc_msgSend_zoneID(self, v47, assetBackedMergeableDeltaCount);

  if (v66)
  {
    v69 = MEMORY[0x1E695DFA8];
    v70 = MEMORY[0x1E695DEC8];
    v71 = objc_msgSend_zoneID(self, v67, v68);
    v73 = objc_msgSend_arrayWithObjects_(v70, v72, v71, 0);
    v75 = objc_msgSend_setWithArray_(v69, v74, v73);

    v77 = objc_msgSend_zoneIDsToZoneNamesString_(self, v76, v75);
    v80 = objc_msgSend_operationMetric(self, v78, v79);
    objc_msgSend_setObject_forKeyedSubscript_(v80, v81, v77, @"zoneNames");
  }

  v99.receiver = self;
  v99.super_class = CKQueryOperation;
  [(CKOperation *)&v99 _finishOnCallbackQueueWithError:v4];

  v82 = *MEMORY[0x1E69E9840];
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_query(self, v5, v6);
  v8 = v7;
  if (v4)
  {
    objc_storeStrong(v4 + 19, v7);
  }

  v11 = objc_msgSend_zoneID(self, v9, v10);
  v12 = v11;
  if (v4)
  {
    objc_storeStrong(v4 + 20, v11);
  }

  v15 = objc_msgSend_cursor(self, v13, v14);
  v16 = v15;
  if (v4)
  {
    objc_storeStrong(v4 + 21, v15);
  }

  v19 = objc_msgSend_resultsLimit(self, v17, v18);
  if (v4)
  {
    v4[22] = v19;
  }

  v22 = objc_msgSend_desiredKeys(self, v20, v21);
  v23 = v22;
  if (v4)
  {
    objc_storeStrong(v4 + 23, v22);
  }

  v26 = objc_msgSend_assetTransferOptionsByKey(self, v24, v25);
  v27 = v26;
  if (v4)
  {
    objc_storeStrong(v4 + 24, v26);
  }

  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v28, v29);
  if (v4)
  {
    *(v4 + 144) = AssetContent;
    *(v4 + 145) = objc_msgSend_fetchAllResults(self, v31, v32);
  }

  else
  {
    objc_msgSend_fetchAllResults(self, v31, v32);
  }

  v33.receiver = self;
  v33.super_class = CKQueryOperation;
  [(CKDatabaseOperation *)&v33 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v37.receiver = self;
  v37.super_class = CKQueryOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v37 fillFromOperationInfo:v4];
  v7 = objc_msgSend_query(v4, v5, v6, v37.receiver, v37.super_class);
  objc_msgSend_setQuery_(self, v8, v7);

  v11 = objc_msgSend_zoneID(v4, v9, v10);
  objc_msgSend_setZoneID_(self, v12, v11);

  v15 = objc_msgSend_cursor(v4, v13, v14);
  objc_msgSend_setCursor_(self, v16, v15);

  v19 = objc_msgSend_resultsLimit(v4, v17, v18);
  objc_msgSend_setResultsLimit_(self, v20, v19);
  v23 = objc_msgSend_desiredKeys(v4, v21, v22);
  objc_msgSend_setDesiredKeys_(self, v24, v23);

  v27 = objc_msgSend_assetTransferOptionsByKey(v4, v25, v26);
  objc_msgSend_setAssetTransferOptionsByKey_(self, v28, v27);

  AssetContent = objc_msgSend_shouldFetchAssetContent(v4, v29, v30);
  objc_msgSend_setShouldFetchAssetContent_(self, v32, AssetContent);
  AllResults = objc_msgSend_fetchAllResults(v4, v33, v34);

  objc_msgSend_setFetchAllResults_(self, v36, AllResults);
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleOperationDidCompleteWithCursor_metrics_error_, 2, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKQueryOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
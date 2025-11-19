@interface CKFetchRecordZonesOperation
+ (CKFetchRecordZonesOperation)fetchAllRecordZonesOperation;
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchRecordZonesOperation)init;
- (CKFetchRecordZonesOperation)initWithRecordZoneIDs:(NSArray *)zoneIDs;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fetchRecordZonesCompletionBlock;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleFetchForRecordZoneID:(id)a3 recordZone:(id)a4 error:(id)a5;
- (void)perRecordZoneCompletionBlock;
- (void)performCKOperation;
- (void)setFetchRecordZonesCompletionBlock:(void *)fetchRecordZonesCompletionBlock;
- (void)setFetchRecordZonesCompletionBlockIVar:(id)a3;
- (void)setPerRecordZoneCompletionBlock:(void *)perRecordZoneCompletionBlock;
@end

@implementation CKFetchRecordZonesOperation

- (CKFetchRecordZonesOperation)init
{
  v8.receiver = self;
  v8.super_class = CKFetchRecordZonesOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordZonesByZoneID = v2->_recordZonesByZoneID;
    v2->_recordZonesByZoneID = v3;

    v5 = objc_opt_new();
    recordZoneErrors = v2->_recordZoneErrors;
    v2->_recordZoneErrors = v5;
  }

  return v2;
}

+ (CKFetchRecordZonesOperation)fetchAllRecordZonesOperation
{
  v2 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setIsFetchAllRecordZonesOperation_(v2, v3, 1);

  return v2;
}

- (CKFetchRecordZonesOperation)initWithRecordZoneIDs:(NSArray *)zoneIDs
{
  v4 = zoneIDs;
  v26 = 0;
  v5 = _CKCheckArgument("zoneIDs", v4, 0, 0, 0, &v26);
  v6 = v26;
  if ((v5 & 1) == 0)
  {
    v15 = v6;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  v11 = objc_msgSend_init(self, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_copy(v4, v9, v10);
    recordZoneIDs = v11->_recordZoneIDs;
    v11->_recordZoneIDs = v12;
  }

  return v11;
}

- (void)setPerRecordZoneCompletionBlock:(void *)perRecordZoneCompletionBlock
{
  v6 = perRecordZoneCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188601478;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordZoneCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordZoneCompletionBlock;
    self->_perRecordZoneCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perRecordZoneCompletionBlock
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
    v13 = sub_1883EDF6C;
    v14 = sub_1883EF704;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188601674;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordZoneCompletionBlock);
  }

  return v6;
}

- (void)setFetchRecordZonesCompletionBlockIVar:(id)a3
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
    v12[2] = sub_188601804;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    fetchRecordZonesCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordZonesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    fetchRecordZonesCompletionBlock = self->_fetchRecordZonesCompletionBlock;
    self->_fetchRecordZonesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchRecordZonesCompletionBlock
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
    v13 = sub_1883EDF6C;
    v14 = sub_1883EF704;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188601A00;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordZonesCompletionBlock);
  }

  return v6;
}

- (void)setFetchRecordZonesCompletionBlock:(void *)fetchRecordZonesCompletionBlock
{
  v4 = fetchRecordZonesCompletionBlock == 0;
  v7 = fetchRecordZonesCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setFetchRecordZonesCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setRecordZoneIDs_(v4, v8, v7);

  AllRecordZonesOperation = objc_msgSend_isFetchAllRecordZonesOperation(self, v9, v10);
  objc_msgSend_setIsFetchAllRecordZonesOperation_(v4, v12, AllRecordZonesOperation);
  v15 = objc_msgSend_ignorePCSFailures(self, v13, v14);
  objc_msgSend_setIgnorePCSFailures_(v4, v16, v15);
  v17.receiver = self;
  v17.super_class = CKFetchRecordZonesOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v17.receiver = self;
  v17.super_class = CKFetchRecordZonesOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:v4];
  v7 = objc_msgSend_recordZoneIDs(v4, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setRecordZoneIDs_(self, v8, v7);

  AllRecordZonesOperation = objc_msgSend_isFetchAllRecordZonesOperation(v4, v9, v10);
  objc_msgSend_setIsFetchAllRecordZonesOperation_(self, v12, AllRecordZonesOperation);
  v15 = objc_msgSend_ignorePCSFailures(v4, v13, v14);

  objc_msgSend_setIgnorePCSFailures_(self, v16, v15);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchRecordZonesOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perRecordZoneCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_fetchRecordZonesCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordZoneIDs(self, a2, a3);
  if (v5)
  {
  }

  else if ((objc_msgSend_isFetchAllRecordZonesOperation(self, v6, v7) & 1) == 0)
  {
    if (a3)
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v36, @"CKErrorDomain", 12, @"property recordZoneIDs must not be nil for %@", v35);
    }

    goto LABEL_20;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = objc_msgSend_recordZoneIDs(self, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v44, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v40 + 1) + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a3)
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v32, @"CKErrorDomain", 12, @"Unexpected zoneID passed to %@: %@", v31, v16);
          }

LABEL_19:

          goto LABEL_20;
        }

        if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v17, v16, a3))
        {
          goto LABEL_19;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v18, &v40, v44, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ((objc_msgSend_isFetchAllRecordZonesOperation(self, v19, v20) & 1) != 0 || (objc_msgSend_recordZoneIDs(self, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_count(v23, v24, v25), v23, v26))
  {
    v27 = objc_msgSend_fetchRecordZonesCompletionBlock(self, v21, v22);
    if (v27)
    {

LABEL_24:
      v39.receiver = self;
      v39.super_class = CKFetchRecordZonesOperation;
      result = [(CKDatabaseOperation *)&v39 CKOperationShouldRun:a3];
      goto LABEL_25;
    }

    v37 = objc_msgSend_perRecordZoneCompletionBlock(self, v28, v29);

    if (v37)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  result = 0;
LABEL_25:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performCKOperation
{
  v17 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v8 = objc_msgSend_operationID(self, v6, v7);
    v11 = objc_msgSend_recordZoneIDs(self, v9, v10);
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v11;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching record zones with operation %{public}@ zoneIDs=%@", buf, 0x16u);
  }

  v12.receiver = self;
  v12.super_class = CKFetchRecordZonesOperation;
  [(CKOperation *)&v12 performCKOperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchForRecordZoneID:(id)a3 recordZone:(id)a4 error:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
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

  if (!v12)
  {
    if (!v14)
    {
      canDropItemResultsEarly = objc_msgSend_canDropItemResultsEarly(self, v15, v16);
      if (!v8 || (canDropItemResultsEarly & 1) != 0)
      {
        goto LABEL_32;
      }

LABEL_30:
      v46 = objc_msgSend_recordZonesByZoneID(self, v43, v44, *v64, *&v64[8]);
      objc_msgSend_setObject_forKeyedSubscript_(v46, v49, v9, v8);
      goto LABEL_31;
    }

    if (self)
    {
      v31 = self->super.super._signpost;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v21 = objc_msgSend_log(v32, v33, v34);

    if (self)
    {
      v35 = self->super.super._signpost;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v39 = objc_msgSend_identifier(v36, v37, v38);

    if ((v39 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_21;
    }

    *v64 = 138412290;
    *&v64[4] = v8;
    v27 = "Record zone %@ fetched";
    v28 = v21;
    v29 = v39;
    v30 = 12;
    goto LABEL_20;
  }

  if (!v14)
  {
    v45 = objc_msgSend_canDropItemResultsEarly(self, v15, v16);
    if (!v8 || (v45 & 1) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (self)
  {
    v17 = self->super.super._signpost;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v21 = objc_msgSend_log(v18, v19, v20);

  if (self)
  {
    v22 = self->super.super._signpost;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v26 = objc_msgSend_identifier(v23, v24, v25);

  if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v64 = 138412546;
    *&v64[4] = v8;
    *&v64[12] = 2112;
    *&v64[14] = v12;
    v27 = "Record zone %@ fetched with error: %@";
    v28 = v21;
    v29 = v26;
    v30 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v28, OS_SIGNPOST_EVENT, v29, "CKFetchRecordZonesOperation", v27, v64, v30);
  }

LABEL_21:

  v42 = objc_msgSend_canDropItemResultsEarly(self, v40, v41);
  if (!v8 || (v42 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_27:
  v46 = objc_msgSend_recordZoneErrors(self, v43, v44, *v64, *&v64[16]);
  objc_msgSend_setObject_forKeyedSubscript_(v46, v47, v12, v8);
LABEL_31:

LABEL_32:
  v50 = objc_msgSend_perRecordZoneCompletionBlock_wrapper(self, v43, v44, *v64, *&v64[8]);
  v53 = v50;
  if (v50)
  {
    v54 = _Block_copy(v50);
  }

  else
  {
    v55 = objc_msgSend_perRecordZoneCompletionBlock(self, v51, v52);
    v54 = _Block_copy(v55);
  }

  if (v54)
  {
    v56 = v9;
    v57 = v56;
    if (v12)
    {

      v57 = 0;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v58 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v60 = v58;
      v63 = objc_msgSend_operationID(self, v61, v62);
      *v64 = 138543874;
      *&v64[4] = v63;
      *&v64[12] = 2112;
      *&v64[14] = v8;
      *&v64[22] = 2112;
      v65 = v12;
      _os_log_debug_impl(&dword_1883EA000, v60, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about fetched zone with ID %@: %@", v64, 0x20u);
    }

    v54[2](v54, v8, v57, v12);
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordZonesOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_recordZoneErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_recordZoneErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to fetch some record zones");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = MEMORY[0x1E695DFA8];
  v30 = objc_msgSend_recordZoneIDs(self, v7, v8);
  v32 = objc_msgSend_setWithArray_(v29, v31, v30);

  if (objc_msgSend_count(v32, v33, v34))
  {
    v37 = objc_msgSend_zoneIDsToZoneNamesString_(self, v35, v32);
    v40 = objc_msgSend_operationMetric(self, v38, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v37, @"zoneNames");
  }

  v42 = objc_msgSend_fetchRecordZonesCompletionBlock_wrapper(self, v35, v36);
  v45 = v42;
  if (v42)
  {
    v46 = _Block_copy(v42);
  }

  else
  {
    v47 = objc_msgSend_fetchRecordZonesCompletionBlock(self, v43, v44);
    v46 = _Block_copy(v47);
  }

  if (v46)
  {
    v50 = objc_msgSend_recordZonesByZoneID(self, v48, v49);
    v53 = objc_msgSend_CKClientSuitableError(v4, v51, v52);
    v46[2](v46, v50, v53);

    objc_msgSend_setFetchRecordZonesCompletionBlock_(self, v54, 0);
  }

  objc_msgSend_setPerRecordZoneCompletionBlock_(self, v48, 0);
  v55.receiver = self;
  v55.super_class = CKFetchRecordZonesOperation;
  [(CKOperation *)&v55 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRecordZonesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRecordZonesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-record-zones", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleFetchForRecordZoneID_recordZone_error_, 2, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKFetchRecordZonesOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
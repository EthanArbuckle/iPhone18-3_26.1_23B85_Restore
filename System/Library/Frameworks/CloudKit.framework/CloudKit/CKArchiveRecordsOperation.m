@interface CKArchiveRecordsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKArchiveRecordsOperation)init;
- (CKArchiveRecordsOperation)initWithRecordIDs:(id)a3;
- (id)activityCreate;
- (id)archiveRecordsCompletionBlock;
- (id)recordArchivedBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleRecordArchivalForRecordID:(id)a3 error:(id)a4;
- (void)setArchiveRecordsCompletionBlock:(id)a3;
- (void)setRecordArchivedBlock:(id)a3;
@end

@implementation CKArchiveRecordsOperation

- (CKArchiveRecordsOperation)init
{
  v6.receiver = self;
  v6.super_class = CKArchiveRecordsOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    perItemErrors = v2->_perItemErrors;
    v2->_perItemErrors = v3;
  }

  return v2;
}

- (CKArchiveRecordsOperation)initWithRecordIDs:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    recordIDs = v9->_recordIDs;
    v9->_recordIDs = v10;
  }

  return v9;
}

- (void)setRecordArchivedBlock:(id)a3
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
    v12[2] = sub_1885BEBA0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    recordArchivedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordArchivedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    recordArchivedBlock = self->_recordArchivedBlock;
    self->_recordArchivedBlock = v9;
LABEL_9:
  }
}

- (id)recordArchivedBlock
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
    v13 = sub_1883EDAB8;
    v14 = sub_1883EF624;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BED9C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordArchivedBlock);
  }

  return v6;
}

- (void)setArchiveRecordsCompletionBlock:(id)a3
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
    v12[2] = sub_1885BEF2C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    archiveRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_archiveRecordsCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    archiveRecordsCompletionBlock = self->_archiveRecordsCompletionBlock;
    self->_archiveRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)archiveRecordsCompletionBlock
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
    v13 = sub_1883EDAB8;
    v14 = sub_1883EF624;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885BF128;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_archiveRecordsCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setRecordIDs_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKArchiveRecordsOperation;
  [(CKDatabaseOperation *)&v9 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKArchiveRecordsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v9 fillFromOperationInfo:v4];
  v7 = objc_msgSend_recordIDs(v4, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setRecordIDs_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKArchiveRecordsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordArchivedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_archiveRecordsCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordIDs(self, a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = objc_msgSend_recordIDs(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
    if (v13)
    {
      v16 = v13;
      v17 = *v29;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = objc_msgSend_zoneID(*(*(&v28 + 1) + 8 * v18), v14, v15);
          v21 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v20, v19, a3);

          if (!v21)
          {

            goto LABEL_14;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v28, v32, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v27.receiver = self;
    v27.super_class = CKArchiveRecordsOperation;
    result = [(CKDatabaseOperation *)&v27 CKOperationShouldRun:a3];
  }

  else
  {
    if (a3)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"You must pass at least one record ID to %@", v24);
    }

LABEL_14:
    result = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleRecordArchivalForRecordID:(id)a3 error:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_CKClientSuitableError(v7, v8, v9);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v12 = signpost;

  if (v10)
  {
    if (v12)
    {
      if (self)
      {
        v15 = self->super.super._signpost;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v19 = objc_msgSend_log(v16, v17, v18);

      if (self)
      {
        v20 = self->super.super._signpost;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v24 = objc_msgSend_identifier(v21, v22, v23);

      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        v47 = 138412546;
        v48 = v6;
        v49 = 2112;
        v50 = v10;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v19, OS_SIGNPOST_EVENT, v24, "CKArchiveRecordsOperation", "Record %@ archived with error: %@", &v47, 0x16u);
      }
    }

    v25 = objc_msgSend_perItemErrors(self, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v10, v6);
LABEL_14:

    goto LABEL_15;
  }

  if (v12)
  {
    if (self)
    {
      v34 = self->super.super._signpost;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    v25 = objc_msgSend_log(v35, v36, v37);

    if (self)
    {
      v38 = self->super.super._signpost;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v42 = objc_msgSend_identifier(v39, v40, v41);

    if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v47 = 138412290;
      v48 = v6;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v42, "CKArchiveRecordsOperation", "Record %@ archived", &v47, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_15:
  v27 = objc_msgSend_recordArchivedBlock(self, v13, v14);

  if (v27)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v43 = v28;
      v46 = objc_msgSend_operationID(self, v44, v45);
      v47 = 138543618;
      v48 = v46;
      v49 = 2112;
      v50 = v6;
      _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about an archived record with id %@", &v47, 0x16u);
    }

    v31 = objc_msgSend_recordArchivedBlock(self, v29, v30);
    (v31)[2](v31, v6, v7);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v47 = 138412290;
    v48 = v6;
    _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Progress callback for record id %@ is done", &v47, 0xCu);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v91 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKArchiveRecordsOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_perItemErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24);
      v28 = objc_msgSend_perItemErrors(self, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v29, v28, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 1011, v25, @"Couldn't archive some records");
    }

    else
    {
      v4 = 0;
    }
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v34 = objc_msgSend_recordIDs(self, v32, v33);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v80, v90, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v81;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v81 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = objc_msgSend_zoneID(*(*(&v80 + 1) + 8 * i), v37, v38);
        objc_msgSend_addObject_(v31, v43, v42);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v80, v90, 16);
    }

    while (v39);
  }

  if (objc_msgSend_count(v31, v44, v45))
  {
    v48 = objc_msgSend_zoneIDsToZoneNamesString_(self, v46, v31);
    v51 = objc_msgSend_operationMetric(self, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v51, v52, v48, @"zoneNames");
  }

  v53 = objc_msgSend_archiveRecordsCompletionBlock(self, v46, v47);

  if (v53)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v54 = ck_log_facility_ck;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v71 = objc_msgSend_operationID(self, v55, v56);
      v72 = &stru_1EFA32970;
      if (v4)
      {
        v73 = @" Error was: ";
      }

      else
      {
        v73 = &stru_1EFA32970;
      }

      if (v4)
      {
        v72 = objc_msgSend_CKClientSuitableError(v4, v69, v70);
      }

      *buf = 138543874;
      v85 = v71;
      v86 = 2112;
      v87 = v73;
      v88 = 2112;
      v89 = v72;
      _os_log_debug_impl(&dword_1883EA000, v54, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. %@%@", buf, 0x20u);
      if (v4)
      {
      }
    }

    v59 = objc_msgSend_archiveRecordsCompletionBlock(self, v57, v58);
    v62 = objc_msgSend_CKClientSuitableError(v4, v60, v61);
    (v59)[2](v59, v62);

    objc_msgSend_setArchiveRecordsCompletionBlock_(self, v63, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v65 = ck_log_facility_ck;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v76 = objc_msgSend_operationID(self, v66, v67);
      v77 = &stru_1EFA32970;
      if (v4)
      {
        v78 = @" Error was: ";
      }

      else
      {
        v78 = &stru_1EFA32970;
      }

      if (v4)
      {
        v77 = objc_msgSend_CKClientSuitableError(v4, v74, v75);
      }

      *buf = 138543874;
      v85 = v76;
      v86 = 2112;
      v87 = v78;
      v88 = 2112;
      v89 = v77;
      _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no archiveRecordsCompletionBlock was set.%@%@", buf, 0x20u);
      if (v4)
      {
      }
    }
  }

  objc_msgSend_setRecordArchivedBlock_(self, v64, 0);
  v79.receiver = self;
  v79.super_class = CKArchiveRecordsOperation;
  [(CKOperation *)&v79 _finishOnCallbackQueueWithError:v4];

  v68 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKArchiveRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKArchiveRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/archive-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleRecordArchivalForRecordID_error_, 1, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKArchiveRecordsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
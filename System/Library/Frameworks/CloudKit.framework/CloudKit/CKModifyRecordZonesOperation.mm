@interface CKModifyRecordZonesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifyRecordZonesOperation)init;
- (CKModifyRecordZonesOperation)initWithRecordZonesToSave:(NSArray *)recordZonesToSave recordZoneIDsToDelete:(NSArray *)recordZoneIDsToDelete;
- (id)activityCreate;
- (id)relevantZoneIDs;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleDeleteForRecordZoneID:(id)d error:(id)error;
- (void)handleSaveForRecordZoneID:(id)d recordZone:(id)zone error:(id)error;
- (void)modifyRecordZonesCompletionBlock;
- (void)perRecordZoneDeleteBlock;
- (void)perRecordZoneSaveBlock;
- (void)performCKOperation;
- (void)setModifyRecordZonesCompletionBlock:(void *)modifyRecordZonesCompletionBlock;
- (void)setModifyRecordZonesCompletionBlockIVar:(id)var;
- (void)setPerRecordZoneDeleteBlock:(void *)perRecordZoneDeleteBlock;
- (void)setPerRecordZoneSaveBlock:(void *)perRecordZoneSaveBlock;
@end

@implementation CKModifyRecordZonesOperation

- (CKModifyRecordZonesOperation)init
{
  v12.receiver = self;
  v12.super_class = CKModifyRecordZonesOperation;
  v2 = [(CKOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordZonesByZoneIDs = v2->_recordZonesByZoneIDs;
    v2->_recordZonesByZoneIDs = v3;

    v5 = objc_opt_new();
    recordZoneErrors = v2->_recordZoneErrors;
    v2->_recordZoneErrors = v5;

    v7 = objc_opt_new();
    savedRecordZones = v2->_savedRecordZones;
    v2->_savedRecordZones = v7;

    v9 = objc_opt_new();
    deletedRecordZoneIDs = v2->_deletedRecordZoneIDs;
    v2->_deletedRecordZoneIDs = v9;
  }

  return v2;
}

- (CKModifyRecordZonesOperation)initWithRecordZonesToSave:(NSArray *)recordZonesToSave recordZoneIDsToDelete:(NSArray *)recordZoneIDsToDelete
{
  v6 = recordZonesToSave;
  v7 = recordZoneIDsToDelete;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    v14 = v12->_recordZonesToSave;
    v12->_recordZonesToSave = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    v18 = v12->_recordZoneIDsToDelete;
    v12->_recordZoneIDsToDelete = v17;
  }

  return v12;
}

- (void)setPerRecordZoneSaveBlock:(void *)perRecordZoneSaveBlock
{
  v6 = perRecordZoneSaveBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1886031F0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordZoneSaveBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordZoneSaveBlock;
    self->_perRecordZoneSaveBlock = v9;
LABEL_9:
  }
}

- (void)perRecordZoneSaveBlock
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
    v13 = sub_1883EDF98;
    v14 = sub_1883EF70C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1886033EC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordZoneSaveBlock);
  }

  return v6;
}

- (void)setPerRecordZoneDeleteBlock:(void *)perRecordZoneDeleteBlock
{
  v6 = perRecordZoneDeleteBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18860357C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordZoneDeleteBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordZoneDeleteBlock;
    self->_perRecordZoneDeleteBlock = v9;
LABEL_9:
  }
}

- (void)perRecordZoneDeleteBlock
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
    v13 = sub_1883EDF98;
    v14 = sub_1883EF70C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188603778;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordZoneDeleteBlock);
  }

  return v6;
}

- (void)setModifyRecordZonesCompletionBlockIVar:(id)var
{
  varCopy = var;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188603908;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    modifyRecordZonesCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_modifyRecordZonesCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    modifyRecordZonesCompletionBlock = self->_modifyRecordZonesCompletionBlock;
    self->_modifyRecordZonesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)modifyRecordZonesCompletionBlock
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
    v13 = sub_1883EDF98;
    v14 = sub_1883EF70C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188603B04;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_modifyRecordZonesCompletionBlock);
  }

  return v6;
}

- (void)setModifyRecordZonesCompletionBlock:(void *)modifyRecordZonesCompletionBlock
{
  v4 = modifyRecordZonesCompletionBlock == 0;
  v7 = modifyRecordZonesCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setModifyRecordZonesCompletionBlockIVar_(self, v6, v7);
}

- (id)relevantZoneIDs
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordZoneIDsToDelete(self, a2, v2);
  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v13 = (objc_msgSend_count(v4, v11, v12) + v10);
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    v13 = objc_msgSend_initWithCapacity_(v14, v15, v13);
    objc_msgSend_addObjectsFromArray_(v13, v16, v4);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v7;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v33, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v26 = objc_msgSend_zoneID(*(*(&v29 + 1) + 8 * i), v20, v21, v29);
          if (v26)
          {
            objc_msgSend_addObject_(v13, v25, v26);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v29, v33, 16);
      }

      while (v22);
    }
  }

  v27 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  objc_msgSend_setRecordZonesToSave_(infoCopy, v8, v7);

  v11 = objc_msgSend_recordZoneIDsToDelete(self, v9, v10);
  objc_msgSend_setRecordZoneIDsToDelete_(infoCopy, v12, v11);

  v15 = objc_msgSend_markZonesAsUserPurged(self, v13, v14);
  objc_msgSend_setMarkZonesAsUserPurged_(infoCopy, v16, v15);
  v17.receiver = self;
  v17.super_class = CKModifyRecordZonesOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKModifyRecordZonesOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordZonesToSave(infoCopy, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setRecordZonesToSave_(self, v8, v7);

  v11 = objc_msgSend_recordZoneIDsToDelete(infoCopy, v9, v10);
  objc_msgSend_setRecordZoneIDsToDelete_(self, v12, v11);

  v15 = objc_msgSend_markZonesAsUserPurged(infoCopy, v13, v14);
  objc_msgSend_setMarkZonesAsUserPurged_(self, v16, v15);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKModifyRecordZonesOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perRecordZoneSaveBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perRecordZoneDeleteBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_modifyRecordZonesCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = objc_msgSend_recordZonesToSave(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v63, v68, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v64;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v63 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!run)
          {
            goto LABEL_43;
          }

          v44 = objc_opt_class();
          v18 = NSStringFromClass(v44);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v45, @"CKErrorDomain", 12, @"Unexpected record zone object passed to %@: %@", v18, v13);
          v46 = LABEL_31:;
LABEL_32:
          *run = v46;
          goto LABEL_33;
        }

        v16 = objc_msgSend_zoneID(v13, v14, v15);
        if (!v16)
        {
          if (!run)
          {
            v18 = 0;
            goto LABEL_33;
          }

          v46 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v17, @"CKErrorDomain", 12, @"Record zone object missing unique client id %@", v13);
          v18 = 0;
          goto LABEL_32;
        }

        v18 = v16;
        if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v17, v16, run))
        {
          goto LABEL_33;
        }

        objc_msgSend_setObject_forKeyedSubscript_(self->_recordZonesByZoneIDs, v19, v13, v18);
        if (objc_msgSend_containsObject_(v4, v20, v18))
        {
          if (run)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"You can't save the same record zone twice %@", v13);
            goto LABEL_31;
          }

LABEL_33:

          goto LABEL_43;
        }

        objc_msgSend_addObject_(v4, v21, v18);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v63, v68, 16);
    }

    while (v10);
  }

  v7 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v25 = objc_msgSend_recordZoneIDsToDelete(self, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v59, v67, 16);
  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = v27;
  v29 = *v60;
  while (2)
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v60 != v29)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v59 + 1) + 8 * j);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (run)
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v49, @"CKErrorDomain", 12, @"Unexpected recordZoneID in property recordZoneIDsToDelete passed to %@: %@", v48, v31);
        }

        goto LABEL_42;
      }

      if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v32, v31, run))
      {
        goto LABEL_42;
      }

      if (objc_msgSend_containsObject_(v4, v33, v31))
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKErrorDomain", 12, @"You can't save and delete the same zone (%@) in the same operation", v31);
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }

      if (objc_msgSend_containsObject_(v7, v34, v31))
      {
        if (run)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v35, @"CKErrorDomain", 12, @"You can't delete the same zone (%@) twice in the same operation", v31);
          *run = LABEL_41:;
        }

        goto LABEL_42;
      }

      objc_msgSend_addObject_(v7, v35, v31);
    }

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v36, &v59, v67, 16);
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v39 = objc_msgSend_recordZonesToSave(self, v37, v38);
  if (objc_msgSend_count(v39, v40, v41))
  {

    goto LABEL_46;
  }

  v53 = objc_msgSend_recordZoneIDsToDelete(self, v42, v43);
  v56 = objc_msgSend_count(v53, v54, v55);

  if (v56)
  {
LABEL_46:
    v58.receiver = self;
    v58.super_class = CKModifyRecordZonesOperation;
    v50 = [(CKDatabaseOperation *)&v58 CKOperationShouldRun:run];
    goto LABEL_44;
  }

LABEL_43:
  v50 = 0;
LABEL_44:

  v51 = *MEMORY[0x1E69E9840];
  return v50;
}

- (void)performCKOperation
{
  v26 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v8 = objc_msgSend_operationID(self, v6, v7);
    v11 = objc_msgSend_recordZonesToSave(self, v9, v10);
    v14 = objc_msgSend_recordZoneIDsToDelete(self, v12, v13);
    *buf = 138544130;
    v19 = v8;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v14;
    v24 = 1024;
    v25 = objc_msgSend_markZonesAsUserPurged(self, v15, v16);
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Modifying record zones with operation %{public}@ zonesToSave=%@ zonesToDelete=%@ markZonesAsUserPurged=%d", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = CKModifyRecordZonesOperation;
  [(CKOperation *)&v17 performCKOperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleSaveForRecordZoneID:(id)d recordZone:(id)zone error:(id)error
{
  v106 = *MEMORY[0x1E69E9840];
  dCopy = d;
  zoneCopy = zone;
  v12 = objc_msgSend_CKClientSuitableError(error, v10, v11);
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

    *v104 = 138412546;
    *&v104[4] = dCopy;
    *&v104[12] = 2112;
    *&v104[14] = v12;
    v26 = "Record zone %@ saved with error: %@";
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
    *v104 = 138412290;
    *&v104[4] = dCopy;
    v26 = "Record zone %@ saved";
    v27 = v20;
    v28 = v38;
    v29 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v27, OS_SIGNPOST_EVENT, v28, "CKModifyRecordZonesOperation", v26, v104, v29);
  }

LABEL_21:

LABEL_22:
  if (self)
  {
    objc_msgSend_objectForKeyedSubscript_(self->_recordZonesByZoneIDs, v15, dCopy, *v104, *&v104[16]);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v15, dCopy, *v104, *&v104[16]);
  }
  v41 = ;
  if (zoneCopy)
  {
    v42 = objc_msgSend_resolvedConfiguration(self, v39, v40);
    v45 = objc_msgSend_container(v42, v43, v44);
    v48 = objc_msgSend_options(v45, v46, v47);
    v51 = objc_msgSend_returnPCSMetadata(v48, v49, v50);

    if (v51)
    {
      v54 = objc_msgSend_pcsKeyID(zoneCopy, v52, v53);
      objc_msgSend_setPcsKeyID_(v41, v55, v54);

      v58 = objc_msgSend_zoneishKeyID(zoneCopy, v56, v57);
      objc_msgSend_setZoneishKeyID_(v41, v59, v58);
    }

    v60 = objc_msgSend_capabilities(zoneCopy, v52, v53);
    objc_msgSend_setCapabilities_(v41, v61, v60);
    v64 = objc_msgSend_expirationDate(zoneCopy, v62, v63);
    objc_msgSend_setExpirationDate_(v41, v65, v64);

    isExpired = objc_msgSend_isExpired(zoneCopy, v66, v67);
    objc_msgSend_setExpired_(v41, v69, isExpired);
    objc_msgSend_setHasUpdatedExpirationTimeInterval_(v41, v70, 0);
    objc_msgSend_setUpdatedExpirationTimeInterval_(v41, v71, 0);
    v74 = objc_msgSend_encryptionScope(zoneCopy, v72, v73);
    objc_msgSend__setEncryptionScopeNoSideEffects_(v41, v75, v74);
    v78 = objc_msgSend_requiredFeatures(zoneCopy, v76, v77);
    objc_msgSend_setRequiredFeatures_(v41, v79, v78);

    v82 = objc_msgSend_originalRequiredFeatures(zoneCopy, v80, v81);
    objc_msgSend_setOriginalRequiredFeatures_(v41, v83, v82);

    v86 = objc_msgSend_etag(zoneCopy, v84, v85);
    objc_msgSend_setEtag_(v41, v87, v86);
  }

  if ((objc_msgSend_canDropItemResultsEarly(self, v39, v40) & 1) == 0)
  {
    if (v12)
    {
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_recordZoneErrors, v88, v12, dCopy);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(0, v88, v12, dCopy);
      }
    }

    else if (self)
    {
      objc_msgSend_addObject_(self->_savedRecordZones, v88, v41);
    }

    else
    {
      objc_msgSend_addObject_(0, v88, v41);
    }
  }

  v90 = objc_msgSend_perRecordZoneSaveBlock_wrapper(self, v88, v89);
  v93 = v90;
  if (v90)
  {
    v94 = _Block_copy(v90);
  }

  else
  {
    v95 = objc_msgSend_perRecordZoneSaveBlock(self, v91, v92);
    v94 = _Block_copy(v95);
  }

  if (v94)
  {
    v96 = v41;
    v97 = v96;
    if (v12)
    {

      v97 = 0;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v98 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v100 = v98;
      v103 = objc_msgSend_operationID(self, v101, v102);
      *v104 = 138543874;
      *&v104[4] = v103;
      *&v104[12] = 2112;
      *&v104[14] = dCopy;
      *&v104[22] = 2112;
      v105 = v12;
      _os_log_debug_impl(&dword_1883EA000, v100, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about saved zone with ID %@: %@", v104, 0x20u);
    }

    v94[2](v94, dCopy, v97, v12);
  }

  v99 = *MEMORY[0x1E69E9840];
}

- (void)handleDeleteForRecordZoneID:(id)d error:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = objc_msgSend_CKClientSuitableError(error, v7, v8);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v11 = signpost;

  if (!v9)
  {
    if (!v11)
    {
      if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (self)
    {
      v28 = self->super.super._signpost;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v18 = objc_msgSend_log(v29, v30, v31);

    if (self)
    {
      v32 = self->super.super._signpost;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v36 = objc_msgSend_identifier(v33, v34, v35);

    if ((v36 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v18))
    {
      goto LABEL_21;
    }

    *v53 = 138412290;
    *&v53[4] = dCopy;
    v24 = "Record zone %@ deleted";
    v25 = v18;
    v26 = v36;
    v27 = 12;
    goto LABEL_20;
  }

  if (!v11)
  {
    if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  if (self)
  {
    v14 = self->super.super._signpost;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v18 = objc_msgSend_log(v15, v16, v17);

  if (self)
  {
    v19 = self->super.super._signpost;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v23 = objc_msgSend_identifier(v20, v21, v22);

  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *v53 = 138412546;
    *&v53[4] = dCopy;
    *&v53[12] = 2112;
    *&v53[14] = v9;
    v24 = "Record zone %@ deleted with error: %@";
    v25 = v18;
    v26 = v23;
    v27 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v26, "CKModifyRecordZonesOperation", v24, v53, v27);
  }

LABEL_21:

  if ((objc_msgSend_canDropItemResultsEarly(self, v37, v38) & 1) == 0)
  {
    if (!v9)
    {
LABEL_28:
      if (self)
      {
        objc_msgSend_addObject_(self->_deletedRecordZoneIDs, v39, dCopy, *v53, *&v53[8]);
      }

      else
      {
        objc_msgSend_addObject_(0, v39, dCopy, *v53, *&v53[8]);
      }

      goto LABEL_30;
    }

LABEL_25:
    if (self)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_recordZoneErrors, v39, v9, dCopy, *v53, *&v53[16]);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(0, v39, v9, dCopy, *v53, *&v53[16]);
    }
  }

LABEL_30:
  v41 = objc_msgSend_perRecordZoneDeleteBlock_wrapper(self, v39, v40, *v53, *&v53[8]);
  v44 = v41;
  if (v41)
  {
    v45 = _Block_copy(v41);
  }

  else
  {
    v46 = objc_msgSend_perRecordZoneDeleteBlock(self, v42, v43);
    v45 = _Block_copy(v46);
  }

  if (v45)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v47 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v49 = v47;
      v52 = objc_msgSend_operationID(self, v50, v51);
      *v53 = 138543874;
      *&v53[4] = v52;
      *&v53[12] = 2112;
      *&v53[14] = dCopy;
      *&v53[22] = 2112;
      v54 = v9;
      _os_log_debug_impl(&dword_1883EA000, v49, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about deleted zone with ID %@: %@", v53, 0x20u);
    }

    v45[2](v45, dCopy, v9);
  }

  v48 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifyRecordZonesOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    if (self)
    {
      v19 = objc_msgSend_count(self->_recordZoneErrors, v7, v8);
    }

    else
    {
      v19 = objc_msgSend_count(0, v7, v8);
    }

    if (v19)
    {
      v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v22 = v20;
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v21, self->_recordZoneErrors, @"CKPartialErrors");
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v21, 0, @"CKPartialErrors");
      }

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1011, v22, @"Failed to modify some record zones");
    }

    else
    {
      errorCopy = 0;
    }
  }

  if (self)
  {
    objc_msgSend_allKeys(self->_recordZonesByZoneIDs, v7, v8);
  }

  else
  {
    objc_msgSend_allKeys(0, v7, v8);
  }
  v24 = ;
  v27 = objc_msgSend_count(v24, v25, v26);

  if (v27)
  {
    v30 = MEMORY[0x1E695DFA8];
    if (self)
    {
      objc_msgSend_allKeys(self->_recordZonesByZoneIDs, v28, v29);
    }

    else
    {
      objc_msgSend_allKeys(0, v28, v29);
    }
    v31 = ;
    v33 = objc_msgSend_setWithArray_(v30, v32, v31);

    v35 = objc_msgSend_zoneIDsToZoneNamesString_(self, v34, v33);
    v38 = objc_msgSend_operationMetric(self, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v38, v39, v35, @"zoneNames");
  }

  v40 = objc_msgSend_modifyRecordZonesCompletionBlock_wrapper(self, v28, v29);
  v43 = v40;
  if (v40)
  {
    v44 = _Block_copy(v40);
  }

  else
  {
    v45 = objc_msgSend_modifyRecordZonesCompletionBlock(self, v41, v42);
    v44 = _Block_copy(v45);
  }

  if (v44)
  {
    if (self)
    {
      v47 = self->_savedRecordZones;
      deletedRecordZoneIDs = self->_deletedRecordZoneIDs;
    }

    else
    {
      v47 = 0;
      deletedRecordZoneIDs = 0;
    }

    v49 = deletedRecordZoneIDs;
    v52 = objc_msgSend_CKClientSuitableError(errorCopy, v50, v51);
    v44[2](v44, v47, v49, v52);

    objc_msgSend_setModifyRecordZonesCompletionBlock_(self, v53, 0);
  }

  objc_msgSend_setPerRecordZoneSaveBlock_(self, v46, 0);
  objc_msgSend_setPerRecordZoneDeleteBlock_(self, v54, 0);
  v55.receiver = self;
  v55.super_class = CKModifyRecordZonesOperation;
  [(CKOperation *)&v55 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifyRecordZonesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifyRecordZonesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-record-zones", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleDeleteForRecordZoneID_error_, 1, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleSaveForRecordZoneID_recordZone_error_, 2, 0);

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKModifyRecordZonesOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
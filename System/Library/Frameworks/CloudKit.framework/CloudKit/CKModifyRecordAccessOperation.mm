@interface CKModifyRecordAccessOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifyRecordAccessOperation)initWithRecordIDsToGrantAccess:(id)access recordIDsToRevokeAccess:(id)revokeAccess;
- (id)activityCreate;
- (id)recordAccessCompletionBlock;
- (id)recordAccessGrantedBlock;
- (id)recordAccessRevokedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleRecordAccessInitiationForRecordID:(id)d accessToken:(id)token referenceIdentifier:(id)identifier error:(id)error;
- (void)handleRecordAccessRevocationForRecordID:(id)d error:(id)error;
- (void)setRecordAccessCompletionBlock:(id)block;
- (void)setRecordAccessGrantedBlock:(id)block;
- (void)setRecordAccessRevokedBlock:(id)block;
@end

@implementation CKModifyRecordAccessOperation

- (CKModifyRecordAccessOperation)initWithRecordIDsToGrantAccess:(id)access recordIDsToRevokeAccess:(id)revokeAccess
{
  accessCopy = access;
  revokeAccessCopy = revokeAccess;
  v24.receiver = self;
  v24.super_class = CKModifyRecordAccessOperation;
  v10 = [(CKOperation *)&v24 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(accessCopy, v8, v9);
    recordIDsToGrant = v10->_recordIDsToGrant;
    v10->_recordIDsToGrant = v11;

    v15 = objc_msgSend_copy(revokeAccessCopy, v13, v14);
    recordIDsToRevoke = v10->_recordIDsToRevoke;
    v10->_recordIDsToRevoke = v15;

    v17 = objc_opt_new();
    grantedRecordIDs = v10->_grantedRecordIDs;
    v10->_grantedRecordIDs = v17;

    v19 = objc_opt_new();
    revokedRecordIDs = v10->_revokedRecordIDs;
    v10->_revokedRecordIDs = v19;

    v21 = objc_opt_new();
    recordErrors = v10->_recordErrors;
    v10->_recordErrors = v21;
  }

  return v10;
}

- (void)setRecordAccessGrantedBlock:(id)block
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
    v12[2] = sub_1885D417C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordAccessGrantedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordAccessGrantedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordAccessGrantedBlock = self->_recordAccessGrantedBlock;
    self->_recordAccessGrantedBlock = v9;
LABEL_9:
  }
}

- (id)recordAccessGrantedBlock
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
    v13 = sub_1883EDBEC;
    v14 = sub_1883EF65C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D4378;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordAccessGrantedBlock);
  }

  return v6;
}

- (void)setRecordAccessRevokedBlock:(id)block
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
    v12[2] = sub_1885D4508;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordAccessRevokedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordAccessRevokedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordAccessRevokedBlock = self->_recordAccessRevokedBlock;
    self->_recordAccessRevokedBlock = v9;
LABEL_9:
  }
}

- (id)recordAccessRevokedBlock
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
    v13 = sub_1883EDBEC;
    v14 = sub_1883EF65C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D4704;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordAccessRevokedBlock);
  }

  return v6;
}

- (void)setRecordAccessCompletionBlock:(id)block
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
    v12[2] = sub_1885D4894;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordAccessCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordAccessCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordAccessCompletionBlock = self->_recordAccessCompletionBlock;
    self->_recordAccessCompletionBlock = v9;
LABEL_9:
  }
}

- (id)recordAccessCompletionBlock
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
    v13 = sub_1883EDBEC;
    v14 = sub_1883EF65C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D4A90;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordAccessCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordIDsToGrant(self, v5, v6);
  objc_msgSend_setRecordIDsToGrant_(infoCopy, v8, v7);

  v11 = objc_msgSend_recordIDsToRevoke(self, v9, v10);
  objc_msgSend_setRecordIDsToRevoke_(infoCopy, v12, v11);

  v13.receiver = self;
  v13.super_class = CKModifyRecordAccessOperation;
  [(CKDatabaseOperation *)&v13 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = CKModifyRecordAccessOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordIDsToGrant(infoCopy, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setRecordIDsToGrant_(self, v8, v7);

  v11 = objc_msgSend_recordIDsToRevoke(infoCopy, v9, v10);

  objc_msgSend_setRecordIDsToRevoke_(self, v12, v11);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKModifyRecordAccessOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordAccessGrantedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordAccessRevokedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_recordAccessCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  runCopy = run;
  v77 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordIDsToGrant(self, a2, run);
  if (objc_msgSend_count(v5, v6, v7))
  {
  }

  else
  {
    v12 = objc_msgSend_recordIDsToRevoke(self, v8, v9);
    v15 = objc_msgSend_count(v12, v13, v14);

    if (!v15)
    {
      v55 = 0;
      goto LABEL_42;
    }
  }

  v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v10, v11);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v19 = objc_msgSend_recordIDsToGrant(self, v17, v18);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v71, v76, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v72;
    obj = v19;
    do
    {
      v24 = runCopy;
      for (i = 0; i != v22; ++i)
      {
        if (*v72 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v71 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v24)
          {
            v56 = objc_opt_class();
            v57 = NSStringFromClass(v56);
            *v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v58, @"CKErrorDomain", 12, @"Unexpected recordID to grant access passed to %@: %@", v57, v26);
          }

          goto LABEL_30;
        }

        v29 = objc_msgSend_zoneID(v26, v27, v28);
        v31 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v30, v29, v24);

        if (!v31)
        {
          goto LABEL_30;
        }

        if (objc_msgSend_containsObject_(v16, v32, v26))
        {
          if (v24)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"You can't grant access to the same record ID twice in a single operation: %@", v26);
            *v24 = v55 = 0;
LABEL_31:
            v37 = obj;
            goto LABEL_41;
          }

LABEL_30:
          v55 = 0;
          goto LABEL_31;
        }

        objc_msgSend_addObject_(v16, v33, v26);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v71, v76, 16);
      runCopy = v24;
      v19 = obj;
    }

    while (v22);
  }

  v37 = objc_msgSend_set(MEMORY[0x1E695DFA8], v35, v36);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obja = objc_msgSend_recordIDsToRevoke(self, v38, v39);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v40, &v67, v75, 16);
  if (!v41)
  {
    goto LABEL_25;
  }

  v42 = v41;
  v43 = *v68;
  while (2)
  {
    for (j = 0; j != v42; ++j)
    {
      if (*v68 != v43)
      {
        objc_enumerationMutation(obja);
      }

      v45 = *(*(&v67 + 1) + 8 * j);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (runCopy)
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          *runCopy = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v61, @"CKErrorDomain", 12, @"Unexpected recordID to revoke access passed to %@: %@", v60, v45);
        }

        goto LABEL_40;
      }

      v48 = objc_msgSend_zoneID(v45, v46, v47);
      v50 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v49, v48, runCopy);

      if (!v50)
      {
        goto LABEL_40;
      }

      if (objc_msgSend_containsObject_(v16, v51, v45))
      {
        if (runCopy)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v52, @"CKErrorDomain", 12, @"You can't grant and revoke access to the same record ID in a single operation: %@", v45);
          goto LABEL_39;
        }

LABEL_40:

        v55 = 0;
        goto LABEL_41;
      }

      if (objc_msgSend_containsObject_(v37, v52, v45))
      {
        if (runCopy)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKErrorDomain", 12, @"You can't revoke access to the same record ID twice in a single operation: %@", v45);
          *runCopy = LABEL_39:;
        }

        goto LABEL_40;
      }

      objc_msgSend_addObject_(v37, v53, v45);
    }

    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v54, &v67, v75, 16);
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v66.receiver = self;
  v66.super_class = CKModifyRecordAccessOperation;
  v55 = [(CKDatabaseOperation *)&v66 CKOperationShouldRun:runCopy];
LABEL_41:

LABEL_42:
  v62 = *MEMORY[0x1E69E9840];
  return v55;
}

- (void)handleRecordAccessInitiationForRecordID:(id)d accessToken:(id)token referenceIdentifier:(id)identifier error:(id)error
{
  v54 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  identifierCopy = identifier;
  v15 = objc_msgSend_CKClientSuitableError(error, v13, v14);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v17 = signpost;

  if (v15)
  {
    if (v17)
    {
      if (self)
      {
        v20 = self->super.super._signpost;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v24 = objc_msgSend_log(v21, v22, v23);

      if (self)
      {
        v25 = self->super.super._signpost;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v29 = objc_msgSend_identifier(v26, v27, v28);

      if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v50 = 138412546;
        v51 = dCopy;
        v52 = 2112;
        v53 = v15;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v24, OS_SIGNPOST_EVENT, v29, "CKModifyRecordAccessOperation", "Record %@ access granted with error: %@", &v50, 0x16u);
      }
    }

    v30 = objc_msgSend_recordErrors(self, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v30, v31, v15, dCopy);
  }

  else
  {
    if (v17)
    {
      if (self)
      {
        v32 = self->super.super._signpost;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      v36 = objc_msgSend_log(v33, v34, v35);

      if (self)
      {
        v37 = self->super.super._signpost;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      v41 = objc_msgSend_identifier(v38, v39, v40);

      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        v50 = 138412290;
        v51 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v36, OS_SIGNPOST_EVENT, v41, "CKModifyRecordAccessOperation", "Record %@ access granted", &v50, 0xCu);
      }
    }

    v30 = objc_msgSend_grantedRecordIDs(self, v18, v19);
    objc_msgSend_addObject_(v30, v42, dCopy);
  }

  v45 = objc_msgSend_recordAccessGrantedBlock(self, v43, v44);

  if (v45)
  {
    v48 = objc_msgSend_recordAccessGrantedBlock(self, v46, v47);
    (v48)[2](v48, dCopy, tokenCopy, identifierCopy, v15);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordAccessRevocationForRecordID:(id)d error:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
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

  if (v9)
  {
    if (v11)
    {
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

      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        v44 = 138412546;
        v45 = dCopy;
        v46 = 2112;
        v47 = v9;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v18, OS_SIGNPOST_EVENT, v23, "CKModifyRecordAccessOperation", "Record %@ access revoked with error: %@", &v44, 0x16u);
      }
    }

    v24 = objc_msgSend_recordErrors(self, v12, v13);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v9, dCopy);
  }

  else
  {
    if (v11)
    {
      if (self)
      {
        v26 = self->super.super._signpost;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v30 = objc_msgSend_log(v27, v28, v29);

      if (self)
      {
        v31 = self->super.super._signpost;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v35 = objc_msgSend_identifier(v32, v33, v34);

      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        v44 = 138412290;
        v45 = dCopy;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v30, OS_SIGNPOST_EVENT, v35, "CKModifyRecordAccessOperation", "Record %@ access revoked", &v44, 0xCu);
      }
    }

    v24 = objc_msgSend_revokedRecordIDs(self, v12, v13);
    objc_msgSend_addObject_(v24, v36, dCopy);
  }

  v39 = objc_msgSend_recordAccessRevokedBlock(self, v37, v38);

  if (v39)
  {
    v42 = objc_msgSend_recordAccessRevokedBlock(self, v40, v41);
    (v42)[2](v42, dCopy, v9);
  }

  v43 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifyRecordAccessOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_recordErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_recordErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to grant/revoke access to some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_recordAccessCompletionBlock(self, v7, v8);

  if (v29)
  {
    v32 = objc_msgSend_recordAccessCompletionBlock(self, v30, v31);
    v35 = objc_msgSend_grantedRecordIDs(self, v33, v34);
    v38 = objc_msgSend_revokedRecordIDs(self, v36, v37);
    v41 = objc_msgSend_CKClientSuitableError(errorCopy, v39, v40);
    (v32)[2](v32, v35, v38, v41);

    objc_msgSend_setRecordAccessCompletionBlock_(self, v42, 0);
  }

  objc_msgSend_setRecordAccessGrantedBlock_(self, v30, 0);
  objc_msgSend_setRecordAccessRevokedBlock_(self, v43, 0);
  v44.receiver = self;
  v44.super_class = CKModifyRecordAccessOperation;
  [(CKOperation *)&v44 _finishOnCallbackQueueWithError:errorCopy];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifyRecordAccessOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifyRecordAccessOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-record-access", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleRecordAccessInitiationForRecordID_accessToken_referenceIdentifier_error_, 3, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleRecordAccessRevocationForRecordID_error_, 1, 0);

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKModifyRecordAccessOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
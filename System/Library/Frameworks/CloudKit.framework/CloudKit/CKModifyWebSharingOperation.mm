@interface CKModifyWebSharingOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifyWebSharingOperation)initWithRecordIDsToWebShare:(id)share recordIDsToUnshare:(id)unshare;
- (id)activityCreate;
- (id)recordSharedBlock;
- (id)recordUnsharedBlock;
- (id)webShareRecordsCompletionBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleWebSharingInitiationForRecordID:(id)d sharingKey:(id)key baseSharingToken:(id)token error:(id)error;
- (void)handleWebSharingRevocationForRecordID:(id)d error:(id)error;
- (void)setRecordSharedBlock:(id)block;
- (void)setRecordUnsharedBlock:(id)block;
- (void)setWebShareRecordsCompletionBlock:(id)block;
@end

@implementation CKModifyWebSharingOperation

- (CKModifyWebSharingOperation)initWithRecordIDsToWebShare:(id)share recordIDsToUnshare:(id)unshare
{
  shareCopy = share;
  unshareCopy = unshare;
  v24.receiver = self;
  v24.super_class = CKModifyWebSharingOperation;
  v10 = [(CKOperation *)&v24 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(shareCopy, v8, v9);
    recordIDsToShare = v10->_recordIDsToShare;
    v10->_recordIDsToShare = v11;

    v15 = objc_msgSend_copy(unshareCopy, v13, v14);
    recordIDsToUnshare = v10->_recordIDsToUnshare;
    v10->_recordIDsToUnshare = v15;

    v17 = objc_opt_new();
    sharedRecordIDs = v10->_sharedRecordIDs;
    v10->_sharedRecordIDs = v17;

    v19 = objc_opt_new();
    unsharedRecordIDs = v10->_unsharedRecordIDs;
    v10->_unsharedRecordIDs = v19;

    v21 = objc_opt_new();
    recordErrors = v10->_recordErrors;
    v10->_recordErrors = v21;
  }

  return v10;
}

- (void)setRecordSharedBlock:(id)block
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
    v12[2] = sub_1885DD484;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordSharedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordSharedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordSharedBlock = self->_recordSharedBlock;
    self->_recordSharedBlock = v9;
LABEL_9:
  }
}

- (id)recordSharedBlock
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
    v13 = sub_1883EDC44;
    v14 = sub_1883EF66C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885DD680;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordSharedBlock);
  }

  return v6;
}

- (void)setRecordUnsharedBlock:(id)block
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
    v12[2] = sub_1885DD810;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordUnsharedBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordUnsharedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordUnsharedBlock = self->_recordUnsharedBlock;
    self->_recordUnsharedBlock = v9;
LABEL_9:
  }
}

- (id)recordUnsharedBlock
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
    v13 = sub_1883EDC44;
    v14 = sub_1883EF66C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885DDA0C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordUnsharedBlock);
  }

  return v6;
}

- (void)setWebShareRecordsCompletionBlock:(id)block
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
    v12[2] = sub_1885DDB9C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    webShareRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_webShareRecordsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    webShareRecordsCompletionBlock = self->_webShareRecordsCompletionBlock;
    self->_webShareRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)webShareRecordsCompletionBlock
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
    v13 = sub_1883EDC44;
    v14 = sub_1883EF66C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885DDD98;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_webShareRecordsCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordIDsToShare(self, v5, v6);
  objc_msgSend_setRecordIDsToShare_(infoCopy, v8, v7);

  v11 = objc_msgSend_recordIDsToUnshare(self, v9, v10);
  objc_msgSend_setRecordIDsToUnshare_(infoCopy, v12, v11);

  v15 = objc_msgSend_recordIDsToShareReadWrite(self, v13, v14);
  objc_msgSend_setRecordIDsToShareReadWrite_(infoCopy, v16, v15);

  v17.receiver = self;
  v17.super_class = CKModifyWebSharingOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKModifyWebSharingOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordIDsToShare(infoCopy, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setRecordIDsToShare_(self, v8, v7);

  v11 = objc_msgSend_recordIDsToUnshare(infoCopy, v9, v10);
  objc_msgSend_setRecordIDsToUnshare_(self, v12, v11);

  v15 = objc_msgSend_recordIDsToShareReadWrite(infoCopy, v13, v14);

  objc_msgSend_setRecordIDsToShareReadWrite_(self, v16, v15);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKModifyWebSharingOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordSharedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordUnsharedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_webShareRecordsCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  runCopy = run;
  v77 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordIDsToShare(self, a2, run);
  if (objc_msgSend_count(v5, v6, v7))
  {
  }

  else
  {
    v12 = objc_msgSend_recordIDsToUnshare(self, v8, v9);
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
  v19 = objc_msgSend_recordIDsToShare(self, v17, v18);
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
            *v24 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v58, @"CKErrorDomain", 12, @"Unexpected recordID to share passed to %@: %@", v57, v26);
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
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"You can't share the same record ID twice in a single operation: %@", v26);
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
  obja = objc_msgSend_recordIDsToUnshare(self, v38, v39);
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
          *runCopy = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v61, @"CKErrorDomain", 12, @"Unexpected recordID to unshare passed to %@: %@", v60, v45);
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
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v52, @"CKErrorDomain", 12, @"You can't share and unshare the same record ID in a single operation: %@", v45);
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
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKErrorDomain", 12, @"You can't unshare the same record ID twice in a single operation: %@", v45);
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
  v66.super_class = CKModifyWebSharingOperation;
  v55 = [(CKDatabaseOperation *)&v66 CKOperationShouldRun:runCopy];
LABEL_41:

LABEL_42:
  v62 = *MEMORY[0x1E69E9840];
  return v55;
}

- (void)handleWebSharingInitiationForRecordID:(id)d sharingKey:(id)key baseSharingToken:(id)token error:(id)error
{
  v54 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  tokenCopy = token;
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
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v24, OS_SIGNPOST_EVENT, v29, "CKModifyWebSharingOperation", "Record %@ shared with error: %@", &v50, 0x16u);
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
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v36, OS_SIGNPOST_EVENT, v41, "CKModifyWebSharingOperation", "Record %@ shared", &v50, 0xCu);
      }
    }

    v30 = objc_msgSend_sharedRecordIDs(self, v18, v19);
    objc_msgSend_addObject_(v30, v42, dCopy);
  }

  v45 = objc_msgSend_recordSharedBlock(self, v43, v44);

  if (v45)
  {
    v48 = objc_msgSend_recordSharedBlock(self, v46, v47);
    (v48)[2](v48, dCopy, keyCopy, tokenCopy, v15);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)handleWebSharingRevocationForRecordID:(id)d error:(id)error
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
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v18, OS_SIGNPOST_EVENT, v23, "CKModifyWebSharingOperation", "Record %@ unshared with error: %@", &v44, 0x16u);
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
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v30, OS_SIGNPOST_EVENT, v35, "CKModifyWebSharingOperation", "Record %@ unshared", &v44, 0xCu);
      }
    }

    v24 = objc_msgSend_unsharedRecordIDs(self, v12, v13);
    objc_msgSend_addObject_(v24, v36, dCopy);
  }

  v39 = objc_msgSend_recordUnsharedBlock(self, v37, v38);

  if (v39)
  {
    v42 = objc_msgSend_recordUnsharedBlock(self, v40, v41);
    (v42)[2](v42, dCopy, v9);
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v110 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifyWebSharingOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_recordErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24);
      v28 = objc_msgSend_recordErrors(self, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v29, v28, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 1011, v25, @"Failed to share/unshare some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v34 = objc_msgSend_sharedRecordIDs(self, v32, v33);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v102, v109, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v103;
    do
    {
      v41 = 0;
      do
      {
        if (*v103 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = objc_msgSend_zoneID(*(*(&v102 + 1) + 8 * v41), v37, v38);
        objc_msgSend_addObject_(v31, v43, v42);

        ++v41;
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v102, v109, 16);
    }

    while (v39);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v46 = objc_msgSend_recordIDsToUnshare(self, v44, v45);
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v98, v108, 16);
  if (v48)
  {
    v51 = v48;
    v52 = *v99;
    do
    {
      v53 = 0;
      do
      {
        if (*v99 != v52)
        {
          objc_enumerationMutation(v46);
        }

        v54 = objc_msgSend_zoneID(*(*(&v98 + 1) + 8 * v53), v49, v50);
        objc_msgSend_addObject_(v31, v55, v54);

        ++v53;
      }

      while (v51 != v53);
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v49, &v98, v108, 16);
    }

    while (v51);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v58 = objc_msgSend_recordIDsToShareReadWrite(self, v56, v57);
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v94, v107, 16);
  if (v60)
  {
    v63 = v60;
    v64 = *v95;
    do
    {
      v65 = 0;
      do
      {
        if (*v95 != v64)
        {
          objc_enumerationMutation(v58);
        }

        v66 = objc_msgSend_zoneID(*(*(&v94 + 1) + 8 * v65), v61, v62);
        objc_msgSend_addObject_(v31, v67, v66);

        ++v65;
      }

      while (v63 != v65);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v94, v107, 16);
    }

    while (v63);
  }

  if (objc_msgSend_count(v31, v68, v69))
  {
    v72 = objc_msgSend_zoneIDsToZoneNamesString_(self, v70, v31);
    v75 = objc_msgSend_operationMetric(self, v73, v74);
    objc_msgSend_setObject_forKeyedSubscript_(v75, v76, v72, @"zoneNames");
  }

  v77 = objc_msgSend_webShareRecordsCompletionBlock(self, v70, v71);

  if (v77)
  {
    v80 = objc_msgSend_webShareRecordsCompletionBlock(self, v78, v79);
    v83 = objc_msgSend_sharedRecordIDs(self, v81, v82);
    v86 = objc_msgSend_unsharedRecordIDs(self, v84, v85);
    v89 = objc_msgSend_CKClientSuitableError(errorCopy, v87, v88);
    (v80)[2](v80, v83, v86, v89);

    objc_msgSend_setWebShareRecordsCompletionBlock_(self, v90, 0);
  }

  objc_msgSend_setRecordSharedBlock_(self, v78, 0);
  objc_msgSend_setRecordUnsharedBlock_(self, v91, 0);
  v93.receiver = self;
  v93.super_class = CKModifyWebSharingOperation;
  [(CKOperation *)&v93 _finishOnCallbackQueueWithError:errorCopy];

  v92 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifyWebSharingOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifyWebSharingOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-web-sharing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleWebSharingInitiationForRecordID_sharingKey_baseSharingToken_error_, 3, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleWebSharingRevocationForRecordID_error_, 1, 0);

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CKModifyWebSharingOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
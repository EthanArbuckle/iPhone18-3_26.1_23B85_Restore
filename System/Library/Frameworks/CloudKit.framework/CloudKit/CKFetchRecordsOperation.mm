@interface CKFetchRecordsOperation
+ (CKFetchRecordsOperation)fetchCurrentUserRecordOperation;
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchRecordsOperation)init;
- (CKFetchRecordsOperation)initWithRecordIDs:(NSArray *)recordIDs;
- (id)activityCreate;
- (id)perRecordETagMatchedBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fetchRecordsCompletionBlock;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleAssetDataForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index data:(id)data offset:(unint64_t)offset;
- (void)handleFetchForRecordID:(id)d didProgress:(double)progress;
- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error;
- (void)perRecordCompletionBlock;
- (void)perRecordProgressBlock;
- (void)performCKOperation;
- (void)setFetchRecordsCompletionBlock:(void *)fetchRecordsCompletionBlock;
- (void)setFetchRecordsCompletionBlockIVar:(id)var;
- (void)setPerRecordCompletionBlock:(void *)perRecordCompletionBlock;
- (void)setPerRecordETagMatchedBlock:(id)block;
- (void)setPerRecordProgressBlock:(void *)perRecordProgressBlock;
@end

@implementation CKFetchRecordsOperation

- (CKFetchRecordsOperation)init
{
  v10.receiver = self;
  v10.super_class = CKFetchRecordsOperation;
  v2 = [(CKOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v3;

    v5 = objc_opt_new();
    recordIDsToRecords = v2->_recordIDsToRecords;
    v2->_recordIDsToRecords = v5;

    v2->_shouldFetchAssetContent = 1;
    v2->_shouldFetchAssetContentInMemory = 0;
    v2->_shouldRequestEncryptedAssetOwnerIdentifier = 0;
    v2->_dropInMemoryAssetContentASAP = 0;
    v7 = objc_opt_new();
    assetInfoByArrayIndexByRecordKeyByRecordID = v2->_assetInfoByArrayIndexByRecordKeyByRecordID;
    v2->_assetInfoByArrayIndexByRecordKeyByRecordID = v7;
  }

  return v2;
}

- (CKFetchRecordsOperation)initWithRecordIDs:(NSArray *)recordIDs
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = recordIDs;
  v7 = objc_msgSend_init(self, v5, v6);
  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v29, v33, 16);
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v29 + 1) + 8 * v13);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = [CKException alloc];
            v23 = *MEMORY[0x1E695D940];
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v27 = objc_msgSend_initWithName_format_(v22, v26, v23, @"Unexpected recordID passed to %@: %@", v25, v14, v29);
            v28 = v27;

            objc_exception_throw(v27);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v29, v33, 16);
      }

      while (v11);
    }

    v18 = objc_msgSend_copy(v8, v16, v17);
    v19 = v7->_recordIDs;
    v7->_recordIDs = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (CKFetchRecordsOperation)fetchCurrentUserRecordOperation
{
  v2 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setIsFetchCurrentUserOperation_(v2, v3, 1);

  return v2;
}

- (void)setPerRecordProgressBlock:(void *)perRecordProgressBlock
{
  v6 = perRecordProgressBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885C6DD4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordProgressBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordProgressBlock;
    self->_perRecordProgressBlock = v9;
LABEL_9:
  }
}

- (void)perRecordProgressBlock
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
    v13 = sub_1883EDB3C;
    v14 = sub_1883EF63C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C6FD0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordProgressBlock);
  }

  return v6;
}

- (void)setPerRecordCompletionBlock:(void *)perRecordCompletionBlock
{
  v6 = perRecordCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885C7160;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordCompletionBlock;
    self->_perRecordCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perRecordCompletionBlock
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
    v13 = sub_1883EDB3C;
    v14 = sub_1883EF63C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C735C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordCompletionBlock);
  }

  return v6;
}

- (void)setPerRecordETagMatchedBlock:(id)block
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
    v12[2] = sub_1885C74EC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perRecordETagMatchedBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordETagMatchedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perRecordETagMatchedBlock = self->_perRecordETagMatchedBlock;
    self->_perRecordETagMatchedBlock = v9;
LABEL_9:
  }
}

- (id)perRecordETagMatchedBlock
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
    v13 = sub_1883EDB3C;
    v14 = sub_1883EF63C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C76E8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordETagMatchedBlock);
  }

  return v6;
}

- (void)setFetchRecordsCompletionBlockIVar:(id)var
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
    v12[2] = sub_1885C7878;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    fetchRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordsCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    fetchRecordsCompletionBlock = self->_fetchRecordsCompletionBlock;
    self->_fetchRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchRecordsCompletionBlock
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
    v13 = sub_1883EDB3C;
    v14 = sub_1883EF63C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885C7A74;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordsCompletionBlock);
  }

  return v6;
}

- (void)setFetchRecordsCompletionBlock:(void *)fetchRecordsCompletionBlock
{
  v4 = fetchRecordsCompletionBlock == 0;
  v7 = fetchRecordsCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setFetchRecordsCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordIDs(self, v5, v6);
  objc_msgSend_setRecordIDs_(infoCopy, v8, v7);

  CurrentUserOperation = objc_msgSend_isFetchCurrentUserOperation(self, v9, v10);
  objc_msgSend_setIsFetchCurrentUserOperation_(infoCopy, v12, CurrentUserOperation);
  v15 = objc_msgSend_desiredKeys(self, v13, v14);
  objc_msgSend_setDesiredKeys_(infoCopy, v16, v15);

  v19 = objc_msgSend_recordIDsToETags(self, v17, v18);
  objc_msgSend_setRecordIDsToETags_(infoCopy, v20, v19);

  v23 = objc_msgSend_recordIDsToVersionETags(self, v21, v22);
  objc_msgSend_setRecordIDsToVersionETags_(infoCopy, v24, v23);

  v27 = objc_msgSend_desiredPackageFileIndices(self, v25, v26);
  objc_msgSend_setDesiredPackageFileIndices_(infoCopy, v28, v27);

  AssetContent = objc_msgSend_shouldFetchAssetContent(self, v29, v30);
  objc_msgSend_setShouldFetchAssetContent_(infoCopy, v32, AssetContent);
  shouldRequestEncryptedAssetOwnerIdentifier = objc_msgSend_shouldRequestEncryptedAssetOwnerIdentifier(self, v33, v34);
  objc_msgSend_setShouldRequestEncryptedAssetOwnerIdentifier_(infoCopy, v36, shouldRequestEncryptedAssetOwnerIdentifier);
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(self, v37, v38);
  objc_msgSend_setShouldFetchAssetContentInMemory_(infoCopy, v40, AssetContentInMemory);
  v43 = objc_msgSend_dropInMemoryAssetContentASAP(self, v41, v42);
  objc_msgSend_setDropInMemoryAssetContentASAP_(infoCopy, v44, v43);
  v47 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v45, v46);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(infoCopy, v48, v47);

  v51 = objc_msgSend_webSharingIdentityDataByRecordID(self, v49, v50);
  objc_msgSend_setWebSharingIdentityDataByRecordID_(infoCopy, v52, v51);

  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v53, v54);
  objc_msgSend_setShouldCloneFileInAssetCache_(infoCopy, v56, shouldCloneFileInAssetCache);
  v57.receiver = self;
  v57.super_class = CKFetchRecordsOperation;
  [(CKDatabaseOperation *)&v57 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v60.receiver = self;
  v60.super_class = CKFetchRecordsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v60 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordIDs(infoCopy, v5, v6, v60.receiver, v60.super_class);
  objc_msgSend_setRecordIDs_(self, v8, v7);

  CurrentUserOperation = objc_msgSend_isFetchCurrentUserOperation(infoCopy, v9, v10);
  objc_msgSend_setIsFetchCurrentUserOperation_(self, v12, CurrentUserOperation);
  v15 = objc_msgSend_desiredKeys(infoCopy, v13, v14);
  objc_msgSend_setDesiredKeys_(self, v16, v15);

  v19 = objc_msgSend_recordIDsToETags(infoCopy, v17, v18);
  objc_msgSend_setRecordIDsToETags_(self, v20, v19);

  v23 = objc_msgSend_recordIDsToVersionETags(infoCopy, v21, v22);
  objc_msgSend_setRecordIDsToVersionETags_(self, v24, v23);

  v27 = objc_msgSend_desiredPackageFileIndices(infoCopy, v25, v26);
  objc_msgSend_setDesiredPackageFileIndices_(self, v28, v27);

  AssetContent = objc_msgSend_shouldFetchAssetContent(infoCopy, v29, v30);
  objc_msgSend_setShouldFetchAssetContent_(self, v32, AssetContent);
  AssetContentInMemory = objc_msgSend_shouldFetchAssetContentInMemory(infoCopy, v33, v34);
  objc_msgSend_setShouldFetchAssetContentInMemory_(self, v36, AssetContentInMemory);
  shouldRequestEncryptedAssetOwnerIdentifier = objc_msgSend_shouldRequestEncryptedAssetOwnerIdentifier(infoCopy, v37, v38);
  objc_msgSend_setShouldRequestEncryptedAssetOwnerIdentifier_(self, v40, shouldRequestEncryptedAssetOwnerIdentifier);
  v43 = objc_msgSend_dropInMemoryAssetContentASAP(infoCopy, v41, v42);
  objc_msgSend_setDropInMemoryAssetContentASAP_(self, v44, v43);
  v47 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(infoCopy, v45, v46);
  v50 = objc_msgSend_copy(v47, v48, v49);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(self, v51, v50);

  v54 = objc_msgSend_webSharingIdentityDataByRecordID(infoCopy, v52, v53);
  objc_msgSend_setWebSharingIdentityDataByRecordID_(self, v55, v54);

  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v56, v57);
  objc_msgSend_setShouldCloneFileInAssetCache_(self, v59, shouldCloneFileInAssetCache);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v17.receiver = self;
  v17.super_class = CKFetchRecordsOperation;
  if ([(CKOperation *)&v17 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perRecordProgressBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perRecordCompletionBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_perRecordETagMatchedBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v15 = objc_msgSend_fetchRecordsCompletionBlock(self, v12, v13);
        v5 = v15 != 0;
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v8 = objc_msgSend_recordIDs(self, a2, run);
  if (v8)
  {
  }

  else if ((objc_msgSend_isFetchCurrentUserOperation(self, v9, v10) & 1) == 0)
  {
    if (run)
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"property recordIDs must not be nil for %@", v32);
    }

    return 0;
  }

  v15 = objc_msgSend_perRecordCompletionBlock(self, v11, v12);
  if (v15)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v17 = objc_msgSend_perRecordETagMatchedBlock(self, v13, v14);
  if (v17)
  {
    v3 = v17;
    v16 = 0;
    goto LABEL_8;
  }

  v34 = objc_msgSend_perRecordProgressBlock(self, v13, v14);
  if (v34)
  {
    v4 = v34;
    v3 = 0;
    v16 = 1;
LABEL_8:
    v20 = 0;
    v21 = 0;
    if (objc_msgSend_isFetchCurrentUserOperation(self, v13, v14))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v36 = objc_msgSend_fetchRecordsCompletionBlock(self, v13, v14);
  if (!v36)
  {
    return 0;
  }

  v5 = v36;
  if (!objc_msgSend_isFetchCurrentUserOperation(self, v37, v38))
  {
    v4 = 0;
    v3 = 0;
    v20 = 1;
    v16 = 1;
LABEL_9:
    v22 = objc_msgSend_recordIDs(self, v18, v19);
    v21 = objc_msgSend_count(v22, v23, v24) == 0;

    if (v20)
    {

      if ((v16 & 1) == 0)
      {
LABEL_14:
        if (!v15)
        {
        }

        if (!v21)
        {
          goto LABEL_17;
        }

        return 0;
      }

LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_17:
  v27 = objc_msgSend_desiredKeys(self, v25, v26);
  v28 = CKValidateIndexedArrayKeys(v27, 1);

  if (v28)
  {
    if (run)
    {
      v29 = v28;
      v30 = 0;
      *run = v28;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = CKFetchRecordsOperation;
    v30 = [(CKDatabaseOperation *)&v39 CKOperationShouldRun:run];
  }

  return v30;
}

- (void)performCKOperation
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isFetchCurrentUserOperation(self, a2, v2))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
      v8 = objc_msgSend_operationID(self, v6, v7);
      *buf = 138543362;
      v18 = v8;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching current user record with operation %{public}@", buf, 0xCu);
LABEL_11:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v5 = v9;
      v8 = objc_msgSend_operationID(self, v11, v12);
      v15 = objc_msgSend_recordIDs(self, v13, v14);
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v15;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching records with operation %{public}@ recordIDs=%@", buf, 0x16u);

      goto LABEL_11;
    }
  }

  v16.receiver = self;
  v16.super_class = CKFetchRecordsOperation;
  [(CKOperation *)&v16 performCKOperation];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchForRecordID:(id)d record:(id)record error:(id)error
{
  v149 = *MEMORY[0x1E69E9840];
  dCopy = d;
  recordCopy = record;
  errorCopy = error;
  v14 = objc_msgSend_CKClientSuitableError(errorCopy, v12, v13);
  selfCopy = self;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v16 = signpost;

  if (v14)
  {
    if (v16)
    {
      if (self)
      {
        v18 = self->super.super._signpost;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v22 = objc_msgSend_log(v19, v20, v21);

      if (selfCopy)
      {
        v23 = selfCopy->super.super._signpost;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      v27 = objc_msgSend_identifier(v24, v25, v26);

      if ((v27 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
      {
        goto LABEL_21;
      }

      *buf = 138412546;
      v142 = dCopy;
      v143 = 2112;
      v144 = v14;
      v28 = "Record %@ fetched with error: %@";
      v29 = v22;
      v30 = v27;
      v31 = 22;
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v29, OS_SIGNPOST_EVENT, v30, "CKFetchRecordsOperation", v28, buf, v31);
LABEL_21:
    }
  }

  else if (v16)
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
    v22 = objc_msgSend_log(v33, v34, v35);

    if (selfCopy)
    {
      v36 = selfCopy->super.super._signpost;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v40 = objc_msgSend_identifier(v37, v38, v39);

    if ((v40 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
    {
      goto LABEL_21;
    }

    *buf = 138412290;
    v142 = dCopy;
    v28 = "Record %@ fetched";
    v29 = v22;
    v30 = v40;
    v31 = 12;
    goto LABEL_20;
  }

  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = sub_1885C8D08;
  v138[3] = &unk_1E70BEBB0;
  v138[4] = selfCopy;
  objc_msgSend_countMergeableValueMetrics_(recordCopy, v17, v138);
  if (!recordCopy || v14)
  {
    if (objc_msgSend_count(selfCopy->_assetInfoByArrayIndexByRecordKeyByRecordID, v41, v42))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v52 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v142 = dCopy;
        v143 = 2112;
        v144 = v14;
        v145 = 2112;
        v146 = recordCopy;
        _os_log_error_impl(&dword_1883EA000, v52, OS_LOG_TYPE_ERROR, "Ditching assetInfoByArrayIndexByRecordKeyByRecordID recordID %@ error %@ record %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (__sTestOverridesAvailable[0] == 1)
    {
      v43 = objc_msgSend_unitTestOverrides(selfCopy, v41, v42);
      v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"SkipInMemoryAssetSignatureCheck");
      v48 = objc_msgSend_BOOLValue(v45, v46, v47);

      v49 = v48 ^ 1;
    }

    else
    {
      v49 = 1;
    }

    objc_msgSend__wireUpAssetContentForOperation_inRecord_checkSignatures_outError_(CKOperation, v41, selfCopy, recordCopy, v49 & 1, 0);
  }

  if (dCopy)
  {
    if (!v14)
    {
      if (recordCopy)
      {
        if (objc_msgSend_canDropItemResultsEarly(selfCopy, v50, v51))
        {
          goto LABEL_43;
        }

        v53 = objc_msgSend_recordIDsToRecords(selfCopy, v50, v51);
        objc_msgSend_setObject_forKeyedSubscript_(v53, v54, recordCopy, dCopy);
      }

      else
      {
        v55 = objc_msgSend_recordIDsToETags(selfCopy, v50, v51);
        v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, dCopy);

        if (v57)
        {
          goto LABEL_43;
        }

        v53 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v50, v51);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v53, v121, a2, selfCopy, @"CKFetchRecordsOperation.m", 214, @"Should have received a record");
      }

      goto LABEL_43;
    }

    if ((objc_msgSend_canDropItemResultsEarly(selfCopy, v50, v51) & 1) == 0)
    {
      if (selfCopy)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_recordErrors, v50, v14, dCopy);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(0, v50, v14, dCopy);
      }
    }
  }

LABEL_43:
  v58 = objc_msgSend_perRecordETagMatchedBlock_wrapper(selfCopy, v50, v51);
  v61 = v58;
  if (v58)
  {
    v62 = _Block_copy(v58);
  }

  else
  {
    v63 = objc_msgSend_perRecordETagMatchedBlock(selfCopy, v59, v60);
    v62 = _Block_copy(v63);
  }

  v66 = objc_msgSend_perRecordCompletionBlock_wrapper(selfCopy, v64, v65);
  v69 = v66;
  if (v66)
  {
    v127 = _Block_copy(v66);
  }

  else
  {
    v70 = objc_msgSend_perRecordCompletionBlock(selfCopy, v67, v68);
    v127 = _Block_copy(v70);
  }

  if (dCopy && !recordCopy && !v14 && v62)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v73 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v107 = v73;
      v110 = objc_msgSend_operationID(selfCopy, v108, v109);
      v113 = objc_msgSend_recordChangeTag(0, v111, v112);
      *buf = 138543874;
      v142 = v110;
      v143 = 2112;
      v144 = dCopy;
      v145 = 2112;
      v146 = v113;
      _os_log_debug_impl(&dword_1883EA000, v107, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about fetched etag-matched record with ID %@ etag=%@", buf, 0x20u);
    }

    v62[2](v62, dCopy);
    goto LABEL_66;
  }

  if (!v127)
  {
LABEL_65:
    if (!dCopy)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v74 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v114 = v74;
    v117 = objc_msgSend_operationID(selfCopy, v115, v116);
    v120 = objc_msgSend_recordChangeTag(recordCopy, v118, v119);
    *buf = 138544130;
    v142 = v117;
    v143 = 2112;
    v144 = dCopy;
    v145 = 2112;
    v146 = v120;
    v147 = 2112;
    v148 = v14;
    _os_log_debug_impl(&dword_1883EA000, v114, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about fetched record with ID %@ etag=%@: %@", buf, 0x2Au);
  }

  if (objc_msgSend_dropInMemoryAssetContentASAP(selfCopy, v75, v76))
  {
    v77 = objc_autoreleasePoolPush();
    v127[2](v127, recordCopy, dCopy, v14);
    objc_autoreleasePoolPop(v77);
    goto LABEL_65;
  }

  v127[2](v127, recordCopy, dCopy, v14);
  if (dCopy)
  {
LABEL_66:
    v78 = objc_msgSend_configuration(selfCopy, v71, v72);
    v81 = objc_msgSend_container(v78, v79, v80);
    objc_msgSend_handleRecordChanged_changeType_record_error_(v81, v82, dCopy, 1, recordCopy, v14);
  }

LABEL_67:
  if (objc_msgSend_dropInMemoryAssetContentASAP(selfCopy, v71, v72))
  {
    v123 = v14;
    v124 = errorCopy;
    v126 = dCopy;
    context = objc_autoreleasePoolPush();
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v125 = recordCopy;
    v85 = objc_msgSend_valueStore(recordCopy, v83, v84);
    v88 = objc_msgSend_allRawValues(v85, v86, v87);

    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v134, v140, 16);
    if (v90)
    {
      v91 = v90;
      v92 = *v135;
      v129 = v88;
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v135 != v92)
          {
            objc_enumerationMutation(v88);
          }

          v94 = *(*(&v134 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAssetContent_(v94, v95, 0);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              v97 = v94;
              v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v130, v139, 16);
              if (v99)
              {
                v100 = v99;
                v101 = *v131;
                do
                {
                  for (j = 0; j != v100; ++j)
                  {
                    if (*v131 != v101)
                    {
                      objc_enumerationMutation(v97);
                    }

                    v103 = *(*(&v130 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      objc_msgSend_setAssetContent_(v103, v104, 0);
                    }
                  }

                  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v104, &v130, v139, 16);
                }

                while (v100);
              }

              v88 = v129;
            }
          }
        }

        v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v96, &v134, v140, 16);
      }

      while (v91);
    }

    dCopy = v126;
    if (v126)
    {
      objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_assetInfoByArrayIndexByRecordKeyByRecordID, v105, 0, v126);
    }

    objc_autoreleasePoolPop(context);
    errorCopy = v124;
    recordCopy = v125;
    v14 = v123;
  }

  v106 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchForRecordID:(id)d didProgress:(double)progress
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v8 = signpost;

  if (v8)
  {
    if (self)
    {
      v11 = self->super.super._signpost;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v15 = objc_msgSend_log(v12, v13, v14);

    if (self)
    {
      v16 = self->super.super._signpost;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v20 = objc_msgSend_identifier(v17, v18, v19);

    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v28 = 138412546;
      v29 = dCopy;
      v30 = 2048;
      progressCopy = progress;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_EVENT, v20, "CKFetchRecordsOperation", "Record %@ updated progress %f", &v28, 0x16u);
    }
  }

  v21 = objc_msgSend_perRecordProgressBlock_wrapper(self, v9, v10);
  v24 = v21;
  if (v21)
  {
    v25 = _Block_copy(v21);
  }

  else
  {
    v26 = objc_msgSend_perRecordProgressBlock(self, v22, v23);
    v25 = _Block_copy(v26);
  }

  if (v25)
  {
    v25[2](v25, dCopy, progress);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleAssetDataForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index data:(id)data offset:(unint64_t)offset
{
  dataCopy = data;
  v14 = objc_msgSend_assetInfoForOperation_recordID_recordKey_arrayIndex_(CKOperation, v12, self, d, key, index);
  if (dataCopy)
  {
    objc_msgSend_writeData_atOffset_(v14, v13, dataCopy, offset);
  }
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v100 = *MEMORY[0x1E69E9840];
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
      v8 = self->super.super._signpost;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v12 = objc_msgSend_log(v9, v10, v11);

    if (self)
    {
      v13 = self->super.super._signpost;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v17 = objc_msgSend_identifier(v14, v15, v16);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v12, OS_SIGNPOST_EVENT, v17, "CKFetchRecordsOperation", "Finishing", buf, 2u);
    }
  }

  if (self)
  {
    mergeableValueCount = self->_mergeableValueCount;
    if (mergeableValueCount)
    {
      v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, mergeableValueCount);
      v22 = objc_msgSend_operationMetric(self, v20, v21);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v19, @"mergeable_valueCount");
    }

    mergeableDeltaCount = self->_mergeableDeltaCount;
    if (mergeableDeltaCount)
    {
      v25 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, mergeableDeltaCount);
      v28 = objc_msgSend_operationMetric(self, v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v28, v29, v25, @"mergeable_fetchedDeltaCount");
    }

    assetBackedMergeableDeltaCount = self->_assetBackedMergeableDeltaCount;
    if (assetBackedMergeableDeltaCount)
    {
      v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, assetBackedMergeableDeltaCount);
      v34 = objc_msgSend_operationMetric(self, v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v34, v35, v31, @"mergeable_assetCount");
    }
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v39 = objc_msgSend_recordIDs(self, v37, v38);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v87, v99, 16);
  if (v41)
  {
    v44 = v41;
    v45 = *v88;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v88 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v47 = objc_msgSend_zoneID(*(*(&v87 + 1) + 8 * i), v42, v43);
        objc_msgSend_addObject_(v36, v48, v47);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v87, v99, 16);
    }

    while (v44);
  }

  if (objc_msgSend_count(v36, v49, v50))
  {
    v53 = objc_msgSend_zoneIDsToZoneNamesString_(self, v51, v36);
    v56 = objc_msgSend_operationMetric(self, v54, v55);
    objc_msgSend_setObject_forKeyedSubscript_(v56, v57, v53, @"zoneNames");
  }

  if (!errorCopy)
  {
    if (self)
    {
      v58 = objc_msgSend_count(self->_recordErrors, v51, v52);
    }

    else
    {
      v58 = objc_msgSend_count(0, v51, v52);
    }

    if (v58)
    {
      v59 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v51, v52);
      v61 = v59;
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v59, v60, self->_recordErrors, @"CKPartialErrors");
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v59, v60, 0, @"CKPartialErrors");
      }

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v62, @"CKInternalErrorDomain", 1011, v61, @"Failed to fetch some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v63 = objc_msgSend_fetchRecordsCompletionBlock_wrapper(self, v51, v52);
  v66 = v63;
  if (v63)
  {
    v67 = _Block_copy(v63);
  }

  else
  {
    v68 = objc_msgSend_fetchRecordsCompletionBlock(self, v64, v65);
    v67 = _Block_copy(v68);
  }

  if (v67)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v70 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v80 = v70;
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      v85 = objc_msgSend_ckShortDescription(self, v83, v84);
      *buf = 138544130;
      v92 = v82;
      v93 = 2048;
      selfCopy = self;
      v95 = 2114;
      v96 = v85;
      v97 = 2112;
      v98 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v80, OS_LOG_TYPE_DEBUG, "Calling fetchRecordsCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v73 = objc_msgSend_recordIDsToRecords(self, v71, v72);
    v76 = objc_msgSend_CKClientSuitableError(errorCopy, v74, v75);
    v67[2](v67, v73, v76);

    objc_msgSend_setFetchRecordsCompletionBlock_(self, v77, 0);
  }

  objc_msgSend_setPerRecordProgressBlock_(self, v69, 0);
  objc_msgSend_setPerRecordCompletionBlock_(self, v78, 0);
  v86.receiver = self;
  v86.super_class = CKFetchRecordsOperation;
  [(CKOperation *)&v86 _finishOnCallbackQueueWithError:errorCopy];

  v79 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleFetchForRecordID_record_error_, 2, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKFetchRecordsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
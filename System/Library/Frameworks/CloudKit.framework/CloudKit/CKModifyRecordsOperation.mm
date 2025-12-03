@interface CKModifyRecordsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)_prepareFieldValuesForUploadWithError:(id *)error;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifyRecordsOperation)init;
- (CKModifyRecordsOperation)initWithRecordsToSave:(NSArray *)records recordIDsToDelete:(NSArray *)recordIDs;
- (id)activityCreate;
- (id)recordsInFlightBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleDeleteForRecordID:(id)d error:(id)error;
- (void)handleRecordIDsInFlight:(id)flight reply:(id)reply;
- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress;
- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4;
- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error;
- (void)modifyRecordsCompletionBlock;
- (void)perRecordCompletionBlock;
- (void)perRecordDeleteBlock;
- (void)perRecordProgressBlock;
- (void)perRecordSaveBlock;
- (void)performCKOperation;
- (void)setModifyRecordsCompletionBlock:(void *)modifyRecordsCompletionBlock;
- (void)setModifyRecordsCompletionBlockIVar:(id)var;
- (void)setPerRecordCompletionBlock:(void *)perRecordCompletionBlock;
- (void)setPerRecordDeleteBlock:(void *)perRecordDeleteBlock;
- (void)setPerRecordProgressBlock:(void *)perRecordProgressBlock;
- (void)setPerRecordSaveBlock:(void *)perRecordSaveBlock;
- (void)setRecordsInFlightBlock:(id)block;
@end

@implementation CKModifyRecordsOperation

- (CKModifyRecordsOperation)init
{
  v14.receiver = self;
  v14.super_class = CKModifyRecordsOperation;
  v2 = [(CKOperation *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordsByRecordIDs = v2->_recordsByRecordIDs;
    v2->_recordsByRecordIDs = v3;

    v5 = objc_opt_new();
    recordErrors = v2->_recordErrors;
    v2->_recordErrors = v5;

    v7 = objc_opt_new();
    savedRecords = v2->_savedRecords;
    v2->_savedRecords = v7;

    v9 = objc_opt_new();
    deletedRecordIDs = v2->_deletedRecordIDs;
    v2->_deletedRecordIDs = v9;

    v2->_savePolicy = 0;
    v11 = objc_opt_new();
    assetsByRecordIDAndRecordKey = v2->_assetsByRecordIDAndRecordKey;
    v2->_assetsByRecordIDAndRecordKey = v11;

    v2->_atomic = 1;
  }

  return v2;
}

- (CKModifyRecordsOperation)initWithRecordsToSave:(NSArray *)records recordIDsToDelete:(NSArray *)recordIDs
{
  v6 = records;
  v7 = recordIDs;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    recordsToSave = v12->_recordsToSave;
    v12->_recordsToSave = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    recordIDsToDelete = v12->_recordIDsToDelete;
    v12->_recordIDsToDelete = v17;
  }

  return v12;
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
    v12[2] = sub_1885D64C0;
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D66BC;
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
    v12[2] = sub_1885D684C;
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D6A48;
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

- (void)setPerRecordSaveBlock:(void *)perRecordSaveBlock
{
  v6 = perRecordSaveBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D6BD8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordSaveBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordSaveBlock;
    self->_perRecordSaveBlock = v9;
LABEL_9:
  }
}

- (void)perRecordSaveBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D6DD4;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordSaveBlock);
  }

  return v6;
}

- (void)setPerRecordDeleteBlock:(void *)perRecordDeleteBlock
{
  v6 = perRecordDeleteBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885D6F64;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perRecordDeleteBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perRecordDeleteBlock;
    self->_perRecordDeleteBlock = v9;
LABEL_9:
  }
}

- (void)perRecordDeleteBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D7160;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordDeleteBlock);
  }

  return v6;
}

- (void)setModifyRecordsCompletionBlockIVar:(id)var
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
    v12[2] = sub_1885D72F0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = varCopy;
    dispatch_sync(v11, v12);

    modifyRecordsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_modifyRecordsCompletionBlock != varCopy)
  {
    v9 = objc_msgSend_copy(varCopy, v7, v8);
    modifyRecordsCompletionBlock = self->_modifyRecordsCompletionBlock;
    self->_modifyRecordsCompletionBlock = v9;
LABEL_9:
  }
}

- (void)modifyRecordsCompletionBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D74EC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_modifyRecordsCompletionBlock);
  }

  return v6;
}

- (void)setRecordsInFlightBlock:(id)block
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
    v12[2] = sub_1885D767C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    recordsInFlightBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordsInFlightBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    recordsInFlightBlock = self->_recordsInFlightBlock;
    self->_recordsInFlightBlock = v9;
LABEL_9:
  }
}

- (id)recordsInFlightBlock
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
    v13 = sub_1883EDC18;
    v14 = sub_1883EF664;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885D7878;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordsInFlightBlock);
  }

  return v6;
}

- (void)setModifyRecordsCompletionBlock:(void *)modifyRecordsCompletionBlock
{
  v4 = modifyRecordsCompletionBlock == 0;
  v7 = modifyRecordsCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setModifyRecordsCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_recordsToSave(self, v5, v6);
  objc_msgSend_setRecordsToSave_(infoCopy, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(self, v9, v10);
  objc_msgSend_setRecordIDsToDelete_(infoCopy, v12, v11);

  v15 = objc_msgSend_savePolicy(self, v13, v14);
  objc_msgSend_setSavePolicy_(infoCopy, v16, v15);
  v19 = objc_msgSend_clientChangeTokenData(self, v17, v18);
  objc_msgSend_setClientChangeTokenData_(infoCopy, v20, v19);

  shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(self, v21, v22);
  objc_msgSend_setShouldOnlySaveAssetContent_(infoCopy, v24, shouldOnlySaveAssetContent);
  v27 = objc_msgSend_recordIDsToDeleteToEtags(self, v25, v26);
  objc_msgSend_setRecordIDsToDeleteToEtags_(infoCopy, v28, v27);

  v31 = objc_msgSend_atomic(self, v29, v30);
  objc_msgSend_setAtomic_(infoCopy, v32, v31);
  v35 = objc_msgSend_conflictLosersToResolveByRecordID(self, v33, v34);
  objc_msgSend_setConflictLosersToResolveByRecordID_(infoCopy, v36, v35);

  v39 = objc_msgSend_pluginFieldsForRecordDeletesByID(self, v37, v38);
  objc_msgSend_setPluginFieldsForRecordDeletesByID_(infoCopy, v40, v39);

  v43 = objc_msgSend_recordsInFlightBlock(self, v41, v42);
  objc_msgSend_setShouldReportRecordsInFlight_(infoCopy, v44, v43 != 0);

  v47 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(self, v45, v46);
  objc_msgSend_setMarkAsParticipantNeedsNewInvitationToken_(infoCopy, v48, v47);
  PCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(self, v49, v50);
  objc_msgSend_setAlwaysFetchPCSFromServer_(infoCopy, v52, PCSFromServer);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(self, v53, v54);
  objc_msgSend_setShouldCloneFileInAssetCache_(infoCopy, v56, shouldCloneFileInAssetCache);
  v57.receiver = self;
  v57.super_class = CKModifyRecordsOperation;
  [(CKDatabaseOperation *)&v57 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v53.receiver = self;
  v53.super_class = CKModifyRecordsOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v53 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_recordsToSave(infoCopy, v5, v6, v53.receiver, v53.super_class);
  objc_msgSend_setRecordsToSave_(self, v8, v7);

  v11 = objc_msgSend_recordIDsToDelete(infoCopy, v9, v10);
  objc_msgSend_setRecordIDsToDelete_(self, v12, v11);

  v15 = objc_msgSend_savePolicy(infoCopy, v13, v14);
  objc_msgSend_setSavePolicy_(self, v16, v15);
  v19 = objc_msgSend_clientChangeTokenData(infoCopy, v17, v18);
  objc_msgSend_setClientChangeTokenData_(self, v20, v19);

  shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(infoCopy, v21, v22);
  objc_msgSend_setShouldOnlySaveAssetContent_(self, v24, shouldOnlySaveAssetContent);
  v27 = objc_msgSend_recordIDsToDeleteToEtags(infoCopy, v25, v26);
  objc_msgSend_setRecordIDsToDeleteToEtags_(self, v28, v27);

  v31 = objc_msgSend_atomic(infoCopy, v29, v30);
  objc_msgSend_setAtomic_(self, v32, v31);
  v35 = objc_msgSend_conflictLosersToResolveByRecordID(infoCopy, v33, v34);
  objc_msgSend_setConflictLosersToResolveByRecordID_(self, v36, v35);

  v39 = objc_msgSend_pluginFieldsForRecordDeletesByID(infoCopy, v37, v38);
  objc_msgSend_setPluginFieldsForRecordDeletesByID_(self, v40, v39);

  v43 = objc_msgSend_markAsParticipantNeedsNewInvitationToken(infoCopy, v41, v42);
  objc_msgSend_setMarkAsParticipantNeedsNewInvitationToken_(self, v44, v43);
  PCSFromServer = objc_msgSend_alwaysFetchPCSFromServer(infoCopy, v45, v46);
  objc_msgSend_setAlwaysFetchPCSFromServer_(self, v48, PCSFromServer);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(infoCopy, v49, v50);

  objc_msgSend_setShouldCloneFileInAssetCache_(self, v52, shouldCloneFileInAssetCache);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v23.receiver = self;
  v23.super_class = CKModifyRecordsOperation;
  if ([(CKOperation *)&v23 hasCKOperationCallbacksSet])
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
      v14 = objc_msgSend_perRecordSaveBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v17 = objc_msgSend_perRecordDeleteBlock(self, v12, v13);
        if (v17)
        {
          v5 = 1;
        }

        else
        {
          v20 = objc_msgSend_recordsInFlightBlock(self, v15, v16);
          if (v20)
          {
            v5 = 1;
          }

          else
          {
            v21 = objc_msgSend_modifyRecordsCompletionBlock(self, v18, v19);
            v5 = v21 != 0;
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v459 = *MEMORY[0x1E69E9840];
  v393 = objc_opt_new();
  v4 = objc_opt_new();
  v445 = 0u;
  v446 = 0u;
  v447 = 0u;
  v448 = 0u;
  selfCopy = self;
  v7 = objc_msgSend_recordIDsToDelete(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v445, v458, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v446;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v446 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v445 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (run)
          {
            v260 = objc_opt_class();
            v261 = NSStringFromClass(v260);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v262, @"CKErrorDomain", 12, @"Unexpected recordID in property recordIDsToDelete passed to %@: %@", v261, v13);
          }

          goto LABEL_133;
        }

        if (objc_msgSend_containsObject_(v4, v14, v13))
        {
          if (run)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"You can't delete the same record (%@) twice in a single operation", v13);
            *run = v263 = 0;
            goto LABEL_141;
          }

LABEL_133:
          v263 = 0;
          goto LABEL_141;
        }

        objc_msgSend_addObject_(v4, v15, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v445, v458, 16);
    }

    while (v10);
  }

  v7 = objc_opt_new();
  v392 = objc_opt_new();
  v441 = 0u;
  v442 = 0u;
  v443 = 0u;
  v444 = 0u;
  v17 = selfCopy;
  obj = objc_msgSend_recordsToSave(selfCopy, v18, v19);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v441, v457, 16);
  v396 = v4;
  v399 = v7;
  runCopy8 = run;
  if (!v21)
  {
    goto LABEL_126;
  }

  v23 = v21;
  v24 = off_1E70BA000;
  v25 = *v442;
  v385 = *v442;
  do
  {
    v26 = 0;
    v386 = v23;
    do
    {
      if (*v442 != v25)
      {
        v27 = v26;
        objc_enumerationMutation(obj);
        v26 = v27;
      }

      v388 = v26;
      v28 = v24[191];
      v29 = *(*(&v441 + 1) + 8 * v26);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!runCopy8)
        {
          goto LABEL_138;
        }

        v347 = objc_opt_class();
        v389 = NSStringFromClass(v347);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v348, @"CKErrorDomain", 12, @"Unexpected record in property recordsToSave passed to %@: %@", v389, v29);
        *runCopy8 = LABEL_183:;
        goto LABEL_137;
      }

      v389 = objc_msgSend_recordID(v29, v30, v31);
      if (objc_msgSend_containsObject_(v4, v32, v389))
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 12, @"You can't save and delete the same record (%@) in a single operation", v389, v382);
        goto LABEL_183;
      }

      v397 = v29;
      v35 = objc_msgSend_configuration(v17, v33, v34);
      v38 = objc_msgSend_container(v35, v36, v37);
      v41 = objc_msgSend_options(v38, v39, v40);
      if (objc_msgSend_useZoneWidePCS(v41, v42, v43))
      {

        v46 = v397;
        objc_msgSend_parent(v397, v47, v48);
      }

      else
      {
        v49 = objc_msgSend_zoneishKeyID(v397, v44, v45);

        v46 = v397;
        if (!v49)
        {
          goto LABEL_23;
        }

        objc_msgSend_parent(v397, v50, v51);
      }
      v52 = ;

      if (v52)
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        v57 = objc_msgSend_recordID(v46, v53, v54);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v350, @"CKErrorDomain", 12, @"Records with a parent reference cannot use per-zone encryption: %@", v57);
        *runCopy8 = LABEL_189:;
        goto LABEL_190;
      }

      v55 = objc_msgSend_share(v46, v53, v54);

      if (v55)
      {
        if (!runCopy8)
        {
          goto LABEL_137;
        }

        v57 = objc_msgSend_recordID(v46, v50, v51);
        objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v351, @"CKErrorDomain", 12, @"Records with a share reference (root records) cannot use per-zone encryption: %@", v57);
        goto LABEL_189;
      }

LABEL_23:
      v56 = objc_msgSend_changedKeys(v46, v50, v51);
      v57 = CKValidateIndexedArrayKeys(v56, 0);

      if (runCopy8 && v57)
      {
        v349 = v57;
        *runCopy8 = v57;
LABEL_190:

        goto LABEL_137;
      }

      v400 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v58, v59);
      v398 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v60, v61);
      v437 = 0u;
      v438 = 0u;
      v439 = 0u;
      v440 = 0u;
      v395 = objc_msgSend_changedKeys(v46, v62, v63);
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v395, v64, &v437, v456, 16);
      if (!v65)
      {
        v68 = 0;
        v115 = 1;
        runCopy6 = run;
        goto LABEL_73;
      }

      v66 = v65;
      v387 = v57;
      v401 = *v438;
LABEL_27:
      v67 = 0;
      while (1)
      {
        if (*v438 != v401)
        {
          objc_enumerationMutation(v395);
        }

        v68 = *(*(&v437 + 1) + 8 * v67);
        v436 = 0;
        v435 = 0;
        v434 = 0;
        v69 = CKProcessIndexedArrayKey(v68, &v434, &v436, &v435);
        v70 = v434;
        v73 = v70;
        if (v69)
        {
          v111 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v71, v72);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v111, v112, a2, selfCopy, @"CKModifyRecordsOperation.m", 215, @"Error processing indexed array key, which should have been caught earlier: %@", v69);

          if (!v73)
          {
LABEL_57:

            goto LABEL_58;
          }
        }

        else if (!v70)
        {
          goto LABEL_57;
        }

        v74 = objc_msgSend_valueStore(v46, v71, v72);
        v76 = objc_msgSend_objectForKeyedSubscript_(v74, v75, v68);
        v79 = v76;
        if (v76)
        {
          v80 = v76;
        }

        else
        {
          v81 = objc_msgSend_encryptedValueStore(v46, v77, v78);
          v80 = objc_msgSend_objectForKeyedSubscript_(v81, v82, v68);

          v7 = v399;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          runCopy6 = run;
          if (run)
          {
            v117 = objc_msgSend_recordID(v397, v83, v84);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v118, @"CKErrorDomain", 12, @"Value type for indexed list key %@ in record %@ needs to be NSArray", v68, v117);
          }

          v68 = 0;
          v115 = 0;
          v46 = v397;
LABEL_65:
          v57 = v387;
          goto LABEL_73;
        }

        v85 = objc_msgSend_objectForKeyedSubscript_(v400, v83, v73);
        v86 = v85;
        if (v85)
        {
          v87 = v85;
        }

        else
        {
          v87 = objc_opt_new();
        }

        v89 = objc_msgSend_objectForKeyedSubscript_(v398, v88, v73);
        v90 = v436;
        v91 = v435;
        if (v91 == objc_msgSend_count(v80, v92, v93))
        {
          if (v436 < 0)
          {
            v383 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v94, v95);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v383, v113, a2, selfCopy, @"CKModifyRecordsOperation.m", 247, @"For now, negative indexed list keys (%@) can only be appends: should have been caught in CKProcessIndexedArrayKey", v68);
          }

          if (objc_msgSend_containsIndexesInRange_(v87, v94, v90, v91))
          {
            v384 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v96, v97);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v384, v114, a2, selfCopy, @"CKModifyRecordsOperation.m", 249, @"Overlapping replacements: should have been caught in CKValidateIndexedArrayKeys");
          }

          objc_msgSend_addIndexesInRange_(v87, v96, v90, v91);
          if (v89)
          {
            if ((objc_msgSend_integerValue(v89, v98, v99) & 0x8000000000000000) == 0 && objc_msgSend_lastIndex(v87, v98, v100) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v102 = objc_msgSend_integerValue(v89, v98, v101);
              if (v102 <= objc_msgSend_lastIndex(v87, v103, v104))
              {
LABEL_66:
                v119 = v68;

                v7 = v399;
                goto LABEL_68;
              }
            }
          }

          objc_msgSend_setObject_forKeyedSubscript_(v400, v98, v87, v73);
          v7 = v399;
          goto LABEL_55;
        }

        if (v89)
        {
          goto LABEL_66;
        }

        v105 = v436;
        v7 = v399;
        if (v436 >= 1)
        {
          Index = objc_msgSend_lastIndex(v87, v94, v95);
          v105 = v436;
          if (Index != 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }
        }

LABEL_54:
        v108 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v94, v105);
        objc_msgSend_setObject_forKeyedSubscript_(v398, v109, v108, v73);

LABEL_55:
        v4 = v396;
        v46 = v397;
LABEL_58:
        if (v66 == ++v67)
        {
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v395, v110, &v437, v456, 16);
          if (v66)
          {
            goto LABEL_27;
          }

          v68 = 0;
          v115 = 1;
          runCopy6 = run;
          goto LABEL_65;
        }
      }

      if (v105 > objc_msgSend_lastIndex(v87, v94, v107))
      {
        v105 = v436;
        goto LABEL_54;
      }

      v120 = v68;
LABEL_68:

      v115 = v68 == 0;
      v123 = run == 0;
      if (!v68)
      {
        v123 = 1;
      }

      v4 = v396;
      runCopy6 = run;
      v57 = v387;
      if (v123)
      {
        v46 = v397;
        goto LABEL_74;
      }

      v46 = v397;
      v395 = objc_msgSend_recordID(v397, v121, v122);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v124, @"CKErrorDomain", 12, @"Found non-commutative indexed list key %@ in record %@: every mutation for a given list key must commute", v68, v395);
      *run = v115 = 0;
LABEL_73:

LABEL_74:
      if (!v115)
      {
        goto LABEL_137;
      }

      v432 = 0u;
      v433 = 0u;
      v430 = 0u;
      v431 = 0u;
      v127 = objc_msgSend_valueStore(v46, v125, v126);
      v130 = objc_msgSend_allRawValues(v127, v128, v129);

      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v430, v455, 16);
      if (v132)
      {
        v133 = v132;
        v134 = *v431;
        v402 = v130;
        do
        {
          v135 = 0;
          v136 = selfCopy;
          do
          {
            if (*v431 != v134)
            {
              objc_enumerationMutation(v130);
            }

            v137 = *(*(&v430 + 1) + 8 * v135);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = sub_1885D9520;
            aBlock[3] = &unk_1E70BEC48;
            aBlock[4] = v136;
            aBlock[5] = v397;
            v138 = _Block_copy(aBlock);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v138[2](v138, v137, runCopy6))
              {
                goto LABEL_94;
              }

LABEL_135:

LABEL_136:
              v7 = v399;
              goto LABEL_137;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_94;
            }

            v427 = 0u;
            v428 = 0u;
            v425 = 0u;
            v426 = 0u;
            v139 = v137;
            v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v140, &v425, v454, 16);
            if (!v141)
            {
              goto LABEL_93;
            }

            v142 = v141;
            v143 = *v426;
            do
            {
              for (j = 0; j != v142; ++j)
              {
                if (*v426 != v143)
                {
                  objc_enumerationMutation(v139);
                }

                v145 = *(*(&v425 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && !v138[2](v138, v145, run))
                {

                  v4 = v396;
                  v130 = v402;
                  goto LABEL_135;
                }
              }

              v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v146, &v425, v454, 16);
            }

            while (v142);
LABEL_93:

            v4 = v396;
            v130 = v402;
            runCopy6 = run;
            v136 = selfCopy;
LABEL_94:

            ++v135;
          }

          while (v135 != v133);
          v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v147, &v430, v455, 16);
        }

        while (v133);
      }

      objc_msgSend_addObject_(v392, v148, v389);
      v151 = objc_msgSend_recordType(v397, v149, v150);
      isEqualToString = objc_msgSend_isEqualToString_(v151, v152, @"cloudkit.share");

      if (isEqualToString)
      {
        v156 = v397;
        v161 = objc_msgSend_rootRecordID(v156, v157, v158);
        if (v161 && (objc_msgSend_isKnownToServer(v156, v159, v160) & 1) == 0)
        {
          v164 = objc_msgSend_recordID(v156, v162, v163);
          objc_msgSend_setObject_forKeyedSubscript_(v399, v165, v164, v161);
        }
      }

      v166 = objc_msgSend_configuration(selfCopy, v154, v155);
      v169 = objc_msgSend_container(v166, v167, v168);
      v172 = objc_msgSend_options(v169, v170, v171);
      if (objc_msgSend_bypassPCSEncryption(v172, v173, v174))
      {
      }

      else
      {
        v179 = objc_msgSend_configuration(selfCopy, v175, v176);
        v182 = objc_msgSend_container(v179, v180, v181);
        v185 = objc_msgSend_options(v182, v183, v184);
        OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v185, v186, v187);

        if (!OnlyManatee)
        {
          goto LABEL_124;
        }
      }

      v189 = objc_msgSend_configuration(selfCopy, v177, v178);
      v192 = objc_msgSend_container(v189, v190, v191);
      v195 = objc_msgSend_options(v192, v193, v194);
      v198 = objc_msgSend_bypassPCSEncryption(v195, v196, v197);

      v201 = @"no encryption";
      if ((v198 & 1) == 0)
      {
        v202 = objc_msgSend_configuration(selfCopy, v199, v200);
        v205 = objc_msgSend_container(v202, v203, v204);
        v208 = objc_msgSend_options(v205, v206, v207);
        v211 = objc_msgSend_forceEnableReadOnlyManatee(v208, v209, v210);

        if (v211)
        {
          v201 = @"manatee force enabled";
        }

        else
        {
          v201 = @"?";
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!run)
        {
          goto LABEL_136;
        }

        v381 = @"This container has requested %@ but record %@ is a share";
        v7 = v399;
LABEL_224:
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v212, @"CKErrorDomain", 12, v381, v201, v389);
        goto LABEL_137;
      }

      v214 = objc_msgSend_share(v397, v212, v213);

      if (v214)
      {
        v7 = v399;
        if (!run)
        {
          goto LABEL_137;
        }

        v381 = @"This container has requested %@ but record %@ has a share reference";
        goto LABEL_224;
      }

      v216 = objc_msgSend_parent(v397, v212, v215);

      v7 = v399;
      if (v216)
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v381 = @"This container has requested %@ but record %@ has a parent reference";
        goto LABEL_224;
      }

      if (objc_msgSend_wantsChainPCS(v397, v212, v217))
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v381 = @"This container has requested %@ but record %@ wants chain PCS";
        goto LABEL_224;
      }

      v219 = objc_msgSend_encryptedValueStore(v397, v212, v218);
      v222 = objc_msgSend_allKeys(v219, v220, v221);
      v225 = objc_msgSend_count(v222, v223, v224);

      if (v225)
      {
        if (!run)
        {
          goto LABEL_137;
        }

        v381 = @"This container has requested %@ but record %@ has encrypted values";
        goto LABEL_224;
      }

      v423 = 0u;
      v424 = 0u;
      v421 = 0u;
      v422 = 0u;
      v227 = objc_msgSend_valueStore(v397, v212, v226);
      v230 = objc_msgSend_allRawValues(v227, v228, v229);

      v232 = objc_msgSend_countByEnumeratingWithState_objects_count_(v230, v231, &v421, v453, 16);
      if (!v232)
      {
        goto LABEL_123;
      }

      v233 = v232;
      v234 = *v422;
      do
      {
        for (k = 0; k != v233; ++k)
        {
          if (*v422 != v234)
          {
            objc_enumerationMutation(v230);
          }

          v236 = *(*(&v421 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }

          if (run)
          {
            v343 = objc_opt_class();
            v344 = NSStringFromClass(v343);
            *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v345, @"CKErrorDomain", 12, @"This container has requested %@ but record %@ has a value of class %@", v201, v389, v344);
          }

LABEL_137:
LABEL_138:

          goto LABEL_139;
        }

        v233 = objc_msgSend_countByEnumeratingWithState_objects_count_(v230, v237, &v421, v453, 16);
      }

      while (v233);
LABEL_123:

LABEL_124:
      v26 = v388 + 1;
      v25 = v385;
      v7 = v399;
      runCopy8 = run;
      v17 = selfCopy;
      v24 = off_1E70BA000;
    }

    while (v388 + 1 != v386);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v238, &v441, v457, 16);
  }

  while (v23);
LABEL_126:

  objc_msgSend_database(v17, v239, v240);
  v242 = v241 = v17;
  if (objc_msgSend_databaseScope(v242, v243, v244) == 3)
  {
    v247 = objc_msgSend_configuration(v241, v245, v246);
    v250 = objc_msgSend_container(v247, v248, v249);
    v253 = objc_msgSend_options(v250, v251, v252);
    if (objc_msgSend_bypassPCSEncryption(v253, v254, v255))
    {

LABEL_170:
      if (runCopy8)
      {
        v341 = objc_msgSend_operationID(selfCopy, v258, v259);
        *runCopy8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v342, @"CKErrorDomain", 12, @"This container has requested no encryption but CKModifyRecordsOperation %@ is targeting the shared database, which requires encryption", v341);
      }

LABEL_139:
      v263 = 0;
      goto LABEL_140;
    }

    v331 = objc_msgSend_configuration(v241, v256, v257);
    v334 = objc_msgSend_container(v331, v332, v333);
    v337 = objc_msgSend_options(v334, v335, v336);
    v340 = objc_msgSend_forceEnableReadOnlyManatee(v337, v338, v339);

    v7 = v399;
    runCopy8 = run;

    if (v340)
    {
      goto LABEL_170;
    }
  }

  else
  {
  }

  if (objc_msgSend_count(v7, v258, v259) && (objc_msgSend_atomic(selfCopy, v266, v267) & 1) == 0)
  {
    if (runCopy8)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v266, @"CKErrorDomain", 12, @"When saving an added share with its rootRecord, the operation must be marked as atomic = YES");
      *runCopy8 = v263 = 0;
      goto LABEL_140;
    }

    goto LABEL_139;
  }

  v419 = 0u;
  v420 = 0u;
  v417 = 0u;
  v418 = 0u;
  v268 = objc_msgSend_allKeys(v7, v266, v267);
  v270 = objc_msgSend_countByEnumeratingWithState_objects_count_(v268, v269, &v417, v452, 16);
  if (!v270)
  {
    goto LABEL_153;
  }

  v272 = v270;
  v273 = *v418;
  do
  {
    for (m = 0; m != v272; ++m)
    {
      if (*v418 != v273)
      {
        objc_enumerationMutation(v268);
      }

      v275 = *(*(&v417 + 1) + 8 * m);
      if ((objc_msgSend_containsObject_(v392, v271, v275) & 1) == 0)
      {
        if (run)
        {
          v323 = objc_msgSend_objectForKeyedSubscript_(v7, v271, v275);
          v326 = objc_msgSend_ckShortDescription(v323, v324, v325);
          v329 = objc_msgSend_ckShortDescription(v275, v327, v328);
          *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v330, @"CKErrorDomain", 12, @"An added share is being saved without its rootRecord being saved in the same operation. (Share ID: %@, Root Record ID: %@)", v326, v329);
        }

        goto LABEL_139;
      }
    }

    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v268, v271, &v417, v452, 16);
  }

  while (v272);
LABEL_153:

  v276 = objc_opt_new();
  v277 = objc_opt_new();
  v413 = 0u;
  v414 = 0u;
  v415 = 0u;
  v416 = 0u;
  v280 = objc_msgSend_recordsToSave(selfCopy, v278, v279);
  v282 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v281, &v413, v451, 16);
  if (!v282)
  {
    goto LABEL_164;
  }

  v285 = v282;
  v286 = *v414;
  while (2)
  {
    v287 = 0;
    while (2)
    {
      if (*v414 != v286)
      {
        objc_enumerationMutation(v280);
      }

      v288 = *(*(&v413 + 1) + 8 * v287);
      v289 = objc_msgSend_recordID(v288, v283, v284);
      v291 = objc_msgSend_containsObject_(v393, v290, v289);

      if (v291)
      {
        v4 = v396;
        if (!run)
        {
          goto LABEL_193;
        }

        v294 = objc_msgSend_recordID(v288, v292, v293);
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v346, @"CKErrorDomain", 12, @"You can't save the same record twice: %@", v294);
        goto LABEL_192;
      }

      v294 = v288;
      if (!objc_msgSend_containsPackageValues(v294, v295, v296))
      {
        goto LABEL_162;
      }

      v299 = objc_msgSend_recordWithDuplicatedPackagesOfRecord_error_(CKRecord, v297, v294, run);
      if (!v299)
      {
        v4 = v396;
LABEL_192:

        goto LABEL_193;
      }

      v301 = v299;
      objc_msgSend_addObject_(v276, v300, v299);
      v302 = v301;

      v294 = v302;
LABEL_162:
      v303 = objc_msgSend_recordsByRecordIDs(selfCopy, v297, v298);
      v306 = objc_msgSend_recordID(v294, v304, v305);
      objc_msgSend_setObject_forKeyedSubscript_(v303, v307, v294, v306);

      v310 = objc_msgSend_recordID(v294, v308, v309);
      objc_msgSend_addObject_(v393, v311, v310);

      objc_msgSend_addObject_(v277, v312, v294);
      if (v285 != ++v287)
      {
        continue;
      }

      break;
    }

    v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v283, &v413, v451, 16);
    if (v285)
    {
      continue;
    }

    break;
  }

LABEL_164:

  objc_msgSend_setRecordsToSave_(selfCopy, v313, v277);
  v316 = objc_msgSend_recordsToSave(selfCopy, v314, v315);
  if (objc_msgSend_count(v316, v317, v318))
  {

    v4 = v396;
    goto LABEL_197;
  }

  v352 = objc_msgSend_recordIDsToDelete(selfCopy, v319, v320);
  v355 = objc_msgSend_count(v352, v353, v354);

  v4 = v396;
  if (!v355)
  {
    goto LABEL_194;
  }

LABEL_197:
  v411 = 0u;
  v412 = 0u;
  v409 = 0u;
  v410 = 0u;
  v280 = objc_msgSend_recordsToSave(selfCopy, v321, v322);
  v357 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v356, &v409, v450, 16);
  if (v357)
  {
    v360 = v357;
    v361 = *v410;
LABEL_199:
    v362 = 0;
    while (1)
    {
      if (*v410 != v361)
      {
        objc_enumerationMutation(v280);
      }

      v363 = objc_msgSend_recordID(*(*(&v409 + 1) + 8 * v362), v358, v359);
      v366 = objc_msgSend_zoneID(v363, v364, v365);
      v368 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(selfCopy, v367, v366, run);

      if (!v368)
      {
        break;
      }

      if (v360 == ++v362)
      {
        v360 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v358, &v409, v450, 16);
        if (v360)
        {
          goto LABEL_199;
        }

        goto LABEL_205;
      }
    }

LABEL_193:

LABEL_194:
    v263 = 0;
  }

  else
  {
LABEL_205:

    v407 = 0u;
    v408 = 0u;
    v405 = 0u;
    v406 = 0u;
    v280 = objc_msgSend_recordIDsToDelete(selfCopy, v369, v370);
    v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v371, &v405, v449, 16);
    if (v372)
    {
      v375 = v372;
      v376 = *v406;
LABEL_207:
      v377 = 0;
      while (1)
      {
        if (*v406 != v376)
        {
          objc_enumerationMutation(v280);
        }

        v378 = objc_msgSend_zoneID(*(*(&v405 + 1) + 8 * v377), v373, v374);
        v380 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(selfCopy, v379, v378, run);

        if (!v380)
        {
          goto LABEL_193;
        }

        if (v375 == ++v377)
        {
          v375 = objc_msgSend_countByEnumeratingWithState_objects_count_(v280, v373, &v405, v449, 16);
          if (v375)
          {
            goto LABEL_207;
          }

          break;
        }
      }
    }

    v404.receiver = selfCopy;
    v404.super_class = CKModifyRecordsOperation;
    v263 = [(CKDatabaseOperation *)&v404 CKOperationShouldRun:run];
  }

  v7 = v399;
LABEL_140:

LABEL_141:
  v264 = *MEMORY[0x1E69E9840];
  return v263;
}

- (BOOL)_prepareFieldValuesForUploadWithError:(id *)error
{
  v101 = *MEMORY[0x1E69E9840];
  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  selfCopy = self;
  v6 = objc_msgSend_database(self, v4, v5);
  v66 = objc_msgSend_container(v6, v7, v8);

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v11 = objc_msgSend_recordsToSave(self, v9, v10);
  v13 = 0;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v75, v100, 16);
  if (v15)
  {
    v16 = *v76;
LABEL_3:
    v17 = 0;
    v18 = v13;
    while (1)
    {
      if (*v76 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v75 + 1) + 8 * v17);
      v74 = v18;
      v20 = objc_msgSend_prepareMergeablesForUploadInContainer_useAssetsIfNecessary_error_(v19, v14, v66, 1, &v74);
      v13 = v74;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v99[0] = objc_opt_class();
      v99[1] = objc_opt_class();
      v99[2] = objc_opt_class();
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v99, 3);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_1885D9BEC;
      v67[3] = &unk_1E70BEC70;
      v68 = v65;
      v69 = &v79;
      v70 = &v87;
      v71 = &v83;
      v72 = &v95;
      v73 = &v91;
      objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v19, v23, v22, v67);

      ++v17;
      v18 = v13;
      if (v15 == v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v75, v100, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v25 = v96[3];
  if (v25)
  {
    v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v25);
    v29 = objc_msgSend_operationMetric(selfCopy, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v26, @"mergeable_valueCount");
  }

  v31 = v92[3];
  if (v31)
  {
    v32 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v31);
    v35 = objc_msgSend_operationMetric(selfCopy, v33, v34);
    objc_msgSend_setObject_forKeyedSubscript_(v35, v36, v32, @"mergeable_savedDeltaCount");
  }

  v37 = v88[3];
  if (v37)
  {
    v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v37);
    v41 = objc_msgSend_operationMetric(selfCopy, v39, v40);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v42, v38, @"mergeable_savedReplacementDeltaCount");
  }

  v43 = v84[3];
  if (v43)
  {
    v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v43);
    v47 = objc_msgSend_operationMetric(selfCopy, v45, v46);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v44, @"mergeable_replacedDeltaCount");
  }

  v49 = v80[3];
  if (v49)
  {
    v50 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v24, v49);
    v53 = objc_msgSend_operationMetric(selfCopy, v51, v52);
    objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v50, @"mergeable_assetCount");
  }

  if (!v13)
  {
    v55 = objc_msgSend_deviceContext(selfCopy, v24, v49);
    v58 = objc_msgSend_deviceScopedStateManager(v55, v56, v57);
    objc_msgSend_trackAssets_(v58, v59, v65);
  }

  if (error)
  {
    v60 = v13;
    *error = v13;
  }

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  v61 = *MEMORY[0x1E69E9840];
  return v13 == 0;
}

- (void)performCKOperation
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v6 = objc_msgSend_CKMap_(v4, v5, &unk_1EFA2F4E8);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v13 = v7;
    v16 = objc_msgSend_operationID(self, v14, v15);
    v19 = objc_msgSend_recordIDsToDelete(self, v17, v18);
    *buf = 138543874;
    v23 = v16;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Modifying records with operation %{public}@ recordsToSave=%@ recordIDsToDelete=%@", buf, 0x20u);
  }

  v21 = 0;
  v9 = objc_msgSend__prepareFieldValuesForUploadWithError_(self, v8, &v21);
  v11 = v21;
  if (v9)
  {
    v20.receiver = self;
    v20.super_class = CKModifyRecordsOperation;
    [(CKOperation *)&v20 performCKOperation];
  }

  else
  {
    objc_msgSend_finishWithError_(self, v10, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordIDsInFlight:(id)flight reply:(id)reply
{
  v46 = *MEMORY[0x1E69E9840];
  flightCopy = flight;
  replyCopy = reply;
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
      v42 = 138412290;
      v43 = flightCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKModifyRecordsOperation", "Records in flight: %@", &v42, 0xCu);
    }
  }

  v22 = objc_msgSend_recordsInFlightBlock_wrapper(self, v10, v11);
  v25 = v22;
  if (v22)
  {
    v26 = _Block_copy(v22);
  }

  else
  {
    v27 = objc_msgSend_recordsInFlightBlock(self, v23, v24);
    v26 = _Block_copy(v27);
  }

  if (v26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v31 = v28;
      v34 = objc_msgSend_operationID(self, v32, v33);
      v42 = 138543618;
      v43 = v34;
      v44 = 2112;
      v45 = flightCopy;
      _os_log_debug_impl(&dword_1883EA000, v31, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about records in flight %@", &v42, 0x16u);
    }

    v26[2](v26, flightCopy);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v35 = v29;
      v38 = objc_msgSend_operationID(self, v36, v37);
      v41 = objc_msgSend_count(flightCopy, v39, v40);
      v42 = 138543618;
      v43 = v38;
      v44 = 2048;
      v45 = v41;
      _os_log_debug_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received %lu records in flight, but no recordsInFlightBlock has been set.", &v42, 0x16u);
    }
  }

  replyCopy[2](replyCopy, 0);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress
{
  v38 = *MEMORY[0x1E69E9840];
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
      v34 = 138412546;
      v35 = dCopy;
      v36 = 2048;
      progressCopy = progress;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v15, OS_SIGNPOST_EVENT, v20, "CKModifyRecordsOperation", "Record %@ updated progress %f", &v34, 0x16u);
    }
  }

  v21 = objc_msgSend_recordsByRecordIDs(self, v9, v10);
  v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, dCopy);

  if (v23)
  {
    v26 = objc_msgSend_perRecordProgressBlock_wrapper(self, v24, v25);
    v29 = v26;
    if (v26)
    {
      v30 = _Block_copy(v26);
    }

    else
    {
      v32 = objc_msgSend_perRecordProgressBlock(self, v27, v28);
      v30 = _Block_copy(v32);
    }

    if (v30)
    {
      v30[2](v30, v23, progress);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v34 = 138412290;
      v35 = dCopy;
      _os_log_error_impl(&dword_1883EA000, v31, OS_LOG_TYPE_ERROR, "Received progress callback with nil record for recordID %@", &v34, 0xCu);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)handleDeleteForRecordID:(id)d error:(id)error
{
  v65 = *MEMORY[0x1E69E9840];
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
      if (objc_msgSend_canDropItemResultsEarly(self, v12, v13))
      {
        goto LABEL_29;
      }

      goto LABEL_27;
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

    *v63 = 138412290;
    *&v63[4] = dCopy;
    v24 = "Record %@ deleted";
    v25 = v18;
    v26 = v36;
    v27 = 12;
    goto LABEL_20;
  }

  if (!v11)
  {
    if (objc_msgSend_canDropItemResultsEarly(self, v12, v13))
    {
      goto LABEL_29;
    }

    goto LABEL_25;
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
    *v63 = 138412546;
    *&v63[4] = dCopy;
    *&v63[12] = 2112;
    *&v63[14] = v9;
    v24 = "Record %@ deleted with error: %@";
    v25 = v18;
    v26 = v23;
    v27 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v26, "CKModifyRecordsOperation", v24, v63, v27);
  }

LABEL_21:

  if (objc_msgSend_canDropItemResultsEarly(self, v37, v38))
  {
    goto LABEL_29;
  }

  if (!v9)
  {
LABEL_27:
    v41 = objc_msgSend_deletedRecordIDs(self, v39, v40, *v63, *&v63[8]);
    objc_msgSend_addObject_(v41, v43, dCopy);
    goto LABEL_28;
  }

LABEL_25:
  v41 = objc_msgSend_recordErrors(self, v39, v40, *v63, *&v63[16]);
  objc_msgSend_setObject_forKeyedSubscript_(v41, v42, v9, dCopy);
LABEL_28:

LABEL_29:
  v44 = objc_msgSend_perRecordDeleteBlock_wrapper(self, v39, v40, *v63, *&v63[8]);
  v47 = v44;
  if (v44)
  {
    v48 = _Block_copy(v44);
  }

  else
  {
    v49 = objc_msgSend_perRecordDeleteBlock(self, v45, v46);
    v48 = _Block_copy(v49);
  }

  if (v48)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v52 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v59 = v52;
      v62 = objc_msgSend_operationID(self, v60, v61);
      *v63 = 138543874;
      *&v63[4] = v62;
      *&v63[12] = 2112;
      *&v63[14] = dCopy;
      *&v63[22] = 2112;
      v64 = v9;
      _os_log_debug_impl(&dword_1883EA000, v59, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about deleted record with ID %@: %@", v63, 0x20u);
    }

    v48[2](v48, dCopy, v9);
  }

  v53 = objc_msgSend_configuration(self, v50, v51);
  v56 = objc_msgSend_container(v53, v54, v55);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v56, v57, dCopy, 3, 0, v9);

  v58 = *MEMORY[0x1E69E9840];
}

- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error
{
  v152 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metadataCopy = metadata;
  errorCopy = error;
  selfCopy = self;
  v12 = errorCopy;
  v15 = objc_msgSend_CKClientSuitableError(errorCopy, v13, v14);
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
    if (!v17)
    {
      goto LABEL_22;
    }

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

    if ((v29 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_21;
    }

    *buf = 138412546;
    v144 = dCopy;
    v145 = 2112;
    v146 = v15;
    v30 = "Record %@ saved with error: %@";
    v31 = v24;
    v32 = v29;
    v33 = 22;
    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v34 = self->super.super._signpost;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v24 = objc_msgSend_log(v35, v36, v37);

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

  if ((v42 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 138412290;
    v144 = dCopy;
    v30 = "Record %@ saved";
    v31 = v24;
    v32 = v42;
    v33 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v31, OS_SIGNPOST_EVENT, v32, "CKModifyRecordsOperation", v30, buf, v33);
  }

LABEL_21:

LABEL_22:
  v43 = objc_msgSend_recordsByRecordIDs(self, v18, v19);
  v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, dCopy);

  v48 = v45;
  if (v45)
  {
    v49 = objc_msgSend_CKClientSuitableError(v12, v46, v47);

    v136 = v45;
    if (v49)
    {
      if (objc_msgSend_canDropItemResultsEarly(selfCopy, v50, v51))
      {
        goto LABEL_45;
      }

      v54 = objc_msgSend_recordErrors(selfCopy, v52, v53);
      objc_msgSend_setObject_forKeyedSubscript_(v54, v55, v49, dCopy);
    }

    else
    {
      v58 = objc_msgSend_assetsByRecordIDAndRecordKey(selfCopy, v50, v51);
      v61 = objc_msgSend_count(v58, v59, v60);

      if (v61)
      {
        v134 = v12;
        v135 = dCopy;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        obj = objc_msgSend_allKeys(v45, v62, v63);
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v139, v151, 16);
        if (v65)
        {
          v67 = v65;
          v68 = *v140;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v140 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v70 = *(*(&v139 + 1) + 8 * i);
              v71 = objc_msgSend_objectForKeyedSubscript_(v48, v66, v70);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v72 = v71;
                objc_msgSend_assetsByRecordIDAndRecordKey(selfCopy, v73, v74);
                v76 = v75 = selfCopy;
                v78 = objc_msgSend_objectForKeyedSubscript_(v76, v77, v135);
                v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, v70);
                objc_msgSend_setAssets_(v72, v81, v80);

                v48 = v136;
                selfCopy = v75;
              }
            }

            v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v139, v151, 16);
          }

          while (v67);
        }

        dCopy = v135;
        v49 = 0;
        v12 = v134;
      }

      shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(selfCopy, v62, v63);
      objc_msgSend_updateWithSavedRecordXPCMetadata_shouldOnlySaveAssetContent_(v48, v83, metadataCopy, shouldOnlySaveAssetContent);
      if (objc_msgSend_canDropItemResultsEarly(selfCopy, v84, v85))
      {
LABEL_45:
        v87 = objc_msgSend_perRecordSaveBlock_wrapper(selfCopy, v52, v53);
        v90 = v87;
        if (v87)
        {
          v91 = _Block_copy(v87);
        }

        else
        {
          v92 = objc_msgSend_perRecordSaveBlock(selfCopy, v88, v89);
          v91 = _Block_copy(v92);
        }

        if (v91)
        {
          if (v49)
          {
            v95 = 0;
          }

          else
          {
            v95 = v48;
          }

          v102 = v12;
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v103 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            v113 = v103;
            v116 = objc_msgSend_operationID(selfCopy, v114, v115);
            objc_msgSend_recordID(v48, v117, v118);
            v119 = obja = selfCopy;
            v122 = objc_msgSend_recordChangeTag(v48, v120, v121);
            *buf = 138544130;
            v144 = v116;
            v145 = 2112;
            v146 = v119;
            v147 = 2112;
            v148 = v122;
            v149 = 2112;
            v150 = v49;
            _os_log_debug_impl(&dword_1883EA000, v113, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about saved record with ID %@ etag=%@: %@", buf, 0x2Au);

            v48 = v136;
            selfCopy = obja;
          }

          v106 = objc_msgSend_recordID(v48, v104, v105);
          v91[2](v91, v106, v95, v49);

          v12 = v102;
        }

        else
        {
          v96 = objc_msgSend_perRecordCompletionBlock(selfCopy, v93, v94);

          if (!v96)
          {
LABEL_64:
            v107 = objc_msgSend_configuration(selfCopy, v97, v98);
            v110 = objc_msgSend_container(v107, v108, v109);
            objc_msgSend_handleRecordChanged_changeType_record_error_(v110, v111, dCopy, 2, v48, v49);

            goto LABEL_65;
          }

          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v99 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
          {
            v123 = v99;
            v126 = objc_msgSend_operationID(selfCopy, v124, v125);
            objc_msgSend_recordID(v48, v127, v128);
            v130 = v129 = selfCopy;
            v133 = objc_msgSend_recordChangeTag(v48, v131, v132);
            *buf = 138544130;
            v144 = v126;
            v145 = 2112;
            v146 = v130;
            v147 = 2112;
            v148 = v133;
            v149 = 2112;
            v150 = v49;
            _os_log_debug_impl(&dword_1883EA000, v123, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about saved record with ID %@ etag=%@: %@", buf, 0x2Au);

            v48 = v136;
            selfCopy = v129;
          }

          v95 = objc_msgSend_perRecordCompletionBlock(selfCopy, v100, v101);
          v95[2](v95, v48, v49);
        }

        goto LABEL_64;
      }

      v54 = objc_msgSend_savedRecords(selfCopy, v52, v53);
      objc_msgSend_addObject_(v54, v86, v48);
    }

    goto LABEL_45;
  }

  v56 = metadataCopy;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v57 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v144 = dCopy;
    _os_log_error_impl(&dword_1883EA000, v57, OS_LOG_TYPE_ERROR, "Received progress callback with nil record for recordID %@", buf, 0xCu);
  }

  v49 = v15;
  metadataCopy = v56;
LABEL_65:

  v112 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4
{
  v99 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  signatureCopy = signature;
  receiptCopy = receipt;
  assetKeyCopy = assetKey;
  clearAssetKeyCopy = clearAssetKey;
  referenceSignatureCopy = referenceSignature;
  v26 = objc_msgSend_recordsByRecordIDs(self, v24, v25);
  v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, dCopy);

  if (keyCopy && v28)
  {
    v89 = assetKeyCopy;
    v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, keyCopy);
    objc_opt_class();
    v88 = referenceSignatureCopy;
    if (objc_opt_isKindOfClass())
    {
      v30 = v30;
      v32 = 0;
      inited = v30;
      v34 = signatureCopy;
LABEL_5:
      if (inited)
      {
        objc_msgSend_setArrayIndex_(inited, v31, index);
        objc_msgSend_setSignature_(inited, v35, v34);
        objc_msgSend_setSize_(inited, v36, size);
        objc_msgSend_setPaddedFileSize_(inited, v37, fileSize);
        objc_msgSend_setUploaded_(inited, v38, uploaded);
        objc_msgSend_setUploadReceipt_(inited, v39, receiptCopy);
        objc_msgSend_setUploadReceiptExpiration_(inited, v40, v41, expiration);
        objc_msgSend_setWrappedAssetKey_(inited, v42, v89);
        objc_msgSend_setClearAssetKey_(inited, v43, clearAssetKeyCopy);
        objc_msgSend_setReferenceSignature_(inited, v44, v88);
        if (v32)
        {
          v47 = objc_msgSend_assetsByRecordIDAndRecordKey(self, v45, v46);
          v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, dCopy);

          if (!v49)
          {
            v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v53 = objc_msgSend_assetsByRecordIDAndRecordKey(self, v51, v52);
            objc_msgSend_setObject_forKeyedSubscript_(v53, v54, v49, dCopy);
          }

          v56 = objc_msgSend_objectForKeyedSubscript_(v49, v50, keyCopy, fileSize);
          if (!v56)
          {
            v57 = objc_alloc(MEMORY[0x1E695DF70]);
            v56 = objc_msgSend_initWithCapacity_(v57, v58, 2);
            objc_msgSend_setObject_forKeyedSubscript_(v49, v59, v56, keyCopy);
            objc_msgSend_setUploaded_(v32, v60, uploaded);
          }

          objc_msgSend_addObject_(v56, v55, inited);
          v63 = objc_msgSend_uploaded(v32, v61, v62);
          objc_msgSend_setUploaded_(v32, v64, v63 & uploaded);
        }
      }

      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = v30;
      v69 = v66;
      if (index < 0 || objc_msgSend_count(v66, v67, v68) <= index)
      {
        v34 = signatureCopy;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v76 = ck_log_facility_ck;
        v30 = v69;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v83 = v76;
          v86 = objc_msgSend_recordID(v28, v84, v85);
          *buf = 134218242;
          indexCopy2 = index;
          v95 = 2112;
          v96 = v86;
          _os_log_error_impl(&dword_1883EA000, v83, OS_LOG_TYPE_ERROR, "Invalid arrayIndex %ld for record %@", buf, 0x16u);

          v30 = v69;
        }
      }

      else
      {
        v30 = objc_msgSend_objectAtIndex_(v69, v70, index);

        objc_opt_class();
        v34 = signatureCopy;
        if (objc_opt_isKindOfClass())
        {
          v30 = v30;

          v32 = 0;
          inited = v30;
          goto LABEL_5;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v78 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v79 = v78;
          v82 = objc_msgSend_recordID(v28, v80, v81);
          *buf = 134218242;
          indexCopy2 = index;
          v95 = 2112;
          v96 = v82;
          _os_log_error_impl(&dword_1883EA000, v79, OS_LOG_TYPE_ERROR, "Invalid asset at arrayIndex %ld for record %@", buf, 0x16u);
        }
      }
    }

    else
    {
      objc_opt_class();
      v34 = signatureCopy;
      if (objc_opt_isKindOfClass())
      {
        v30 = v30;
        if (objc_msgSend_shouldOnlySaveAssetContent(self, v71, v72))
        {
          v73 = [CKAsset alloc];
          inited = objc_msgSend_initInternal(v73, v74, v75);
          v32 = v30;
          goto LABEL_5;
        }

        inited = 0;
        v32 = v30;
LABEL_30:

        referenceSignatureCopy = v88;
        assetKeyCopy = v89;
        goto LABEL_31;
      }
    }

    v32 = 0;
    inited = 0;
    goto LABEL_30;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v34 = signatureCopy;
  v65 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    indexCopy2 = v28;
    v95 = 2114;
    v96 = keyCopy;
    v97 = 2112;
    v98 = dCopy;
    _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Received upload completion callback with nil record %p or recordKey %{public}@ for recordID %@", buf, 0x20u);
  }

LABEL_31:

  v77 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v98 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifyRecordsOperation", "Finishing", buf, 2u);
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

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to modify some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_modifyRecordsCompletionBlock_wrapper(self, v7, v8);
  v32 = v29;
  if (v29)
  {
    v33 = _Block_copy(v29);
  }

  else
  {
    v34 = objc_msgSend_modifyRecordsCompletionBlock(self, v30, v31);
    v33 = _Block_copy(v34);
  }

  if (v33)
  {
    v37 = objc_msgSend_savedRecords(self, v35, v36);
    v40 = objc_msgSend_deletedRecordIDs(self, v38, v39);
    v43 = objc_msgSend_CKClientSuitableError(errorCopy, v41, v42);
    v33[2](v33, v37, v40, v43);

    objc_msgSend_setModifyRecordsCompletionBlock_(self, v44, 0);
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v48 = objc_msgSend_savedRecords(self, v46, v47);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v91, v97, 16);
  if (v50)
  {
    v53 = v50;
    v54 = *v92;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v92 != v54)
        {
          objc_enumerationMutation(v48);
        }

        v56 = objc_msgSend_recordID(*(*(&v91 + 1) + 8 * i), v51, v52);
        v59 = objc_msgSend_zoneID(v56, v57, v58);
        objc_msgSend_addObject_(v45, v60, v59);
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v91, v97, 16);
    }

    while (v53);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v63 = objc_msgSend_deletedRecordIDs(self, v61, v62);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v87, v96, 16);
  if (v65)
  {
    v68 = v65;
    v69 = *v88;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v88 != v69)
        {
          objc_enumerationMutation(v63);
        }

        v71 = objc_msgSend_zoneID(*(*(&v87 + 1) + 8 * j), v66, v67);
        objc_msgSend_addObject_(v45, v72, v71);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v87, v96, 16);
    }

    while (v68);
  }

  if (objc_msgSend_count(v45, v73, v74))
  {
    v76 = objc_msgSend_zoneIDsToZoneNamesString_(self, v75, v45);
    v79 = objc_msgSend_operationMetric(self, v77, v78);
    objc_msgSend_setObject_forKeyedSubscript_(v79, v80, v76, @"zoneNames");
  }

  objc_msgSend_setPerRecordProgressBlock_(self, v75, 0);
  objc_msgSend_setPerRecordCompletionBlock_(self, v81, 0);
  objc_msgSend_setPerRecordSaveBlock_(self, v82, 0);
  objc_msgSend_setPerRecordDeleteBlock_(self, v83, 0);
  objc_msgSend_setRecordsInFlightBlock_(self, v84, 0);
  v86.receiver = self;
  v86.super_class = CKModifyRecordsOperation;
  [(CKOperation *)&v86 _finishOnCallbackQueueWithError:errorCopy];

  v85 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifyRecordsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifyRecordsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-records", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  v4 = MEMORY[0x1E695DFD8];
  tweaksCopy = tweaks;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v6, v7, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v10, v9, sel_handleRecordIDsInFlight_reply_, 0, 0);

  v11 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v12, v11, sel_handleDeleteForRecordID_error_, 1, 0);

  v13 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v14, v13, sel_handleSaveForRecordID_recordMetadata_error_, 2, 0);

  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___CKModifyRecordsOperation;
  objc_msgSendSuper2(&v15, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
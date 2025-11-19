@interface CKFetchRecordZoneChangesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchRecordZoneChangesOperation)init;
- (CKFetchRecordZoneChangesOperation)initWithRecordZoneIDs:(NSArray *)recordZoneIDs configurationsByRecordZoneID:(NSDictionary *)configurationsByRecordZoneID;
- (CKFetchRecordZoneChangesOperation)initWithRecordZoneIDs:(NSArray *)recordZoneIDs optionsByRecordZoneID:(NSDictionary *)optionsByRecordZoneID;
- (NSDictionary)optionsByRecordZoneID;
- (id)activityCreate;
- (id)partialFailureForItemsInZone:(id)a3;
- (id)perRecordChangeCompletionBlock;
- (id)recordZoneChangesStatusByZoneID;
- (id)recordZoneIDsWithPendingArchivedRecords;
- (id)recordZoneIDsWithSyncObligations;
- (id)zoneAttributesChangedBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fetchRecordZoneChangesCompletionBlock;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleAttributesChangedForZone:(id)a3;
- (void)handleChangeForRecordID:(id)a3 record:(id)a4 error:(id)a5;
- (void)handleChangeSetCompletionForRecordZoneID:(id)a3 serverChangeToken:(id)a4 clientChangeTokenData:(id)a5 recordChangesStatus:(int64_t)a6 hasPendingArchivedRecords:(BOOL)a7 syncObligationZoneIDs:(id)a8 error:(id)a9 reply:(id)a10;
- (void)handleDeleteForRecordID:(id)a3 recordType:(id)a4;
- (void)performCKOperation;
- (void)recordChangedBlock;
- (void)recordWasChangedBlock;
- (void)recordWithIDWasDeletedBlock;
- (void)recordZoneChangeTokensUpdatedBlock;
- (void)recordZoneFetchCompletionBlock;
- (void)setErrorReportingStyle:(int64_t)a3;
- (void)setFetchRecordZoneChangesCompletionBlock:(void *)fetchRecordZoneChangesCompletionBlock;
- (void)setOptionsByRecordZoneID:(NSDictionary *)optionsByRecordZoneID;
- (void)setPerRecordChangeCompletionBlock:(id)a3;
- (void)setRecordChangedBlock:(void *)recordChangedBlock;
- (void)setRecordWasChangedBlock:(void *)recordWasChangedBlock;
- (void)setRecordWithIDWasDeletedBlock:(void *)recordWithIDWasDeletedBlock;
- (void)setRecordZoneChangeTokensUpdatedBlock:(void *)recordZoneChangeTokensUpdatedBlock;
- (void)setRecordZoneFetchCompletionBlock:(void *)recordZoneFetchCompletionBlock;
- (void)setRecordZoneFetchCompletionBlockIVar:(id)a3;
- (void)setZoneAttributesChangedBlock:(id)a3;
@end

@implementation CKFetchRecordZoneChangesOperation

- (CKFetchRecordZoneChangesOperation)init
{
  v12.receiver = self;
  v12.super_class = CKFetchRecordZoneChangesOperation;
  v2 = [(CKOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    statusByZoneID = v2->_statusByZoneID;
    v2->_statusByZoneID = v3;

    v5 = objc_opt_new();
    zoneIDsWithPendingArchivedRecords = v2->_zoneIDsWithPendingArchivedRecords;
    v2->_zoneIDsWithPendingArchivedRecords = v5;

    v7 = objc_opt_new();
    zoneIDsWithSyncObligations = v2->_zoneIDsWithSyncObligations;
    v2->_zoneIDsWithSyncObligations = v7;

    v9 = objc_opt_new();
    perItemErrors = v2->_perItemErrors;
    v2->_perItemErrors = v9;

    v2->_shouldFetchAssetContents = 1;
    v2->_fetchAllChanges = 1;
    v2->_errorReportingStyle = 1;
  }

  return v2;
}

- (CKFetchRecordZoneChangesOperation)initWithRecordZoneIDs:(NSArray *)recordZoneIDs configurationsByRecordZoneID:(NSDictionary *)configurationsByRecordZoneID
{
  v6 = recordZoneIDs;
  v7 = configurationsByRecordZoneID;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    v14 = v12->_recordZoneIDs;
    v12->_recordZoneIDs = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    v18 = v12->_configurationsByRecordZoneID;
    v12->_configurationsByRecordZoneID = v17;
  }

  return v12;
}

- (void)setRecordChangedBlock:(void *)recordChangedBlock
{
  v6 = recordChangedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885CC35C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordChangedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordChangedBlock;
    self->_recordChangedBlock = v9;
LABEL_9:
  }
}

- (void)recordChangedBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CC558;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordChangedBlock);
  }

  return v6;
}

- (void)setRecordWasChangedBlock:(void *)recordWasChangedBlock
{
  v6 = recordWasChangedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885CC6E8;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordWasChangedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordWasChangedBlock;
    self->_recordWasChangedBlock = v9;
LABEL_9:
  }
}

- (void)recordWasChangedBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CC8E4;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordWasChangedBlock);
  }

  return v6;
}

- (void)setZoneAttributesChangedBlock:(id)a3
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
    v12[2] = sub_1885CCA74;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    zoneAttributesChangedBlock = v13;
    goto LABEL_9;
  }

  if (self->_zoneAttributesChangedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    zoneAttributesChangedBlock = self->_zoneAttributesChangedBlock;
    self->_zoneAttributesChangedBlock = v9;
LABEL_9:
  }
}

- (id)zoneAttributesChangedBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CCC70;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_zoneAttributesChangedBlock);
  }

  return v6;
}

- (void)setPerRecordChangeCompletionBlock:(id)a3
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
    v12[2] = sub_1885CCE00;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    perRecordChangeCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordChangeCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    perRecordChangeCompletionBlock = self->_perRecordChangeCompletionBlock;
    self->_perRecordChangeCompletionBlock = v9;
LABEL_9:
  }
}

- (id)perRecordChangeCompletionBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CCFFC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordChangeCompletionBlock);
  }

  return v6;
}

- (void)setRecordWithIDWasDeletedBlock:(void *)recordWithIDWasDeletedBlock
{
  v6 = recordWithIDWasDeletedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885CD18C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordWithIDWasDeletedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordWithIDWasDeletedBlock;
    self->_recordWithIDWasDeletedBlock = v9;
LABEL_9:
  }
}

- (void)recordWithIDWasDeletedBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CD388;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordWithIDWasDeletedBlock);
  }

  return v6;
}

- (void)setRecordZoneChangeTokensUpdatedBlock:(void *)recordZoneChangeTokensUpdatedBlock
{
  v6 = recordZoneChangeTokensUpdatedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885CD518;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneChangeTokensUpdatedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_recordZoneChangeTokensUpdatedBlock;
    self->_recordZoneChangeTokensUpdatedBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneChangeTokensUpdatedBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CD714;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneChangeTokensUpdatedBlock);
  }

  return v6;
}

- (void)setRecordZoneFetchCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885CD8A4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    recordZoneFetchCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_recordZoneFetchCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    recordZoneFetchCompletionBlock = self->_recordZoneFetchCompletionBlock;
    self->_recordZoneFetchCompletionBlock = v9;
LABEL_9:
  }
}

- (void)recordZoneFetchCompletionBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CDAA0;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_recordZoneFetchCompletionBlock);
  }

  return v6;
}

- (void)setFetchRecordZoneChangesCompletionBlock:(void *)fetchRecordZoneChangesCompletionBlock
{
  v6 = fetchRecordZoneChangesCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885CDC30;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_fetchRecordZoneChangesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_fetchRecordZoneChangesCompletionBlock;
    self->_fetchRecordZoneChangesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchRecordZoneChangesCompletionBlock
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
    v13 = sub_1883EDB94;
    v14 = sub_1883EF64C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885CDE2C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchRecordZoneChangesCompletionBlock);
  }

  return v6;
}

- (void)setRecordZoneFetchCompletionBlock:(void *)recordZoneFetchCompletionBlock
{
  v4 = recordZoneFetchCompletionBlock == 0;
  v7 = recordZoneFetchCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setRecordZoneFetchCompletionBlockIVar_(self, v6, v7);
}

- (id)recordZoneChangesStatusByZoneID
{
  v3 = objc_msgSend_statusByZoneID(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (id)recordZoneIDsWithPendingArchivedRecords
{
  v3 = objc_msgSend_zoneIDsWithPendingArchivedRecords(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (id)recordZoneIDsWithSyncObligations
{
  v3 = objc_msgSend_zoneIDsWithSyncObligations(self, a2, v2);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

- (void)setErrorReportingStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 2);
    v7 = objc_opt_class();
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v8, a2, self, @"CKFetchRecordZoneChangesOperation.m", 121, @"%@ doesn't support error reporting style %lld", v7, 2);
  }

  self->_errorReportingStyle = a3;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_recordZoneIDs(self, v5, v6);
  objc_msgSend_setRecordZoneIDs_(v4, v8, v7);

  v11 = objc_msgSend_configurationsByRecordZoneID(self, v9, v10);
  objc_msgSend_setConfigurationsByRecordZoneID_(v4, v12, v11);

  AssetContents = objc_msgSend_shouldFetchAssetContents(self, v13, v14);
  if (v4)
  {
    *(v4 + 144) = AssetContents;
    v4[21] = objc_msgSend_changeTypesFromSetCallbacks(self, v16, v17);
  }

  else
  {
    objc_msgSend_changeTypesFromSetCallbacks(self, v16, v17);
  }

  AllChanges = objc_msgSend_fetchAllChanges(self, v18, v19);
  objc_msgSend_setFetchAllChanges_(v4, v21, AllChanges);
  v24 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(self, v22, v23);
  v25 = v24;
  if (v4)
  {
    objc_storeStrong(v4 + 22, v24);
  }

  v28 = objc_msgSend_supplementalChangeTokenByZoneID(self, v26, v27);
  objc_msgSend_setSupplementalChangeTokenByZoneID_(v4, v29, v28);

  v32 = objc_msgSend_errorReportingStyle(self, v30, v31);
  objc_msgSend_setErrorReportingStyle_(v4, v33, v32);
  v34.receiver = self;
  v34.super_class = CKFetchRecordZoneChangesOperation;
  [(CKDatabaseOperation *)&v34 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v33.receiver = self;
  v33.super_class = CKFetchRecordZoneChangesOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v33 fillFromOperationInfo:v4];
  v7 = objc_msgSend_recordZoneIDs(v4, v5, v6, v33.receiver, v33.super_class);
  objc_msgSend_setRecordZoneIDs_(self, v8, v7);

  v11 = objc_msgSend_configurationsByRecordZoneID(v4, v9, v10);
  objc_msgSend_setConfigurationsByRecordZoneID_(self, v12, v11);

  AssetContents = objc_msgSend_shouldFetchAssetContents(v4, v13, v14);
  objc_msgSend_setShouldFetchAssetContents_(self, v16, AssetContents);
  AllChanges = objc_msgSend_fetchAllChanges(v4, v17, v18);
  objc_msgSend_setFetchAllChanges_(self, v20, AllChanges);
  v23 = objc_msgSend_assetTransferOptionsByRecordTypeAndKey(v4, v21, v22);
  objc_msgSend_setAssetTransferOptionsByRecordTypeAndKey_(self, v24, v23);

  v27 = objc_msgSend_supplementalChangeTokenByZoneID(v4, v25, v26);
  objc_msgSend_setSupplementalChangeTokenByZoneID_(self, v28, v27);

  v31 = objc_msgSend_errorReportingStyle(v4, v29, v30);
  objc_msgSend_setErrorReportingStyle_(self, v32, v31);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v26.receiver = self;
  v26.super_class = CKFetchRecordZoneChangesOperation;
  if ([(CKOperation *)&v26 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_recordChangedBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_recordWasChangedBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v14 = objc_msgSend_perRecordChangeCompletionBlock(self, v9, v10);
      if (v14)
      {
        v5 = 1;
      }

      else
      {
        v17 = objc_msgSend_recordWithIDWasDeletedBlock(self, v12, v13);
        if (v17)
        {
          v5 = 1;
        }

        else
        {
          v20 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v15, v16);
          if (v20)
          {
            v5 = 1;
          }

          else
          {
            v23 = objc_msgSend_recordZoneFetchCompletionBlock(self, v18, v19);
            if (v23)
            {
              v5 = 1;
            }

            else
            {
              v24 = objc_msgSend_fetchRecordZoneChangesCompletionBlock(self, v21, v22);
              v5 = v24 != 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_recordZoneIDs(self, a2, a3);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = objc_msgSend_recordZoneIDs(self, v9, v10);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v25;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v11);
          }

          if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v14, *(*(&v24 + 1) + 8 * v17), a3))
          {

            goto LABEL_14;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v23.receiver = self;
    v23.super_class = CKFetchRecordZoneChangesOperation;
    result = [(CKDatabaseOperation *)&v23 CKOperationShouldRun:a3];
  }

  else
  {
    if (a3)
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"You must pass at least one zone ID to %@", v20);
    }

LABEL_14:
    result = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performCKOperation
{
  v33 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v8 = objc_msgSend_recordZoneIDs(self, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);
    v14 = objc_msgSend_recordZoneIDs(self, v12, v13);
    if (objc_msgSend_count(v14, v15, v16) == 1)
    {
      v19 = &stru_1EFA32970;
    }

    else
    {
      v19 = @"s";
    }

    if (objc_msgSend_fetchAllChanges(self, v17, v18))
    {
      v22 = &stru_1EFA32970;
    }

    else
    {
      v22 = @" NOT";
    }

    v23 = objc_msgSend_configurationsByRecordZoneID(self, v20, v21);
    *buf = 134218754;
    v26 = v11;
    v27 = 2114;
    v28 = v19;
    v29 = 2114;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching changes from the server for %lu zone%{public}@. Will%{public}@ fetch all changes. Options by zone:\n%@", buf, 0x2Au);
  }

  v24.receiver = self;
  v24.super_class = CKFetchRecordZoneChangesOperation;
  [(CKOperation *)&v24 performCKOperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeForRecordID:(id)a3 record:(id)a4 error:(id)a5
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 3221225472;
  v98[2] = sub_1885CEF14;
  v98[3] = &unk_1E70BEBB0;
  v98[4] = self;
  objc_msgSend_countMergeableValueMetrics_(v9, v13, v98);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v15 = signpost;

  if (v12)
  {
    if (!v15)
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
    v100 = v8;
    v101 = 2112;
    v102 = v12;
    v26 = "Record %@ changed with error: %@";
    v27 = v20;
    v28 = v25;
    v29 = 22;
    goto LABEL_20;
  }

  if (!v15)
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
    v100 = v8;
    v26 = "Record %@ changed";
    v27 = v20;
    v28 = v38;
    v29 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v27, OS_SIGNPOST_EVENT, v28, "CKFetchRecordZoneChangesOperation", v26, buf, v29);
  }

LABEL_21:

LABEL_22:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v39 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v76 = v39;
    v79 = objc_msgSend_operationID(self, v77, v78);
    if (objc_msgSend_isMergeableValueDeltaRecord(v9, v80, v81))
    {
      v84 = @"mergeable delta partial ";
    }

    else
    {
      v84 = &stru_1EFA32970;
    }

    v85 = objc_msgSend_recordChangeTag(v9, v82, v83);
    *buf = 138544386;
    v100 = v79;
    v101 = 2112;
    v102 = v84;
    v103 = 2112;
    v104 = v8;
    v105 = 2112;
    v106 = v85;
    v107 = 2112;
    v108 = v12;
    _os_log_debug_impl(&dword_1883EA000, v76, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a changed %@record with id %@ etag=%@, error %@", buf, 0x34u);

    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else if (!v12)
  {
    goto LABEL_31;
  }

  if ((objc_msgSend_canDropItemResultsEarly(self, v40, v41) & 1) == 0)
  {
    v44 = objc_msgSend_perItemErrors(self, v42, v43);
    objc_msgSend_setObject_forKeyedSubscript_(v44, v45, v12, v8);
  }

  if (objc_msgSend_CKHasTopLevelUnderlyingError(v12, v42, v43))
  {
    v48 = objc_msgSend_perItemErrors(self, v46, v47);
    v51 = objc_msgSend_zoneID(v8, v49, v50);
    objc_msgSend_setObject_forKeyedSubscript_(v48, v52, v12, v51);
  }

  v9 = 0;
LABEL_31:
  v53 = objc_msgSend_recordWasChangedBlock_wrapper(self, v40, v41);
  v56 = v53;
  if (v53)
  {
    v57 = _Block_copy(v53);
  }

  else
  {
    v58 = objc_msgSend_recordWasChangedBlock(self, v54, v55);
    v57 = _Block_copy(v58);
  }

  if (v57)
  {
    v57[2](v57, v8, v9, v12);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v61 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
LABEL_51:
      v72 = v61;
      v75 = objc_msgSend_operationID(self, v73, v74);
      *buf = 138543618;
      v100 = v75;
      v101 = 2112;
      v102 = v8;
      _os_log_debug_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEBUG, "Progress callback for operation %{public}@ recordID %@ is done", buf, 0x16u);
LABEL_52:
    }
  }

  else
  {
    v64 = objc_msgSend_perRecordChangeCompletionBlock(self, v59, v60);

    if (v64)
    {
      v67 = objc_msgSend_perRecordChangeCompletionBlock(self, v65, v66);
      (v67)[2](v67, v9, v8, v12);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v61 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v68 = objc_msgSend_recordChangedBlock(self, v65, v66);

      if (v68)
      {
        if (!v12 && v9)
        {
          v71 = objc_msgSend_recordChangedBlock(self, v69, v70);
          (v71)[2](v71, v9);
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v61 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v86 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          v72 = v86;
          v75 = objc_msgSend_operationID(self, v93, v94);
          v97 = objc_msgSend_recordID(v9, v95, v96);
          *buf = 138543618;
          v100 = v75;
          v101 = 2112;
          v102 = v97;
          _os_log_debug_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received a changed record (%@), but no recordWasChangedBlock or recordChangedBlock has been set.", buf, 0x16u);

          goto LABEL_52;
        }
      }
    }
  }

  v87 = objc_msgSend_configuration(self, v62, v63);
  v90 = objc_msgSend_container(v87, v88, v89);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v90, v91, v8, 1, v9, v12);

  v92 = *MEMORY[0x1E69E9840];
}

- (void)handleDeleteForRecordID:(id)a3 recordType:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
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
      *v50 = 138412290;
      *&v50[4] = v6;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKFetchRecordZoneChangesOperation", "Record %@ deleted", v50, 0xCu);
    }
  }

  v22 = objc_msgSend_recordWithIDWasDeletedBlock_wrapper(self, v10, v11);
  v25 = v22;
  if (v22)
  {
    v26 = _Block_copy(v22);
  }

  else
  {
    v27 = objc_msgSend_recordWithIDWasDeletedBlock(self, v23, v24);
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
      v44 = v28;
      v47 = objc_msgSend_operationID(self, v45, v46);
      *v50 = 138543618;
      *&v50[4] = v47;
      *&v50[12] = 2112;
      *&v50[14] = v6;
      _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a deleted record with id %@", v50, 0x16u);
    }

    v26[2](v26, v6, v7);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v32 = v29;
      v35 = objc_msgSend_operationID(self, v33, v34);
      *v50 = 138543618;
      *&v50[4] = v35;
      *&v50[12] = 2112;
      *&v50[14] = v6;
      v36 = "Progress callback for operation %{public}@ recordID %@ is done";
LABEL_29:
      _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, v36, v50, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v37 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v32 = v37;
      v35 = objc_msgSend_operationID(self, v48, v49);
      *v50 = 138543618;
      *&v50[4] = v35;
      *&v50[12] = 2112;
      *&v50[14] = v6;
      v36 = "Operation %{public}@ received a deleted record (%@), but no recordWithIDWasDeletedBlock has been set.";
      goto LABEL_29;
    }
  }

  v38 = objc_msgSend_configuration(self, v30, v31, *v50, *&v50[16], v51);
  v41 = objc_msgSend_container(v38, v39, v40);
  objc_msgSend_handleRecordChanged_changeType_record_error_(v41, v42, v6, 3, 0, 0);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)handleAttributesChangedForZone:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
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
      v21 = objc_msgSend_zoneID(v4, v19, v20);
      *v58 = 138412290;
      *&v58[4] = v21;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordZoneChangesOperation", "Zone %@ attributes changed", v58, 0xCu);
    }
  }

  v22 = objc_msgSend_zoneAttributesChangedBlock_wrapper(self, v7, v8);
  v25 = v22;
  if (v22)
  {
    v26 = _Block_copy(v22);
  }

  else
  {
    v27 = objc_msgSend_zoneAttributesChangedBlock(self, v23, v24);
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
      v47 = v28;
      v50 = objc_msgSend_operationID(self, v48, v49);
      v53 = objc_msgSend_zoneID(v4, v51, v52);
      *v58 = 138543618;
      *&v58[4] = v50;
      *&v58[12] = 2112;
      *&v58[14] = v53;
      _os_log_debug_impl(&dword_1883EA000, v47, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about zone attributes changed for zone with ID %@", v58, 0x16u);
    }

    v26[2](v26, v4);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v29 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v32 = v29;
      v35 = objc_msgSend_operationID(self, v33, v34);
      v38 = objc_msgSend_zoneID(v4, v36, v37);
      *v58 = 138543618;
      *&v58[4] = v35;
      *&v58[12] = 2112;
      *&v58[14] = v38;
      v39 = "Progress callback for zone attributes changed operation %{public}@ zoneID %@ is done";
LABEL_29:
      _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, v39, v58, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v40 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v32 = v40;
      v35 = objc_msgSend_operationID(self, v54, v55);
      v38 = objc_msgSend_zoneID(v4, v56, v57);
      *v58 = 138543618;
      *&v58[4] = v35;
      *&v58[12] = 2112;
      *&v58[14] = v38;
      v39 = "Operation %{public}@ received a zone attributes change (%@), but no zoneAttributesChangedBlock has been set.";
      goto LABEL_29;
    }
  }

  v41 = objc_msgSend_configuration(self, v30, v31, *v58, *&v58[16], v59);
  v44 = objc_msgSend_container(v41, v42, v43);
  objc_msgSend_handleAttributesChangedForZone_(v44, v45, v4);

  v46 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeSetCompletionForRecordZoneID:(id)a3 serverChangeToken:(id)a4 clientChangeTokenData:(id)a5 recordChangesStatus:(int64_t)a6 hasPendingArchivedRecords:(BOOL)a7 syncObligationZoneIDs:(id)a8 error:(id)a9 reply:(id)a10
{
  v11 = a7;
  v123 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v108 = a4;
  v109 = a5;
  v16 = a8;
  v17 = a10;
  v22 = objc_msgSend_CKClientSuitableError(a9, v18, v19);
  if (v22)
  {
    v23 = objc_msgSend_perItemErrors(self, v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v24, v22, v15);
  }

  if (a6 != -1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v89 = v25;
      v92 = objc_msgSend_operationID(self, v90, v91);
      *buf = 138543874;
      v112 = v92;
      v113 = 2048;
      v114 = a6;
      v115 = 2112;
      v116 = v15;
      _os_log_debug_impl(&dword_1883EA000, v89, OS_LOG_TYPE_DEBUG, "Operation %{public}@ updating recordChangesStatus to %ld for record zone %@", buf, 0x20u);
    }

    v27 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v26, a6);
    v30 = objc_msgSend_statusByZoneID(self, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v30, v31, v27, v15);
  }

  if (v11)
  {
    v32 = objc_msgSend_zoneIDsWithPendingArchivedRecords(self, v20, v21);
    objc_msgSend_addObject_(v32, v33, v15);
  }

  if (objc_msgSend_count(v16, v20, v21))
  {
    v36 = objc_msgSend_zoneIDsWithSyncObligations(self, v34, v35);
    objc_msgSend_unionSet_(v36, v37, v16);
  }

  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v39 = signpost;

  if (v39)
  {
    if (self)
    {
      v42 = self->super.super._signpost;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;
    v46 = objc_msgSend_log(v43, v44, v45);

    if (self)
    {
      v47 = self->super.super._signpost;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;
    v51 = objc_msgSend_identifier(v48, v49, v50);

    if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v46, OS_SIGNPOST_EVENT, v51, "CKFetchRecordZoneChangesOperation", "Progress callback", buf, 2u);
    }
  }

  AllChanges = objc_msgSend_fetchAllChanges(self, v40, v41);
  if (v22 || a6 == 3 || !AllChanges)
  {
    v54 = v108;
    if (v22)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v63 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v97 = v63;
        v100 = objc_msgSend_operationID(self, v98, v99);
        *buf = 138544386;
        v112 = v100;
        v113 = 2114;
        v114 = v108;
        v115 = 2114;
        v116 = v109;
        v117 = 2112;
        v118 = v15;
        v119 = 2112;
        v120 = v22;
        _os_log_debug_impl(&dword_1883EA000, v97, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about per-zone completion with server change token %{public}@, client change token data %{public}@ for zoneID %@. Error was: %@", buf, 0x34u);
      }

      v66 = objc_msgSend_recordZoneFetchCompletionBlock_wrapper(self, v64, v65);
      v69 = v66;
      if (v66)
      {
        v62 = _Block_copy(v66);
      }

      else
      {
        v81 = objc_msgSend_recordZoneFetchCompletionBlock(self, v67, v68);
        v62 = _Block_copy(v81);
      }

      v55 = v109;
      if (v62)
      {
        (v62->data)(v62, v15, 0, 0, 0, v22);
      }
    }

    else
    {
      v70 = objc_msgSend_partialFailureForItemsInZone_(self, v53, v15);
      v62 = objc_msgSend_CKClientSuitableError(v70, v71, v72);

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v73 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v101 = v73;
        v104 = objc_msgSend_operationID(self, v102, v103);
        *buf = 138544642;
        v105 = @" Error was: ";
        v112 = v104;
        v106 = &stru_1EFA32970;
        v113 = 2112;
        if (!v62)
        {
          v105 = &stru_1EFA32970;
        }

        v114 = v108;
        if (v62)
        {
          v106 = v62;
        }

        v115 = 2114;
        v116 = v109;
        v117 = 2112;
        v118 = v15;
        v119 = 2114;
        v120 = v105;
        v121 = 2112;
        v122 = v106;
        _os_log_debug_impl(&dword_1883EA000, v101, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about per-zone completion with server change token %@, client change token data %{public}@ for zoneID %@.%{public}@%@", buf, 0x3Eu);
      }

      v76 = objc_msgSend_recordZoneFetchCompletionBlock_wrapper(self, v74, v75, v16);
      v79 = v76;
      if (v76)
      {
        v80 = _Block_copy(v76);
      }

      else
      {
        v82 = objc_msgSend_recordZoneFetchCompletionBlock(self, v77, v78);
        v80 = _Block_copy(v82);

        v54 = v108;
      }

      if (v80)
      {
        (v80)[2](v80, v15, v54, v109, a6 != 3, v62);
      }

      v55 = v109;
      v16 = v107;
    }

    goto LABEL_52;
  }

  v54 = v108;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v55 = v109;
  v56 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v93 = v56;
    v96 = objc_msgSend_operationID(self, v94, v95);
    *buf = 138544130;
    v112 = v96;
    v113 = 2114;
    v114 = v108;
    v115 = 2114;
    v116 = v109;
    v117 = 2112;
    v118 = v15;
    _os_log_debug_impl(&dword_1883EA000, v93, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about a server change token %{public}@, client change token data %{public}@ for zoneID %@", buf, 0x2Au);

    v55 = v109;
  }

  v59 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v57, v58);

  if (v59)
  {
    v62 = objc_msgSend_recordZoneChangeTokensUpdatedBlock(self, v60, v61);
    (v62->data)(v62, v15, v108, v55);
LABEL_52:
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v83 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v85 = v83;
    v88 = objc_msgSend_operationID(self, v86, v87);
    *buf = 138543618;
    v112 = v88;
    v113 = 2112;
    v114 = v15;
    _os_log_debug_impl(&dword_1883EA000, v85, OS_LOG_TYPE_DEBUG, "Progress callback for operation %{public}@ zoneID %@ is done", buf, 0x16u);

    v54 = v108;
  }

  v17[2](v17, 0);

  v84 = *MEMORY[0x1E69E9840];
}

- (id)partialFailureForItemsInZone:(id)a3
{
  v6 = a3;
  if (v6 && (objc_msgSend_perItemErrors(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend_count(v7, v8, v9), v7, v10))
  {
    v13 = objc_msgSend_perItemErrors(self, v11, v12);
    v16 = objc_msgSend_allKeys(v13, v14, v15);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1885D00C0;
    v29[3] = &unk_1E70BEBD8;
    v17 = v6;
    v30 = v17;
    v31 = self;
    v19 = objc_msgSend_CKCompactMapToDictionary_(v16, v18, v29);

    if (objc_msgSend_count(v19, v20, v21))
    {
      v24 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v19, @"CKPartialErrors");
      v27 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v26, @"CKInternalErrorDomain", 1011, v24, @"Couldn't fetch some items when fetching changes in zone %@", v17);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchRecordZoneChangesOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_perItemErrors(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_perItemErrors(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Couldn't fetch some items when fetching changes");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = objc_msgSend_fetchRecordZoneChangesCompletionBlock_wrapper(self, v7, v8);
  v32 = v29;
  if (v29)
  {
    v33 = _Block_copy(v29);
  }

  else
  {
    v34 = objc_msgSend_fetchRecordZoneChangesCompletionBlock(self, v30, v31);
    v33 = _Block_copy(v34);
  }

  if (v33)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v92 = objc_msgSend_operationID(self, v36, v37);
      v93 = &stru_1EFA32970;
      if (v4)
      {
        v94 = @" Error was: ";
      }

      else
      {
        v94 = &stru_1EFA32970;
      }

      if (v4)
      {
        v93 = objc_msgSend_CKClientSuitableError(v4, v90, v91);
      }

      *buf = 138543874;
      v102 = v92;
      v103 = 2114;
      v104 = v94;
      v105 = 2112;
      v106 = v93;
      _os_log_debug_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed. %{public}@%@", buf, 0x20u);
      if (v4)
      {
      }
    }

    v40 = objc_msgSend_CKClientSuitableError(v4, v38, v39);
    v33[2](v33, v40);

    objc_msgSend_setFetchRecordZoneChangesCompletionBlock_(self, v41, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v43 = ck_log_facility_ck;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v97 = objc_msgSend_operationID(self, v44, v45);
      v98 = &stru_1EFA32970;
      if (v4)
      {
        v99 = @" Error was: ";
      }

      else
      {
        v99 = &stru_1EFA32970;
      }

      if (v4)
      {
        v98 = objc_msgSend_CKClientSuitableError(v4, v95, v96);
      }

      *buf = 138543874;
      v102 = v97;
      v103 = 2114;
      v104 = v99;
      v105 = 2112;
      v106 = v98;
      _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no fetchRecordZoneChangesCompletionBlock was set.%{public}@%@", buf, 0x20u);
      if (v4)
      {
      }
    }
  }

  objc_msgSend_setRecordChangedBlock_(self, v42, 0);
  objc_msgSend_setRecordWasChangedBlock_(self, v46, 0);
  objc_msgSend_setRecordWithIDWasDeletedBlock_(self, v47, 0);
  objc_msgSend_setRecordZoneChangeTokensUpdatedBlock_(self, v48, 0);
  objc_msgSend_setRecordZoneFetchCompletionBlock_(self, v49, 0);
  objc_msgSend_setPerRecordChangeCompletionBlock_(self, v50, 0);
  if (self)
  {
    mergeableValueCount = self->_mergeableValueCount;
    if (mergeableValueCount)
    {
      v54 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, mergeableValueCount);
      v57 = objc_msgSend_operationMetric(self, v55, v56);
      objc_msgSend_setObject_forKeyedSubscript_(v57, v58, v54, @"mergeable_valueCount");
    }

    mergeableDeltaCount = self->_mergeableDeltaCount;
    if (mergeableDeltaCount)
    {
      v60 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, mergeableDeltaCount);
      v63 = objc_msgSend_operationMetric(self, v61, v62);
      objc_msgSend_setObject_forKeyedSubscript_(v63, v64, v60, @"mergeable_fetchedDeltaCount");
    }

    assetBackedMergeableDeltaCount = self->_assetBackedMergeableDeltaCount;
    if (assetBackedMergeableDeltaCount)
    {
      v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v51, assetBackedMergeableDeltaCount);
      v68 = objc_msgSend_operationMetric(self, v66, v67);
      objc_msgSend_setObject_forKeyedSubscript_(v68, v69, v65, @"mergeable_assetCount");
    }
  }

  v70 = objc_msgSend_recordZoneIDs(self, v51, assetBackedMergeableDeltaCount);
  v73 = objc_msgSend_count(v70, v71, v72);

  if (v73)
  {
    v76 = MEMORY[0x1E695DFA8];
    v77 = MEMORY[0x1E695DEC8];
    v78 = objc_msgSend_recordZoneIDs(self, v74, v75);
    v80 = objc_msgSend_arrayWithObjects_(v77, v79, v78, 0);
    v82 = objc_msgSend_setWithArray_(v76, v81, v80);

    v84 = objc_msgSend_zoneIDsToZoneNamesString_(self, v83, v82);
    v87 = objc_msgSend_operationMetric(self, v85, v86);
    objc_msgSend_setObject_forKeyedSubscript_(v87, v88, v84, @"zoneNames");
  }

  v100.receiver = self;
  v100.super_class = CKFetchRecordZoneChangesOperation;
  [(CKOperation *)&v100 _finishOnCallbackQueueWithError:v4];

  v89 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchRecordZoneChangesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchRecordZoneChangesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-record-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleChangeForRecordID_record_error_, 2, 0);

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v12, v11, sel_handleChangeSetCompletionForRecordZoneID_serverChangeToken_clientChangeTokenData_recordChangesStatus_hasPendingArchivedRecords_syncObligationZoneIDs_error_reply_, 5, 0);

  v13 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v14, v13, sel_handleChangeSetCompletionForRecordZoneID_serverChangeToken_clientChangeTokenData_recordChangesStatus_hasPendingArchivedRecords_syncObligationZoneIDs_error_reply_, 6, 0);

  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___CKFetchRecordZoneChangesOperation;
  objc_msgSendSuper2(&v15, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

- (CKFetchRecordZoneChangesOperation)initWithRecordZoneIDs:(NSArray *)recordZoneIDs optionsByRecordZoneID:(NSDictionary *)optionsByRecordZoneID
{
  v6 = optionsByRecordZoneID;
  v7 = recordZoneIDs;
  v10 = objc_msgSend_allKeys(v6, v8, v9);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1885D1694;
  v17[3] = &unk_1E70BEC00;
  v18 = v6;
  v11 = v6;
  v13 = objc_msgSend_CKMapToDictionary_(v10, v12, v17);

  v15 = objc_msgSend_initWithRecordZoneIDs_configurationsByRecordZoneID_(self, v14, v7, v13);
  return v15;
}

- (NSDictionary)optionsByRecordZoneID
{
  v4 = objc_msgSend_configurationsByRecordZoneID(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_configurationsByRecordZoneID(self, v5, v6);
    v10 = objc_msgSend_allKeys(v7, v8, v9);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1885D17FC;
    v14[3] = &unk_1E70BEC00;
    v14[4] = self;
    v12 = objc_msgSend_CKMapToDictionary_(v10, v11, v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setOptionsByRecordZoneID:(NSDictionary *)optionsByRecordZoneID
{
  if (optionsByRecordZoneID)
  {
    v5 = objc_msgSend_CKMapValues_(optionsByRecordZoneID, a2, &unk_1EFA2F4C8);
    objc_msgSend_setConfigurationsByRecordZoneID_(self, v4, v5);
  }

  else
  {

    objc_msgSend_setConfigurationsByRecordZoneID_(self, a2, 0);
  }
}

@end
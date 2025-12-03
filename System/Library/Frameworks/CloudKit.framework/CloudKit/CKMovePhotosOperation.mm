@interface CKMovePhotosOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKMovePhotosOperation)init;
- (CKMovePhotosOperation)initWithMoveChanges:(id)changes sourceDatabase:(id)database;
- (id)activityCreate;
- (id)movePhotosCompletionBlock;
- (id)perRecordMoveBlock;
- (id)perRecordProgressBlock;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_trackAssetsToUpload;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleDeleteForRecordID:(id)d error:(id)error;
- (void)handleMoveForSourceRecordID:(id)d destinationMetadata:(id)metadata moveMarkerMetadata:(id)markerMetadata error:(id)error;
- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress;
- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4;
- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error;
- (void)performCKOperation;
- (void)setMovePhotosCompletionBlock:(id)block;
- (void)setPerRecordMoveBlock:(id)block;
- (void)setPerRecordProgressBlock:(id)block;
@end

@implementation CKMovePhotosOperation

- (CKMovePhotosOperation)init
{
  v6.receiver = self;
  v6.super_class = CKMovePhotosOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordErrorsBySourceRecordID = v2->_recordErrorsBySourceRecordID;
    v2->_recordErrorsBySourceRecordID = v3;
  }

  return v2;
}

- (CKMovePhotosOperation)initWithMoveChanges:(id)changes sourceDatabase:(id)database
{
  changesCopy = changes;
  databaseCopy = database;
  v11 = objc_msgSend_init(self, v9, v10);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 528), changes);
    objc_storeStrong(&v12->_sourceDatabase, database);
  }

  return v12;
}

- (void)setPerRecordProgressBlock:(id)block
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
    v12[2] = sub_1885DFB04;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perRecordProgressBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordProgressBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perRecordProgressBlock = self->_perRecordProgressBlock;
    self->_perRecordProgressBlock = v9;
LABEL_9:
  }
}

- (id)perRecordProgressBlock
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
    v13 = sub_1883EDC70;
    v14 = sub_1883EF674;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885DFD00;
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

- (void)setPerRecordMoveBlock:(id)block
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
    v12[2] = sub_1885DFE90;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perRecordMoveBlock = v13;
    goto LABEL_9;
  }

  if (self->_perRecordMoveBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perRecordMoveBlock = self->_perRecordMoveBlock;
    self->_perRecordMoveBlock = v9;
LABEL_9:
  }
}

- (id)perRecordMoveBlock
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
    v13 = sub_1883EDC70;
    v14 = sub_1883EF674;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E008C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perRecordMoveBlock);
  }

  return v6;
}

- (void)setMovePhotosCompletionBlock:(id)block
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
    v12[2] = sub_1885E021C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    movePhotosCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_movePhotosCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    movePhotosCompletionBlock = self->_movePhotosCompletionBlock;
    self->_movePhotosCompletionBlock = v9;
LABEL_9:
  }
}

- (id)movePhotosCompletionBlock
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
    v13 = sub_1883EDC70;
    v14 = sub_1883EF674;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E0418;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_movePhotosCompletionBlock);
  }

  return v6;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/move-photos", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fillOutOperationInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = CKMovePhotosOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:infoCopy];
  v7 = objc_msgSend_moveChanges(self, v5, v6, v17.receiver, v17.super_class);
  objc_msgSend_setMoveChanges_(infoCopy, v8, v7);

  v11 = objc_msgSend_sourceDatabase(self, v9, v10);
  v14 = objc_msgSend_scope(v11, v12, v13);
  objc_msgSend_setSourceDatabaseScope_(infoCopy, v15, v14);

  objc_msgSend_setAlwaysFetchPCSFromServer_(infoCopy, v16, 1);
}

- (void)fillFromOperationInfo:(id)info
{
  v21.receiver = self;
  v21.super_class = CKMovePhotosOperation;
  infoCopy = info;
  [(CKDatabaseOperation *)&v21 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_moveChanges(infoCopy, v5, v6, v21.receiver, v21.super_class);
  objc_msgSend_setMoveChanges_(self, v8, v7);

  v11 = objc_msgSend_configuration(self, v9, v10);
  v14 = objc_msgSend_container(v11, v12, v13);
  v17 = objc_msgSend_sourceDatabaseScope(infoCopy, v15, v16);

  v19 = objc_msgSend_databaseWithDatabaseScope_(v14, v18, v17);
  objc_msgSend_setSourceDatabase_(self, v20, v19);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKMovePhotosOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
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
    v11 = objc_msgSend_perRecordMoveBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_movePhotosCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_moveChanges(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (!v8)
  {
    goto LABEL_45;
  }

  v11 = objc_msgSend_sourceDatabase(self, v9, v10);

  if (!v11)
  {
    if (run)
    {
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v73, @"CKErrorDomain", 12, @"You must specify a sourceDatabase on %@", v72);
    }

    LOBYTE(v8) = 0;
    goto LABEL_45;
  }

  v94 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = objc_msgSend_moveChanges(self, v12, v13);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v97, v102, 16);
  if (!v15)
  {
    goto LABEL_18;
  }

  v18 = v15;
  v19 = *v98;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v98 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = objc_msgSend_destinationRecord(*(*(&v97 + 1) + 8 * i), v16, v17);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!run)
        {
          goto LABEL_42;
        }

        v84 = @"Unexpected record in property destinationRecords passed to %@: %@";
LABEL_33:
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v87, @"CKErrorDomain", 12, v84, v86, v21);

        goto LABEL_42;
      }

      v24 = objc_msgSend_recordID(v21, v22, v23);
      v27 = objc_msgSend_zoneID(v24, v25, v26);
      v29 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v28, v27, run);

      if (!v29)
      {
        goto LABEL_42;
      }

      if (objc_msgSend_containsIndexedKeys(v21, v30, v31))
      {
        if (!run)
        {
          goto LABEL_42;
        }

        v84 = @"Moved records must not have array-indexed keys %@: %@";
        goto LABEL_33;
      }

      if (objc_msgSend_containsPackageValues(v21, v32, v33))
      {
        if (!run)
        {
          goto LABEL_42;
        }

        v84 = @"Moved records must not have packages %@: %@";
        goto LABEL_33;
      }

      v36 = objc_msgSend_valueStore(v21, v34, v35);
      v101 = objc_opt_class();
      v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, &v101, 1);
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = sub_1885E0CB8;
      v96[3] = &unk_1E70BECB8;
      v96[4] = self;
      v40 = objc_msgSend_containsValueOfClasses_passingTest_(v36, v39, v38, v96);

      if (v40)
      {
        if (run)
        {
          v88 = objc_msgSend_recordID(v21, v41, v42);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v89, @"CKErrorDomain", 12, @"Invalid CKAssetReference on record %@", v88);
          *run = LABEL_39:;
        }

LABEL_42:

        goto LABEL_43;
      }

      v43 = objc_msgSend_recordType(v21, v41, v42);
      if (objc_msgSend_isEqualToString_(v43, v44, @"cloudkit.share"))
      {

LABEL_37:
        if (run)
        {
          v88 = objc_msgSend_recordID(v21, v48, v49);
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v90, @"CKErrorDomain", 12, @"You may not move shares or shared records %@", v88);
          goto LABEL_39;
        }

        goto LABEL_42;
      }

      v47 = objc_msgSend_share(v21, v45, v46);

      if (v47)
      {
        goto LABEL_37;
      }

      v50 = objc_msgSend_recordID(v21, v48, v49);
      v52 = objc_msgSend_containsObject_(v94, v51, v50);

      if (v52)
      {
        if (run)
        {
          *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v53, @"CKErrorDomain", 12, @"You can't move the same record twice: %@", v21);
        }

        goto LABEL_42;
      }

      v55 = objc_msgSend_recordID(v21, v53, v54);
      objc_msgSend_addObject_(v94, v56, v55);
    }

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v97, v102, 16);
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v59 = objc_msgSend_configuration(self, v57, v58);
  v62 = objc_msgSend_container(v59, v60, v61);
  v65 = objc_msgSend_options(v62, v63, v64);
  if (objc_msgSend_bypassPCSEncryption(v65, v66, v67))
  {

LABEL_24:
    if (run)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v70, @"CKErrorDomain", 12, @"This container has requested no encryption but encryption is required when moving records");
      *run = LOBYTE(v8) = 0;
    }

    else
    {
LABEL_43:
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    v74 = objc_msgSend_configuration(self, v68, v69);
    v77 = objc_msgSend_container(v74, v75, v76);
    v80 = objc_msgSend_options(v77, v78, v79);
    OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v80, v81, v82);

    if (OnlyManatee)
    {
      goto LABEL_24;
    }

    v95.receiver = self;
    v95.super_class = CKMovePhotosOperation;
    LOBYTE(v8) = [(CKDatabaseOperation *)&v95 CKOperationShouldRun:run];
  }

LABEL_45:
  v91 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_trackAssetsToUpload
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  obj = objc_msgSend_moveChanges(self, v4, v5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v32, v37, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v33;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = objc_msgSend_destinationRecord(*(*(&v32 + 1) + 8 * v12), v8, v9);
        v16 = objc_msgSend_valueStore(v13, v14, v15);
        v36 = objc_opt_class();
        v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, &v36, 1);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_1885E1030;
        v30[3] = &unk_1E70BED00;
        v31 = v3;
        objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v16, v19, v18, v30);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v37, 16);
    }

    while (v10);
  }

  v22 = objc_msgSend_deviceContext(selfCopy, v20, v21);
  v25 = objc_msgSend_deviceScopedStateManager(v22, v23, v24);
  objc_msgSend_trackAssets_(v25, v26, v3);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)performCKOperation
{
  v4 = objc_msgSend_moveChanges(self, a2, v2);
  v6 = objc_msgSend_CKMapToDictionary_(v4, v5, &unk_1EFA2F508);
  objc_msgSend_setMoveChangesBySourceRecordID_(self, v7, v6);

  v10 = objc_msgSend_moveChanges(self, v8, v9);
  v12 = objc_msgSend_CKMapToDictionary_(v10, v11, &unk_1EFA2F528);
  objc_msgSend_setMoveChangesByDestinationRecordID_(self, v13, v12);

  objc_msgSend__trackAssetsToUpload(self, v14, v15);
  v16.receiver = self;
  v16.super_class = CKMovePhotosOperation;
  [(CKOperation *)&v16 performCKOperation];
}

- (void)handleMoveForSourceRecordID:(id)d destinationMetadata:(id)metadata moveMarkerMetadata:(id)markerMetadata error:(id)error
{
  v200 = *MEMORY[0x1E69E9840];
  dCopy = d;
  metadataCopy = metadata;
  markerMetadataCopy = markerMetadata;
  errorCopy = error;
  v16 = objc_msgSend_moveChangesBySourceRecordID(self, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, dCopy);

  if (v18)
  {
    v21 = objc_msgSend_destinationRecord(v18, v19, v20);
    v26 = objc_msgSend_CKClientSuitableError(errorCopy, v22, v23);
    if (v26)
    {
      v27 = objc_msgSend_recordErrorsBySourceRecordID(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v26, dCopy);
      v29 = 0;
    }

    else
    {
      v31 = objc_msgSend_etag(metadataCopy, v24, v25);

      if (v31)
      {
        v34 = objc_msgSend_etag(metadataCopy, v32, v33);
        objc_msgSend_setEtag_(v21, v35, v34);
      }

      v36 = objc_msgSend_creationDate(metadataCopy, v32, v33);

      if (v36)
      {
        v39 = objc_msgSend_creationDate(metadataCopy, v37, v38);
        objc_msgSend_setCreationDate_(v21, v40, v39);
      }

      v41 = dCopy;
      v42 = objc_msgSend_modificationDate(metadataCopy, v37, v38);

      if (v42)
      {
        v45 = objc_msgSend_modificationDate(metadataCopy, v43, v44);
        objc_msgSend_setModificationDate_(v21, v46, v45);
      }

      v47 = objc_msgSend_serverRecord(metadataCopy, v43, v44);
      v50 = objc_msgSend_pluginFields(v47, v48, v49);
      objc_msgSend_setPluginFields_(v21, v51, v50);

      v54 = objc_msgSend_serverRecord(metadataCopy, v52, v53);
      v57 = objc_msgSend_creatorUserRecordID(v54, v55, v56);
      objc_msgSend_setCreatorUserRecordID_(v21, v58, v57);

      v61 = objc_msgSend_serverRecord(metadataCopy, v59, v60);
      v64 = objc_msgSend_lastModifiedUserRecordID(v61, v62, v63);
      objc_msgSend_setLastModifiedUserRecordID_(v21, v65, v64);

      v68 = objc_msgSend_serverRecord(metadataCopy, v66, v67);
      v71 = objc_msgSend_modifiedByDevice(v68, v69, v70);
      objc_msgSend_setModifiedByDevice_(v21, v72, v71);

      v75 = objc_msgSend_serverRecord(metadataCopy, v73, v74);
      v78 = objc_msgSend_routingKey(v75, v76, v77);
      objc_msgSend_setRoutingKey_(v21, v79, v78);

      v82 = objc_msgSend_serverRecord(metadataCopy, v80, v81);
      v85 = objc_msgSend_mutableEncryptedPSK(v82, v83, v84);
      objc_msgSend_setMutableEncryptedPSK_(v21, v86, v85);

      v89 = objc_msgSend_serverRecord(metadataCopy, v87, v88);
      v92 = objc_msgSend_displayedHostname(v89, v90, v91);
      objc_msgSend_setDisplayedHostname_(v21, v93, v92);

      v96 = objc_msgSend_serverRecord(metadataCopy, v94, v95);
      v99 = objc_msgSend_chainParentPublicKeyID(v96, v97, v98);
      objc_msgSend_setChainParentPublicKeyID_(v21, v100, v99);

      v103 = objc_msgSend_serverRecord(metadataCopy, v101, v102);
      v106 = objc_msgSend_chainProtectionInfo(v103, v104, v105);
      objc_msgSend_setChainProtectionInfo_(v21, v107, v106);

      v110 = objc_msgSend_serverRecord(metadataCopy, v108, v109);
      v113 = objc_msgSend_chainPrivateKey(v110, v111, v112);
      objc_msgSend_setChainPrivateKey_(v21, v114, v113);

      objc_msgSend_setKnownToServer_(v21, v115, 1);
      objc_msgSend_resetChangedKeys(v21, v116, v117);
      v120 = objc_msgSend_protectionData(metadataCopy, v118, v119);
      objc_msgSend_setProtectionData_(v21, v121, v120);

      v124 = objc_msgSend_pcsKeyID(metadataCopy, v122, v123);
      objc_msgSend_setPcsKeyID_(v21, v125, v124);

      v128 = objc_msgSend_allPCSKeyIDs(metadataCopy, v126, v127);
      objc_msgSend_setAllPCSKeyIDs_(v21, v129, v128);

      v132 = objc_msgSend_zoneishKeyID(metadataCopy, v130, v131);
      objc_msgSend_setZoneishKeyID_(v21, v133, v132);

      v29 = objc_msgSend_serverRecord(markerMetadataCopy, v134, v135);
      v138 = objc_msgSend_etag(markerMetadataCopy, v136, v137);

      if (v138)
      {
        v141 = objc_msgSend_etag(markerMetadataCopy, v139, v140);
        objc_msgSend_setEtag_(v29, v142, v141);
      }

      v143 = objc_msgSend_creationDate(markerMetadataCopy, v139, v140);

      dCopy = v41;
      if (v143)
      {
        v146 = objc_msgSend_creationDate(markerMetadataCopy, v144, v145);
        objc_msgSend_setCreationDate_(v29, v147, v146);
      }

      v148 = objc_msgSend_modificationDate(markerMetadataCopy, v144, v145);

      v26 = 0;
      if (v148)
      {
        v151 = objc_msgSend_modificationDate(markerMetadataCopy, v149, v150);
        objc_msgSend_setModificationDate_(v29, v152, v151);
      }

      v153 = objc_msgSend_protectionData(markerMetadataCopy, v149, v150);
      objc_msgSend_setProtectionData_(v29, v154, v153);

      v157 = objc_msgSend_pcsKeyID(markerMetadataCopy, v155, v156);
      objc_msgSend_setPcsKeyID_(v29, v158, v157);

      v161 = objc_msgSend_allPCSKeyIDs(markerMetadataCopy, v159, v160);
      objc_msgSend_setAllPCSKeyIDs_(v29, v162, v161);

      v27 = objc_msgSend_zoneishKeyID(markerMetadataCopy, v163, v164);
      objc_msgSend_setZoneishKeyID_(v29, v165, v27);
    }

    v168 = objc_msgSend_perRecordMoveBlock(self, v166, v167);

    if (v168)
    {
      v188 = markerMetadataCopy;
      v189 = errorCopy;
      if (v26)
      {
        v169 = 0;
        v170 = 0;
      }

      else
      {
        v169 = v21;
        v170 = v29;
      }

      v171 = v18;
      v172 = dCopy;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v173 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v186 = v173;
        v185 = objc_msgSend_operationID(self, v178, v179);
        v187 = objc_msgSend_recordID(v21, v180, v181);
        v184 = objc_msgSend_recordID(v29, v182, v183);
        *buf = 138544386;
        v191 = v185;
        v192 = 2112;
        v193 = v172;
        v194 = 2112;
        v195 = v187;
        v196 = 2112;
        v197 = v184;
        v198 = 2112;
        v199 = v26;
        _os_log_debug_impl(&dword_1883EA000, v186, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about moved record with source ID %@ destination ID %@ moveMarker ID %@: %@", buf, 0x34u);
      }

      v176 = objc_msgSend_perRecordMoveBlock(self, v174, v175, v184);
      dCopy = v172;
      (v176)[2](v176, v172, v169, v170, v26);

      v18 = v171;
      markerMetadataCopy = v188;
      errorCopy = v189;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v30 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v191 = dCopy;
      _os_log_error_impl(&dword_1883EA000, v30, OS_LOG_TYPE_ERROR, "Received progress callback for unknown move source recordID %@", buf, 0xCu);
    }
  }

  v177 = *MEMORY[0x1E69E9840];
}

- (void)handleRecordUploadForRecordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index signature:(id)signature size:(unint64_t)size paddedFileSize:(unint64_t)fileSize uploaded:(BOOL)uploaded uploadReceipt:(id)self0 uploadReceiptExpiration:(double)self1 wrappedAssetKey:(id)self2 clearAssetKey:(id)self3 referenceSignature:(id)self4
{
  v82 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  signatureCopy = signature;
  receiptCopy = receipt;
  assetKeyCopy = assetKey;
  clearAssetKeyCopy = clearAssetKey;
  referenceSignatureCopy = referenceSignature;
  v25 = objc_msgSend_moveChangesByDestinationRecordID(self, v23, v24);
  v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, dCopy);

  v30 = objc_msgSend_destinationRecord(v27, v28, v29);
  v32 = v30;
  if (keyCopy && v30)
  {
    v33 = objc_msgSend_objectForKeyedSubscript_(v30, v31, keyCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v33;
      v35 = signatureCopy;
      if (v33)
      {
LABEL_5:
        objc_msgSend_setArrayIndex_(v33, v34, index);
        objc_msgSend_setSignature_(v33, v36, v35);
        objc_msgSend_setSize_(v33, v37, size);
        objc_msgSend_setPaddedFileSize_(v33, v38, fileSize);
        objc_msgSend_setUploaded_(v33, v39, uploaded);
        v40 = receiptCopy;
        objc_msgSend_setUploadReceipt_(v33, v41, receiptCopy);
        objc_msgSend_setUploadReceiptExpiration_(v33, v42, v43, expiration);
        v44 = assetKeyCopy;
        objc_msgSend_setWrappedAssetKey_(v33, v45, assetKeyCopy);
        v46 = clearAssetKeyCopy;
        objc_msgSend_setClearAssetKey_(v33, v47, clearAssetKeyCopy);
        objc_msgSend_setReferenceSignature_(v33, v48, referenceSignatureCopy);
        v49 = v33;
LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_15;
    }

    objc_opt_class();
    v35 = signatureCopy;
    if (objc_opt_isKindOfClass())
    {
      v51 = v33;
      v54 = v51;
      if (index < 0 || objc_msgSend_count(v51, v52, v53) <= index)
      {
        v33 = v54;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v40 = receiptCopy;
        v56 = ck_log_facility_ck;
        v57 = os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR);
        v58 = v33;
        v44 = assetKeyCopy;
        if (v57)
        {
          v61 = v33;
          v62 = v56;
          v65 = objc_msgSend_recordID(v32, v63, v64);
          *buf = 134218242;
          indexCopy2 = index;
          v78 = 2112;
          v79 = v65;
          _os_log_error_impl(&dword_1883EA000, v62, OS_LOG_TYPE_ERROR, "Invalid arrayIndex %ld for record %@", buf, 0x16u);

          v58 = v61;
          v33 = v61;
        }
      }

      else
      {
        v33 = objc_msgSend_objectAtIndex_(v54, v55, index);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v33;

          if (v33)
          {
            goto LABEL_5;
          }

          goto LABEL_15;
        }

        v40 = receiptCopy;
        v70 = v54;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v44 = assetKeyCopy;
        v60 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v66 = v60;
          v69 = objc_msgSend_recordID(v32, v67, v68);
          *buf = 134218242;
          indexCopy2 = index;
          v78 = 2112;
          v79 = v69;
          _os_log_error_impl(&dword_1883EA000, v66, OS_LOG_TYPE_ERROR, "Invalid asset at arrayIndex %ld for record %@", buf, 0x16u);

          v44 = assetKeyCopy;
        }

        v58 = v70;
      }

      v49 = 0;
      goto LABEL_21;
    }

LABEL_15:
    v49 = 0;
    v40 = receiptCopy;
    v44 = assetKeyCopy;
LABEL_21:
    v46 = clearAssetKeyCopy;
    goto LABEL_22;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v35 = signatureCopy;
  v40 = receiptCopy;
  v50 = ck_log_facility_ck;
  v44 = assetKeyCopy;
  v46 = clearAssetKeyCopy;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    indexCopy2 = v32;
    v78 = 2114;
    v79 = keyCopy;
    v80 = 2112;
    v81 = dCopy;
    _os_log_error_impl(&dword_1883EA000, v50, OS_LOG_TYPE_ERROR, "Received upload completion callback with nil record %p or recordKey %{public}@ for recordID %@", buf, 0x20u);
  }

LABEL_23:

  v59 = *MEMORY[0x1E69E9840];
}

- (void)handleDeleteForRecordID:(id)d error:(id)error
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, d, error);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a2, self, @"CKMovePhotosOperation.m", 319, @"Move Photos do not expect to hear about deletes");
}

- (void)handleRecordModificationForRecordID:(id)d didProgress:(double)progress
{
  dCopy = d;
  v9 = objc_msgSend_moveChangesByDestinationRecordID(self, v7, v8);
  v20 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy);

  v13 = objc_msgSend_sourceRecordID(v20, v11, v12);
  v16 = objc_msgSend_perRecordProgressBlock(self, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_perRecordProgressBlock(self, v17, v18);
    (v19)[2](v19, v13, progress);
  }
}

- (void)handleSaveForRecordID:(id)d recordMetadata:(id)metadata error:(id)error
{
  v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, d, metadata, error);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a2, self, @"CKMovePhotosOperation.m", 331, @"Move Photos do not expect to hear about saves");
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v7 = objc_msgSend_recordErrorsBySourceRecordID(self, v4, v5);
    v10 = objc_msgSend_count(v7, v8, v9);

    if (v10)
    {
      v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5);
      v14 = objc_msgSend_recordErrorsBySourceRecordID(self, v12, v13);
      objc_msgSend_setObject_forKeyedSubscript_(v11, v15, v14, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v16, @"CKInternalErrorDomain", 1011, v11, @"Failed to move some records");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v17 = objc_msgSend_movePhotosCompletionBlock(self, v4, v5);

  if (v17)
  {
    v20 = objc_msgSend_movePhotosCompletionBlock(self, v18, v19);
    v23 = objc_msgSend_CKClientSuitableError(errorCopy, v21, v22);
    (v20)[2](v20, v23);

    objc_msgSend_setMovePhotosCompletionBlock_(self, v24, 0);
  }

  objc_msgSend_setPerRecordProgressBlock_(self, v18, 0);
  objc_msgSend_setPerRecordMoveBlock_(self, v25, 0);
  v26.receiver = self;
  v26.super_class = CKMovePhotosOperation;
  [(CKOperation *)&v26 _finishOnCallbackQueueWithError:errorCopy];
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleMoveForSourceRecordID_destinationMetadata_moveMarkerMetadata_error_, 3, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKMovePhotosOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

@end
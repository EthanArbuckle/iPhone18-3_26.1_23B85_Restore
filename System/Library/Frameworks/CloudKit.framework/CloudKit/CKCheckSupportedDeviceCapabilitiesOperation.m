@interface CKCheckSupportedDeviceCapabilitiesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKCheckSupportedDeviceCapabilitiesOperation)init;
- (CKCheckSupportedDeviceCapabilitiesOperation)initWithDesiredCapabilities:(id)a3 zoneIDs:(id)a4 options:(id)a5;
- (CKCheckSupportedDeviceCapabilitiesOperation)initWithDesiredCapabilitySets:(id)a3 zoneIDs:(id)a4 options:(id)a5;
- (id)activityCreate;
- (id)checkSupportedDeviceCapabilitiesCompletionBlock;
- (id)perResultBlock;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleSupportedDeviceCapabilityCheckResultForRecordZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 error:(id)a6;
- (void)performCKOperation;
- (void)setCheckSupportedDeviceCapabilitiesCompletionBlock:(id)a3;
- (void)setCheckSupportedDeviceCapabilitiesCompletionBlockIVar:(id)a3;
- (void)setPerResultBlock:(id)a3;
@end

@implementation CKCheckSupportedDeviceCapabilitiesOperation

- (CKCheckSupportedDeviceCapabilitiesOperation)init
{
  v8.receiver = self;
  v8.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    recordZoneErrors = v2->_recordZoneErrors;
    v2->_recordZoneErrors = v3;

    v5 = objc_opt_new();
    resultsByRecordZoneID = v2->_resultsByRecordZoneID;
    v2->_resultsByRecordZoneID = v5;
  }

  return v2;
}

- (CKCheckSupportedDeviceCapabilitiesOperation)initWithDesiredCapabilities:(id)a3 zoneIDs:(id)a4 options:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_init(self, v11, v12);
  if (v15)
  {
    v16 = objc_msgSend_copy(v9, v13, v14);
    zoneIDs = v15->_zoneIDs;
    v15->_zoneIDs = v16;

    v20 = objc_msgSend_copy(v8, v18, v19);
    v30[0] = v20;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v30, 1);
    desiredCapabilitySets = v15->_desiredCapabilitySets;
    v15->_desiredCapabilitySets = v22;

    v26 = objc_msgSend_copy(v10, v24, v25);
    options = v15->_options;
    v15->_options = v26;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CKCheckSupportedDeviceCapabilitiesOperation)initWithDesiredCapabilitySets:(id)a3 zoneIDs:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_init(self, v11, v12);
  if (v15)
  {
    v16 = objc_msgSend_copy(v9, v13, v14);
    zoneIDs = v15->_zoneIDs;
    v15->_zoneIDs = v16;

    v20 = objc_msgSend_copy(v8, v18, v19);
    desiredCapabilitySets = v15->_desiredCapabilitySets;
    v15->_desiredCapabilitySets = v20;

    v24 = objc_msgSend_copy(v10, v22, v23);
    options = v15->_options;
    v15->_options = v24;
  }

  return v15;
}

- (void)setPerResultBlock:(id)a3
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
    v12[2] = sub_1885FBD7C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    perResultBlock = v13;
    goto LABEL_9;
  }

  if (self->_perResultBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    perResultBlock = self->_perResultBlock;
    self->_perResultBlock = v9;
LABEL_9:
  }
}

- (id)perResultBlock
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
    v13 = sub_1883EDF14;
    v14 = sub_1883EF6F4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FBF78;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perResultBlock);
  }

  return v6;
}

- (void)setCheckSupportedDeviceCapabilitiesCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885FC108;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    checkSupportedDeviceCapabilitiesCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_checkSupportedDeviceCapabilitiesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    checkSupportedDeviceCapabilitiesCompletionBlock = self->_checkSupportedDeviceCapabilitiesCompletionBlock;
    self->_checkSupportedDeviceCapabilitiesCompletionBlock = v9;
LABEL_9:
  }
}

- (id)checkSupportedDeviceCapabilitiesCompletionBlock
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
    v13 = sub_1883EDF14;
    v14 = sub_1883EF6F4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885FC304;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_checkSupportedDeviceCapabilitiesCompletionBlock);
  }

  return v6;
}

- (void)setCheckSupportedDeviceCapabilitiesCompletionBlock:(id)a3
{
  v4 = a3 == 0;
  v7 = a3;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setCheckSupportedDeviceCapabilitiesCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_zoneIDs(self, v5, v6);
  objc_msgSend_setZoneIDs_(v4, v8, v7);

  v11 = objc_msgSend_desiredCapabilitySets(self, v9, v10);
  objc_msgSend_setDesiredCapabilitySets_(v4, v12, v11);

  v15 = objc_msgSend_options(self, v13, v14);
  objc_msgSend_setOptions_(v4, v16, v15);

  v17.receiver = self;
  v17.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  [(CKDatabaseOperation *)&v17 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v17.receiver = self;
  v17.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v17 fillFromOperationInfo:v4];
  v7 = objc_msgSend_zoneIDs(v4, v5, v6, v17.receiver, v17.super_class);
  zoneIDs = self->_zoneIDs;
  self->_zoneIDs = v7;

  v11 = objc_msgSend_desiredCapabilitySets(v4, v9, v10);
  desiredCapabilitySets = self->_desiredCapabilitySets;
  self->_desiredCapabilitySets = v11;

  v15 = objc_msgSend_options(v4, v13, v14);

  options = self->_options;
  self->_options = v15;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perResultBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_checkSupportedDeviceCapabilitiesCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_database(self, a2, a3);
  v8 = objc_msgSend_scope(v5, v6, v7);

  if (v8 != 2)
  {
    if (a3)
    {
      v44 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v9, @"CKInternalErrorDomain", 1019, @"This operation should only be called on the private database");
      v45 = v44;
      result = 0;
      *a3 = v44;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v11 = objc_msgSend_zoneIDs(self, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);

  if (!v14)
  {
    if (a3)
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v48, @"CKErrorDomain", 12, @"At least one zone ID must be passed to %@", v47);
      *a3 = LABEL_27:;
    }

LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = objc_msgSend_zoneIDs(self, v15, v16);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v66, v71, 16);
  if (v19)
  {
    v20 = v19;
    v21 = *v67;
LABEL_5:
    v22 = 0;
    while (1)
    {
      if (*v67 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v66 + 1) + 8 * v22);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (!objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v24, v23, a3))
      {
        goto LABEL_32;
      }

      if (v20 == ++v22)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v66, v71, 16);
        if (v20)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    v49 = objc_opt_class();
    v51 = NSStringFromClass(v49);
    v59 = v51;
    v60 = v23;
    v52 = @"Unexpected zoneID passed to %@: %@";
LABEL_30:
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v50, @"CKErrorDomain", 12, v52, v59, v60);
    goto LABEL_31;
  }

LABEL_12:

  v28 = objc_msgSend_desiredCapabilitySets(self, v26, v27);
  v31 = objc_msgSend_count(v28, v29, v30);

  if (!v31)
  {
    if (!a3)
    {
      goto LABEL_33;
    }

    v54 = objc_opt_class();
    v47 = NSStringFromClass(v54);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v55, @"CKErrorDomain", 12, @"desiredCapabilitySets must not be empty for %@", v47);
    goto LABEL_27;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v17 = objc_msgSend_desiredCapabilitySets(self, v32, v33);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v34, &v62, v70, 16);
  if (v35)
  {
    v36 = v35;
    v37 = *v63;
LABEL_15:
    v38 = 0;
    while (1)
    {
      if (*v63 != v37)
      {
        objc_enumerationMutation(v17);
      }

      v39 = *(*(&v62 + 1) + 8 * v38);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a3)
        {
          goto LABEL_32;
        }

        v56 = objc_opt_class();
        v51 = NSStringFromClass(v56);
        v59 = v51;
        v60 = v39;
        v52 = @"Unexpected capability set passed to %@: %@";
        goto LABEL_30;
      }

      if (!objc_msgSend_count(v39, v40, v41))
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v42, &v62, v70, 16);
        if (v36)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    v57 = objc_opt_class();
    v51 = NSStringFromClass(v57);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v58, @"CKErrorDomain", 12, @"At least one capability is required in each capability set passed to %@.", v51);
    *a3 = LABEL_31:;

LABEL_32:
    goto LABEL_33;
  }

LABEL_22:

  v61.receiver = self;
  v61.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  result = [(CKDatabaseOperation *)&v61 CKOperationShouldRun:a3];
LABEL_34:
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performCKOperation
{
  v22 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v8 = objc_msgSend_operationID(self, v6, v7);
    v11 = objc_msgSend_zoneIDs(self, v9, v10);
    v14 = objc_msgSend_desiredCapabilitySets(self, v12, v13);
    *buf = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v14;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Checking supported device capabilities in zones with operation %{public}@ zoneIDs=%@ capabilitySets=%@", buf, 0x20u);
  }

  v15.receiver = self;
  v15.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  [(CKOperation *)&v15 performCKOperation];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleSupportedDeviceCapabilityCheckResultForRecordZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 error:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = objc_msgSend_CKClientSuitableError(a6, v13, v14);
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
      if (objc_msgSend_canDropItemResultsEarly(self, v18, v19))
      {
        goto LABEL_37;
      }

LABEL_25:
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_recordZoneErrors, v45, v15, v10, *v62, *&v62[16], v63);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(0, v45, v15, v10, *v62, *&v62[16], v63);
      }

      goto LABEL_37;
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

    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v62 = 138412802;
      *&v62[4] = v10;
      *&v62[12] = 2112;
      *&v62[14] = v11;
      *&v62[22] = 2112;
      v63 = v15;
      v30 = "Record zone %@ supported device capabilities check failed for capability set %@ with error: %@";
      v31 = v24;
      v32 = v29;
      v33 = 32;
LABEL_20:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v31, OS_SIGNPOST_EVENT, v32, "CKCheckSupportedDeviceCapabilitiesOperation", v30, v62, v33);
    }
  }

  else
  {
    if (!v17)
    {
      if (objc_msgSend_canDropItemResultsEarly(self, v18, v19))
      {
        goto LABEL_37;
      }

      goto LABEL_28;
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
      *v62 = 138412546;
      *&v62[4] = v10;
      *&v62[12] = 2112;
      *&v62[14] = v11;
      v30 = "Record zone %@ supported device capabilities %@ checked";
      v31 = v24;
      v32 = v42;
      v33 = 22;
      goto LABEL_20;
    }
  }

  if (objc_msgSend_canDropItemResultsEarly(self, v43, v44))
  {
    goto LABEL_37;
  }

  if (v15)
  {
    goto LABEL_25;
  }

LABEL_28:
  if (self)
  {
    objc_msgSend_objectForKeyedSubscript_(self->_resultsByRecordZoneID, v45, v10, *v62, *&v62[8], v63);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(0, v45, v10, *v62, *&v62[8], v63);
  }
  v47 = ;

  if (!v47)
  {
    v49 = objc_opt_new();
    if (self)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_resultsByRecordZoneID, v48, v49, v10);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(0, v48, v49, v10);
    }
  }

  if (self)
  {
    resultsByRecordZoneID = self->_resultsByRecordZoneID;
  }

  else
  {
    resultsByRecordZoneID = 0;
  }

  v51 = resultsByRecordZoneID;
  v53 = objc_msgSend_objectForKeyedSubscript_(v51, v52, v10);
  objc_msgSend_setObject_forKey_(v53, v54, v12, v11);

LABEL_37:
  v55 = objc_msgSend_perResultBlock_wrapper(self, v45, v46, *v62, *&v62[8]);
  v58 = v55;
  if (v55)
  {
    v59 = _Block_copy(v55);
  }

  else
  {
    v60 = objc_msgSend_perResultBlock(self, v56, v57);
    v59 = _Block_copy(v60);
  }

  if (v59)
  {
    v59[2](v59, v10, v11, v12, v15);
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
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
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKCheckSupportedDeviceCapabilitiesOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
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

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1011, v22, @"Couldn't check supported device capabilities in some record zones");
    }

    else
    {
      v4 = 0;
    }
  }

  v24 = objc_msgSend_checkSupportedDeviceCapabilitiesCompletionBlock(self, v7, v8);

  if (v24)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_msgSend_operationID(self, v26, v27);
      v45 = &stru_1EFA32970;
      if (v4)
      {
        v46 = @" Error was: ";
      }

      else
      {
        v46 = &stru_1EFA32970;
      }

      if (v4)
      {
        v45 = objc_msgSend_CKClientSuitableError(v4, v42, v43);
      }

      *buf = 138543874;
      v54 = v44;
      v55 = 2112;
      v56 = v46;
      v57 = 2112;
      v58 = v45;
      _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Operation %{public}@ has completed.%@%@", buf, 0x20u);
      if (v4)
      {
      }
    }

    v32 = objc_msgSend_checkSupportedDeviceCapabilitiesCompletionBlock(self, v28, v29);
    if (v4)
    {
      v33 = 0;
    }

    else
    {
      if (self)
      {
        resultsByRecordZoneID = self->_resultsByRecordZoneID;
      }

      else
      {
        resultsByRecordZoneID = 0;
      }

      v33 = resultsByRecordZoneID;
    }

    v39 = objc_msgSend_CKClientSuitableError(v4, v30, v31);
    (v32)[2](v32, v33, v39);

    if (!v4)
    {
    }

    objc_msgSend_setCheckSupportedDeviceCapabilitiesCompletionBlock_(self, v40, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v34 = ck_log_facility_ck;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v49 = objc_msgSend_operationID(self, v35, v36);
      v50 = &stru_1EFA32970;
      if (v4)
      {
        v51 = @" Error was: ";
      }

      else
      {
        v51 = &stru_1EFA32970;
      }

      if (v4)
      {
        v50 = objc_msgSend_CKClientSuitableError(v4, v47, v48);
      }

      *buf = 138543874;
      v54 = v49;
      v55 = 2114;
      v56 = v51;
      v57 = 2112;
      v58 = v50;
      _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Operation %{public}@ finished but no checkSupportedDeviceCapabilitiesCompletionBlock was set.%{public}@%@", buf, 0x20u);
      if (v4)
      {
      }
    }
  }

  objc_msgSend_setPerResultBlock_(self, v37, 0);
  v52.receiver = self;
  v52.super_class = CKCheckSupportedDeviceCapabilitiesOperation;
  [(CKOperation *)&v52 _finishOnCallbackQueueWithError:v4];

  v41 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKCheckSupportedDeviceCapabilitiesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKCheckSupportedDeviceCapabilitiesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/check-supported-capabilities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v4, v10, v6, v7, v8, v9, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v12, v11, sel_handleSupportedDeviceCapabilityCheckResultForRecordZoneID_capabilitySet_result_error_, 1, 0);

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v16 = objc_msgSend_setWithObjects_(v13, v15, v14, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v17, v16, sel_handleSupportedDeviceCapabilityCheckResultForRecordZoneID_capabilitySet_result_error_, 2, 0);

  v18 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v5, v19, v18, sel_handleSupportedDeviceCapabilityCheckResultForRecordZoneID_capabilitySet_result_error_, 3, 0);

  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___CKCheckSupportedDeviceCapabilitiesOperation;
  objc_msgSendSuper2(&v20, sel_applyDaemonCallbackInterfaceTweaks_, v5);
}

@end
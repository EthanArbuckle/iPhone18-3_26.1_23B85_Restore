@interface CKAcceptSharesOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKAcceptSharesOperation)init;
- (CKAcceptSharesOperation)initWithShareMetadatas:(NSArray *)shareMetadatas;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)acceptSharesCompletionBlock;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleShareAcceptanceForURL:(id)a3 share:(id)a4 error:(id)a5;
- (void)perShareCompletionBlock;
- (void)setAcceptSharesCompletionBlock:(void *)acceptSharesCompletionBlock;
- (void)setAcceptSharesCompletionBlockIVar:(id)a3;
- (void)setPerShareCompletionBlock:(void *)perShareCompletionBlock;
- (void)setShareMetadatas:(NSArray *)shareMetadatas;
@end

@implementation CKAcceptSharesOperation

- (CKAcceptSharesOperation)init
{
  v6.receiver = self;
  v6.super_class = CKAcceptSharesOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    errorsByShareURL = v2->_errorsByShareURL;
    v2->_errorsByShareURL = v3;
  }

  return v2;
}

- (CKAcceptSharesOperation)initWithShareMetadatas:(NSArray *)shareMetadatas
{
  v4 = shareMetadatas;
  v7 = objc_msgSend_init(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setShareMetadatas_(v7, v8, v4);
  }

  return v9;
}

- (void)setPerShareCompletionBlock:(void *)perShareCompletionBlock
{
  v6 = perShareCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885E8284;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perShareCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perShareCompletionBlock;
    self->_perShareCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perShareCompletionBlock
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
    v13 = sub_1883EDD04;
    v14 = sub_1883EF694;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E8480;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareCompletionBlock);
  }

  return v6;
}

- (void)setAcceptSharesCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885E8610;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    acceptSharesCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_acceptSharesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    acceptSharesCompletionBlock = self->_acceptSharesCompletionBlock;
    self->_acceptSharesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)acceptSharesCompletionBlock
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
    v13 = sub_1883EDD04;
    v14 = sub_1883EF694;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885E880C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_acceptSharesCompletionBlock);
  }

  return v6;
}

- (void)setAcceptSharesCompletionBlock:(void *)acceptSharesCompletionBlock
{
  v4 = acceptSharesCompletionBlock == 0;
  v7 = acceptSharesCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setAcceptSharesCompletionBlockIVar_(self, v6, v7);
}

- (void)setShareMetadatas:(NSArray *)shareMetadatas
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = shareMetadatas;
  v7 = objc_msgSend_copy(v4, v5, v6);
  v8 = self->_shareMetadatas;
  self->_shareMetadatas = v7;

  v9 = objc_opt_new();
  shareMetadatasByShareURL = self->_shareMetadatasByShareURL;
  self->_shareMetadatasByShareURL = v9;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v4;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v21 = objc_msgSend_invitationURL(v19, v14, v15, v23);
        if (v21)
        {
          objc_msgSend_setObject_forKeyedSubscript_(self->_shareMetadatasByShareURL, v20, v19, v21);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v23, v27, 16);
    }

    while (v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_shareMetadatas(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareMetadatasToAccept_(v4, v11, v10);

  v12.receiver = self;
  v12.super_class = CKAcceptSharesOperation;
  [(CKOperation *)&v12 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v12.receiver = self;
  v12.super_class = CKAcceptSharesOperation;
  v4 = a3;
  [(CKOperation *)&v12 fillFromOperationInfo:v4];
  v7 = objc_msgSend_shareMetadatasToAccept(v4, v5, v6, v12.receiver, v12.super_class);

  v10 = objc_msgSend_copy(v7, v8, v9);
  objc_msgSend_setShareMetadatas_(self, v11, v10);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKAcceptSharesOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perShareCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_acceptSharesCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = objc_msgSend_shareMetadatas(self, a2, a3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v28, v32, 16);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v29;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v28 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a3)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKErrorDomain", 12, @"Unexpected shareMetadata in shares to accept: %@", v11);
          *a3 = LABEL_16:;
        }

LABEL_17:

        goto LABEL_18;
      }

      v14 = objc_msgSend_invitationURL(v11, v12, v13);

      if (!v14)
      {
        if (a3)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKErrorDomain", 12, @"shareMetadata lacks share URL: %@", v11);
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      ++v10;
    }

    while (v8 != v10);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v15, &v28, v32, 16);
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

  v18 = objc_msgSend_shareMetadatas(self, v16, v17);
  v21 = objc_msgSend_count(v18, v19, v20);

  if (v21)
  {
    v27.receiver = self;
    v27.super_class = CKAcceptSharesOperation;
    result = [(CKOperation *)&v27 CKOperationShouldRun:a3];
  }

  else if (a3)
  {
    v25 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKErrorDomain", 12, @"You must specify some share metadatas to accept");
    v26 = v25;
    result = 0;
    *a3 = v25;
  }

  else
  {
LABEL_18:
    result = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleShareAcceptanceForURL:(id)a3 share:(id)a4 error:(id)a5
{
  v144 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v13 = objc_msgSend_CKClientSuitableError(a5, v11, v12);
  if (self)
  {
    signpost = self->super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v15 = signpost;

  if (v13)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    if (self)
    {
      v18 = self->super._signpost;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v22 = objc_msgSend_log(v19, v20, v21);

    if (self)
    {
      v23 = self->super._signpost;
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
    v139 = v9;
    v140 = 2112;
    v141 = v13;
    v28 = "Share %@ accepted with error: %@";
    v29 = v22;
    v30 = v27;
    v31 = 22;
    goto LABEL_20;
  }

  if (!v15)
  {
    goto LABEL_22;
  }

  if (self)
  {
    v32 = self->super._signpost;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;
  v22 = objc_msgSend_log(v33, v34, v35);

  if (self)
  {
    v36 = self->super._signpost;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  v40 = objc_msgSend_identifier(v37, v38, v39);

  if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138412290;
    v139 = v9;
    v28 = "Share %@ accepted";
    v29 = v22;
    v30 = v40;
    v31 = 12;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v29, OS_SIGNPOST_EVENT, v30, "CKAcceptSharesOperation", v28, buf, v31);
  }

LABEL_21:

LABEL_22:
  v41 = objc_msgSend_shareMetadatasByShareURL(self, v16, v17);
  v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v9);

  if (v43)
  {
    if (v13)
    {
      if ((objc_msgSend_canDropItemResultsEarly(self, v44, v45) & 1) == 0)
      {
        v46 = objc_msgSend_errorsByShareURL(self, v44, v45);
        v49 = objc_msgSend_invitationURL(v43, v47, v48);
        objc_msgSend_setObject_forKeyedSubscript_(v46, v50, v13, v49);
      }
    }

    else if (v10)
    {
      v59 = objc_msgSend_resolvedConfiguration(self, v44, v45);
      v62 = objc_msgSend_container(v59, v60, v61);
      v65 = objc_msgSend_options(v62, v63, v64);
      v68 = objc_msgSend_useAnonymousToServerShareParticipants(v65, v66, v67);

      if (v68)
      {
        v71 = objc_msgSend_recordID(v10, v69, v70);
        v74 = objc_msgSend_zoneID(v71, v72, v73);
        v77 = objc_msgSend_anonymousCKUserID(v74, v75, v76);

        if (!objc_msgSend_length(v77, v78, v79))
        {
          v131 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v80, v81);
          v134 = objc_msgSend_recordID(v10, v132, v133);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v131, v135, a2, self, @"CKAcceptSharesOperation.m", 136, @"Should have generated an anonymous userID for share %@", v134);
        }

        v82 = objc_msgSend_share(v43, v80, v81);
        v85 = objc_msgSend_recordID(v82, v83, v84);
        v87 = objc_msgSend_copyWithAnonymousCKUserID_(v85, v86, v77);

        v90 = objc_msgSend_share(v43, v88, v89);
        objc_msgSend_replaceRecordIDWith_(v90, v91, v87);
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v92 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v124 = v92;
        v127 = objc_msgSend_operationID(self, v125, v126);
        v130 = objc_msgSend_recordID(v10, v128, v129);
        *buf = 138543874;
        v139 = v127;
        v140 = 2112;
        v141 = v130;
        v142 = 2112;
        v143 = 0;
        _os_log_debug_impl(&dword_1883EA000, v124, OS_LOG_TYPE_DEBUG, "Operation %{public}@ notifying about accepted share with ID %@: %@", buf, 0x20u);
      }

      v95 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v93, v94);
      v136 = @"Share";
      v137 = v10;
      v96 = 1;
      v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v97, &v137, &v136, 1);
      objc_msgSend_postNotificationName_object_userInfo_(v95, v99, @"CKAcceptSharesOperationDidAcceptShareNotification", self, v98);

      goto LABEL_41;
    }

    v96 = v10 != 0;
LABEL_41:
    v100 = objc_msgSend_perShareCompletionBlock_wrapper(self, v44, v45);
    v103 = v100;
    if (v100)
    {
      v52 = _Block_copy(v100);
    }

    else
    {
      v104 = objc_msgSend_perShareCompletionBlock(self, v101, v102);
      v52 = _Block_copy(v104);
    }

    if (v52)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v107 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v117 = v107;
        v120 = objc_msgSend_operationID(self, v118, v119);
        v123 = objc_msgSend_recordID(v10, v121, v122);
        *buf = 138543874;
        v139 = v120;
        v140 = 2112;
        v141 = v123;
        v142 = 2112;
        v143 = v13;
        _os_log_debug_impl(&dword_1883EA000, v117, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about accepted share with ID %@: %@", buf, 0x20u);
      }

      v52[2](v52, v43, v10, v13);
    }

    if (v96)
    {
      v108 = objc_msgSend_configuration(self, v105, v106);
      v111 = objc_msgSend_container(v108, v109, v110);
      v114 = objc_msgSend_recordID(v10, v112, v113);
      objc_msgSend_handleRecordChanged_changeType_record_error_(v111, v115, v114, 2, v10, v13);
    }

    goto LABEL_52;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v51 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v52 = v51;
    v55 = objc_msgSend_shareMetadatasByShareURL(self, v53, v54);
    v58 = objc_msgSend_allKeys(v55, v56, v57);
    *buf = 138412546;
    v139 = v9;
    v140 = 2112;
    v141 = v58;
    _os_log_error_impl(&dword_1883EA000, v52, OS_LOG_TYPE_ERROR, "Received callback for URL I don't know about: %@ %@", buf, 0x16u);

LABEL_52:
  }

  v116 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  if (self)
  {
    signpost = self->super._signpost;
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
      v9 = self->super._signpost;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v13 = objc_msgSend_log(v10, v11, v12);

    if (self)
    {
      v14 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKAcceptSharesOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    v19 = objc_msgSend_errorsByShareURL(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_errorsByShareURL(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to accept some shares");
    }

    else
    {
      v4 = 0;
    }
  }

  v29 = objc_msgSend_acceptSharesCompletionBlock_wrapper(self, v7, v8);
  v32 = v29;
  if (v29)
  {
    v33 = _Block_copy(v29);
  }

  else
  {
    v34 = objc_msgSend_acceptSharesCompletionBlock(self, v30, v31);
    v33 = _Block_copy(v34);
  }

  if (v33)
  {
    v37 = objc_msgSend_CKClientSuitableError(v4, v35, v36);
    v33[2](v33, v37);

    objc_msgSend_setAcceptSharesCompletionBlock_(self, v38, 0);
  }

  objc_msgSend_setPerShareCompletionBlock_(self, v35, 0);
  v39.receiver = self;
  v39.super_class = CKAcceptSharesOperation;
  [(CKOperation *)&v39 _finishOnCallbackQueueWithError:v4];
}

- (void)ckSignpostBegin
{
  v55 = *MEMORY[0x1E69E9840];
  if (self)
  {
    signpost = self->super._signpost;
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
      v5 = self->super._signpost;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v9 = objc_msgSend_log(v6, v7, v8);

    if (self)
    {
      v10 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKAcceptSharesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
    signpost = self->super._signpost;
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
      v7 = self->super._signpost;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v11 = objc_msgSend_log(v8, v9, v10);

    if (self)
    {
      v12 = self->super._signpost;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKAcceptSharesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/accept-shares", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleShareAcceptanceForURL_share_error_, 2, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKAcceptSharesOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
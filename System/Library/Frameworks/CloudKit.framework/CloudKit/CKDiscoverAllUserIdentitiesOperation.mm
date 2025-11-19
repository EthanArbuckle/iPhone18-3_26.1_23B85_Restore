@interface CKDiscoverAllUserIdentitiesOperation
- (BOOL)CKOperationShouldRun:(id *)a3;
- (CKDiscoverAllUserIdentitiesOperation)init;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)discoverAllUserIdentitiesCompletionBlock;
- (void)handleUserIdentityDiscovery:(id)a3;
- (void)performCKOperation;
- (void)setDiscoverAllUserIdentitiesCompletionBlock:(void *)discoverAllUserIdentitiesCompletionBlock;
- (void)setUserIdentityDiscoveredBlock:(void *)userIdentityDiscoveredBlock;
- (void)userIdentityDiscoveredBlock;
@end

@implementation CKDiscoverAllUserIdentitiesOperation

- (CKDiscoverAllUserIdentitiesOperation)init
{
  v6.receiver = self;
  v6.super_class = CKDiscoverAllUserIdentitiesOperation;
  v2 = [(CKOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identityToContactIdentifiers = v2->_identityToContactIdentifiers;
    v2->_identityToContactIdentifiers = v3;
  }

  return v2;
}

- (void)setUserIdentityDiscoveredBlock:(void *)userIdentityDiscoveredBlock
{
  v6 = userIdentityDiscoveredBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1886098A0;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_userIdentityDiscoveredBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_userIdentityDiscoveredBlock;
    self->_userIdentityDiscoveredBlock = v9;
LABEL_9:
  }
}

- (void)userIdentityDiscoveredBlock
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
    v13 = sub_1883EE074;
    v14 = sub_1883EF734;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188609A9C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_userIdentityDiscoveredBlock);
  }

  return v6;
}

- (void)setDiscoverAllUserIdentitiesCompletionBlock:(void *)discoverAllUserIdentitiesCompletionBlock
{
  v6 = discoverAllUserIdentitiesCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_188609C2C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_discoverAllUserIdentitiesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_discoverAllUserIdentitiesCompletionBlock;
    self->_discoverAllUserIdentitiesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)discoverAllUserIdentitiesCompletionBlock
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
    v13 = sub_1883EE074;
    v14 = sub_1883EF734;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188609E28;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_discoverAllUserIdentitiesCompletionBlock);
  }

  return v6;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v5 = objc_msgSend_discoverAllUserIdentitiesCompletionBlock(self, a2, a3);

  if (!v5)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CKDiscoverAllUserIdentitiesOperation;
  return [(CKOperation *)&v7 CKOperationShouldRun:a3];
}

- (void)performCKOperation
{
  v5 = objc_msgSend_configuration(self, a2, v2);
  isLongLived = objc_msgSend_isLongLived(v5, v6, v7);

  if (isLongLived)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v13, a2, self, @"CKDiscoverAllUserIdentitiesOperation.m", 64, @"%@ isn't allowed to be long lived.", v12);
  }

  v14.receiver = self;
  v14.super_class = CKDiscoverAllUserIdentitiesOperation;
  [(CKOperation *)&v14 performCKOperation];
}

- (void)handleUserIdentityDiscovery:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
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
      LOWORD(v51) = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKDiscoverAllUserIdentitiesOperation", "User identity discovered", &v51, 2u);
    }
  }

  v19 = objc_msgSend_identityToContactIdentifiers(self, v7, v8);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v4);

  v22 = MEMORY[0x1E695DFA8];
  v25 = objc_msgSend_contactIdentifiers(v4, v23, v24);
  v27 = v25;
  if (v25)
  {
    objc_msgSend_setWithArray_(v22, v26, v25);
  }

  else
  {
    objc_msgSend_setWithArray_(v22, v26, MEMORY[0x1E695E0F0]);
  }
  v28 = ;

  if (v21)
  {
    if (!v28 || (objc_msgSend_isSubsetOfSet_(v28, v29, v21) & 1) != 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v33 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v51 = 138412290;
        v52 = v4;
        _os_log_debug_impl(&dword_1883EA000, v33, OS_LOG_TYPE_DEBUG, "Not returning user identity we already saw: %@", &v51, 0xCu);
      }

      goto LABEL_27;
    }

    v36 = objc_msgSend_mutableCopy(v28, v31, v32);
    objc_msgSend_unionSet_(v36, v37, v21);
    v40 = objc_msgSend_allObjects(v36, v38, v39);
    objc_msgSend_setContactIdentifiers_(v4, v41, v40);
  }

  else
  {
    v36 = objc_msgSend_mutableCopy(v28, v29, v30);
  }

  v42 = objc_msgSend_identityToContactIdentifiers(self, v34, v35);
  objc_msgSend_setObject_forKeyedSubscript_(v42, v43, v36, v4);

  v46 = objc_msgSend_userIdentityDiscoveredBlock(self, v44, v45);

  if (v46)
  {
    v49 = objc_msgSend_userIdentityDiscoveredBlock(self, v47, v48);
    (v49)[2](v49, v4);
  }

LABEL_27:
  v50 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKDiscoverAllUserIdentitiesOperation", "Finishing", buf, 2u);
    }
  }

  v19 = objc_msgSend_discoverAllUserIdentitiesCompletionBlock(self, v7, v8);

  if (v19)
  {
    v22 = objc_msgSend_discoverAllUserIdentitiesCompletionBlock(self, v20, v21);
    v25 = objc_msgSend_CKClientSuitableError(v4, v23, v24);
    (v22)[2](v22, v25);

    objc_msgSend_setDiscoverAllUserIdentitiesCompletionBlock_(self, v26, 0);
  }

  objc_msgSend_setUserIdentityDiscoveredBlock_(self, v20, 0);
  v27.receiver = self;
  v27.super_class = CKDiscoverAllUserIdentitiesOperation;
  [(CKOperation *)&v27 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKDiscoverAllUserIdentitiesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKDiscoverAllUserIdentitiesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/discover-all-identities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end
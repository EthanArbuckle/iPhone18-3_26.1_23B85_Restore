@interface CKDiscoverUserIdentitiesOperation
- (BOOL)CKOperationShouldRun:(id *)a3;
- (CKDiscoverUserIdentitiesOperation)init;
- (CKDiscoverUserIdentitiesOperation)initWithUserIdentityLookupInfos:(NSArray *)userIdentityLookupInfos;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)discoverUserIdentitiesCompletionBlock;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleUserIdentityDiscoveryForLookupInfo:(id)a3 userIdentity:(id)a4;
- (void)setDiscoverUserIdentitiesCompletionBlock:(void *)discoverUserIdentitiesCompletionBlock;
- (void)setUserIdentityDiscoveredBlock:(void *)userIdentityDiscoveredBlock;
- (void)userIdentityDiscoveredBlock;
@end

@implementation CKDiscoverUserIdentitiesOperation

- (CKDiscoverUserIdentitiesOperation)init
{
  v8.receiver = self;
  v8.super_class = CKDiscoverUserIdentitiesOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    userIdentityLookupInfos = v2->_userIdentityLookupInfos;
    v2->_userIdentityLookupInfos = v3;

    v5 = objc_opt_new();
    discoveredLookupInfos = v2->_discoveredLookupInfos;
    v2->_discoveredLookupInfos = v5;
  }

  return v2;
}

- (CKDiscoverUserIdentitiesOperation)initWithUserIdentityLookupInfos:(NSArray *)userIdentityLookupInfos
{
  v4 = userIdentityLookupInfos;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_userIdentityLookupInfos;
    v9->_userIdentityLookupInfos = v10;
  }

  return v9;
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
    v12[2] = sub_18860AA90;
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
    v13 = sub_1883EE0A0;
    v14 = sub_1883EF73C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860AC8C;
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

- (void)setDiscoverUserIdentitiesCompletionBlock:(void *)discoverUserIdentitiesCompletionBlock
{
  v6 = discoverUserIdentitiesCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18860AE1C;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_discoverUserIdentitiesCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_discoverUserIdentitiesCompletionBlock;
    self->_discoverUserIdentitiesCompletionBlock = v9;
LABEL_9:
  }
}

- (void)discoverUserIdentitiesCompletionBlock
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
    v13 = sub_1883EE0A0;
    v14 = sub_1883EF73C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860B018;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_discoverUserIdentitiesCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_userIdentityLookupInfos(self, v5, v6);
  objc_msgSend_setUserIdentityLookupInfos_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKDiscoverUserIdentitiesOperation;
  [(CKOperation *)&v9 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v9.receiver = self;
  v9.super_class = CKDiscoverUserIdentitiesOperation;
  v4 = a3;
  [(CKOperation *)&v9 fillFromOperationInfo:v4];
  v7 = objc_msgSend_userIdentityLookupInfos(v4, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setUserIdentityLookupInfos_(self, v8, v7);
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = objc_msgSend_userIdentityLookupInfos(self, a2, a3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v33, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a3)
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v25, @"CKErrorDomain", 12, @"Unexpected user identity lookup info passed to %@: %@", v24, v11);
          }

          goto LABEL_15;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v29, v33, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_msgSend_discoverUserIdentitiesCompletionBlock(self, v13, v14);
  if (v15)
  {
    v18 = v15;
    v19 = objc_msgSend_userIdentityLookupInfos(self, v16, v17);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v28.receiver = self;
      v28.super_class = CKDiscoverUserIdentitiesOperation;
      LOBYTE(v15) = [(CKOperation *)&v28 CKOperationShouldRun:a3];
    }

    else
    {
LABEL_15:
      LOBYTE(v15) = 0;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)handleUserIdentityDiscoveryForLookupInfo:(id)a3 userIdentity:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    signpost = self->super._signpost;
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
      v12 = self->super._signpost;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v16 = objc_msgSend_log(v13, v14, v15);

    if (self)
    {
      v17 = self->super._signpost;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v21 = objc_msgSend_identifier(v18, v19, v20);

    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v31 = 138412290;
      v32 = v6;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v16, OS_SIGNPOST_EVENT, v21, "CKDiscoverUserIdentitiesOperation", "User identity discovered for %@", &v31, 0xCu);
    }
  }

  v22 = objc_msgSend_discoveredLookupInfos(self, v10, v11);
  objc_msgSend_addObject_(v22, v23, v6);

  v26 = objc_msgSend_userIdentityDiscoveredBlock(self, v24, v25);

  if (v26)
  {
    v29 = objc_msgSend_userIdentityDiscoveredBlock(self, v27, v28);
    (v29)[2](v29, v7, v6);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
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
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_EVENT, v16, "CKDiscoverUserIdentitiesOperation", "Finishing", buf, 2u);
    }
  }

  if ((CKCurrentProcessLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24() & 1) == 0)
  {
    v19 = objc_msgSend_userIdentityDiscoveredBlock(self, v17, v18);

    if (v19)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v20 = objc_msgSend_userIdentityLookupInfos(self, v17, v18);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v43, v48, 16);
      if (v22)
      {
        v25 = v22;
        v26 = *v44;
        do
        {
          v27 = 0;
          do
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v20);
            }

            v28 = *(*(&v43 + 1) + 8 * v27);
            v29 = objc_msgSend_discoveredLookupInfos(self, v23, v24);
            v31 = objc_msgSend_containsObject_(v29, v30, v28);

            if ((v31 & 1) == 0)
            {
              v32 = objc_msgSend_userIdentityDiscoveredBlock(self, v23, v24);
              v32[2](v32, 0, v28);
            }

            ++v27;
          }

          while (v25 != v27);
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v43, v48, 16);
        }

        while (v25);
      }
    }
  }

  v33 = objc_msgSend_discoverUserIdentitiesCompletionBlock(self, v17, v18);

  if (v33)
  {
    v36 = objc_msgSend_discoverUserIdentitiesCompletionBlock(self, v34, v35);
    v39 = objc_msgSend_CKClientSuitableError(v4, v37, v38);
    (v36)[2](v36, v39);

    objc_msgSend_setDiscoverUserIdentitiesCompletionBlock_(self, v40, 0);
  }

  objc_msgSend_setUserIdentityDiscoveredBlock_(self, v34, 0);
  v42.receiver = self;
  v42.super_class = CKDiscoverUserIdentitiesOperation;
  [(CKOperation *)&v42 _finishOnCallbackQueueWithError:v4];

  v41 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKDiscoverUserIdentitiesOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKDiscoverUserIdentitiesOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/discover-user-identities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

@end
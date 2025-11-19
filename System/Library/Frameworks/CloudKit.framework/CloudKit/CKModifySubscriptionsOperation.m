@interface CKModifySubscriptionsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKModifySubscriptionsOperation)init;
- (CKModifySubscriptionsOperation)initWithSubscriptionsToSave:(NSArray *)subscriptionsToSave subscriptionIDsToDelete:(NSArray *)subscriptionIDsToDelete;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleSubscriptionDeleteForSubscriptionID:(id)a3 error:(id)a4;
- (void)handleSubscriptionSaveForSubscriptionID:(id)a3 error:(id)a4;
- (void)modifySubscriptionsCompletionBlock;
- (void)perSubscriptionDeleteBlock;
- (void)perSubscriptionSaveBlock;
- (void)setModifySubscriptionsCompletionBlock:(void *)modifySubscriptionsCompletionBlock;
- (void)setModifySubscriptionsCompletionBlockIVar:(id)a3;
- (void)setPerSubscriptionDeleteBlock:(void *)perSubscriptionDeleteBlock;
- (void)setPerSubscriptionSaveBlock:(void *)perSubscriptionSaveBlock;
@end

@implementation CKModifySubscriptionsOperation

- (void)perSubscriptionSaveBlock
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
    v13 = sub_1883EDEBC;
    v14 = sub_1883EF6E4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F8A88;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perSubscriptionSaveBlock);
  }

  return v6;
}

- (void)modifySubscriptionsCompletionBlock
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
    v13 = sub_1883EDEBC;
    v14 = sub_1883EF6E4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F9008;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_modifySubscriptionsCompletionBlock);
  }

  return v6;
}

- (CKModifySubscriptionsOperation)init
{
  v12.receiver = self;
  v12.super_class = CKModifySubscriptionsOperation;
  v2 = [(CKOperation *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    subscriptionsBySubscriptionIDs = v2->_subscriptionsBySubscriptionIDs;
    v2->_subscriptionsBySubscriptionIDs = v3;

    v5 = objc_opt_new();
    subscriptionErrors = v2->_subscriptionErrors;
    v2->_subscriptionErrors = v5;

    v7 = objc_opt_new();
    savedSubscriptions = v2->_savedSubscriptions;
    v2->_savedSubscriptions = v7;

    v9 = objc_opt_new();
    deletedSubscriptionIDs = v2->_deletedSubscriptionIDs;
    v2->_deletedSubscriptionIDs = v9;
  }

  return v2;
}

- (CKModifySubscriptionsOperation)initWithSubscriptionsToSave:(NSArray *)subscriptionsToSave subscriptionIDsToDelete:(NSArray *)subscriptionIDsToDelete
{
  v6 = subscriptionsToSave;
  v7 = subscriptionIDsToDelete;
  v12 = objc_msgSend_init(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_copy(v6, v10, v11);
    v14 = v12->_subscriptionsToSave;
    v12->_subscriptionsToSave = v13;

    v17 = objc_msgSend_copy(v7, v15, v16);
    v18 = v12->_subscriptionIDsToDelete;
    v12->_subscriptionIDsToDelete = v17;
  }

  return v12;
}

- (void)setPerSubscriptionSaveBlock:(void *)perSubscriptionSaveBlock
{
  v6 = perSubscriptionSaveBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885F8A24;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perSubscriptionSaveBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perSubscriptionSaveBlock;
    self->_perSubscriptionSaveBlock = v9;
LABEL_9:
  }
}

- (void)setPerSubscriptionDeleteBlock:(void *)perSubscriptionDeleteBlock
{
  v6 = perSubscriptionDeleteBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885F8C18;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perSubscriptionDeleteBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perSubscriptionDeleteBlock;
    self->_perSubscriptionDeleteBlock = v9;
LABEL_9:
  }
}

- (void)perSubscriptionDeleteBlock
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
    v13 = sub_1883EDEBC;
    v14 = sub_1883EF6E4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F8E14;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perSubscriptionDeleteBlock);
  }

  return v6;
}

- (void)setModifySubscriptionsCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885F8FA4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    modifySubscriptionsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_modifySubscriptionsCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    modifySubscriptionsCompletionBlock = self->_modifySubscriptionsCompletionBlock;
    self->_modifySubscriptionsCompletionBlock = v9;
LABEL_9:
  }
}

- (void)setModifySubscriptionsCompletionBlock:(void *)modifySubscriptionsCompletionBlock
{
  v4 = modifySubscriptionsCompletionBlock == 0;
  v7 = modifySubscriptionsCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setModifySubscriptionsCompletionBlockIVar_(self, v6, v7);
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_subscriptionsToSave(self, v5, v6);
  objc_msgSend_setSubscriptionsToSave_(v4, v8, v7);

  v11 = objc_msgSend_subscriptionIDsToDelete(self, v9, v10);
  objc_msgSend_setSubscriptionIDsToDelete_(v4, v12, v11);

  v13.receiver = self;
  v13.super_class = CKModifySubscriptionsOperation;
  [(CKDatabaseOperation *)&v13 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKModifySubscriptionsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:v4];
  v7 = objc_msgSend_subscriptionsToSave(v4, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setSubscriptionsToSave_(self, v8, v7);

  v11 = objc_msgSend_subscriptionIDsToDelete(v4, v9, v10);

  objc_msgSend_setSubscriptionIDsToDelete_(self, v12, v11);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v14.receiver = self;
  v14.super_class = CKModifySubscriptionsOperation;
  if ([(CKOperation *)&v14 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perSubscriptionSaveBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v11 = objc_msgSend_perSubscriptionDeleteBlock(self, v6, v7);
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = objc_msgSend_modifySubscriptionsCompletionBlock(self, v9, v10);
      v5 = v12 != 0;
    }
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v7 = objc_msgSend_subscriptionsToSave(self, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v80, v85, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v81;
    do
    {
      v12 = 0;
      do
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v80 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a3)
          {
            v60 = objc_opt_class();
            v61 = NSStringFromClass(v60);
            *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v62, @"CKErrorDomain", 12, @"Unexpected subscription object passed to %@: %@", v61, v13);
          }

          goto LABEL_43;
        }

        if (self)
        {
          subscriptionsBySubscriptionIDs = self->_subscriptionsBySubscriptionIDs;
        }

        else
        {
          subscriptionsBySubscriptionIDs = 0;
        }

        v15 = subscriptionsBySubscriptionIDs;
        v18 = objc_msgSend_subscriptionID(v13, v16, v17);
        objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v13, v18);

        v22 = objc_msgSend_subscriptionID(v13, v20, v21);
        LODWORD(v18) = objc_msgSend_containsObject_(v4, v23, v22);

        if (v18)
        {
          if (!a3)
          {
            goto LABEL_43;
          }

          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v24, @"CKErrorDomain", 12, @"You can't save the same subscription twice: %@", v13);
          *a3 = v63 = 0;
          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = objc_msgSend_zoneID(v13, v25, v26);
          v29 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v28, v27, a3);

          if ((v29 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = objc_msgSend_zoneID(v13, v30, v31);
            v34 = objc_msgSend_zoneIDHasCorrectDatabaseScope_error_(self, v33, v32, a3);

            if (!v34)
            {
              goto LABEL_43;
            }
          }
        }

        v35 = objc_msgSend_subscriptionID(v13, v30, v31);
        objc_msgSend_addObject_(v4, v36, v35);

        ++v12;
      }

      while (v10 != v12);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v37, &v80, v85, 16);
      v10 = v38;
    }

    while (v38);
  }

  v7 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v41 = objc_msgSend_subscriptionIDsToDelete(self, v39, v40);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v76, v84, 16);
  if (!v43)
  {
    goto LABEL_29;
  }

  v44 = v43;
  v45 = *v77;
  while (2)
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v77 != v45)
      {
        objc_enumerationMutation(v41);
      }

      v47 = *(*(&v76 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a3)
        {
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v66, @"CKErrorDomain", 12, @"Unexpected subscription ID object passed to %@: %@", v65, v47);
        }

        goto LABEL_42;
      }

      if (objc_msgSend_containsObject_(v4, v48, v47))
      {
        v67 = a3;
        if (a3)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v49, @"CKErrorDomain", 12, @"You can't save and delete a subscription in the same operation: %@", v47);
          *v67 = LABEL_41:;
        }

LABEL_42:

        goto LABEL_43;
      }

      if (objc_msgSend_containsObject_(v7, v49, v47))
      {
        v67 = a3;
        if (a3)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v50, @"CKErrorDomain", 12, @"You can't delete the same subscription twice: %@", v47);
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      objc_msgSend_addObject_(v7, v50, v47);
    }

    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v51, &v76, v84, 16);
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v54 = objc_msgSend_subscriptionsToSave(self, v52, v53);
  if (objc_msgSend_count(v54, v55, v56))
  {

    v59 = a3;
    goto LABEL_46;
  }

  v70 = objc_msgSend_subscriptionIDsToDelete(self, v57, v58);
  v73 = objc_msgSend_count(v70, v71, v72);

  v59 = a3;
  if (v73)
  {
LABEL_46:
    v75.receiver = self;
    v75.super_class = CKModifySubscriptionsOperation;
    v63 = [(CKDatabaseOperation *)&v75 CKOperationShouldRun:v59];
    goto LABEL_44;
  }

LABEL_43:
  v63 = 0;
LABEL_44:

  v68 = *MEMORY[0x1E69E9840];
  return v63;
}

- (void)handleSubscriptionSaveForSubscriptionID:(id)a3 error:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_CKClientSuitableError(a4, v7, v8);
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
        v46 = 138412546;
        v47 = v6;
        v48 = 2112;
        v49 = v9;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v18, OS_SIGNPOST_EVENT, v23, "CKModifySubscriptionsOperation", "Subscription %@ saved with error: %@", &v46, 0x16u);
      }
    }

    if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
    {
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_subscriptionErrors, v24, v9, v6);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(0, v24, v9, v6);
      }
    }

    v26 = 0;
  }

  else
  {
    if (v11)
    {
      if (self)
      {
        v27 = self->super.super._signpost;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v31 = objc_msgSend_log(v28, v29, v30);

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

      if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        v46 = 138412290;
        v47 = v6;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v31, OS_SIGNPOST_EVENT, v36, "CKModifySubscriptionsOperation", "Subscription %@ saved", &v46, 0xCu);
      }
    }

    if (self)
    {
      objc_msgSend_objectForKeyedSubscript_(self->_subscriptionsBySubscriptionIDs, v12, v6);
    }

    else
    {
      objc_msgSend_objectForKeyedSubscript_(0, v12, v6);
    }
    v26 = ;
    if ((objc_msgSend_canDropItemResultsEarly(self, v37, v38) & 1) == 0)
    {
      if (self)
      {
        objc_msgSend_addObject_(self->_savedSubscriptions, v24, v26);
      }

      else
      {
        objc_msgSend_addObject_(0, v24, v26);
      }
    }
  }

  v39 = objc_msgSend_perSubscriptionSaveBlock_wrapper(self, v24, v25);
  v42 = v39;
  if (v39)
  {
    v43 = _Block_copy(v39);
  }

  else
  {
    v44 = objc_msgSend_perSubscriptionSaveBlock(self, v40, v41);
    v43 = _Block_copy(v44);
  }

  if (v43)
  {
    v43[2](v43, v6, v26, v9);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)handleSubscriptionDeleteForSubscriptionID:(id)a3 error:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_CKClientSuitableError(a4, v7, v8);
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
      if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
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

    *v48 = 138412290;
    *&v48[4] = v6;
    v24 = "Subscription %@ deleted";
    v25 = v18;
    v26 = v36;
    v27 = 12;
    goto LABEL_20;
  }

  if (!v11)
  {
    if ((objc_msgSend_canDropItemResultsEarly(self, v12, v13) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
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
    *v48 = 138412546;
    *&v48[4] = v6;
    *&v48[12] = 2112;
    *&v48[14] = v9;
    v24 = "Subscription %@ deleted with error: %@";
    v25 = v18;
    v26 = v23;
    v27 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v25, OS_SIGNPOST_EVENT, v26, "CKModifySubscriptionsOperation", v24, v48, v27);
  }

LABEL_21:

  if ((objc_msgSend_canDropItemResultsEarly(self, v37, v38) & 1) == 0)
  {
    if (!v9)
    {
LABEL_28:
      if (self)
      {
        objc_msgSend_addObject_(self->_deletedSubscriptionIDs, v39, v6, *v48, *&v48[8], v49);
      }

      else
      {
        objc_msgSend_addObject_(0, v39, v6, *v48, *&v48[8], v49);
      }

      goto LABEL_30;
    }

LABEL_25:
    if (self)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_subscriptionErrors, v39, v9, v6, *v48, *&v48[16], v49);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(0, v39, v9, v6, *v48, *&v48[16], v49);
    }
  }

LABEL_30:
  v41 = objc_msgSend_perSubscriptionDeleteBlock_wrapper(self, v39, v40, *v48, *&v48[8]);
  v44 = v41;
  if (v41)
  {
    v45 = _Block_copy(v41);
  }

  else
  {
    v46 = objc_msgSend_perSubscriptionDeleteBlock(self, v42, v43);
    v45 = _Block_copy(v46);
  }

  if (v45)
  {
    v45[2](v45, v6, v9);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKModifySubscriptionsOperation", "Finishing", buf, 2u);
    }
  }

  if (!v4)
  {
    if (self)
    {
      v19 = objc_msgSend_count(self->_subscriptionErrors, v7, v8);
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
        objc_msgSend_setObject_forKeyedSubscript_(v20, v21, self->_subscriptionErrors, @"CKPartialErrors");
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v20, v21, 0, @"CKPartialErrors");
      }

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1011, v22, @"Failed to modify some subscriptions");
    }

    else
    {
      v4 = 0;
    }
  }

  v24 = objc_msgSend_modifySubscriptionsCompletionBlock_wrapper(self, v7, v8);
  v27 = v24;
  if (v24)
  {
    v28 = _Block_copy(v24);
  }

  else
  {
    v29 = objc_msgSend_modifySubscriptionsCompletionBlock(self, v25, v26);
    v28 = _Block_copy(v29);
  }

  if (v28)
  {
    if (self)
    {
      v31 = self->_savedSubscriptions;
      deletedSubscriptionIDs = self->_deletedSubscriptionIDs;
    }

    else
    {
      v31 = 0;
      deletedSubscriptionIDs = 0;
    }

    v33 = deletedSubscriptionIDs;
    v36 = objc_msgSend_CKClientSuitableError(v4, v34, v35);
    v28[2](v28, v31, v33, v36);

    objc_msgSend_setModifySubscriptionsCompletionBlock_(self, v37, 0);
  }

  objc_msgSend_setPerSubscriptionSaveBlock_(self, v30, 0);
  objc_msgSend_setPerSubscriptionDeleteBlock_(self, v38, 0);
  v39.receiver = self;
  v39.super_class = CKModifySubscriptionsOperation;
  [(CKOperation *)&v39 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKModifySubscriptionsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKModifySubscriptionsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/modify-subscriptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleSubscriptionSaveForSubscriptionID_error_, 1, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v8, v7, sel_handleSubscriptionDeleteForSubscriptionID_error_, 1, 0);

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___CKModifySubscriptionsOperation;
  objc_msgSendSuper2(&v9, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
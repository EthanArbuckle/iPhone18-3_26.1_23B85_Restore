@interface CKFetchSubscriptionsOperation
+ (CKFetchSubscriptionsOperation)fetchAllSubscriptionsOperation;
+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3;
- (BOOL)CKOperationShouldRun:(id *)a3;
- (BOOL)hasCKOperationCallbacksSet;
- (CKFetchSubscriptionsOperation)init;
- (CKFetchSubscriptionsOperation)initWithSubscriptionIDs:(NSArray *)subscriptionIDs;
- (id)activityCreate;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)a3;
- (void)fetchSubscriptionCompletionBlock;
- (void)fillFromOperationInfo:(id)a3;
- (void)fillOutOperationInfo:(id)a3;
- (void)handleSubscriptionFetchForSubscriptionID:(id)a3 subscription:(id)a4 error:(id)a5;
- (void)perSubscriptionCompletionBlock;
- (void)setFetchSubscriptionCompletionBlock:(void *)fetchSubscriptionCompletionBlock;
- (void)setFetchSubscriptionCompletionBlockIVar:(id)a3;
- (void)setPerSubscriptionCompletionBlock:(void *)perSubscriptionCompletionBlock;
@end

@implementation CKFetchSubscriptionsOperation

- (CKFetchSubscriptionsOperation)init
{
  v8.receiver = self;
  v8.super_class = CKFetchSubscriptionsOperation;
  v2 = [(CKOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    subscriptionsBySubscriptionID = v2->_subscriptionsBySubscriptionID;
    v2->_subscriptionsBySubscriptionID = v3;

    v5 = objc_opt_new();
    subscriptionErrors = v2->_subscriptionErrors;
    v2->_subscriptionErrors = v5;
  }

  return v2;
}

- (void)setPerSubscriptionCompletionBlock:(void *)perSubscriptionCompletionBlock
{
  v6 = perSubscriptionCompletionBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1885F6F70;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_perSubscriptionCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_perSubscriptionCompletionBlock;
    self->_perSubscriptionCompletionBlock = v9;
LABEL_9:
  }
}

- (void)perSubscriptionCompletionBlock
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
    v13 = sub_1883EDE90;
    v14 = sub_1883EF6DC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F716C;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perSubscriptionCompletionBlock);
  }

  return v6;
}

- (void)setFetchSubscriptionCompletionBlockIVar:(id)a3
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
    v12[2] = sub_1885F72FC;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    fetchSubscriptionCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_fetchSubscriptionCompletionBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    fetchSubscriptionCompletionBlock = self->_fetchSubscriptionCompletionBlock;
    self->_fetchSubscriptionCompletionBlock = v9;
LABEL_9:
  }
}

- (void)fetchSubscriptionCompletionBlock
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
    v13 = sub_1883EDE90;
    v14 = sub_1883EF6DC;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F74F8;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_fetchSubscriptionCompletionBlock);
  }

  return v6;
}

- (void)setFetchSubscriptionCompletionBlock:(void *)fetchSubscriptionCompletionBlock
{
  v4 = fetchSubscriptionCompletionBlock == 0;
  v7 = fetchSubscriptionCompletionBlock;
  objc_msgSend_setCanDropItemResultsEarly_(self, v5, v4);
  objc_msgSend_setFetchSubscriptionCompletionBlockIVar_(self, v6, v7);
}

+ (CKFetchSubscriptionsOperation)fetchAllSubscriptionsOperation
{
  v2 = objc_alloc_init(objc_opt_class());
  objc_msgSend_setIsFetchAllSubscriptionsOperation_(v2, v3, 1);

  return v2;
}

- (CKFetchSubscriptionsOperation)initWithSubscriptionIDs:(NSArray *)subscriptionIDs
{
  v4 = subscriptionIDs;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v7, v8);
    v11 = v9->_subscriptionIDs;
    v9->_subscriptionIDs = v10;
  }

  return v9;
}

- (void)fillOutOperationInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_subscriptionIDs(self, v5, v6);
  objc_msgSend_setSubscriptionIDs_(v4, v8, v7);

  AllSubscriptionsOperation = objc_msgSend_isFetchAllSubscriptionsOperation(self, v9, v10);
  objc_msgSend_setIsFetchAllSubscriptionsOperation_(v4, v12, AllSubscriptionsOperation);
  v13.receiver = self;
  v13.super_class = CKFetchSubscriptionsOperation;
  [(CKDatabaseOperation *)&v13 fillOutOperationInfo:v4];
}

- (void)fillFromOperationInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CKFetchSubscriptionsOperation;
  v4 = a3;
  [(CKDatabaseOperation *)&v13 fillFromOperationInfo:v4];
  v7 = objc_msgSend_subscriptionIDs(v4, v5, v6, v13.receiver, v13.super_class);
  objc_msgSend_setSubscriptionIDs_(self, v8, v7);

  AllSubscriptionsOperation = objc_msgSend_isFetchAllSubscriptionsOperation(v4, v9, v10);
  objc_msgSend_setIsFetchAllSubscriptionsOperation_(self, v12, AllSubscriptionsOperation);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKFetchSubscriptionsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perSubscriptionCompletionBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_fetchSubscriptionCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_subscriptionIDs(self, a2, a3);
  if (v5)
  {
  }

  else if ((objc_msgSend_isFetchAllSubscriptionsOperation(self, v6, v7) & 1) == 0)
  {
    if (a3)
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v35, @"CKErrorDomain", 12, @"property subscriptionIDs must not be be nil for %@", v34);
    }

    goto LABEL_19;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = objc_msgSend_subscriptionIDs(self, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v39, v43, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a3)
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *a3 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKErrorDomain", 12, @"Unexpected subscriptionID passed to %@: %@", v30, v16);
          }

          goto LABEL_19;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v39, v43, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ((objc_msgSend_isFetchAllSubscriptionsOperation(self, v18, v19) & 1) != 0 || (objc_msgSend_subscriptionIDs(self, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_count(v22, v23, v24), v22, v25))
  {
    v26 = objc_msgSend_fetchSubscriptionCompletionBlock(self, v20, v21);
    if (v26)
    {

LABEL_23:
      v38.receiver = self;
      v38.super_class = CKFetchSubscriptionsOperation;
      result = [(CKDatabaseOperation *)&v38 CKOperationShouldRun:a3];
      goto LABEL_24;
    }

    v36 = objc_msgSend_perSubscriptionCompletionBlock(self, v27, v28);

    if (v36)
    {
      goto LABEL_23;
    }
  }

LABEL_19:
  result = 0;
LABEL_24:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)handleSubscriptionFetchForSubscriptionID:(id)a3 subscription:(id)a4 error:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_CKClientSuitableError(a5, v10, v11);
  if (self)
  {
    signpost = self->super.super._signpost;
  }

  else
  {
    signpost = 0;
  }

  v14 = signpost;

  if (!v12)
  {
    if (!v14)
    {
      if ((objc_msgSend_canDropItemResultsEarly(self, v15, v16) & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (self)
    {
      v31 = self->super.super._signpost;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v21 = objc_msgSend_log(v32, v33, v34);

    if (self)
    {
      v35 = self->super.super._signpost;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v39 = objc_msgSend_identifier(v36, v37, v38);

    if ((v39 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v21))
    {
      goto LABEL_21;
    }

    *v51 = 138412290;
    *&v51[4] = v8;
    v27 = "Subscription %@ fetched";
    v28 = v21;
    v29 = v39;
    v30 = 12;
    goto LABEL_20;
  }

  if (!v14)
  {
    if ((objc_msgSend_canDropItemResultsEarly(self, v15, v16) & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (self)
  {
    v17 = self->super.super._signpost;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v21 = objc_msgSend_log(v18, v19, v20);

  if (self)
  {
    v22 = self->super.super._signpost;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v26 = objc_msgSend_identifier(v23, v24, v25);

  if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v51 = 138412546;
    *&v51[4] = v8;
    *&v51[12] = 2112;
    *&v51[14] = v12;
    v27 = "Subscription %@ fetched with error: %@";
    v28 = v21;
    v29 = v26;
    v30 = 22;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1883EA000, v28, OS_SIGNPOST_EVENT, v29, "CKFetchSubscriptionsOperation", v27, v51, v30);
  }

LABEL_21:

  if ((objc_msgSend_canDropItemResultsEarly(self, v40, v41) & 1) == 0)
  {
    if (!v12)
    {
LABEL_27:
      if (self)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_subscriptionsBySubscriptionID, v42, v9, v8, *v51, *&v51[8]);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(0, v42, v9, v8, *v51, *&v51[8]);
      }

      goto LABEL_29;
    }

LABEL_25:
    if (self)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_subscriptionErrors, v42, v12, v8, *v51, *&v51[16], v52);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(0, v42, v12, v8, *v51, *&v51[16], v52);
    }

    goto LABEL_27;
  }

LABEL_29:
  v44 = objc_msgSend_perSubscriptionCompletionBlock_wrapper(self, v42, v43, *v51, *&v51[8]);
  v47 = v44;
  if (v44)
  {
    v48 = _Block_copy(v44);
  }

  else
  {
    v49 = objc_msgSend_perSubscriptionCompletionBlock(self, v45, v46);
    v48 = _Block_copy(v49);
  }

  if (v48)
  {
    v48[2](v48, v8, v9, v12);
  }

  v50 = *MEMORY[0x1E69E9840];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKFetchSubscriptionsOperation", "Finishing", buf, 2u);
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

      v4 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v23, @"CKInternalErrorDomain", 1011, v22, @"Failed to fetch some subscriptions");
    }

    else
    {
      v4 = 0;
    }
  }

  v24 = objc_msgSend_fetchSubscriptionCompletionBlock_wrapper(self, v7, v8);
  v27 = v24;
  if (v24)
  {
    v28 = _Block_copy(v24);
  }

  else
  {
    v29 = objc_msgSend_fetchSubscriptionCompletionBlock(self, v25, v26);
    v28 = _Block_copy(v29);
  }

  if (v28)
  {
    if (self)
    {
      subscriptionsBySubscriptionID = self->_subscriptionsBySubscriptionID;
    }

    else
    {
      subscriptionsBySubscriptionID = 0;
    }

    v32 = subscriptionsBySubscriptionID;
    v35 = objc_msgSend_CKClientSuitableError(v4, v33, v34);
    v28[2](v28, v32, v35);

    objc_msgSend_setFetchSubscriptionCompletionBlock_(self, v36, 0);
  }

  objc_msgSend_setPerSubscriptionCompletionBlock_(self, v30, 0);
  v37.receiver = self;
  v37.super_class = CKFetchSubscriptionsOperation;
  [(CKOperation *)&v37 _finishOnCallbackQueueWithError:v4];
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKFetchSubscriptionsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKFetchSubscriptionsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/fetch-subscriptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)a3
{
  v4 = a3;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v6, v5, sel_handleSubscriptionFetchForSubscriptionID_subscription_error_, 2, 0);

  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKFetchSubscriptionsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, v4);
}

@end
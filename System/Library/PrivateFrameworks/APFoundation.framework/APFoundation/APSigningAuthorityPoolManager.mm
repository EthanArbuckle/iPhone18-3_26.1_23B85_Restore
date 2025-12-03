@interface APSigningAuthorityPoolManager
- (APSigningAuthorityPoolManager)initWithName:(id)name poolSize:(unint64_t)size numberToStash:(unint64_t)stash;
- (APSigningAuthorityPoolManager)initWithName:(id)name poolSize:(unint64_t)size numberToStash:(unint64_t)stash stateChangeHandler:(id)handler setupCompletion:(id)completion;
- (BOOL)_retrySetupWithError:(unint64_t)error;
- (BOOL)_rotateWithError:(id *)error;
- (BOOL)_trySetup;
- (BOOL)rotateWithError:(id *)error;
- (id)signatureForData:(id)data error:(id *)error;
- (id)signatureForRawData:(id)data error:(id *)error;
- (unint64_t)_numSigningAuthoritiesToCreate;
- (void)_addSigningAuthorityToPool:(id)pool;
- (void)_callSetupCompletionHandler;
- (void)_clearStashedContextsIfIndicated;
- (void)_endSetup;
- (void)_evaluateRotationEntitlement;
- (void)_handleCompletedSigningAuthority:(id)authority;
- (void)_refillSigningAuthorityPool;
- (void)_removeAllSigningAuthorities;
- (void)_removeSigningAuthority:(id)authority shouldRefill:(BOOL)refill;
- (void)_sendJourneyAnalyticsForAuthority:(id)authority;
- (void)setCurrentSigningAuthority:(id)authority;
- (void)setPoolSize:(unint64_t)size;
- (void)setState:(int64_t)state;
- (void)setupWithCompletion:(id)completion;
- (void)setupWithTimeout:(double)timeout completion:(id)completion;
@end

@implementation APSigningAuthorityPoolManager

- (APSigningAuthorityPoolManager)initWithName:(id)name poolSize:(unint64_t)size numberToStash:(unint64_t)stash stateChangeHandler:(id)handler setupCompletion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  completionCopy = completion;
  if (objc_msgSend_isAllowedClient(APSigningClientValidator, v16, v17, v18))
  {
    v65.receiver = self;
    v65.super_class = APSigningAuthorityPoolManager;
    v19 = [(APSigningAuthorityPoolManager *)&v65 init];
    if (v19)
    {
      v20 = _Block_copy(handlerCopy);
      stateChangeHandler = v19->_stateChangeHandler;
      v19->_stateChangeHandler = v20;

      v19->_lastStateChangeTime = CFAbsoluteTimeGetCurrent();
      objc_msgSend__evaluateRotationEntitlement(v19, v22, v23, v24);
      objc_msgSend_setPoolSize_(v19, v25, size, v26);
      v30 = objc_msgSend_poolSize(v19, v27, v28, v29);
      if (v30 >= stash)
      {
        stashCopy = stash;
      }

      else
      {
        stashCopy = v30;
      }

      v19->_numberToStash = stashCopy;
      objc_storeStrong(&v19->_name, name);
      v32 = objc_alloc(MEMORY[0x1E695DF70]);
      v36 = objc_msgSend_poolSize(v19, v33, v34, v35);
      v39 = objc_msgSend_initWithCapacity_(v32, v37, v36, v38);
      signingAuthorityPool = v19->_signingAuthorityPool;
      v19->_signingAuthorityPool = v39;

      v41 = objc_alloc_init(APUnfairRecursiveLock);
      lock = v19->_lock;
      v19->_lock = v41;

      v19->_retryLevel = 0;
      v19->_retryStartTime = 0.0;
      objc_msgSend__clearStashedContextsIfIndicated(v19, v43, v44, v45);
      objc_msgSend_setupWithCompletion_(v19, v46, completionCopy, v47);
    }

    else
    {
      v56 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1BADC1000, v56, OS_LOG_TYPE_ERROR, "Unable to create pool manager, super class initialization failed.", buf, 2u);
      }

      objc_msgSend_setState_(0, v57, 18002, v58);
      if (completionCopy)
      {
        v62 = objc_msgSend_state(0, v59, v60, v61);
        completionCopy[2](completionCopy, v62);
      }
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    v48 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v67 = @"Unable to create pool manager, not a valid client.";
      _os_log_impl(&dword_1BADC1000, v48, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    APSimulateCrash(5, @"Unable to create pool manager, not a valid client.", 0);
    objc_msgSend_setState_(self, v49, 18002, v50);
    if (completionCopy)
    {
      v54 = objc_msgSend_state(self, v51, v52, v53);
      completionCopy[2](completionCopy, v54);
    }

    selfCopy = 0;
  }

  v63 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (APSigningAuthorityPoolManager)initWithName:(id)name poolSize:(unint64_t)size numberToStash:(unint64_t)stash
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ((objc_msgSend_isAllowedClient(APSigningClientValidator, v10, v11, v12) & 1) == 0)
  {
    v39 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = @"Unable to create pool manager, not a valid client.";
      _os_log_impl(&dword_1BADC1000, v39, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    APSimulateCrash(5, @"Unable to create pool manager, not a valid client.", 0);
    goto LABEL_10;
  }

  v42.receiver = self;
  v42.super_class = APSigningAuthorityPoolManager;
  v13 = [(APSigningAuthorityPoolManager *)&v42 init];
  if (!v13)
  {
    self = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, &self->super, OS_LOG_TYPE_ERROR, "Unable to create pool manager, super class initialization failed.", buf, 2u);
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  v14 = v13;
  v13->_lastStateChangeTime = CFAbsoluteTimeGetCurrent();
  objc_msgSend__evaluateRotationEntitlement(v14, v15, v16, v17);
  objc_msgSend_setPoolSize_(v14, v18, size, v19);
  v23 = objc_msgSend_poolSize(v14, v20, v21, v22);
  if (v23 >= stash)
  {
    stashCopy = stash;
  }

  else
  {
    stashCopy = v23;
  }

  v14->_numberToStash = stashCopy;
  objc_storeStrong(&v14->_name, name);
  v25 = objc_alloc(MEMORY[0x1E695DF70]);
  v29 = objc_msgSend_poolSize(v14, v26, v27, v28);
  v32 = objc_msgSend_initWithCapacity_(v25, v30, v29, v31);
  signingAuthorityPool = v14->_signingAuthorityPool;
  v14->_signingAuthorityPool = v32;

  v34 = objc_alloc_init(APUnfairRecursiveLock);
  lock = v14->_lock;
  v14->_lock = v34;

  v14->_state = 18004;
  objc_msgSend__clearStashedContextsIfIndicated(v14, v36, v37, v38);
LABEL_11:

  v40 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)setupWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_setState_(self, v7, 18000, v8);
  v9 = [APUnfairLock alloc];
  v12 = objc_msgSend_initWithOptions_(v9, v10, 1, v11);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v13 = dispatch_queue_create("com.apple.ap.signingAuthorityPoolManager.setupWatchDog", 0);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1BAF0B220;
  v26[3] = &unk_1E7F1CDF8;
  v14 = v12;
  v27 = v14;
  v29 = v30;
  v15 = completionCopy;
  v28 = v15;
  objc_msgSend_setupWithCompletion_(self, v16, v26, v17);
  v18 = dispatch_time(0, (timeout * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF0B2AC;
  block[3] = &unk_1E7F1CE20;
  v22 = v14;
  selfCopy = self;
  v24 = v15;
  v25 = v30;
  v19 = v15;
  v20 = v14;
  dispatch_after(v18, v13, block);

  _Block_object_dispose(v30, 8);
}

- (void)setupWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_msgSend_setupQueue(self, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_state(self, v9, v10, v11);
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v13 = objc_msgSend_lock(self, v9, v10, v11);
    objc_msgSend_lock(v13, v14, v15, v16);

    objc_msgSend_setState_(self, v17, 18000, v18);
    v19 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&dword_1BADC1000, v19, OS_LOG_TYPE_INFO, "Pool manager is being setup", v33, 2u);
    }

    objc_msgSend_setSetupCompletion_(self, v20, completionCopy, v21);
    objc_msgSend_setRetryLevel_(self, v22, 0, v23);
    objc_msgSend__trySetup(self, v24, v25, v26);
    completionCopy = objc_msgSend_lock(self, v27, v28, v29);
    objc_msgSend_unlock(completionCopy, v30, v31, v32);
  }
}

- (void)setState:(int64_t)state
{
  v50 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_state(self, v7, v8, v9);
    v11 = sub_1BAF0B660(v10);
    v12 = sub_1BAF0B660(state);
    objc_msgSend_lastStateChangeTime(self, v13, v14, v15);
    v17 = Current - v16;
    v18 = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(self, v19, v20, v21);
    v40 = 134219010;
    selfCopy2 = self;
    v42 = 2112;
    stateCopy = v11;
    v44 = 2112;
    v45 = v12;
    v46 = 2048;
    v47 = v17;
    v48 = 2048;
    v49 = v18 - v22;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Signing pool manager %p state %@ -> %@ (%.6f) (%.6f)", &v40, 0x34u);
  }

  objc_msgSend_setLastStateChangeTime_(self, v23, v24, v25, Current);
  v26 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v40 = 134218240;
    selfCopy2 = self;
    v42 = 2050;
    stateCopy = state;
    _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_INFO, "Pool manager %p state changed to %{public}ld", &v40, 0x16u);
  }

  self->_state = state;
  v30 = objc_msgSend_stateChangeHandler(self, v27, v28, v29);

  if (v30)
  {
    v34 = objc_msgSend_stateChangeHandler(self, v31, v32, v33);
    v38 = objc_msgSend_state(self, v35, v36, v37);
    v34[2](v34, v38);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)setPoolSize:(unint64_t)size
{
  v8 = *MEMORY[0x1E69E9840];
  if (size >= 5)
  {
    v4 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = @"Requested pool size is greater than max allowed pool size, setting poolSize to max pool size.";
      _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v6, 0xCu);
    }

    size = 4;
  }

  self->_poolSize = size;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateRotationEntitlement
{
  if (qword_1EDBA1F10 == -1)
  {
    v2 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_INFO, "Setting the signing entitlement value.", v5, 2u);
    }

    qword_1EDBA1F10 = objc_msgSend_hasEntitlement_(APSigningClientValidator, v3, @"com.apple.ap.promotedcontent.signing.client", v4);
  }
}

- (void)setCurrentSigningAuthority:(id)authority
{
  v26 = *MEMORY[0x1E69E9840];
  authorityCopy = authority;
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 134218240;
    selfCopy = self;
    v24 = 2048;
    v25 = authorityCopy;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Pool manager %p setting current authority %p", &v22, 0x16u);
  }

  if (self->_currentSigningAuthority != authorityCopy)
  {
    v10 = objc_msgSend_lock(self, v7, v8, v9);
    objc_msgSend_lock(v10, v11, v12, v13);

    objc_storeStrong(&self->_currentSigningAuthority, authority);
    v17 = objc_msgSend_lock(self, v14, v15, v16);
    objc_msgSend_unlock(v17, v18, v19, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_refillSigningAuthorityPool
{
  v117 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_state(self, a2, v2, v3) == 18002)
  {
    v8 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy5 = self;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_INFO, "Pool manager %p is in a permanent failure state. Cannot refill.", buf, 0xCu);
    }

    objc_msgSend__endSetup(self, v9, v10, v11);
  }

  else
  {
    v12 = objc_msgSend_lock(self, v5, v6, v7);
    objc_msgSend_lock(v12, v13, v14, v15);

    v16 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      selfCopy5 = self;
      v115 = 2048;
      v116 = objc_msgSend_retryLevel(self, v17, v18, v19);
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_INFO, "Pool manager %p refilling (retry %ld)", buf, 0x16u);
    }

    if (objc_msgSend__numSigningAuthoritiesToCreate(self, v20, v21, v22))
    {
      Current = CFAbsoluteTimeGetCurrent();
      objc_msgSend_setRefillStartTime_(self, v24, v25, v26, Current);
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v30 = objc_msgSend_signingAuthorityPool(self, v27, v28, v29);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v108, v112, 16);
      if (v32)
      {
        v36 = v32;
        v37 = 0;
        v38 = *v109;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v109 != v38)
            {
              objc_enumerationMutation(v30);
            }

            v37 += objc_msgSend_usingStashedContext(*(*(&v108 + 1) + 8 * i), v33, v34, v35);
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v108, v112, 16);
        }

        while (v36);
      }

      else
      {
        v37 = 0;
      }

      v54 = objc_msgSend_numberToStash(self, v51, v52, v53) != v37;
      v55 = [APSigningAuthority alloc];
      v59 = objc_msgSend_name(self, v56, v57, v58);
      v62 = objc_msgSend_initWithPoolName_(v55, v60, v59, v61);

      if (v62 && objc_msgSend_failureError(v62, v63, v64, v65) != 7203)
      {
        v78 = objc_msgSend_setupQueue(self, v63, v64, v65);

        if (v78)
        {
          v82 = objc_msgSend_retryLevel(self, v79, v80, v81);
          v85 = objc_msgSend_objectAtIndexedSubscript_(&unk_1F39091D8, v83, v82, v84);
          v89 = objc_msgSend_unsignedLongLongValue(v85, v86, v87, v88);
          v90 = dispatch_time(0, 1000000000 * v89);
          v94 = objc_msgSend_setupQueue(self, v91, v92, v93);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1BAF0BD70;
          block[3] = &unk_1E7F1CE70;
          v107 = v54;
          v105 = v62;
          selfCopy3 = self;
          dispatch_after(v90, v94, block);

          v95 = v105;
        }

        else
        {
          v95 = APLogForCategory(0x30uLL);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            selfCopy5 = self;
            _os_log_impl(&dword_1BADC1000, v95, OS_LOG_TYPE_ERROR, "Pool manager %p cannot refill, setup queue has been terminated.", buf, 0xCu);
          }
        }

        v99 = objc_msgSend_lock(self, v96, v97, v98);
        objc_msgSend_unlock(v99, v100, v101, v102);
      }

      else
      {
        objc_msgSend__endSetup(self, v63, v64, v65);
        objc_msgSend_setState_(self, v66, 18002, v67);
        v71 = objc_msgSend_lock(self, v68, v69, v70);
        objc_msgSend_unlock(v71, v72, v73, v74);

        objc_msgSend__callSetupCompletionHandler(self, v75, v76, v77);
      }
    }

    else
    {
      v40 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy5 = self;
        _os_log_impl(&dword_1BADC1000, v40, OS_LOG_TYPE_INFO, "No need to refill signing authority pool %p, it's full.", buf, 0xCu);
      }

      objc_msgSend__endSetup(self, v41, v42, v43);
      v47 = objc_msgSend_lock(self, v44, v45, v46);
      objc_msgSend_unlock(v47, v48, v49, v50);
    }
  }

  v103 = *MEMORY[0x1E69E9840];
}

- (void)_handleCompletedSigningAuthority:(id)authority
{
  v114 = *MEMORY[0x1E69E9840];
  authorityCopy = authority;
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(self, v7, v8, v9);
    v108 = 134218498;
    selfCopy6 = self;
    v110 = 2112;
    v111 = authorityCopy;
    v112 = 2048;
    v113 = Current - v10;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Pool manager %p received completed signing authority %@ in %.6f seconds since refill started.", &v108, 0x20u);
  }

  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v11, v12, v13))
  {
    v17 = objc_alloc_init(APSigningAuthoritySettings);
    v21 = objc_msgSend_maxContextsAllowed(v17, v18, v19, v20);
    if (objc_msgSend_integerValue(v21, v22, v23, v24) <= 0)
    {
    }

    else
    {
      v28 = objc_msgSend_maxContextsAllowed(v17, v25, v26, v27);
      v32 = objc_msgSend_unsignedIntValue(v28, v29, v30, v31);
      v36 = objc_msgSend_signingAuthorityPool(self, v33, v34, v35);
      v40 = objc_msgSend_count(v36, v37, v38, v39);

      if (v40 == v32)
      {
        objc_msgSend_setFailureError_(authorityCopy, v41, 7201, v42);
      }
    }
  }

  v43 = objc_msgSend_failureError(authorityCopy, v14, v15, v16);
  if (v43 <= 7202)
  {
    if (v43 != 7200)
    {
      if (v43 == 7201)
      {
        v96 = APLogForCategory(0x30uLL);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v108 = 134218240;
          selfCopy6 = self;
          v110 = 2048;
          v111 = authorityCopy;
          _os_log_impl(&dword_1BADC1000, v96, OS_LOG_TYPE_INFO, "Pool manager %p rejecting authority %p due to exceeding max allowed count.", &v108, 0x16u);
        }

        objc_msgSend_setState_(self, v97, 18005, v98);
        objc_msgSend__endSetup(self, v99, v100, v101);
        objc_msgSend__sendJourneyAnalyticsForAuthority_(self, v102, authorityCopy, v103);
        objc_msgSend__callSetupCompletionHandler(self, v104, v105, v106);
      }

      else
      {
        if (v43 != 7202)
        {
          goto LABEL_35;
        }

        v63 = APLogForCategory(0x30uLL);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v108 = 134218240;
          selfCopy6 = self;
          v110 = 2048;
          v111 = authorityCopy;
          _os_log_impl(&dword_1BADC1000, v63, OS_LOG_TYPE_ERROR, "Pool manager %p encountered an error signing with authority %p.", &v108, 0x16u);
        }

        objc_msgSend__sendJourneyAnalyticsForAuthority_(self, v64, authorityCopy, v65);
        v69 = objc_msgSend_finalState(authorityCopy, v66, v67, v68);
        objc_msgSend__retrySetupWithError_(self, v70, v69, v71);
      }

LABEL_34:

      authorityCopy = 0;
      goto LABEL_35;
    }

LABEL_28:
    v83 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v87 = objc_msgSend_failureError(authorityCopy, v84, v85, v86);
      v108 = 134218496;
      selfCopy6 = self;
      v110 = 2048;
      v111 = authorityCopy;
      v112 = 2048;
      v113 = *&v87;
      _os_log_impl(&dword_1BADC1000, v83, OS_LOG_TYPE_ERROR, "Pool manager %p encountered an error setting up authority %p with error %ld. Retrying.", &v108, 0x20u);
    }

    v91 = objc_msgSend_finalState(authorityCopy, v88, v89, v90);
    objc_msgSend__retrySetupWithError_(self, v92, v91, v93);
    objc_msgSend__sendJourneyAnalyticsForAuthority_(self, v94, authorityCopy, v95);
    goto LABEL_34;
  }

  if (v43 > 7204)
  {
    if (v43 != 7205)
    {
      if (v43 != 7206)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (v43 != 7203)
  {
    v44 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v108 = 134218240;
      selfCopy6 = self;
      v110 = 2048;
      v111 = authorityCopy;
      _os_log_impl(&dword_1BADC1000, v44, OS_LOG_TYPE_INFO, "Pool manager %p adding signing authority %p to pool.", &v108, 0x16u);
    }

    objc_msgSend__addSigningAuthorityToPool_(self, v45, authorityCopy, v46);
    v50 = objc_msgSend_signingAuthorityPool(self, v47, v48, v49);
    v54 = objc_msgSend_count(v50, v51, v52, v53);

    if (v54 == 1)
    {
      objc_msgSend_setState_(self, v55, 18001, v56);
      objc_msgSend__callSetupCompletionHandler(self, v57, v58, v59);
    }

    objc_msgSend__sendJourneyAnalyticsForAuthority_(self, v55, authorityCopy, v56);
    objc_msgSend__trySetup(self, v60, v61, v62);
    goto LABEL_35;
  }

LABEL_25:
  v72 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    v108 = 134218240;
    selfCopy6 = self;
    v110 = 2048;
    v111 = authorityCopy;
    _os_log_impl(&dword_1BADC1000, v72, OS_LOG_TYPE_ERROR, "Pool manager %p: authority %p is either not supported on this platform or the caller does not have sufficient permissions.", &v108, 0x16u);
  }

  objc_msgSend_setState_(self, v73, 18002, v74);
  objc_msgSend__endSetup(self, v75, v76, v77);
  objc_msgSend__sendJourneyAnalyticsForAuthority_(self, v78, authorityCopy, v79);
  objc_msgSend__callSetupCompletionHandler(self, v80, v81, v82);
LABEL_35:

  v107 = *MEMORY[0x1E69E9840];
}

- (void)_callSetupCompletionHandler
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v9 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = objc_msgSend_state(self, v10, v11, v12);
    v14 = sub_1BAF0B660(v13);
    Current = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(self, v16, v17, v18);
    *buf = 138412546;
    v68 = v14;
    v69 = 2048;
    v70 = Current - v19;
    _os_log_impl(&dword_1BADC1000, v9, OS_LOG_TYPE_INFO, "Pool manager calling setup completion handler with state %@ (%.6f)", buf, 0x16u);
  }

  v23 = objc_msgSend_setupCompletion(self, v20, v21, v22);

  if (!v23)
  {
    goto LABEL_10;
  }

  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v24, v25, v26))
  {
LABEL_8:
    v56 = objc_msgSend_setupCompletion(self, v27, v28, v29);

    if (v56)
    {
      v57 = objc_msgSend_setupCompletion(self, v24, v25, v26);
      v61 = objc_msgSend_state(self, v58, v59, v60);
      v57[2](v57, v61);
    }

LABEL_10:
    v30 = objc_msgSend_lock(self, v24, v25, v26);
    objc_msgSend_unlock(v30, v62, v63, v64);
    goto LABEL_11;
  }

  v30 = objc_alloc_init(APSigningAuthoritySettings);
  v34 = objc_msgSend_callbackDelay(v30, v31, v32, v33);
  v38 = objc_msgSend_unsignedIntValue(v34, v35, v36, v37);

  if (!v38)
  {

    goto LABEL_8;
  }

  v39 = dispatch_queue_create("com.apple.ap.signingpoolmanager.delay", 0);
  v43 = objc_msgSend_callbackDelay(v30, v40, v41, v42);
  v47 = objc_msgSend_unsignedIntValue(v43, v44, v45, v46);
  v48 = dispatch_time(0, 1000000000 * v47);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF0C6D4;
  block[3] = &unk_1E7F1CE98;
  block[4] = self;
  dispatch_after(v48, v39, block);

  v52 = objc_msgSend_lock(self, v49, v50, v51);
  objc_msgSend_unlock(v52, v53, v54, v55);

LABEL_11:
  v65 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_numSigningAuthoritiesToCreate
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_poolSize(self, v9, v10, v11);
  v16 = objc_msgSend_signingAuthorityPool(self, v13, v14, v15);
  v20 = v12 - objc_msgSend_count(v16, v17, v18, v19);

  v24 = objc_msgSend_lock(self, v21, v22, v23);
  objc_msgSend_unlock(v24, v25, v26, v27);

  return v20;
}

- (void)_addSigningAuthorityToPool:(id)pool
{
  v54 = *MEMORY[0x1E69E9840];
  poolCopy = pool;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v46 = 134218240;
    selfCopy3 = self;
    v48 = 2048;
    v49 = poolCopy;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Pool manager %p adding signing authority %p", &v46, 0x16u);
  }

  v10 = objc_msgSend_lock(self, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);

  v17 = objc_msgSend_signingAuthorityPool(self, v14, v15, v16);
  v21 = v17;
  if (poolCopy)
  {
    if (!objc_msgSend_count(v17, v18, v19, v20))
    {
      objc_msgSend_setCurrentSigningAuthority_(self, v22, poolCopy, v24);
    }

    if (objc_msgSend__numSigningAuthoritiesToCreate(self, v22, v23, v24))
    {
      objc_msgSend_addObject_(v21, v25, poolCopy, v26);
      v27 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = CFAbsoluteTimeGetCurrent() - Current;
        v29 = CFAbsoluteTimeGetCurrent();
        objc_msgSend_refillStartTime(self, v30, v31, v32);
        v46 = 134218752;
        selfCopy3 = self;
        v48 = 2048;
        v49 = poolCopy;
        v50 = 2048;
        v51 = v28;
        v52 = 2048;
        v53 = v29 - v33;
        v34 = "Pool manager %p added and validated signing authority %p (%.6f) (%.6f)";
        v35 = v27;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 42;
LABEL_13:
        _os_log_impl(&dword_1BADC1000, v35, v36, v34, &v46, v37);
      }
    }

    else
    {
      v27 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v46 = 134218240;
        selfCopy3 = self;
        v48 = 2048;
        v49 = poolCopy;
        v34 = "Pool manager %p not adding authority %p to pool, it is already full.";
        v35 = v27;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 22;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v27 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v46) = 0;
      v34 = "Signing authority is nil, unable to add to pool";
      v35 = v27;
      v36 = OS_LOG_TYPE_ERROR;
      v37 = 2;
      goto LABEL_13;
    }
  }

  v41 = objc_msgSend_lock(self, v38, v39, v40);
  objc_msgSend_unlock(v41, v42, v43, v44);

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_removeSigningAuthority:(id)authority shouldRefill:(BOOL)refill
{
  refillCopy = refill;
  v46 = *MEMORY[0x1E69E9840];
  authorityCopy = authority;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    selfCopy2 = self;
    v40 = 2048;
    v41 = authorityCopy;
    _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_INFO, "Pool manager %p removing signing authority %p", buf, 0x16u);
  }

  v12 = objc_msgSend_currentSigningAuthority(self, v9, v10, v11);

  v13 = APLogForCategory(0x30uLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v12 == authorityCopy)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "This is the current signing authority, set it to nil and rotate.", buf, 2u);
    }

    objc_msgSend_setCurrentSigningAuthority_(self, v21, 0, v22);
    v37 = 0;
    objc_msgSend__rotateWithError_(self, v23, &v37, v24);
    v18 = v37;
    if (v18)
    {
      v25 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = v18;
        _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_ERROR, "Error encountered while attempting to rotate: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_INFO, "This is a signing authority in the pool, remove it and its observer, and refill the pool.", buf, 2u);
    }

    v18 = objc_msgSend_signingAuthorityPool(self, v15, v16, v17);
    objc_msgSend_removeObject_(v18, v19, authorityCopy, v20);
  }

  if (refillCopy)
  {
    objc_msgSend__refillSigningAuthorityPool(self, v26, v27, v28);
  }

  v29 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = CFAbsoluteTimeGetCurrent() - Current;
    v31 = CFAbsoluteTimeGetCurrent();
    objc_msgSend_refillStartTime(self, v32, v33, v34);
    *buf = 134218752;
    selfCopy2 = self;
    v40 = 2048;
    v41 = authorityCopy;
    v42 = 2048;
    v43 = v30;
    v44 = 2048;
    v45 = v31 - v35;
    _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_INFO, "Pool manager %p finished removing signing authority %p (%.6f) (%.6f)", buf, 0x2Au);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_removeAllSigningAuthorities
{
  v3 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_DEBUG, "All signing authorities are being removed from the pool.", buf, 2u);
  }

  v7 = objc_msgSend_lock(self, v4, v5, v6);
  objc_msgSend_lock(v7, v8, v9, v10);

  v14 = objc_msgSend_currentSigningAuthority(self, v11, v12, v13);

  if (v14)
  {
    v18 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_INFO, "This is the current signing authority, set it to nil.", v38, 2u);
    }

    objc_msgSend_setCurrentSigningAuthority_(self, v19, 0, v20);
  }

  v21 = objc_msgSend_signingAuthorityPool(self, v15, v16, v17);
  objc_msgSend_removeAllObjects(v21, v22, v23, v24);

  v28 = objc_msgSend_lock(self, v25, v26, v27);
  objc_msgSend_unlock(v28, v29, v30, v31);

  v35 = objc_msgSend_name(self, v32, v33, v34);
  objc_msgSend_destroyAndClearAllContextsForPool_(APSigningContextStorage, v36, v35, v37);
}

- (void)_clearStashedContextsIfIndicated
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, v2, v3))
  {
    v5 = objc_alloc_init(APSigningAuthoritySettings);
    v9 = objc_msgSend_clearStashedContexts(v5, v6, v7, v8);
    v13 = objc_msgSend_BOOLValue(v9, v10, v11, v12);

    if (v13)
    {
      v14 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_name(self, v15, v16, v17);
        v26 = 138412290;
        v27 = v18;
        _os_log_impl(&dword_1BADC1000, v14, OS_LOG_TYPE_INFO, "Clearing all contexts for pool '%@'", &v26, 0xCu);
      }

      v22 = objc_msgSend_name(self, v19, v20, v21);
      objc_msgSend_destroyAndClearAllContextsForPool_(APSigningContextStorage, v23, v22, v24);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)rotateWithError:(id *)error
{
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Rotate the current signing authority.", v24, 2u);
  }

  v9 = objc_msgSend_lock(self, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12);

  v15 = objc_msgSend__rotateWithError_(self, v13, error, v14);
  v19 = objc_msgSend_lock(self, v16, v17, v18);
  objc_msgSend_unlock(v19, v20, v21, v22);

  return v15;
}

- (BOOL)_rotateWithError:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1BADC1000, v6, OS_LOG_TYPE_INFO, "Pool manager %p rotating", &buf, 0xCu);
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (objc_msgSend_state(self, v7, v8, v9) == 18002)
  {
    v13 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "Error: Unable to rotate, we are in a permanent failure state.", &buf, 2u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v53[0] = @"Pool manager in permanent error state, unable to rotate.";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v53, &v52, 1);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v17, @"com.apple.ap.signingAuthorityPoolManagerErrorDomain", 6101, v16);

    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    v20 = *(v44 + 24);
  }

  else
  {
    v18 = objc_msgSend_signingAuthorityPool(self, v10, v11, v12);
    v26 = objc_msgSend_AD_validSigningAuthority(v18, v21, v22, v23);
    if (v26)
    {
      v27 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1BADC1000, v27, OS_LOG_TYPE_INFO, "Successfully set up signing authority exists in the pool, set it to the current signing authority.", &buf, 2u);
      }

      objc_msgSend_removeObject_(v18, v28, v26, v29);
    }

    objc_msgSend_setCurrentSigningAuthority_(self, v24, v26, v25);
    objc_msgSend__refillSigningAuthorityPool(self, v30, v31, v32);
    v20 = 1;
    *(v44 + 24) = 1;
    if (qword_1EDBA1F10 == 1)
    {
      v33 = objc_alloc_init(APRotationRequestor);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v48 = 0x3032000000;
      v49 = sub_1BAF0D400;
      v50 = sub_1BAF0D410;
      v51 = 0;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_1BAF0D418;
      v38[3] = &unk_1E7F1CEC0;
      v40 = &v43;
      p_buf = &buf;
      v38[4] = self;
      v39 = v18;
      v42 = Current;
      objc_msgSend_rotate_(v33, v34, v38, v35);
      if (error)
      {
        *error = *(*(&buf + 1) + 40);
      }

      _Block_object_dispose(&buf, 8);
      v20 = *(v44 + 24);
    }
  }

  _Block_object_dispose(&v43, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (id)signatureForData:(id)data error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = objc_msgSend_lock(self, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);

  v17 = objc_msgSend_currentSigningAuthority(self, v14, v15, v16);
  v21 = objc_msgSend_state(self, v18, v19, v20);
  v25 = objc_msgSend_lock(self, v22, v23, v24);
  objc_msgSend_unlock(v25, v26, v27, v28);

  if (v21 == 18002 || !v17)
  {
    v36 = v21 == 18002;
    if (v21 == 18002)
    {
      v37 = 6101;
    }

    else
    {
      v37 = 6100;
    }

    v38 = @"Pool manager in permanent error state, unable to sign data.";
    if (!v36)
    {
      v38 = @"Signing authority not setup, unable to sign data.";
    }

    goto LABEL_16;
  }

  if (objc_msgSend_state(v17, v29, v30, v31) != 17002)
  {
    v38 = @"Signing authority not setup, unable to sign data.";
    v37 = 6100;
LABEL_16:
    v39 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    v59[0] = v38;
    v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v59, &v58, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v39, v41, @"com.apple.ap.signingAuthorityPoolManagerErrorDomain", v37, v40);

    if (!error)
    {
      v32 = 0;
      goto LABEL_22;
    }

    v42 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_msgSend_localizedDescription(v33, v43, v44, v45);
      *buf = 138543362;
      v57 = v46;
      _os_log_impl(&dword_1BADC1000, v42, OS_LOG_TYPE_ERROR, "Error: %{public}@", buf, 0xCu);
    }

    v47 = v33;
    v32 = 0;
LABEL_20:
    *error = v33;
    goto LABEL_22;
  }

  v55 = 0;
  v32 = objc_msgSend_signatureForData_error_(v17, v29, dataCopy, &v55);
  v33 = v55;
  v34 = APLogForCategory(0x30uLL);
  v35 = v34;
  if (!v33 && v32)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_DEBUG, "Successfully got a signature", buf, 2u);
    }

    v33 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_msgSend_localizedDescription(v33, v50, v51, v52);
    *buf = 138543362;
    v57 = v53;
    _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_ERROR, "Error getting signature: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v54 = v33;
    goto LABEL_20;
  }

LABEL_22:

  v48 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)signatureForRawData:(id)data error:(id *)error
{
  v59[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10 = objc_msgSend_lock(self, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);

  v17 = objc_msgSend_currentSigningAuthority(self, v14, v15, v16);
  v21 = objc_msgSend_state(self, v18, v19, v20);
  v25 = objc_msgSend_lock(self, v22, v23, v24);
  objc_msgSend_unlock(v25, v26, v27, v28);

  if (v21 == 18002 || !v17)
  {
    v36 = v21 == 18002;
    if (v21 == 18002)
    {
      v37 = 6101;
    }

    else
    {
      v37 = 6100;
    }

    v38 = @"Pool manager in permanent error state, unable to sign data.";
    if (!v36)
    {
      v38 = @"Signing authority not setup, unable to sign data.";
    }

    goto LABEL_16;
  }

  if (objc_msgSend_state(v17, v29, v30, v31) != 17002)
  {
    v38 = @"Signing authority not setup, unable to sign data.";
    v37 = 6100;
LABEL_16:
    v39 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    v59[0] = v38;
    v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v59, &v58, 1);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v39, v41, @"com.apple.ap.signingAuthorityPoolManagerErrorDomain", v37, v40);

    if (!error)
    {
      v32 = 0;
      goto LABEL_22;
    }

    v42 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_msgSend_localizedDescription(v33, v43, v44, v45);
      *buf = 138543362;
      v57 = v46;
      _os_log_impl(&dword_1BADC1000, v42, OS_LOG_TYPE_ERROR, "Error: %{public}@", buf, 0xCu);
    }

    v47 = v33;
    v32 = 0;
LABEL_20:
    *error = v33;
    goto LABEL_22;
  }

  v55 = 0;
  v32 = objc_msgSend_signatureForRawData_error_(v17, v29, dataCopy, &v55);
  v33 = v55;
  v34 = APLogForCategory(0x30uLL);
  v35 = v34;
  if (!v33 && v32)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_DEBUG, "Successfully got a signature", buf, 2u);
    }

    v33 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_msgSend_localizedDescription(v33, v50, v51, v52);
    *buf = 138543362;
    v57 = v53;
    _os_log_impl(&dword_1BADC1000, v35, OS_LOG_TYPE_ERROR, "Error getting signature: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v54 = v33;
    goto LABEL_20;
  }

LABEL_22:

  v48 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BOOL)_trySetup
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_currentSigningAuthority(self, v9, v10, v11);

  if (!v12)
  {
    objc_msgSend_setState_(self, v13, 18000, v15);
  }

  v16 = objc_msgSend_setupQueue(self, v13, v14, v15);

  if (!v16)
  {
    v20 = dispatch_queue_create("com.apple.ap.signingAuthorityPoolManager.setup", 0);
    setupQueue = self->_setupQueue;
    self->_setupQueue = v20;
  }

  v22 = objc_msgSend_retryLevel(self, v17, v18, v19);
  v29 = objc_msgSend_count(&unk_1F39091D8, v23, v24, v25) - 1;
  if (v22 >= v29)
  {
    v43 = objc_msgSend_currentSigningAuthority(self, v26, v27, v28);

    if (!v43)
    {
      objc_msgSend_setState_(self, v44, 18004, v45);
      objc_msgSend__callSetupCompletionHandler(self, v59, v60, v61);
      objc_msgSend__endSetup(self, v62, v63, v64);
      goto LABEL_11;
    }

    v33 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v49 = objc_msgSend_currentSigningAuthority(self, v46, v47, v48);
      *buf = 134218240;
      selfCopy = self;
      v68 = 2048;
      v69 = v49;
      _os_log_impl(&dword_1BADC1000, v33, OS_LOG_TYPE_INFO, "Pool manager %p has a current signing authority (%p), but has exceeded retries to get another one.", buf, 0x16u);
    }
  }

  else
  {
    v30 = objc_msgSend_retryLevel(self, v26, v27, v28);
    v33 = objc_msgSend_objectAtIndexedSubscript_(&unk_1F39091D8, v31, v30, v32);
    v37 = objc_msgSend_unsignedLongLongValue(v33, v34, v35, v36);
    v38 = dispatch_time(0, 1000000000 * v37);
    v42 = objc_msgSend_setupQueue(self, v39, v40, v41);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAF0DE38;
    block[3] = &unk_1E7F1CE98;
    block[4] = self;
    dispatch_after(v38, v42, block);
  }

LABEL_11:
  v53 = objc_msgSend_lock(self, v50, v51, v52);
  objc_msgSend_unlock(v53, v54, v55, v56);

  v57 = *MEMORY[0x1E69E9840];
  return v22 < v29;
}

- (BOOL)_retrySetupWithError:(unint64_t)error
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_lock(self, a2, error, v3);
  objc_msgSend_lock(v6, v7, v8, v9);

  v13 = objc_msgSend_retryLevel(self, v10, v11, v12);
  objc_msgSend_setRetryLevel_(self, v14, v13 + 1, v15);
  Current = CFAbsoluteTimeGetCurrent();
  objc_msgSend_setRetryStartTime_(self, v17, v18, v19, Current);
  v23 = objc_msgSend_lock(self, v20, v21, v22);
  objc_msgSend_unlock(v23, v24, v25, v26);

  v33 = objc_msgSend__trySetup(self, v27, v28, v29);
  if (v33 && objc_msgSend_retryLevel(self, v30, v31, v32))
  {
    v34 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v38 = objc_msgSend_retryLevel(self, v35, v36, v37);
      v39 = signingAuthorityFinalStateToString(error);
      *buf = 134218498;
      selfCopy = self;
      v63 = 2048;
      v64 = v38;
      v65 = 2112;
      v66 = v39;
      _os_log_impl(&dword_1BADC1000, v34, OS_LOG_TYPE_INFO, "Starting pool manager %p retry number %ld due to failure %@", buf, 0x20u);
    }

    v59 = @"failureMode";
    v42 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v40, error, v41);
    v60 = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, &v60, &v59, 1);
    AnalyticsSendEvent();

    v45 = MEMORY[0x1E696AD98];
    v49 = objc_msgSend_retryLevel(self, v46, v47, v48, @"retryCount");
    v52 = objc_msgSend_numberWithUnsignedInteger_(v45, v50, v49, v51);
    v58 = v52;
    v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, &v58, &v57, 1);
    AnalyticsSendEvent();
  }

  v55 = *MEMORY[0x1E69E9840];
  return v33;
}

- (void)_endSetup
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  objc_msgSend_setSetupCompletion_(self, v9, 0, v10);
  objc_msgSend_setSetupQueue_(self, v11, 0, v12);
  objc_msgSend_setRetryLevel_(self, v13, 0, v14);
  v21 = objc_msgSend_lock(self, v15, v16, v17);
  objc_msgSend_unlock(v21, v18, v19, v20);
}

- (void)_sendJourneyAnalyticsForAuthority:(id)authority
{
  authorityCopy = authority;
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.AdPlatforms", v6);
  v10 = objc_msgSend_integerForKey_(v7, v8, @"PoolManagerCorrelationID", v9) + 1;
  objc_msgSend_setInteger_forKey_(v7, v11, v10, @"PoolManagerCorrelationID");
  v12 = authorityCopy;
  AnalyticsSendExplodingEventLazy();
}

@end
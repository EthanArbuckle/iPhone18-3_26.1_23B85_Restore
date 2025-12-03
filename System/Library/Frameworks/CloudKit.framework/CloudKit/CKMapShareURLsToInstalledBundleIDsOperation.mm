@interface CKMapShareURLsToInstalledBundleIDsOperation
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)hasCKOperationCallbacksSet;
- (CKMapShareURLsToInstalledBundleIDsOperation)init;
- (CKMapShareURLsToInstalledBundleIDsOperation)initWithShareURLs:(id)ls returnLocalBundlesOnly:(BOOL)only;
- (id)activityCreate;
- (id)getStaticBundleIDsForURLSlug:(id)slug withKey:(id)key;
- (id)mapBundleIDsCompletionBlock;
- (id)perShareURLBlock;
- (id)selectLocalBundleIDs:(id)ds;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)ckSignpostBegin;
- (void)ckSignpostEndWithError:(id)error;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)handleBundleIDsFetchedForURL:(id)l appBundleIDs:(id)ds daemonBundleIDs:(id)iDs error:(id)error;
- (void)performCKOperation;
- (void)setMapBundleIDsCompletionBlock:(id)block;
- (void)setPerShareURLBlock:(id)block;
@end

@implementation CKMapShareURLsToInstalledBundleIDsOperation

- (CKMapShareURLsToInstalledBundleIDsOperation)init
{
  v10.receiver = self;
  v10.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
  v2 = [(CKOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    specialURLs = v2->_specialURLs;
    v2->_specialURLs = v3;

    v5 = objc_opt_new();
    genericURLs = v2->_genericURLs;
    v2->_genericURLs = v5;

    v7 = objc_opt_new();
    errorsByURL = v2->_errorsByURL;
    v2->_errorsByURL = v7;
  }

  return v2;
}

- (CKMapShareURLsToInstalledBundleIDsOperation)initWithShareURLs:(id)ls returnLocalBundlesOnly:(BOOL)only
{
  lsCopy = ls;
  v28 = 0;
  v7 = _CKCheckArgument("shareURLs", lsCopy, 0, 0, 0, &v28);
  v8 = v28;
  if ((v7 & 1) == 0)
  {
    v17 = v8;
    v18 = [CKException alloc];
    v21 = objc_msgSend_code(v17, v19, v20);
    v24 = objc_msgSend_localizedDescription(v17, v22, v23);
    v26 = objc_msgSend_initWithCode_format_(v18, v25, v21, @"%@", v24);
    v27 = v26;

    objc_exception_throw(v26);
  }

  v13 = objc_msgSend_init(self, v9, v10);
  if (v13)
  {
    v14 = objc_msgSend_copy(lsCopy, v11, v12);
    shareURLs = v13->_shareURLs;
    v13->_shareURLs = v14;

    v13->_returnLocalBundlesOnly = only;
  }

  return v13;
}

- (void)setPerShareURLBlock:(id)block
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
    v12[2] = sub_1885F2B74;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    perShareURLBlock = v13;
    goto LABEL_9;
  }

  if (self->_perShareURLBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    perShareURLBlock = self->_perShareURLBlock;
    self->_perShareURLBlock = v9;
LABEL_9:
  }
}

- (id)perShareURLBlock
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
    v13 = sub_1883EDE0C;
    v14 = sub_1883EF6C4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F2D70;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_perShareURLBlock);
  }

  return v6;
}

- (void)setMapBundleIDsCompletionBlock:(id)block
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
    v12[2] = sub_1885F2F00;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    mapBundleIDsCompletionBlock = v13;
    goto LABEL_9;
  }

  if (self->_mapBundleIDsCompletionBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    mapBundleIDsCompletionBlock = self->_mapBundleIDsCompletionBlock;
    self->_mapBundleIDsCompletionBlock = v9;
LABEL_9:
  }
}

- (id)mapBundleIDsCompletionBlock
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
    v13 = sub_1883EDE0C;
    v14 = sub_1883EF6C4;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1885F30FC;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_mapBundleIDsCompletionBlock);
  }

  return v6;
}

- (void)fillOutOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_shareURLs(self, v5, v6);
  objc_msgSend_setShareURLs_(infoCopy, v8, v7);

  v9.receiver = self;
  v9.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
  [(CKOperation *)&v9 fillOutOperationInfo:infoCopy];
}

- (void)fillFromOperationInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
  infoCopy = info;
  [(CKOperation *)&v9 fillFromOperationInfo:infoCopy];
  v7 = objc_msgSend_shareURLs(infoCopy, v5, v6, v9.receiver, v9.super_class);

  objc_msgSend_setShareURLs_(self, v8, v7);
}

- (BOOL)hasCKOperationCallbacksSet
{
  v11.receiver = self;
  v11.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
  if ([(CKOperation *)&v11 hasCKOperationCallbacksSet])
  {
    return 1;
  }

  v8 = objc_msgSend_perShareURLBlock(self, v3, v4);
  if (v8)
  {
    v5 = 1;
  }

  else
  {
    v9 = objc_msgSend_mapBundleIDsCompletionBlock(self, v6, v7);
    v5 = v9 != 0;
  }

  return v5;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_shareURLs(self, a2, run);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    runCopy = run;
    v9 = objc_opt_new();
    v52 = CKURLSlugsToBundleIDsMap();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = objc_msgSend_shareURLs(self, v10, v11);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v54, v58, 16);
    if (v13)
    {
      v14 = v13;
      v15 = *v55;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * v16);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = runCopy;
          if (!runCopy)
          {
            goto LABEL_28;
          }

          v42 = objc_opt_class();
          v25 = NSStringFromClass(v42);
          v48 = v25;
          v49 = v17;
          v44 = @"Unexpected share URL passed to %@: %@";
LABEL_25:
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v43, @"CKErrorDomain", 12, v44, v48, v49);
          goto LABEL_26;
        }

        if (objc_msgSend_containsObject_(v9, v18, v17))
        {
          v41 = runCopy;
          if (!runCopy)
          {
            goto LABEL_28;
          }

          v45 = objc_opt_class();
          v25 = NSStringFromClass(v45);
          v48 = v17;
          v49 = v25;
          v44 = @"URL %@ was passed to %@ twice";
          goto LABEL_25;
        }

        objc_msgSend_addObject_(v9, v19, v17);
        v22 = objc_msgSend_CKURLSlug(v17, v20, v21);
        v25 = objc_msgSend_lowercaseString(v22, v23, v24);

        v29 = objc_msgSend_objectForKeyedSubscript_(v52, v26, v25);
        if (!v29)
        {
          break;
        }

        if (__sTestOverridesAvailable[0] == 1)
        {
          v30 = objc_msgSend_unitTestOverrides(self, v27, v28);
          v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"forceFetchAllshareURLs");

          if (v32)
          {
            goto LABEL_14;
          }
        }

        v33 = objc_msgSend_specialURLs(self, v27, v28);
LABEL_15:
        v35 = v33;
        objc_msgSend_addObject_(v33, v34, v17);

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v54, v58, 16);
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_17;
        }
      }

      if (!objc_msgSend_isEqualToString_(v25, v27, @"share"))
      {
        v41 = runCopy;
        if (runCopy)
        {
          objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v27, @"CKErrorDomain", 12, @"URL %@ has unknown format", v17);
          *v41 = LABEL_26:;
        }

LABEL_28:
        v37 = 0;
        goto LABEL_29;
      }

LABEL_14:
      v33 = objc_msgSend_genericURLs(self, v27, v28);
      goto LABEL_15;
    }

LABEL_17:

    v53.receiver = self;
    v53.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
    v37 = [(CKOperation *)&v53 CKOperationShouldRun:runCopy];
LABEL_29:
  }

  else
  {
    if (run)
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKErrorDomain", 12, @"No share URLs were passed to %@", v39);
    }

    v37 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v37;
}

- (void)performCKOperation
{
  v45 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = objc_msgSend_specialURLs(self, a2, v2);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v40, v44, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v12 = objc_msgSend_CKURLSlug(v11, v6, v7);
        v15 = objc_msgSend_lowercaseString(v12, v13, v14);

        v17 = objc_msgSend_getStaticBundleIDsForURLSlug_withKey_(self, v16, v15, @"apps");
        v19 = objc_msgSend_getStaticBundleIDsForURLSlug_withKey_(self, v18, v15, @"daemons");
        objc_msgSend_handleBundleIDsFetchedForURL_appBundleIDs_daemonBundleIDs_error_(self, v20, v11, v17, v19, 0);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v40, v44, 16);
    }

    while (v8);
  }

  v23 = objc_msgSend_genericURLs(self, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    v29 = objc_msgSend_operationInfo(self, v27, v28);
    v32 = objc_msgSend_copy(v29, v30, v31);

    v35 = objc_msgSend_genericURLs(self, v33, v34);
    objc_msgSend_setShareURLs_(v32, v36, v35);

    v39.receiver = self;
    v39.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
    [(CKOperation *)&v39 performCKOperation];
  }

  else
  {
    objc_msgSend__finishOnCallbackQueueWithError_(self, v27, 0);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)handleBundleIDsFetchedForURL:(id)l appBundleIDs:(id)ds daemonBundleIDs:(id)iDs error:(id)error
{
  v78 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dsCopy = ds;
  iDsCopy = iDs;
  errorCopy = error;
  v14 = dsCopy;
  v19 = v14;
  if (objc_msgSend_count(v14, v15, v16))
  {
    v19 = v14;
    if (objc_msgSend_returnLocalBundlesOnly(self, v17, v18))
    {
      v19 = objc_msgSend_selectLocalBundleIDs_(self, v17, v14);
    }
  }

  if (!objc_msgSend_count(v19, v17, v18))
  {

    v19 = 0;
  }

  if (!objc_msgSend_count(iDsCopy, v20, v21))
  {

    iDsCopy = 0;
  }

  v26 = objc_msgSend_CKClientSuitableError(errorCopy, v22, v23);
  if (v26)
  {
    v27 = objc_msgSend_errorsByURL(self, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v26, lCopy);

    if (self)
    {
      signpost = self->super._signpost;
    }

    else
    {
      signpost = 0;
    }

    v30 = signpost;

    if (v30)
    {
      if (self)
      {
        v33 = self->super._signpost;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;
      v37 = objc_msgSend_log(v34, v35, v36);

      if (self)
      {
        v38 = self->super._signpost;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;
      v42 = objc_msgSend_identifier(v39, v40, v41);

      if ((v42 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v37))
      {
        goto LABEL_30;
      }

      *v76 = 138412546;
      *&v76[4] = lCopy;
      *&v76[12] = 2112;
      *&v76[14] = v26;
      v43 = "BundleIDs fetched for shareURL %@ with error: %@";
      v44 = v37;
      v45 = v42;
      v46 = 22;
LABEL_29:
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v44, OS_SIGNPOST_EVENT, v45, "CKMapShareURLsToInstalledBundleIDsOperation", v43, v76, v46);
LABEL_30:
    }
  }

  else
  {
    if (self)
    {
      v47 = self->super._signpost;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    if (v48)
    {
      if (self)
      {
        v49 = self->super._signpost;
      }

      else
      {
        v49 = 0;
      }

      v50 = v49;
      v37 = objc_msgSend_log(v50, v51, v52);

      if (self)
      {
        v53 = self->super._signpost;
      }

      else
      {
        v53 = 0;
      }

      v54 = v53;
      v57 = objc_msgSend_identifier(v54, v55, v56);

      if ((v57 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v37))
      {
        goto LABEL_30;
      }

      *v76 = 138412290;
      *&v76[4] = lCopy;
      v43 = "BundleIDs fetched for shareURL %@";
      v44 = v37;
      v45 = v57;
      v46 = 12;
      goto LABEL_29;
    }
  }

  v58 = objc_msgSend_perShareURLBlock(self, v31, v32, *v76, *&v76[16]);

  if (v58)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v59 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v68 = v59;
      v71 = objc_msgSend_operationID(self, v69, v70);
      *v76 = 138543874;
      *&v76[4] = v71;
      *&v76[12] = 2112;
      *&v76[14] = lCopy;
      *&v76[22] = 2112;
      v77 = v26;
      _os_log_debug_impl(&dword_1883EA000, v68, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out about fetched bundleIDs for URL %@ : %@", v76, 0x20u);
    }

    v62 = objc_msgSend_perShareURLBlock(self, v60, v61);
    v63 = v62;
    if (v26)
    {
      v64 = 0;
    }

    else
    {
      v64 = v19;
    }

    if (v26)
    {
      v65 = 0;
    }

    else
    {
      v65 = iDsCopy;
    }

    (*(v62 + 16))(v62, lCopy, v64, v65, v26);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v66 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v72 = v66;
      v75 = objc_msgSend_operationID(self, v73, v74);
      *v76 = 138543874;
      *&v76[4] = v75;
      *&v76[12] = 2112;
      *&v76[14] = lCopy;
      *&v76[22] = 2112;
      v77 = v26;
      _os_log_debug_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEBUG, "Operation %{public}@ received fetched bundleIDs for URL %@: %@", v76, 0x20u);
    }
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v57 = *MEMORY[0x1E69E9840];
  errorCopy = error;
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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_EVENT, v18, "CKMapShareURLsToInstalledBundleIDsOperation", "Finishing", buf, 2u);
    }
  }

  if (!errorCopy)
  {
    v19 = objc_msgSend_errorsByURL(self, v7, v8);
    v22 = objc_msgSend_count(v19, v20, v21);

    if (v22)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8);
      v26 = objc_msgSend_errorsByURL(self, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v27, v26, @"CKPartialErrors");

      errorCopy = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v28, @"CKInternalErrorDomain", 1011, v23, @"Failed to fetch bundleIDs for some URLs");
    }

    else
    {
      errorCopy = 0;
    }
  }

  v29 = objc_msgSend_mapBundleIDsCompletionBlock(self, v7, v8);

  if (v29)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v42 = v31;
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v47 = objc_msgSend_ckShortDescription(self, v45, v46);
      *buf = 138544130;
      v50 = v44;
      v51 = 2048;
      selfCopy = self;
      v53 = 2114;
      v54 = v47;
      v55 = 2112;
      v56 = errorCopy;
      _os_log_debug_impl(&dword_1883EA000, v42, OS_LOG_TYPE_DEBUG, "Calling mapBundleIDsCompletionBlock for operation <%{public}@: %p; %{public}@> with error %@", buf, 0x2Au);
    }

    v34 = objc_msgSend_mapBundleIDsCompletionBlock(self, v32, v33);
    v37 = objc_msgSend_CKClientSuitableError(errorCopy, v35, v36);
    (v34)[2](v34, v37);

    objc_msgSend_setMapBundleIDsCompletionBlock_(self, v38, 0);
  }

  objc_msgSend_setPerShareURLBlock_(self, v30, 0);
  objc_msgSend_setGenericURLs_(self, v39, 0);
  objc_msgSend_setSpecialURLs_(self, v40, 0);
  v48.receiver = self;
  v48.super_class = CKMapShareURLsToInstalledBundleIDsOperation;
  [(CKOperation *)&v48 _finishOnCallbackQueueWithError:errorCopy];

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
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CKMapShareURLsToInstalledBundleIDsOperation", "ID=%{signpost.description:attribute}@ Container=%{signpost.description:attribute}@ GroupID=%{signpost.description:attribute}@ GroupName=%{signpost.description:attribute,public}@ Behavior=%{signpost.description:attribute,public}@ QoS=%{signpost.description:attribute,public}@ ", &v43, 0x3Eu);
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
      v19 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_END, v16, "CKMapShareURLsToInstalledBundleIDsOperation", "Error=%{signpost.description:attribute}@ ", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "client/map-share-urls-to-bundle-ids", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleBundleIDsFetchedForURL_appBundleIDs_daemonBundleIDs_error_, 3, 0);

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKMapShareURLsToInstalledBundleIDsOperation;
  objc_msgSendSuper2(&v7, sel_applyDaemonCallbackInterfaceTweaks_, tweaksCopy);
}

- (id)selectLocalBundleIDs:(id)ds
{
  v3 = CKSelectLocalAppNamesByBundleIDs(ds);
  v6 = objc_msgSend_allKeys(v3, v4, v5);

  return v6;
}

- (id)getStaticBundleIDsForURLSlug:(id)slug withKey:(id)key
{
  keyCopy = key;
  slugCopy = slug;
  v7 = CKURLSlugsToBundleIDsMap();
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, slugCopy);

  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, keyCopy);

  return v11;
}

@end
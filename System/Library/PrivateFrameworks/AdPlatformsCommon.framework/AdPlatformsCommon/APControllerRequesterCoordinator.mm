@interface APControllerRequesterCoordinator
+ (id)requestCoordinator;
- (APControllerRequesterCoordinator)init;
- (id)proxyURLForRequester:(id)requester;
- (void)_addDelegate:(id)delegate withID:(id)d;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)contentResponses:(id)responses requester:(id)requester;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)extendCollectionClassesForRemoteInterface:(id)interface;
- (void)finishedWithRequestsForID:(id)d;
- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion;
- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler;
- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context completionHandler:(id)handler;
- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler;
@end

@implementation APControllerRequesterCoordinator

+ (id)requestCoordinator
{
  if (qword_1EDD51998[0] != -1)
  {
    sub_1BAFC58B0();
  }

  v3 = qword_1EDD51990;

  return v3;
}

- (APControllerRequesterCoordinator)init
{
  v14.receiver = self;
  v14.super_class = APControllerRequesterCoordinator;
  v6 = [(APXPCActionRequester *)&v14 init];
  if (v6)
  {
    v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4, v5, v7, v8);
    requestDelegates = v6->_requestDelegates;
    v6->_requestDelegates = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69861E0]);
    lock = v6->_lock;
    v6->_lock = v11;
  }

  return v6;
}

- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context completionHandler:(id)handler
{
  v65 = *MEMORY[0x1E69E9840];
  requesterCopy = requester;
  contextCopy = context;
  handlerCopy = handler;
  typesCopy = types;
  v20 = objc_msgSend_requesterID(requesterCopy, v14, v15, v16, v17, v18, v19);
  objc_msgSend__addDelegate_withID_(self, v21, requesterCopy, v20, v22, v23, v24);

  v31 = objc_msgSend_activeClientInfo(MEMORY[0x1E6986190], v25, v26, v27, v28, v29, v30);
  if (!v31)
  {
    v32 = APLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BAFC4000, v32, OS_LOG_TYPE_DEFAULT, "No client info was available for an ad request.", buf, 2u);
    }
  }

  v33 = APLogForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v40 = objc_msgSend_identifier(contextCopy, v34, v35, v36, v37, v38, v39);
    *buf = 138543362;
    v64 = v40;
    _os_log_impl(&dword_1BAFC4000, v33, OS_LOG_TYPE_INFO, "Requesting ad from promotedcontentd for context %{public}@", buf, 0xCu);
  }

  v41 = APPerfLogForCategory();
  v42 = os_signpost_id_generate(v41);
  v43 = v41;
  v44 = v43;
  if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v42, "xpcDelay", "", buf, 2u);
  }

  v51 = objc_msgSend_remoteObjectProxy(self, v45, v46, v47, v48, v49, v50);
  v58 = objc_msgSend_requesterID(requesterCopy, v52, v53, v54, v55, v56, v57);
  objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_withClientInfo_deliverEntireBatch_logID_completionHandler_(v51, v59, typesCopy, v58, contextCopy, v60, v61, v31, 0, v42, handlerCopy);

  v62 = *MEMORY[0x1E69E9840];
}

- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  contentCopy = content;
  v13 = APPerfLogForCategory();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "xpcDelay", "", buf, 2u);
  }

  v23 = objc_msgSend_remoteObjectProxy(self, v17, v18, v19, v20, v21, v22);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1BAFCEEA0;
  v28[3] = &unk_1E7F20DF8;
  v29 = handlerCopy;
  v24 = handlerCopy;
  objc_msgSend_sendAndRankContent_forContext_placement_logID_completionHandler_(v23, v25, contentCopy, contextCopy, placement, v26, v27, v14, v28);
}

- (void)contentResponses:(id)responses requester:(id)requester
{
  v53 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  requesterCopy = requester;
  v14 = objc_msgSend_lock(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_lock(v14, v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_requestDelegates(self, v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_objectForKey_(v27, v28, requesterCopy, v29, v30, v31, v32);

  objc_msgSend_unlock(v14, v34, v35, v36, v37, v38, v39);
  if (v33)
  {
    objc_msgSend_contentResponses_(v33, v40, responsesCopy, v41, v42, v43, v44);
  }

  else
  {
    v45 = APLogForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v49 = 138412546;
      v50 = v47;
      v51 = 2112;
      v52 = requesterCopy;
      _os_log_impl(&dword_1BAFC4000, v45, OS_LOG_TYPE_DEFAULT, "[%@] The requester for %@ is no longer stored. Dropping response.", &v49, 0x16u);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)finishedWithRequestsForID:(id)d
{
  dCopy = d;
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v71 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", v71, 2u);
  }

  v15 = objc_msgSend_remoteObjectProxy(self, v9, v10, v11, v12, v13, v14);
  objc_msgSend_finishedWithRequestsForRequester_logID_(v15, v16, dCopy, v6, v17, v18, v19);

  v26 = objc_msgSend_lock(self, v20, v21, v22, v23, v24, v25);
  objc_msgSend_lock(v26, v27, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_requestDelegates(self, v33, v34, v35, v36, v37, v38);
  objc_msgSend_removeObjectForKey_(v39, v40, dCopy, v41, v42, v43, v44);

  v51 = objc_msgSend_requestDelegates(self, v45, v46, v47, v48, v49, v50);
  v58 = objc_msgSend_count(v51, v52, v53, v54, v55, v56, v57);

  objc_msgSend_unlock(v26, v59, v60, v61, v62, v63, v64);
  if (!v58)
  {
    objc_msgSend_finished(self, v65, v66, v67, v68, v69, v70);
  }
}

- (id)proxyURLForRequester:(id)requester
{
  requesterCopy = requester;
  v11 = objc_msgSend_requesterID(requesterCopy, v5, v6, v7, v8, v9, v10);
  objc_msgSend__addDelegate_withID_(self, v12, requesterCopy, v11, v13, v14, v15);

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1BAFCF324;
  v36 = sub_1BAFCF334;
  v37 = 0;
  v20 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v16, &unk_1F390A6B0, v17, v18, COERCE_DOUBLE(0x3032000000), v19);
  v21 = APPerfLogForCategory();
  v22 = os_signpost_id_generate(v21);
  v23 = v21;
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "xpcDelay", "", buf, 2u);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1BAFCF39C;
  v30[3] = &unk_1E7F20E40;
  v30[4] = &v32;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v20, v25, v22, v30, v26, COERCE_DOUBLE(3221225472), v27);
  v28 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v28;
}

- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  v14 = objc_msgSend_requesterID(requesterCopy, v8, v9, v10, v11, v12, v13);
  objc_msgSend__addDelegate_withID_(self, v15, requesterCopy, v14, v16, v17, v18);

  v25 = objc_msgSend_remoteObjectProxy(self, v19, v20, v21, v22, v23, v24);
  v26 = APPerfLogForCategory();
  v27 = os_signpost_id_generate(v26);
  v28 = v26;
  v29 = v28;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *v34 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "xpcDelay", "", v34, 2u);
  }

  objc_msgSend_proxyURLWithLogID_completionHandler_(v25, v30, v27, handlerCopy, v31, v32, v33);
}

- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion
{
  completionCopy = completion;
  requesterCopy = requester;
  warmCopy = warm;
  v17 = objc_msgSend_requesterID(requesterCopy, v11, v12, v13, v14, v15, v16);
  objc_msgSend__addDelegate_withID_(self, v18, requesterCopy, v17, v19, v20, v21);

  v27 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v22, &unk_1F390A6D0, v23, v24, v25, v26);
  v28 = APPerfLogForCategory();
  v29 = os_signpost_id_generate(v28);
  v30 = v28;
  v31 = v30;
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *v35 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "xpcDelay", "", v35, 2u);
  }

  objc_msgSend_preWarm_logID_completion_(v27, v32, warmCopy, v29, completionCopy, v33, v34);
}

- (void)_addDelegate:(id)delegate withID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v13 = objc_msgSend_lock(self, v7, v8, v9, v10, v11, v12);
  objc_msgSend_lock(v13, v14, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_requestDelegates(self, v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_objectForKey_(v26, v27, dCopy, v28, v29, v30, v31);

  if (!v32)
  {
    v39 = objc_msgSend_requestDelegates(self, v33, v34, v35, v36, v37, v38);
    objc_msgSend_setObject_forKey_(v39, v40, delegateCopy, dCopy, v41, v42, v43);
  }

  objc_msgSend_unlock(v13, v33, v34, v35, v36, v37, v38);
}

- (void)connectionInterrupted
{
  v74 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_lock(self, a2, v2, v3, v4, v5, v6);
  objc_msgSend_lock(v8, v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_requestDelegates(self, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_copy(v21, v22, v23, v24, v25, v26, v27);

  v35 = objc_msgSend_requestDelegates(self, v29, v30, v31, v32, v33, v34);
  objc_msgSend_removeAllObjects(v35, v36, v37, v38, v39, v40, v41);

  objc_msgSend_unlock(v8, v42, v43, v44, v45, v46, v47);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v48 = v28;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v69, v73, 16, v50, v51);
  if (v52)
  {
    v58 = v52;
    v59 = *v70;
    do
    {
      v60 = 0;
      do
      {
        if (*v70 != v59)
        {
          objc_enumerationMutation(v48);
        }

        v61 = objc_msgSend_objectForKey_(v48, v53, *(*(&v69 + 1) + 8 * v60), v54, v55, v56, v57, v69);
        objc_msgSend_connectionSevered(v61, v62, v63, v64, v65, v66, v67);

        ++v60;
      }

      while (v58 != v60);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v53, &v69, v73, 16, v56, v57);
    }

    while (v58);
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)connectionInvalidated
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_lock(self, a2, v2, v3, v4, v5, v6);
  objc_msgSend_lock(v8, v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_requestDelegates(self, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_requestDelegates(self, v22, v23, v24, v25, v26, v27);
  objc_msgSend_removeAllObjects(v28, v29, v30, v31, v32, v33, v34);

  objc_msgSend_unlock(v8, v35, v36, v37, v38, v39, v40);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v41 = v21;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v62, v66, 16, v43, v44);
  if (v45)
  {
    v51 = v45;
    v52 = *v63;
    do
    {
      v53 = 0;
      do
      {
        if (*v63 != v52)
        {
          objc_enumerationMutation(v41);
        }

        v54 = objc_msgSend_objectForKey_(v41, v46, *(*(&v62 + 1) + 8 * v53), v47, v48, v49, v50, v62);
        objc_msgSend_connectionSevered(v54, v55, v56, v57, v58, v59, v60);

        ++v53;
      }

      while (v51 != v53);
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v46, &v62, v66, 16, v49, v50);
    }

    while (v51);
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (void)extendCollectionClassesForExportedInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v3, v7, v5, v8, v9, v10, v11, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interfaceCopy, v12, v15, sel_contentResponses_requester_, 0, v13, v14, 0);
}

- (void)extendCollectionClassesForRemoteInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v3, v7, v5, v8, v9, v10, v11, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interfaceCopy, v12, v15, sel_sendAndRankContent_forContext_placement_logID_completionHandler_, 0, v13, v14, 1);
}

@end
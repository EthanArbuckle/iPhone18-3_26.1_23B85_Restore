@interface APPCControllerRequester
- (APPCControllerRequester)initWithDeliveryBlock:(id)block;
- (id)_preprocessHandler:(id)handler;
- (id)proxyURL;
- (void)_invalidateAndfulfillAllRequestsWithError:(id)error;
- (void)connectionSevered;
- (void)contentResponses:(id)responses;
- (void)endRequests;
- (void)handleCompletionOfRequest:(id)request;
- (void)preWarm:(id)warm completion:(id)completion;
- (void)proxyURLWithCompletionHandler:(id)handler;
- (void)requestPromotedContentOfTypes:(id)types forContext:(id)context completionHandler:(id)handler;
- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement responseHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation APPCControllerRequester

- (void)endRequests
{
  objc_msgSend__invalidateAndfulfillAllRequestsWithError_(self, a2, 0, v2, v3, v4, v5);
  v49 = objc_msgSend_lock(self, v7, v8, v9, v10, v11, v12);
  objc_msgSend_lock(v49, v13, v14, v15, v16, v17, v18);
  objc_msgSend_setInvalid_(self, v19, 1, v20, v21, v22, v23);
  objc_msgSend_unlock(v49, v24, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_requestCoordinator(self, v30, v31, v32, v33, v34, v35);
  v43 = objc_msgSend_requesterID(self, v37, v38, v39, v40, v41, v42);
  objc_msgSend_finishedWithRequestsForID_(v36, v44, v43, v45, v46, v47, v48);
}

- (APPCControllerRequester)initWithDeliveryBlock:(id)block
{
  blockCopy = block;
  v42.receiver = self;
  v42.super_class = APPCControllerRequester;
  v5 = [(APPCControllerRequester *)&v42 init];
  v12 = v5;
  if (v5)
  {
    v5->_invalid = 0;
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10, v11);
    requestCompletionBlockByRequestID = v12->_requestCompletionBlockByRequestID;
    v12->_requestCompletionBlockByRequestID = v13;

    v15 = _Block_copy(blockCopy);
    newPromotedContentsDeliveryBlock = v12->_newPromotedContentsDeliveryBlock;
    v12->_newPromotedContentsDeliveryBlock = v15;

    v17 = objc_alloc(MEMORY[0x1E69861D8]);
    v23 = objc_msgSend_initWithOptions_(v17, v18, 1, v19, v20, v21, v22);
    lock = v12->_lock;
    v12->_lock = v23;

    v31 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v25, v26, v27, v28, v29, v30);
    requesterID = v12->_requesterID;
    v12->_requesterID = v31;

    v39 = objc_msgSend_requestCoordinator(APControllerRequesterCoordinator, v33, v34, v35, v36, v37, v38);
    requestCoordinator = v12->_requestCoordinator;
    v12->_requestCoordinator = v39;
  }

  return v12;
}

- (void)requestPromotedContentOfTypes:(id)types forContext:(id)context completionHandler:(id)handler
{
  typesCopy = types;
  contextCopy = context;
  handlerCopy = handler;
  v16 = objc_msgSend__preprocessHandler_(self, v11, handlerCopy, v12, v13, v14, v15);
  if (v16)
  {
    objc_initWeak(&location, self);
    v23 = objc_msgSend_requestCoordinator(self, v17, v18, v19, v20, v21, v22);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1BAFCFDC0;
    v27[3] = &unk_1E7F20E68;
    objc_copyWeak(&v29, &location);
    v28 = v16;
    objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_completionHandler_(v23, v24, typesCopy, self, contextCopy, v25, v26, v27);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement responseHandler:(id)handler completionHandler:(id)completionHandler
{
  contentCopy = content;
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v21 = objc_msgSend__preprocessHandler_(self, v16, completionHandlerCopy, v17, v18, v19, v20);
  if (v21)
  {
    objc_initWeak(&location, self);
    v28 = objc_msgSend_requestCoordinator(self, v22, v23, v24, v25, v26, v27);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1BAFCFFA8;
    v32[3] = &unk_1E7F20E90;
    v34 = handlerCopy;
    objc_copyWeak(&v35, &location);
    v33 = v21;
    objc_msgSend_sendAndRankContent_forContext_placement_completionHandler_(v28, v29, contentCopy, contextCopy, placement, v30, v31, v32);

    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)connectionSevered
{
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E696A588];
  v17[0] = *MEMORY[0x1E696A578];
  v17[1] = v5;
  v18[0] = @"PCController requester was invalidated.";
  v18[1] = @"The user asked to invalidate the requester.";
  v17[2] = *MEMORY[0x1E696A598];
  v18[2] = @"Create a new PCController requester and try again.";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v18, v17, 3, v2, v3);
  v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"APPCControllerRequesterErrorDomain", 5003, v6, v8, v9);
  objc_msgSend__invalidateAndfulfillAllRequestsWithError_(self, v11, v10, v12, v13, v14, v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)contentResponses:(id)responses
{
  v72 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  v11 = objc_msgSend_lock(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14, v15, v16, v17);

  v24 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v18, v19, v20, v21, v22, v23);
  if (v24)
  {
    v31 = v24;
    v32 = objc_msgSend_invalid(self, v25, v26, v27, v28, v29, v30);

    if ((v32 & 1) == 0)
    {
      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v70 = 134217984;
        v71 = objc_msgSend_count(responsesCopy, v34, v35, v36, v37, v38, v39);
        _os_log_impl(&dword_1BAFC4000, v33, OS_LOG_TYPE_INFO, "Received promoted contents: %lu", &v70, 0xCu);
      }

      v46 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v40, v41, v42, v43, v44, v45);
      (v46)[2](v46, responsesCopy);
    }
  }

  v47 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v25, v26, v27, v28, v29, v30);

  if (!v47)
  {
    v54 = APLogForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&dword_1BAFC4000, v54, OS_LOG_TYPE_ERROR, "Promoted contents are discarded due to missing delivery block.", &v70, 2u);
    }
  }

  if (objc_msgSend_invalid(self, v48, v49, v50, v51, v52, v53))
  {
    v61 = APLogForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v70) = 0;
      _os_log_impl(&dword_1BAFC4000, v61, OS_LOG_TYPE_ERROR, "Promoted contents are discarded because the requester is invalid.", &v70, 2u);
    }
  }

  v62 = objc_msgSend_lock(self, v55, v56, v57, v58, v59, v60);
  objc_msgSend_unlock(v62, v63, v64, v65, v66, v67, v68);

  v69 = *MEMORY[0x1E69E9840];
}

- (id)proxyURL
{
  v8 = objc_msgSend_requestCoordinator(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_proxyURLForRequester_(v8, v9, self, v10, v11, v12, v13);

  return v14;
}

- (void)proxyURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15 = objc_msgSend_requestCoordinator(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_proxyURLForRequester_withCompletionHandler_(v15, v11, self, handlerCopy, v12, v13, v14);
}

- (void)preWarm:(id)warm completion:(id)completion
{
  completionCopy = completion;
  warmCopy = warm;
  v17 = objc_msgSend_requestCoordinator(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_preWarm_forRequester_completion_(v17, v14, warmCopy, self, completionCopy, v15, v16);
}

- (void)_invalidateAndfulfillAllRequestsWithError:(id)error
{
  v82 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v11 = objc_msgSend_lock(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14, v15, v16, v17);

  objc_msgSend_setLastError_(self, v18, errorCopy, v19, v20, v21, v22);
  v29 = objc_msgSend_requestCompletionBlockByRequestID(self, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_allValues(v29, v30, v31, v32, v33, v34, v35);

  v43 = objc_msgSend_requestCompletionBlockByRequestID(self, v37, v38, v39, v40, v41, v42);
  objc_msgSend_removeAllObjects(v43, v44, v45, v46, v47, v48, v49);

  v56 = objc_msgSend_lock(self, v50, v51, v52, v53, v54, v55);
  objc_msgSend_unlock(v56, v57, v58, v59, v60, v61, v62);

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = v36;
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v77, v81, 16, v65, v66);
  if (v67)
  {
    v68 = v67;
    v69 = *v78;
    do
    {
      v70 = 0;
      do
      {
        if (*v78 != v69)
        {
          objc_enumerationMutation(v63);
        }

        (*(*(*(&v77 + 1) + 8 * v70++) + 16))();
      }

      while (v68 != v70);
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v71, &v77, v81, 16, v72, v73);
    }

    while (v68);
  }

  v74 = APLogForCategory();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *v76 = 0;
    _os_log_impl(&dword_1BAFC4000, v74, OS_LOG_TYPE_INFO, "XPC connection is closed.", v76, 2u);
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)handleCompletionOfRequest:(id)request
{
  v67 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v11 = objc_msgSend_lock(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14, v15, v16, v17);

  v24 = objc_msgSend_requestCompletionBlockByRequestID(self, v18, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_objectForKey_(v24, v25, requestCopy, v26, v27, v28, v29);

  v37 = objc_msgSend_requestCompletionBlockByRequestID(self, v31, v32, v33, v34, v35, v36);
  objc_msgSend_removeObjectForKey_(v37, v38, requestCopy, v39, v40, v41, v42);

  v49 = objc_msgSend_lock(self, v43, v44, v45, v46, v47, v48);
  objc_msgSend_unlock(v49, v50, v51, v52, v53, v54, v55);

  if (v30)
  {
    v30[2](v30, 0);
  }

  else
  {
    v56 = APLogForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_msgSend_lastError(self, v57, v58, v59, v60, v61, v62);
      v65 = 138543362;
      v66 = v63;
      _os_log_impl(&dword_1BAFC4000, v56, OS_LOG_TYPE_ERROR, "Request completion block was triggered due to %{public}@.", &v65, 0xCu);
    }
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (id)_preprocessHandler:(id)handler
{
  v83[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = objc_msgSend_lock(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14, v15, v16, v17);

  if (objc_msgSend_invalid(self, v18, v19, v20, v21, v22, v23))
  {
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v81 = 0;
      _os_log_impl(&dword_1BAFC4000, v30, OS_LOG_TYPE_ERROR, "Invalid requester cannot request promoted content.", v81, 2u);
    }

    v31 = *MEMORY[0x1E696A588];
    v82[0] = *MEMORY[0x1E696A578];
    v82[1] = v31;
    v83[0] = @"PCController requester was invalidated.";
    v83[1] = @"The user asked to invalidate the requester.";
    v82[2] = *MEMORY[0x1E696A598];
    v83[2] = @"Create a new PCController requester and try again.";
    v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v83, v82, 3, v33, v34);
    v39 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v36, @"APPCControllerRequesterErrorDomain", 5003, v35, v37, v38);
    handlerCopy[2](handlerCopy, v39);

    v46 = objc_msgSend_lock(self, v40, v41, v42, v43, v44, v45);
    objc_msgSend_unlock(v46, v47, v48, v49, v50, v51, v52);

    v53 = 0;
  }

  else
  {
    v53 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v24, v25, v26, v27, v28, v29);
    v60 = objc_msgSend_requestCompletionBlockByRequestID(self, v54, v55, v56, v57, v58, v59);
    v61 = _Block_copy(handlerCopy);

    objc_msgSend_setObject_forKey_(v60, v62, v61, v53, v63, v64, v65);
    v72 = objc_msgSend_lock(self, v66, v67, v68, v69, v70, v71);
    objc_msgSend_unlock(v72, v73, v74, v75, v76, v77, v78);
  }

  v79 = *MEMORY[0x1E69E9840];

  return v53;
}

@end
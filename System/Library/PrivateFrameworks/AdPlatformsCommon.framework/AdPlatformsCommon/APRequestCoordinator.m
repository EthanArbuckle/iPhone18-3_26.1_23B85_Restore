@interface APRequestCoordinator
+ (id)sharedCoordinator;
- (APRequestCoordinator)init;
- (BOOL)attemptRetryMessageForBox:(id)a3;
- (id)proxyURLForRequester:(id)a3;
- (void)_addBox:(id)a3;
- (void)_removeBox:(id)a3;
- (void)beginSessionForID:(id)a3;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)connectionSeveredForBox:(id)a3;
- (void)contentResponses:(id)a3 requester:(id)a4;
- (void)extendCollectionClassesForExportedInterface:(id)a3;
- (void)extendCollectionClassesForRemoteInterface:(id)a3;
- (void)finishedWithRequestsForID:(id)a3;
- (void)preWarm:(id)a3 forRequester:(id)a4 completion:(id)a5;
- (void)proxyURLForRequester:(id)a3 withCompletionHandler:(id)a4;
- (void)requestPromotedContentWithBox:(id)a3;
- (void)requestPromotedContentWithContents:(id)a3 forRequester:(id)a4 completionHandler:(id)a5;
- (void)requestProxyWithBox:(id)a3;
- (void)requestRankingWithBox:(id)a3;
- (void)sendAndRankContent:(id)a3 forRequester:(id)a4 forContext:(id)a5 placement:(unint64_t)a6 completionHandler:(id)a7;
@end

@implementation APRequestCoordinator

+ (id)sharedCoordinator
{
  if (qword_1EDD51888[0] != -1)
  {
    sub_1BAFC6AF8();
  }

  v3 = qword_1EDD51880;

  return v3;
}

- (APRequestCoordinator)init
{
  v14.receiver = self;
  v14.super_class = APRequestCoordinator;
  v6 = [(APXPCActionRequester *)&v14 init];
  if (v6)
  {
    v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4, v5, v7, v8);
    managerToRetryBoxMap = v6->_managerToRetryBoxMap;
    v6->_managerToRetryBoxMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69861D8]);
    lock = v6->_lock;
    v6->_lock = v11;
  }

  return v6;
}

- (void)requestPromotedContentWithContents:(id)a3 forRequester:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [APCoordinatedAdRequestBox alloc];
  v15 = objc_msgSend_initWithDelegate_contents_handler_(v11, v12, v9, v10, v8, v13, v14);

  objc_msgSend__addBox_(self, v16, v15, v17, v18, v19, v20);
  v27 = objc_msgSend_clientInfo(v10, v21, v22, v23, v24, v25, v26);

  if (!v27)
  {
    v33 = APLogForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1BAFC4000, v33, OS_LOG_TYPE_DEFAULT, "No client info was available for an ad request.", v34, 2u);
    }
  }

  objc_msgSend_requestPromotedContentWithBox_(self, v28, v15, v29, v30, v31, v32);
}

- (void)sendAndRankContent:(id)a3 forRequester:(id)a4 forContext:(id)a5 placement:(unint64_t)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [APCoordinatedRankRequestBox alloc];
  v28 = objc_msgSend_initWithDelegate_contents_placement_handler_(v14, v15, v12, v13, a6, v16, v17, v11);

  objc_msgSend__addBox_(self, v18, v28, v19, v20, v21, v22);
  objc_msgSend_requestRankingWithBox_(self, v23, v28, v24, v25, v26, v27);
}

- (void)beginSessionForID:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v49 = objc_msgSend_array(v4, v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_lock(self, v12, v13, v14, v15, v16, v17);
  objc_msgSend_lock(v18, v19, v20, v21, v22, v23, v24);

  v31 = objc_msgSend_managerToRetryBoxMap(self, v25, v26, v27, v28, v29, v30);
  objc_msgSend_setObject_forKey_(v31, v32, v49, v5, v33, v34, v35);

  v42 = objc_msgSend_lock(self, v36, v37, v38, v39, v40, v41);
  objc_msgSend_unlock(v42, v43, v44, v45, v46, v47, v48);
}

- (void)finishedWithRequestsForID:(id)a3
{
  v4 = a3;
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
  objc_msgSend_finishedWithRequestsForRequester_logID_(v15, v16, v4, v6, v17, v18, v19);

  v26 = objc_msgSend_lock(self, v20, v21, v22, v23, v24, v25);
  objc_msgSend_lock(v26, v27, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_managerToRetryBoxMap(self, v33, v34, v35, v36, v37, v38);
  objc_msgSend_removeObjectForKey_(v39, v40, v4, v41, v42, v43, v44);

  v51 = objc_msgSend_managerToRetryBoxMap(self, v45, v46, v47, v48, v49, v50);
  v58 = objc_msgSend_count(v51, v52, v53, v54, v55, v56, v57);

  objc_msgSend_unlock(v26, v59, v60, v61, v62, v63, v64);
  if (!v58)
  {
    objc_msgSend_finished(self, v65, v66, v67, v68, v69, v70);
  }
}

- (id)proxyURLForRequester:(id)a3
{
  v4 = a3;
  v5 = [APCoordinatedRetryBox alloc];
  v10 = objc_msgSend_initWithType_delegate_(v5, v6, -1, v4, v7, v8, v9);
  objc_msgSend_setCanRetry_(v10, v11, 0, v12, v13, v14, v15);
  objc_msgSend__addBox_(self, v16, v10, v17, v18, v19, v20);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1BAFD4A1C;
  v46 = sub_1BAFD4A2C;
  v47 = 0;
  v25 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v21, &unk_1F390A6F0, v22, v23, COERCE_DOUBLE(0x3032000000), v24);
  v26 = APPerfLogForCategory();
  v27 = os_signpost_id_generate(v26);
  v28 = v26;
  v29 = v28;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "xpcDelay", "", buf, 2u);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1BAFD4A94;
  v40[3] = &unk_1E7F20E40;
  v40[4] = &v42;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v25, v30, v27, v40, v31, COERCE_DOUBLE(3221225472), v32);
  objc_msgSend__removeBox_(self, v33, v10, v34, v35, v36, v37);
  v38 = v43[5];

  _Block_object_dispose(&v42, 8);

  return v38;
}

- (void)proxyURLForRequester:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [APCoordinatedProxyUrlRequestBox alloc];
  v23 = objc_msgSend_initWithDelegate_handler_(v8, v9, v7, v6, v10, v11, v12);

  objc_msgSend__addBox_(self, v13, v23, v14, v15, v16, v17);
  objc_msgSend_requestProxyWithBox_(self, v18, v23, v19, v20, v21, v22);
}

- (void)preWarm:(id)a3 forRequester:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [APCoordinatedRetryBox alloc];
  v16 = objc_msgSend_initWithType_delegate_(v11, v12, -1, v9, v13, v14, v15);

  objc_msgSend_setCanRetry_(v16, v17, 0, v18, v19, v20, v21);
  objc_msgSend__addBox_(self, v22, v16, v23, v24, v25, v26);
  v32 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v27, &unk_1F390A710, v28, v29, v30, v31);
  v33 = APPerfLogForCategory();
  v34 = os_signpost_id_generate(v33);
  v35 = v33;
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *v45 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "xpcDelay", "", v45, 2u);
  }

  objc_msgSend_preWarm_logID_completion_(v32, v37, v10, v34, v8, v38, v39);
  objc_msgSend__removeBox_(self, v40, v16, v41, v42, v43, v44);
}

- (void)requestPromotedContentWithBox:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v90[3] = 0;
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", buf, 2u);
  }

  v84 = v6;
  v82 = v8;

  v83 = objc_msgSend_remoteObjectProxy(self, v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_requestContents(v4, v15, v16, v17, v18, v19, v20);
  v81 = objc_msgSend_contentTypes(v21, v22, v23, v24, v25, v26, v27);
  v80 = objc_msgSend_requesterID(v4, v28, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_requestContents(v4, v34, v35, v36, v37, v38, v39);
  v47 = objc_msgSend_apContext(v40, v41, v42, v43, v44, v45, v46);
  v54 = objc_msgSend_requestContents(v4, v48, v49, v50, v51, v52, v53);
  v61 = objc_msgSend_clientInfo(v54, v55, v56, v57, v58, v59, v60);
  v68 = objc_msgSend_requestContents(v4, v62, v63, v64, v65, v66, v67);
  v75 = objc_msgSend_deliverEntireBatch(v68, v69, v70, v71, v72, v73, v74);
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_1BAFD4F8C;
  v85[3] = &unk_1E7F20F30;
  v87 = v90;
  objc_copyWeak(&v88, location);
  v76 = v4;
  v86 = v76;
  objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_withClientInfo_deliverEntireBatch_logID_completionHandler_(v83, v77, v81, v80, v47, v78, v79, v61, v75, v84, v85);

  objc_destroyWeak(&v88);
  _Block_object_dispose(v90, 8);
  objc_destroyWeak(location);
}

- (void)requestRankingWithBox:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", buf, 2u);
  }

  v15 = objc_msgSend_remoteObjectProxy(self, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_contentDatas(v4, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_context(v4, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_placement(v4, v30, v31, v32, v33, v34, v35);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1BAFD5228;
  v41[3] = &unk_1E7F20F58;
  objc_copyWeak(&v43, &location);
  v37 = v4;
  v42 = v37;
  objc_msgSend_sendAndRankContent_forContext_placement_logID_completionHandler_(v15, v38, v22, v29, v36, v39, v40, v6, v41);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

- (void)requestProxyWithBox:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_remoteObjectProxy(self, v5, v6, v7, v8, v9, v10);
  objc_initWeak(&location, self);
  v12 = APPerfLogForCategory();
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "xpcDelay", "", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1BAFD5444;
  v21[3] = &unk_1E7F20F80;
  objc_copyWeak(&v23, &location);
  v16 = v4;
  v22 = v16;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v11, v17, v13, v21, v18, v19, v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)contentResponses:(id)a3 requester:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = objc_msgSend_lock(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_lock(v14, v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_managerToRetryBoxMap(self, v21, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_objectForKey_(v27, v28, v7, v29, v30, v31, v32);

  v40 = objc_msgSend_firstObject(v33, v34, v35, v36, v37, v38, v39);
  v47 = objc_msgSend_requestDelegate(v40, v41, v42, v43, v44, v45, v46);

  objc_msgSend_unlock(v14, v48, v49, v50, v51, v52, v53);
  if (v47)
  {
    objc_msgSend_contentResponses_(v47, v54, v6, v55, v56, v57, v58);
  }

  else
  {
    v59 = APLogForCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v63 = 138478083;
      v64 = v61;
      v65 = 2114;
      v66 = v7;
      _os_log_impl(&dword_1BAFC4000, v59, OS_LOG_TYPE_DEFAULT, "[%{private}@] The requester for %{public}@ is no longer stored. Dropping response.", &v63, 0x16u);
    }
  }

  v62 = *MEMORY[0x1E69E9840];
}

- (void)_addBox:(id)a3
{
  v73 = a3;
  v10 = objc_msgSend_lock(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13, v14, v15, v16);

  v23 = objc_msgSend_managerToRetryBoxMap(self, v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_requesterID(v73, v24, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_objectForKey_(v23, v31, v30, v32, v33, v34, v35);

  if (v36)
  {
    if ((objc_msgSend_containsObject_(v36, v37, v73, v38, v39, v40, v41) & 1) == 0)
    {
      objc_msgSend_addObject_(v36, v42, v73, v44, v45, v46, v47);
    }
  }

  else
  {
    v36 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v37, v73, v38, v39, v40, v41);
  }

  v48 = objc_msgSend_managerToRetryBoxMap(self, v42, v43, v44, v45, v46, v47);
  v55 = objc_msgSend_requesterID(v73, v49, v50, v51, v52, v53, v54);
  objc_msgSend_setObject_forKey_(v48, v56, v36, v55, v57, v58, v59);

  v66 = objc_msgSend_lock(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_unlock(v66, v67, v68, v69, v70, v71, v72);
}

- (void)_removeBox:(id)a3
{
  v74 = a3;
  v10 = objc_msgSend_lock(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13, v14, v15, v16);

  v23 = objc_msgSend_managerToRetryBoxMap(self, v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_requesterID(v74, v24, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_objectForKey_(v23, v31, v30, v32, v33, v34, v35);

  if (v36)
  {
    objc_msgSend_removeObject_(v36, v37, v74, v39, v40, v41, v42);
    v49 = objc_msgSend_managerToRetryBoxMap(self, v43, v44, v45, v46, v47, v48);
    v56 = objc_msgSend_requesterID(v74, v50, v51, v52, v53, v54, v55);
    objc_msgSend_setObject_forKey_(v49, v57, v36, v56, v58, v59, v60);
  }

  else
  {
    v49 = objc_msgSend_diagnosticReportPayload(v74, v37, v38, v39, v40, v41, v42);
    CreateDiagnosticReport();
  }

  v67 = objc_msgSend_lock(self, v61, v62, v63, v64, v65, v66);
  objc_msgSend_unlock(v67, v68, v69, v70, v71, v72, v73);
}

- (void)connectionInterrupted
{
  v155 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAFC4000, v3, OS_LOG_TYPE_ERROR, "XPC Connection interrupted", buf, 2u);
  }

  v10 = objc_msgSend_lock(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_managerToRetryBoxMap(self, v17, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_copy(v23, v24, v25, v26, v27, v28, v29);

  v37 = objc_msgSend_managerToRetryBoxMap(self, v31, v32, v33, v34, v35, v36);
  objc_msgSend_removeAllObjects(v37, v38, v39, v40, v41, v42, v43);

  v131 = v10;
  objc_msgSend_unlock(v10, v44, v45, v46, v47, v48, v49);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  obj = v30;
  v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v141, v154, 16, v51, v52);
  if (v133)
  {
    v132 = *v142;
    v57 = 138478595;
    do
    {
      v58 = 0;
      do
      {
        if (*v142 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v135 = v58;
        v59 = objc_msgSend_objectForKey_(obj, v53, *(*(&v141 + 1) + 8 * v58), v54, v55, *&v57, v56);
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v137, v153, 16, 0.0, v61);
        if (v62)
        {
          v69 = v62;
          v70 = *v138;
          do
          {
            v71 = 0;
            v136 = v69;
            do
            {
              if (*v138 != v70)
              {
                objc_enumerationMutation(v59);
              }

              v72 = *(*(&v137 + 1) + 8 * v71);
              if (objc_msgSend_requestType(v72, v63, v64, v65, v66, v67, v68) == -1)
              {
                goto LABEL_21;
              }

              v78 = objc_msgSend_attemptRetryMessageForBox_(self, v73, v72, v74, v75, v76, v77);
              v79 = APLogForCategory();
              v80 = v79;
              if (!v78)
              {
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v104 = objc_opt_class();
                  v105 = NSStringFromClass(v104);
                  v112 = objc_msgSend_requestID(v72, v106, v107, v108, v109, v110, v111);
                  v119 = objc_msgSend_requestType(v72, v113, v114, v115, v116, v117, v118);
                  objc_msgSend_requesterID(v72, v120, v121, v122, v123, v124, v125);
                  v126 = v70;
                  v127 = self;
                  v129 = v128 = v59;
                  *buf = 138478595;
                  v146 = v105;
                  v147 = 2114;
                  v148 = v112;
                  v149 = 2050;
                  v150 = v119;
                  v151 = 2114;
                  v152 = v129;
                  _os_log_impl(&dword_1BAFC4000, v80, OS_LOG_TYPE_ERROR, "[%{private}@] Unable to retry request %{public}@ of type %{public}ld for requester %{public}@", buf, 0x2Au);

                  v59 = v128;
                  self = v127;
                  v70 = v126;
                  v69 = v136;
                }

LABEL_21:
                objc_msgSend_connectionSeveredForBox_(self, v73, v72, v74, v75, v76, v77);
                goto LABEL_22;
              }

              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v81 = objc_opt_class();
                v82 = NSStringFromClass(v81);
                v89 = objc_msgSend_requestID(v72, v83, v84, v85, v86, v87, v88);
                v96 = objc_msgSend_requestType(v72, v90, v91, v92, v93, v94, v95);
                v103 = objc_msgSend_requesterID(v72, v97, v98, v99, v100, v101, v102);
                *buf = 138478595;
                v146 = v82;
                v147 = 2114;
                v148 = v89;
                v149 = 2050;
                v150 = v96;
                v151 = 2114;
                v152 = v103;
                _os_log_impl(&dword_1BAFC4000, v80, OS_LOG_TYPE_DEFAULT, "[%{private}@] Request %{public}@ of type %{public}ld is attempting to retry for requester %{public}@", buf, 0x2Au);
              }

LABEL_22:
              ++v71;
            }

            while (v69 != v71);
            v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v63, &v137, v153, 16, v67, v68);
          }

          while (v69);
        }

        v58 = v135 + 1;
      }

      while (v135 + 1 != v133);
      v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v141, v154, 16, *&v57, v56);
    }

    while (v133);
  }

  v130 = *MEMORY[0x1E69E9840];
}

- (void)connectionInvalidated
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_lock(self, a2, v2, v3, v4, v5, v6);
  objc_msgSend_lock(v8, v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_managerToRetryBoxMap(self, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_copy(v21, v22, v23, v24, v25, v26, v27);

  v35 = objc_msgSend_managerToRetryBoxMap(self, v29, v30, v31, v32, v33, v34);
  objc_msgSend_removeAllObjects(v35, v36, v37, v38, v39, v40, v41);

  objc_msgSend_unlock(v8, v42, v43, v44, v45, v46, v47);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v48 = v28;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v78, v83, 16, v50, v51);
  if (v52)
  {
    v58 = v52;
    v59 = *v79;
    do
    {
      v60 = 0;
      do
      {
        if (*v79 != v59)
        {
          objc_enumerationMutation(v48);
        }

        v61 = objc_msgSend_objectForKey_(v48, v53, *(*(&v78 + 1) + 8 * v60), v54, v55, v56, v57);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v74, v82, 16, 0.0, v63);
        if (v64)
        {
          v70 = v64;
          v71 = *v75;
          do
          {
            v72 = 0;
            do
            {
              if (*v75 != v71)
              {
                objc_enumerationMutation(v61);
              }

              objc_msgSend_connectionSeveredForBox_(self, v65, *(*(&v74 + 1) + 8 * v72++), v66, v67, v68, v69);
            }

            while (v70 != v72);
            v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v65, &v74, v82, 16, v68, v69);
          }

          while (v70);
        }

        ++v60;
      }

      while (v60 != v58);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v53, &v78, v83, 16, v56, v57);
    }

    while (v58);
  }

  v73 = *MEMORY[0x1E69E9840];
}

- (void)extendCollectionClassesForExportedInterface:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v3, v7, v5, v8, v9, v10, v11, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v12, v15, sel_contentResponses_requester_, 0, v13, v14, 0);
}

- (void)extendCollectionClassesForRemoteInterface:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v15 = objc_msgSend_setWithObjects_(v3, v7, v5, v8, v9, v10, v11, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v4, v12, v15, sel_sendAndRankContent_forContext_placement_logID_completionHandler_, 0, v13, v14, 1);
}

- (BOOL)attemptRetryMessageForBox:(id)a3
{
  v4 = a3;
  if (objc_msgSend_canRetry(v4, v5, v6, v7, v8, v9, v10))
  {
    v17 = objc_msgSend_requestDelegate(v4, v11, v12, v13, v14, v15, v16);

    if (v17)
    {
      objc_msgSend_setCanRetry_(v4, v18, 0, v19, v20, v21, v22);
      objc_msgSend__addBox_(self, v23, v4, v24, v25, v26, v27);
      v34 = objc_msgSend_requestType(v4, v28, v29, v30, v31, v32, v33);
      switch(v34)
      {
        case 2:
          objc_msgSend_requestProxyWithBox_(self, v35, v4, v36, v37, v38, v39);
          goto LABEL_10;
        case 1:
          objc_msgSend_requestRankingWithBox_(self, v35, v4, v36, v37, v38, v39);
          goto LABEL_10;
        case 0:
          objc_msgSend_requestPromotedContentWithBox_(self, v35, v4, v36, v37, v38, v39);
LABEL_10:
          v40 = 1;
          goto LABEL_11;
      }
    }
  }

  v40 = 0;
LABEL_11:

  return v40;
}

- (void)connectionSeveredForBox:(id)a3
{
  v42[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E696A588];
  v41[0] = *MEMORY[0x1E696A578];
  v41[1] = v4;
  v42[0] = @"APRequestCoordinator was invalidated.";
  v42[1] = @"The user asked to invalidate the requester, or connection was interrupted.";
  v41[2] = *MEMORY[0x1E696A598];
  v42[2] = @"Retry failed request again.";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v42, v41, 3, v6, v7);
  v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v9, @"APPCControllerRequesterErrorDomain", 5003, v8, v10, v11);
  v19 = objc_msgSend_requestDelegate(v3, v13, v14, v15, v16, v17, v18);

  if (v19)
  {
    v26 = objc_msgSend_requestDelegate(v3, v20, v21, v22, v23, v24, v25);
    objc_msgSend_connectionSeveredWithError_(v26, v27, v12, v28, v29, v30, v31);
  }

  v32 = objc_msgSend_requestType(v3, v20, v21, v22, v23, v24, v25);
  if (v32 == 2)
  {
    if (v3)
    {
LABEL_11:
      v39 = objc_msgSend_completionHandler(v3, v33, v34, v35, v36, v37, v38);
      v39[2]();
      goto LABEL_12;
    }
  }

  else if (v32 == 1)
  {
    if (v3)
    {
      v39 = objc_msgSend_completionHandler(v3, v33, v34, v35, v36, v37, v38);
      (v39[2])(v39, 0, v12);
LABEL_12:
    }
  }

  else if (!v32 && v3)
  {
    goto LABEL_11;
  }

  v40 = *MEMORY[0x1E69E9840];
}

@end
@interface CKScheduler
+ (id)activityFromXPCActivity:(id)activity;
+ (id)sharedScheduler;
+ (id)xpcActivityIdentifierForCKActivityIdentifier:(id)identifier;
- (BOOL)hasPendingActivityWithActivityIdentifier:(id)identifier;
- (BOOL)isXPCActivityPending:(id)pending;
- (id)activityForActivityIdentifier:(id)identifier;
- (id)initInternal;
- (id)suggestedXPCActivityCriteriaForActivity:(id)activity;
- (id)xpcActivityForActivityWithIdentifier:(id)identifier;
- (int64_t)currentPriorityForActivityIdentifier:(id)identifier;
- (void)cancelActivityWithIdentifier:(id)identifier;
- (void)performAsyncOnQueue:(id)queue;
- (void)registerActivityIdentifier:(id)identifier replaceExistingHandler:(BOOL)handler handler:(id)a5;
- (void)setXPCActivity:(id)activity forActivityIdentifier:(id)identifier;
- (void)submitActivity:(id)activity completionHandler:(id)handler;
- (void)unregisterActivityIdentifier:(id)identifier;
- (void)unregisterHandlerForActivityIdentifier:(id)identifier;
@end

@implementation CKScheduler

+ (id)sharedScheduler
{
  if (qword_1ED4B62E8 != -1)
  {
    dispatch_once(&qword_1ED4B62E8, &unk_1EFA2FBE8);
  }

  v3 = qword_1ED4B62F0;

  return v3;
}

- (id)initInternal
{
  v17.receiver = self;
  v17.super_class = CKScheduler;
  v2 = [(CKScheduler *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.cloudkit.scheduler", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.cloudkit.scheduler.callback", v6);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create_with_target_V2("com.apple.cloudkit.scheduler.xpc_activity_register", v9, *(v2 + 1));
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = *(v2 + 6);
    *(v2 + 6) = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = *(v2 + 4);
    *(v2 + 4) = v14;
  }

  return v2;
}

- (void)submitActivity:(id)activity completionHandler:(id)handler
{
  v60 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  handlerCopy = handler;
  v52 = 0;
  v8 = _CKCheckArgument("activity", activityCopy, 0, 0, 0, &v52);
  v9 = v52;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v25 = [CKException alloc];
    v28 = objc_msgSend_code(v10, v26, v27);
    v31 = objc_msgSend_localizedDescription(v10, v29, v30);
    v33 = objc_msgSend_initWithCode_format_(v25, v32, v28, @"%@", v31);
    v34 = v33;

    objc_exception_throw(v33);
  }

  v11 = _os_activity_create(&dword_1883EA000, "client/scheduler-submit", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = activityCopy;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "About to submit activity: %@", &buf, 0xCu);
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1883EE190;
  v49 = sub_1883EF77C;
  v50 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864BB78;
  block[3] = &unk_1E70BFF08;
  v44 = &v45;
  block[4] = self;
  v14 = activityCopy;
  v43 = v14;
  dispatch_sync(queue, block);
  if (!v46[5])
  {
    v35 = [CKException alloc];
    v38 = objc_msgSend_identifier(v14, v36, v37);
    v40 = objc_msgSend_initWithName_format_(v35, v39, *MEMORY[0x1E695D940], @"Must register a handler for activity identifier %@ before submitting it", v38);
    v41 = v40;

    objc_exception_throw(v40);
  }

  v16 = objc_msgSend_suggestedXPCActivityCriteriaForActivity_(self, v15, v14);
  v17 = v14;
  v18 = v16;
  v19 = handlerCopy;
  if (self)
  {
    xpcActivityRegisterQueue = self->_xpcActivityRegisterQueue;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v54 = sub_18864BBFC;
    v55 = &unk_1E70BFEB8;
    v21 = v17;
    v56 = v21;
    selfCopy = self;
    v22 = v18;
    v58 = v22;
    v59 = v19;
    dispatch_async(xpcActivityRegisterQueue, &buf);
    if (sub_18864C3D0(CKScheduler, v21))
    {
      v23 = sub_18864C470(CKScheduler, v21, v22);
      AnalyticsSendEvent();
    }
  }

  _Block_object_dispose(&v45, 8);
  os_activity_scope_leave(&state);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)setXPCActivity:(id)activity forActivityIdentifier:(id)identifier
{
  activityCopy = activity;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864C81C;
  block[3] = &unk_1E70BC360;
  block[4] = self;
  v13 = identifierCopy;
  v14 = activityCopy;
  v10 = activityCopy;
  v11 = v8;
  dispatch_sync(queue, block);
}

- (void)registerActivityIdentifier:(id)identifier replaceExistingHandler:(BOOL)handler handler:(id)a5
{
  identifierCopy = identifier;
  v9 = a5;
  v48 = 0;
  v10 = _CKCheckArgument("ckActivityIdentifier", identifierCopy, 0, 0, 0, &v48);
  v11 = v48;
  v12 = v11;
  if ((v10 & 1) == 0 || (v11, v13 = _Block_copy(v9), v47 = 0, v14 = _CKCheckArgument("handler", v13, 0, 0, 0, &v47), v12 = v47, v13, (v14 & 1) == 0))
  {
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v12, v22, v23);
    v27 = objc_msgSend_localizedDescription(v12, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v15 = _os_activity_create(&dword_1883EA000, "client/scheduler-register", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864CB88;
  block[3] = &unk_1E70C0080;
  v17 = identifierCopy;
  handlerCopy = handler;
  v37 = v17;
  selfCopy = self;
  v40 = &v42;
  v18 = v9;
  v39 = v18;
  dispatch_sync(queue, block);
  if (v43[3])
  {
    v31 = [CKException alloc];
    v33 = objc_msgSend_initWithName_format_(v31, v32, *MEMORY[0x1E695D940], @"Illegal attempt to register a second handler for activity identifier %@", v17);
    objc_exception_throw(v33);
  }

  if (self)
  {
    xpcActivityRegisterQueue = self->_xpcActivityRegisterQueue;
  }

  else
  {
    xpcActivityRegisterQueue = 0;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_18864CD74;
  v34[3] = &unk_1E70BEEC0;
  v34[4] = self;
  v35 = v17;
  v20 = v17;
  dispatch_async(xpcActivityRegisterQueue, v34);

  _Block_object_dispose(&v42, 8);
  os_activity_scope_leave(&state);
}

- (void)unregisterActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v22 = 0;
  v5 = _CKCheckArgument("ckActivityIdentifier", identifierCopy, 0, 0, 0, &v22);
  v6 = v22;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v11 = [CKException alloc];
    v14 = objc_msgSend_code(v7, v12, v13);
    v17 = objc_msgSend_localizedDescription(v7, v15, v16);
    v19 = objc_msgSend_initWithCode_format_(v11, v18, v14, @"%@", v17);
    v20 = v19;

    objc_exception_throw(v19);
  }

  v8 = _os_activity_create(&dword_1883EA000, "client/scheduler-unregister", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  objc_msgSend_unregisterHandlerForActivityIdentifier_(self, v9, identifierCopy);
  objc_msgSend_cancelActivityWithIdentifier_(self, v10, identifierCopy);
  os_activity_scope_leave(&state);
}

- (void)unregisterHandlerForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v25 = 0;
  v5 = _CKCheckArgument("ckActivityIdentifier", identifierCopy, 0, 0, 0, &v25);
  v6 = v25;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v11 = [CKException alloc];
    v14 = objc_msgSend_code(v7, v12, v13);
    v17 = objc_msgSend_localizedDescription(v7, v15, v16);
    v19 = objc_msgSend_initWithCode_format_(v11, v18, v14, @"%@", v17);
    v20 = v19;

    objc_exception_throw(v19);
  }

  v8 = _os_activity_create(&dword_1883EA000, "client/scheduler-unregister-handler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864D108;
  block[3] = &unk_1E70BEEC0;
  v22 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

- (void)cancelActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v24 = 0;
  v5 = _CKCheckArgument("ckActivityIdentifier", identifierCopy, 0, 0, 0, &v24);
  v6 = v24;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v11 = [CKException alloc];
    v14 = objc_msgSend_code(v7, v12, v13);
    v17 = objc_msgSend_localizedDescription(v7, v15, v16);
    v19 = objc_msgSend_initWithCode_format_(v11, v18, v14, @"%@", v17);
    v20 = v19;

    objc_exception_throw(v19);
  }

  v8 = _os_activity_create(&dword_1883EA000, "client/scheduler-cancel", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864D37C;
  block[3] = &unk_1E70BEEC0;
  block[4] = self;
  v22 = identifierCopy;
  v10 = identifierCopy;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

- (id)xpcActivityForActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_18864E864;
  v16 = sub_18864E874;
  v17 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864E87C;
  block[3] = &unk_1E70BFF08;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)suggestedXPCActivityCriteriaForActivity:(id)activity
{
  v205 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9C40], 1);
  v8 = objc_msgSend_container(activityCopy, v6, v7);
  v11 = objc_msgSend_container(activityCopy, v9, v10);
  v14 = objc_msgSend_deviceContext(v11, v12, v13);
  v17 = objc_msgSend_useLiveServer(v14, v15, v16);

  v18 = *MEMORY[0x1E69E9DB8];
  if (v17)
  {
    xpc_dictionary_set_BOOL(v5, v18, 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DB0], 0);
    v19 = MEMORY[0x18CFD6F70]();
    v22 = objc_msgSend_untrustedEntitlements(v8, v20, v21);
    hasNetworkSocketDelegateEntitlement = objc_msgSend_hasNetworkSocketDelegateEntitlement(v22, v23, v24);

    if (hasNetworkSocketDelegateEntitlement)
    {
      v28 = objc_msgSend_relatedApplicationBundleIdentifiers(activityCopy, v26, v27);
      v31 = objc_msgSend_firstObject(v28, v29, v30);

      if (v31 || (objc_msgSend_defaultRelatedApplicationBundleIdentifiersForContainer_(CKSchedulerActivity, v32, v8), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstObject(v33, v34, v35), v31 = objc_claimAutoreleasedReturnValue(), v33, v31))
      {
        v36 = v31;
        objc_msgSend_UTF8String(v36, v37, v38);
        nw_parameters_set_source_application_by_bundle_id();
      }
    }

    v39 = nw_parameters_copy_dictionary();
    if (v39)
    {
      xpc_dictionary_set_value(v5, *MEMORY[0x1E69E9D38], v39);
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(v5, v18, 0);
  }

  v42 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v40, v41);
  v45 = objc_msgSend_untrustedEntitlements(v42, v43, v44);
  hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v45, v46, v47);

  if ((hasAllowAccessDuringBuddyEntitlement & 1) == 0)
  {
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9D90], 1);
  }

  v51 = objc_msgSend_relatedApplicationBundleIdentifiers(activityCopy, v49, v50);
  v54 = objc_msgSend_count(v51, v52, v53);

  if (v54)
  {
    empty = xpc_array_create_empty();
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v60 = objc_msgSend_relatedApplicationBundleIdentifiers(activityCopy, v58, v59);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v191, v199, 16);
    if (v62)
    {
      v63 = *v192;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v192 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v191 + 1) + 8 * i);
          v68 = objc_msgSend_UTF8String(v65, v66, v67);
          xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, v68);
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v69, &v191, v199, 16);
      }

      while (v62);
    }

    xpc_dictionary_set_value(v5, *MEMORY[0x1E69E9C88], empty);
  }

  v70 = objc_msgSend_priority(activityCopy, v55, v56);
  xpc_dictionary_set_int64(v5, "ck_scheduler_priority", v70);
  v73 = objc_msgSend_identifier(activityCopy, v71, v72);
  v74 = v73;
  v77 = objc_msgSend_UTF8String(v73, v75, v76);
  xpc_dictionary_set_string(v5, "ck_scheduler_activity_identifier", v77);

  v80 = objc_msgSend_containerID(activityCopy, v78, v79);
  v83 = objc_msgSend_containerIdentifier(v80, v81, v82);
  v84 = v83;
  v87 = objc_msgSend_UTF8String(v83, v85, v86);
  xpc_dictionary_set_string(v5, "ck_container_identifier", v87);

  v90 = objc_msgSend_containerID(activityCopy, v88, v89);
  v93 = objc_msgSend_environment(v90, v91, v92);
  xpc_dictionary_set_int64(v5, "ck_environment", v93);

  v96 = objc_msgSend_earliestStartDate(activityCopy, v94, v95);

  if (v96)
  {
    v99 = objc_msgSend_earliestStartDate(activityCopy, v97, v98);
    objc_msgSend_timeIntervalSinceReferenceDate(v99, v100, v101);
    xpc_dictionary_set_double(v5, "ck_earliest_start_date", v102);
  }

  v103 = objc_msgSend_fileProtectionType(activityCopy, v97, v98);
  if (objc_msgSend_isEqualToString_(v103, v104, *MEMORY[0x1E696A378]))
  {
    v106 = MEMORY[0x1E69E9D98];
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v103, v105, *MEMORY[0x1E696A380]))
    {
      goto LABEL_28;
    }

    v106 = MEMORY[0x1E69E9DA0];
  }

  xpc_dictionary_set_BOOL(v5, *v106, 1);
LABEL_28:
  if (objc_msgSend_isEqualToString_(v103, v107, *MEMORY[0x1E696A388]))
  {
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DA8], 1);
  }

  if (objc_msgSend_expectedTransferSizeBytes(activityCopy, v108, v109))
  {
    v112 = objc_msgSend_expectedTransferSizeBytes(activityCopy, v110, v111);
    xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9D40], v112);
  }

  if (objc_msgSend_userRequestedBackupTask(activityCopy, v110, v111))
  {
    v115 = objc_msgSend_userRequestedBackupTask(activityCopy, v113, v114);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DE0], v115);
  }

  v116 = objc_msgSend_priority(activityCopy, v113, v114);
  v119 = 0.0;
  if (!v116 || v116 == 2)
  {
    v121 = 0;
    v120 = *MEMORY[0x1E69E9D78];
    v122 = 60;
  }

  else if (v116 == 1)
  {
    v120 = *MEMORY[0x1E69E9D70];
    v121 = 1;
    v122 = 86400;
    v119 = 3600.0;
  }

  else
  {
    v122 = 0;
    v120 = 0;
    v121 = 1;
  }

  v123 = objc_msgSend_earliestStartDate(activityCopy, v117, v118);
  objc_msgSend_timeIntervalSinceNow(v123, v124, v125);
  v127 = v126;

  if (v127 >= v119)
  {
    v128 = v127;
  }

  else
  {
    v128 = v119;
  }

  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C68], v128);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C98], v122);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], v120);
  if (((v121 | objc_msgSend_userRequestedBackupTask(activityCopy, v129, v130)) & 1) == 0)
  {
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9DD0], 1);
  }

  v133 = objc_msgSend_overrideRateLimiting(activityCopy, v131, v132);
  if (v133)
  {
    v136 = sub_18864F540(v133, v134, v135);
    if (v136)
    {
      v137 = xpc_dictionary_create(0, 0, 0);
      v138 = v136;
      v141 = objc_msgSend_UTF8String(v136, v139, v140);
      xpc_dictionary_set_BOOL(v137, v141, 1);
      xpc_dictionary_set_value(v5, *MEMORY[0x1E69E9C80], v137);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v167 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
      {
        *applier = 0;
        _os_log_fault_impl(&dword_1883EA000, v167, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Couldn't get soft-linked rate limiting key", applier, 2u);
      }

      v136 = 0;
    }

    goto LABEL_67;
  }

  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v136 = &qword_1ED4B6000;
  v142 = qword_1ED4B62F8;
  v198 = qword_1ED4B62F8;
  if (!qword_1ED4B62F8)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 3221225472;
    *&applier[16] = sub_1886509D4;
    v201 = &unk_1E70BBE90;
    v202 = &v195;
    v143 = sub_18865080C(v133, v134, v135);
    v144 = dlsym(v143, "_DASRateLimitConfigurationKey");
    *(v202[1] + 24) = v144;
    qword_1ED4B62F8 = *(v202[1] + 24);
    v142 = v196[3];
  }

  _Block_object_dispose(&v195, 8);
  if (!v142)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v145, v146);
    v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v184, "NSString *get_DASRateLimitConfigurationKey(void)");
    v185 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v186, v179, @"CKScheduler.m", 28, @"%s", v185);

LABEL_80:
    __break(1u);
LABEL_81:
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    goto LABEL_73;
  }

  v147 = *v142;
  v136 = v147;
  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v150 = qword_1ED4B6300;
  v198 = qword_1ED4B6300;
  if (!qword_1ED4B6300)
  {
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 3221225472;
    *&applier[16] = sub_188650A24;
    v201 = &unk_1E70BBE90;
    v202 = &v195;
    v151 = sub_18865080C(v147, v148, v149);
    v152 = dlsym(v151, "_DASCKRateLimitConfigurationName");
    *(v202[1] + 24) = v152;
    qword_1ED4B6300 = *(v202[1] + 24);
    v150 = v196[3];
  }

  _Block_object_dispose(&v195, 8);
  if (!v150)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v153, v154);
    v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v187, "NSString *get_DASCKRateLimitConfigurationName(void)");
    v188 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v8, v189, v179, @"CKScheduler.m", 29, @"%s", v188);

    goto LABEL_80;
  }

  v155 = *v150;
  v156 = v155;
  if (v136 && v155)
  {
    v157 = xpc_dictionary_create(0, 0, 0);
    v158 = v136;
    v161 = objc_msgSend_UTF8String(v136, v159, v160);
    v162 = v156;
    v165 = objc_msgSend_UTF8String(v156, v163, v164);
    xpc_dictionary_set_string(v157, v161, v165);
    xpc_dictionary_set_value(v5, *MEMORY[0x1E69E9C80], v157);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v166 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
    {
      *applier = 138412546;
      *&applier[4] = v136;
      *&applier[12] = 2112;
      *&applier[14] = v156;
      _os_log_fault_impl(&dword_1883EA000, v166, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Couldn't get soft-linked rate limiting key (%@) or name (%@)", applier, 0x16u);
    }
  }

LABEL_67:
  v5 = v5;
  v168 = activityCopy;
  activityCopy = v168;
  if (self)
  {
    v171 = objc_msgSend_xpcActivityCriteriaOverrides(v168, v169, v170);

    if (v171)
    {
      v172 = xpc_dictionary_create(0, 0, 0);
      v175 = objc_msgSend_xpcActivityCriteriaOverrides(activityCopy, v173, v174);
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 3221225472;
      *&applier[16] = sub_18864F6A4;
      v201 = &unk_1E70C0198;
      v176 = v5;
      v202 = v176;
      v203 = activityCopy;
      v204 = v172;
      v177 = v172;
      xpc_dictionary_apply(v175, applier);

      xpc_dictionary_set_value(v176, "ck_additional_xpc_activity_criteria", v177);
    }
  }

  v190 = 0;
  v179 = objc_msgSend_networkTransferEndpointWithError_(v8, v178, &v190);
  v136 = v190;
  if (v179)
  {
    v180 = nw_endpoint_copy_dictionary();
    xpc_dictionary_set_value(v5, *MEMORY[0x1E69E9D30], v180);

    goto LABEL_75;
  }

  if (ck_log_initialization_predicate != -1)
  {
    goto LABEL_81;
  }

LABEL_73:
  v181 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
  {
    *applier = 138412290;
    *&applier[4] = v136;
    _os_log_error_impl(&dword_1883EA000, v181, OS_LOG_TYPE_ERROR, "Error getting network transfer endpoint: %@", applier, 0xCu);
  }

LABEL_75:

  v182 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)xpcActivityIdentifierForCKActivityIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"%@.", @"com.apple.xpc.activity.test");
  hasPrefix = objc_msgSend_hasPrefix_(identifierCopy, v7, v6);
  if (hasPrefix)
  {
    v11 = objc_msgSend_length(v6, v8, v9);
    v13 = objc_msgSend_substringFromIndex_(identifierCopy, v12, v11);
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@.%@", @"com.apple.xpc.activity.test", v13);
  }

  else
  {
    v17 = identifierCopy;
    v13 = v17;
  }

  if (objc_msgSend_length(v17, v15, v16) < 0x7E)
  {
    v25 = v17;
    goto LABEL_14;
  }

  v20 = objc_msgSend_CKSafeHashStringForPathComponent(v13, v18, v19);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v30 = v20;
    v31 = 2114;
    v32 = v13;
    _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Using hash %{public}@ for name %{public}@", buf, 0x16u);
    if (hasPrefix)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = v20;
    goto LABEL_13;
  }

  if (!hasPrefix)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"%@.%@", @"com.apple.xpc.activity.test", v20);
LABEL_13:
  v26 = v23;
  v25 = objc_msgSend_xpcActivityIdentifierForCKActivityIdentifier_(self, v24, v23);

LABEL_14:
  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)activityFromXPCActivity:(id)activity
{
  v69 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v4 = xpc_activity_copy_criteria(activityCopy);
  v5 = v4;
  if (v4)
  {
    string = xpc_dictionary_get_string(v4, "ck_container_identifier");
    int64 = xpc_dictionary_get_int64(v5, "ck_environment");
    if (string && (v8 = int64) != 0)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = objc_msgSend_initWithUTF8String_(v9, v10, string);
      v12 = [CKContainerID alloc];
      v14 = objc_msgSend_initWithContainerIdentifier_environment_(v12, v13, v11, v8);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v68 = v5;
        _os_log_impl(&dword_1883EA000, v17, OS_LOG_TYPE_INFO, "Unable to get container identifier and environment from XPC activity criteria: %@", buf, 0xCu);
      }

      v14 = 0;
    }

    v18 = xpc_dictionary_get_int64(v5, "ck_scheduler_priority");
    v19 = xpc_dictionary_get_string(v5, "ck_scheduler_activity_identifier");
    if (!v19)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v31 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v68 = v5;
        _os_log_impl(&dword_1883EA000, v31, OS_LOG_TYPE_INFO, "Unable to get activity identifier from XPC activity criteria: %@", buf, 0xCu);
      }

      v21 = 0;
      v16 = 0;
      goto LABEL_52;
    }

    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v20, v19);
    v16 = 0;
    if (!v21 || !v14)
    {
LABEL_52:

      goto LABEL_53;
    }

    v22 = [CKSchedulerActivity alloc];
    v16 = objc_msgSend_initWithIdentifier_containerID_priority_(v22, v23, v21, v14, v18);
    if (xpc_activity_get_state(activityCopy))
    {
      v24 = [CKXPCActivity alloc];
      v26 = objc_msgSend_initWithActivity_(v24, v25, activityCopy);
      objc_msgSend_setBackgroundTask_(v16, v27, v26);
    }

    v28 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9D40]);
    if (xpc_dictionary_get_BOOL(v5, *MEMORY[0x1E69E9D98]))
    {
      v30 = MEMORY[0x1E696A378];
    }

    else
    {
      if (!xpc_dictionary_get_BOOL(v5, *MEMORY[0x1E69E9DA0]))
      {
LABEL_30:
        if (xpc_dictionary_get_BOOL(v5, *MEMORY[0x1E69E9DA8]))
        {
          objc_msgSend_setFileProtectionType_(v16, v32, *MEMORY[0x1E696A388]);
        }

        objc_msgSend_setExpectedTransferSizeBytes_(v16, v32, v28);
        v33 = xpc_dictionary_get_double(v5, "ck_earliest_start_date");
        v36 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v34, v35, v33);
        objc_msgSend_setEarliestStartDate_(v16, v37, v36);

        v38 = xpc_dictionary_get_BOOL(v5, *MEMORY[0x1E69E9DE0]);
        objc_msgSend_setUserRequestedBackupTask_(v16, v39, v38);
        v41 = xpc_dictionary_get_dictionary(v5, "ck_additional_xpc_activity_criteria");
        if (v41)
        {
          objc_msgSend_setXpcActivityCriteriaOverrides_(v16, v40, v41);
        }

        v42 = xpc_dictionary_get_array(v5, *MEMORY[0x1E69E9C88]);
        v45 = v42;
        if (v42)
        {
          v66 = v41;
          count = xpc_array_get_count(v42);
          v47 = objc_alloc(MEMORY[0x1E695DF70]);
          v50 = objc_msgSend_initWithCapacity_(v47, v48, count);
          if (count)
          {
            for (i = 0; i != count; ++i)
            {
              v52 = xpc_array_get_string(v45, i);
              if (v52)
              {
                v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v49, v52);
                if (v54)
                {
                  objc_msgSend_addObject_(v50, v53, v54);
                }
              }
            }
          }

          objc_msgSend_setRelatedApplicationBundleIdentifiers_(v16, v49, v50);

          v41 = v66;
        }

        v55 = sub_18864F540(v42, v43, v44);
        if (v55)
        {
          v56 = xpc_dictionary_get_dictionary(v5, *MEMORY[0x1E69E9C80]);
          if (v56)
          {
            v57 = v55;
            v60 = objc_msgSend_UTF8String(v57, v58, v59);
            v61 = xpc_dictionary_get_BOOL(v56, v60);
            objc_msgSend_setOverrideRateLimiting_(v16, v62, v61);
          }
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v63 = ck_log_facility_scheduler;
          if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1883EA000, v63, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Couldn't get soft-linked rate limiting key when re-creating activity", buf, 2u);
          }
        }

        goto LABEL_52;
      }

      v30 = MEMORY[0x1E696A380];
    }

    objc_msgSend_setFileProtectionType_(v16, v29, *v30);
    goto LABEL_30;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v15 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = activityCopy;
    _os_log_debug_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEBUG, "Couldn't get XPC activity criteria for xpc_activity %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_53:

  v64 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)hasPendingActivityWithActivityIdentifier:(id)identifier
{
  selfCopy = self;
  v4 = objc_msgSend_xpcActivityForActivityWithIdentifier_(self, a2, identifier);
  LOBYTE(selfCopy) = objc_msgSend_isXPCActivityPending_(selfCopy, v5, v4);

  return selfCopy;
}

- (BOOL)isXPCActivityPending:(id)pending
{
  pendingCopy = pending;
  v4 = pendingCopy;
  if (!pendingCopy)
  {
    goto LABEL_6;
  }

  state = xpc_activity_get_state(pendingCopy);
  if (!state)
  {
    v7 = xpc_activity_copy_criteria(v4);
    v6 = v7 != 0;

    goto LABEL_8;
  }

  if (state == 3 || state == 1)
  {
    v6 = 1;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (id)activityForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_18864E864;
  v16 = sub_18864E874;
  v17 = 0;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188650354;
  block[3] = &unk_1E70BF4B0;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (int64_t)currentPriorityForActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18865056C;
  block[3] = &unk_1E70BF4B0;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)performAsyncOnQueue:(id)queue
{
  if (self)
  {
    self = self->_queue;
  }

  dispatch_async(&self->super, queue);
}

@end
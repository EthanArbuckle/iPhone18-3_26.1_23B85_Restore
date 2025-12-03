@interface CKNotificationListener
- (BOOL)hasInitializedAPSConnection;
- (BOOL)isRegisteredForSubscriptionWithID:(id)d inDatabase:(id)database;
- (BOOL)useOpportunisticPushTopics;
- (CKNotificationListener)init;
- (CKNotificationListener)initWithStrategy:(unint64_t)strategy machServiceName:(id)name;
- (id)apsConnectionForEnvironment:(id)environment;
- (id)uniqueKeyForSubscriptionID:(id)d inDatabase:(id)database;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)_registerForSubscriptionWithID:(id)d inDatabase:(id)database handler:(id)handler completionHandler:(id)completionHandler;
- (void)_unregisterForSubscriptionWithID:(id)d inDatabase:(id)database completionHandler:(id)handler;
- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connectionDidReconnect:(id)reconnect;
- (void)dealloc;
- (void)didReceiveIncomingPushWithPayload:(id)payload withCompletionHandler:(id)handler;
- (void)handlePushNotificationWithPayload:(id)payload environment:(id)environment completionHandler:(id)handler;
@end

@implementation CKNotificationListener

- (CKNotificationListener)init
{
  objc_opt_self();
  if (CKCurrentProcessIsDaemon())
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Not running in an app, so we'll use our own APSConnection", v7, 2u);
    }

    v4 = 0;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Running in an app and choosing app strategy", buf, 2u);
    }

    v4 = 1;
  }

  return MEMORY[0x1EEE66B58](self, sel_initWithStrategy_, v4);
}

- (CKNotificationListener)initWithStrategy:(unint64_t)strategy machServiceName:(id)name
{
  v96 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v93.receiver = self;
  v93.super_class = CKNotificationListener;
  v8 = [(CKNotificationListener *)&v93 init];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.cloudkit.notification-listener", v9);
  v11 = *(v8 + 32);
  *(v8 + 32) = v10;

  dispatch_queue_set_specific(*(v8 + 32), (v8 + 32), 1, 0);
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.cloudkit.notification-listener.callback", v12);
  v14 = *(v8 + 40);
  *(v8 + 40) = v13;

  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16);
  v18 = *(v8 + 24);
  *(v8 + 24) = v17;

  v21 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v19, v20);
  v22 = *(v8 + 48);
  *(v8 + 48) = v21;

  *(v8 + 56) = strategy;
  v25 = objc_msgSend_copy(nameCopy, v23, v24);
  v26 = *(v8 + 16);
  *(v8 + 16) = v25;

  *(v8 + 8) = 0;
  v29 = *(v8 + 56);
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x1E6963620], v27, v28);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v33 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v31, v32);
      v36 = objc_msgSend_untrustedEntitlements(v33, v34, v35);
      v39 = objc_msgSend_apsEnvironmentEntitlement(v36, v37, v38);
      v42 = objc_msgSend_lowercaseString(v39, v40, v41);

      if (!v42)
      {
LABEL_11:
        v69 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v43, v44);
        v72 = objc_msgSend_infoDictionary(v69, v70, v71);
        v74 = objc_msgSend_objectForKeyedSubscript_(v72, v73, @"UIBackgroundModes");

        if ((objc_msgSend_containsObject_(v74, v75, @"remote-notification") & 1) == 0)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v76 = ck_log_facility_notification_listener;
          if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1883EA000, v76, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: CloudKit push notifications require the 'remote-notification' background mode in your info plist.", buf, 2u);
          }
        }

        goto LABEL_17;
      }

      v45 = *MEMORY[0x1E698CF20];
      v4 = objc_msgSend_lowercaseString(*MEMORY[0x1E698CF20], v43, v44);
      if (objc_msgSend_isEqualToString_(v42, v46, v4))
      {

        goto LABEL_11;
      }

LABEL_10:
      v92 = *MEMORY[0x1E698CF18];
      v66 = objc_msgSend_lowercaseString(*MEMORY[0x1E698CF18], v47, v48);
      isEqualToString = objc_msgSend_isEqualToString_(v42, v67, v66);

      if ((isEqualToString & 1) == 0)
      {
        v80 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v43, v44);
        v81 = [CKSignificantIssue alloc];
        v82 = [CKSourceCodeLocation alloc];
        v84 = objc_msgSend_initWithFilePath_lineNumber_(v82, v83, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Services/Scheduler/CKNotificationListener.m", 160);
        v86 = objc_msgSend_initWithSourceCodeLocation_format_(v81, v85, v84, @"BUG IN CLIENT OF CLOUDKIT: CloudKit push notifications require the '%@' entitlement to be '%@' or '%@'. Current value='%@'", @"aps-environment", v45, v92, v42);
        objc_msgSend_handleSignificantIssue_actions_(v80, v87, v86, 0);

        v89 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v88, @"BUG IN CLIENT OF CLOUDKIT: CloudKit push notifications require the '%@' entitlement to be '%@' or '%@'. Current value='%@'", @"aps-environment", v45, v92, v42);
        objc_msgSend_UTF8String(v89, v90, v91);
        result = _os_crash();
        __break(1u);
        return result;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v49 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v27, v28);
    v52 = objc_msgSend_untrustedEntitlements(v49, v50, v51);
    v54 = sub_188401184(v52, v53);

    if (!v54)
    {
      nameCopy = objc_msgSend_currentHandler(CKSignificantIssueHandler, v55, v56);
      v57 = [CKSignificantIssue alloc];
      v58 = [CKSourceCodeLocation alloc];
      v42 = objc_msgSend_initWithFilePath_lineNumber_(v58, v59, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Services/Scheduler/CKNotificationListener.m", 176);
      v45 = @"aps-connection-initiate";
      v30 = @"BUG IN CLIENT OF CLOUDKIT: Not entitled to listen to push notifications. Please add the '%@' entitlement.";
      v8 = objc_msgSend_initWithSourceCodeLocation_format_(v57, v60, v42, @"BUG IN CLIENT OF CLOUDKIT: Not entitled to listen to push notifications. Please add the '%@' entitlement.", @"aps-connection-initiate");
      objc_msgSend_handleSignificantIssue_actions_(nameCopy, v61, v8, 0);

      v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v62, @"BUG IN CLIENT OF CLOUDKIT: Not entitled to listen to push notifications. Please add the '%@' entitlement.", @"aps-connection-initiate");
      objc_msgSend_UTF8String(v63, v64, v65);
      _os_crash();
      __break(1u);
      goto LABEL_10;
    }
  }

LABEL_18:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v77 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v95 = v8;
    _os_log_impl(&dword_1883EA000, v77, OS_LOG_TYPE_INFO, "Init notification listener %@", buf, 0xCu);
  }

  v78 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Dealloc notification listener %@", buf, 0xCu);
  }

  if (self->_strategy == 1)
  {
    v6 = objc_msgSend_sharedPushRegistry(CKPKPushRegistry, v4, v5);
    objc_msgSend_removeDelegate_(v6, v7, self);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = objc_msgSend_notificationObservers(self, v4, v5);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v21, v25, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
        objc_msgSend_removeObserver_(v17, v18, v16);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v21, v25, 16);
    }

    while (v13);
  }

  v20.receiver = self;
  v20.super_class = CKNotificationListener;
  [(CKNotificationListener *)&v20 dealloc];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  if (self)
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, self->_strategy);
  }

  else
  {
    objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, 0);
  }
  v6 = ;
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"strategy", v6, 0);

  v10 = objc_msgSend_machServiceName(self, v8, v9);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v11, @"machServiceName", v10, 0);

  v14 = objc_msgSend_queue(self, v12, v13);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18864768C;
  v16[3] = &unk_1E70BEEC0;
  v16[4] = self;
  v17 = usingCopy;
  v15 = usingCopy;
  ck_call_or_dispatch_sync_if_not_key(v14, &self->_queue, v16);
}

- (BOOL)hasInitializedAPSConnection
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_queue(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1886477E0;
  v6[3] = &unk_1E70BE500;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (BOOL)useOpportunisticPushTopics
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_queue(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188647924;
  v6[3] = &unk_1E70BE500;
  v6[4] = selfCopy;
  v6[5] = &v7;
  ck_call_or_dispatch_sync_if_not_key(v4, &selfCopy->_queue, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (void)_registerForSubscriptionWithID:(id)d inDatabase:(id)database handler:(id)handler completionHandler:(id)completionHandler
{
  dCopy = d;
  databaseCopy = database;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v16 = objc_msgSend_container(databaseCopy, v14, v15);
  v67 = 0;
  v17 = _CKCheckArgument("database", databaseCopy, 0, 0, 0, &v67);
  v18 = v67;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  v66 = 0;
  v20 = _CKCheckArgument("container", v16, 0, 0, 0, &v66);
  v21 = v66;
  v19 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

  v65 = 0;
  v22 = _CKCheckArgument("subscriptionID", dCopy, 0, 0, 0, &v65);
  v23 = v65;
  v19 = v23;
  if ((v22 & 1) == 0 || (v23, v24 = _Block_copy(handlerCopy), v64 = 0, v25 = _CKCheckArgument("handler", v24, 0, 0, 0, &v64), v19 = v64, v24, (v25 & 1) == 0))
  {
LABEL_6:
    v40 = [CKException alloc];
    v43 = objc_msgSend_code(v19, v41, v42);
    v46 = objc_msgSend_localizedDescription(v19, v44, v45);
    v48 = objc_msgSend_initWithCode_format_(v40, v47, v43, @"%@", v46);
    v49 = v48;

    objc_exception_throw(v48);
  }

  v26 = _os_activity_create(&dword_1883EA000, "client/notification-listener-register", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v26, &state);
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = sub_1883EE180;
  v61[4] = sub_1883EF774;
  v62 = 0;
  v29 = objc_msgSend_queue(self, v27, v28);
  dispatch_suspend(v29);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_188648144;
  v58[3] = &unk_1E70BFE68;
  v60 = v61;
  v30 = v29;
  v59 = v30;
  objc_msgSend_pushEnvironmentWithCompletionHandler_(v16, v31, v58);
  v34 = objc_msgSend_queue(self, v32, v33);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1886481B8;
  block[3] = &unk_1E70BFE90;
  v51 = dCopy;
  v52 = databaseCopy;
  selfCopy = self;
  v54 = v16;
  v56 = completionHandlerCopy;
  v57 = v61;
  v55 = handlerCopy;
  v35 = completionHandlerCopy;
  v36 = handlerCopy;
  v37 = v16;
  v38 = databaseCopy;
  v39 = dCopy;
  dispatch_async(v34, block);

  _Block_object_dispose(v61, 8);
  os_activity_scope_leave(&state);
}

- (void)_unregisterForSubscriptionWithID:(id)d inDatabase:(id)database completionHandler:(id)handler
{
  dCopy = d;
  databaseCopy = database;
  handlerCopy = handler;
  v40 = 0;
  v11 = _CKCheckArgument("database", databaseCopy, 0, 0, 0, &v40);
  v12 = v40;
  v13 = v12;
  if ((v11 & 1) == 0 || (v12, v39 = 0, v14 = _CKCheckArgument("subscriptionID", dCopy, 0, 0, 0, &v39), v15 = v39, v13 = v15, (v14 & 1) == 0))
  {
    v23 = [CKException alloc];
    v26 = objc_msgSend_code(v13, v24, v25);
    v29 = objc_msgSend_localizedDescription(v13, v27, v28);
    v31 = objc_msgSend_initWithCode_format_(v23, v30, v26, @"%@", v29);
    v32 = v31;

    objc_exception_throw(v31);
  }

  v16 = _os_activity_create(&dword_1883EA000, "client/notification-listener-unregister", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v19 = objc_msgSend_queue(self, v17, v18);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188648594;
  block[3] = &unk_1E70BFEB8;
  v34 = dCopy;
  v35 = databaseCopy;
  selfCopy = self;
  v37 = handlerCopy;
  v20 = handlerCopy;
  v21 = databaseCopy;
  v22 = dCopy;
  dispatch_async(v19, block);

  os_activity_scope_leave(&state);
}

- (BOOL)isRegisteredForSubscriptionWithID:(id)d inDatabase:(id)database
{
  dCopy = d;
  databaseCopy = database;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = objc_msgSend_queue(self, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188648800;
  v14[3] = &unk_1E70BFEE0;
  v14[4] = self;
  v15 = dCopy;
  v16 = databaseCopy;
  v17 = &v18;
  v11 = databaseCopy;
  v12 = dCopy;
  dispatch_sync(v10, v14);

  LOBYTE(databaseCopy) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return databaseCopy;
}

- (id)uniqueKeyForSubscriptionID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  dCopy = d;
  v9 = objc_msgSend_container(databaseCopy, v7, v8);
  v12 = objc_msgSend_containerIdentifier(v9, v10, v11);
  v15 = objc_msgSend_containerID(v9, v13, v14);
  v18 = objc_msgSend_environment(v15, v16, v17);

  v19 = MEMORY[0x1E696AEC0];
  v22 = objc_msgSend_databaseScope(databaseCopy, v20, v21);

  v24 = objc_msgSend_stringWithFormat_(v19, v23, @"%@-%d-%d-%@", v12, v18, v22, dCopy);

  v27 = objc_msgSend_options(v9, v25, v26);
  v30 = objc_msgSend_accountOverrideInfo(v27, v28, v29);

  v33 = objc_msgSend_email(v30, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_email(v30, v34, v35);
  }

  else
  {
    v38 = objc_msgSend_accountID(v30, v34, v35);

    if (v38)
    {
      v36 = objc_msgSend_accountID(v30, v39, v40);
    }

    else
    {
      v41 = objc_msgSend_altDSID(v30, v39, v40);

      if (!v41)
      {
        goto LABEL_9;
      }

      v36 = objc_msgSend_altDSID(v30, v42, v43);
    }
  }

  v44 = v36;
  if (v36)
  {
    v45 = objc_msgSend_stringByAppendingFormat_(v24, v37, @"-%@", v36);

    v24 = v45;
  }

LABEL_9:

  return v24;
}

- (id)apsConnectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1883EE180;
  v18 = sub_1883EF774;
  v19 = 0;
  v7 = objc_msgSend_queue(self, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188648B70;
  block[3] = &unk_1E70BFF08;
  v12 = environmentCopy;
  v13 = &v14;
  block[4] = self;
  v8 = environmentCopy;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v11 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  tokenCopy = token;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543362;
    v10 = tokenCopy;
    _os_log_debug_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEBUG, "APS connection received public token: %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v35 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
  {
    v18 = v8;
    v21 = objc_msgSend_topic(messageCopy, v19, v20);
    v24 = objc_msgSend_userInfo(messageCopy, v22, v23);
    *buf = 134218498;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    *&buf[22] = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "%p APS connection received incoming message on topic %@: %@", buf, 0x20u);
  }

  v11 = objc_msgSend_userInfo(messageCopy, v9, v10);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_1883EE180;
  v33 = sub_1883EF774;
  v34 = *MEMORY[0x1E698CF20];
  if (self)
  {
    apsConnections = self->_apsConnections;
  }

  else
  {
    apsConnections = 0;
  }

  v13 = apsConnections;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_188649BA0;
  v28 = &unk_1E70BFFA8;
  v14 = connectionCopy;
  v29 = v14;
  v30 = buf;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v15, &v25);

  objc_msgSend_handlePushNotificationWithPayload_environment_completionHandler_(self, v16, v11, *(*&buf[8] + 40), 0, v25, v26, v27, v28);
  _Block_object_dispose(buf, 8);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handlePushNotificationWithPayload:(id)payload environment:(id)environment completionHandler:(id)handler
{
  payloadCopy = payload;
  environmentCopy = environment;
  handlerCopy = handler;
  v11 = os_transaction_create();
  v14 = objc_msgSend_queue(self, v12, v13);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_188649D5C;
  v19[3] = &unk_1E70C0048;
  v20 = payloadCopy;
  selfCopy = self;
  v22 = environmentCopy;
  v23 = v11;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = v11;
  v17 = environmentCopy;
  v18 = payloadCopy;
  ck_call_or_dispatch_async_if_not_key(v14, &self->_queue, v19);
}

- (void)connection:(id)connection didChangeConnectedStatus:(BOOL)status
{
  statusCopy = status;
  v9 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = statusCopy;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "APS connection status changed to connected=%d", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "APS connection did reconnect", v5, 2u);
  }
}

- (void)didReceiveIncomingPushWithPayload:(id)payload withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  handlerCopy = handler;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2112;
    v20 = payloadCopy;
    _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEFAULT, "%@ received push via PushKit with payload %@", buf, 0x16u);
  }

  v11 = objc_msgSend_dictionaryPayload(payloadCopy, v9, v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18864AF84;
  v15[3] = &unk_1E70BC2C0;
  v16 = handlerCopy;
  v12 = handlerCopy;
  objc_msgSend_handlePushNotificationWithPayload_completionHandler_(self, v13, v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

@end
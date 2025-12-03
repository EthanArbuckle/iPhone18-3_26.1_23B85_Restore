@interface CKOperation
+ (BOOL)_wireUpAssetContentForOperation:(id)operation inRecord:(id)record checkSignatures:(BOOL)signatures outError:(id *)error;
+ (Class)operationClass;
+ (Class)operationInfoClass;
+ (NSString)operationIDPrefix;
+ (SEL)daemonInvocationSelector;
+ (id)assetInfoForOperation:(id)operation recordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index;
+ (id)operationDaemonCallbackProtocol;
+ (id)requestOriginatorStringRepresentation:(unint64_t)representation;
+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks;
+ (void)setOperationIDPrefix:(id)prefix;
- (BOOL)CKOperationShouldRun:(id *)run;
- (BOOL)_BOOLForUnitTestOverride:(id)override defaultValue:(BOOL)value;
- (BOOL)allowsCellularAccess;
- (BOOL)hasCKOperationCallbacksSet;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isLongLived;
- (BOOL)preferAnonymousRequests;
- (BOOL)transitionToExecuting;
- (BOOL)transitionToFinished;
- (BOOL)usesBackgroundSession;
- (CKContainer)container;
- (CKLogicalDeviceContext)deviceContext;
- (CKOperation)init;
- (CKOperationCallbackProxy)clientOperationCallbackProxy;
- (CKOperationConfiguration)configuration;
- (CKOperationConfiguration)resolvedConfiguration;
- (CKOperationGroup)group;
- (CKOperationID)operationID;
- (CKOperationInfo)operationInfo;
- (NSDictionary)additionalRequestHTTPHeaders;
- (NSTimeInterval)timeoutIntervalForRequest;
- (NSTimeInterval)timeoutIntervalForResource;
- (OS_dispatch_queue)callbackQueue;
- (id)_createPlaceholderOperation;
- (id)activityCreate;
- (id)applicationBundleIdentifierForContainerAccess;
- (id)containerID;
- (id)operationGroupName;
- (id)requestCompletedBlock;
- (id)resolvedConfigurationIfNotNil;
- (id)unitTestOverrides;
- (id)zoneIDsToZoneNamesString:(id)string;
- (int64_t)qualityOfService;
- (void)_cancelDaemonOperation;
- (void)_finishDiscretionaryOperation;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_handleBackgroundTaskExpiration:(id)expiration;
- (void)_handleRemoteProxyFailureWithError:(id)error;
- (void)_performErrorRateMitigation;
- (void)addUnitTestOverrides:(id)overrides;
- (void)applyConvenienceConfiguration:(id)configuration;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)cancelWithUnderlyingError:(id)error message:(id)message;
- (void)configureConvenience:(id)convenience;
- (void)dealloc;
- (void)fillFromOperationInfo:(id)info;
- (void)fillOutOperationInfo:(id)info;
- (void)finishWithError:(id)error;
- (void)handleDaemonOperationWillStartWithClassName:(id)name isTopLevelDaemonOperation:(BOOL)operation replyBlock:(id)block;
- (void)handleDaemonRequestWillReceiveWithClassName:(id)name testRequestProperties:(id)properties replyBlock:(id)block;
- (void)handleDaemonRequestWillSendWithClassName:(id)name testRequestProperties:(id)properties replyBlock:(id)block;
- (void)handleDidStart:(id)start;
- (void)handleDiscretionaryOperationShouldSuspend;
- (void)handleFinishWithAssetDownloadStagingInfo:(id)info reply:(id)reply;
- (void)handleLongLivedOperationDidPersist;
- (void)handleOperationDidCompleteWithMetrics:(id)metrics error:(id)error;
- (void)handleRequestDidComplete:(id)complete;
- (void)handleSystemDidImposeInfo:(id)info;
- (void)handleWillStart:(id)start;
- (void)longLivedOperationWasPersistedBlock;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openFileWithOpenInfo:(id)info reply:(id)reply;
- (void)performCKOperation;
- (void)setAdditionalRequestHTTPHeaders:(id)headers;
- (void)setCallbackQueue:(id)queue;
- (void)setCompletionBlock:(id)block;
- (void)setConfiguration:(CKOperationConfiguration *)configuration;
- (void)setContainer:(CKContainer *)container;
- (void)setGroup:(CKOperationGroup *)group;
- (void)setLongLivedOperationWasPersistedBlock:(void *)longLivedOperationWasPersistedBlock;
- (void)setOperationID:(id)d;
- (void)setQoSFromSwiftTaskPriority;
- (void)setQualityOfService:(int64_t)service;
- (void)setRequestCompletedBlock:(id)block;
- (void)setTimeoutIntervalForRequest:(NSTimeInterval)timeoutIntervalForRequest;
- (void)setTimeoutIntervalForResource:(NSTimeInterval)timeoutIntervalForResource;
- (void)start;
- (void)withContainerScopedDaemon:(id)daemon;
@end

@implementation CKOperation

- (CKOperation)init
{
  v4 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v5, v4))
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKOperation.m", 201, @"You must use a concrete subclass of CKOperation");
  }

  v8 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v9, v8))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1883EA000, v10, OS_LOG_TYPE_FAULT, "You must use a concrete subclass of CKDatabaseOperation. This will be a hard error in the future", buf, 2u);
    }
  }

  v44.receiver = self;
  v44.super_class = CKOperation;
  v11 = [(CKOperation *)&v44 init];
  if (v11)
  {
    if (__sTestOverridesAvailable == 1 && (v12 = objc_opt_class(), objc_msgSend_operationIDPrefix(v12, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = objc_opt_class();
      v20 = objc_msgSend_operationIDPrefix(v17, v18, v19);
      v21 = CKShortRandomID();
      v23 = objc_msgSend_initWithFormat_(v16, v22, @"%@-%@", v20, v21);
      operationID = v11->_operationID;
      v11->_operationID = v23;
    }

    else
    {
      v25 = CKShortRandomID();
      v20 = v11->_operationID;
      v11->_operationID = v25;
    }

    v26 = objc_opt_new();
    objc_msgSend_setConfiguration_(v11, v27, v26);

    v28 = [CKSignpost alloc];
    v30 = objc_msgSend_initWithLog_(v28, v29, ck_log_facility_op);
    signpost = v11->_signpost;
    v11->_signpost = v30;

    v32 = [CKEventMetric alloc];
    v34 = objc_msgSend_initWithEventName_(v32, v33, @"CKOperationDuration");
    objc_msgSend_setIsCKInternalMetric_(v34, v35, 1);
    operationMetric = v11->_operationMetric;
    v11->_operationMetric = v34;
    v37 = v34;

    v11->_duetPreClearedMode = 0;
    v11->_discretionaryWhenBackgroundedState = 0;
    v11->_systemScheduler = 0;
    v38 = objc_opt_new();
    lifecycleCallbacks = v11->_lifecycleCallbacks;
    v11->_lifecycleCallbacks = v38;

    objc_msgSend_setCompletionBlock_(v11, v40, 0);
  }

  return v11;
}

- (int64_t)qualityOfService
{
  v23.receiver = self;
  v23.super_class = CKOperation;
  qualityOfService = [(CKOperation *)&v23 qualityOfService];
  v6 = objc_msgSend_configuration(self, v4, v5);
  v9 = objc_msgSend_group(self, v7, v8);
  v12 = objc_msgSend_defaultConfiguration(v9, v10, v11);

  hasQualityOfService = objc_msgSend_hasQualityOfService(v6, v13, v14);
  v18 = v6;
  if ((hasQualityOfService & 1) != 0 || (v19 = objc_msgSend_hasQualityOfService(v12, v15, v16), v18 = v12, v20 = qualityOfService, v19))
  {
    v20 = objc_msgSend_qualityOfService(v18, v15, v16);
  }

  if (v20 == -1)
  {
    v20 = objc_msgSend_qualityOfService(v6, v15, v16);
  }

  if (v20 != qualityOfService)
  {
    v22.receiver = self;
    v22.super_class = CKOperation;
    [(CKOperation *)&v22 setQualityOfService:v20];
  }

  return v20;
}

- (CKOperationConfiguration)configuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_configuration;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKOperationGroup)group
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_group;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  LOBYTE(self) = self->_executionState == 2;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return self;
}

- (OS_dispatch_queue)callbackQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  callbackQueue = selfCopy->_callbackQueue;
  if (!callbackQueue)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"com.apple.cloudkit.operation-%@.callback", selfCopy->_operationID);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_initially_inactive(v6);

    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UNSPECIFIED, 0);

    v11 = objc_msgSend_UTF8String(v5, v9, v10);
    v12 = dispatch_queue_create(v11, v8);
    v13 = selfCopy->_callbackQueue;
    selfCopy->_callbackQueue = v12;

    dispatch_queue_set_specific(selfCopy->_callbackQueue, kCKOperationCallbackQueueName, 1, 0);
    callbackQueue = selfCopy->_callbackQueue;
  }

  v14 = callbackQueue;
  objc_sync_exit(selfCopy);

  return v14;
}

- (void)start
{
  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v7 = objc_msgSend_operationMetric(self, v5, v6);
  objc_msgSend_setStartTime_(v7, v8, v4);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188417AB4;
  aBlock[3] = &unk_1E70BC388;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v12 = v9;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v13 = objc_msgSend_invokeOperationWillStartCallback(self, v10, v11);
    objc_msgSend_setOperationWillStartCallback_(self, v14, 0);
    objc_msgSend_takeActionOnOperation_proceedBlock_(v13, v15, self, v12);
  }

  else
  {
    (*(v9 + 2))(v9);
  }
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&unk_1ED4B6780);
  LOBYTE(self) = self->_executionState == 1;
  os_unfair_lock_unlock(&unk_1ED4B6780);
  return self;
}

- (id)resolvedConfigurationIfNotNil
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_resolvedConfiguration;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)transitionToExecuting
{
  v3 = CKOperationExecutionStateTransitionToExecuting(self, &self->_executionState);
  if (v3)
  {
    if (self)
    {
      v4 = CKGetGlobalQueue(17);
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

      objc_initWeak(&location, self);
      v8 = objc_msgSend_sharedOptions(CKBehaviorOptions, v6, v7);
      v9 = sub_1884183A4(v8);

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1886117F8;
      v18[3] = &unk_1E70BEF38;
      objc_copyWeak(v19, &location);
      v19[1] = *&v9;
      v10 = v18;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1886166C4;
      handler[3] = &unk_1E70BC2C0;
      v22 = v10;
      dispatch_source_set_event_handler(v5, handler);

      v11 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(v5, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      timeoutSource = selfCopy->_timeoutSource;
      selfCopy->_timeoutSource = v5;
      v14 = v5;

      objc_sync_exit(selfCopy);
      dispatch_resume(v14);

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }

    v15 = os_transaction_create();
    executingTransaction = self->_executingTransaction;
    self->_executingTransaction = v15;
  }

  return v3;
}

- (CKOperationConfiguration)resolvedConfiguration
{
  v65 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resolvedConfiguration = selfCopy->_resolvedConfiguration;
  if (!resolvedConfiguration)
  {
    v8 = objc_msgSend_configuration(selfCopy, v3, v4);
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    v9 = objc_msgSend_group(selfCopy, v6, v7);
    v12 = objc_msgSend_defaultConfiguration(v9, v10, v11);
    v14 = objc_msgSend_resolveAgainstGenericConfiguration_(v8, v13, v12);

    v19 = objc_msgSend_convenienceOperationConfiguration(selfCopy, v15, v16);
    if (v19)
    {
      v20 = objc_msgSend_resolveAgainstGenericConfiguration_(v14, v17, v19);

      v14 = v20;
    }

    v21 = objc_msgSend_group(selfCopy, v17, v18);

    if (!v21)
    {
      v24 = objc_msgSend_convenienceOperationGroup(selfCopy, v22, v23);
      objc_msgSend_setGroup_(selfCopy, v25, v24);
      v28 = objc_msgSend_defaultConfiguration(v24, v26, v27);
      v30 = objc_msgSend_resolveAgainstGenericConfiguration_(v14, v29, v28);

      v14 = v30;
    }

    if (CKMainBundleIsAppleExecutable())
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v31 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        LOWORD(v63) = 0;
        _os_log_impl(&dword_1883EA000, v31, OS_LOG_TYPE_INFO, "Operation is running within an Apple executable. Setting CKOperationDiscretionaryNetworkBehaviorNonDiscretionary and automaticallyRetryNetworkFailures to false", &v63, 2u);
      }

      if (objc_msgSend_hasDiscretionaryNetworkBehavior(v14, v32, v33))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v35 = ck_log_facility_ck;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v38 = objc_msgSend_discretionaryNetworkBehavior(v14, v36, v37);
          v63 = 134217984;
          v64 = v38;
          _os_log_impl(&dword_1883EA000, v35, OS_LOG_TYPE_INFO, "Operation has existing discretionaryNetworkBehavior value of: %lu", &v63, 0xCu);
        }
      }

      else
      {
        objc_msgSend_setDiscretionaryNetworkBehavior_(v14, v34, 0);
      }

      if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v14, v39, v40))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v50 = ck_log_facility_ck;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v53 = objc_msgSend_automaticallyRetryNetworkFailures(v14, v51, v52);
          v63 = 67109120;
          LODWORD(v64) = v53;
          _os_log_impl(&dword_1883EA000, v50, OS_LOG_TYPE_INFO, "Operation has existing automaticallyRetryNetworkFailures value of: %d", &v63, 8u);
        }

        goto LABEL_41;
      }

      goto LABEL_35;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v41 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      LOWORD(v63) = 0;
      _os_log_impl(&dword_1883EA000, v41, OS_LOG_TYPE_INFO, "Checking operation QoS for discretionaryNetworkBehavior configuration.", &v63, 2u);
    }

    if ((objc_msgSend_hasDiscretionaryNetworkBehavior(v14, v42, v43) & 1) == 0)
    {
      v46 = objc_msgSend_qualityOfService(v14, v44, v45);
      if (v46 > 16)
      {
        v48 = 0;
        if (v46 == 33 || v46 == 25)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v46 != 9)
      {
LABEL_38:
        v48 = 1;
LABEL_39:
        objc_msgSend_setDiscretionaryNetworkBehavior_(v14, v47, v48);
        goto LABEL_40;
      }

      objc_msgSend_setDiscretionaryNetworkBehavior_(v14, v47, 2);
    }

LABEL_40:
    if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v14, v44, v45))
    {
      goto LABEL_41;
    }

    v60 = objc_msgSend_qualityOfService(v14, v54, v55);
    if (v60 != 33 && v60 != 25)
    {
      if (v60 == -1)
      {
        v61 = CKCurrentProcessLinkCheck92e3e8f8ec1a906754afb22d87eb36301b4f6760() ^ 1;
        objc_msgSend_setAutomaticallyRetryNetworkFailures_(v14, v62, v61);
      }

      else
      {
        objc_msgSend_setAutomaticallyRetryNetworkFailures_(v14, v49, 1);
      }

      goto LABEL_41;
    }

LABEL_35:
    objc_msgSend_setAutomaticallyRetryNetworkFailures_(v14, v49, 0);
LABEL_41:
    v56 = selfCopy->_resolvedConfiguration;
    selfCopy->_resolvedConfiguration = v14;

    resolvedConfiguration = selfCopy->_resolvedConfiguration;
  }

  v57 = resolvedConfiguration;
  objc_sync_exit(selfCopy);

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

- (CKOperationID)operationID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_operationID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKLogicalDeviceContext)deviceContext
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_deviceContext(v6, v7, v8);

  return v9;
}

- (void)main
{
  v145 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isOutstandingOperation(self, a2, v2) && (objc_msgSend_hasCKOperationCallbacksSet(self, v6, v7) & 1) == 0 && (objc_msgSend_isCancelled(self, v6, v8) & 1) == 0)
  {
    v128 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v6, @"CKErrorDomain", 12, @"You must set some callbacks on this long-lived operation before running it.");
    v129 = [CKException alloc];
    v132 = objc_msgSend_code(v128, v130, v131);
    v135 = objc_msgSend_localizedDescription(v128, v133, v134);
    v137 = objc_msgSend_initWithCode_format_(v129, v136, v132, @"%@", v135);
    v138 = v137;

    objc_exception_throw(v137);
  }

  v141 = 0;
  ShouldRun = objc_msgSend_CKOperationShouldRun_(self, v6, &v141);
  v12 = v141;
  if ((ShouldRun & 1) == 0)
  {
    objc_msgSend_finishWithError_(self, v10, v12);
    goto LABEL_26;
  }

  v13 = objc_msgSend_clientOperationCallbackProxy(self, v10, v11);
  objc_msgSend_activate(v13, v14, v15);

  IsDaemon = CKCurrentProcessIsDaemon();
  if (IsDaemon & 1 | ((__sTestOverridesAvailable[0] & 1) == 0))
  {
    v19 = __sTestOverridesAvailable[0] | IsDaemon;
  }

  else
  {
    v19 = objc_msgSend_allowCKDiscretionarydUseFromApp(self, v17, v18);
  }

  v20 = objc_msgSend_resolvedConfiguration(self, v17, v18);
  if ((objc_msgSend_discretionarySchedulingForEntireOperation(v20, v21, v22) & v19) != 1 || self && self->_duetPreClearedMode)
  {

    v27 = objc_msgSend_usesBackgroundSession(self, v25, v26);
LABEL_13:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v28 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v31 = v28;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v36 = objc_msgSend_ckShortDescription(self, v34, v35);
      *buf = 138543874;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v143 = 2114;
      v144 = v36;
      _os_log_impl(&dword_1883EA000, v31, OS_LOG_TYPE_INFO, "Operation <%{public}@: %p; %{public}@> enqueuing on container throttle queue", buf, 0x20u);
    }

    v38 = objc_msgSend__createPlaceholderOperation(self, v29, v30);
    if (self)
    {
      objc_setProperty_atomic(self, v37, v38, 440);
    }

    v41 = objc_msgSend_configuration(self, v39, v40);
    v45 = objc_msgSend_container(v41, v42, v43);
    if (v27)
    {
      if (self)
      {
        Property = objc_getProperty(self, v44, 440, 1);
        objc_msgSend_addPreparedOperationToBackgroundThrottlingOperationQueue_(v45, v47, Property);
      }

      else
      {
        objc_msgSend_addPreparedOperationToBackgroundThrottlingOperationQueue_(v45, v44, 0);
      }
    }

    else if (self)
    {
      v48 = objc_getProperty(self, v44, 440, 1);
      objc_msgSend_addPreparedOperationToThrottlingOperationQueue_(v45, v49, v48);
    }

    else
    {
      objc_msgSend_addPreparedOperationToThrottlingOperationQueue_(v45, v44, 0);
    }

    v52 = objc_msgSend_configuration(self, v50, v51);
    v55 = objc_msgSend_container(v52, v53, v54);
    v56 = v55 == 0;

    if (v56)
    {
      v123 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v57, v58);
      v126 = objc_msgSend_operationID(self, v124, v125);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v123, v127, a2, self, @"CKOperation.m", 698, @"No container found to run operation %@", v126);
    }

    goto LABEL_26;
  }

  v60 = objc_msgSend_resolvedConfiguration(self, v23, v24);
  v65 = objc_msgSend_discretionaryNetworkBehavior(v60, v61, v62);
  if (v65 || (objc_msgSend_resolvedConfiguration(self, v63, v64), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend_automaticallyRetryNetworkFailures(v3, v66, v67)))
  {
    v68 = v65 == 0;
    v69 = objc_msgSend_resolvedConfiguration(self, v63, v64);
    isLongLived = objc_msgSend_isLongLived(v69, v70, v71);

    v73 = isLongLived ^ 1;
    if (!v68)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v73 = 0;
  }

LABEL_33:
  v27 = objc_msgSend_usesBackgroundSession(self, v74, v75);
  if (!v73)
  {
    goto LABEL_13;
  }

  if (self)
  {
    self->_scheduledDiscretionaryOperation = 1;
    self->_systemScheduler = 2;
  }

  v76 = _os_activity_create(&dword_1883EA000, "internal/queue-discretionary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v76, buf);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v77 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v140 = 0;
    _os_log_debug_impl(&dword_1883EA000, v77, OS_LOG_TYPE_DEBUG, "Queuing discretionary operation.", v140, 2u);
  }

  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = sub_18860F9B0;
  v139[3] = &unk_1E70BC048;
  v139[4] = self;
  v78 = sub_18860FA7C(self, v139);
  v83 = objc_msgSend_operationID(self, v79, v80);
  if (self)
  {
    v84 = objc_msgSend_resolvedConfiguration(self, v81, v82);
    v85 = objc_alloc_init(CKDiscretionaryOptions);
    v88 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v84, v86, v87);
    objc_msgSend_setApplicationBundleIdentifierOverride_(v85, v89, v88);

    v92 = objc_msgSend__sourceApplicationSecondaryIdentifier(v84, v90, v91);
    objc_msgSend_setSecondarySourceApplicationBundleId_(v85, v93, v92);

    objc_msgSend_timeoutIntervalForResource(v84, v94, v95);
    if (v98 < 1.0)
    {
      v98 = 604800.0;
    }

    objc_msgSend_setTimeoutIntervalForResource_(v85, v96, v97, v98);
    v101 = objc_msgSend_allowsCellularAccess(v84, v99, v100);
    objc_msgSend_setAllowsCellularAccess_(v85, v102, v101);
    v105 = objc_msgSend_allowsExpensiveNetworkAccess(v84, v103, v104);
    objc_msgSend_setAllowsExpensiveNetworkAccess_(v85, v106, v105);
    v109 = objc_msgSend_discretionaryNetworkBehavior(v84, v107, v108);
    objc_msgSend_setDiscretionaryNetworkBehavior_(v85, v110, v109);
    v113 = objc_msgSend_deviceContext(self, v111, v112);
    v116 = objc_msgSend_useLiveServer(v113, v114, v115);
    objc_msgSend_setRequiresNetworkAccess_(v85, v117, v116);
  }

  else
  {
    v85 = 0;
  }

  v118 = objc_msgSend_clientOperationCallbackProxy(self, v81, v82);
  v121 = objc_msgSend_endpoint(v118, v119, v120);
  objc_msgSend_queueOperationID_options_clientOperationCallbackProxyEndpoint_withBlock_(v78, v122, v83, v85, v121, &unk_1EFA2F568);

  os_activity_scope_leave(buf);
LABEL_26:

  v59 = *MEMORY[0x1E69E9840];
}

- (BOOL)usesBackgroundSession
{
  v4 = objc_msgSend_configuration(self, a2, v2);
  v7 = objc_msgSend_automaticallyRetryNetworkFailures(v4, v5, v6);

  v10 = objc_msgSend_configuration(self, v8, v9);
  v13 = objc_msgSend_discretionaryNetworkBehavior(v10, v11, v12) != 0;

  result = (v13 | v7) & 1;
  self->_usesBackgroundSession = result;
  return result;
}

- (CKOperationCallbackProxy)clientOperationCallbackProxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_clientOperationCallbackProxy)
  {
    v3 = [CKOperationCallbackProxy alloc];
    v4 = objc_opt_class();
    v7 = objc_msgSend_operationDaemonCallbackProtocol(v4, v5, v6);
    v9 = objc_msgSend_initWithOperation_callbackProtocol_(v3, v8, selfCopy, v7);
    clientOperationCallbackProxy = selfCopy->_clientOperationCallbackProxy;
    selfCopy->_clientOperationCallbackProxy = v9;
  }

  objc_sync_exit(selfCopy);

  v11 = selfCopy->_clientOperationCallbackProxy;

  return v11;
}

+ (id)operationDaemonCallbackProtocol
{
  if (objc_opt_class() == self)
  {
LABEL_5:
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKOperation.m", 905, @"Couldn't find Callbacks protocol for class %@", self);

    v10 = 0;
  }

  else
  {
    Superclass = self;
    while (1)
    {
      v7 = NSStringFromClass(Superclass);
      v9 = objc_msgSend_stringByAppendingString_(v7, v8, @"Callbacks");
      v10 = NSProtocolFromString(v9);

      if (v10)
      {
        break;
      }

      Superclass = class_getSuperclass(Superclass);
      if (Superclass == objc_opt_class())
      {
        goto LABEL_5;
      }
    }
  }

  return v10;
}

- (id)containerID
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_containerID(v6, v7, v8);

  return v9;
}

- (id)operationGroupName
{
  v3 = objc_msgSend_group(self, a2, v2);
  v6 = objc_msgSend_name(v3, v4, v5);

  return v6;
}

- (CKOperationInfo)operationInfo
{
  v3 = objc_opt_class();
  v6 = objc_alloc_init(objc_msgSend_operationInfoClass(v3, v4, v5));
  objc_msgSend_fillOutOperationInfo_(self, v7, v6);

  return v6;
}

+ (Class)operationInfoClass
{
  if (objc_opt_class() == self)
  {
    goto LABEL_5;
  }

  Superclass = self;
  while (1)
  {
    v7 = NSStringFromClass(Superclass);
    v9 = objc_msgSend_stringByAppendingString_(v7, v8, @"Info");
    v10 = NSClassFromString(v9);

    v11 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v10, v12, v11))
    {
      break;
    }

    Superclass = class_getSuperclass(Superclass);
    if (Superclass == objc_opt_class())
    {
      goto LABEL_5;
    }
  }

  if (!v10)
  {
LABEL_5:
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v16, a2, self, @"CKOperation.m", 809, @"CKOperation subclass lacked an operation info class: %@", v15);

    v10 = 0;
  }

  return v10;
}

+ (Class)operationClass
{
  selfCopy = self;
  v4 = objc_msgSend_superclass(self, a2, v2);
  if (v4 != objc_opt_class())
  {
    do
    {
      v7 = objc_msgSend_superclass(selfCopy, v5, v6);
      if (v7 == objc_opt_class())
      {
        break;
      }

      selfCopy = objc_msgSend_superclass(selfCopy, v8, v9);
      v12 = objc_msgSend_superclass(selfCopy, v10, v11);
    }

    while (v12 != objc_opt_class());
  }

  return selfCopy;
}

- (id)requestCompletedBlock
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
    v13 = sub_1883EE0F8;
    v14 = sub_1883EF74C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_188426774;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_requestCompletedBlock);
  }

  return v6;
}

- (id)_createPlaceholderOperation
{
  v3 = [CKPlaceholderOperation alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1884257BC;
  v8[3] = &unk_1E70BC388;
  v8[4] = self;
  v4 = sub_18861AF10(v3, self, v8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18860F874;
  v7[3] = &unk_1E70BC388;
  v7[4] = self;
  objc_msgSend_setCompletionBlock_(v4, v5, v7);

  return v4;
}

- (void)performCKOperation
{
  if (__sTestOverridesAvailable[0] == 1)
  {
    objc_msgSend_overlayTestResults(self, a2, v2);
    v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    objc_msgSend_postNotificationName_object_(v6, v7, @"CKWillPerformOperation", self);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1884265D8;
  v8[3] = &unk_1E70BC8A0;
  v8[4] = self;
  objc_msgSend_withContainerScopedDaemon_(self, a2, v8);
}

- (void)setQoSFromSwiftTaskPriority
{
  selfCopy = self;
  sub_1884289C8();
}

- (void)_performErrorRateMitigation
{
  v65 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1ED4B6024);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v3, v4);
  *&v6 = v5;
  if (byte_1ED4B6020)
  {
    v7 = v5 - *&qword_1ED4B6038;
    qword_1ED4B6038 = *&v5;
    if (v7 >= 20.0)
    {
      byte_1ED4B6020 = 0;
      *&qword_1ED4B6028 = 0u;
      *&qword_1ED4B6048 = 0u;
      *&qword_1ED4B6038 = 0u;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v19 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Error rate mitigation deactivated. CloudKit will no longer slow failing operations.", buf, 2u);
      }
    }

    else
    {
      v8 = v7 - *&qword_1ED4B6050;
      v9 = (v7 - *&qword_1ED4B6050) * 0.1 + *&qword_1ED4B6048 * 0.9;
      v10 = 10.0 - v9;
      if (10.0 - v9 <= 10.0)
      {
        v11 = 10.0 - v9;
      }

      else
      {
        v11 = 10.0;
      }

      *&qword_1ED4B6048 = (v7 - *&qword_1ED4B6050) * 0.1 + *&qword_1ED4B6048 * 0.9;
      qword_1ED4B6050 = *&v11;
      if (*&v6 - *&qword_1ED4B6028 < 60.0)
      {
        *&qword_1ED4B6050 = v11 * ((erf((*&v6 - *&qword_1ED4B6028) / 60.0 * 4.0 + -2.0) + 1.0) * 0.5);
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134219008;
        v56 = *&v10;
        v57 = 2048;
        selfCopy = qword_1ED4B6050;
        v59 = 2048;
        v60 = v7;
        v61 = 2048;
        v62 = v8;
        v63 = 2048;
        v64 = qword_1ED4B6048;
        v13 = "mitigation: rawDelay = %f, delay = %f, errorGap = %f, errorTime = %f, errorInterval = %f";
        v14 = v12;
        v15 = 52;
LABEL_32:
        _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
      }
    }
  }

  else
  {
    v16 = v5 - *&qword_1ED4B6030;
    if (*&v6 - *&qword_1ED4B6030 <= 10.0)
    {
      if (++qword_1ED4B6040 >= 6)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v20 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v56 = qword_1ED4B6040;
          v57 = 2048;
          selfCopy = 10;
          v13 = "Approaching error rate limiting trigger: count = %llu, trigger = %llu";
          v14 = v20;
          v15 = 22;
          goto LABEL_32;
        }
      }
    }

    else if (v16 < 20.0 && qword_1ED4B6040 >= 0xB)
    {
      byte_1ED4B6020 = 1;
      *&qword_1ED4B6048 = v16 / qword_1ED4B6040;
      qword_1ED4B6030 = v6;
      qword_1ED4B6038 = v6;
      qword_1ED4B6028 = v6;
      qword_1ED4B6040 = 1;
      qword_1ED4B6050 = 0;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Error rate mitigation activated due to high rate of failing operations. CloudKit will slow failing operations.", buf, 2u);
      }
    }

    else
    {
      if (qword_1ED4B6040 >= 6)
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v18 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Error rate limiting trigger not reached. Resetting error count.", buf, 2u);
        }
      }

      qword_1ED4B6040 = 1;
      qword_1ED4B6030 = v6;
    }
  }

  os_unfair_lock_unlock(&stru_1ED4B6024);
  if (*&qword_1ED4B6050 > 0.0)
  {
    v22 = CKDescriptionForTimeInterval(*&qword_1ED4B6050);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v56 = v22;
      v57 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1883EA000, v23, OS_LOG_TYPE_INFO, "CloudKit is applying an error rate mitigation delay of %{public}@ to operation %{public}@.", buf, 0x16u);
    }

    objc_msgSend_sleepForTimeInterval_(MEMORY[0x1E696AF00], v24, v25, *&qword_1ED4B6050);
    v28 = objc_msgSend_error(self, v26, v27);
    v31 = objc_msgSend_domain(v28, v29, v30);
    v34 = objc_msgSend_code(v28, v32, v33);
    v37 = objc_msgSend_userInfo(v28, v35, v36);
    v40 = objc_msgSend_mutableCopy(v37, v38, v39);

    if (!v40)
    {
      v42 = objc_alloc(MEMORY[0x1E695DF90]);
      v40 = objc_msgSend_initWithCapacity_(v42, v43, 1);
    }

    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v41, @"This operation was delayed by %@ due to high rate of operation errors.", v22);
    objc_msgSend_setObject_forKey_(v40, v45, v44, @"CKErrorMitigationMessageKey");
    if (byte_1EA919CC8 == 1)
    {
      v48 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v46, v47, *&qword_1ED4B6050);
      objc_msgSend_setObject_forKey_(v40, v49, v48, @"CKErrorMitigationDelaySeconds");
    }

    v50 = objc_alloc(objc_opt_class());
    v52 = objc_msgSend_initWithDomain_code_userInfo_(v50, v51, v31, v34, v40);
    objc_msgSend_setError_(self, v53, v52);
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (BOOL)transitionToFinished
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = CKOperationExecutionStateTransitionToFinished(self, &self->_executionState);
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_operationID(self, v5, v6);
      v12 = objc_msgSend_error(self, v8, v9);
      v13 = &stru_1EFA32970;
      if (v12)
      {
        v14 = @" with error: ";
      }

      else
      {
        v14 = &stru_1EFA32970;
      }

      v15 = objc_msgSend_error(self, v10, v11);
      v18 = v15;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = &stru_1EFA32970;
      }

      v22 = objc_msgSend_error(self, v16, v17);
      if (v22)
      {
        v32 = objc_msgSend_error(self, v20, v21);
        v13 = objc_msgSend_CKClientSuitableError(v32, v23, v24);
      }

      *buf = 138544130;
      v34 = v7;
      v35 = 2112;
      v36 = v14;
      v37 = 2114;
      v38 = v19;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Operation %{public}@ finished%@%{public}@%@", buf, 0x2Au);
      if (v22)
      {
      }
    }

    sub_1884350BC(self);
    executingTransaction = self->_executingTransaction;
    self->_executingTransaction = 0;

    v28 = objc_msgSend_callbackQueue(self, v26, v27);
    dispatch_activate(v28);

    objc_msgSend_setQueueHasStarted_(self, v29, 1);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_finishDiscretionaryOperation
{
  v22 = *MEMORY[0x1E69E9840];
  if (self && self->_scheduledDiscretionaryOperation)
  {
    v3 = _os_activity_create(&dword_1883EA000, "internal/finish-discretionary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_msgSend_operationID(self, v5, v6);
      *buf = 138412290;
      v21 = v16;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Finishing discretionary operation %@", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_188611544;
    v18[3] = &unk_1E70BC048;
    v18[4] = self;
    v7 = sub_18860FA7C(self, v18);
    v10 = objc_msgSend_operationID(self, v8, v9);
    objc_msgSend_finishOperationID_(v7, v11, v10);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_msgSend_operationID(self, v13, v14);
      *buf = 138412290;
      v21 = v17;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Finished discretionary operation %@", buf, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_activate(callbackQueue);
    objc_msgSend_setQueueHasStarted_(self, v6, 1);
  }

  v7 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v10 = objc_msgSend_backgroundTask(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_resolvedConfiguration(self, v11, v12);
    v16 = objc_msgSend_backgroundTask(v13, v14, v15);
    v17 = NSStringFromSelector(sel_state);
    objc_msgSend_removeObserver_forKeyPath_context_(v16, v18, self, v17, qword_1EA910878);
  }

  if (objc_msgSend_isExecuting(self, v11, v12))
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKOperation.m", 245, @"Operation was deallocated before it finished");
  }

  v24.receiver = self;
  v24.super_class = CKOperation;
  [(CKOperation *)&v24 dealloc];
  v21 = *MEMORY[0x1E69E9840];
}

+ (id)assetInfoForOperation:(id)operation recordID:(id)d recordKey:(id)key arrayIndex:(int64_t)index
{
  operationCopy = operation;
  dCopy = d;
  keyCopy = key;
  if (dCopy)
  {
    v14 = objc_msgSend_assetInfoByArrayIndexByRecordKeyByRecordID(operationCopy, v11, v12);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, dCopy);

    if (!v16)
    {
      v16 = objc_opt_new();
      v20 = objc_msgSend_assetInfoByArrayIndexByRecordKeyByRecordID(operationCopy, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v20, v21, v16, dCopy);
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(v16, v17, keyCopy);
    if (!v23)
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKeyedSubscript_(v16, v24, v23, keyCopy);
    }

    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, index);
    v27 = objc_msgSend_objectForKeyedSubscript_(v23, v26, v25);

    if (!v27)
    {
      v27 = objc_opt_new();
      v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v28, index);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v30, v27, v29);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (BOOL)_wireUpAssetContentForOperation:(id)operation inRecord:(id)record checkSignatures:(BOOL)signatures outError:(id *)error
{
  operationCopy = operation;
  recordCopy = record;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1883EDC9C;
  v34 = sub_1883EF67C;
  v35 = 0;
  v13 = objc_msgSend_assetInfoByArrayIndexByRecordKeyByRecordID(operationCopy, v11, v12);
  v16 = objc_msgSend_recordID(recordCopy, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v13, v17, v16);

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1885E34F0;
  v25[3] = &unk_1E70BED78;
  v19 = recordCopy;
  v26 = v19;
  signaturesCopy = signatures;
  v20 = operationCopy;
  v27 = v20;
  v28 = &v30;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v18, v21, v25);
  v22 = v31[5];
  if (error && v22)
  {
    *error = v22;
    v22 = v31[5];
  }

  v23 = v22 == 0;

  _Block_object_dispose(&v30, 8);
  return v23;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v13 = objectCopy;
  if (qword_1EA910878 == context)
  {
    if (objc_msgSend_state(objectCopy, v11, v12) != 1)
    {
      objc_msgSend__handleBackgroundTaskExpiration_(self, v14, v13);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CKOperation;
    [(CKOperation *)&v15 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)setCallbackQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  callbackQueue = obj->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_activate(callbackQueue);
    dispatch_queue_set_specific(obj->_callbackQueue, kCKOperationCallbackQueueName, 0, 0);
    v6 = obj;
    v7 = obj->_callbackQueue;
  }

  else
  {
    v7 = 0;
    v6 = obj;
  }

  v6->_callbackQueue = queueCopy;
  v8 = queueCopy;

  dispatch_queue_set_specific(obj->_callbackQueue, kCKOperationCallbackQueueName, 1, 0);
  objc_sync_exit(obj);
}

- (void)setLongLivedOperationWasPersistedBlock:(void *)longLivedOperationWasPersistedBlock
{
  v6 = longLivedOperationWasPersistedBlock;
  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend__ckRaiseInGeneratedCallbackImplementation(self, v4, v5))
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D920], @"Callback check triggered");
  }

  if (objc_msgSend_queueHasStarted(self, v4, v5) && !dispatch_get_specific(kCKOperationCallbackQueueName))
  {
    v11 = objc_msgSend_callbackQueue(self, v7, v8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_18860E050;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = v6;
    dispatch_sync(v11, v12);

    v10 = v13;
    goto LABEL_9;
  }

  if (self->_longLivedOperationWasPersistedBlock != v6)
  {
    v9 = objc_msgSend_copy(v6, v7, v8);
    v10 = self->_longLivedOperationWasPersistedBlock;
    self->_longLivedOperationWasPersistedBlock = v9;
LABEL_9:
  }
}

- (void)longLivedOperationWasPersistedBlock
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
    v13 = sub_1883EE0F8;
    v14 = sub_1883EF74C;
    v15 = 0;
    v8 = objc_msgSend_callbackQueue(self, v4, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_18860E248;
    v9[3] = &unk_1E70BE500;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v8, v9);

    v6 = _Block_copy(v11[5]);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = _Block_copy(self->_longLivedOperationWasPersistedBlock);
  }

  return v6;
}

- (void)setRequestCompletedBlock:(id)block
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
    v12[2] = sub_18860E3D4;
    v12[3] = &unk_1E70BC940;
    v12[4] = self;
    v13 = blockCopy;
    dispatch_sync(v11, v12);

    requestCompletedBlock = v13;
    goto LABEL_9;
  }

  if (self->_requestCompletedBlock != blockCopy)
  {
    v9 = objc_msgSend_copy(blockCopy, v7, v8);
    requestCompletedBlock = self->_requestCompletedBlock;
    self->_requestCompletedBlock = v9;
LABEL_9:
  }
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_1883EA000, "CKOperation/?", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_handleBackgroundTaskExpiration:(id)expiration
{
  v50 = *MEMORY[0x1E69E9840];
  expirationCopy = expiration;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = sub_188416C9C(self);
  os_activity_scope_enter(v5, &state);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_operationID(self, v7, v8);
    *buf = 138543362;
    v47 = v9;
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Background task expired or was completed for operation %{public}@", buf, 0xCu);
  }

  if ((objc_msgSend_isCancelled(self, v10, v11) & 1) == 0 && objc_msgSend_isExecuting(self, v12, v13))
  {
    v16 = objc_msgSend_operationMetric(self, v14, v15);
    v19 = objc_msgSend_state(expirationCopy, v17, v18);
    v20 = CKBackgroundTaskStateDescription(v19);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v21, v20, @"xpcActivity_state");

    v22 = MEMORY[0x1E696AD98];
    v25 = objc_msgSend_state(expirationCopy, v23, v24) == 2;
    v27 = objc_msgSend_numberWithInt_(v22, v26, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v28, v27, @"xpcActivity_shouldDefer");

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((objc_msgSend_state(expirationCopy, v29, v30) & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v31 = objc_msgSend_resolvedConfiguration(self, v29, v30);
        v34 = objc_msgSend_schedulerActivity(v31, v32, v33);

        if (v34)
        {
          v35 = 132;
        }

        else
        {
          v35 = 131;
        }
      }

      else
      {
        v35 = 130;
      }
    }

    else
    {
      v35 = 133;
    }

    v36 = objc_msgSend_identifier(expirationCopy, v29, v30);
    v38 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKErrorDomain", v35, @"Background task was deferred (%@)", v36);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v39 = ck_log_facility_op;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_msgSend_operationID(self, v40, v41);
      *buf = 138543618;
      v47 = v42;
      v48 = 2112;
      v49 = expirationCopy;
      _os_log_impl(&dword_1883EA000, v39, OS_LOG_TYPE_DEFAULT, "Cancelling operation %{public}@ because background task expired or was completed (%@)", buf, 0x16u);
    }

    objc_msgSend_cancelWithUnderlyingError_(self, v43, v38);
  }

  os_activity_scope_leave(&state);

  v44 = *MEMORY[0x1E69E9840];
}

+ (SEL)daemonInvocationSelector
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v8, a2, self, @"CKOperation.m", 525, @"daemonInvocationSelector should be overridden by %@", v7);

  return a2;
}

- (BOOL)hasCKOperationCallbacksSet
{
  v3 = objc_msgSend_completionBlock(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)CKOperationShouldRun:(id *)run
{
  v5 = objc_msgSend_configuration(self, a2, run);
  v8 = objc_msgSend_container(v5, v6, v7);

  if (!v8)
  {
    if (run)
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v39 = objc_msgSend_operationID(self, v37, v38);
      *run = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v40, @"CKErrorDomain", 12, @"%@ %@ cannot run because it has no CKContainer. Set a container using CKOperationConfiguration.", v36, v39);
    }

    return 0;
  }

  v11 = objc_msgSend_configuration(self, v9, v10);
  isLongLived = objc_msgSend_isLongLived(v11, v12, v13);

  if (isLongLived)
  {
    v15 = MEMORY[0x1E696AAE8];
    v16 = objc_opt_class();
    v18 = objc_msgSend_bundleForClass_(v15, v17, v16);
    v19 = MEMORY[0x1E696AAE8];
    v20 = objc_opt_class();
    v22 = objc_msgSend_bundleForClass_(v19, v21, v20);
    isEqual = objc_msgSend_isEqual_(v18, v23, v22);

    if ((isEqual & 1) == 0)
    {
      if (!run)
      {
        return 0;
      }

      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v43, @"CKErrorDomain", 12, @"Subclasses of CKOperations may not be run as long-lived operations: %@", v42);
      goto LABEL_11;
    }

    v27 = objc_msgSend_resolvedConfiguration(self, v25, v26);
    v30 = objc_msgSend_assetDownloadStagingManager(v27, v28, v29);

    if (v30)
    {
      if (run)
      {
        v32 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v31, @"CKErrorDomain", 12, @"Long-lived operations may not use assetDownloadStagingManager.");
        v33 = v32;
        result = 0;
        *run = v32;
        return result;
      }

      return 0;
    }

    if (CKCurrentProcessIsDaemon())
    {
      v46 = objc_msgSend_configuration(self, v44, v45);
      v49 = objc_msgSend_container(v46, v47, v48);
      v42 = objc_msgSend_containerID(v49, v50, v51);

      if (!objc_msgSend_isAppleInternal(v42, v52, v53) || (v56 = objc_msgSend_specialContainerType(v42, v54, v55), v56 <= 0x1B) && ((1 << v56) & 0xA201C00) != 0)
      {

        return 1;
      }

      if (!run)
      {
        goto LABEL_12;
      }

      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v57, @"CKErrorDomain", 12, @"CKOperations from daemons must not be run as long-lived operations (59154510).\nMore information about scheduling in CloudKit can be found internally at https://cloudkit.apple.com/API/CKNative/Guides/Scheduling.html.\nUse xpc_activity_t to schedule your daemon to run at an appropriate time for this CKOperation. Set your xpc_activity_t on [CKOperationConfiguration xpcActivity]. See the header documentation for CKOperationConfiguration's xpcActivity in CKOperation_Private.h for more details.");
      *run = LABEL_11:;
LABEL_12:

      return 0;
    }
  }

  return 1;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  if (blockCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_18861010C;
    v7[3] = &unk_1E70BEF10;
    v5 = &v9;
    objc_copyWeak(&v9, &location);
    v8 = blockCopy;
    v6.receiver = self;
    v6.super_class = CKOperation;
    [(CKOperation *)&v6 setCompletionBlock:v7];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1886100B8;
    v11[3] = &unk_1E70BC680;
    v5 = &v12;
    objc_copyWeak(&v12, &location);
    v10.receiver = self;
    v10.super_class = CKOperation;
    [(CKOperation *)&v10 setCompletionBlock:v11];
  }

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

- (void)fillOutOperationInfo:(id)info
{
  v122 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v7 = objc_msgSend_resolvedConfiguration(self, v5, v6);
  objc_msgSend_setResolvedConfiguration_(infoCopy, v8, v7);
  v13 = objc_msgSend_group(self, v9, v10);
  if (v13)
  {
    objc_msgSend_setGroup_(infoCopy, v11, v13);
  }

  else
  {
    v14 = objc_msgSend_convenienceOperationGroup(self, v11, v12);
    objc_msgSend_setGroup_(infoCopy, v15, v14);
  }

  v18 = objc_msgSend_operationID(self, v16, v17);
  objc_msgSend_setOperationID_(infoCopy, v19, v18);

  v23 = objc_msgSend_name(self, v20, v21);
  if (infoCopy)
  {
    objc_setProperty_nonatomic_copy(infoCopy, v22, v23, 128);
  }

  v26 = objc_msgSend_queuePriority(self, v24, v25);
  objc_msgSend_setClientQueuePriority_(infoCopy, v27, v26);
  if (self)
  {
    objc_msgSend_setDuetPreClearedMode_(infoCopy, v28, self->_duetPreClearedMode);
    objc_msgSend_setDiscretionaryWhenBackgroundedState_(infoCopy, v29, self->_discretionaryWhenBackgroundedState);
    objc_msgSend_setSystemScheduler_(infoCopy, v30, self->_systemScheduler);
    objc_msgSend_setBackgroundTaskIdentifier_(infoCopy, v31, self->_backgroundTaskIdentifier);
  }

  else
  {
    objc_msgSend_setDuetPreClearedMode_(infoCopy, v28, 0);
    objc_msgSend_setDiscretionaryWhenBackgroundedState_(infoCopy, v106, 0);
    objc_msgSend_setSystemScheduler_(infoCopy, v107, 0);
    objc_msgSend_setBackgroundTaskIdentifier_(infoCopy, v108, 0);
  }

  v32 = objc_opt_class();
  v35 = objc_msgSend_operationClass(v32, v33, v34);
  v36 = NSStringFromClass(v35);
  objc_msgSend_setCkOperationClassName_(infoCopy, v37, v36);

  v40 = objc_msgSend_clientOperationCallbackProxy(self, v38, v39);
  v43 = objc_msgSend_endpoint(v40, v41, v42);
  objc_msgSend_setCallbackProxyEndpoint_(infoCopy, v44, v43);

  isOutstandingOperation = objc_msgSend_isOutstandingOperation(self, v45, v46);
  if (infoCopy)
  {
    infoCopy[8] = isOutstandingOperation;
  }

  v50 = objc_msgSend_MMCSRequestOptions(self, v48, v49);
  objc_msgSend_setMMCSRequestOptions_(infoCopy, v51, v50);

  v54 = objc_msgSend_requestOriginator(v7, v52, v53);
  objc_msgSend_setRequestOriginator_(infoCopy, v55, v54);
  v58 = objc_msgSend_requestCompletedBlock(self, v56, v57);

  if (infoCopy && v58)
  {
    infoCopy[11] = 1;
  }

  v110 = v7;
  v61 = objc_msgSend_assetDownloadStagingManager(v7, v59, v60);

  if (v61)
  {
    objc_msgSend_setUsesAssetDownloadStagingManager_(infoCopy, v62, 1);
  }

  objc_msgSend_classForObject_(CKObjCClass, v62, infoCopy);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v109 = v114 = 0u;
  v65 = objc_msgSend_properties(v109, v63, v64);
  v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v111, v121, 16);
  if (v67)
  {
    v70 = v67;
    v71 = *v112;
    do
    {
      v72 = 0;
      do
      {
        if (*v112 != v71)
        {
          objc_enumerationMutation(v65);
        }

        v73 = *(*(&v111 + 1) + 8 * v72);
        v74 = objc_msgSend_type(v73, v68, v69);
        if (v74)
        {
          v75 = v74[1];

          if (v75 != 15)
          {
            goto LABEL_24;
          }

          v76 = sub_1885B0A48(v73, infoCopy);
          v79 = objc_msgSend_configuration(self, v77, v78);
          v82 = objc_msgSend_container(v79, v80, v81);
          v85 = objc_msgSend_containerID(v82, v83, v84);
          objc_msgSend_CKAssignToContainerWithID_(v76, v86, v85);
        }

        else
        {
          v76 = 0;
        }

LABEL_24:
        ++v72;
      }

      while (v70 != v72);
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v111, v121, 16);
      v70 = v87;
    }

    while (v87);
  }

  v90 = objc_msgSend_qualityOfService(infoCopy, v88, v89);
  v93 = v110;
  if ((v90 == 33 || v90 == 25) && objc_msgSend_discretionaryNetworkBehavior(infoCopy, v91, v92))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v94 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v96 = v94;
      v99 = objc_msgSend_qualityOfService(infoCopy, v97, v98);
      v101 = CKStringForQOS(v99, v100);
      v104 = objc_msgSend_discretionaryNetworkBehavior(infoCopy, v102, v103);
      v105 = CKStringForDiscretionaryNetworkBehavior(v104);
      *buf = 138412802;
      selfCopy = self;
      v117 = 2114;
      v118 = v101;
      v119 = 2114;
      v120 = v105;
      _os_log_fault_impl(&dword_1883EA000, v96, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Operation %@ requesting to use CPU QualityOfService %{public}@ with %{public}@ networking behavior.\n Will override in cloudd with the following behavior:\n   operation.qualityOfService = Utility.\nAll other operation configurations will remain the same.", buf, 0x20u);

      v93 = v110;
    }
  }

  if (__sTestOverridesAvailable[0] == 1)
  {
    objc_msgSend_addTestInfoToOperationInfo_(self, v91, infoCopy);
  }

  v95 = *MEMORY[0x1E69E9840];
}

- (void)fillFromOperationInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_resolvedConfiguration(infoCopy, v4, v5);
  objc_msgSend_setConfiguration_(self, v7, v6);

  v10 = objc_msgSend_group(infoCopy, v8, v9);
  objc_msgSend_setGroup_(self, v11, v10);

  v14 = objc_msgSend_operationID(infoCopy, v12, v13);
  objc_msgSend_setOperationID_(self, v15, v14);

  if (infoCopy)
  {
    v16 = infoCopy[16];
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  objc_msgSend_setName_(self, v18, v17);

  objc_msgSend_setIsOutstandingOperation_(self, v19, 1);
  v22 = objc_msgSend_clientQueuePriority(infoCopy, v20, v21);
  objc_msgSend_setQueuePriority_(self, v23, v22);
  v26 = objc_msgSend_duetPreClearedMode(infoCopy, v24, v25);
  if (self)
  {
    self->_duetPreClearedMode = v26;
    self->_discretionaryWhenBackgroundedState = objc_msgSend_discretionaryWhenBackgroundedState(infoCopy, v27, v28);
    self->_systemScheduler = objc_msgSend_systemScheduler(infoCopy, v29, v30);
  }

  else
  {
    objc_msgSend_discretionaryWhenBackgroundedState(infoCopy, v27, v28);
    objc_msgSend_systemScheduler(infoCopy, v34, v35);
  }

  v33 = objc_msgSend_backgroundTaskIdentifier(infoCopy, v31, v32);
  sub_18860F170(self, v33);
}

+ (void)applyDaemonCallbackInterfaceTweaks:(id)tweaks
{
  tweaksCopy = tweaks;
  v5 = CKOperationMetricsClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v6, v5, sel_handleOperationDidCompleteWithMetrics_error_, 0, 0);

  v7 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v8, v7, sel_handleOperationDidCompleteWithMetrics_error_, 1, 0);

  v9 = CKErrorUserInfoClasses();
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(tweaksCopy, v10, v9, sel_handleDiscretionaryOperationShouldStart_nonDiscretionary_error_, 2, 0);

  if (NSClassFromString(&cfstr_Ckoperation.isa) != self)
  {
    v24 = sub_188421EC8();
    v13 = objc_msgSend_daemonInvocationSelector(self, v11, v12);
    v14 = CKExtendedMethodSignatureForProtocolSelector(&unk_1EFAC8AA0, v13);
    v17 = objc_msgSend_CK_indexOfErrorInReplyBlock(v14, v15, v16);
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v17;
      v19 = CKErrorUserInfoClasses();
      v22 = objc_msgSend_daemonInvocationSelector(self, v20, v21);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v24, v23, v19, v22, v18, 1);
    }
  }
}

- (void)cancelWithUnderlyingError:(id)error message:(id)message
{
  errorCopy = error;
  messageCopy = message;
  if (!messageCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_msgSend_operationID(self, v6, v7);
    messageCopy = objc_msgSend_stringWithFormat_(v9, v11, @"Operation %@ was cancelled with an error", v10);
  }

  v12 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(CKPrettyError, v6, @"CKErrorDomain", 20, 0, errorCopy, 0, 0, messageCopy);
  objc_msgSend_cancelWithError_(self, v13, v12);
}

- (void)cancelWithError:(id)error
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v10 = v7;
    v13 = objc_msgSend_operationID(self, v11, v12);
    *buf = 138543618;
    v25 = v13;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Warn: Cancelling operation %{public}@ with error %@", buf, 0x16u);
  }

  if (!errorCopy)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKOperation.m", 929, @"Cancel error must not be nil.");
  }

  v14 = errorCopy;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_cancelError, error);
    objc_sync_exit(selfCopy);
  }

  v23.receiver = self;
  v23.super_class = CKOperation;
  [(CKOperation *)&v23 cancel];
  v18 = objc_msgSend_callbackQueue(self, v16, v17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188610D68;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_async(v18, block);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_cancelDaemonOperation
{
  v4 = objc_msgSend_configuration(self, a2, v2);
  v7 = objc_msgSend_container(v4, v5, v6);
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886112BC;
  v9[3] = &unk_1E70BC048;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18861140C;
  v8[3] = &unk_1E70BC8A0;
  sub_188549F04(v7, v9, v8);
}

- (void)cancel
{
  v18 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = sub_188416C9C(self);
  os_activity_scope_enter(v3, &state);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v4 = ck_log_facility_ck;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = objc_msgSend_operationID(self, v5, v6);
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Adopter cancelled operation %@", buf, 0xCu);
  }

  v10 = objc_msgSend_operationID(self, v8, v9);
  v12 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v11, @"CKErrorDomain", 20, 0, @"Operation %@ was cancelled", v10);
  objc_msgSend_cancelWithError_(self, v13, v12);

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)zoneIDsToZoneNamesString:(id)string
{
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (objc_msgSend_count(stringCopy, v4, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = stringCopy;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objc_msgSend_zoneName(v13, v14, v15, v32);
            v19 = objc_msgSend_length(v16, v17, v18);

            if (v19)
            {
              v21 = objc_msgSend_zoneName(v13, v14, v20);
              objc_msgSend_addObject_(v6, v22, v21);
            }
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v32, v36, 16);
      }

      while (v10);
    }

    v25 = objc_msgSend_allObjects(v6, v23, v24);
    v27 = objc_msgSend_sortedArrayUsingSelector_(v25, v26, sel_localizedCaseInsensitiveCompare_);

    v29 = objc_msgSend_componentsJoinedByString_(v27, v28, @",");
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)configureConvenience:(id)convenience
{
  convenienceCopy = convenience;
  objc_msgSend_setQueuePriority_(self, v4, -4);
  if (!CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    objc_msgSend_setQualityOfService_(self, v5, 17);
    goto LABEL_9;
  }

  v7 = objc_msgSend_configuration(convenienceCopy, v5, v6);
  hasQualityOfService = objc_msgSend_hasQualityOfService(v7, v8, v9);

  if (hasQualityOfService)
  {
    v13 = objc_msgSend_configuration(convenienceCopy, v11, v12);
    v16 = objc_msgSend_qualityOfService(v13, v14, v15);
    objc_msgSend_setQualityOfService_(self, v17, v16);
LABEL_7:

    goto LABEL_9;
  }

  v20 = objc_msgSend_group(convenienceCopy, v11, v12);
  v23 = objc_msgSend_defaultConfiguration(v20, v21, v22);
  v26 = objc_msgSend_hasQualityOfService(v23, v24, v25);

  if (v26)
  {
    v13 = objc_msgSend_group(convenienceCopy, v27, v28);
    v31 = objc_msgSend_defaultConfiguration(v13, v29, v30);
    v34 = objc_msgSend_qualityOfService(v31, v32, v33);
    objc_msgSend_setQualityOfService_(self, v35, v34);

    goto LABEL_7;
  }

  objc_msgSend_setQoSFromSwiftTaskPriority(self, v27, v28);
LABEL_9:
  v36 = objc_msgSend_configuration(self, v18, v19);
  if ((objc_msgSend_hasDiscretionaryNetworkBehavior(v36, v37, v38) & 1) == 0)
  {
    v41 = objc_msgSend_group(self, v39, v40);
    v44 = objc_msgSend_defaultConfiguration(v41, v42, v43);
    if ((objc_msgSend_hasDiscretionaryNetworkBehavior(v44, v45, v46) & 1) == 0)
    {
      if (convenienceCopy)
      {
        v49 = objc_msgSend_configuration(convenienceCopy, v47, v48);
        if (objc_msgSend_hasDiscretionaryNetworkBehavior(v49, v50, v51))
        {

          goto LABEL_14;
        }

        v56 = objc_msgSend_group(convenienceCopy, v52, v53);
        v59 = objc_msgSend_defaultConfiguration(v56, v57, v58);
        hasDiscretionaryNetworkBehavior = objc_msgSend_hasDiscretionaryNetworkBehavior(v59, v60, v61);

        if (hasDiscretionaryNetworkBehavior)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v36 = objc_msgSend_configuration(self, v54, v55);
      objc_msgSend_setDiscretionaryNetworkBehavior_(v36, v63, 0);
      goto LABEL_18;
    }

LABEL_14:
  }

LABEL_18:

LABEL_19:
  v64 = objc_msgSend_configuration(self, v54, v55);
  if ((objc_msgSend_hasAutomaticallyRetryNetworkFailures(v64, v65, v66) & 1) == 0)
  {
    v69 = objc_msgSend_group(self, v67, v68);
    v72 = objc_msgSend_defaultConfiguration(v69, v70, v71);
    if ((objc_msgSend_hasAutomaticallyRetryNetworkFailures(v72, v73, v74) & 1) == 0)
    {
      if (convenienceCopy)
      {
        v77 = objc_msgSend_configuration(convenienceCopy, v75, v76);
        if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v77, v78, v79))
        {

          goto LABEL_24;
        }

        v84 = objc_msgSend_group(convenienceCopy, v80, v81);
        v87 = objc_msgSend_defaultConfiguration(v84, v85, v86);
        hasAutomaticallyRetryNetworkFailures = objc_msgSend_hasAutomaticallyRetryNetworkFailures(v87, v88, v89);

        if (hasAutomaticallyRetryNetworkFailures)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      v64 = objc_msgSend_configuration(self, v82, v83);
      objc_msgSend_setAutomaticallyRetryNetworkFailures_(v64, v91, 0);
      goto LABEL_28;
    }

LABEL_24:
  }

LABEL_28:

LABEL_29:
}

- (void)withContainerScopedDaemon:(id)daemon
{
  daemonCopy = daemon;
  objc_initWeak(&location, self);
  v7 = objc_msgSend_configuration(self, v5, v6);
  v10 = objc_msgSend_container(v7, v8, v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18861259C;
  v14[3] = &unk_1E70BEF60;
  v14[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18861261C;
  v12[3] = &unk_1E70BEEE8;
  objc_copyWeak(&v13, &location);
  objc_msgSend_getContainerScopedDaemonProxyWithRetryHandler_errorHandler_daemonProxyHandler_(v10, v11, v14, v12, daemonCopy);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (void)setOperationIDPrefix:(id)prefix
{
  prefixCopy = prefix;
  obj = self;
  objc_sync_enter(obj);
  v5 = qword_1EA919B68;
  qword_1EA919B68 = prefixCopy;

  objc_sync_exit(obj);
}

+ (NSString)operationIDPrefix
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = qword_1EA919B68;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)handleWillStart:(id)start
{
  startCopy = start;
  v6 = objc_msgSend_callbackQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  if (self && !self->_remoteOperationState)
  {
    self->_remoteOperationState = 1;
  }

  v7 = startCopy;
  if (startCopy)
  {
    (*(startCopy + 2))(startCopy, 0);
    v7 = startCopy;
  }
}

- (void)handleDidStart:(id)start
{
  startCopy = start;
  v6 = objc_msgSend_callbackQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  if (self && self->_remoteOperationState <= 1u)
  {
    self->_remoteOperationState = 2;
  }

  v7 = startCopy;
  if (startCopy)
  {
    (*(startCopy + 2))(startCopy, 0);
    v7 = startCopy;
  }
}

- (void)handleLongLivedOperationDidPersist
{
  v4 = objc_msgSend_callbackQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_longLivedOperationWasPersistedBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_longLivedOperationWasPersistedBlock(self, v8, v9);
    v10[2]();
  }
}

- (void)handleSystemDidImposeInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v11 = objc_msgSend_group(self, v8, v9);
  objc_msgSend_setSystemImposedInfo_(v11, v10, infoCopy);
}

- (void)handleRequestDidComplete:(id)complete
{
  completeCopy = complete;
  v6 = objc_msgSend_callbackQueue(self, v4, v5);
  dispatch_assert_queue_V2(v6);

  v9 = objc_msgSend_requestCompletedBlock(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_requestCompletedBlock(self, v10, v11);
    (v12)[2](v12, completeCopy);
  }
}

- (void)openFileWithOpenInfo:(id)info reply:(id)reply
{
  infoCopy = info;
  replyCopy = reply;
  v9 = objc_msgSend_assetDownloadStagingInfo(infoCopy, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_resolvedConfiguration(self, v10, v11);
    v15 = objc_msgSend_assetDownloadStagingManager(v12, v13, v14);
    objc_msgSend_setAssetDownloadStagingManager_(infoCopy, v16, v15);
  }

  v17 = objc_msgSend_deviceContext(self, v10, v11);
  v20 = objc_msgSend_deviceScopedStateManager(v17, v18, v19);
  objc_msgSend_openFileWithOpenInfo_reply_(v20, v21, infoCopy, replyCopy);
}

- (void)handleFinishWithAssetDownloadStagingInfo:(id)info reply:(id)reply
{
  replyCopy = reply;
  infoCopy = info;
  v10 = objc_msgSend_callbackQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  v13 = objc_msgSend_resolvedConfiguration(self, v11, v12);
  v16 = objc_msgSend_assetDownloadStagingManager(v13, v14, v15);
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v18 = objc_msgSend_finishWithAssetDownloadStagingInfo_fileURL_fileHandle_error_(v16, v17, infoCopy, &v25, &v24, &v23);

  v19 = v25;
  v20 = v24;
  v21 = v23;

  if ((v18 & 1) == 0)
  {

    if (!v21)
    {
      v21 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKInternalErrorDomain", 1000, @"Unknown error invoking finishWithAssetDownloadStagingInfo.");
    }

    v19 = 0;
    v20 = 0;
  }

  replyCopy[2](replyCopy, v19, v20, v21);
}

- (void)handleDiscretionaryOperationShouldSuspend
{
  v4 = objc_msgSend_callbackQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  if (self)
  {
    self->_isDiscretionarySuspended = 1;
  }

  objc_msgSend__cancelDaemonOperation(self, v5, v6);
  v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKErrorDomain", 4, @"System conditions no longer appropriate.");
  sub_188610EC8(self, v8);
}

- (void)handleDaemonOperationWillStartWithClassName:(id)name isTopLevelDaemonOperation:(BOOL)operation replyBlock:(id)block
{
  operationCopy = operation;
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  if (__sTestOverridesAvailable[0] == 1)
  {
    if (operationCopy)
    {
      objc_msgSend_invokeDaemonOperationWillStartCallback_(self, v9, nameCopy);
    }

    else
    {
      objc_msgSend_invokeDaemonChildOperationWillStartCallback_(self, v9, nameCopy);
    }
    v13 = ;
    blockCopy[2](blockCopy, v13, 0);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v15 = v11;
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v20 = objc_msgSend_ckShortDescription(self, v18, v19);
      v21 = 138544130;
      v22 = v17;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = v20;
      v27 = 2112;
      v28 = nameCopy;
      _os_log_error_impl(&dword_1883EA000, v15, OS_LOG_TYPE_ERROR, "Operation <%{public}@: %p; %{public}@> unexpectedly asked about a daemon operation while not testing: %@", &v21, 0x2Au);
    }

    v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v12, @"CKInternalErrorDomain", 1000, @"Did not expect to be asked about a daemon operation while not testing");
    (blockCopy)[2](blockCopy, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleDaemonRequestWillSendWithClassName:(id)name testRequestProperties:(id)properties replyBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  propertiesCopy = properties;
  blockCopy = block;
  v11 = blockCopy;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_188613874;
    v23[3] = &unk_1E70BEF88;
    v24 = blockCopy;
    objc_msgSend_handleURLRequestWillSendCallback_testRequestProperties_proceedBlock_(self, v12, nameCopy, propertiesCopy, v23);
    v13 = v24;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = v14;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v22 = objc_msgSend_ckShortDescription(self, v20, v21);
      *buf = 138544130;
      v26 = v19;
      v27 = 2048;
      selfCopy = self;
      v29 = 2114;
      v30 = v22;
      v31 = 2112;
      v32 = nameCopy;
      _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "Operation <%{public}@: %p; %{public}@> unexpectedly asked about a daemon request while not testing: %@", buf, 0x2Au);
    }

    v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Did not expect to be asked about a daemon url request while not testing");
    (v11)[2](v11, 0, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleDaemonRequestWillReceiveWithClassName:(id)name testRequestProperties:(id)properties replyBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  propertiesCopy = properties;
  blockCopy = block;
  v11 = blockCopy;
  if (__sTestOverridesAvailable[0] == 1)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_188613AC4;
    v23[3] = &unk_1E70BEF88;
    v24 = blockCopy;
    objc_msgSend_handleURLRequestWillReceiveCallback_testRequestProperties_proceedBlock_(self, v12, nameCopy, propertiesCopy, v23);
    v13 = v24;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v17 = v14;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v22 = objc_msgSend_ckShortDescription(self, v20, v21);
      *buf = 138544130;
      v26 = v19;
      v27 = 2048;
      selfCopy = self;
      v29 = 2114;
      v30 = v22;
      v31 = 2112;
      v32 = nameCopy;
      _os_log_error_impl(&dword_1883EA000, v17, OS_LOG_TYPE_ERROR, "Operation <%{public}@: %p; %{public}@> unexpectedly asked about a daemon request while not testing: %@", buf, 0x2Au);
    }

    v13 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v15, @"CKInternalErrorDomain", 1000, @"Did not expect to be asked about a daemon url request while not testing");
    (v11)[2](v11, 0, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleOperationDidCompleteWithMetrics:(id)metrics error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  errorCopy = error;
  v10 = objc_msgSend_callbackQueue(self, v8, v9);
  dispatch_assert_queue_V2(v10);

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v14 = v11;
    v17 = objc_msgSend_operationID(self, v15, v16);
    v18 = 138543874;
    v19 = v17;
    v20 = 2112;
    v21 = metricsCopy;
    v22 = 2112;
    v23 = errorCopy;
    _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Received completion callback for operation %{public}@ with metrics %@ error %@", &v18, 0x20u);
  }

  objc_msgSend_setMetrics_(self, v12, metricsCopy);
  sub_188610EC8(self, errorCopy);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleRemoteProxyFailureWithError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v11 = v5;
    v14 = objc_msgSend_operationID(self, v12, v13);
    *buf = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Got a connection error for operation %{public}@: %@", buf, 0x16u);
  }

  v8 = objc_msgSend_callbackQueue(self, v6, v7);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188613DD0;
  v15[3] = &unk_1E70BEEC0;
  v15[4] = self;
  v16 = errorCopy;
  v9 = errorCopy;
  dispatch_async(v8, v15);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188613FB8;
  v9[3] = &unk_1E70BEEC0;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(v7, v9);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v481 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = objc_msgSend_callbackQueue(self, v6, v7);
  dispatch_assert_queue_V2(v8);

  if (objc_msgSend_isFinished(self, v9, v10))
  {
    v464 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12);
    v467 = objc_msgSend_operationID(self, v465, v466);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v464, v468, a2, self, @"CKOperation.m", 1665, @"Operation %@ was already marked as finished", v467);
  }

  objc_msgSend_setLongLivedOperationWasPersistedBlock_(self, v11, 0);
  objc_msgSend_setRequestCompletedBlock_(self, v13, 0);
  v16 = objc_msgSend_error(self, v14, v15);
  v18 = v16;
  if (errorCopy && !v16)
  {
    objc_msgSend_setError_(self, v17, errorCopy);
    v18 = errorCopy;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_op;
  if (os_log_type_enabled(ck_log_facility_op, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v19;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v26 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v25, 1, 0, 0);
    v29 = objc_msgSend_CKPropertiesStyleString(v26, v27, v28);
    v31 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v30, 0, 1, 0);
    v34 = objc_msgSend_CKPropertiesStyleString(v31, v32, v33);
    v35 = v34;
    *buf = 138544642;
    v36 = @" with error: ";
    v470 = v24;
    v37 = &stru_1EFA32970;
    v471 = 2048;
    if (!v18)
    {
      v36 = &stru_1EFA32970;
    }

    selfCopy = self;
    if (v18)
    {
      v37 = v18;
    }

    v473 = 2114;
    v474 = v29;
    v475 = 2112;
    v476 = v34;
    v477 = 2114;
    v478 = v36;
    v479 = 2114;
    v480 = v37;
    _os_log_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEFAULT, "Finished operation <%{public}@: %p; %{public}@, %@> %{public}@%{public}@", buf, 0x3Eu);
  }

  if (v18)
  {
    if (__sTestOverridesAvailable[0] != 1 || (objc_msgSend_unitTestOverrides(self, v20, v21), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v38, v39, @"doErrorRateMitigationInUnitTests"), v40 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend_BOOLValue(v40, v41, v42), v40, v38, v43))
    {
      objc_msgSend__performErrorRateMitigation(self, v20, v21);
    }
  }

  objc_msgSend_transitionToFinished(self, v20, v21);
  v46 = objc_msgSend_clientOperationCallbackProxy(self, v44, v45);
  objc_msgSend_invalidate(v46, v47, v48);

  if ((objc_msgSend_isOutstandingOperation(self, v49, v50) & 1) != 0 || (objc_msgSend_configuration(self, v51, v52), v53 = objc_claimAutoreleasedReturnValue(), isLongLived = objc_msgSend_isLongLived(v53, v54, v55), v53, isLongLived))
  {
    if (__sTestOverridesAvailable[0] == 1)
    {
      v57 = objc_msgSend_allowResumingCompletedLongLivedOperations(self, v51, v52);
    }

    else
    {
      v57 = 0;
    }

    v58 = objc_msgSend_deviceContext(self, v51, v52);
    v61 = objc_msgSend_deviceScopedStateManager(v58, v59, v60);
    v64 = objc_msgSend_operationID(self, v62, v63);
    objc_msgSend_registerLongLivedOperationWithIDAsCompleted_allowResumingCompletedLongLivedOperations_(v61, v65, v64, v57);
  }

  v66 = objc_msgSend_operationMetric(self, v51, v52);
  v69 = objc_msgSend_metrics(self, v67, v68);
  v72 = objc_msgSend_date(MEMORY[0x1E695DF00], v70, v71);
  objc_msgSend_setEndTime_(v66, v73, v72);

  v75 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v74, v18 != 0);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v76, v75, @"finishedWithError");

  v79 = objc_msgSend_CKClientSuitableError(v18, v77, v78);
  v80 = CKErrorChainStringFromError(v79);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v81, v80, @"finishedWithErrorChain");

  v82 = MEMORY[0x1E696AD98];
  isCancelled = objc_msgSend_isCancelled(self, v83, v84);
  v87 = objc_msgSend_numberWithBool_(v82, v86, isCancelled);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v88, v87, @"wasCancelled");

  v91 = objc_msgSend_qualityOfService(self, v89, v90);
  v93 = CKStringForQOS(v91, v92);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v94, v93, @"qualityOfService");

  v95 = MEMORY[0x1E696AD98];
  v98 = objc_msgSend_resolvedConfiguration(self, v96, v97);
  v101 = objc_msgSend_isLongLived(v98, v99, v100);
  v103 = objc_msgSend_numberWithBool_(v95, v102, v101);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v104, v103, @"isLongLived");

  if (self)
  {
    systemScheduler = self->_systemScheduler;
    if (systemScheduler > 3)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v66, v105, @"xpcActivity", @"systemScheduler");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v66, v105, off_1E70BEFA8[systemScheduler], @"systemScheduler");
    }
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v66, v105, @"unknown", @"systemScheduler");
  }

  v109 = MEMORY[0x1E696AD98];
  v110 = objc_msgSend_cloudKitMetrics(v69, v107, v108);
  v113 = objc_msgSend_bytesUploaded(v110, v111, v112);
  v115 = objc_msgSend_numberWithUnsignedInteger_(v109, v114, v113);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v116, v115, @"bytesUploaded");

  v117 = MEMORY[0x1E696AD98];
  v120 = objc_msgSend_cloudKitMetrics(v69, v118, v119);
  v123 = objc_msgSend_bytesDownloaded(v120, v121, v122);
  v125 = objc_msgSend_numberWithUnsignedInteger_(v117, v124, v123);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v126, v125, @"bytesDownloaded");

  v127 = MEMORY[0x1E696AD98];
  v130 = objc_msgSend_group(self, v128, v129);
  v133 = objc_msgSend_expectedSendSize(v130, v131, v132);
  v135 = objc_msgSend_numberWithInteger_(v127, v134, v133);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v136, v135, @"expectedSendSize");

  v137 = MEMORY[0x1E696AD98];
  v140 = objc_msgSend_group(self, v138, v139);
  v143 = objc_msgSend_expectedReceiveSize(v140, v141, v142);
  v145 = objc_msgSend_numberWithInteger_(v137, v144, v143);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v146, v145, @"expectedReceiveSize");

  v147 = MEMORY[0x1E696AD98];
  v150 = objc_msgSend_cloudKitMetrics(v69, v148, v149);
  v153 = objc_msgSend_networkServiceType(v150, v151, v152);
  v155 = objc_msgSend_numberWithUnsignedInteger_(v147, v154, v153);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v156, v155, @"networkServiceType");

  v157 = MEMORY[0x1E696AD98];
  v160 = objc_msgSend_MMCSMetrics(v69, v158, v159);
  v163 = objc_msgSend_bytesUploaded(v160, v161, v162);
  v165 = objc_msgSend_numberWithUnsignedInteger_(v157, v164, v163);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v166, v165, @"mmcsBytesUploaded");

  v167 = MEMORY[0x1E696AD98];
  v170 = objc_msgSend_MMCSMetrics(v69, v168, v169);
  v173 = objc_msgSend_bytesDownloaded(v170, v171, v172);
  v175 = objc_msgSend_numberWithUnsignedInteger_(v167, v174, v173);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v176, v175, @"mmcsBytesDownloaded");

  v179 = objc_msgSend_MMCSMetrics(v69, v177, v178);
  v182 = objc_msgSend_bytesFulfilledLocally(v179, v180, v181);

  v184 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v183, v182);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v185, v184, @"bytesFulfilledLocally");

  v186 = MEMORY[0x1E696AD98];
  v189 = objc_msgSend_MMCSMetrics(v69, v187, v188);
  v192 = objc_msgSend_bytesFulfilledByPeers(v189, v190, v191);
  v194 = objc_msgSend_numberWithUnsignedLongLong_(v186, v193, v192);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v195, v194, @"bytesFulfilledByPeers");

  v196 = MEMORY[0x1E696AD98];
  v199 = objc_msgSend_MMCSMetrics(v69, v197, v198);
  v202 = objc_msgSend_bytesResumed(v199, v200, v201);
  v204 = objc_msgSend_numberWithUnsignedLongLong_(v196, v203, v202 + v182);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v205, v204, @"bytesFulfilled");

  v206 = MEMORY[0x1E696AD98];
  v209 = objc_msgSend_cloudKitMetrics(v69, v207, v208);
  v212 = objc_msgSend_walrusEnabled(v209, v210, v211);
  v214 = objc_msgSend_numberWithBool_(v206, v213, v212);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v215, v214, @"adpEnabled");

  v216 = MEMORY[0x1E696AD98];
  v219 = objc_msgSend_cloudKitMetrics(v69, v217, v218);
  v222 = objc_msgSend_zoneishKeysRolled(v219, v220, v221);
  v224 = objc_msgSend_numberWithUnsignedInteger_(v216, v223, v222);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v225, v224, @"zoneishKeysRolled");

  v226 = MEMORY[0x1E696AD98];
  v229 = objc_msgSend_cloudKitMetrics(v69, v227, v228);
  v232 = objc_msgSend_perRecordKeysRolled(v229, v230, v231);
  v234 = objc_msgSend_numberWithUnsignedInteger_(v226, v233, v232);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v235, v234, @"perRecordKeysRolled");

  v236 = MEMORY[0x1E696AD98];
  v239 = objc_msgSend_cloudKitMetrics(v69, v237, v238);
  v242 = objc_msgSend_zoneKeysRolled(v239, v240, v241);
  v244 = objc_msgSend_numberWithUnsignedInteger_(v236, v243, v242);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v245, v244, @"zoneKeysRolled");

  v246 = MEMORY[0x1E696AD98];
  v249 = objc_msgSend_cloudKitMetrics(v69, v247, v248);
  v252 = objc_msgSend_shareKeysRolled(v249, v250, v251);
  v254 = objc_msgSend_numberWithUnsignedInteger_(v246, v253, v252);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v255, v254, @"shareKeysRolled");

  v256 = MEMORY[0x1E696AD98];
  v259 = objc_msgSend_cloudKitMetrics(v69, v257, v258);
  v262 = objc_msgSend_keyRollsSkippedBySizeCheck(v259, v260, v261);
  v264 = objc_msgSend_numberWithUnsignedInteger_(v256, v263, v262);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v265, v264, @"keyRollsSkippedBySizeCheck");

  v266 = MEMORY[0x1E696AD98];
  v269 = objc_msgSend_cloudKitMetrics(v69, v267, v268);
  v272 = objc_msgSend_identitiesRolledOnRecordSave(v269, v270, v271);
  v274 = objc_msgSend_numberWithUnsignedInteger_(v266, v273, v272);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v275, v274, @"identitiesRolledOnRecordSave");

  v276 = MEMORY[0x1E696AD98];
  v279 = objc_msgSend_cloudKitMetrics(v69, v277, v278);
  v282 = objc_msgSend_identitiesRolledOnZoneSave(v279, v280, v281);
  v284 = objc_msgSend_numberWithUnsignedInteger_(v276, v283, v282);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v285, v284, @"identitiesRolledOnZoneSave");

  v286 = MEMORY[0x1E696AD98];
  v289 = objc_msgSend_cloudKitMetrics(v69, v287, v288);
  v292 = objc_msgSend_failedIdentityRollAttempts(v289, v290, v291);
  v294 = objc_msgSend_numberWithUnsignedInteger_(v286, v293, v292);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v295, v294, @"failedIdentityRollAttempts");

  v298 = objc_msgSend_resolvedConfiguration(self, v296, v297);
  v301 = objc_msgSend_requestOriginator(v298, v299, v300);
  v303 = objc_msgSend_requestOriginatorStringRepresentation_(CKOperation, v302, v301);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v304, v303, @"requestOriginator");

  v307 = objc_msgSend_cloudKitMetrics(v69, v305, v306);
  v310 = objc_msgSend_zoneKeysRemoved(v307, v308, v309);

  if (v310)
  {
    v313 = MEMORY[0x1E696AD98];
    v314 = objc_msgSend_cloudKitMetrics(v69, v311, v312);
    v317 = objc_msgSend_zoneKeysRemoved(v314, v315, v316);
    v319 = objc_msgSend_numberWithUnsignedInteger_(v313, v318, v317);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v320, v319, @"zoneKeysRemoved");
  }

  v321 = objc_msgSend_cloudKitMetrics(v69, v311, v312);
  v324 = objc_msgSend_zoneishKeysRemoved(v321, v322, v323);

  if (v324)
  {
    v327 = MEMORY[0x1E696AD98];
    v328 = objc_msgSend_cloudKitMetrics(v69, v325, v326);
    v331 = objc_msgSend_zoneishKeysRemoved(v328, v329, v330);
    v333 = objc_msgSend_numberWithUnsignedInteger_(v327, v332, v331);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v334, v333, @"zoneishKeysRemoved");
  }

  v335 = objc_msgSend_cloudKitMetrics(v69, v325, v326);
  v338 = objc_msgSend_recordKeysRemoved(v335, v336, v337);

  if (v338)
  {
    v341 = MEMORY[0x1E696AD98];
    v342 = objc_msgSend_cloudKitMetrics(v69, v339, v340);
    v345 = objc_msgSend_recordKeysRemoved(v342, v343, v344);
    v347 = objc_msgSend_numberWithUnsignedInteger_(v341, v346, v345);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v348, v347, @"recordKeysRemoved");
  }

  v349 = objc_msgSend_cloudKitMetrics(v69, v339, v340);
  v352 = objc_msgSend_keysNotRemoved(v349, v350, v351);

  if (v352)
  {
    v355 = MEMORY[0x1E696AD98];
    v356 = objc_msgSend_cloudKitMetrics(v69, v353, v354);
    v359 = objc_msgSend_keysNotRemoved(v356, v357, v358);
    v361 = objc_msgSend_numberWithUnsignedInteger_(v355, v360, v359);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v362, v361, @"keysNotRemoved");
  }

  v363 = objc_msgSend_cloudKitMetrics(v69, v353, v354);
  v366 = objc_msgSend_keysNotRemoved(v363, v364, v365);

  if (v366)
  {
    v369 = MEMORY[0x1E696AD98];
    v370 = objc_msgSend_cloudKitMetrics(v69, v367, v368);
    v373 = objc_msgSend_keysNotRemoved(v370, v371, v372);
    v375 = objc_msgSend_numberWithUnsignedInteger_(v369, v374, v373);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v376, v375, @"keysNotRemoved");
  }

  v377 = objc_msgSend_cloudKitMetrics(v69, v367, v368);
  v380 = objc_msgSend_adopterCapabilityCheckValidationFailures(v377, v378, v379);

  if (v380)
  {
    v383 = MEMORY[0x1E696AD98];
    v384 = objc_msgSend_cloudKitMetrics(v69, v381, v382);
    v387 = objc_msgSend_adopterCapabilityCheckValidationFailures(v384, v385, v386);
    v389 = objc_msgSend_numberWithUnsignedInteger_(v383, v388, v387);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v390, v389, @"adopterCapabilityCheckValidationFailures");
  }

  v391 = objc_msgSend_cloudKitMetrics(v69, v381, v382);
  v394 = objc_msgSend_adopterCapabilityCheckValidationFailureTypes(v391, v392, v393);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v395, v394, @"adopterCapabilityCheckValidationFailureTypes");

  v398 = objc_msgSend_cloudKitMetrics(v69, v396, v397);
  v401 = objc_msgSend_adopterCapabilityCheckResult(v398, v399, v400);

  if (v401)
  {
    v404 = MEMORY[0x1E696AD98];
    v405 = objc_msgSend_cloudKitMetrics(v69, v402, v403);
    v408 = objc_msgSend_adopterCapabilityCheckResult(v405, v406, v407);
    v410 = objc_msgSend_numberWithUnsignedInteger_(v404, v409, v408);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v411, v410, @"adopterCapabilityCheckResult");
  }

  v412 = objc_msgSend_cloudKitMetrics(v69, v402, v403);
  v415 = objc_msgSend_requiredFeatureSetValidationFailures(v412, v413, v414);

  if (v415)
  {
    v418 = MEMORY[0x1E696AD98];
    v419 = objc_msgSend_cloudKitMetrics(v69, v416, v417);
    v422 = objc_msgSend_requiredFeatureSetValidationFailures(v419, v420, v421);
    v424 = objc_msgSend_numberWithUnsignedInteger_(v418, v423, v422);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v425, v424, @"requiredFeatureSetValidationFailures");
  }

  v426 = objc_msgSend_cloudKitMetrics(v69, v416, v417);
  v429 = objc_msgSend_requiredFeatureSetValidationFailureTypes(v426, v427, v428);
  objc_msgSend_setObject_forKeyedSubscript_(v66, v430, v429, @"requiredFeatureSetValidationFailureTypes");

  if (objc_msgSend_code(v18, v431, v432) == 7)
  {
    v435 = objc_msgSend_domain(v18, v433, v434);
    isEqualToString = objc_msgSend_isEqualToString_(v435, v436, @"CKErrorDomain");

    if (isEqualToString)
    {
      v439 = objc_msgSend_userInfo(v18, v433, v438);
      v441 = objc_msgSend_objectForKey_(v439, v440, *MEMORY[0x1E696AA08]);
      if (objc_msgSend_code(v441, v442, v443) == 2009)
      {
        v446 = objc_msgSend_domain(v441, v444, v445);
        v448 = objc_msgSend_isEqualToString_(v446, v447, @"CKInternalErrorDomain");

        if (v448)
        {
          v451 = objc_msgSend_userInfo(v441, v449, v450);
          v454 = objc_msgSend_objectForKey_(v451, v452, @"ThrottleLabel");
          if (v454)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v66, v453, v454, @"throttleLabel");
          }
        }
      }
    }
  }

  objc_msgSend_associateWithCompletedOperation_(v66, v433, self);
  v457 = objc_msgSend_configuration(self, v455, v456);
  v460 = objc_msgSend_container(v457, v458, v459);
  objc_msgSend_submitEventMetric_(v460, v461, v66);

  objc_msgSend_ckSignpostEndWithError_(self, v462, v18);
  v463 = *MEMORY[0x1E69E9840];
}

- (void)setQualityOfService:(int64_t)service
{
  v5 = objc_msgSend_configuration(self, a2, service);
  objc_msgSend_setQualityOfService_(v5, v6, service);

  objc_msgSend_qualityOfService(self, v7, v8);
}

- (void)setConfiguration:(CKOperationConfiguration *)configuration
{
  v14 = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!v14)
  {
    v14 = objc_opt_new();
  }

  v7 = objc_msgSend_unitTestOverrides(selfCopy->_configuration, v5, v6);
  v10 = objc_msgSend_copy(v14, v8, v9);
  v11 = selfCopy->_configuration;
  selfCopy->_configuration = v10;

  if (v7)
  {
    objc_msgSend_addUnitTestOverrides_(selfCopy->_configuration, v12, v7);
  }

  objc_msgSend_qualityOfService(selfCopy, v12, v13);

  objc_sync_exit(selfCopy);
}

- (void)setGroup:(CKOperationGroup *)group
{
  v8 = group;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_group, group);
  objc_msgSend_qualityOfService(selfCopy, v6, v7);
  objc_sync_exit(selfCopy);
}

- (void)setOperationID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_operationID != dCopy)
  {
    v7 = objc_msgSend_copy(dCopy, v5, v6);
    operationID = selfCopy->_operationID;
    selfCopy->_operationID = v7;
  }

  objc_sync_exit(selfCopy);
}

- (id)unitTestOverrides
{
  v4 = objc_msgSend_resolvedConfigurationIfNotNil(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_unitTestOverrides(v4, v5, v6);
  }

  else
  {
    v9 = objc_msgSend_group(self, v5, v6);
    v12 = objc_msgSend_defaultConfiguration(v9, v10, v11);
    v15 = objc_msgSend_unitTestOverrides(v12, v13, v14);
    v18 = objc_msgSend_mutableCopy(v15, v16, v17);
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    v8 = v20;

    v23 = objc_msgSend_configuration(self, v21, v22);
    v26 = objc_msgSend_unitTestOverrides(v23, v24, v25);
    objc_msgSend_addEntriesFromDictionary_(v8, v27, v26);
  }

  return v8;
}

- (void)addUnitTestOverrides:(id)overrides
{
  overridesCopy = overrides;
  v8 = objc_msgSend_configuration(self, v5, v6);
  objc_msgSend_addUnitTestOverrides_(v8, v7, overridesCopy);
}

- (BOOL)_BOOLForUnitTestOverride:(id)override defaultValue:(BOOL)value
{
  overrideCopy = override;
  v9 = objc_msgSend_unitTestOverrides(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, overrideCopy);

  if (v11)
  {
    value = objc_msgSend_BOOLValue(v11, v12, v13);
  }

  return value;
}

- (id)applicationBundleIdentifierForContainerAccess
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_configuration(self, v8, v9);
    v13 = objc_msgSend_container(v10, v11, v12);
    v7 = objc_msgSend_primaryIdentifier(v13, v14, v15);
  }

  return v7;
}

- (void)applyConvenienceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = objc_msgSend_configuration(configurationCopy, v5, v6);
  objc_msgSend_setConvenienceOperationConfiguration_(self, v8, v7);

  v11 = objc_msgSend_group(configurationCopy, v9, v10);
  objc_msgSend_setConvenienceOperationGroup_(self, v12, v11);

  v47 = objc_msgSend_convenienceCallbacks(configurationCopy, v13, v14);

  if (v47)
  {
    v17 = objc_msgSend_operationWillStartCallback(self, v15, v16);

    if (!v17)
    {
      v20 = objc_msgSend_operationWillStartCallback(v47, v18, v19);
      objc_msgSend_setOperationWillStartCallback_(self, v21, v20);
    }

    v22 = objc_msgSend_operationMeetsDiscretionaryCriteriaCallback(self, v18, v19);

    if (!v22)
    {
      v25 = objc_msgSend_operationMeetsDiscretionaryCriteriaCallback(v47, v23, v24);
      objc_msgSend_setOperationMeetsDiscretionaryCriteriaCallback_(self, v26, v25);
    }

    v27 = objc_msgSend_daemonOperationWillStartCallback(self, v23, v24);

    if (!v27)
    {
      v30 = objc_msgSend_daemonOperationWillStartCallback(v47, v28, v29);
      objc_msgSend_setDaemonOperationWillStartCallback_(self, v31, v30);
    }

    v32 = objc_msgSend_placeholderOperationFinishedCallback(self, v28, v29);

    if (!v32)
    {
      v35 = objc_msgSend_placeholderOperationFinishedCallback(v47, v33, v34);
      objc_msgSend_setPlaceholderOperationFinishedCallback_(self, v36, v35);
    }

    v37 = objc_msgSend_daemonChildOperationWillStartCallback(self, v33, v34);

    if (!v37)
    {
      v40 = objc_msgSend_daemonChildOperationWillStartCallback(v47, v38, v39);
      objc_msgSend_setDaemonChildOperationWillStartCallback_(self, v41, v40);
    }

    v42 = objc_msgSend_daemonOperationDidCancelCallback(self, v38, v39);

    if (!v42)
    {
      v45 = objc_msgSend_daemonOperationDidCancelCallback(v47, v43, v44);
      objc_msgSend_setDaemonOperationDidCancelCallback_(self, v46, v45);
    }
  }
}

+ (id)requestOriginatorStringRepresentation:(unint64_t)representation
{
  if (representation - 1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BEFC8[representation - 1];
  }
}

- (CKContainer)container
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_container(v3, v4, v5);

  return v6;
}

- (void)setContainer:(CKContainer *)container
{
  v4 = container;
  v8 = objc_msgSend_configuration(self, v5, v6);
  objc_msgSend_setContainer_(v8, v7, v4);
}

- (BOOL)allowsCellularAccess
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_allowsCellularAccess(v3, v4, v5);

  return v6;
}

- (BOOL)isLongLived
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  isLongLived = objc_msgSend_isLongLived(v3, v4, v5);

  return isLongLived;
}

- (NSTimeInterval)timeoutIntervalForRequest
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  objc_msgSend_timeoutIntervalForRequest(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)setTimeoutIntervalForRequest:(NSTimeInterval)timeoutIntervalForRequest
{
  v7 = objc_msgSend_configuration(self, a2, v3);
  objc_msgSend_setTimeoutIntervalForRequest_(v7, v5, v6, timeoutIntervalForRequest);
}

- (NSTimeInterval)timeoutIntervalForResource
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  objc_msgSend_timeoutIntervalForResource(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (void)setTimeoutIntervalForResource:(NSTimeInterval)timeoutIntervalForResource
{
  v7 = objc_msgSend_configuration(self, a2, v3);
  objc_msgSend_setTimeoutIntervalForResource_(v7, v5, v6, timeoutIntervalForResource);
}

- (BOOL)preferAnonymousRequests
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_preferAnonymousRequests(v3, v4, v5);

  return v6;
}

- (NSDictionary)additionalRequestHTTPHeaders
{
  v3 = objc_msgSend_configuration(self, a2, v2);
  v6 = objc_msgSend_additionalRequestHTTPHeaders(v3, v4, v5);

  return v6;
}

- (void)setAdditionalRequestHTTPHeaders:(id)headers
{
  headersCopy = headers;
  v8 = objc_msgSend_configuration(self, v5, v6);
  objc_msgSend_setAdditionalRequestHTTPHeaders_(v8, v7, headersCopy);
}

@end
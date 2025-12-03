@interface CKOperationInfo
- (BOOL)allowsCellularAccess;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)automaticallyRetryNetworkFailures;
- (BOOL)isCloudKitSupportOperation;
- (BOOL)isLongLived;
- (BOOL)preferAnonymousRequests;
- (CKDOperation)parentOperation;
- (CKOperationInfo)init;
- (CKOperationInfo)initWithCoder:(id)coder;
- (NSDictionary)additionalRequestHTTPHeaders;
- (NSNumber)cacheDeleteAvailableSpaceClass;
- (NSNumber)privacyProxyFailClosedOverride;
- (NSString)applicationBundleIdentifierOverrideForContainerAccess;
- (NSString)applicationBundleIdentifierOverrideForNetworkAttribution;
- (NSString)authPromptReason;
- (NSString)sourceApplicationSecondaryIdentifier;
- (double)timeoutIntervalForRequest;
- (double)timeoutIntervalForResource;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)qualityOfService;
- (unint64_t)discretionaryNetworkBehavior;
- (void)encodeWithCoder:(id)coder;
- (void)takeValuesFrom:(id)from;
- (void)takeValuesFromParentOperationInfo:(id)info;
@end

@implementation CKOperationInfo

- (NSString)applicationBundleIdentifierOverrideForContainerAccess
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v3, v4, v5);

  return v6;
}

- (NSString)applicationBundleIdentifierOverrideForNetworkAttribution
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v3, v4, v5);

  return v6;
}

- (NSString)sourceApplicationSecondaryIdentifier
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend__sourceApplicationSecondaryIdentifier(v3, v4, v5);

  return v6;
}

- (BOOL)isLongLived
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  isLongLived = objc_msgSend_isLongLived(v3, v4, v5);

  return isLongLived;
}

- (CKDOperation)parentOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);

  return WeakRetained;
}

- (BOOL)isCloudKitSupportOperation
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(v3, v4, v5);

  return isCloudKitSupportOperation;
}

- (BOOL)automaticallyRetryNetworkFailures
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_automaticallyRetryNetworkFailures(v3, v4, v5);

  return v6;
}

- (BOOL)allowsCellularAccess
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_allowsCellularAccess(v3, v4, v5);

  return v6;
}

- (BOOL)allowsExpensiveNetworkAccess
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_allowsExpensiveNetworkAccess(v3, v4, v5);

  return v6;
}

- (int64_t)qualityOfService
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_qualityOfService(v3, v4, v5);

  return v6;
}

- (unint64_t)discretionaryNetworkBehavior
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_discretionaryNetworkBehavior(v3, v4, v5);

  return v6;
}

- (CKOperationInfo)init
{
  v6.receiver = self;
  v6.super_class = CKOperationInfo;
  v2 = [(CKOperationInfo *)&v6 init];
  if (v2)
  {
    v3 = CKShortRandomID();
    operationID = v2->_operationID;
    v2->_operationID = v3;

    if ((byte_1EA90C538 & 1) == 0)
    {
      v2->_clientHasValidatedEntitlements = 1;
    }
  }

  return v2;
}

- (NSNumber)privacyProxyFailClosedOverride
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_privacyProxyFailClosedOverride(v3, v4, v5);

  return v6;
}

- (NSDictionary)additionalRequestHTTPHeaders
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_additionalRequestHTTPHeaders(v3, v4, v5);

  return v6;
}

- (BOOL)preferAnonymousRequests
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_preferAnonymousRequests(v3, v4, v5);

  return v6;
}

- (double)timeoutIntervalForRequest
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  objc_msgSend_timeoutIntervalForRequest(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)timeoutIntervalForResource
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  objc_msgSend_timeoutIntervalForResource(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_operationID(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v11 = *(v4 + 3);
  *(v4 + 3) = v10;

  *(v4 + 11) = objc_msgSend_clientQueuePriority(self, v12, v13);
  *(v4 + 12) = objc_msgSend_duetPreClearedMode(self, v14, v15);
  *(v4 + 13) = objc_msgSend_discretionaryWhenBackgroundedState(self, v16, v17);
  *(v4 + 14) = objc_msgSend_systemScheduler(self, v18, v19);
  v22 = objc_msgSend_backgroundTaskIdentifier(self, v20, v21);
  v25 = objc_msgSend_copy(v22, v23, v24);
  v26 = *(v4 + 15);
  *(v4 + 15) = v25;

  v29 = objc_msgSend_ckOperationClassName(self, v27, v28);
  v32 = objc_msgSend_copy(v29, v30, v31);
  v33 = *(v4 + 4);
  *(v4 + 4) = v32;

  v36 = objc_msgSend_callbackProxyEndpoint(self, v34, v35);
  v39 = objc_msgSend_copy(v36, v37, v38);
  v40 = *(v4 + 5);
  *(v4 + 5) = v39;

  *(v4 + 8) = objc_msgSend_isOutstandingOperation(self, v41, v42);
  if (self)
  {
    name = self->_name;
  }

  else
  {
    name = 0;
  }

  v44 = name;
  v47 = objc_msgSend_copy(v44, v45, v46);
  v48 = *(v4 + 16);
  *(v4 + 16) = v47;

  v51 = objc_msgSend_MMCSRequestOptions(self, v49, v50);
  v52 = *(v4 + 6);
  *(v4 + 6) = v51;

  v55 = objc_msgSend_resolvedConfiguration(self, v53, v54);
  v58 = objc_msgSend_copy(v55, v56, v57);
  v59 = *(v4 + 8);
  *(v4 + 8) = v58;

  v62 = objc_msgSend_group(self, v60, v61);
  v63 = *(v4 + 7);
  *(v4 + 7) = v62;

  *(v4 + 9) = objc_msgSend_clientHasValidatedEntitlements(self, v64, v65);
  v68 = objc_msgSend_parentOperation(self, v66, v67);
  objc_storeWeak(v4 + 9, v68);

  *(v4 + 11) = objc_msgSend_wantsRequestStatistics(self, v69, v70);
  *(v4 + 10) = objc_msgSend_usesAssetDownloadStagingManager(self, v71, v72);
  *(v4 + 12) = objc_msgSend_wantsDaemonOperationCallbacks(self, v73, v74);
  *(v4 + 13) = objc_msgSend_wantsDaemonRequestCallbacks(self, v75, v76);
  *(v4 + 10) = objc_msgSend_requestOriginator(self, v77, v78);
  return v4;
}

- (NSNumber)cacheDeleteAvailableSpaceClass
{
  v3 = objc_msgSend_resolvedConfiguration(self, a2, v2);
  v6 = objc_msgSend_cacheDeleteAvailableSpaceClass(v3, v4, v5);

  return v6;
}

- (NSString)authPromptReason
{
  v3 = objc_msgSend_group(self, a2, v2);
  v6 = objc_msgSend_authPromptReason(v3, v4, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_operationID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"OperationID");

  v11 = objc_msgSend_clientQueuePriority(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"QueuePriority");
  v15 = objc_msgSend_duetPreClearedMode(self, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v16, v15, @"DuetPreClearedMode");
  v19 = objc_msgSend_discretionaryWhenBackgroundedState(self, v17, v18);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v20, v19, @"DiscretionaryWhenBackgroundedState");
  v23 = objc_msgSend_systemScheduler(self, v21, v22);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v24, v23, @"SystemScheduler");
  v27 = objc_msgSend_backgroundTaskIdentifier(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"XPCActivityIdentifier");

  v31 = objc_msgSend_ckOperationClassName(self, v29, v30);
  v32 = NSStringFromSelector(sel_ckOperationClassName);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, v31, v32);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = objc_msgSend_callbackProxyEndpoint(self, v34, v35);
    v37 = NSStringFromSelector(sel_callbackProxyEndpoint);
    objc_msgSend_encodeObject_forKey_(coderCopy, v38, v36, v37);
  }

  isOutstandingOperation = objc_msgSend_isOutstandingOperation(self, v34, v35);
  objc_msgSend_encodeBool_forKey_(coderCopy, v40, isOutstandingOperation, @"IsOutstanding");
  if (self)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v41, self->_name, @"OperationName");
  }

  else
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v41, 0, @"OperationName");
  }

  v44 = objc_msgSend_MMCSRequestOptions(self, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v45, v44, @"MMCSRequestOptions");

  v48 = objc_msgSend_resolvedConfiguration(self, v46, v47);
  objc_msgSend_encodeObject_forKey_(coderCopy, v49, v48, @"ResolvedConfiguration");

  v52 = objc_msgSend_group(self, v50, v51);
  objc_msgSend_encodeObject_forKey_(coderCopy, v53, v52, @"Group");

  HasValidatedEntitlements = objc_msgSend_clientHasValidatedEntitlements(self, v54, v55);
  v57 = NSStringFromSelector(sel_clientHasValidatedEntitlements);
  objc_msgSend_encodeBool_forKey_(coderCopy, v58, HasValidatedEntitlements, v57);

  v61 = objc_msgSend_requestOriginator(self, v59, v60);
  v62 = NSStringFromSelector(sel_requestOriginator);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v63, v61, v62);

  v66 = objc_msgSend_wantsRequestStatistics(self, v64, v65);
  objc_msgSend_encodeBool_forKey_(coderCopy, v67, v66, @"WantsRequestStatistics");
  v70 = objc_msgSend_usesAssetDownloadStagingManager(self, v68, v69);
  objc_msgSend_encodeBool_forKey_(coderCopy, v71, v70, @"UsesAssetDownloadStagingManager");
  v74 = objc_msgSend_wantsDaemonOperationCallbacks(self, v72, v73);
  v75 = NSStringFromSelector(sel_wantsDaemonOperationCallbacks);
  objc_msgSend_encodeBool_forKey_(coderCopy, v76, v74, v75);

  v79 = objc_msgSend_wantsDaemonRequestCallbacks(self, v77, v78);
  v80 = NSStringFromSelector(sel_wantsDaemonRequestCallbacks);
  objc_msgSend_encodeBool_forKey_(coderCopy, v81, v79, v80);

  objc_autoreleasePoolPop(v4);
}

- (CKOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v57.receiver = self;
  v57.super_class = CKOperationInfo;
  v5 = [(CKOperationInfo *)&v57 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"OperationID");
    operationID = v5->_operationID;
    v5->_operationID = v9;

    v5->_clientQueuePriority = objc_msgSend_decodeInt64ForKey_(coderCopy, v11, @"QueuePriority");
    v5->_duetPreClearedMode = objc_msgSend_decodeInt64ForKey_(coderCopy, v12, @"DuetPreClearedMode");
    v5->_discretionaryWhenBackgroundedState = objc_msgSend_decodeInt64ForKey_(coderCopy, v13, @"DiscretionaryWhenBackgroundedState");
    v5->_systemScheduler = objc_msgSend_decodeInt64ForKey_(coderCopy, v14, @"SystemScheduler");
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"XPCActivityIdentifier");
    backgroundTaskIdentifier = v5->_backgroundTaskIdentifier;
    v5->_backgroundTaskIdentifier = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_ckOperationClassName);
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v19, v20);
    ckOperationClassName = v5->_ckOperationClassName;
    v5->_ckOperationClassName = v22;

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_callbackProxyEndpoint);
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v24, v25);
    callbackProxyEndpoint = v5->_callbackProxyEndpoint;
    v5->_callbackProxyEndpoint = v27;

    v5->_isOutstandingOperation = objc_msgSend_decodeBoolForKey_(coderCopy, v29, @"IsOutstanding");
    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"OperationName");
    name = v5->_name;
    v5->_name = v32;

    v34 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"MMCSRequestOptions");
    MMCSRequestOptions = v5->_MMCSRequestOptions;
    v5->_MMCSRequestOptions = v36;

    v38 = objc_opt_class();
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v39, v38, @"ResolvedConfiguration");
    resolvedConfiguration = v5->_resolvedConfiguration;
    v5->_resolvedConfiguration = v40;

    v42 = objc_opt_class();
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v43, v42, @"Group");
    group = v5->_group;
    v5->_group = v44;

    v46 = NSStringFromSelector(sel_clientHasValidatedEntitlements);
    v5->_clientHasValidatedEntitlements = objc_msgSend_decodeBoolForKey_(coderCopy, v47, v46);

    v48 = NSStringFromSelector(sel_requestOriginator);
    v5->_requestOriginator = objc_msgSend_decodeIntegerForKey_(coderCopy, v49, v48);

    v5->_wantsRequestStatistics = objc_msgSend_decodeBoolForKey_(coderCopy, v50, @"WantsRequestStatistics");
    v5->_usesAssetDownloadStagingManager = objc_msgSend_decodeBoolForKey_(coderCopy, v51, @"UsesAssetDownloadStagingManager");
    v52 = NSStringFromSelector(sel_wantsDaemonOperationCallbacks);
    v5->_wantsDaemonOperationCallbacks = objc_msgSend_decodeBoolForKey_(coderCopy, v53, v52);

    v54 = NSStringFromSelector(sel_wantsDaemonRequestCallbacks);
    v5->_wantsDaemonRequestCallbacks = objc_msgSend_decodeBoolForKey_(coderCopy, v55, v54);

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)takeValuesFrom:(id)from
{
  fromCopy = from;
  v6 = objc_msgSend_operationID(fromCopy, v4, v5);
  objc_msgSend_setOperationID_(self, v7, v6);

  v10 = objc_msgSend_ckOperationClassName(fromCopy, v8, v9);
  objc_msgSend_setCkOperationClassName_(self, v11, v10);

  v14 = objc_msgSend_callbackProxyEndpoint(fromCopy, v12, v13);
  objc_msgSend_setCallbackProxyEndpoint_(self, v15, v14);

  isOutstandingOperation = objc_msgSend_isOutstandingOperation(fromCopy, v16, v17);
  if (self)
  {
    self->_isOutstandingOperation = isOutstandingOperation;
  }

  if (fromCopy)
  {
    v20 = fromCopy[16];
    if (self)
    {
LABEL_5:
      objc_setProperty_nonatomic_copy(self, v19, v20, 128);
      self->_wantsRequestStatistics = objc_msgSend_wantsRequestStatistics(fromCopy, v21, v22);
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (self)
    {
      goto LABEL_5;
    }
  }

  objc_msgSend_wantsRequestStatistics(fromCopy, v19, v20);
LABEL_6:
  v25 = objc_msgSend_requestOriginator(fromCopy, v23, v24);
  objc_msgSend_setRequestOriginator_(self, v26, v25);
  objc_msgSend_takeValuesFromParentOperationInfo_(self, v27, fromCopy);
}

- (void)takeValuesFromParentOperationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_clientQueuePriority(infoCopy, v5, v6);
  objc_msgSend_setClientQueuePriority_(self, v8, v7);
  v11 = objc_msgSend_duetPreClearedMode(infoCopy, v9, v10);
  objc_msgSend_setDuetPreClearedMode_(self, v12, v11);
  v15 = objc_msgSend_discretionaryWhenBackgroundedState(infoCopy, v13, v14);
  objc_msgSend_setDiscretionaryWhenBackgroundedState_(self, v16, v15);
  v19 = objc_msgSend_systemScheduler(infoCopy, v17, v18);
  objc_msgSend_setSystemScheduler_(self, v20, v19);
  v23 = objc_msgSend_backgroundTaskIdentifier(infoCopy, v21, v22);
  objc_msgSend_setBackgroundTaskIdentifier_(self, v24, v23);

  v27 = objc_msgSend_MMCSRequestOptions(infoCopy, v25, v26);
  objc_msgSend_setMMCSRequestOptions_(self, v28, v27);

  v31 = objc_msgSend_resolvedConfiguration(infoCopy, v29, v30);
  objc_msgSend_setResolvedConfiguration_(self, v32, v31);

  v35 = objc_msgSend_group(infoCopy, v33, v34);
  objc_msgSend_setGroup_(self, v36, v35);

  HasValidatedEntitlements = objc_msgSend_clientHasValidatedEntitlements(infoCopy, v37, v38);
  objc_msgSend_setClientHasValidatedEntitlements_(self, v40, HasValidatedEntitlements);
  v43 = objc_msgSend_usesAssetDownloadStagingManager(infoCopy, v41, v42);
  objc_msgSend_setUsesAssetDownloadStagingManager_(self, v44, v43);
  v47 = objc_msgSend_wantsDaemonOperationCallbacks(infoCopy, v45, v46);
  objc_msgSend_setWantsDaemonOperationCallbacks_(self, v48, v47);
  v51 = objc_msgSend_wantsDaemonRequestCallbacks(infoCopy, v49, v50);

  MEMORY[0x1EEE66B58](self, sel_setWantsDaemonRequestCallbacks_, v51);
}

@end
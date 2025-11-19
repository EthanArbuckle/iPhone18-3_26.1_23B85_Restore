@interface CKOperationConfiguration
+ (CKOperationConfiguration)defaultConvenienceOperationConfiguration;
+ (void)initialize;
- (BGSystemTask)systemTask;
- (BOOL)allowsCellularAccess;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)automaticallyRetryNetworkFailures;
- (BOOL)discretionarySchedulingForEntireOperation;
- (BOOL)hasXPCActivity;
- (BOOL)isCloudKitSupportOperation;
- (BOOL)isLongLived;
- (BOOL)preferAnonymousRequests;
- (CKAssetDownloadStagingManager)assetDownloadStagingManager;
- (CKBackgroundTask)backgroundTask;
- (CKContainer)container;
- (CKOperationConfiguration)init;
- (CKOperationConfiguration)initWithCoder:(id)a3;
- (CKSchedulerActivity)schedulerActivity;
- (NSDictionary)additionalRequestHTTPHeaders;
- (NSDictionary)unitTestOverrides;
- (NSNumber)cacheDeleteAvailableSpaceClass;
- (NSNumber)privacyProxyFailClosedOverride;
- (NSQualityOfService)qualityOfService;
- (NSString)_sourceApplicationSecondaryIdentifier;
- (NSString)applicationBundleIdentifierOverrideForContainerAccess;
- (NSString)applicationBundleIdentifierOverrideForNetworkAttribution;
- (NSString)sourceApplicationBundleIdentifier;
- (NSTimeInterval)timeoutIntervalForRequest;
- (NSTimeInterval)timeoutIntervalForResource;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resolveAgainstGenericConfiguration:(id)a3;
- (id)testErrorInducerBoxes;
- (id)testResultOverlayBoxes;
- (unint64_t)discretionaryNetworkBehavior;
- (unint64_t)requestOriginator;
- (void)_commonInit;
- (void)addTestErrorInducerBox:(id)a3;
- (void)addTestResultOverlayBox:(id)a3;
- (void)addUnitTestOverrides:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeTestErrorInducerBoxWithID:(id)a3;
- (void)removeTestResultOverlayBoxWithID:(id)a3;
- (void)removeUnitTestOverride:(id)a3;
- (void)setAdditionalRequestHTTPHeaders:(id)a3;
- (void)setAllowsCellularAccess:(BOOL)allowsCellularAccess;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3;
- (void)setApplicationBundleIdentifierOverride:(id)a3;
- (void)setApplicationBundleIdentifierOverrideForContainerAccess:(id)a3;
- (void)setApplicationBundleIdentifierOverrideForNetworkAttribution:(id)a3;
- (void)setAssetDownloadStagingManager:(id)a3;
- (void)setAutomaticallyRetryNetworkFailures:(BOOL)a3;
- (void)setBackgroundTask:(id)a3;
- (void)setCacheDeleteAvailableSpaceClass:(id)a3;
- (void)setContainer:(CKContainer *)container;
- (void)setDiscretionaryNetworkBehavior:(unint64_t)a3;
- (void)setDiscretionarySchedulingForEntireOperation:(BOOL)a3;
- (void)setIsCloudKitSupportOperation:(BOOL)a3;
- (void)setLongLived:(BOOL)longLived;
- (void)setPreferAnonymousRequests:(BOOL)a3;
- (void)setPrivacyProxyFailClosedOverride:(id)a3;
- (void)setQualityOfService:(NSQualityOfService)qualityOfService;
- (void)setRequestOriginator:(unint64_t)a3;
- (void)setSchedulerActivity:(id)a3;
- (void)setSourceApplicationBundleIdentifier:(id)a3;
- (void)setSystemTask:(id)a3;
- (void)setTimeoutIntervalForRequest:(NSTimeInterval)timeoutIntervalForRequest;
- (void)setTimeoutIntervalForResource:(NSTimeInterval)timeoutIntervalForResource;
- (void)setXPCActivity:(id)a3;
- (void)set_sourceApplicationSecondaryIdentifier:(id)a3;
@end

@implementation CKOperationConfiguration

- (BOOL)hasXPCActivity
{
  v3 = objc_msgSend_backgroundTask(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CKBackgroundTask)backgroundTask
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_backgroundTask;
  objc_sync_exit(v2);

  return v3;
}

- (NSDictionary)unitTestOverrides
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_unitTestOverrides;
  objc_sync_exit(v2);

  return v3;
}

- (NSQualityOfService)qualityOfService
{
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_hasQualityOfService(v2, v3, v4))
  {
    qualityOfService = v2->_qualityOfService;
  }

  else if (v2 && v2->_hasContainer && (objc_msgSend_container(v2, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), (v11 = v8) != 0))
  {
    v12 = objc_msgSend_options(v8, v9, v10);
    qualityOfService = objc_msgSend_qualityOfService(v12, v13, v14);
  }

  else
  {
    qualityOfService = NSQualityOfServiceDefault;
  }

  objc_sync_exit(v2);

  return qualityOfService;
}

- (CKOperationConfiguration)init
{
  v7.receiver = self;
  v7.super_class = CKOperationConfiguration;
  v2 = [(CKOperationConfiguration *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__commonInit(v2, v3, v4);
  }

  return v5;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  unitTestOverrides = self->_unitTestOverrides;
  self->_unitTestOverrides = v3;

  v5 = objc_opt_new();
  mTestErrorInducerBoxes = self->_mTestErrorInducerBoxes;
  self->_mTestErrorInducerBoxes = v5;

  v7 = objc_opt_new();
  mTestResultOverlayBoxes = self->_mTestResultOverlayBoxes;
  self->_mTestResultOverlayBoxes = v7;

  self->_requestOriginator = 4;
}

- (unint64_t)requestOriginator
{
  v2 = self;
  objc_sync_enter(v2);
  requestOriginator = v2->_requestOriginator;
  objc_sync_exit(v2);

  return requestOriginator;
}

- (NSString)applicationBundleIdentifierOverrideForContainerAccess
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasApplicationBundleIdentifierOverrideForContainerAccess)
  {
    v3 = v2->_applicationBundleIdentifierOverrideForContainerAccess;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (NSString)applicationBundleIdentifierOverrideForNetworkAttribution
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
  {
    v3 = v2->_applicationBundleIdentifierOverrideForNetworkAttribution;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (NSString)_sourceApplicationSecondaryIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasSourceApplicationSecondaryIdentifier)
  {
    v3 = v2->_sourceApplicationSecondaryIdentifier;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)allowsExpensiveNetworkAccess
{
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(v2, v3, v4))
  {
    allowsExpensiveNetworkAccess = v2->_allowsExpensiveNetworkAccess;
  }

  else
  {
    allowsExpensiveNetworkAccess = objc_msgSend_allowsCellularAccess(v2, v5, v6);
  }

  objc_sync_exit(v2);

  return allowsExpensiveNetworkAccess & 1;
}

- (BOOL)allowsCellularAccess
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = !v2 || !v2->_hasAllowsCellularAccess || v2->_allowsCellularAccess;
  objc_sync_exit(v2);

  return v3 & 1;
}

- (BOOL)isLongLived
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2 && v2->_hasLongLived && v2->_longLived;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)automaticallyRetryNetworkFailures
{
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v2, v3, v4))
  {
    automaticallyRetryNetworkFailures = v2->_automaticallyRetryNetworkFailures;
  }

  else
  {
    v9 = objc_msgSend_qualityOfService(v2, v5, v6);
    automaticallyRetryNetworkFailures = 0;
    if (v9 != 33 && v9 != 25)
    {
      if (v9 == -1)
      {
        automaticallyRetryNetworkFailures = CKCurrentProcessLinkCheck92e3e8f8ec1a906754afb22d87eb36301b4f6760() ^ 1;
      }

      else
      {
        automaticallyRetryNetworkFailures = 1;
      }
    }
  }

  objc_sync_exit(v2);

  return automaticallyRetryNetworkFailures & 1;
}

- (unint64_t)discretionaryNetworkBehavior
{
  v2 = self;
  objc_sync_enter(v2);
  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v2, v3, v4))
  {
    discretionaryNetworkBehavior = v2->_discretionaryNetworkBehavior;
  }

  else
  {
    v8 = objc_msgSend_qualityOfService(v2, v5, v6);
    v9 = v8 != 33;
    if (v8 == 25)
    {
      v9 = 0;
    }

    if (v8 == 9)
    {
      discretionaryNetworkBehavior = 2;
    }

    else
    {
      discretionaryNetworkBehavior = v9;
    }
  }

  objc_sync_exit(v2);

  return discretionaryNetworkBehavior;
}

- (BOOL)isCloudKitSupportOperation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2 && v2->_hasIsCloudKitSupportOperation && v2->_isCloudKitSupportOperation;
  objc_sync_exit(v2);

  return v3;
}

- (CKContainer)container
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasContainer)
  {
    v5 = v2->_container;
  }

  else
  {
    v5 = objc_msgSend_defaultContainer(CKContainer, v3, v4);
  }

  v6 = v5;
  objc_sync_exit(v2);

  return v6;
}

- (NSTimeInterval)timeoutIntervalForRequest
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasTimeoutIntervalForRequest)
  {
    timeoutIntervalForRequest = v2->_timeoutIntervalForRequest;
  }

  else
  {
    timeoutIntervalForRequest = 60.0;
  }

  objc_sync_exit(v2);

  return timeoutIntervalForRequest;
}

- (NSTimeInterval)timeoutIntervalForResource
{
  v2 = self;
  objc_sync_enter(v2);
  timeoutIntervalForResource = -1.0;
  if (v2 && v2->_hasTimeoutIntervalForResource)
  {
    timeoutIntervalForResource = v2->_timeoutIntervalForResource;
  }

  objc_sync_exit(v2);

  return timeoutIntervalForResource;
}

- (BOOL)preferAnonymousRequests
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2 && v2->_hasPreferAnonymousRequests && v2->_preferAnonymousRequests;
  objc_sync_exit(v2);

  return v3;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)testErrorInducerBoxes
{
  v3 = self->_mTestErrorInducerBoxes;
  objc_sync_enter(v3);
  v6 = objc_msgSend_copy(self->_mTestErrorInducerBoxes, v4, v5);
  objc_sync_exit(v3);

  return v6;
}

- (id)testResultOverlayBoxes
{
  v3 = self->_mTestResultOverlayBoxes;
  objc_sync_enter(v3);
  v7 = objc_msgSend_CKContains_(self->_mTestResultOverlayBoxes, v4, &unk_1EFA2F5A8);
  mTestResultOverlayBoxes = self->_mTestResultOverlayBoxes;
  if (v7)
  {
    v9 = objc_msgSend_CKFilter_(mTestResultOverlayBoxes, v5, &unk_1EFA2F5C8);
    objc_msgSend_setArray_(self->_mTestResultOverlayBoxes, v10, v9);
  }

  else
  {
    v9 = objc_msgSend_copy(mTestResultOverlayBoxes, v5, v6);
  }

  objc_sync_exit(v3);

  return v9;
}

- (CKAssetDownloadStagingManager)assetDownloadStagingManager
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasAssetDownloadStagingManager)
  {
    v3 = v2->_assetDownloadStagingManager;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)discretionarySchedulingForEntireOperation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = !v2 || !v2->_hasDiscretionarySchedulingForEntireOperation || v2->_discretionarySchedulingForEntireOperation;
  objc_sync_exit(v2);

  return v3 & 1;
}

- (NSNumber)privacyProxyFailClosedOverride
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasPrivacyProxyFailClosedOverride)
  {
    v3 = v2->_privacyProxyFailClosedOverride;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (NSDictionary)additionalRequestHTTPHeaders
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasAdditionalRequestHTTPHeaders)
  {
    v3 = v2->_additionalRequestHTTPHeaders;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (NSString)sourceApplicationBundleIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasSourceApplicationBundleIdentifier)
  {
    v3 = v2->_sourceApplicationBundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BGSystemTask)systemTask
{
  v2 = self;
  objc_sync_enter(v2);
  backgroundTask = v2->_backgroundTask;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_systemTask(v2->_backgroundTask, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

+ (CKOperationConfiguration)defaultConvenienceOperationConfiguration
{
  v2 = objc_opt_new();
  objc_msgSend_setDiscretionaryNetworkBehavior_(v2, v3, 0);
  objc_msgSend_setAutomaticallyRetryNetworkFailures_(v2, v4, 0);
  objc_msgSend_setAllowsCellularAccess_(v2, v5, 1);
  v6 = CKCurrentThreadQualityOfService();
  objc_msgSend_setQualityOfService_(v2, v7, v6);

  return v2;
}

- (id)resolveAgainstGenericConfiguration:(id)a3
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = v7;
  if (v4)
  {
    if ((v4[16] & 1) != 0 && (!v7 || (*(v7 + 16) & 1) == 0))
    {
      v11 = objc_msgSend_container(v4, v8, v9);
      objc_msgSend_setContainer_(v10, v12, v11);
    }

    if (objc_msgSend_hasQualityOfService(v4, v8, v9) && (objc_msgSend_hasQualityOfService(v10, v13, v14) & 1) == 0)
    {
      v15 = objc_msgSend_qualityOfService(v4, v13, v14);
      objc_msgSend_setQualityOfService_(v10, v16, v15);
    }

    if ((v4[17] & 1) != 0 && (!v10 || (*(v10 + 17) & 1) == 0))
    {
      v17 = objc_msgSend_allowsCellularAccess(v4, v13, v14);
      objc_msgSend_setAllowsCellularAccess_(v10, v18, v17);
    }

    if (objc_msgSend_hasAllowsExpensiveNetworkAccess(v4, v13, v14) && (objc_msgSend_hasAllowsExpensiveNetworkAccess(v10, v19, v20) & 1) == 0)
    {
      v21 = objc_msgSend_allowsExpensiveNetworkAccess(v4, v19, v20);
      objc_msgSend_setAllowsExpensiveNetworkAccess_(v10, v22, v21);
    }

    if ((v4[19] & 1) != 0 && (!v10 || (*(v10 + 19) & 1) == 0))
    {
      isLongLived = objc_msgSend_isLongLived(v4, v19, v20);
      objc_msgSend_setLongLived_(v10, v24, isLongLived);
    }

    if ((v4[20] & 1) != 0 && (!v10 || (*(v10 + 20) & 1) == 0))
    {
      objc_msgSend_timeoutIntervalForRequest(v4, v19, v20);
      objc_msgSend_setTimeoutIntervalForRequest_(v10, v25, v26);
    }

    if ((v4[21] & 1) != 0 && (!v10 || (*(v10 + 21) & 1) == 0))
    {
      objc_msgSend_timeoutIntervalForResource(v4, v19, v20);
      objc_msgSend_setTimeoutIntervalForResource_(v10, v27, v28);
    }

    if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v4, v19, v20) && (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v10, v29, v30) & 1) == 0)
    {
      v31 = objc_msgSend_automaticallyRetryNetworkFailures(v4, v29, v30);
      objc_msgSend_setAutomaticallyRetryNetworkFailures_(v10, v32, v31);
    }

    if (objc_msgSend_hasDiscretionaryNetworkBehavior(v4, v29, v30) && (objc_msgSend_hasDiscretionaryNetworkBehavior(v10, v33, v34) & 1) == 0)
    {
      v35 = objc_msgSend_discretionaryNetworkBehavior(v4, v33, v34);
      objc_msgSend_setDiscretionaryNetworkBehavior_(v10, v36, v35);
    }

    if ((v4[24] & 1) != 0 && (!v10 || (*(v10 + 24) & 1) == 0))
    {
      v37 = objc_msgSend_schedulerActivity(v4, v33, v34);
      objc_msgSend_setSchedulerActivity_(v10, v38, v37);
    }

    if (objc_msgSend_hasXPCActivity(v4, v33, v34) && (objc_msgSend_hasXPCActivity(v10, v39, v40) & 1) == 0)
    {
      v41 = objc_msgSend_backgroundTask(v4, v39, v40);
      v42 = *(v10 + 80);
      *(v10 + 80) = v41;
    }

    if ((v4[25] & 1) != 0 && (!v10 || (*(v10 + 25) & 1) == 0))
    {
      v43 = objc_msgSend_systemTask(v4, v39, v40);
      objc_msgSend_setSystemTask_(v10, v44, v43);
    }

    v45 = objc_msgSend_backgroundTask(v4, v39, v40);
    if (v45)
    {
      v48 = v45;
      v49 = objc_msgSend_backgroundTask(v10, v46, v47);

      if (!v49)
      {
        v50 = objc_msgSend_backgroundTask(v4, v46, v47);
        objc_msgSend_setBackgroundTask_(v10, v51, v50);
      }
    }

    if ((v4[26] & 1) != 0 && (!v10 || (*(v10 + 26) & 1) == 0))
    {
      v52 = objc_msgSend_discretionarySchedulingForEntireOperation(v4, v46, v47);
      objc_msgSend_setDiscretionarySchedulingForEntireOperation_(v10, v53, v52);
    }

    if ((v4[27] & 1) != 0 && (!v10 || (*(v10 + 27) & 1) == 0))
    {
      v54 = objc_msgSend_preferAnonymousRequests(v4, v46, v47);
      objc_msgSend_setPreferAnonymousRequests_(v10, v55, v54);
    }

    if ((v4[28] & 1) != 0 && (!v10 || (*(v10 + 28) & 1) == 0))
    {
      v56 = objc_msgSend_sourceApplicationBundleIdentifier(v4, v46, v47);
      objc_msgSend_setSourceApplicationBundleIdentifier_(v10, v57, v56);
    }

    if ((v4[29] & 1) != 0 && (!v10 || (*(v10 + 29) & 1) == 0))
    {
      v58 = objc_msgSend__sourceApplicationSecondaryIdentifier(v4, v46, v47);
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v10, v59, v58);
    }

    if ((v4[30] & 1) != 0 && (!v10 || (*(v10 + 30) & 1) == 0))
    {
      v60 = objc_msgSend_privacyProxyFailClosedOverride(v4, v46, v47);
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v10, v61, v60);
    }

    if ((v4[31] & 1) != 0 && (!v10 || (*(v10 + 31) & 1) == 0))
    {
      v62 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v4, v46, v47);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v10, v63, v62);
    }

    if ((v4[32] & 1) != 0 && (!v10 || (*(v10 + 32) & 1) == 0))
    {
      v64 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v4, v46, v47);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v10, v65, v64);
    }

    if ((v4[33] & 1) != 0 && (!v10 || (*(v10 + 33) & 1) == 0))
    {
      v66 = objc_msgSend_additionalRequestHTTPHeaders(v4, v46, v47);
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v10, v67, v66);
    }

    if ((v4[34] & 1) != 0 && (!v10 || (*(v10 + 34) & 1) == 0))
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(v4, v46, v47);
      objc_msgSend_setIsCloudKitSupportOperation_(v10, v69, isCloudKitSupportOperation);
    }

    if ((v4[35] & 1) != 0 && (!v10 || (*(v10 + 35) & 1) == 0))
    {
      v70 = objc_msgSend_cacheDeleteAvailableSpaceClass(v4, v46, v47);
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v10, v71, v70);
    }

    if ((v4[36] & 1) != 0 && (!v10 || (*(v10 + 36) & 1) == 0))
    {
      v72 = objc_msgSend_assetDownloadStagingManager(v4, v46, v47);
      objc_msgSend_setAssetDownloadStagingManager_(v10, v73, v72);
    }

    if ((v4[37] & 1) != 0 && (!v10 || (*(v10 + 37) & 1) == 0))
    {
      v74 = objc_msgSend_requestOriginator(v4, v46, v47);
      objc_msgSend_setRequestOriginator_(v10, v75, v74);
    }

    v76 = objc_msgSend_unitTestOverrides(v4, v46, v47);
    v79 = objc_msgSend_count(v76, v77, v78);

    if (v79)
    {
      v82 = objc_msgSend_unitTestOverrides(v4, v80, v81);
      objc_msgSend_addUnitTestOverrides_(v10, v83, v82);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v84 = objc_msgSend_testErrorInducerBoxes(v4, v80, v81);
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v107, v112, 16);
    if (v86)
    {
      v88 = v86;
      v89 = *v108;
      do
      {
        v90 = 0;
        do
        {
          if (*v108 != v89)
          {
            objc_enumerationMutation(v84);
          }

          objc_msgSend_addTestErrorInducerBox_(v10, v87, *(*(&v107 + 1) + 8 * v90++));
        }

        while (v88 != v90);
        v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v87, &v107, v112, 16);
      }

      while (v88);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v93 = objc_msgSend_testResultOverlayBoxes(v4, v91, v92, 0);
    v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v103, v111, 16);
    if (v95)
    {
      v97 = v95;
      v98 = *v104;
      do
      {
        v99 = 0;
        do
        {
          if (*v104 != v98)
          {
            objc_enumerationMutation(v93);
          }

          objc_msgSend_addTestResultOverlayBox_(v10, v96, *(*(&v103 + 1) + 8 * v99++));
        }

        while (v97 != v99);
        v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v96, &v103, v111, 16);
      }

      while (v97);
    }
  }

  v100 = v10;

  v101 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)setContainer:(CKContainer *)container
{
  v4 = container;
  obj = self;
  objc_sync_enter(obj);
  v5 = obj->_container;
  obj->_container = v4;

  obj->_hasContainer = 1;
  objc_sync_exit(obj);
}

- (void)setQualityOfService:(NSQualityOfService)qualityOfService
{
  obj = self;
  objc_sync_enter(obj);
  obj->_qualityOfService = qualityOfService;
  objc_msgSend_setHasQualityOfService_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setAllowsCellularAccess:(BOOL)allowsCellularAccess
{
  obj = self;
  objc_sync_enter(obj);
  obj->_allowsCellularAccess = allowsCellularAccess;
  obj->_hasAllowsCellularAccess = 1;
  objc_sync_exit(obj);
}

- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_allowsExpensiveNetworkAccess = a3;
  objc_msgSend_setHasAllowsExpensiveNetworkAccess_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setLongLived:(BOOL)longLived
{
  obj = self;
  objc_sync_enter(obj);
  obj->_longLived = longLived;
  obj->_hasLongLived = 1;
  objc_sync_exit(obj);
}

- (void)setTimeoutIntervalForRequest:(NSTimeInterval)timeoutIntervalForRequest
{
  obj = self;
  objc_sync_enter(obj);
  obj->_timeoutIntervalForRequest = timeoutIntervalForRequest;
  obj->_hasTimeoutIntervalForRequest = 1;
  objc_sync_exit(obj);
}

- (void)setTimeoutIntervalForResource:(NSTimeInterval)timeoutIntervalForResource
{
  obj = self;
  objc_sync_enter(obj);
  obj->_timeoutIntervalForResource = timeoutIntervalForResource;
  obj->_hasTimeoutIntervalForResource = 1;
  objc_sync_exit(obj);
}

- (void)setAutomaticallyRetryNetworkFailures:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_automaticallyRetryNetworkFailures = a3;
  objc_msgSend_setHasAutomaticallyRetryNetworkFailures_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setDiscretionaryNetworkBehavior:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_discretionaryNetworkBehavior = a3;
  objc_msgSend_setHasDiscretionaryNetworkBehavior_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setBackgroundTask:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  backgroundTask = obj->_backgroundTask;
  obj->_backgroundTask = v4;

  objc_sync_exit(obj);
}

- (void)setXPCActivity:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v9;
  if (v9)
  {
    v6 = [CKXPCActivity alloc];
    v5 = objc_msgSend_initWithActivity_(v6, v7, v9);
  }

  backgroundTask = v4->_backgroundTask;
  v4->_backgroundTask = v5;

  objc_sync_exit(v4);
}

- (CKSchedulerActivity)schedulerActivity
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasSchedulerActivity)
  {
    v3 = v2->_schedulerActivity;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setSchedulerActivity:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v4)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = objc_msgSend_backgroundTask(v4, v6, v7);
  if (!v8)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "No background task on scheduler activity, so let's ask the scheduler for one", &v30, 2u);
    }

    v12 = objc_msgSend_sharedScheduler(CKScheduler, v10, v11);
    v15 = objc_msgSend_identifier(v4, v13, v14);
    v17 = objc_msgSend_xpcActivityForActivityWithIdentifier_(v12, v16, v15);

    if (!v17 || (v18 = [CKXPCActivity alloc], v8 = objc_msgSend_initWithActivity_(v18, v19, v17), v17, !v8))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v20 = ck_log_facility_ck;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v29 = objc_msgSend_identifier(v4, v21, v22);
        v30 = 138543362;
        v31 = v29;
        _os_log_fault_impl(&dword_1883EA000, v20, OS_LOG_TYPE_FAULT, "Setting invalid activity %{public}@ on operation configuration. Activity must have been submitted", &v30, 0xCu);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v23 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v30 = 138412290;
    v31 = v4;
    _os_log_impl(&dword_1883EA000, v23, OS_LOG_TYPE_INFO, "Setting scheduler activity in operation configuration %@", &v30, 0xCu);
  }

  objc_storeStrong(&v5->_backgroundTask, v8);
  v26 = objc_msgSend_copy(v4, v24, v25);
  schedulerActivity = v5->_schedulerActivity;
  v5->_schedulerActivity = v26;

  v5->_hasSchedulerActivity = 1;
  objc_sync_exit(v5);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)setSystemTask:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v9;
  if (v9)
  {
    v6 = [CKBGSystemTask alloc];
    v5 = objc_msgSend_initWithSystemTask_(v6, v7, v9);
  }

  backgroundTask = v4->_backgroundTask;
  v4->_backgroundTask = v5;

  v4->_hasSystemTask = 1;
  objc_sync_exit(v4);
}

- (void)setDiscretionarySchedulingForEntireOperation:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_discretionarySchedulingForEntireOperation = a3;
  obj->_hasDiscretionarySchedulingForEntireOperation = 1;
  objc_sync_exit(obj);
}

- (void)setPreferAnonymousRequests:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_preferAnonymousRequests = a3;
  obj->_hasPreferAnonymousRequests = 1;
  objc_sync_exit(obj);
}

- (void)setIsCloudKitSupportOperation:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCloudKitSupportOperation = a3;
  obj->_hasIsCloudKitSupportOperation = 1;
  objc_sync_exit(obj);
}

- (void)setCacheDeleteAvailableSpaceClass:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cacheDeleteAvailableSpaceClass = obj->_cacheDeleteAvailableSpaceClass;
  obj->_cacheDeleteAvailableSpaceClass = v4;

  obj->_hasCacheDeleteAvailableSpaceClass = 1;
  objc_sync_exit(obj);
}

- (NSNumber)cacheDeleteAvailableSpaceClass
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && v2->_hasCacheDeleteAvailableSpaceClass)
  {
    v3 = v2->_cacheDeleteAvailableSpaceClass;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setAssetDownloadStagingManager:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  assetDownloadStagingManager = obj->_assetDownloadStagingManager;
  obj->_assetDownloadStagingManager = v4;

  obj->_hasAssetDownloadStagingManager = 1;
  objc_sync_exit(obj);
}

- (void)setSourceApplicationBundleIdentifier:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v11, v5, v6);
  sourceApplicationBundleIdentifier = v4->_sourceApplicationBundleIdentifier;
  v4->_sourceApplicationBundleIdentifier = v7;

  v4->_hasSourceApplicationBundleIdentifier = 1;
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v4, v9, v11);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v4, v10, v11);
  objc_sync_exit(v4);
}

- (void)set_sourceApplicationSecondaryIdentifier:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v9, v5, v6);
  sourceApplicationSecondaryIdentifier = v4->_sourceApplicationSecondaryIdentifier;
  v4->_sourceApplicationSecondaryIdentifier = v7;

  v4->_hasSourceApplicationSecondaryIdentifier = 1;
  objc_sync_exit(v4);
}

- (void)setPrivacyProxyFailClosedOverride:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_copy(v9, v5, v6);
  privacyProxyFailClosedOverride = v4->_privacyProxyFailClosedOverride;
  v4->_privacyProxyFailClosedOverride = v7;

  v4->_hasPrivacyProxyFailClosedOverride = 1;
  objc_sync_exit(v4);
}

- (void)setApplicationBundleIdentifierOverrideForContainerAccess:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  applicationBundleIdentifierOverrideForContainerAccess = obj->_applicationBundleIdentifierOverrideForContainerAccess;
  obj->_applicationBundleIdentifierOverrideForContainerAccess = v4;

  obj->_hasApplicationBundleIdentifierOverrideForContainerAccess = 1;
  objc_sync_exit(obj);
}

- (void)setApplicationBundleIdentifierOverrideForNetworkAttribution:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  applicationBundleIdentifierOverrideForNetworkAttribution = obj->_applicationBundleIdentifierOverrideForNetworkAttribution;
  obj->_applicationBundleIdentifierOverrideForNetworkAttribution = v4;

  obj->_hasApplicationBundleIdentifierOverrideForNetworkAttribution = 1;
  objc_sync_exit(obj);
}

- (void)setApplicationBundleIdentifierOverride:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v4, v5, v7);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v4, v6, v7);
  objc_sync_exit(v4);
}

- (void)setAdditionalRequestHTTPHeaders:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  additionalRequestHTTPHeaders = v4->_additionalRequestHTTPHeaders;
  v4->_additionalRequestHTTPHeaders = v7;

  v4->_hasAdditionalRequestHTTPHeaders = 1;
  objc_sync_exit(v4);
}

- (void)setRequestOriginator:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_requestOriginator = a3;
  obj->_hasRequestOriginator = 1;
  if (a3 == 2)
  {
    objc_msgSend_setQualityOfService_(obj, v4, 25);
  }

  objc_sync_exit(obj);
}

- (void)addUnitTestOverrides:(id)a3
{
  v19 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v4->_unitTestOverrides, v5, v6);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v13 = objc_msgSend_CKDeepCopy(v19, v11, v12);
  objc_msgSend_addEntriesFromDictionary_(v10, v14, v13);

  v17 = objc_msgSend_copy(v10, v15, v16);
  unitTestOverrides = v4->_unitTestOverrides;
  v4->_unitTestOverrides = v17;

  objc_sync_exit(v4);
}

- (void)removeUnitTestOverride:(id)a3
{
  v16 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v4->_unitTestOverrides, v5, v6);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, 0, v16);
  v14 = objc_msgSend_copy(v10, v12, v13);
  unitTestOverrides = v4->_unitTestOverrides;
  v4->_unitTestOverrides = v14;

  objc_sync_exit(v4);
}

- (void)addTestErrorInducerBox:(id)a3
{
  v6 = a3;
  v4 = self->_mTestErrorInducerBoxes;
  objc_sync_enter(v4);
  objc_msgSend_addObject_(self->_mTestErrorInducerBoxes, v5, v6);
  objc_sync_exit(v4);
}

- (void)removeTestErrorInducerBoxWithID:(id)a3
{
  v4 = a3;
  v5 = self->_mTestErrorInducerBoxes;
  objc_sync_enter(v5);
  mTestErrorInducerBoxes = self->_mTestErrorInducerBoxes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188618000;
  v14[3] = &unk_1E70BEFF8;
  v7 = v4;
  v15 = v7;
  v9 = objc_msgSend_CKFilter_(mTestErrorInducerBoxes, v8, v14);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);
  v13 = self->_mTestErrorInducerBoxes;
  self->_mTestErrorInducerBoxes = v12;

  objc_sync_exit(v5);
}

- (void)addTestResultOverlayBox:(id)a3
{
  v6 = a3;
  v4 = self->_mTestResultOverlayBoxes;
  objc_sync_enter(v4);
  objc_msgSend_addObject_(self->_mTestResultOverlayBoxes, v5, v6);
  objc_sync_exit(v4);
}

- (void)removeTestResultOverlayBoxWithID:(id)a3
{
  v4 = a3;
  v5 = self->_mTestResultOverlayBoxes;
  objc_sync_enter(v5);
  mTestResultOverlayBoxes = self->_mTestResultOverlayBoxes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886181DC;
  v14[3] = &unk_1E70BF040;
  v7 = v4;
  v15 = v7;
  v9 = objc_msgSend_CKFilter_(mTestResultOverlayBoxes, v8, v14);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);
  v13 = self->_mTestResultOverlayBoxes;
  self->_mTestResultOverlayBoxes = v12;

  objc_sync_exit(v5);
}

- (void)encodeWithCoder:(id)a3
{
  v57 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasQualityOfService(v4, v6, v7))
  {
    v10 = objc_msgSend_qualityOfService(v4, v8, v9);
    objc_msgSend_encodeInt64_forKey_(v57, v11, v10, @"QualityOfService");
  }

  if (v4 && v4->_hasAllowsCellularAccess)
  {
    v12 = objc_msgSend_allowsCellularAccess(v4, v8, v9);
    objc_msgSend_encodeBool_forKey_(v57, v13, v12, @"AllowsCellularAccess");
  }

  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(v4, v8, v9))
  {
    v16 = objc_msgSend_allowsExpensiveNetworkAccess(v4, v14, v15);
    objc_msgSend_encodeBool_forKey_(v57, v17, v16, @"AllowsExpensiveAccess");
  }

  if (v4)
  {
    if (v4->_hasLongLived)
    {
      isLongLived = objc_msgSend_isLongLived(v4, v14, v15);
      objc_msgSend_encodeBool_forKey_(v57, v19, isLongLived, @"IsLongLived");
    }

    if (v4->_hasTimeoutIntervalForRequest)
    {
      objc_msgSend_timeoutIntervalForRequest(v4, v14, v15);
      objc_msgSend_encodeDouble_forKey_(v57, v20, @"TimeoutIntervalForRequest");
    }

    if (v4->_hasTimeoutIntervalForResource)
    {
      objc_msgSend_timeoutIntervalForResource(v4, v14, v15);
      objc_msgSend_encodeDouble_forKey_(v57, v21, @"TimeoutIntervalForResource");
    }
  }

  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v4, v14, v15))
  {
    v24 = objc_msgSend_automaticallyRetryNetworkFailures(v4, v22, v23);
    objc_msgSend_encodeBool_forKey_(v57, v25, v24, @"AutomaticallyRetryNetworkFailures");
  }

  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v4, v22, v23))
  {
    v28 = objc_msgSend_discretionaryNetworkBehavior(v4, v26, v27);
    objc_msgSend_encodeInt64_forKey_(v57, v29, v28, @"DiscretionaryNetworkBehavior");
  }

  if (v4)
  {
    if (v4->_hasPreferAnonymousRequests)
    {
      v30 = objc_msgSend_preferAnonymousRequests(v4, v26, v27);
      objc_msgSend_encodeBool_forKey_(v57, v31, v30, @"PrefersAnonymousRequests");
    }

    if (v4->_hasSourceApplicationSecondaryIdentifier)
    {
      v32 = objc_msgSend__sourceApplicationSecondaryIdentifier(v4, v26, v27);
      objc_msgSend_encodeObject_forKey_(v57, v33, v32, @"SourceApplicationSecondaryIdentifier");
    }

    if (v4->_hasPrivacyProxyFailClosedOverride)
    {
      v34 = objc_msgSend_privacyProxyFailClosedOverride(v4, v26, v27);
      objc_msgSend_encodeObject_forKey_(v57, v35, v34, @"PrivacyProxyFailClosedOverride");
    }

    if (v4->_hasApplicationBundleIdentifierOverrideForContainerAccess)
    {
      v36 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v4, v26, v27);
      v37 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
      objc_msgSend_encodeObject_forKey_(v57, v38, v36, v37);
    }

    if (v4->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
    {
      v39 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v4, v26, v27);
      v40 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
      objc_msgSend_encodeObject_forKey_(v57, v41, v39, v40);
    }

    if (v4->_hasAdditionalRequestHTTPHeaders)
    {
      v42 = objc_msgSend_additionalRequestHTTPHeaders(v4, v26, v27);
      objc_msgSend_encodeObject_forKey_(v57, v43, v42, @"AdditionalRequestHTTPHeaders");
    }

    if (v4->_hasIsCloudKitSupportOperation)
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(v4, v26, v27);
      objc_msgSend_encodeBool_forKey_(v57, v45, isCloudKitSupportOperation, @"IsCloudKitSupportOperation");
    }

    if (v4->_hasCacheDeleteAvailableSpaceClass)
    {
      v46 = objc_msgSend_cacheDeleteAvailableSpaceClass(v4, v26, v27);
      objc_msgSend_encodeObject_forKey_(v57, v47, v46, @"CacheDeleteAvailableSpaceClass");
    }
  }

  v48 = objc_msgSend_unitTestOverrides(v4, v26, v27);
  v51 = objc_msgSend_count(v48, v49, v50);

  if (v51)
  {
    v54 = objc_msgSend_unitTestOverrides(v4, v52, v53);
    v55 = NSStringFromSelector(sel_unitTestOverrides);
    objc_msgSend_encodeObject_forKey_(v57, v56, v54, v55);
  }

  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (CKOperationConfiguration)initWithCoder:(id)a3
{
  v91[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v90.receiver = self;
  v90.super_class = CKOperationConfiguration;
  v5 = [(CKOperationConfiguration *)&v90 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend__commonInit(v5, v6, v7);
    v9 = objc_autoreleasePoolPush();
    if (objc_msgSend_containsValueForKey_(v4, v10, @"QualityOfService"))
    {
      v12 = objc_msgSend_decodeInt64ForKey_(v4, v11, @"QualityOfService");
      objc_msgSend_setQualityOfService_(v8, v13, v12);
    }

    if (objc_msgSend_containsValueForKey_(v4, v11, @"AllowsCellularAccess"))
    {
      v15 = objc_msgSend_decodeBoolForKey_(v4, v14, @"AllowsCellularAccess");
      objc_msgSend_setAllowsCellularAccess_(v8, v16, v15);
    }

    if (objc_msgSend_containsValueForKey_(v4, v14, @"AllowsExpensiveAccess"))
    {
      v18 = objc_msgSend_decodeBoolForKey_(v4, v17, @"AllowsExpensiveAccess");
      objc_msgSend_setAllowsExpensiveNetworkAccess_(v8, v19, v18);
    }

    if (objc_msgSend_containsValueForKey_(v4, v17, @"IsLongLived"))
    {
      v21 = objc_msgSend_decodeBoolForKey_(v4, v20, @"IsLongLived");
      objc_msgSend_setLongLived_(v8, v22, v21);
    }

    if (objc_msgSend_containsValueForKey_(v4, v20, @"TimeoutIntervalForRequest"))
    {
      objc_msgSend_decodeDoubleForKey_(v4, v23, @"TimeoutIntervalForRequest");
      objc_msgSend_setTimeoutIntervalForRequest_(v8, v24, v25);
    }

    if (objc_msgSend_containsValueForKey_(v4, v23, @"TimeoutIntervalForResource"))
    {
      objc_msgSend_decodeDoubleForKey_(v4, v26, @"TimeoutIntervalForResource");
      objc_msgSend_setTimeoutIntervalForResource_(v8, v27, v28);
    }

    if (objc_msgSend_containsValueForKey_(v4, v26, @"AutomaticallyRetryNetworkFailures"))
    {
      v30 = objc_msgSend_decodeBoolForKey_(v4, v29, @"AutomaticallyRetryNetworkFailures");
      objc_msgSend_setAutomaticallyRetryNetworkFailures_(v8, v31, v30);
    }

    if (objc_msgSend_containsValueForKey_(v4, v29, @"DiscretionaryNetworkBehavior"))
    {
      v33 = objc_msgSend_decodeInt64ForKey_(v4, v32, @"DiscretionaryNetworkBehavior");
      objc_msgSend_setDiscretionaryNetworkBehavior_(v8, v34, v33);
    }

    if (objc_msgSend_containsValueForKey_(v4, v32, @"PrefersAnonymousRequests"))
    {
      v36 = objc_msgSend_decodeBoolForKey_(v4, v35, @"PrefersAnonymousRequests");
      objc_msgSend_setPreferAnonymousRequests_(v8, v37, v36);
    }

    if (objc_msgSend_containsValueForKey_(v4, v35, @"SourceApplicationSecondaryIdentifier"))
    {
      v39 = objc_opt_class();
      v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v40, v39, @"SourceApplicationSecondaryIdentifier");
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v8, v42, v41);
    }

    if (objc_msgSend_containsValueForKey_(v4, v38, @"PrivacyProxyFailClosedOverride"))
    {
      v43 = objc_opt_class();
      v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v44, v43, @"PrivacyProxyFailClosedOverride");
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v8, v46, v45);
    }

    v47 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    v49 = objc_msgSend_containsValueForKey_(v4, v48, v47);

    if (v49)
    {
      v50 = objc_opt_class();
      v51 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
      v53 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v52, v50, v51);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v8, v54, v53);
    }

    v55 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    v57 = objc_msgSend_containsValueForKey_(v4, v56, v55);

    if (v57)
    {
      v59 = objc_opt_class();
      v60 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
      v62 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v61, v59, v60);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v8, v63, v62);
    }

    if (objc_msgSend_containsValueForKey_(v4, v58, @"AdditionalRequestHTTPHeaders"))
    {
      v65 = MEMORY[0x1E695DFD8];
      v91[0] = objc_opt_class();
      v91[1] = objc_opt_class();
      v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v91, 2);
      v69 = objc_msgSend_setWithArray_(v65, v68, v67);
      v71 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v70, v69, @"AdditionalRequestHTTPHeaders");
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v8, v72, v71);
    }

    if (objc_msgSend_containsValueForKey_(v4, v64, @"IsCloudKitSupportOperation"))
    {
      v74 = objc_msgSend_decodeBoolForKey_(v4, v73, @"IsCloudKitSupportOperation");
      objc_msgSend_setIsCloudKitSupportOperation_(v8, v75, v74);
    }

    if (objc_msgSend_containsValueForKey_(v4, v73, @"CacheDeleteAvailableSpaceClass"))
    {
      v76 = objc_opt_class();
      v78 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v77, v76, @"CacheDeleteAvailableSpaceClass");
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v8, v79, v78);
    }

    v80 = NSStringFromSelector(sel_unitTestOverrides);
    v82 = objc_msgSend_containsValueForKey_(v4, v81, v80);

    if (v82)
    {
      v83 = CKUnitTestOverrideClasses();
      v84 = NSStringFromSelector(sel_unitTestOverrides);
      v86 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v85, v83, v84);
      unitTestOverrides = v8->_unitTestOverrides;
      v8->_unitTestOverrides = v86;
    }

    objc_autoreleasePoolPop(v9);
  }

  v88 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v6 = objc_alloc_init(objc_opt_class());
  if (v3 && v3->_hasContainer)
  {
    v7 = objc_msgSend_container(v3, v4, v5);
    objc_msgSend_setContainer_(v6, v8, v7);
  }

  if (objc_msgSend_hasQualityOfService(v3, v4, v5))
  {
    v11 = objc_msgSend_qualityOfService(v3, v9, v10);
    objc_msgSend_setQualityOfService_(v6, v12, v11);
  }

  if (v3 && v3->_hasAllowsCellularAccess)
  {
    v13 = objc_msgSend_allowsCellularAccess(v3, v9, v10);
    objc_msgSend_setAllowsCellularAccess_(v6, v14, v13);
  }

  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(v3, v9, v10))
  {
    v17 = objc_msgSend_allowsExpensiveNetworkAccess(v3, v15, v16);
    objc_msgSend_setAllowsExpensiveNetworkAccess_(v6, v18, v17);
  }

  if (v3)
  {
    if (v3->_hasLongLived)
    {
      isLongLived = objc_msgSend_isLongLived(v3, v15, v16);
      objc_msgSend_setLongLived_(v6, v20, isLongLived);
    }

    if (v3->_hasTimeoutIntervalForRequest)
    {
      objc_msgSend_timeoutIntervalForRequest(v3, v15, v16);
      objc_msgSend_setTimeoutIntervalForRequest_(v6, v21, v22);
    }

    if (v3->_hasTimeoutIntervalForResource)
    {
      objc_msgSend_timeoutIntervalForResource(v3, v15, v16);
      objc_msgSend_setTimeoutIntervalForResource_(v6, v23, v24);
    }
  }

  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v3, v15, v16))
  {
    v27 = objc_msgSend_automaticallyRetryNetworkFailures(v3, v25, v26);
    objc_msgSend_setAutomaticallyRetryNetworkFailures_(v6, v28, v27);
  }

  if (objc_msgSend_hasDiscretionaryNetworkBehavior(v3, v25, v26))
  {
    v31 = objc_msgSend_discretionaryNetworkBehavior(v3, v29, v30);
    objc_msgSend_setDiscretionaryNetworkBehavior_(v6, v32, v31);
  }

  if (objc_msgSend_hasXPCActivity(v3, v29, v30))
  {
    v35 = objc_msgSend_backgroundTask(v3, v33, v34);
    v36 = v6[10];
    v6[10] = v35;
  }

  if (v3)
  {
    if (v3->_hasSchedulerActivity)
    {
      v37 = objc_msgSend_schedulerActivity(v3, v33, v34);
      objc_msgSend_setSchedulerActivity_(v6, v38, v37);
    }

    if (v3->_hasSystemTask)
    {
      v39 = objc_msgSend_systemTask(v3, v33, v34);
      objc_msgSend_setSystemTask_(v6, v40, v39);
    }

    if (v3->_hasDiscretionarySchedulingForEntireOperation)
    {
      v41 = objc_msgSend_discretionarySchedulingForEntireOperation(v3, v33, v34);
      objc_msgSend_setDiscretionarySchedulingForEntireOperation_(v6, v42, v41);
    }

    if (v3->_hasPreferAnonymousRequests)
    {
      v43 = objc_msgSend_preferAnonymousRequests(v3, v33, v34);
      objc_msgSend_setPreferAnonymousRequests_(v6, v44, v43);
    }

    if (v3->_hasSourceApplicationBundleIdentifier)
    {
      v45 = objc_msgSend_sourceApplicationBundleIdentifier(v3, v33, v34);
      objc_msgSend_setSourceApplicationBundleIdentifier_(v6, v46, v45);
    }

    if (v3->_hasSourceApplicationSecondaryIdentifier)
    {
      v47 = objc_msgSend__sourceApplicationSecondaryIdentifier(v3, v33, v34);
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v6, v48, v47);
    }

    if (v3->_hasPrivacyProxyFailClosedOverride)
    {
      v49 = objc_msgSend_privacyProxyFailClosedOverride(v3, v33, v34);
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v6, v50, v49);
    }

    if (v3->_hasApplicationBundleIdentifierOverrideForContainerAccess)
    {
      v51 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v3, v33, v34);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v6, v52, v51);
    }

    if (v3->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
    {
      v53 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v3, v33, v34);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v6, v54, v53);
    }

    if (v3->_hasAdditionalRequestHTTPHeaders)
    {
      v55 = objc_msgSend_additionalRequestHTTPHeaders(v3, v33, v34);
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v6, v56, v55);
    }

    if (v3->_hasIsCloudKitSupportOperation)
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(v3, v33, v34);
      objc_msgSend_setIsCloudKitSupportOperation_(v6, v58, isCloudKitSupportOperation);
    }

    if (v3->_hasCacheDeleteAvailableSpaceClass)
    {
      v59 = objc_msgSend_cacheDeleteAvailableSpaceClass(v3, v33, v34);
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v6, v60, v59);
    }

    if (v3->_hasAssetDownloadStagingManager)
    {
      v61 = objc_msgSend_assetDownloadStagingManager(v3, v33, v34);
      objc_msgSend_setAssetDownloadStagingManager_(v6, v62, v61);
    }

    if (v3->_hasRequestOriginator)
    {
      v63 = objc_msgSend_requestOriginator(v3, v33, v34);
      objc_msgSend_setRequestOriginator_(v6, v64, v63);
    }
  }

  v65 = objc_msgSend_mTestErrorInducerBoxes(v3, v33, v34);
  v68 = objc_msgSend_mutableCopy(v65, v66, v67);
  v69 = v6[22];
  v6[22] = v68;

  v72 = objc_msgSend_mTestResultOverlayBoxes(v3, v70, v71);
  v75 = objc_msgSend_mutableCopy(v72, v73, v74);
  v76 = v6[23];
  v6[23] = v75;

  v79 = objc_msgSend_unitTestOverrides(v3, v77, v78);
  v82 = objc_msgSend_copy(v79, v80, v81);
  v83 = v6[20];
  v6[20] = v82;

  objc_sync_exit(v3);
  return v6;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v5 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_initWithCapacity_(v7, v8, 4);
  if (self && self->_hasContainer)
  {
    v12 = objc_msgSend_container(self, v9, v10);
    v15 = objc_msgSend_containerIdentifier(v12, v13, v14);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v16, @"container", v15);
  }

  if (v5)
  {
    v17 = objc_msgSend_discretionaryNetworkBehavior(self, v9, v10);
    if (v17)
    {
      v20 = CKStringForDiscretionaryNetworkBehavior(v17);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v21, @"discretionary", v20);
    }

    v22 = MEMORY[0x1E696AD98];
    objc_msgSend_timeoutIntervalForRequest(self, v18, v19);
    v25 = objc_msgSend_numberWithDouble_(v22, v23, v24);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v26, @"timeoutForRequest", v25);

    objc_msgSend_timeoutIntervalForResource(self, v27, v28);
    if (v29 != -1.0)
    {
      v30 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v9, v10);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v31, @"timeoutForResource", v30);
    }
  }

  v34 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
  if (v5)
  {
    if ((objc_msgSend_allowsCellularAccess(self, v32, v33) & 1) == 0)
    {
      objc_msgSend_addObject_(v34, v35, @"noCellAccess");
    }

    if (objc_msgSend_hasAllowsExpensiveNetworkAccess(self, v35, v36))
    {
      if (objc_msgSend_allowsExpensiveNetworkAccess(self, v37, v38))
      {
        objc_msgSend_addObject_(v34, v39, @"expensiveAccess");
      }

      else
      {
        objc_msgSend_addObject_(v34, v39, @"noExpensiveAccess");
      }
    }

    if (objc_msgSend_isLongLived(self, v37, v38))
    {
      objc_msgSend_addObject_(v34, v40, @"longLived");
    }

    v42 = objc_msgSend_backgroundTask(self, v40, v41);

    if (v42)
    {
      objc_msgSend_addObject_(v34, v43, @"backgroundTask");
    }

    if (objc_msgSend_automaticallyRetryNetworkFailures(self, v43, v44))
    {
      objc_msgSend_addObject_(v34, v45, @"autoRetry");
    }

    if (objc_msgSend_preferAnonymousRequests(self, v45, v46))
    {
      objc_msgSend_addObject_(v34, v47, @"preferAnon");
    }

    if (objc_msgSend_isCloudKitSupportOperation(self, v47, v48))
    {
      objc_msgSend_addObject_(v34, v32, @"isCloudKitSupportOperation");
    }
  }

  if (objc_msgSend_count(v34, v32, v33))
  {
    v50 = objc_msgSend_componentsJoinedByString_(v34, v49, @"|");
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v51, @"flags", v50);
  }

  return v11;
}

@end
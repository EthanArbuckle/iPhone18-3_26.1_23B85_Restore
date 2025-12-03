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
- (CKOperationConfiguration)initWithCoder:(id)coder;
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
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolveAgainstGenericConfiguration:(id)configuration;
- (id)testErrorInducerBoxes;
- (id)testResultOverlayBoxes;
- (unint64_t)discretionaryNetworkBehavior;
- (unint64_t)requestOriginator;
- (void)_commonInit;
- (void)addTestErrorInducerBox:(id)box;
- (void)addTestResultOverlayBox:(id)box;
- (void)addUnitTestOverrides:(id)overrides;
- (void)encodeWithCoder:(id)coder;
- (void)removeTestErrorInducerBoxWithID:(id)d;
- (void)removeTestResultOverlayBoxWithID:(id)d;
- (void)removeUnitTestOverride:(id)override;
- (void)setAdditionalRequestHTTPHeaders:(id)headers;
- (void)setAllowsCellularAccess:(BOOL)allowsCellularAccess;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)access;
- (void)setApplicationBundleIdentifierOverride:(id)override;
- (void)setApplicationBundleIdentifierOverrideForContainerAccess:(id)access;
- (void)setApplicationBundleIdentifierOverrideForNetworkAttribution:(id)attribution;
- (void)setAssetDownloadStagingManager:(id)manager;
- (void)setAutomaticallyRetryNetworkFailures:(BOOL)failures;
- (void)setBackgroundTask:(id)task;
- (void)setCacheDeleteAvailableSpaceClass:(id)class;
- (void)setContainer:(CKContainer *)container;
- (void)setDiscretionaryNetworkBehavior:(unint64_t)behavior;
- (void)setDiscretionarySchedulingForEntireOperation:(BOOL)operation;
- (void)setIsCloudKitSupportOperation:(BOOL)operation;
- (void)setLongLived:(BOOL)longLived;
- (void)setPreferAnonymousRequests:(BOOL)requests;
- (void)setPrivacyProxyFailClosedOverride:(id)override;
- (void)setQualityOfService:(NSQualityOfService)qualityOfService;
- (void)setRequestOriginator:(unint64_t)originator;
- (void)setSchedulerActivity:(id)activity;
- (void)setSourceApplicationBundleIdentifier:(id)identifier;
- (void)setSystemTask:(id)task;
- (void)setTimeoutIntervalForRequest:(NSTimeInterval)timeoutIntervalForRequest;
- (void)setTimeoutIntervalForResource:(NSTimeInterval)timeoutIntervalForResource;
- (void)setXPCActivity:(id)activity;
- (void)set_sourceApplicationSecondaryIdentifier:(id)identifier;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_backgroundTask;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDictionary)unitTestOverrides
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_unitTestOverrides;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSQualityOfService)qualityOfService
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_hasQualityOfService(selfCopy, v3, v4))
  {
    qualityOfService = selfCopy->_qualityOfService;
  }

  else if (selfCopy && selfCopy->_hasContainer && (objc_msgSend_container(selfCopy, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), (v11 = v8) != 0))
  {
    v12 = objc_msgSend_options(v8, v9, v10);
    qualityOfService = objc_msgSend_qualityOfService(v12, v13, v14);
  }

  else
  {
    qualityOfService = NSQualityOfServiceDefault;
  }

  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestOriginator = selfCopy->_requestOriginator;
  objc_sync_exit(selfCopy);

  return requestOriginator;
}

- (NSString)applicationBundleIdentifierOverrideForContainerAccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasApplicationBundleIdentifierOverrideForContainerAccess)
  {
    v3 = selfCopy->_applicationBundleIdentifierOverrideForContainerAccess;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)applicationBundleIdentifierOverrideForNetworkAttribution
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
  {
    v3 = selfCopy->_applicationBundleIdentifierOverrideForNetworkAttribution;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)_sourceApplicationSecondaryIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasSourceApplicationSecondaryIdentifier)
  {
    v3 = selfCopy->_sourceApplicationSecondaryIdentifier;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)allowsExpensiveNetworkAccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(selfCopy, v3, v4))
  {
    allowsExpensiveNetworkAccess = selfCopy->_allowsExpensiveNetworkAccess;
  }

  else
  {
    allowsExpensiveNetworkAccess = objc_msgSend_allowsCellularAccess(selfCopy, v5, v6);
  }

  objc_sync_exit(selfCopy);

  return allowsExpensiveNetworkAccess & 1;
}

- (BOOL)allowsCellularAccess
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = !selfCopy || !selfCopy->_hasAllowsCellularAccess || selfCopy->_allowsCellularAccess;
  objc_sync_exit(selfCopy);

  return v3 & 1;
}

- (BOOL)isLongLived
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy && selfCopy->_hasLongLived && selfCopy->_longLived;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)automaticallyRetryNetworkFailures
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(selfCopy, v3, v4))
  {
    automaticallyRetryNetworkFailures = selfCopy->_automaticallyRetryNetworkFailures;
  }

  else
  {
    v9 = objc_msgSend_qualityOfService(selfCopy, v5, v6);
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

  objc_sync_exit(selfCopy);

  return automaticallyRetryNetworkFailures & 1;
}

- (unint64_t)discretionaryNetworkBehavior
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_hasDiscretionaryNetworkBehavior(selfCopy, v3, v4))
  {
    discretionaryNetworkBehavior = selfCopy->_discretionaryNetworkBehavior;
  }

  else
  {
    v8 = objc_msgSend_qualityOfService(selfCopy, v5, v6);
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

  objc_sync_exit(selfCopy);

  return discretionaryNetworkBehavior;
}

- (BOOL)isCloudKitSupportOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy && selfCopy->_hasIsCloudKitSupportOperation && selfCopy->_isCloudKitSupportOperation;
  objc_sync_exit(selfCopy);

  return v3;
}

- (CKContainer)container
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasContainer)
  {
    v5 = selfCopy->_container;
  }

  else
  {
    v5 = objc_msgSend_defaultContainer(CKContainer, v3, v4);
  }

  v6 = v5;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSTimeInterval)timeoutIntervalForRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasTimeoutIntervalForRequest)
  {
    timeoutIntervalForRequest = selfCopy->_timeoutIntervalForRequest;
  }

  else
  {
    timeoutIntervalForRequest = 60.0;
  }

  objc_sync_exit(selfCopy);

  return timeoutIntervalForRequest;
}

- (NSTimeInterval)timeoutIntervalForResource
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeoutIntervalForResource = -1.0;
  if (selfCopy && selfCopy->_hasTimeoutIntervalForResource)
  {
    timeoutIntervalForResource = selfCopy->_timeoutIntervalForResource;
  }

  objc_sync_exit(selfCopy);

  return timeoutIntervalForResource;
}

- (BOOL)preferAnonymousRequests
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy && selfCopy->_hasPreferAnonymousRequests && selfCopy->_preferAnonymousRequests;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasAssetDownloadStagingManager)
  {
    v3 = selfCopy->_assetDownloadStagingManager;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)discretionarySchedulingForEntireOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = !selfCopy || !selfCopy->_hasDiscretionarySchedulingForEntireOperation || selfCopy->_discretionarySchedulingForEntireOperation;
  objc_sync_exit(selfCopy);

  return v3 & 1;
}

- (NSNumber)privacyProxyFailClosedOverride
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasPrivacyProxyFailClosedOverride)
  {
    v3 = selfCopy->_privacyProxyFailClosedOverride;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDictionary)additionalRequestHTTPHeaders
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasAdditionalRequestHTTPHeaders)
  {
    v3 = selfCopy->_additionalRequestHTTPHeaders;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)sourceApplicationBundleIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasSourceApplicationBundleIdentifier)
  {
    v3 = selfCopy->_sourceApplicationBundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BGSystemTask)systemTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backgroundTask = selfCopy->_backgroundTask;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_systemTask(selfCopy->_backgroundTask, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

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

- (id)resolveAgainstGenericConfiguration:(id)configuration
{
  v113 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = v7;
  if (configurationCopy)
  {
    if ((configurationCopy[16] & 1) != 0 && (!v7 || (*(v7 + 16) & 1) == 0))
    {
      v11 = objc_msgSend_container(configurationCopy, v8, v9);
      objc_msgSend_setContainer_(v10, v12, v11);
    }

    if (objc_msgSend_hasQualityOfService(configurationCopy, v8, v9) && (objc_msgSend_hasQualityOfService(v10, v13, v14) & 1) == 0)
    {
      v15 = objc_msgSend_qualityOfService(configurationCopy, v13, v14);
      objc_msgSend_setQualityOfService_(v10, v16, v15);
    }

    if ((configurationCopy[17] & 1) != 0 && (!v10 || (*(v10 + 17) & 1) == 0))
    {
      v17 = objc_msgSend_allowsCellularAccess(configurationCopy, v13, v14);
      objc_msgSend_setAllowsCellularAccess_(v10, v18, v17);
    }

    if (objc_msgSend_hasAllowsExpensiveNetworkAccess(configurationCopy, v13, v14) && (objc_msgSend_hasAllowsExpensiveNetworkAccess(v10, v19, v20) & 1) == 0)
    {
      v21 = objc_msgSend_allowsExpensiveNetworkAccess(configurationCopy, v19, v20);
      objc_msgSend_setAllowsExpensiveNetworkAccess_(v10, v22, v21);
    }

    if ((configurationCopy[19] & 1) != 0 && (!v10 || (*(v10 + 19) & 1) == 0))
    {
      isLongLived = objc_msgSend_isLongLived(configurationCopy, v19, v20);
      objc_msgSend_setLongLived_(v10, v24, isLongLived);
    }

    if ((configurationCopy[20] & 1) != 0 && (!v10 || (*(v10 + 20) & 1) == 0))
    {
      objc_msgSend_timeoutIntervalForRequest(configurationCopy, v19, v20);
      objc_msgSend_setTimeoutIntervalForRequest_(v10, v25, v26);
    }

    if ((configurationCopy[21] & 1) != 0 && (!v10 || (*(v10 + 21) & 1) == 0))
    {
      objc_msgSend_timeoutIntervalForResource(configurationCopy, v19, v20);
      objc_msgSend_setTimeoutIntervalForResource_(v10, v27, v28);
    }

    if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(configurationCopy, v19, v20) && (objc_msgSend_hasAutomaticallyRetryNetworkFailures(v10, v29, v30) & 1) == 0)
    {
      v31 = objc_msgSend_automaticallyRetryNetworkFailures(configurationCopy, v29, v30);
      objc_msgSend_setAutomaticallyRetryNetworkFailures_(v10, v32, v31);
    }

    if (objc_msgSend_hasDiscretionaryNetworkBehavior(configurationCopy, v29, v30) && (objc_msgSend_hasDiscretionaryNetworkBehavior(v10, v33, v34) & 1) == 0)
    {
      v35 = objc_msgSend_discretionaryNetworkBehavior(configurationCopy, v33, v34);
      objc_msgSend_setDiscretionaryNetworkBehavior_(v10, v36, v35);
    }

    if ((configurationCopy[24] & 1) != 0 && (!v10 || (*(v10 + 24) & 1) == 0))
    {
      v37 = objc_msgSend_schedulerActivity(configurationCopy, v33, v34);
      objc_msgSend_setSchedulerActivity_(v10, v38, v37);
    }

    if (objc_msgSend_hasXPCActivity(configurationCopy, v33, v34) && (objc_msgSend_hasXPCActivity(v10, v39, v40) & 1) == 0)
    {
      v41 = objc_msgSend_backgroundTask(configurationCopy, v39, v40);
      v42 = *(v10 + 80);
      *(v10 + 80) = v41;
    }

    if ((configurationCopy[25] & 1) != 0 && (!v10 || (*(v10 + 25) & 1) == 0))
    {
      v43 = objc_msgSend_systemTask(configurationCopy, v39, v40);
      objc_msgSend_setSystemTask_(v10, v44, v43);
    }

    v45 = objc_msgSend_backgroundTask(configurationCopy, v39, v40);
    if (v45)
    {
      v48 = v45;
      v49 = objc_msgSend_backgroundTask(v10, v46, v47);

      if (!v49)
      {
        v50 = objc_msgSend_backgroundTask(configurationCopy, v46, v47);
        objc_msgSend_setBackgroundTask_(v10, v51, v50);
      }
    }

    if ((configurationCopy[26] & 1) != 0 && (!v10 || (*(v10 + 26) & 1) == 0))
    {
      v52 = objc_msgSend_discretionarySchedulingForEntireOperation(configurationCopy, v46, v47);
      objc_msgSend_setDiscretionarySchedulingForEntireOperation_(v10, v53, v52);
    }

    if ((configurationCopy[27] & 1) != 0 && (!v10 || (*(v10 + 27) & 1) == 0))
    {
      v54 = objc_msgSend_preferAnonymousRequests(configurationCopy, v46, v47);
      objc_msgSend_setPreferAnonymousRequests_(v10, v55, v54);
    }

    if ((configurationCopy[28] & 1) != 0 && (!v10 || (*(v10 + 28) & 1) == 0))
    {
      v56 = objc_msgSend_sourceApplicationBundleIdentifier(configurationCopy, v46, v47);
      objc_msgSend_setSourceApplicationBundleIdentifier_(v10, v57, v56);
    }

    if ((configurationCopy[29] & 1) != 0 && (!v10 || (*(v10 + 29) & 1) == 0))
    {
      v58 = objc_msgSend__sourceApplicationSecondaryIdentifier(configurationCopy, v46, v47);
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v10, v59, v58);
    }

    if ((configurationCopy[30] & 1) != 0 && (!v10 || (*(v10 + 30) & 1) == 0))
    {
      v60 = objc_msgSend_privacyProxyFailClosedOverride(configurationCopy, v46, v47);
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v10, v61, v60);
    }

    if ((configurationCopy[31] & 1) != 0 && (!v10 || (*(v10 + 31) & 1) == 0))
    {
      v62 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(configurationCopy, v46, v47);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v10, v63, v62);
    }

    if ((configurationCopy[32] & 1) != 0 && (!v10 || (*(v10 + 32) & 1) == 0))
    {
      v64 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(configurationCopy, v46, v47);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v10, v65, v64);
    }

    if ((configurationCopy[33] & 1) != 0 && (!v10 || (*(v10 + 33) & 1) == 0))
    {
      v66 = objc_msgSend_additionalRequestHTTPHeaders(configurationCopy, v46, v47);
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v10, v67, v66);
    }

    if ((configurationCopy[34] & 1) != 0 && (!v10 || (*(v10 + 34) & 1) == 0))
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(configurationCopy, v46, v47);
      objc_msgSend_setIsCloudKitSupportOperation_(v10, v69, isCloudKitSupportOperation);
    }

    if ((configurationCopy[35] & 1) != 0 && (!v10 || (*(v10 + 35) & 1) == 0))
    {
      v70 = objc_msgSend_cacheDeleteAvailableSpaceClass(configurationCopy, v46, v47);
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v10, v71, v70);
    }

    if ((configurationCopy[36] & 1) != 0 && (!v10 || (*(v10 + 36) & 1) == 0))
    {
      v72 = objc_msgSend_assetDownloadStagingManager(configurationCopy, v46, v47);
      objc_msgSend_setAssetDownloadStagingManager_(v10, v73, v72);
    }

    if ((configurationCopy[37] & 1) != 0 && (!v10 || (*(v10 + 37) & 1) == 0))
    {
      v74 = objc_msgSend_requestOriginator(configurationCopy, v46, v47);
      objc_msgSend_setRequestOriginator_(v10, v75, v74);
    }

    v76 = objc_msgSend_unitTestOverrides(configurationCopy, v46, v47);
    v79 = objc_msgSend_count(v76, v77, v78);

    if (v79)
    {
      v82 = objc_msgSend_unitTestOverrides(configurationCopy, v80, v81);
      objc_msgSend_addUnitTestOverrides_(v10, v83, v82);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v84 = objc_msgSend_testErrorInducerBoxes(configurationCopy, v80, v81);
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
    v93 = objc_msgSend_testResultOverlayBoxes(configurationCopy, v91, v92, 0);
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

- (void)setAllowsExpensiveNetworkAccess:(BOOL)access
{
  obj = self;
  objc_sync_enter(obj);
  obj->_allowsExpensiveNetworkAccess = access;
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

- (void)setAutomaticallyRetryNetworkFailures:(BOOL)failures
{
  obj = self;
  objc_sync_enter(obj);
  obj->_automaticallyRetryNetworkFailures = failures;
  objc_msgSend_setHasAutomaticallyRetryNetworkFailures_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setDiscretionaryNetworkBehavior:(unint64_t)behavior
{
  obj = self;
  objc_sync_enter(obj);
  obj->_discretionaryNetworkBehavior = behavior;
  objc_msgSend_setHasDiscretionaryNetworkBehavior_(obj, v4, 1);
  objc_sync_exit(obj);
}

- (void)setBackgroundTask:(id)task
{
  taskCopy = task;
  obj = self;
  objc_sync_enter(obj);
  backgroundTask = obj->_backgroundTask;
  obj->_backgroundTask = taskCopy;

  objc_sync_exit(obj);
}

- (void)setXPCActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = activityCopy;
  if (activityCopy)
  {
    v6 = [CKXPCActivity alloc];
    v5 = objc_msgSend_initWithActivity_(v6, v7, activityCopy);
  }

  backgroundTask = selfCopy->_backgroundTask;
  selfCopy->_backgroundTask = v5;

  objc_sync_exit(selfCopy);
}

- (CKSchedulerActivity)schedulerActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasSchedulerActivity)
  {
    v3 = selfCopy->_schedulerActivity;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSchedulerActivity:(id)activity
{
  v32 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!activityCopy)
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = objc_msgSend_backgroundTask(activityCopy, v6, v7);
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
    v15 = objc_msgSend_identifier(activityCopy, v13, v14);
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
        v29 = objc_msgSend_identifier(activityCopy, v21, v22);
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
    v31 = activityCopy;
    _os_log_impl(&dword_1883EA000, v23, OS_LOG_TYPE_INFO, "Setting scheduler activity in operation configuration %@", &v30, 0xCu);
  }

  objc_storeStrong(&selfCopy->_backgroundTask, v8);
  v26 = objc_msgSend_copy(activityCopy, v24, v25);
  schedulerActivity = selfCopy->_schedulerActivity;
  selfCopy->_schedulerActivity = v26;

  selfCopy->_hasSchedulerActivity = 1;
  objc_sync_exit(selfCopy);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)setSystemTask:(id)task
{
  taskCopy = task;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = taskCopy;
  if (taskCopy)
  {
    v6 = [CKBGSystemTask alloc];
    v5 = objc_msgSend_initWithSystemTask_(v6, v7, taskCopy);
  }

  backgroundTask = selfCopy->_backgroundTask;
  selfCopy->_backgroundTask = v5;

  selfCopy->_hasSystemTask = 1;
  objc_sync_exit(selfCopy);
}

- (void)setDiscretionarySchedulingForEntireOperation:(BOOL)operation
{
  obj = self;
  objc_sync_enter(obj);
  obj->_discretionarySchedulingForEntireOperation = operation;
  obj->_hasDiscretionarySchedulingForEntireOperation = 1;
  objc_sync_exit(obj);
}

- (void)setPreferAnonymousRequests:(BOOL)requests
{
  obj = self;
  objc_sync_enter(obj);
  obj->_preferAnonymousRequests = requests;
  obj->_hasPreferAnonymousRequests = 1;
  objc_sync_exit(obj);
}

- (void)setIsCloudKitSupportOperation:(BOOL)operation
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCloudKitSupportOperation = operation;
  obj->_hasIsCloudKitSupportOperation = 1;
  objc_sync_exit(obj);
}

- (void)setCacheDeleteAvailableSpaceClass:(id)class
{
  classCopy = class;
  obj = self;
  objc_sync_enter(obj);
  cacheDeleteAvailableSpaceClass = obj->_cacheDeleteAvailableSpaceClass;
  obj->_cacheDeleteAvailableSpaceClass = classCopy;

  obj->_hasCacheDeleteAvailableSpaceClass = 1;
  objc_sync_exit(obj);
}

- (NSNumber)cacheDeleteAvailableSpaceClass
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasCacheDeleteAvailableSpaceClass)
  {
    v3 = selfCopy->_cacheDeleteAvailableSpaceClass;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAssetDownloadStagingManager:(id)manager
{
  managerCopy = manager;
  obj = self;
  objc_sync_enter(obj);
  assetDownloadStagingManager = obj->_assetDownloadStagingManager;
  obj->_assetDownloadStagingManager = managerCopy;

  obj->_hasAssetDownloadStagingManager = 1;
  objc_sync_exit(obj);
}

- (void)setSourceApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(identifierCopy, v5, v6);
  sourceApplicationBundleIdentifier = selfCopy->_sourceApplicationBundleIdentifier;
  selfCopy->_sourceApplicationBundleIdentifier = v7;

  selfCopy->_hasSourceApplicationBundleIdentifier = 1;
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(selfCopy, v9, identifierCopy);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(selfCopy, v10, identifierCopy);
  objc_sync_exit(selfCopy);
}

- (void)set_sourceApplicationSecondaryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(identifierCopy, v5, v6);
  sourceApplicationSecondaryIdentifier = selfCopy->_sourceApplicationSecondaryIdentifier;
  selfCopy->_sourceApplicationSecondaryIdentifier = v7;

  selfCopy->_hasSourceApplicationSecondaryIdentifier = 1;
  objc_sync_exit(selfCopy);
}

- (void)setPrivacyProxyFailClosedOverride:(id)override
{
  overrideCopy = override;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(overrideCopy, v5, v6);
  privacyProxyFailClosedOverride = selfCopy->_privacyProxyFailClosedOverride;
  selfCopy->_privacyProxyFailClosedOverride = v7;

  selfCopy->_hasPrivacyProxyFailClosedOverride = 1;
  objc_sync_exit(selfCopy);
}

- (void)setApplicationBundleIdentifierOverrideForContainerAccess:(id)access
{
  accessCopy = access;
  obj = self;
  objc_sync_enter(obj);
  applicationBundleIdentifierOverrideForContainerAccess = obj->_applicationBundleIdentifierOverrideForContainerAccess;
  obj->_applicationBundleIdentifierOverrideForContainerAccess = accessCopy;

  obj->_hasApplicationBundleIdentifierOverrideForContainerAccess = 1;
  objc_sync_exit(obj);
}

- (void)setApplicationBundleIdentifierOverrideForNetworkAttribution:(id)attribution
{
  attributionCopy = attribution;
  obj = self;
  objc_sync_enter(obj);
  applicationBundleIdentifierOverrideForNetworkAttribution = obj->_applicationBundleIdentifierOverrideForNetworkAttribution;
  obj->_applicationBundleIdentifierOverrideForNetworkAttribution = attributionCopy;

  obj->_hasApplicationBundleIdentifierOverrideForNetworkAttribution = 1;
  objc_sync_exit(obj);
}

- (void)setApplicationBundleIdentifierOverride:(id)override
{
  overrideCopy = override;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(selfCopy, v5, overrideCopy);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(selfCopy, v6, overrideCopy);
  objc_sync_exit(selfCopy);
}

- (void)setAdditionalRequestHTTPHeaders:(id)headers
{
  headersCopy = headers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(headersCopy, v5, v6);
  additionalRequestHTTPHeaders = selfCopy->_additionalRequestHTTPHeaders;
  selfCopy->_additionalRequestHTTPHeaders = v7;

  selfCopy->_hasAdditionalRequestHTTPHeaders = 1;
  objc_sync_exit(selfCopy);
}

- (void)setRequestOriginator:(unint64_t)originator
{
  obj = self;
  objc_sync_enter(obj);
  obj->_requestOriginator = originator;
  obj->_hasRequestOriginator = 1;
  if (originator == 2)
  {
    objc_msgSend_setQualityOfService_(obj, v4, 25);
  }

  objc_sync_exit(obj);
}

- (void)addUnitTestOverrides:(id)overrides
{
  overridesCopy = overrides;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(selfCopy->_unitTestOverrides, v5, v6);
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

  v13 = objc_msgSend_CKDeepCopy(overridesCopy, v11, v12);
  objc_msgSend_addEntriesFromDictionary_(v10, v14, v13);

  v17 = objc_msgSend_copy(v10, v15, v16);
  unitTestOverrides = selfCopy->_unitTestOverrides;
  selfCopy->_unitTestOverrides = v17;

  objc_sync_exit(selfCopy);
}

- (void)removeUnitTestOverride:(id)override
{
  overrideCopy = override;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_mutableCopy(selfCopy->_unitTestOverrides, v5, v6);
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

  objc_msgSend_setObject_forKeyedSubscript_(v10, v11, 0, overrideCopy);
  v14 = objc_msgSend_copy(v10, v12, v13);
  unitTestOverrides = selfCopy->_unitTestOverrides;
  selfCopy->_unitTestOverrides = v14;

  objc_sync_exit(selfCopy);
}

- (void)addTestErrorInducerBox:(id)box
{
  boxCopy = box;
  v4 = self->_mTestErrorInducerBoxes;
  objc_sync_enter(v4);
  objc_msgSend_addObject_(self->_mTestErrorInducerBoxes, v5, boxCopy);
  objc_sync_exit(v4);
}

- (void)removeTestErrorInducerBoxWithID:(id)d
{
  dCopy = d;
  v5 = self->_mTestErrorInducerBoxes;
  objc_sync_enter(v5);
  mTestErrorInducerBoxes = self->_mTestErrorInducerBoxes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188618000;
  v14[3] = &unk_1E70BEFF8;
  v7 = dCopy;
  v15 = v7;
  v9 = objc_msgSend_CKFilter_(mTestErrorInducerBoxes, v8, v14);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);
  v13 = self->_mTestErrorInducerBoxes;
  self->_mTestErrorInducerBoxes = v12;

  objc_sync_exit(v5);
}

- (void)addTestResultOverlayBox:(id)box
{
  boxCopy = box;
  v4 = self->_mTestResultOverlayBoxes;
  objc_sync_enter(v4);
  objc_msgSend_addObject_(self->_mTestResultOverlayBoxes, v5, boxCopy);
  objc_sync_exit(v4);
}

- (void)removeTestResultOverlayBoxWithID:(id)d
{
  dCopy = d;
  v5 = self->_mTestResultOverlayBoxes;
  objc_sync_enter(v5);
  mTestResultOverlayBoxes = self->_mTestResultOverlayBoxes;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1886181DC;
  v14[3] = &unk_1E70BF040;
  v7 = dCopy;
  v15 = v7;
  v9 = objc_msgSend_CKFilter_(mTestResultOverlayBoxes, v8, v14);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);
  v13 = self->_mTestResultOverlayBoxes;
  self->_mTestResultOverlayBoxes = v12;

  objc_sync_exit(v5);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasQualityOfService(selfCopy, v6, v7))
  {
    v10 = objc_msgSend_qualityOfService(selfCopy, v8, v9);
    objc_msgSend_encodeInt64_forKey_(coderCopy, v11, v10, @"QualityOfService");
  }

  if (selfCopy && selfCopy->_hasAllowsCellularAccess)
  {
    v12 = objc_msgSend_allowsCellularAccess(selfCopy, v8, v9);
    objc_msgSend_encodeBool_forKey_(coderCopy, v13, v12, @"AllowsCellularAccess");
  }

  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(selfCopy, v8, v9))
  {
    v16 = objc_msgSend_allowsExpensiveNetworkAccess(selfCopy, v14, v15);
    objc_msgSend_encodeBool_forKey_(coderCopy, v17, v16, @"AllowsExpensiveAccess");
  }

  if (selfCopy)
  {
    if (selfCopy->_hasLongLived)
    {
      isLongLived = objc_msgSend_isLongLived(selfCopy, v14, v15);
      objc_msgSend_encodeBool_forKey_(coderCopy, v19, isLongLived, @"IsLongLived");
    }

    if (selfCopy->_hasTimeoutIntervalForRequest)
    {
      objc_msgSend_timeoutIntervalForRequest(selfCopy, v14, v15);
      objc_msgSend_encodeDouble_forKey_(coderCopy, v20, @"TimeoutIntervalForRequest");
    }

    if (selfCopy->_hasTimeoutIntervalForResource)
    {
      objc_msgSend_timeoutIntervalForResource(selfCopy, v14, v15);
      objc_msgSend_encodeDouble_forKey_(coderCopy, v21, @"TimeoutIntervalForResource");
    }
  }

  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(selfCopy, v14, v15))
  {
    v24 = objc_msgSend_automaticallyRetryNetworkFailures(selfCopy, v22, v23);
    objc_msgSend_encodeBool_forKey_(coderCopy, v25, v24, @"AutomaticallyRetryNetworkFailures");
  }

  if (objc_msgSend_hasDiscretionaryNetworkBehavior(selfCopy, v22, v23))
  {
    v28 = objc_msgSend_discretionaryNetworkBehavior(selfCopy, v26, v27);
    objc_msgSend_encodeInt64_forKey_(coderCopy, v29, v28, @"DiscretionaryNetworkBehavior");
  }

  if (selfCopy)
  {
    if (selfCopy->_hasPreferAnonymousRequests)
    {
      v30 = objc_msgSend_preferAnonymousRequests(selfCopy, v26, v27);
      objc_msgSend_encodeBool_forKey_(coderCopy, v31, v30, @"PrefersAnonymousRequests");
    }

    if (selfCopy->_hasSourceApplicationSecondaryIdentifier)
    {
      v32 = objc_msgSend__sourceApplicationSecondaryIdentifier(selfCopy, v26, v27);
      objc_msgSend_encodeObject_forKey_(coderCopy, v33, v32, @"SourceApplicationSecondaryIdentifier");
    }

    if (selfCopy->_hasPrivacyProxyFailClosedOverride)
    {
      v34 = objc_msgSend_privacyProxyFailClosedOverride(selfCopy, v26, v27);
      objc_msgSend_encodeObject_forKey_(coderCopy, v35, v34, @"PrivacyProxyFailClosedOverride");
    }

    if (selfCopy->_hasApplicationBundleIdentifierOverrideForContainerAccess)
    {
      v36 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(selfCopy, v26, v27);
      v37 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
      objc_msgSend_encodeObject_forKey_(coderCopy, v38, v36, v37);
    }

    if (selfCopy->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
    {
      v39 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(selfCopy, v26, v27);
      v40 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
      objc_msgSend_encodeObject_forKey_(coderCopy, v41, v39, v40);
    }

    if (selfCopy->_hasAdditionalRequestHTTPHeaders)
    {
      v42 = objc_msgSend_additionalRequestHTTPHeaders(selfCopy, v26, v27);
      objc_msgSend_encodeObject_forKey_(coderCopy, v43, v42, @"AdditionalRequestHTTPHeaders");
    }

    if (selfCopy->_hasIsCloudKitSupportOperation)
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(selfCopy, v26, v27);
      objc_msgSend_encodeBool_forKey_(coderCopy, v45, isCloudKitSupportOperation, @"IsCloudKitSupportOperation");
    }

    if (selfCopy->_hasCacheDeleteAvailableSpaceClass)
    {
      v46 = objc_msgSend_cacheDeleteAvailableSpaceClass(selfCopy, v26, v27);
      objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"CacheDeleteAvailableSpaceClass");
    }
  }

  v48 = objc_msgSend_unitTestOverrides(selfCopy, v26, v27);
  v51 = objc_msgSend_count(v48, v49, v50);

  if (v51)
  {
    v54 = objc_msgSend_unitTestOverrides(selfCopy, v52, v53);
    v55 = NSStringFromSelector(sel_unitTestOverrides);
    objc_msgSend_encodeObject_forKey_(coderCopy, v56, v54, v55);
  }

  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (CKOperationConfiguration)initWithCoder:(id)coder
{
  v91[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v90.receiver = self;
  v90.super_class = CKOperationConfiguration;
  v5 = [(CKOperationConfiguration *)&v90 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend__commonInit(v5, v6, v7);
    v9 = objc_autoreleasePoolPush();
    if (objc_msgSend_containsValueForKey_(coderCopy, v10, @"QualityOfService"))
    {
      v12 = objc_msgSend_decodeInt64ForKey_(coderCopy, v11, @"QualityOfService");
      objc_msgSend_setQualityOfService_(v8, v13, v12);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v11, @"AllowsCellularAccess"))
    {
      v15 = objc_msgSend_decodeBoolForKey_(coderCopy, v14, @"AllowsCellularAccess");
      objc_msgSend_setAllowsCellularAccess_(v8, v16, v15);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v14, @"AllowsExpensiveAccess"))
    {
      v18 = objc_msgSend_decodeBoolForKey_(coderCopy, v17, @"AllowsExpensiveAccess");
      objc_msgSend_setAllowsExpensiveNetworkAccess_(v8, v19, v18);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v17, @"IsLongLived"))
    {
      v21 = objc_msgSend_decodeBoolForKey_(coderCopy, v20, @"IsLongLived");
      objc_msgSend_setLongLived_(v8, v22, v21);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v20, @"TimeoutIntervalForRequest"))
    {
      objc_msgSend_decodeDoubleForKey_(coderCopy, v23, @"TimeoutIntervalForRequest");
      objc_msgSend_setTimeoutIntervalForRequest_(v8, v24, v25);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v23, @"TimeoutIntervalForResource"))
    {
      objc_msgSend_decodeDoubleForKey_(coderCopy, v26, @"TimeoutIntervalForResource");
      objc_msgSend_setTimeoutIntervalForResource_(v8, v27, v28);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v26, @"AutomaticallyRetryNetworkFailures"))
    {
      v30 = objc_msgSend_decodeBoolForKey_(coderCopy, v29, @"AutomaticallyRetryNetworkFailures");
      objc_msgSend_setAutomaticallyRetryNetworkFailures_(v8, v31, v30);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v29, @"DiscretionaryNetworkBehavior"))
    {
      v33 = objc_msgSend_decodeInt64ForKey_(coderCopy, v32, @"DiscretionaryNetworkBehavior");
      objc_msgSend_setDiscretionaryNetworkBehavior_(v8, v34, v33);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v32, @"PrefersAnonymousRequests"))
    {
      v36 = objc_msgSend_decodeBoolForKey_(coderCopy, v35, @"PrefersAnonymousRequests");
      objc_msgSend_setPreferAnonymousRequests_(v8, v37, v36);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v35, @"SourceApplicationSecondaryIdentifier"))
    {
      v39 = objc_opt_class();
      v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"SourceApplicationSecondaryIdentifier");
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v8, v42, v41);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v38, @"PrivacyProxyFailClosedOverride"))
    {
      v43 = objc_opt_class();
      v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"PrivacyProxyFailClosedOverride");
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v8, v46, v45);
    }

    v47 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    v49 = objc_msgSend_containsValueForKey_(coderCopy, v48, v47);

    if (v49)
    {
      v50 = objc_opt_class();
      v51 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
      v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v50, v51);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v8, v54, v53);
    }

    v55 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    v57 = objc_msgSend_containsValueForKey_(coderCopy, v56, v55);

    if (v57)
    {
      v59 = objc_opt_class();
      v60 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
      v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v61, v59, v60);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v8, v63, v62);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v58, @"AdditionalRequestHTTPHeaders"))
    {
      v65 = MEMORY[0x1E695DFD8];
      v91[0] = objc_opt_class();
      v91[1] = objc_opt_class();
      v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v66, v91, 2);
      v69 = objc_msgSend_setWithArray_(v65, v68, v67);
      v71 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v70, v69, @"AdditionalRequestHTTPHeaders");
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v8, v72, v71);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v64, @"IsCloudKitSupportOperation"))
    {
      v74 = objc_msgSend_decodeBoolForKey_(coderCopy, v73, @"IsCloudKitSupportOperation");
      objc_msgSend_setIsCloudKitSupportOperation_(v8, v75, v74);
    }

    if (objc_msgSend_containsValueForKey_(coderCopy, v73, @"CacheDeleteAvailableSpaceClass"))
    {
      v76 = objc_opt_class();
      v78 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v77, v76, @"CacheDeleteAvailableSpaceClass");
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v8, v79, v78);
    }

    v80 = NSStringFromSelector(sel_unitTestOverrides);
    v82 = objc_msgSend_containsValueForKey_(coderCopy, v81, v80);

    if (v82)
    {
      v83 = CKUnitTestOverrideClasses();
      v84 = NSStringFromSelector(sel_unitTestOverrides);
      v86 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v85, v83, v84);
      unitTestOverrides = v8->_unitTestOverrides;
      v8->_unitTestOverrides = v86;
    }

    objc_autoreleasePoolPop(v9);
  }

  v88 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_alloc_init(objc_opt_class());
  if (selfCopy && selfCopy->_hasContainer)
  {
    v7 = objc_msgSend_container(selfCopy, v4, v5);
    objc_msgSend_setContainer_(v6, v8, v7);
  }

  if (objc_msgSend_hasQualityOfService(selfCopy, v4, v5))
  {
    v11 = objc_msgSend_qualityOfService(selfCopy, v9, v10);
    objc_msgSend_setQualityOfService_(v6, v12, v11);
  }

  if (selfCopy && selfCopy->_hasAllowsCellularAccess)
  {
    v13 = objc_msgSend_allowsCellularAccess(selfCopy, v9, v10);
    objc_msgSend_setAllowsCellularAccess_(v6, v14, v13);
  }

  if (objc_msgSend_hasAllowsExpensiveNetworkAccess(selfCopy, v9, v10))
  {
    v17 = objc_msgSend_allowsExpensiveNetworkAccess(selfCopy, v15, v16);
    objc_msgSend_setAllowsExpensiveNetworkAccess_(v6, v18, v17);
  }

  if (selfCopy)
  {
    if (selfCopy->_hasLongLived)
    {
      isLongLived = objc_msgSend_isLongLived(selfCopy, v15, v16);
      objc_msgSend_setLongLived_(v6, v20, isLongLived);
    }

    if (selfCopy->_hasTimeoutIntervalForRequest)
    {
      objc_msgSend_timeoutIntervalForRequest(selfCopy, v15, v16);
      objc_msgSend_setTimeoutIntervalForRequest_(v6, v21, v22);
    }

    if (selfCopy->_hasTimeoutIntervalForResource)
    {
      objc_msgSend_timeoutIntervalForResource(selfCopy, v15, v16);
      objc_msgSend_setTimeoutIntervalForResource_(v6, v23, v24);
    }
  }

  if (objc_msgSend_hasAutomaticallyRetryNetworkFailures(selfCopy, v15, v16))
  {
    v27 = objc_msgSend_automaticallyRetryNetworkFailures(selfCopy, v25, v26);
    objc_msgSend_setAutomaticallyRetryNetworkFailures_(v6, v28, v27);
  }

  if (objc_msgSend_hasDiscretionaryNetworkBehavior(selfCopy, v25, v26))
  {
    v31 = objc_msgSend_discretionaryNetworkBehavior(selfCopy, v29, v30);
    objc_msgSend_setDiscretionaryNetworkBehavior_(v6, v32, v31);
  }

  if (objc_msgSend_hasXPCActivity(selfCopy, v29, v30))
  {
    v35 = objc_msgSend_backgroundTask(selfCopy, v33, v34);
    v36 = v6[10];
    v6[10] = v35;
  }

  if (selfCopy)
  {
    if (selfCopy->_hasSchedulerActivity)
    {
      v37 = objc_msgSend_schedulerActivity(selfCopy, v33, v34);
      objc_msgSend_setSchedulerActivity_(v6, v38, v37);
    }

    if (selfCopy->_hasSystemTask)
    {
      v39 = objc_msgSend_systemTask(selfCopy, v33, v34);
      objc_msgSend_setSystemTask_(v6, v40, v39);
    }

    if (selfCopy->_hasDiscretionarySchedulingForEntireOperation)
    {
      v41 = objc_msgSend_discretionarySchedulingForEntireOperation(selfCopy, v33, v34);
      objc_msgSend_setDiscretionarySchedulingForEntireOperation_(v6, v42, v41);
    }

    if (selfCopy->_hasPreferAnonymousRequests)
    {
      v43 = objc_msgSend_preferAnonymousRequests(selfCopy, v33, v34);
      objc_msgSend_setPreferAnonymousRequests_(v6, v44, v43);
    }

    if (selfCopy->_hasSourceApplicationBundleIdentifier)
    {
      v45 = objc_msgSend_sourceApplicationBundleIdentifier(selfCopy, v33, v34);
      objc_msgSend_setSourceApplicationBundleIdentifier_(v6, v46, v45);
    }

    if (selfCopy->_hasSourceApplicationSecondaryIdentifier)
    {
      v47 = objc_msgSend__sourceApplicationSecondaryIdentifier(selfCopy, v33, v34);
      objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v6, v48, v47);
    }

    if (selfCopy->_hasPrivacyProxyFailClosedOverride)
    {
      v49 = objc_msgSend_privacyProxyFailClosedOverride(selfCopy, v33, v34);
      objc_msgSend_setPrivacyProxyFailClosedOverride_(v6, v50, v49);
    }

    if (selfCopy->_hasApplicationBundleIdentifierOverrideForContainerAccess)
    {
      v51 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(selfCopy, v33, v34);
      objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v6, v52, v51);
    }

    if (selfCopy->_hasApplicationBundleIdentifierOverrideForNetworkAttribution)
    {
      v53 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(selfCopy, v33, v34);
      objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v6, v54, v53);
    }

    if (selfCopy->_hasAdditionalRequestHTTPHeaders)
    {
      v55 = objc_msgSend_additionalRequestHTTPHeaders(selfCopy, v33, v34);
      objc_msgSend_setAdditionalRequestHTTPHeaders_(v6, v56, v55);
    }

    if (selfCopy->_hasIsCloudKitSupportOperation)
    {
      isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(selfCopy, v33, v34);
      objc_msgSend_setIsCloudKitSupportOperation_(v6, v58, isCloudKitSupportOperation);
    }

    if (selfCopy->_hasCacheDeleteAvailableSpaceClass)
    {
      v59 = objc_msgSend_cacheDeleteAvailableSpaceClass(selfCopy, v33, v34);
      objc_msgSend_setCacheDeleteAvailableSpaceClass_(v6, v60, v59);
    }

    if (selfCopy->_hasAssetDownloadStagingManager)
    {
      v61 = objc_msgSend_assetDownloadStagingManager(selfCopy, v33, v34);
      objc_msgSend_setAssetDownloadStagingManager_(v6, v62, v61);
    }

    if (selfCopy->_hasRequestOriginator)
    {
      v63 = objc_msgSend_requestOriginator(selfCopy, v33, v34);
      objc_msgSend_setRequestOriginator_(v6, v64, v63);
    }
  }

  v65 = objc_msgSend_mTestErrorInducerBoxes(selfCopy, v33, v34);
  v68 = objc_msgSend_mutableCopy(v65, v66, v67);
  v69 = v6[22];
  v6[22] = v68;

  v72 = objc_msgSend_mTestResultOverlayBoxes(selfCopy, v70, v71);
  v75 = objc_msgSend_mutableCopy(v72, v73, v74);
  v76 = v6[23];
  v6[23] = v75;

  v79 = objc_msgSend_unitTestOverrides(selfCopy, v77, v78);
  v82 = objc_msgSend_copy(v79, v80, v81);
  v83 = v6[20];
  v6[20] = v82;

  objc_sync_exit(selfCopy);
  return v6;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  publicCopy = public;
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_initWithCapacity_(v7, v8, 4);
  if (self && self->_hasContainer)
  {
    v12 = objc_msgSend_container(self, v9, v10);
    v15 = objc_msgSend_containerIdentifier(v12, v13, v14);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v16, @"container", v15);
  }

  if (publicCopy)
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
  if (publicCopy)
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
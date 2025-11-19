@interface CKContainerImplementation
+ (int)registerForDaemonNotificationsWithKey:(id)a3 callback:(id)a4;
+ (void)initialize;
+ (void)unregisterForDaemonNotificationsWithToken:(int)a3;
- (BOOL)__preflightAccountAccessAuthorization:(int64_t *)a3;
- (BOOL)beginContentAccess;
- (BOOL)getPersona:(id *)a3 error:(id *)a4;
- (BOOL)isContentDiscarded;
- (CKContainer)unconfiguredWrappingContainer;
- (CKContainerImplementation)initWithContainerID:(id)a3 options:(id)a4;
- (CKDatabaseImplementation)organizationCloudDatabaseImplementation;
- (CKDatabaseImplementation)privateCloudDatabaseImplementation;
- (CKDatabaseImplementation)publicCloudDatabaseImplementation;
- (CKDatabaseImplementation)sharedCloudDatabaseImplementation;
- (CKRecordID)containerScopedUserID;
- (CKRecordID)orgAdminUserID;
- (CKXPCConnection)connection;
- (NSString)containerIdentifier;
- (NSString)pushEnvironment;
- (NSXPCConnection)discretionaryXPCConnection;
- (id)CKPropertiesDescription;
- (id)CKStatusReportArray;
- (id)_discretionaryDaemonMachServiceConnection;
- (id)accountInfoFetchQueue;
- (id)applicationBundleIdentifierForPush;
- (id)codeServiceImplementationWithName:(id)a3 databaseScope:(int64_t)a4;
- (id)codeServiceImplementationWithName:(id)a3 databaseScope:(int64_t)a4 serviceInstanceURL:(id)a5;
- (id)networkTransferEndpointWithError:(id *)a3;
- (id)primaryIdentifier;
- (id)serverPreferredPushEnvironmentWithError:(id *)a3;
- (id)setupInfo;
- (id)sourceApplicationBundleIdentifier;
- (id)sourceApplicationSecondaryIdentifier;
- (id)targetPersonaForPersona:(id)a3;
- (void)_addPreparedConvenienceOperation:(id)a3;
- (void)_refreshAccountAccessAuthorizationWithCompletionHandler:(id)a3;
- (void)_scheduleConvenienceOperation:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5;
- (void)_submitEventMetric:(id)a3 completionHandler:(id)a4;
- (void)acceptShareMetadata:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)accountInfoWithCompletionHandler:(id)a3;
- (void)accountStatusWithCompletionHandler:(id)a3;
- (void)addOperation:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5;
- (void)clearContainerFromMetadataCache;
- (void)clearPILSCacheForLookupInfos:(id)a3;
- (void)consumeSandboxExtensions:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)decryptPersonalInfoOnShare:(id)a3 completionHandler:(id)a4;
- (void)discardContentIfPossible;
- (void)discoverAllIdentitiesWithWrappingContainer:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5;
- (void)discoverUserIdentityWithEmailAddress:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)discoverUserIdentityWithPhoneNumber:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)discoverUserIdentityWithUserRecordID:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)dropDetachedContainersWithCompletionHandler:(id)a3;
- (void)dumpDaemonStatusReportToFileHandle:(id)a3 completionHandler:(id)a4;
- (void)endContentAccess;
- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(id)a3;
- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3;
- (void)fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:(id)a3;
- (void)fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:(id)a3;
- (void)fetchGlobalPerUserBoundaryKeyWithCompletionHandler:(id)a3;
- (void)fetchLongLivedOperationWithID:(id)a3 wrappingContainer:(id)a4 completionHandler:(id)a5;
- (void)fetchOrgAdminUserRecordIDWithCompletionHandler:(id)a3;
- (void)fetchServerEnvironment:(id)a3;
- (void)fetchShareMetadataWithURL:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchShareParticipantWithEmailAddress:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchShareParticipantWithLookupInfo:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchShareParticipantWithPhoneNumber:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchShareParticipantWithUserRecordID:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchSignatureGeneratorForCurrentUserBoundaryKeyWithCompletionHandler:(id)a3;
- (void)fetchUserRecordIDWithCompletionHandler:(id)a3;
- (void)frameworkCachesDirectoryWithCompletionHandler:(id)a3;
- (void)getCloudCoreSessionValidityError:(id)a3;
- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)a3;
- (void)getOutstandingOperationCountWithCompletionHandler:(id)a3;
- (void)getPersona:(id)a3;
- (void)getRegisteredItemCountWithCompletionHandler:(id)a3;
- (void)handleRecordChanged:(id)a3 changeType:(int64_t)a4 record:(id)a5 error:(id)a6;
- (void)performBlock:(id)a3;
- (void)pushEnvironmentWithCompletionHandler:(id)a3;
- (void)registerForAssetRequests:(id)a3 packageRequests:(id)a4 machServiceName:(id)a5;
- (void)registerForAssetUploadRequests:(id)a3 machServiceName:(id)a4;
- (void)registerForPackageUploadRequests:(id)a3 machServiceName:(id)a4;
- (void)reloadAccountWithCompletionHandler:(id)a3;
- (void)representativeDataclassEnabledWithCompletionHandler:(id)a3;
- (void)requestAccessToShareURLs:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)requestApplicationPermission:(unint64_t)a3 completionHandler:(id)a4;
- (void)resetAllApplicationPermissionsWithCompletionHandler:(id)a3;
- (void)resolvePersonaValues:(id)a3;
- (void)serverPreferredPushEnvironmentSynchronous:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)a3;
- (void)setApplicationPermission:(unint64_t)a3 enabled:(BOOL)a4 completionHandler:(id)a5;
- (void)setContainerScopedUserID:(id)a3;
- (void)setFakeError:(id)a3 forNextRequestOfClassName:(id)a4;
- (void)setFakeResponseOperationResult:(id)a3 forNextRequestOfClassName:(id)a4 forItemID:(id)a5 withLifetime:(int)a6;
- (void)setOrgAdminUserID:(id)a3;
- (void)setPushEnvironment:(id)a3;
- (void)setSourceApplicationBundleIdentifier:(id)a3;
- (void)setSourceApplicationSecondaryIdentifier:(id)a3;
- (void)simulateMemoryPressure:(int64_t)a3 completionHandler:(id)a4;
- (void)statusForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4;
- (void)statusGroupsForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4;
- (void)submitEventMetric:(id)a3;
- (void)submitEventMetric:(id)a3 completionHandler:(id)a4;
- (void)tossConfigWithCompletionHandler:(id)a3;
- (void)unregisterFromUploadRequestsWithMachServiceName:(id)a3;
- (void)wipeAllCachesAndDie;
- (void)withUploadManager:(int)a3 performBlock:(id)a4;
@end

@implementation CKContainerImplementation

- (id)accountInfoFetchQueue
{
  v3 = objc_msgSend_options(self, a2, v2);
  v6 = objc_msgSend_bypassPCSEncryption(v3, v4, v5);

  if (v6)
  {
    v7 = &qword_1ED4B60E8;
    if (qword_1ED4B60F8 != -1)
    {
      dispatch_once(&qword_1ED4B60F8, &unk_1EFA2E728);
    }
  }

  else
  {
    v7 = &qword_1ED4B60F0;
  }

  v8 = *v7;

  return v8;
}

- (id)setupInfo
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!objc_msgSend_hasCachedSetupInfo(v2, v3, v4))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      containerID = v2->_containerID;
      v19 = 138412290;
      v20 = containerID;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Creating cached setup info for %@", &v19, 0xCu);
    }

    v6 = [CKContainerSetupInfo alloc];
    v7 = v2->_containerID;
    v10 = objc_msgSend_options(v2, v8, v9);
    v12 = objc_msgSend_initWithContainerID_options_(v6, v11, v7, v10);
    cachedSetupInfo = v2->_cachedSetupInfo;
    v2->_cachedSetupInfo = v12;

    objc_msgSend_setHasCachedSetupInfo_(v2, v14, 1);
  }

  v15 = v2->_cachedSetupInfo;
  objc_sync_exit(v2);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (void)initialize
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_sharedOptions(CKBehaviorOptions, a2, v2);
  isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v3, v4, v5);

  if (isAppleInternalInstall)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "Wed Dec 31 16:00:00 1969";
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "CloudKit.framework was built at %s", &v15, 0xCu);
    }
  }

  if (!qword_1ED4B60E0)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.cloudkit.importantUserRecordAccess", v8);
    v10 = qword_1ED4B60E0;
    qword_1ED4B60E0 = v9;
  }

  if (!qword_1ED4B60F0)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.cloudkit.accountInfoFetchQueue.usesPCS", v11);
    v13 = qword_1ED4B60F0;
    qword_1ED4B60F0 = v12;
  }

  CKOncePerBoot(@"CKAccountInfoCacheReset", &unk_1EFA2E608);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, 3);
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_containerID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"containerID=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v13 = objc_msgSend_options(self, v11, v12);
  v16 = objc_msgSend_testDeviceReferenceProtocol(v13, v14, v15);

  if (v16)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_options(self, v17, v18);
    v23 = objc_msgSend_testDeviceReferenceProtocol(v20, v21, v22);
    v26 = objc_msgSend_deviceID(v23, v24, v25);
    v28 = objc_msgSend_stringWithFormat_(v19, v27, @"testDeviceID=%@", v26);
    objc_msgSend_addObject_(v3, v29, v28);
  }

  v30 = objc_msgSend_options(self, v17, v18);
  v33 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v30, v31, v32);

  if (v33)
  {
    v36 = MEMORY[0x1E696AEC0];
    v37 = objc_msgSend_options(self, v34, v35);
    v40 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v37, v38, v39);
    v42 = objc_msgSend_stringWithFormat_(v36, v41, @"applicationBundleIdentifierOverrideForContainerAccess=%@", v40);
    objc_msgSend_addObject_(v3, v43, v42);
  }

  v44 = objc_msgSend_options(self, v34, v35);
  v47 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v44, v45, v46);

  if (v47)
  {
    v50 = MEMORY[0x1E696AEC0];
    v51 = objc_msgSend_options(self, v48, v49);
    v54 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v51, v52, v53);
    v56 = objc_msgSend_stringWithFormat_(v50, v55, @"applicationBundleIdentifierOverrideForNetworkAttribution=%@", v54);
    objc_msgSend_addObject_(v3, v57, v56);
  }

  v58 = objc_msgSend_options(self, v48, v49);
  v61 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v58, v59, v60);

  if (v61)
  {
    v64 = MEMORY[0x1E696AEC0];
    v65 = objc_msgSend_options(self, v62, v63);
    v68 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v65, v66, v67);
    v70 = objc_msgSend_stringWithFormat_(v64, v69, @"applicationBundleIdentifierOverrideForPushTopicGeneration=%@", v68);
    objc_msgSend_addObject_(v3, v71, v70);
  }

  v72 = objc_msgSend_options(self, v62, v63);
  v75 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v72, v73, v74);

  if (v75)
  {
    v78 = MEMORY[0x1E696AEC0];
    v79 = objc_msgSend_options(self, v76, v77);
    v82 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v79, v80, v81);
    v84 = objc_msgSend_stringWithFormat_(v78, v83, @"applicationBundleIdentifierOverrideForTCC=%@", v82);
    objc_msgSend_addObject_(v3, v85, v84);
  }

  v86 = objc_msgSend_options(self, v76, v77);
  v89 = objc_msgSend_bypassPCSEncryption(v86, v87, v88);

  if (v89)
  {
    v92 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"bypassPCS");
    objc_msgSend_addObject_(v3, v93, v92);
  }

  v94 = objc_msgSend_sourceApplicationBundleIdentifier(self, v90, v91);
  v98 = objc_msgSend_sourceApplicationSecondaryIdentifier(self, v95, v96);
  if (v94)
  {
    v99 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v97, @"sourceApplicationBundleIdentifier=%@", v94);
    objc_msgSend_addObject_(v3, v100, v99);
  }

  if (v98)
  {
    v101 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v97, @"applicationSecondaryID=%@", v98);
    objc_msgSend_addObject_(v3, v102, v101);
  }

  v103 = objc_msgSend_componentsJoinedByString_(v3, v97, @", ");

  return v103;
}

- (id)sourceApplicationBundleIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sourceApplicationBundleIdentifier_locked;
  objc_sync_exit(v2);

  return v3;
}

- (id)sourceApplicationSecondaryIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sourceApplicationSecondaryIdentifier_locked;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)containerIdentifier
{
  v3 = objc_msgSend_containerID(self, a2, v2);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (CKDatabaseImplementation)privateCloudDatabaseImplementation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_privateCloudDatabaseImplementation)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_msgSend_containerID(v2, v4, v5);
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Creating private database implementation for container %@", &v14, 0xCu);
    }

    v6 = [CKDatabaseImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_scope_(v6, v7, v2, 2);
    privateCloudDatabaseImplementation = v2->_privateCloudDatabaseImplementation;
    v2->_privateCloudDatabaseImplementation = inited;
  }

  objc_sync_exit(v2);

  v10 = v2->_privateCloudDatabaseImplementation;
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (CKRecordID)containerScopedUserID
{
  dispatch_assert_queue_V2(qword_1ED4B60E0);
  containerScopedUserID_locked = self->_containerScopedUserID_locked;

  return containerScopedUserID_locked;
}

- (CKDatabaseImplementation)publicCloudDatabaseImplementation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_publicCloudDatabaseImplementation)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_msgSend_containerID(v2, v4, v5);
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Creating public database implementation for container %@", &v14, 0xCu);
    }

    v6 = [CKDatabaseImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_scope_(v6, v7, v2, 1);
    publicCloudDatabaseImplementation = v2->_publicCloudDatabaseImplementation;
    v2->_publicCloudDatabaseImplementation = inited;
  }

  objc_sync_exit(v2);

  v10 = v2->_publicCloudDatabaseImplementation;
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSString)pushEnvironment
{
  os_unfair_lock_lock(&unk_1ED4B6058);
  v3 = self->_pushEnvironment;
  os_unfair_lock_unlock(&unk_1ED4B6058);

  return v3;
}

- (CKXPCConnection)connection
{
  v3 = objc_msgSend_deviceContext(self, a2, v2);
  v6 = objc_msgSend_connection(v3, v4, v5);

  return v6;
}

- (CKDatabaseImplementation)sharedCloudDatabaseImplementation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sharedCloudDatabaseImplementation)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_msgSend_containerID(v2, v4, v5);
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Creating shared database implementation for container %@", &v14, 0xCu);
    }

    v6 = [CKDatabaseImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_scope_(v6, v7, v2, 3);
    sharedCloudDatabaseImplementation = v2->_sharedCloudDatabaseImplementation;
    v2->_sharedCloudDatabaseImplementation = inited;
  }

  objc_sync_exit(v2);

  v10 = v2->_sharedCloudDatabaseImplementation;
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v6 = v4;
  if (self)
  {
    objc_msgSend_removeObserver_(v4, v5, self->_connectionInterruptedObserver);
  }

  else
  {
    objc_msgSend_removeObserver_(v4, v5, 0);
  }

  objc_msgSend_invalidate(self->_discretionaryXPCConnection, v7, v8);
  statusReportToken = self->_statusReportToken;
  if (statusReportToken != -1)
  {
    notify_cancel(statusReportToken);
  }

  sub_1885387A0(self, self->_sandboxExtensionHandles);
  v10.receiver = self;
  v10.super_class = CKContainerImplementation;
  [(CKContainerImplementation *)&v10 dealloc];
}

- (CKContainerImplementation)initWithContainerID:(id)a3 options:(id)a4
{
  v193[8] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v10 = a4;
  v185 = v7;
  if (!v7)
  {
    v153 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v153, v154, a2, self, @"CKContainer.m", 352, @"Invalid parameter not satisfying: %@", @"containerID != nil");
  }

  v190.receiver = self;
  v190.super_class = CKContainerImplementation;
  v13 = [(CKContainerImplementation *)&v190 init];
  if (!v13)
  {
    goto LABEL_21;
  }

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v184 = v10;
  v14 = objc_msgSend_copy(v10, v11, v12);
  v15 = *(v13 + 17);
  *(v13 + 17) = v14;

  v18 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v16, v17);
  v21 = objc_msgSend_untrustedEntitlements(v18, v19, v20);

  v24 = objc_msgSend_fakeEntitlements(*(v13 + 17), v22, v23);
  v27 = objc_msgSend_count(v24, v25, v26);

  if (v27)
  {
    v30 = objc_msgSend_fakeEntitlements(*(v13 + 17), v28, v29);
    v32 = objc_msgSend_entitlementsByAddingOverlay_(v21, v31, v30);
    v33 = *(v13 + 23);
    *(v13 + 23) = v32;
  }

  else
  {
    v34 = v21;
    v30 = *(v13 + 23);
    *(v13 + 23) = v34;
  }

  v35 = *(v13 + 23);
  v36 = CKSDKVersion();
  v191 = 0;
  v38 = objc_msgSend_validateEntitlementsWithSDKVersion_error_(v35, v37, v36, &v191);
  v39 = v191;
  v40 = v39;
  if ((v38 & 1) == 0)
  {
    v155 = [CKException alloc];
    v158 = objc_msgSend_code(v40, v156, v157);
    v161 = objc_msgSend_localizedDescription(v40, v159, v160);
    v163 = objc_msgSend_initWithCode_format_(v155, v162, v158, @"%@", v161);
    v164 = v163;

    objc_exception_throw(v163);
  }

  v43 = objc_msgSend_untrustedEntitlements(v13, v41, v42);
  hasMasqueradingEntitlement = objc_msgSend_hasMasqueradingEntitlement(v43, v44, v45);
  v49 = objc_msgSend_cloudServices(v43, v47, v48);
  if (objc_msgSend_containsObject_(v49, v50, @"CloudKit"))
  {

LABEL_13:
    v60 = objc_msgSend_copy(v185, v58, v59);
    v61 = *(v13 + 16);
    *(v13 + 16) = v60;

    v62 = MEMORY[0x1E696AEC0];
    v65 = objc_msgSend_containerIdentifier(*(v13 + 16), v63, v64);
    v67 = objc_msgSend_stringWithFormat_(v62, v66, @"%@.%@", @"com.apple.cloudkit.container-queue", v65);
    v68 = v67;
    v71 = objc_msgSend_UTF8String(v67, v69, v70);
    v72 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v73 = dispatch_queue_create(v71, v72);
    v74 = *(v13 + 25);
    *(v13 + 25) = v73;

    v75 = objc_opt_new();
    v76 = *(v13 + 28);
    *(v13 + 28) = v75;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v13 + 28), v77, 6);
    objc_msgSend_setUnderlyingQueue_(*(v13 + 28), v78, *(v13 + 25));
    v79 = objc_opt_new();
    v80 = *(v13 + 19);
    *(v13 + 19) = v79;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v13 + 19), v81, 6);
    objc_msgSend_setUnderlyingQueue_(*(v13 + 19), v82, *(v13 + 25));
    v83 = objc_opt_new();
    v84 = *(v13 + 20);
    *(v13 + 20) = v83;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v13 + 20), v85, 4);
    objc_msgSend_setUnderlyingQueue_(*(v13 + 20), v86, *(v13 + 25));
    v87 = objc_opt_new();
    v88 = *(v13 + 21);
    *(v13 + 21) = v87;

    objc_msgSend_setMaxConcurrentOperationCount_(*(v13 + 21), v89, 4);
    objc_msgSend_setUnderlyingQueue_(*(v13 + 21), v90, *(v13 + 25));
    v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v92 = *(v13 + 29);
    *(v13 + 29) = v91;

    *(v13 + 4) = 0;
    v95 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v93, v94);
    v96 = *(v13 + 31);
    *(v13 + 31) = v95;

    v180 = objc_msgSend_persona(v184, v97, v98);
    objc_msgSend_resolvePersonaValues_(v13, v99, v184);
    v191 = -1;
    if ((objc_msgSend___preflightAccountAccessAuthorization_(v13, v100, &v191) & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v101 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location) = 0;
        _os_log_debug_impl(&dword_1883EA000, v101, OS_LOG_TYPE_DEBUG, "Deferring initial account access authorization, unable to preflight", &location, 2u);
      }
    }

    *(v13 + 32) = v191;
    objc_initWeak(&location, v13);
    out_token = -1;
    v177 = CKNotificationKey(@"CKStatusReport", 0);
    v104 = objc_msgSend_UTF8String(v177, v102, v103);
    v105 = CKGetGlobalQueue(17);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_188537CE0;
    handler[3] = &unk_1E70BC4F0;
    objc_copyWeak(&v187, &location);
    LODWORD(v104) = notify_register_dispatch(v104, &out_token, v105, handler);

    v106 = out_token;
    if (v104)
    {
      v106 = -1;
    }

    *(v13 + 15) = v106;
    v107 = objc_opt_new();
    v108 = *(v13 + 30);
    *(v13 + 30) = v107;

    v192[0] = @"process";
    v183 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v109, v110);
    v182 = objc_msgSend_processName(v183, v111, v112);
    v193[0] = v182;
    v192[1] = @"containerID";
    v181 = objc_msgSend_containerIdentifier(v185, v113, v114);
    v193[1] = v181;
    v192[2] = @"containerEnvironment";
    v117 = objc_msgSend_environment(v185, v115, v116);
    v179 = CKContainerEnvironmentString(v117);
    v193[2] = v179;
    v192[3] = @"hasAccountOverride";
    v118 = MEMORY[0x1E696AD98];
    v178 = objc_msgSend_accountOverrideInfo(v184, v119, v120);
    v122 = objc_msgSend_numberWithInt_(v118, v121, v178 != 0);
    v193[3] = v122;
    v192[4] = @"currentPersonaType";
    v125 = objc_msgSend_currentPersona(CKPersona, v123, v124);
    v128 = objc_msgSend_type(v125, v126, v127);
    v129 = CKPersonaTypeDescription(v128);
    v193[4] = v129;
    v192[5] = @"launchPersonaType";
    v132 = objc_msgSend_launchPersona(CKPersona, v130, v131);
    v135 = objc_msgSend_type(v132, v133, v134);
    v136 = CKPersonaTypeDescription(v135);
    v193[5] = v136;
    v192[6] = @"optionsPersonaType";
    v139 = objc_msgSend_type(v180, v137, v138);
    v140 = CKPersonaTypeDescription(v139);
    v193[6] = v140;
    v192[7] = @"personaType";
    v143 = objc_msgSend_persona(v13, v141, v142);
    v146 = objc_msgSend_type(v143, v144, v145);
    v147 = CKPersonaTypeDescription(v146);
    v193[7] = v147;
    v149 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v148, v193, v192, 8);
    objc_msgSend_reportWithEventType_event_bundleIdentifier_completionHandler_(CKCloudTelemetryReporter, v150, @"ContainerInitialization", v149, 0, 0);

    objc_destroyWeak(&v187);
    objc_destroyWeak(&location);

    v10 = v184;
LABEL_21:

    v151 = *MEMORY[0x1E69E9840];
    return v13;
  }

  v53 = objc_msgSend_cloudServices(v43, v51, v52);
  v55 = objc_msgSend_containsObject_(v53, v54, @"CloudKit-Anonymous");

  if ((v55 | hasMasqueradingEntitlement))
  {
    goto LABEL_13;
  }

  v165 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v56, v57);
  v166 = [CKSignificantIssue alloc];
  v167 = [CKSourceCodeLocation alloc];
  v169 = objc_msgSend_initWithFilePath_lineNumber_(v167, v168, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKContainer.m", 747);
  v171 = objc_msgSend_initWithSourceCodeLocation_format_(v166, v170, v169, @"In order to use CloudKit, your process must have a %@ entitlement. The value of this entitlement must be an array that includes the string %@ or %@.", @"com.apple.developer.icloud-services", @"CloudKit", @"CloudKit-Anonymous");
  objc_msgSend_handleSignificantIssue_actions_(v165, v172, v171, 0);

  v174 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v173, @"In order to use CloudKit, your process must have a %@ entitlement. The value of this entitlement must be an array that includes the string %@ or %@.", @"com.apple.developer.icloud-services", @"CloudKit", @"CloudKit-Anonymous");
  objc_msgSend_UTF8String(v174, v175, v176);
  result = _os_crash();
  __break(1u);
  return result;
}

- (CKDatabaseImplementation)organizationCloudDatabaseImplementation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_organizationCloudDatabaseImplementation)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_msgSend_containerID(v2, v4, v5);
      v14 = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Creating organization database implementation for container %@", &v14, 0xCu);
    }

    v6 = [CKDatabaseImplementation alloc];
    inited = objc_msgSend_initInternalWithContainerImplementation_scope_(v6, v7, v2, 4);
    organizationCloudDatabaseImplementation = v2->_organizationCloudDatabaseImplementation;
    v2->_organizationCloudDatabaseImplementation = inited;
  }

  objc_sync_exit(v2);

  v10 = v2->_organizationCloudDatabaseImplementation;
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)codeServiceImplementationWithName:(id)a3 databaseScope:(int64_t)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v9 = objc_msgSend_numberWithInteger_(v6, v8, a4);
  v10 = sub_1885381D4(self, v7, v9, 0);

  return v10;
}

- (id)codeServiceImplementationWithName:(id)a3 databaseScope:(int64_t)a4 serviceInstanceURL:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a3;
  v12 = objc_msgSend_numberWithInteger_(v8, v11, a4);
  v13 = sub_1885381D4(self, v10, v12, v9);

  return v13;
}

- (void)resolvePersonaValues:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_isSupported(CKPersona, v5, v6))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v59 = self;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Determining the persona for CKContainer %{public}@", buf, 0xCu);
    }

    v56 = 0;
    v57 = 0;
    Persona_error = objc_msgSend_getPersona_error_(v4, v8, &v57, &v56);
    v10 = v57;
    v13 = v56;
    if (Persona_error)
    {
      if (!v10)
      {
        v14 = objc_msgSend_launchPersona(CKPersona, v11, v12);
        v17 = objc_msgSend_type(v14, v15, v16);

        if (v17 == 3)
        {
          v20 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v18, v19);
          v21 = [CKSignificantIssue alloc];
          v22 = [CKSourceCodeLocation alloc];
          v24 = objc_msgSend_initWithFilePath_lineNumber_(v22, v23, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKContainer.m", 614);
          v26 = objc_msgSend_initWithSourceCodeLocation_format_(v21, v25, v24, @"System processes must provide explicit persona or account via CKContainerOptions");
          objc_msgSend_handleSignificantIssue_actions_(v20, v27, v26, 1);
        }

        v28 = objc_msgSend_sharedOptions(CKBehaviorOptions, v18, v19);
        v31 = objc_msgSend_defaultContainerToLaunchPersona(v28, v29, v30);

        if (v31)
        {
          objc_msgSend_launchPersona(CKPersona, v32, v33);
        }

        else
        {
          objc_msgSend_currentPersona(CKPersona, v32, v33);
        }
        v10 = ;
      }
    }

    else
    {
      v34 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v11, v12);
      v35 = [CKSignificantIssue alloc];
      v36 = [CKSourceCodeLocation alloc];
      v38 = objc_msgSend_initWithFilePath_lineNumber_(v36, v37, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKContainer.m", 610);
      v41 = objc_msgSend_ckShortDescription(self, v39, v40);
      v43 = objc_msgSend_initWithSourceCodeLocation_format_(v35, v42, v38, @"Failed to resolve the persona for container %@ with error: %@", v41, v13);
      objc_msgSend_handleSignificantIssue_actions_(v34, v44, v43, 3);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v45 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v46 = v45;
      v49 = objc_msgSend_ckShortDescription(self, v47, v48);
      *buf = 138543618;
      v59 = v49;
      v60 = 2112;
      v61 = v10;
      _os_log_impl(&dword_1883EA000, v46, OS_LOG_TYPE_INFO, "Determined the persona for CKContainer %{public}@: %@", buf, 0x16u);
    }

    persona = self->_persona;
    self->_persona = v10;
    v51 = v10;

    personaResolutionError = self->_personaResolutionError;
    self->_personaResolutionError = v13;
    v53 = v13;

    objc_msgSend_setPersona_(self->_options, v54, v51);
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (BOOL)getPersona:(id *)a3 error:(id *)a4
{
  if (a3)
  {
    *a3 = objc_msgSend_persona(self, a2, a3);
  }

  if (a4)
  {
    if (self)
    {
      v7 = self->_personaResolutionError;
    }

    else
    {
      v7 = 0;
    }

    *a4 = v7;
  }

  if (self)
  {
    personaResolutionError = self->_personaResolutionError;
  }

  else
  {
    personaResolutionError = 0;
  }

  return personaResolutionError == 0;
}

- (id)targetPersonaForPersona:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!objc_msgSend_isSupported(CKPersona, v4, v5))
  {
    v18 = 0;
    goto LABEL_28;
  }

  v8 = objc_msgSend_currentPersona(CKPersona, v6, v7);
  v11 = v8;
  if (!v3 || !v8)
  {
    if (objc_msgSend_isDataSeparated(v3, v9, v10))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      v13 = v21;
      v16 = objc_msgSend_ckShortDescription(v3, v39, v40);
      v41 = 138412290;
      v42 = v16;
      v17 = "Determined the target persona is (or may be) data separated, will adopt %@";
      goto LABEL_32;
    }

    isDataSeparated = objc_msgSend_isDataSeparated(v11, v19, v20);
    if (CKBoolFromCKTernary(isDataSeparated, v23, v24))
    {
      v26 = objc_msgSend_personasWithType_error_(CKPersona, v25, 1, 0);
      v18 = objc_msgSend_firstObject(v26, v27, v28);

      if (objc_msgSend_canAdopt(v18, v29, v30))
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v31 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          v32 = v31;
          v35 = objc_msgSend_ckShortDescription(v18, v33, v34);
          v41 = 138412290;
          v42 = v35;
          _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Determined the current persona is data separated, will adopt %@", &v41, 0xCu);
        }

        goto LABEL_27;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v36 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v41) = 0;
        _os_log_error_impl(&dword_1883EA000, v36, OS_LOG_TYPE_ERROR, "Determined the current persona is data separated, cannot adopt target persona", &v41, 2u);
      }
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  if (objc_msgSend_isEquivalentToPersona_(v3, v9, v8))
  {
    goto LABEL_26;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_14;
  }

  v13 = v12;
  v16 = objc_msgSend_ckShortDescription(v3, v14, v15);
  v41 = 138412290;
  v42 = v16;
  v17 = "Determined the current and target persona are not equivalent, will adopt %@";
LABEL_32:
  _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, v17, &v41, 0xCu);

LABEL_14:
  v18 = v3;
LABEL_27:

LABEL_28:
  v37 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = 0;
  Persona_error = objc_msgSend_getPersona_error_(self, v5, &v36, &v35);
  v7 = v36;
  v9 = v35;
  if (Persona_error)
  {
    v12 = objc_msgSend_targetPersonaForPersona_(self, v8, v7);
    if (!v12)
    {
      v4[2](v4, 0);
      goto LABEL_12;
    }

    if (self)
    {
      if (self->_hasReportedPersonaAdoptionError)
      {
        v31 = 0;
LABEL_11:
        v13 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v10, v11);
        v14 = [CKSignificantIssue alloc];
        v15 = [CKSourceCodeLocation alloc];
        v17 = objc_msgSend_initWithFilePath_lineNumber_(v15, v16, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKContainer.m", 704);
        v20 = objc_msgSend_ckShortDescription(self, v18, v19);
        v23 = objc_msgSend_currentPersona(CKPersona, v21, v22);
        v26 = objc_msgSend_ckShortDescription(v23, v24, v25);
        v28 = objc_msgSend_initWithSourceCodeLocation_format_(v14, v27, v17, @"Attempt to access container %@ with invalid persona %@", v20, v26);
        objc_msgSend_handleSignificantIssue_actions_(v13, v29, v28, v31);

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_188539328;
        v32[3] = &unk_1E70BC518;
        v33 = v7;
        v34 = v4;
        objc_msgSend_performBlock_(v12, v30, v32);

        goto LABEL_12;
      }

      self->_hasReportedPersonaAdoptionError = 1;
    }

    v31 = 3;
    goto LABEL_11;
  }

  v12 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v8, @"CKErrorDomain", 5, v9, @"Failed to resolve persona for container");
  (v4)[2](v4, v12);
LABEL_12:
}

- (void)getPersona:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/get-persona", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188539550;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1885395C8;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (id)_discretionaryDaemonMachServiceConnection
{
  v3 = @"com.apple.ckdiscretionaryd";
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA2E628);
  }

  if ((_sCKUseSystemInstalledBinaries & 1) == 0)
  {
    v8 = objc_msgSend_stringByAppendingString_(v3, v2, @".debug");

    v3 = v8;
  }

  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  v6 = objc_msgSend_initWithMachServiceName_options_(v4, v5, v3, 0);

  return v6;
}

- (NSXPCConnection)discretionaryXPCConnection
{
  v3 = self;
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_daemonConnectionLock;
  }

  objc_msgSend_lock(self, a2, v2);
  v4 = v3->_discretionaryXPCConnection;
  v7 = v4;
  if (!v3->_hasValidDiscretionaryXPCConnection || v4 == 0)
  {
    objc_initWeak(&location, v3);
    v24 = objc_msgSend__discretionaryDaemonMachServiceConnection(v3, v9, v10);

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_18853A8B8;
    v29[3] = &unk_1E70BC680;
    objc_copyWeak(&v30, &location);
    objc_msgSend_setInterruptionHandler_(v24, v11, v29);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_18853A998;
    v27[3] = &unk_1E70BC680;
    objc_copyWeak(&v28, &location);
    objc_msgSend_setInvalidationHandler_(v24, v12, v27);
    v15 = objc_msgSend__CKXPCClientToDiscretionaryDaemonInterface(CKContainer, v13, v14);
    objc_msgSend_setRemoteObjectInterface_(v24, v16, v15);

    v17 = sub_1885AADF8([CKContainerCallbackProxy alloc], v3);
    objc_msgSend_setExportedObject_(v24, v18, v17);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v24;
      _os_log_impl(&dword_1883EA000, v19, OS_LOG_TYPE_INFO, "Created a new connection: %@", buf, 0xCu);
    }

    objc_msgSend_invalidate(v3->_discretionaryXPCConnection, v20, v21);
    objc_storeStrong(&v3->_discretionaryXPCConnection, v24);
    v3->_hasValidDiscretionaryXPCConnection = v24 != 0;
    objc_msgSend_resume(v24, v22, v23);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v24 = v4;
  }

  objc_msgSend_unlock(v3->_daemonConnectionLock, v5, v6);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)consumeSandboxExtensions:(id)a3 reply:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9))
  {
    if (self)
    {
      sandboxExtensionHandles = self->_sandboxExtensionHandles;
    }

    else
    {
      sandboxExtensionHandles = 0;
    }

    obj = sandboxExtensionHandles;
    objc_sync_enter(obj);
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = objc_msgSend_count(v6, v12, v13);
    v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = v6;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v48, v56, 16);
    if (v20)
    {
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v17);
          }

          objc_msgSend_cStringUsingEncoding_(*(*(&v48 + 1) + 8 * i), v19, 4);
          v23 = sandbox_extension_consume();
          if ((v23 & 0x8000000000000000) == 0)
          {
            v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, v23);
            objc_msgSend_addObject_(v16, v25, v24);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v48, v56, 16);
      }

      while (v20);
    }

    if (self)
    {
      v26 = self->_sandboxExtensionHandles;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v30 = objc_msgSend_copy(v27, v28, v29);

    if (self)
    {
      v31 = self->_sandboxExtensionHandles;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    objc_msgSend_removeAllObjects(v32, v33, v34);

    if (self)
    {
      v35 = self->_sandboxExtensionHandles;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    objc_msgSend_addObjectsFromArray_(v36, v37, v16);

    objc_sync_exit(obj);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      v40 = v38;
      v43 = objc_msgSend_count(v17, v41, v42);
      v46 = objc_msgSend_containerID(self, v44, v45);
      *buf = 134218242;
      v53 = v43;
      v54 = 2112;
      v55 = v46;
      _os_log_debug_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEBUG, "Consumed %lu sandbox extensions for container %@", buf, 0x16u);
    }

    sub_1885387A0(self, v30);
    v7[2](v7, 0);
  }

  else
  {
    v7[2](v7, 0);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_addPreparedConvenienceOperation:(id)a3
{
  if (self)
  {
    self = self->_convenienceOperationQueue;
  }

  objc_msgSend_addOperation_(self, a2, a3);
}

- (void)addOperation:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [CKException alloc];
    v18 = objc_msgSend_initWithCode_format_(v16, v17, 12, @"CKDatabaseOperations must be submitted to a CKDatabase");
    objc_exception_throw(v18);
  }

  v12 = objc_msgSend_configuration(v19, v10, v11);
  objc_msgSend_setContainer_(v12, v13, v8);

  objc_msgSend_applyConvenienceConfiguration_(v19, v14, v9);
  objc_msgSend__addPreparedConvenienceOperation_(self, v15, v19);
}

- (void)_scheduleConvenienceOperation:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = a3;
  objc_msgSend_configureConvenience_(v12, v10, v8);
  objc_msgSend_addOperation_wrappingContainer_convenienceConfiguration_(self, v11, v12, v9, v8);
}

- (void)statusGroupsForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_1883EA000, "client/status-groups-for-application-permission", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18853B2A0;
  v13[3] = &unk_1E70BC540;
  v14 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853B318;
  v10[3] = &unk_1E70BC6D0;
  v12 = a3;
  v8 = v14;
  v11 = v8;
  v9 = v8;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v13, v10);
    v9 = v11;
  }

  os_activity_scope_leave(&state);
}

- (void)setApplicationPermission:(unint64_t)a3 enabled:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = _os_activity_create(&dword_1883EA000, "client/set-application-permission-enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18853B598;
  v16[3] = &unk_1E70BC540;
  v17 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18853B610;
  v12[3] = &unk_1E70BC720;
  v14 = a3;
  v15 = a4;
  v10 = v17;
  v13 = v10;
  v11 = v10;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v16, v12);
    v11 = v13;
  }

  os_activity_scope_leave(&state);
}

- (void)resetAllApplicationPermissionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/reset-all-application-permissions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853B888;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853B8FC;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)tossConfigWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/toss-config", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853BB58;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853BBCC;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)setPushEnvironment:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&unk_1ED4B6058);
  pushEnvironment = self->_pushEnvironment;
  self->_pushEnvironment = v4;

  os_unfair_lock_unlock(&unk_1ED4B6058);
}

- (void)pushEnvironmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/push-environment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10 = objc_msgSend_pushEnvironment(self, v6, v7);
  if (!v10)
  {
    v12 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v8, v9);
    v15 = objc_msgSend_untrustedEntitlements(v12, v13, v14);
    v18 = objc_msgSend_apsEnvironmentEntitlement(v15, v16, v17);

    if (!v18)
    {
      if (v4)
      {
        (*(v4 + 2))(v4, *MEMORY[0x1E698CF20], 0);
      }

      goto LABEL_21;
    }

    if (!objc_msgSend_caseInsensitiveCompare_(v18, v19, @"serverpreferred"))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v21 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(location[0]) = 0;
        _os_log_debug_impl(&dword_1883EA000, v21, OS_LOG_TYPE_DEBUG, "Determining server preferred push environment", location, 2u);
      }

      objc_initWeak(location, self);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_18853C094;
      v23[3] = &unk_1E70BC748;
      objc_copyWeak(&v25, location);
      v24 = v4;
      objc_msgSend_serverPreferredPushEnvironmentWithCompletionHandler_(self, v22, v23);

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
      goto LABEL_21;
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Using adopter override push environment", location, 2u);
      if (!v4)
      {
        goto LABEL_21;
      }
    }

    else if (!v4)
    {
LABEL_21:

      goto LABEL_22;
    }

    (*(v4 + 2))(v4, v18, 0);
    goto LABEL_21;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Using cached server preferred push environment", location, 2u);
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    (*(v4 + 2))(v4, v10, 0);
  }

LABEL_22:

  os_activity_scope_leave(&state);
}

- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching server preferred push environment asynchronously", v7, 2u);
  }

  objc_msgSend_serverPreferredPushEnvironmentSynchronous_withCompletionHandler_(self, v6, 0, v4);
}

- (id)serverPreferredPushEnvironmentWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1883ED874;
  v22 = sub_1883EF590;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1883ED874;
  v16 = sub_1883EF590;
  v17 = 0;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Fetching server preferred push environment synchronously", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853C4F8;
  v10[3] = &unk_1E70BC770;
  v10[4] = &v18;
  v10[5] = &v12;
  objc_msgSend_serverPreferredPushEnvironmentSynchronous_withCompletionHandler_(self, v6, 1, v10);
  if (a3)
  {
    v7 = v13[5];
    if (v7)
    {
      *a3 = v7;
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (void)serverPreferredPushEnvironmentSynchronous:(BOOL)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_1883EA000, "client/server-preferred-push-environment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18853C6E0;
  v12[3] = &unk_1E70BC540;
  v13 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853C758;
  v10[3] = &unk_1E70BC590;
  v8 = v13;
  v11 = v8;
  v9 = v8;
  if (self)
  {
    sub_1885397D0(self, a3, 1, 0, v12, v10);
    v9 = v11;
  }

  os_activity_scope_leave(&state);
}

- (void)setFakeError:(id)a3 forNextRequestOfClassName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/set-fake-error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18853C9E4;
  v15[3] = &unk_1E70BC048;
  v16 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18853CAD4;
  v12[3] = &unk_1E70BC7E0;
  v9 = v6;
  v13 = v9;
  v10 = v16;
  v14 = v10;
  v11 = v10;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v15, v12);
    v11 = v14;
  }

  os_activity_scope_leave(&state);
}

- (void)setFakeResponseOperationResult:(id)a3 forNextRequestOfClassName:(id)a4 forItemID:(id)a5 withLifetime:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _os_activity_create(&dword_1883EA000, "client/set-fake-response-operation-result", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18853CCA4;
  v23[3] = &unk_1E70BC048;
  v24 = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18853CD94;
  v18[3] = &unk_1E70BC808;
  v14 = v10;
  v19 = v14;
  v15 = v24;
  v20 = v15;
  v16 = v12;
  v21 = v16;
  v22 = a6;
  v17 = v16;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v23, v18);
    v17 = v21;
  }

  os_activity_scope_leave(&state);
}

- (void)getOutstandingOperationCountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/get-num-outstanding-operations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853CF10;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853CF88;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)getRegisteredItemCountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/get-num-registered-item-count", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853D1D8;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853D250;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)dropDetachedContainersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/drop-detached-containers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853D4A0;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853D514;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchSignatureGeneratorForCurrentUserBoundaryKeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18853D694;
  v7[3] = &unk_1E70BC858;
  v8 = v4;
  v5 = v4;
  objc_msgSend_fetchGlobalPerUserBoundaryKeyWithCompletionHandler_(self, v6, v7);
}

- (void)fetchGlobalPerUserBoundaryKeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-current-user-boundary-key", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Fetching boundary key", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18853D900;
  v11[3] = &unk_1E70BC540;
  v12 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18853DA20;
  v9[3] = &unk_1E70BC590;
  v7 = v12;
  v10 = v7;
  v8 = v7;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v11, v9);
    v8 = v10;
  }

  os_activity_scope_leave(&state);
}

- (void)setSourceApplicationBundleIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138543362;
    v14 = v5;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "setSourceApplicationBundleIdentifier:%{public}@", &v13, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  objc_storeStrong(&v7->_sourceApplicationBundleIdentifier_locked, a3);
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v7->_options, v8, v5);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v7->_options, v9, v5);
  objc_msgSend_setApplicationBundleIdentifierOverrideForPushTopicGeneration_(v7->_options, v10, v5);
  objc_msgSend_setHasCachedSetupInfo_(v7, v11, 0);
  objc_sync_exit(v7);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSourceApplicationSecondaryIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "setSourceApplicationSecondaryIdentifier:%{public}@", &v12, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v9 = objc_msgSend_copy(v4, v7, v8);
  sourceApplicationSecondaryIdentifier_locked = v6->_sourceApplicationSecondaryIdentifier_locked;
  v6->_sourceApplicationSecondaryIdentifier_locked = v9;

  objc_sync_exit(v6);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)wipeAllCachesAndDie
{
  v8 = objc_msgSend_connection(self, a2, v2);
  v5 = objc_msgSend_processScopedDaemonProxy(v8, v3, v4);
  objc_msgSend_wipeAllCachesAndDie(v5, v6, v7);
}

- (void)clearContainerFromMetadataCache
{
  v3 = _os_activity_create(&dword_1883EA000, "client/clear-container-from-metadata-cache", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, &unk_1EFA2E688, &unk_1EFA2E6A8);
  }

  os_activity_scope_leave(&v4);
}

- (void)clearPILSCacheForLookupInfos:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/clear-PILS-cache-for-lookup-infos", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853E244;
  v8[3] = &unk_1E70BC8A0;
  v6 = v4;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, &unk_1EFA2E6C8, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)representativeDataclassEnabledWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/dataclass-enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853E3AC;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853E494;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)getCloudCoreSessionValidityError:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/cloudcore-session-validity", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853E6E4;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853E7CC;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchServerEnvironment:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-server-environment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853EA44;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853EABC;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-current-device-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853ED0C;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853ED84;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-full-name-and-primary-email-on-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853EFE8;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853F064;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-full-name-and-formatted-username-on-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18853F2F4;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18853F370;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)submitEventMetric:(id)a3
{
  v4 = a3;
  if (byte_1EA919CC8 == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8.opaque[0]) = 0;
      _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Not submitting event metric for test host", &v8, 2u);
    }
  }

  else
  {
    v6 = _os_activity_create(&dword_1883EA000, "client/submit-event-metric", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8.opaque[0] = 0;
    v8.opaque[1] = 0;
    os_activity_scope_enter(v6, &v8);
    objc_msgSend__submitEventMetric_completionHandler_(self, v7, v4, 0);
    os_activity_scope_leave(&v8);
  }
}

- (void)submitEventMetric:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (byte_1EA919CC8 == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11.opaque[0]) = 0;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Not submitting event metric for test host", &v11, 2u);
    }

    v7[2](v7);
  }

  else
  {
    v9 = _os_activity_create(&dword_1883EA000, "client/submit-event-metric-with-completion-handler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v9, &v11);
    objc_msgSend__submitEventMetric_completionHandler_(self, v10, v6, v7);
    os_activity_scope_leave(&v11);
  }
}

- (void)_submitEventMetric:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9 = objc_msgSend_generateEventMetricInfo(a3, v7, v8);
  if (!v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1883EA000, v15, OS_LOG_TYPE_ERROR, "Failed to create CKEventMetricInfo", buf, 2u);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else if (!v6)
    {
      goto LABEL_14;
    }

    v6[2](v6);
    goto LABEL_14;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v14 = objc_msgSend_metricUUID(v9, v12, v13);
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&dword_1883EA000, v11, OS_LOG_TYPE_INFO, "Client submitting CKEventMetric %{public}@.", buf, 0xCu);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18853F9A4;
  v21[3] = &unk_1E70BC518;
  v22 = v9;
  v23 = v6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18853FAD8;
  v17[3] = &unk_1E70BC968;
  v18 = v22;
  v19 = self;
  v20 = v23;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v21, v17);
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

- (id)networkTransferEndpointWithError:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Getting network transfer endpoint for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_1883ED874;
  v26 = sub_1883EF590;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1883ED874;
  v21 = sub_1883EF590;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18853FE4C;
  v16[3] = &unk_1E70BC990;
  v16[4] = &buf;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18853FF48;
  v15[3] = &unk_1E70BC9E0;
  v15[4] = &buf;
  v15[5] = &v17;
  if (self)
  {
    sub_1885397D0(self, 1, 1, 0, v16, v15);
    objc_msgSend_CKClientSuitableError(*(*(&buf + 1) + 40), v8, v9);
  }

  else
  {
    objc_msgSend_CKClientSuitableError(0, v6, v7);
  }
  v10 = ;
  v11 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v10;

  if (a3)
  {
    *a3 = *(*(&buf + 1) + 40);
  }

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)handleRecordChanged:(id)a3 changeType:(int64_t)a4 record:(id)a5 error:(id)a6
{
  if (!a6)
  {
    v10 = a5;
    v11 = a3;
    v12 = [CKRecordChange alloc];
    v21 = objc_msgSend_initWithChangeType_recordID_record_(v12, v13, a4, v11, v10);

    v16 = objc_msgSend_sharedManager(CKRecordObserverManager, v14, v15);
    v19 = objc_msgSend_unconfiguredWrappingContainer(self, v17, v18);
    objc_msgSend_handleRecordChange_container_completionHandler_(v16, v20, v21, v19, 0);
  }
}

- (void)frameworkCachesDirectoryWithCompletionHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = self;
    _os_log_debug_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEBUG, "Retrieving client-accessible caches directory for %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188540494;
  v11[3] = &unk_1E70BC540;
  v12 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18854050C;
  v9[3] = &unk_1E70BC590;
  v6 = v12;
  v10 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v11, v9);
    v7 = v10;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)CKStatusReportArray
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_containerID(self, v5, v6);
  v10 = objc_msgSend_ckShortDescription(v7, v8, v9);
  v13 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v11, v12);
  v16 = objc_msgSend_processName(v13, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v4, v17, @"\n----- Client Status Report For %@ (client:%@)", v10, v16);
  objc_msgSend_addObject_(v3, v19, v18);

  v20 = MEMORY[0x1E696AEC0];
  v23 = objc_msgSend_throttlingOperationQueue(self, v21, v22);
  v26 = objc_msgSend_operationCount(v23, v24, v25);
  v29 = objc_msgSend_throttlingOperationQueue(self, v27, v28);
  v32 = objc_msgSend_maxConcurrentOperationCount(v29, v30, v31);
  v34 = objc_msgSend_stringWithFormat_(v20, v33, @"%@, %lu/%ld operations", self, v26, v32);
  objc_msgSend_addObject_(v3, v35, v34);

  objc_msgSend_addObject_(v3, v36, @"\n%%%%% Operations %%%%%");
  v39 = objc_msgSend_throttlingOperationQueue(self, v37, v38);
  v42 = objc_msgSend_operationCount(v39, v40, v41);

  if (v42)
  {
    objc_msgSend_addObject_(v3, v43, @"\nOperations on throttling queue: {");
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v46 = objc_msgSend_throttlingOperationQueue(self, v44, v45);
    v49 = objc_msgSend_operations(v46, v47, v48);

    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v83, v88, 16);
    if (v51)
    {
      v53 = v51;
      v54 = *v84;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v84 != v54)
          {
            objc_enumerationMutation(v49);
          }

          v56 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v52, @"\t%@", *(*(&v83 + 1) + 8 * i));
          objc_msgSend_addObject_(v3, v57, v56);
        }

        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v83, v88, 16);
      }

      while (v53);
    }

    objc_msgSend_addObject_(v3, v58, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v3, v43, @"No regular operations.");
  }

  if (self)
  {
    v61 = objc_msgSend_operationCount(self->_convenienceOperationQueue, v59, v60);
  }

  else
  {
    v61 = objc_msgSend_operationCount(0, v59, v60);
  }

  if (v61)
  {
    objc_msgSend_addObject_(v3, v62, @"\nOperations on convenience queue: {");
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    if (self)
    {
      objc_msgSend_operations(self->_convenienceOperationQueue, v63, v64);
    }

    else
    {
      objc_msgSend_operations(0, v63, v64);
    }
    v65 = ;
    v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v79, v87, 16);
    if (v67)
    {
      v69 = v67;
      v70 = *v80;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v80 != v70)
          {
            objc_enumerationMutation(v65);
          }

          v72 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68, @"\t%@", *(*(&v79 + 1) + 8 * j));
          objc_msgSend_addObject_(v3, v73, v72);
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v79, v87, 16);
      }

      while (v69);
    }

    objc_msgSend_addObject_(v3, v74, @"}");
  }

  else
  {
    objc_msgSend_addObject_(v3, v62, @"No convenience operations.");
  }

  objc_msgSend_addObject_(v3, v75, @"%%%%%%%%%%%%%%%%%%%%%%%%");
  objc_msgSend_addObject_(v3, v76, @"\n------------------------------");
  v77 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)dumpDaemonStatusReportToFileHandle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/dump-daemon-status-report", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188540B88;
  v15[3] = &unk_1E70BC540;
  v16 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188540BE8;
  v12[3] = &unk_1E70BCA08;
  v9 = v6;
  v13 = v9;
  v10 = v16;
  v14 = v10;
  v11 = v10;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v15, v12);
    v11 = v14;
  }

  os_activity_scope_leave(&state);
}

- (id)primaryIdentifier
{
  v3 = objc_msgSend_options(self, a2, v2);
  v6 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v3, v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = sub_1883F3978();
  }

  v9 = v8;

  return v9;
}

- (id)applicationBundleIdentifierForPush
{
  v4 = objc_msgSend_bundleRecordForCurrentProcess(MEMORY[0x1E6963620], a2, v2);
  objc_opt_class();
  v35 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_containingBundleRecord(v4, v5, v6);
    v10 = objc_msgSend_bundleIdentifier(v7, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v5, v6);
  v14 = objc_msgSend_untrustedEntitlements(v11, v12, v13);
  v17 = objc_msgSend_applicationBundleID(v14, v15, v16);
  v20 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v18, v19);
  v23 = objc_msgSend_untrustedEntitlements(v20, v21, v22);
  v26 = objc_msgSend_associatedApplicationBundleID(v23, v24, v25);
  v29 = objc_msgSend_options(self, v27, v28);
  v32 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v29, v30, v31);
  v33 = CKApplicationBundleIDForPush(v17, v26, v32, v10);

  return v33;
}

- (void)simulateMemoryPressure:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v7 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "Simulating memory pressure", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188541074;
  v13[3] = &unk_1E70BC540;
  v14 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188541178;
  v10[3] = &unk_1E70BC6D0;
  v12 = a3;
  v8 = v14;
  v11 = v8;
  v9 = v8;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v13, v10);
    v9 = v11;
  }
}

+ (int)registerForDaemonNotificationsWithKey:(id)a3 callback:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  out_token = 0;
  v7 = v5;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  v11 = CKGetGlobalQueue(17);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1885415B0;
  v19[3] = &unk_1E70BCA30;
  v12 = v6;
  v20 = v12;
  v13 = notify_register_dispatch(v10, &out_token, v11, v19);

  if (v13)
  {
    out_token = -1;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 1024;
      v25 = v13;
      _os_log_error_impl(&dword_1883EA000, v14, OS_LOG_TYPE_ERROR, "Failed to register for notifications with key: %@, status: %d", buf, 0x12u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v15 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v5;
      v24 = 1024;
      v25 = out_token;
      _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_INFO, "Registered for notifications with key: %@, token: %d", buf, 0x12u);
    }
  }

  v16 = out_token;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)unregisterForDaemonNotificationsWithToken:(int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 != -1)
  {
    notify_cancel(a3);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Unregistered for notifications with token: %d", v6, 8u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setContainerScopedUserID:(id)a3
{
  v4 = qword_1ED4B60E0;
  v5 = a3;
  dispatch_assert_queue_V2(v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  containerScopedUserID_locked = self->_containerScopedUserID_locked;
  self->_containerScopedUserID_locked = v8;
}

- (CKRecordID)orgAdminUserID
{
  dispatch_assert_queue_V2(qword_1ED4B60E0);
  orgAdminUserID_locked = self->_orgAdminUserID_locked;

  return orgAdminUserID_locked;
}

- (void)setOrgAdminUserID:(id)a3
{
  v4 = qword_1ED4B60E0;
  v5 = a3;
  dispatch_assert_queue_V2(v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  orgAdminUserID_locked = self->_orgAdminUserID_locked;
  self->_orgAdminUserID_locked = v8;
}

- (void)fetchUserRecordIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-user-record-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  sub_188541878(self, 0, v4);
  os_activity_scope_leave(&v6);
}

- (void)fetchOrgAdminUserRecordIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-org-admin-user-record-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v5, &v6);
  sub_188541878(self, 1, v4);
  os_activity_scope_leave(&v6);
}

- (void)discoverAllIdentitiesWithWrappingContainer:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_188542488;
  v24[3] = &unk_1E70BCAD0;
  v15 = v14;
  v25 = v15;
  objc_msgSend_setUserIdentityDiscoveredBlock_(v11, v16, v24);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_188542494;
  v21[3] = &unk_1E70BCAF8;
  v22 = v15;
  v23 = v8;
  v17 = v15;
  v18 = v8;
  objc_msgSend_setDiscoverAllUserIdentitiesCompletionBlock_(v11, v19, v21);
  objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(self, v20, v11, v10, v9);
}

- (void)discoverUserIdentityWithEmailAddress:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CKUserIdentityLookupInfo alloc];
  v16 = objc_msgSend_initWithEmailAddress_(v14, v15, v13);

  sub_1885424B8(self, v16, v12, v11, v10);
}

- (void)discoverUserIdentityWithPhoneNumber:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CKUserIdentityLookupInfo alloc];
  v16 = objc_msgSend_initWithPhoneNumber_(v14, v15, v13);

  sub_1885424B8(self, v16, v12, v11, v10);
}

- (void)discoverUserIdentityWithUserRecordID:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [CKUserIdentityLookupInfo alloc];
  v16 = objc_msgSend_initWithUserRecordID_(v14, v15, v13);

  sub_1885424B8(self, v16, v12, v11, v10);
}

- (void)fetchShareParticipantWithLookupInfo:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v35[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [CKFetchShareParticipantsOperation alloc];
  v35[0] = v10;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v35, 1);
  v18 = objc_msgSend_initWithUserIdentityLookupInfos_(v14, v17, v16);

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1883ED874;
  v33[4] = sub_1883EF590;
  v34 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_188542C30;
  v32[3] = &unk_1E70BCB70;
  v32[4] = v33;
  objc_msgSend_setPerShareParticipantCompletionBlock_(v18, v19, v32);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_188542C44;
  v28 = &unk_1E70BCB48;
  v20 = v13;
  v30 = v20;
  v31 = v33;
  v21 = v10;
  v29 = v21;
  objc_msgSend_setFetchShareParticipantsCompletionBlock_(v18, v22, &v25);
  objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(self, v23, v18, v11, v12, v25, v26, v27, v28);

  _Block_object_dispose(v33, 8);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)fetchShareParticipantWithEmailAddress:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = 0;
  v14 = _CKCheckArgument("emailAddress", v10, 0, 0, 0, &v31);
  v15 = v31;
  if ((v14 & 1) == 0)
  {
    v20 = v15;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = [CKUserIdentityLookupInfo alloc];
  v18 = objc_msgSend_initWithEmailAddress_(v16, v17, v10);
  objc_msgSend_fetchShareParticipantWithLookupInfo_wrappingContainer_convenienceConfiguration_completionHandler_(self, v19, v18, v11, v12, v13);
}

- (void)fetchShareParticipantWithPhoneNumber:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = 0;
  v14 = _CKCheckArgument("phoneNumber", v10, 0, 0, 0, &v31);
  v15 = v31;
  if ((v14 & 1) == 0)
  {
    v20 = v15;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = [CKUserIdentityLookupInfo alloc];
  v18 = objc_msgSend_initWithPhoneNumber_(v16, v17, v10);
  objc_msgSend_fetchShareParticipantWithLookupInfo_wrappingContainer_convenienceConfiguration_completionHandler_(self, v19, v18, v11, v12, v13);
}

- (void)fetchShareParticipantWithUserRecordID:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31 = 0;
  v14 = _CKCheckArgument("userRecordID", v10, 0, 1, 0, &v31);
  v15 = v31;
  if ((v14 & 1) == 0)
  {
    v20 = v15;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  v16 = [CKUserIdentityLookupInfo alloc];
  v18 = objc_msgSend_initWithUserRecordID_(v16, v17, v10);
  objc_msgSend_fetchShareParticipantWithLookupInfo_wrappingContainer_convenienceConfiguration_completionHandler_(self, v19, v18, v11, v12, v13);
}

- (void)fetchShareMetadataWithURL:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v48 = 0;
  v14 = _CKCheckArgument("shareURL", v10, 0, 0, 0, &v48);
  v15 = v48;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v29 = [CKException alloc];
    v32 = objc_msgSend_code(v16, v30, v31);
    v35 = objc_msgSend_localizedDescription(v16, v33, v34);
    v37 = objc_msgSend_initWithCode_format_(v29, v36, v32, @"%@", v35);
    v38 = v37;

    objc_exception_throw(v37);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_1883ED874;
  v46[4] = sub_1883EF590;
  v47 = 0;
  v17 = [CKFetchShareMetadataOperation alloc];
  v49[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v49, 1);
  v21 = objc_msgSend_initWithShareURLs_(v17, v20, v19);

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_188543380;
  v43[3] = &unk_1E70BCB98;
  v22 = v10;
  v44 = v22;
  v45 = v46;
  objc_msgSend_setPerShareMetadataBlock_(v21, v23, v43);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1885433F8;
  v39[3] = &unk_1E70BCB48;
  v24 = v13;
  v41 = v24;
  v42 = v46;
  v25 = v22;
  v40 = v25;
  objc_msgSend_setFetchShareMetadataCompletionBlock_(v21, v26, v39);
  objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(self, v27, v21, v11, v12);

  _Block_object_dispose(v46, 8);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)acceptShareMetadata:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v48 = 0;
  v14 = _CKCheckArgument("metadata", v10, 0, 0, 0, &v48);
  v15 = v48;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v29 = [CKException alloc];
    v32 = objc_msgSend_code(v16, v30, v31);
    v35 = objc_msgSend_localizedDescription(v16, v33, v34);
    v37 = objc_msgSend_initWithCode_format_(v29, v36, v32, @"%@", v35);
    v38 = v37;

    objc_exception_throw(v37);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_1883ED874;
  v46[4] = sub_1883EF590;
  v47 = 0;
  v17 = [CKAcceptSharesOperation alloc];
  v49[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v49, 1);
  v21 = objc_msgSend_initWithShareMetadatas_(v17, v20, v19);

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_188543774;
  v43[3] = &unk_1E70BCBC0;
  v22 = v10;
  v44 = v22;
  v45 = v46;
  objc_msgSend_setPerShareCompletionBlock_(v21, v23, v43);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1885437EC;
  v39[3] = &unk_1E70BCB48;
  v24 = v13;
  v41 = v24;
  v42 = v46;
  v25 = v22;
  v40 = v25;
  objc_msgSend_setAcceptSharesCompletionBlock_(v21, v26, v39);
  objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(self, v27, v21, v11, v12);

  _Block_object_dispose(v46, 8);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)decryptPersonalInfoOnShare:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1883EA000, "client/decrypt-personal-info-on-share", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188543A44;
  v15[3] = &unk_1E70BC540;
  v16 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188543ABC;
  v12[3] = &unk_1E70BCA08;
  v9 = v6;
  v13 = v9;
  v10 = v16;
  v14 = v10;
  v11 = v10;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v15, v12);
    v11 = v14;
  }

  os_activity_scope_leave(&state);
}

- (void)requestAccessToShareURLs:(id)a3 wrappingContainer:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v36 = 0;
  v14 = _CKCheckArgument("shareURLs", v10, 0, 0, 0, &v36);
  v15 = v36;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v24 = [CKException alloc];
    v27 = objc_msgSend_code(v16, v25, v26);
    v30 = objc_msgSend_localizedDescription(v16, v28, v29);
    v32 = objc_msgSend_initWithCode_format_(v24, v31, v27, @"%@", v30);
    v33 = v32;

    objc_exception_throw(v32);
  }

  v17 = [CKShareRequestAccessOperation alloc];
  v19 = objc_msgSend_initWithShareURLs_(v17, v18, v10);
  objc_msgSend_setPerShareAccessRequestCompletionBlock_(v19, v20, &unk_1EFA2E708);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_188543E80;
  v34[3] = &unk_1E70BC540;
  v35 = v13;
  v21 = v13;
  objc_msgSend_setShareRequestAccessCompletionBlock_(v19, v22, v34);
  objc_msgSend__scheduleConvenienceOperation_wrappingContainer_convenienceConfiguration_(self, v23, v19, v11, v12);
}

- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/get-new-web-sharing-identity-data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188543FF4;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18854406C;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)_refreshAccountAccessAuthorizationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/refresh-account-access-authorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v8 = objc_msgSend_accountInfoFetchQueue(self, v6, v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885442DC;
  v10[3] = &unk_1E70BC940;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);

  os_activity_scope_leave(&state);
}

- (BOOL)__preflightAccountAccessAuthorization:(int64_t *)a3
{
  if (CKIsRunningInSyncBubble())
  {
    return 0;
  }

  v7 = objc_msgSend_options(self, v5, v6);
  v10 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v7, v8, v9);

  if (v10)
  {
    return 0;
  }

  v12 = *MEMORY[0x1E69D5570];
  v13 = TCCAccessPreflight();
  if (a3)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (!v13)
    {
      v14 = 1;
    }

    *a3 = v14;
  }

  return 1;
}

- (void)accountStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/account-status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Fetching account status", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188544FCC;
  v9[3] = &unk_1E70BCC80;
  v7 = v4;
  v10 = v7;
  objc_msgSend_accountInfoWithCompletionHandler_(self, v8, v9);

  os_activity_scope_leave(&state);
}

- (void)accountInfoWithCompletionHandler:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_signpost(CKSignpost, v5, v6);
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend_log(v7, v8, v9);
    v14 = objc_msgSend_identifier(v10, v12, v13);
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v15, "accountStatus", "", buf, 2u);
      }
    }
  }

  v16 = _os_activity_create(&dword_1883EA000, "client/account-info", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v17 = ck_log_facility_ck;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v26 = objc_msgSend_containerID(self, v18, v19);
    v29 = objc_msgSend_accountInfoFetchQueue(self, v27, v28);
    v32 = objc_msgSend_options(self, v30, v31);
    *buf = 134218754;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2112;
    v42 = v29;
    LOWORD(v43) = 2112;
    *(&v43 + 2) = v32;
    _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "Fetching full account info for CKContainerImplementation %p, containerID %@ on queue %@. Container options: %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = sub_1883ED874;
  *&v43 = sub_1883EF590;
  *(&v43 + 1) = objc_opt_new();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3020000000;
  v39 = 0;
  v22 = objc_msgSend_accountInfoFetchQueue(self, v20, v21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1885453C8;
  block[3] = &unk_1E70BCD20;
  v36 = buf;
  v37 = v38;
  v34 = v10;
  v35 = v4;
  block[4] = self;
  v23 = v10;
  v24 = v4;
  dispatch_async(v22, block);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)reloadAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/reload-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Reloading account", buf, 2u);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188546328;
  v13[3] = &unk_1E70BC540;
  v7 = v4;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188546444;
  v10[3] = &unk_1E70BCD70;
  objc_copyWeak(&v12, buf);
  v8 = v7;
  v11 = v8;
  v9 = v8;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v13, v10);
    v9 = v11;
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

- (void)statusForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9 = objc_msgSend_signpost(CKSignpost, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_log(v9, v10, v11);
    v16 = objc_msgSend_identifier(v12, v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        LOWORD(buf.opaque[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v17, "statusForApplicationPermission", "", &buf, 2u);
      }
    }
  }

  v18 = _os_activity_create(&dword_1883EA000, "client/status-for-application-permission", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v18, &buf);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134217984;
    v33 = a3;
    _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Fetching application permissions for %lu", v32, 0xCu);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_188546A5C;
  v28[3] = &unk_1E70BCAF8;
  v30 = v6;
  v29 = v12;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_188546BD0;
  v24[3] = &unk_1E70BCDC0;
  v27 = a3;
  v20 = v30;
  v26 = v20;
  v21 = v29;
  v25 = v21;
  v22 = v21;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v28, v24);
    v22 = v25;
  }

  os_activity_scope_leave(&buf);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)requestApplicationPermission:(unint64_t)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9 = objc_msgSend_signpost(CKSignpost, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_log(v9, v10, v11);
    v16 = objc_msgSend_identifier(v12, v14, v15);
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v13))
      {
        LOWORD(buf.opaque[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1883EA000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v17, "requestApplicationPermission", "", &buf, 2u);
      }
    }
  }

  v18 = _os_activity_create(&dword_1883EA000, "client/request-application-permission", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v18, &buf);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v19 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 134217984;
    v33 = a3;
    _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Requesting application permissions: %lu", v32, 0xCu);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1885471C0;
  v28[3] = &unk_1E70BCAF8;
  v30 = v6;
  v29 = v12;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_188547334;
  v24[3] = &unk_1E70BCDC0;
  v27 = a3;
  v20 = v30;
  v26 = v20;
  v21 = v29;
  v25 = v21;
  v22 = v21;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v28, v24);
    v22 = v25;
  }

  os_activity_scope_leave(&buf);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/fetch-all-long-lived-operation-ids", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885479B4;
  v10[3] = &unk_1E70BC540;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_188547A2C;
  v8[3] = &unk_1E70BC590;
  v6 = v11;
  v9 = v6;
  v7 = v6;
  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, v10, v8);
    v7 = v9;
  }

  os_activity_scope_leave(&state);
}

- (void)fetchLongLivedOperationWithID:(id)a3 wrappingContainer:(id)a4 completionHandler:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1883EA000, "client/fetch-long-lived-operation-with-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  if (v8)
  {
    v29[0] = v8;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v29, 1);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_188547DE8;
    v20[3] = &unk_1E70BCE38;
    v21 = v10;
    v14 = v13;
    v15 = v9;
    v16 = v20;
    v17 = v16;
    if (self)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_18854755C;
      v27[3] = &unk_1E70BC540;
      v18 = v16;
      v28 = v18;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1885475D4;
      v23[3] = &unk_1E70BCE10;
      v24 = v14;
      v25 = v15;
      v26 = v18;
      sub_1885397D0(self, 0, 1, 0, v27, v23);
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerForAssetUploadRequests:(id)a3 machServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = [CKException alloc];
    v13 = objc_msgSend_initWithName_format_(v11, v12, *MEMORY[0x1E695D940], @"The asset request callback must not be null");
    objc_exception_throw(v13);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188547F84;
  v14[3] = &unk_1E70BCE60;
  v15 = v7;
  v16 = v6;
  v8 = v7;
  v9 = v6;
  objc_msgSend_withUploadManager_performBlock_(self, v10, 0, v14);
}

- (void)registerForPackageUploadRequests:(id)a3 machServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = [CKException alloc];
    v13 = objc_msgSend_initWithName_format_(v11, v12, *MEMORY[0x1E695D940], @"The package request callback must not be null");
    objc_exception_throw(v13);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1885480D4;
  v14[3] = &unk_1E70BCE60;
  v15 = v7;
  v16 = v6;
  v8 = v7;
  v9 = v6;
  objc_msgSend_withUploadManager_performBlock_(self, v10, 0, v14);
}

- (void)withUploadManager:(int)a3 performBlock:(id)a4
{
  v26 = a4;
  os_unfair_lock_lock(&self->_uploadRequestManagerLock);
  uploadRequestManager_locked = self->_uploadRequestManager_locked;
  if (!a3 && !uploadRequestManager_locked)
  {
    v8 = objc_msgSend_sharedOptions(CKBehaviorOptions, 0, v6);
    v9 = sub_1886A4398(v8);

    v10 = [CKUploadRequestManager alloc];
    v13 = objc_msgSend_unconfiguredWrappingContainer(self, v11, v12);
    v16 = objc_msgSend_options(self, v14, v15);
    v19 = objc_msgSend_uploadRequestConfiguration(v16, v17, v18);
    v21 = objc_msgSend_initWithContainer_repairContainerOverrides_ignoringSystemConditions_(v10, v20, v13, v19, v9);
    v22 = self->_uploadRequestManager_locked;
    self->_uploadRequestManager_locked = v21;

    uploadRequestManager_locked = self->_uploadRequestManager_locked;
  }

  if (uploadRequestManager_locked && v26[2]() == 1)
  {
    objc_msgSend_unregister(self->_uploadRequestManager_locked, v23, v24);
    v25 = self->_uploadRequestManager_locked;
    self->_uploadRequestManager_locked = 0;
  }

  os_unfair_lock_unlock(&self->_uploadRequestManagerLock);
}

- (void)unregisterFromUploadRequestsWithMachServiceName:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188548324;
  v7[3] = &unk_1E70BCEA8;
  v8 = v4;
  v5 = v4;
  objc_msgSend_withUploadManager_performBlock_(self, v6, 1, v7);
}

- (void)registerForAssetRequests:(id)a3 packageRequests:(id)a4 machServiceName:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!(v8 | v9))
  {
    v22 = [CKException alloc];
    v24 = objc_msgSend_initWithName_format_(v22, v23, *MEMORY[0x1E695D940], @"One of the callbacks must not be null");
    objc_exception_throw(v24);
  }

  v11 = v10;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_INFO))
  {
    v13 = &stru_1EFA32970;
    v14 = @"package";
    if (v9)
    {
      v15 = v8 == 0;
    }

    else
    {
      v14 = &stru_1EFA32970;
      v15 = 1;
    }

    v16 = @" and ";
    if (v15)
    {
      v16 = &stru_1EFA32970;
    }

    *buf = 138543874;
    if (v8)
    {
      v13 = @"asset";
    }

    v30 = v13;
    v31 = 2114;
    v32 = v16;
    v33 = 2114;
    v34 = v14;
    _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Registering for %{public}@%{public}@%{public}@ upload requests", buf, 0x20u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1885485C4;
  v25[3] = &unk_1E70BCED0;
  v27 = v8;
  v28 = v9;
  v26 = v11;
  v17 = v11;
  v18 = v9;
  v19 = v8;
  objc_msgSend_withUploadManager_performBlock_(self, v20, 0, v25);

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)beginContentAccess
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Beginning content access", buf, 2u);
  }

  *buf = 0;
  v7 = buf;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1885488A8;
  v5[3] = &unk_1E70BCF20;
  v5[4] = buf;
  if (self)
  {
    sub_1885397D0(self, 1, 1, 0, &unk_1EFA2E7A8, v5);
    LOBYTE(self) = v7[24];
  }

  _Block_object_dispose(buf, 8);
  return self & 1;
}

- (void)endContentAccess
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Ending content access", v4, 2u);
  }

  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, &unk_1EFA2E7C8, &unk_1EFA2E7E8);
  }
}

- (void)discardContentIfPossible
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Discarding content if possible", v4, 2u);
  }

  if (self)
  {
    sub_1885397D0(self, 0, 1, 0, &unk_1EFA2E808, &unk_1EFA2E828);
  }
}

- (BOOL)isContentDiscarded
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188549138;
  v4[3] = &unk_1E70BCF20;
  v4[4] = &v5;
  if (self)
  {
    sub_1885397D0(self, 1, 1, 0, &unk_1EFA2E848, v4);
    v2 = *(v6 + 24);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2 & 1;
}

- (CKContainer)unconfiguredWrappingContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_unconfiguredWrappingContainer);

  return WeakRetained;
}

@end
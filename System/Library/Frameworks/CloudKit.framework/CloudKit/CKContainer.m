@interface CKContainer
+ (BOOL)currentProcessCanUseCloudKit;
+ (CKContainer)allocWithZone:(_NSZone *)a3;
+ (CKContainer)containerWithIdentifier:(NSString *)containerIdentifier;
+ (CKContainer)defaultContainer;
+ (id)_CKXPCClientToDiscretionaryDaemonInterface;
+ (id)containerIDForContainerIdentifier:(id)a3;
+ (id)containerIDForContainerIdentifier:(id)a3 environment:(int64_t)a4;
+ (id)containersByIdentifier;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (int64_t)containerEnvironmentForContainerID:(id)a3 entitlements:(id)a4;
+ (int64_t)containerEnvironmentForContainerIdentifier:(id)a3 entitlements:(id)a4;
+ (void)initialize;
+ (void)removeIdentifierFromContainersWithIdentifier:(id)a3;
- (CKContainer)initWithContainerID:(id)a3 options:(id)a4;
- (CKContainer)initWithContainerSetupInfo:(id)a3;
- (CKContainer)initWithImplementation:(id)a3 convenienceConfiguration:(id)a4;
- (CKContainerID)containerID;
- (CKContainerOptions)options;
- (CKContainerSetupInfo)setupInfo;
- (CKDatabase)databaseWithDatabaseScope:(CKDatabaseScope)databaseScope;
- (CKDatabase)organizationCloudDatabase;
- (CKDatabase)privateCloudDatabase;
- (CKDatabase)publicCloudDatabase;
- (CKDatabase)sharedCloudDatabase;
- (NSString)containerIdentifier;
- (NSString)sourceApplicationBundleIdentifier;
- (NSString)sourceApplicationSecondaryIdentifier;
- (id)CKStatusReportArray;
- (id)_initWithContainerIdentifier:(id)a3;
- (id)codeServiceWithName:(id)a3 databaseScope:(int64_t)a4;
- (id)codeServiceWithName:(id)a3 databaseScope:(int64_t)a4 serviceInstanceURL:(id)a5;
- (id)initUnconfiguredContainerWithImplementation:(id)a3;
- (id)personaIdentifier;
- (id)serverPreferredPushEnvironmentWithError:(id *)a3;
- (void)acceptShareMetadata:(CKShareMetadata *)metadata completionHandler:(void *)completionHandler;
- (void)accountInfoWithCompletionHandler:(id)a3;
- (void)accountStatusWithCompletionHandler:(void *)completionHandler;
- (void)addOperation:(CKOperation *)operation;
- (void)cancelUploadRequests;
- (void)dealloc;
- (void)discoverAllContactUserInfosWithCompletionHandler:(id)a3;
- (void)discoverAllIdentitiesWithCompletionHandler:(void *)completionHandler;
- (void)discoverUserIdentityWithEmailAddress:(NSString *)email completionHandler:(void *)completionHandler;
- (void)discoverUserIdentityWithPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)completionHandler;
- (void)discoverUserIdentityWithUserRecordID:(CKRecordID *)userRecordID completionHandler:(void *)completionHandler;
- (void)discoverUserInfoWithEmailAddress:(id)a3 completionHandler:(id)a4;
- (void)discoverUserInfoWithUserRecordID:(id)a3 completionHandler:(id)a4;
- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(void *)completionHandler;
- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3;
- (void)fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:(id)a3;
- (void)fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:(id)a3;
- (void)fetchLongLivedOperationWithID:(CKOperationID)operationID completionHandler:(void *)completionHandler;
- (void)fetchOrgAdminUserRecordIDWithCompletionHandler:(id)a3;
- (void)fetchShareMetadataWithURL:(NSURL *)url completionHandler:(void *)completionHandler;
- (void)fetchShareParticipantWithEmailAddress:(NSString *)emailAddress completionHandler:(void *)completionHandler;
- (void)fetchShareParticipantWithLookupInfo:(id)a3 completionHandler:(id)a4;
- (void)fetchShareParticipantWithPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)completionHandler;
- (void)fetchShareParticipantWithUserRecordID:(CKRecordID *)userRecordID completionHandler:(void *)completionHandler;
- (void)fetchSignatureGeneratorForCurrentUserBoundaryKeyWithCompletionHandler:(id)a3;
- (void)fetchUserRecordIDWithCompletionHandler:(void *)completionHandler;
- (void)getContainerScopedDaemonProxyWithRetryHandler:(id)a3 errorHandler:(id)a4 daemonProxyHandler:(id)a5;
- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)a3;
- (void)getSynchronousContainerScopedDaemonProxyWithErrorHandler:(id)a3 daemonProxyHandler:(id)a4;
- (void)manuallyTriggerUploadRequests;
- (void)performBlock:(id)a3;
- (void)pushEnvironmentWithCompletionHandler:(id)a3;
- (void)registerForAssetUploadRequests:(id)a3;
- (void)registerForAssetUploadRequests:(id)a3 machServiceName:(id)a4;
- (void)registerForPackageUploadRequests:(id)a3;
- (void)registerForPackageUploadRequests:(id)a3 machServiceName:(id)a4;
- (void)registerSystemSharingUIObserver:(id)a3;
- (void)requestAccessToShareURLs:(id)a3 completionHandler:(id)a4;
- (void)requestApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:(CKApplicationPermissionBlock)completionHandler;
- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)a3;
- (void)setFakeError:(id)a3 forNextRequestOfClassName:(id)a4;
- (void)setSourceApplicationBundleIdentifier:(id)a3;
- (void)setSourceApplicationSecondaryIdentifier:(id)a3;
- (void)statusForApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:(CKApplicationPermissionBlock)completionHandler;
- (void)statusGroupsForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4;
- (void)submitEventMetric:(id)a3;
- (void)submitEventMetric:(id)a3 completionHandler:(id)a4;
- (void)unregisterFromUploadRequests;
- (void)unregisterFromUploadRequestsWithMachServiceName:(id)a3;
- (void)wipeAllCachesAndDie;
@end

@implementation CKContainer

+ (void)initialize
{
  v3 = objc_opt_class();

  sub_1886CEE50(a1, v3, 0, &unk_1EFA85AD0, 0);
}

+ (BOOL)currentProcessCanUseCloudKit
{
  v3 = objc_msgSend_sharedManager(CKProcessScopedStateManager, a2, v2);
  v6 = objc_msgSend_untrustedEntitlements(v3, v4, v5);

  v9 = objc_msgSend_cloudServices(v6, v7, v8);
  if (objc_msgSend_containsObject_(v9, v10, @"CloudKit"))
  {
    v13 = 1;
  }

  else
  {
    v14 = objc_msgSend_cloudServices(v6, v11, v12);
    v13 = objc_msgSend_containsObject_(v14, v15, @"CloudKit-Anonymous");
  }

  return v13;
}

+ (id)containersByIdentifier
{
  if (qword_1ED4B6118 != -1)
  {
    dispatch_once(&qword_1ED4B6118, &unk_1EFA2E888);
  }

  v3 = qword_1ED4B6110;

  return v3;
}

- (CKContainerOptions)options
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_options(v3, v4, v5);

  return v6;
}

+ (CKContainer)defaultContainer
{
  if (qword_1ED4B6100 != -1)
  {
    dispatch_once(&qword_1ED4B6100, &unk_1EFA2E868);
  }

  v3 = qword_1ED4B6108;

  return v3;
}

- (NSString)containerIdentifier
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (CKContainerID)containerID
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_containerID(v3, v4, v5);

  return v6;
}

- (CKDatabase)privateCloudDatabase
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_privateCloudDatabase)
  {
    v5 = objc_msgSend_implementation(v2, v3, v4);
    v8 = objc_msgSend_privateCloudDatabaseImplementation(v5, v6, v7);

    v9 = [CKDatabase alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v9, v10, v8, v2);
    privateCloudDatabase = v2->_privateCloudDatabase;
    v2->_privateCloudDatabase = inited;
  }

  objc_sync_exit(v2);

  v13 = v2->_privateCloudDatabase;

  return v13;
}

- (CKDatabase)publicCloudDatabase
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_publicCloudDatabase)
  {
    v5 = objc_msgSend_implementation(v2, v3, v4);
    v8 = objc_msgSend_publicCloudDatabaseImplementation(v5, v6, v7);

    v9 = [CKDatabase alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v9, v10, v8, v2);
    publicCloudDatabase = v2->_publicCloudDatabase;
    v2->_publicCloudDatabase = inited;
  }

  objc_sync_exit(v2);

  v13 = v2->_publicCloudDatabase;

  return v13;
}

- (void)dealloc
{
  pcsServiceScopedIdentityUpdateToken = self->_pcsServiceScopedIdentityUpdateToken;
  if (pcsServiceScopedIdentityUpdateToken != -1)
  {
    notify_cancel(pcsServiceScopedIdentityUpdateToken);
  }

  keychainViewScopedIdentityUpdateToken = self->_keychainViewScopedIdentityUpdateToken;
  if (keychainViewScopedIdentityUpdateToken != -1)
  {
    notify_cancel(keychainViewScopedIdentityUpdateToken);
  }

  pcsServiceScopedAccountChangeToken = self->_pcsServiceScopedAccountChangeToken;
  if (pcsServiceScopedAccountChangeToken != -1)
  {
    notify_cancel(pcsServiceScopedAccountChangeToken);
  }

  v7 = objc_msgSend_sharedManager(CKProcessScopedStateManager, a2, v2);
  sub_1886BEBFC(v7, self);

  v8.receiver = self;
  v8.super_class = CKContainer;
  [(CKContainer *)&v8 dealloc];
}

- (CKDatabase)sharedCloudDatabase
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sharedCloudDatabase)
  {
    v5 = objc_msgSend_implementation(v2, v3, v4);
    v8 = objc_msgSend_sharedCloudDatabaseImplementation(v5, v6, v7);

    v9 = [CKDatabase alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v9, v10, v8, v2);
    sharedCloudDatabase = v2->_sharedCloudDatabase;
    v2->_sharedCloudDatabase = inited;
  }

  objc_sync_exit(v2);

  v13 = v2->_sharedCloudDatabase;

  return v13;
}

+ (CKContainer)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1 && __sTestOverridesAvailable[0] == 1 && (byte_1EA90C538 & 1) == 0)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, a1, @"CKContainer.m", 2601, @"Why is partlycloudd initting a CKContainer directly");
  }

  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___CKContainer;
  return objc_msgSendSuper2(&v11, sel_allocWithZone_, a3);
}

+ (CKContainer)containerWithIdentifier:(NSString *)containerIdentifier
{
  v4 = containerIdentifier;
  v7 = objc_msgSend_containersByIdentifier(a1, v5, v6);
  objc_sync_enter(v7);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v4);
  if (!v9)
  {
    v10 = [CKContainer alloc];
    v9 = objc_msgSend__initWithContainerIdentifier_(v10, v11, v4);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v12, v9, v4);
  }

  objc_sync_exit(v7);

  return v9;
}

+ (void)removeIdentifierFromContainersWithIdentifier:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_containersByIdentifier(a1, v4, v5);
  objc_sync_enter(v6);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v7, 0, v8);
  objc_sync_exit(v6);
}

- (id)_initWithContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_containerIDForContainerIdentifier_(v5, v6, v4);

  v9 = objc_msgSend_initWithContainerID_(self, v8, v7);
  return v9;
}

- (CKContainer)initWithContainerSetupInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_containerID(v4, v5, v6);
  v10 = objc_msgSend_containerOptions(v4, v8, v9);

  v12 = objc_msgSend_initWithContainerID_options_(self, v11, v7, v10);
  return v12;
}

- (CKContainer)initWithContainerID:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CKContainerImplementation alloc];
  v10 = objc_msgSend_initWithContainerID_options_(v8, v9, v7, v6);

  inited = objc_msgSend_initUnconfiguredContainerWithImplementation_(self, v11, v10);
  return inited;
}

- (id)initUnconfiguredContainerWithImplementation:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_initWithImplementation_convenienceConfiguration_(self, v5, v4, 0);
  if (v7)
  {
    objc_msgSend_setUnconfiguredWrappingContainer_(v4, v6, v7);
    v10 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v8, v9);
    sub_1886BE3BC(v10, v7);

    out_token[0] = -1;
    *(v7 + 8) = -1;
    *(v7 + 16) = -1;
    v13 = objc_msgSend_options(v7, v11, v12);
    v16 = objc_msgSend_encryptionServiceName(v13, v14, v15);
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v20 = objc_msgSend_untrustedEntitlements(v7, v17, v18);
      v23 = objc_msgSend_serviceNameForContainerIdentifierMapEntitlement(v20, v21, v22);

      v26 = objc_msgSend_containerIdentifier(v7, v24, v25);
      v19 = objc_msgSend_objectForKeyedSubscript_(v23, v27, v26);

      if (!v19)
      {
        IsManatee = 0;
LABEL_12:
        v53 = objc_msgSend_options(v7, v28, v29);
        objc_msgSend_setIsServiceManatee_(v53, v54, IsManatee);

        goto LABEL_13;
      }
    }

    objc_initWeak(&location, v7);
    v30 = CKNotificationKey(@"com.apple.cloudd.pcsIdentityUpdate", v19);
    v33 = objc_msgSend_UTF8String(v30, v31, v32);
    v34 = CKGetGlobalQueue(-1);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_188549B04;
    handler[3] = &unk_1E70BCF48;
    v35 = v19;
    v63 = v35;
    objc_copyWeak(&v64, &location);
    LODWORD(v33) = notify_register_dispatch(v33, out_token, v34, handler);

    v36 = out_token[0];
    if (v33)
    {
      v36 = -1;
    }

    *(v7 + 8) = v36;
    out_token[0] = -1;
    v37 = PCSServiceItemGetCKKSViewByName();
    v38 = CKNotificationKey(@"com.apple.cloudd.pcsIdentityUpdate", v37);

    v41 = objc_msgSend_UTF8String(v38, v39, v40);
    v42 = CKGetGlobalQueue(-1);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = sub_188549C1C;
    v59[3] = &unk_1E70BCF48;
    v43 = v37;
    v60 = v43;
    objc_copyWeak(&v61, &location);
    LODWORD(v37) = notify_register_dispatch(v41, out_token, v42, v59);

    v44 = out_token[0];
    if (v37)
    {
      v44 = -1;
    }

    *(v7 + 12) = v44;
    out_token[0] = -1;
    v45 = CKNotificationKey(@"com.apple.cloudd.accountChanged", v35);
    v48 = objc_msgSend_UTF8String(v45, v46, v47);
    v49 = CKGetGlobalQueue(-1);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_188549D34;
    v56[3] = &unk_1E70BCF48;
    v50 = v35;
    v57 = v50;
    objc_copyWeak(&v58, &location);
    LODWORD(v48) = notify_register_dispatch(v48, out_token, v49, v56);

    v51 = out_token[0];
    if (v48)
    {
      v51 = -1;
    }

    *(v7 + 16) = v51;
    IsManatee = PCSServiceItemTypeIsManatee();
    objc_destroyWeak(&v58);

    objc_destroyWeak(&v61);
    objc_destroyWeak(&v64);

    objc_destroyWeak(&location);
    goto LABEL_12;
  }

LABEL_13:

  return v7;
}

- (CKContainer)initWithImplementation:(id)a3 convenienceConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKContainer;
  v9 = [(CKContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_convenienceConfiguration, a4);
    objc_storeStrong(&v10->_implementation, a3);
  }

  return v10;
}

- (void)getContainerScopedDaemonProxyWithRetryHandler:(id)a3 errorHandler:(id)a4 daemonProxyHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_implementation(self, v10, v11);
  v13 = v12;
  if (v12)
  {
    sub_1885397D0(v12, 0, 1, v14, v8, v9);
  }
}

- (void)getSynchronousContainerScopedDaemonProxyWithErrorHandler:(id)a3 daemonProxyHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  v9 = objc_msgSend_implementation(self, v7, v8);
  v10 = v9;
  if (v9)
  {
    sub_1885397D0(v9, 1, 1, 0, v11, v6);
  }
}

+ (id)containerIDForContainerIdentifier:(id)a3 environment:(int64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    v5 = sub_1883F3854();
  }

  v6 = [CKContainerID alloc];
  v8 = objc_msgSend_initWithContainerIdentifier_environment_(v6, v7, v5, a4);

  return v8;
}

+ (id)containerIDForContainerIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v6 = sub_1883F3854();
  }

  v7 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v4, v5);
  v10 = objc_msgSend_untrustedEntitlements(v7, v8, v9);

  v12 = objc_msgSend_containerEnvironmentForContainerIdentifier_entitlements_(a1, v11, v6, v10);
  v13 = [CKContainerID alloc];
  v15 = objc_msgSend_initWithContainerIdentifier_environment_(v13, v14, v6, v12);

  return v15;
}

+ (int64_t)containerEnvironmentForContainerIdentifier:(id)a3 entitlements:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_containerEnvironment(v6, v7, v8);
  if (v11 == 1)
  {
    v12 = objc_msgSend_developmentContainerEnvironmentOverrides(v6, v9, v10);
    v14 = objc_msgSend_containsObject_(v12, v13, v5);

    if (v14)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v15 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v19 = objc_msgSend_applicationBundleID(v6, v17, v18);
        v22 = 138543618;
        v23 = v19;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1883EA000, v16, OS_LOG_TYPE_INFO, "Client %{public}@ requested sandbox environment for container identifier %{public}@", &v22, 0x16u);
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int64_t)containerEnvironmentForContainerID:(id)a3 entitlements:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_hasEnvironmentEntitlement(v7, v8, v9))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = a1;
      _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Allowing %@ to set any environment", &v32, 0xCu);
    }

    v17 = objc_msgSend_environment(v6, v13, v14);
  }

  else
  {
    v18 = objc_msgSend_containerIdentifier(v6, v10, v11);
    v17 = objc_msgSend_containerEnvironmentForContainerIdentifier_entitlements_(a1, v19, v18, v7);
  }

  if (v17 != objc_msgSend_environment(v6, v15, v16))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v23 = v20;
      v26 = objc_msgSend_applicationBundleID(v7, v24, v25);
      v29 = objc_msgSend_environment(v6, v27, v28);
      v30 = CKContainerEnvironmentString(v29);
      v31 = CKContainerEnvironmentString(v17);
      v32 = 138543874;
      v33 = v26;
      v34 = 2114;
      v35 = v30;
      v36 = 2114;
      v37 = v31;
      _os_log_error_impl(&dword_1883EA000, v23, OS_LOG_TYPE_ERROR, "Client %{public}@ tried to access environment %{public}@, even though the entitlements specified %{public}@", &v32, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)_CKXPCClientToDiscretionaryDaemonInterface
{
  if (qword_1ED4B6158 != -1)
  {
    dispatch_once(&qword_1ED4B6158, &unk_1EFA2E8E8);
  }

  v3 = qword_1ED4B6150;

  return v3;
}

- (CKDatabase)organizationCloudDatabase
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_organizationCloudDatabase)
  {
    v5 = objc_msgSend_implementation(v2, v3, v4);
    v8 = objc_msgSend_organizationCloudDatabaseImplementation(v5, v6, v7);

    v9 = [CKDatabase alloc];
    inited = objc_msgSend_initInternalWithImplementation_container_(v9, v10, v8, v2);
    organizationCloudDatabase = v2->_organizationCloudDatabase;
    v2->_organizationCloudDatabase = inited;
  }

  objc_sync_exit(v2);

  v13 = v2->_organizationCloudDatabase;

  return v13;
}

- (CKDatabase)databaseWithDatabaseScope:(CKDatabaseScope)databaseScope
{
  v4 = 0;
  if (databaseScope <= CKDatabaseScopePublic)
  {
    if (databaseScope)
    {
      if (databaseScope == CKDatabaseScopePublic)
      {
        v4 = objc_msgSend_publicCloudDatabase(self, a2, 1);
      }
    }

    else
    {
      v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CKContainer.m", 3021, @"You must provide a valid database scope when getting a database from a container.");

      v4 = 0;
    }
  }

  else
  {
    switch(databaseScope)
    {
      case 2:
        v4 = objc_msgSend_privateCloudDatabase(self, a2, 2);
        break;
      case 3:
        v4 = objc_msgSend_sharedCloudDatabase(self, a2, 3);
        break;
      case 4:
        v4 = objc_msgSend_organizationCloudDatabase(self, a2, 4);
        break;
    }
  }

  return v4;
}

- (id)codeServiceWithName:(id)a3 databaseScope:(int64_t)a4
{
  v9 = a3;
  if (!a4)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    v14 = NSStringFromSelector(sel_codeServiceWithName_);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v15, a2, self, @"CKContainer.m", 3068, @"You must provide a valid database scope when getting a code service bound to a database.  Did you mean to use %@?", v14);
  }

  v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, a4);
  v11 = sub_18854A7E0(self, v9, v10, 0);

  return v11;
}

- (id)codeServiceWithName:(id)a3 databaseScope:(int64_t)a4 serviceInstanceURL:(id)a5
{
  v9 = a3;
  v12 = a5;
  if (!a4)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    v17 = NSStringFromSelector(sel_codeServiceWithName_serviceInstanceURL_);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v18, a2, self, @"CKContainer.m", 3075, @"You must provide a valid database scope when getting a code service bound to a database.  Did you mean to use %@?", v17);
  }

  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, a4);
  v14 = sub_18854A7E0(self, v9, v13, v12);

  return v14;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CKContainer;
  v4 = objc_msgSendSuper2(&v7, sel_instanceMethodSignatureForSelector_);
  if (!v4)
  {
    v4 = objc_msgSend_instanceMethodSignatureForSelector_(CKContainerImplementation, v5, a3);
  }

  return v4;
}

- (NSString)sourceApplicationBundleIdentifier
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_sourceApplicationBundleIdentifier(v3, v4, v5);

  return v6;
}

- (void)setSourceApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_setSourceApplicationBundleIdentifier_(v8, v7, v4);
}

- (NSString)sourceApplicationSecondaryIdentifier
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_sourceApplicationSecondaryIdentifier(v3, v4, v5);

  return v6;
}

- (void)setSourceApplicationSecondaryIdentifier:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_setSourceApplicationSecondaryIdentifier_(v8, v7, v4);
}

- (CKContainerSetupInfo)setupInfo
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_setupInfo(v3, v4, v5);

  return v6;
}

- (id)personaIdentifier
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_persona(v3, v4, v5);
  v9 = objc_msgSend_identifier(v6, v7, v8);

  return v9;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_performBlock_(v8, v7, v4);
}

- (void)addOperation:(CKOperation *)operation
{
  v20 = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_configuration(v20, v4, v5);
    if (objc_msgSend_isLongLived(v6, v7, v8))
    {
      isOutstandingOperation = objc_msgSend_isOutstandingOperation(v20, v9, v10);

      if (isOutstandingOperation)
      {
        v12 = v20;
        v15 = objc_msgSend_database(v12, v13, v14);
        objc_msgSend_addOperation_(v15, v16, v12);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v15 = objc_msgSend_implementation(self, v4, v5);
  v12 = objc_msgSend_convenienceConfiguration(self, v17, v18);
  objc_msgSend_addOperation_wrappingContainer_convenienceConfiguration_(v15, v19, v20, self, v12);
LABEL_7:
}

- (void)accountStatusWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_accountStatusWithCompletionHandler_(v8, v7, v4);
}

- (void)statusForApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:(CKApplicationPermissionBlock)completionHandler
{
  v6 = completionHandler;
  v10 = objc_msgSend_implementation(self, v7, v8);
  objc_msgSend_statusForApplicationPermission_completionHandler_(v10, v9, applicationPermission, v6);
}

- (void)requestApplicationPermission:(CKApplicationPermissions)applicationPermission completionHandler:(CKApplicationPermissionBlock)completionHandler
{
  v6 = completionHandler;
  v10 = objc_msgSend_implementation(self, v7, v8);
  objc_msgSend_requestApplicationPermission_completionHandler_(v10, v9, applicationPermission, v6);
}

- (void)fetchUserRecordIDWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v8, v7, v4);
}

- (void)discoverAllIdentitiesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v11 = objc_msgSend_implementation(self, v5, v6);
  v9 = objc_msgSend_convenienceConfiguration(self, v7, v8);
  objc_msgSend_discoverAllIdentitiesWithWrappingContainer_convenienceConfiguration_completionHandler_(v11, v10, self, v9, v4);
}

- (void)discoverUserIdentityWithEmailAddress:(NSString *)email completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = email;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_discoverUserIdentityWithEmailAddress_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)discoverUserIdentityWithPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = phoneNumber;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_discoverUserIdentityWithPhoneNumber_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)discoverUserIdentityWithUserRecordID:(CKRecordID *)userRecordID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = userRecordID;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_discoverUserIdentityWithUserRecordID_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)fetchShareParticipantWithEmailAddress:(NSString *)emailAddress completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = emailAddress;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_fetchShareParticipantWithEmailAddress_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)fetchShareParticipantWithPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = phoneNumber;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_fetchShareParticipantWithPhoneNumber_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)fetchShareParticipantWithUserRecordID:(CKRecordID *)userRecordID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = userRecordID;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_fetchShareParticipantWithUserRecordID_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)fetchShareMetadataWithURL:(NSURL *)url completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = url;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_fetchShareMetadataWithURL_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)acceptShareMetadata:(CKShareMetadata *)metadata completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = metadata;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_acceptShareMetadata_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)requestAccessToShareURLs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_requestAccessToShareURLs_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)registerSystemSharingUIObserver:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1883EA000, "client/register-system-sharing-ui-observer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v8 = objc_msgSend_implementation(self, v6, v7);
  objc_sync_enter(v8);
  v11 = objc_msgSend_implementation(self, v9, v10);
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 248);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  objc_msgSend_addObject_(v14, v15, v4);

  objc_sync_exit(v8);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18854BB1C;
  v19[3] = &unk_1E70BC048;
  v20 = v4;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18854BC3C;
  v17[3] = &unk_1E70BC8A0;
  v16 = v20;
  v18 = v16;
  sub_188549F04(self, v19, v17);

  os_activity_scope_leave(&state);
}

- (void)fetchAllLongLivedOperationIDsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchAllLongLivedOperationIDsWithCompletionHandler_(v8, v7, v4);
}

- (void)fetchLongLivedOperationWithID:(CKOperationID)operationID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = operationID;
  v11 = objc_msgSend_implementation(self, v8, v9);
  objc_msgSend_fetchLongLivedOperationWithID_wrappingContainer_completionHandler_(v11, v10, v7, self, v6);
}

- (void)getNewWebSharingIdentityDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_getNewWebSharingIdentityDataWithCompletionHandler_(v8, v7, v4);
}

- (void)fetchShareParticipantWithLookupInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_convenienceConfiguration(self, v10, v11);
  objc_msgSend_fetchShareParticipantWithLookupInfo_wrappingContainer_convenienceConfiguration_completionHandler_(v14, v13, v7, self, v12, v6);
}

- (void)submitEventMetric:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_submitEventMetric_(v8, v7, v4);
}

- (void)submitEventMetric:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_implementation(self, v8, v9);
  objc_msgSend_submitEventMetric_completionHandler_(v11, v10, v7, v6);
}

- (void)statusGroupsForApplicationPermission:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_implementation(self, v7, v8);
  objc_msgSend_statusGroupsForApplicationPermission_completionHandler_(v10, v9, a3, v6);
}

- (void)accountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_accountInfoWithCompletionHandler_(v8, v7, v4);
}

- (void)pushEnvironmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_pushEnvironmentWithCompletionHandler_(v8, v7, v4);
}

- (void)serverPreferredPushEnvironmentWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_serverPreferredPushEnvironmentWithCompletionHandler_(v8, v7, v4);
}

- (id)serverPreferredPushEnvironmentWithError:(id *)a3
{
  v4 = objc_msgSend_implementation(self, a2, a3);
  v6 = objc_msgSend_serverPreferredPushEnvironmentWithError_(v4, v5, a3);

  return v6;
}

- (void)wipeAllCachesAndDie
{
  v5 = objc_msgSend_implementation(self, a2, v2);
  objc_msgSend_wipeAllCachesAndDie(v5, v3, v4);
}

- (void)fetchCurrentDeviceIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchCurrentDeviceIDWithCompletionHandler_(v8, v7, v4);
}

- (void)fetchSignatureGeneratorForCurrentUserBoundaryKeyWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchSignatureGeneratorForCurrentUserBoundaryKeyWithCompletionHandler_(v8, v7, v4);
}

- (void)fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler_(v8, v7, v4);
}

- (void)fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler_(v8, v7, v4);
}

- (void)setFakeError:(id)a3 forNextRequestOfClassName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_implementation(self, v8, v9);
  objc_msgSend_setFakeError_forNextRequestOfClassName_(v11, v10, v7, v6);
}

- (void)fetchOrgAdminUserRecordIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_fetchOrgAdminUserRecordIDWithCompletionHandler_(v8, v7, v4);
}

- (void)registerForAssetUploadRequests:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_registerForAssetUploadRequests_(v8, v7, v4);
}

- (void)registerForAssetUploadRequests:(id)a3 machServiceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_implementation(self, v8, v9);
  objc_msgSend_registerForAssetUploadRequests_machServiceName_(v11, v10, v7, v6);
}

- (void)registerForPackageUploadRequests:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_registerForPackageUploadRequests_(v8, v7, v4);
}

- (void)registerForPackageUploadRequests:(id)a3 machServiceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_implementation(self, v8, v9);
  objc_msgSend_registerForPackageUploadRequests_machServiceName_(v11, v10, v7, v6);
}

- (void)unregisterFromUploadRequests
{
  v5 = objc_msgSend_implementation(self, a2, v2);
  objc_msgSend_unregisterFromUploadRequests(v5, v3, v4);
}

- (void)unregisterFromUploadRequestsWithMachServiceName:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_implementation(self, v5, v6);
  objc_msgSend_unregisterFromUploadRequestsWithMachServiceName_(v8, v7, v4);
}

- (void)manuallyTriggerUploadRequests
{
  v5 = objc_msgSend_implementation(self, a2, v2);
  objc_msgSend_manuallyTriggerUploadRequests(v5, v3, v4);
}

- (void)cancelUploadRequests
{
  v5 = objc_msgSend_implementation(self, a2, v2);
  objc_msgSend_cancelUploadRequests(v5, v3, v4);
}

- (id)CKStatusReportArray
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_CKStatusReportArray(v3, v4, v5);

  return v6;
}

- (void)discoverAllContactUserInfosWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v13 = v5;
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v16 = v14;
    _os_log_fault_impl(&dword_1883EA000, v13, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.", buf, 0xCu);

    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v6 = NSStringFromSelector(a2);
    v8 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v7, @"CKInternalErrorDomain", 1001, @"%@ is deprecated, and will be removed in a future release.", v6);

    v11 = objc_msgSend_CKClientSuitableError(v8, v9, v10);
    v4[2](v4, 0, v11);
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)discoverUserInfoWithEmailAddress:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v16 = v8;
    v17 = NSStringFromSelector(a2);
    *buf = 138543362;
    v19 = v17;
    _os_log_fault_impl(&dword_1883EA000, v16, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.", buf, 0xCu);

    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v9 = NSStringFromSelector(a2);
    v11 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKInternalErrorDomain", 1001, @"%@ is deprecated, and will be removed in a future release.", v9);

    v14 = objc_msgSend_CKClientSuitableError(v11, v12, v13);
    v7[2](v7, 0, v14);
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)discoverUserInfoWithUserRecordID:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
  {
    v16 = v8;
    v17 = NSStringFromSelector(a2);
    *buf = 138543362;
    v19 = v17;
    _os_log_fault_impl(&dword_1883EA000, v16, OS_LOG_TYPE_FAULT, "%{public}@ is deprecated, and will be removed in a future release.", buf, 0xCu);

    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    v9 = NSStringFromSelector(a2);
    v11 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v10, @"CKInternalErrorDomain", 1001, @"%@ is deprecated, and will be removed in a future release.", v9);

    v14 = objc_msgSend_CKClientSuitableError(v11, v12, v13);
    v7[2](v7, 0, v14);
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
}

@end
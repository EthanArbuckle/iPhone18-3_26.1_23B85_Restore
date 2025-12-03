@interface CLSUtilityService
+ (id)sharedInstance;
- (CLSUtilityService)initWithEndpoint:(id)endpoint;
- (id)syncUtilityServer:(id)server;
- (id)utilityServer:(id)server;
- (void)accountChangedTrigger:(id)trigger;
- (void)addAdminRequestor:(id)requestor completion:(id)completion;
- (void)addAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion;
- (void)addAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion;
- (void)addOrganization:(id)organization withLocations:(id)locations completion:(id)completion;
- (void)authorizationStatusForContextAtPath:(id)path completion:(id)completion;
- (void)authorizationStatusForHandoutAssignedItem:(id)item completion:(id)completion;
- (void)currentUserContentStoreCacheDirectoryURLWithCompletion:(id)completion;
- (void)databasePathWithCompletion:(id)completion;
- (void)deleteOrganization:(id)organization completion:(id)completion;
- (void)fetchReportsWithPredicate:(id)predicate completion:(id)completion;
- (void)getBootstrapMode:(id)mode;
- (void)getClassKitCatalogEnvironmentWithCompletion:(id)completion;
- (void)getDevModeWithCompletion:(id)completion;
- (void)recreateDatabaseWithCompletion:(id)completion;
- (void)recreateDevelopmentDatabaseWithCompletion:(id)completion;
- (void)removeAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion;
- (void)removeAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion;
- (void)renewCredentialsWithCompletion:(id)completion;
- (void)setClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion;
- (void)statusWithCompletion:(id)completion;
- (void)syncBootstrapWithCompletion:(id)completion;
- (void)syncFetchWithCompletion:(id)completion;
- (void)syncGetClassKitCatalogEnvironmentWithCompletion:(id)completion;
- (void)syncGetDevModeWithCompletion:(id)completion;
- (void)syncPushWithCompletion:(id)completion;
- (void)syncRecreateDevelopmentDatabaseWithCompletion:(id)completion;
- (void)syncSetClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion;
- (void)syncStatsWithCompletion:(id)completion;
- (void)topLevelContentStoreCacheDirectoryURLWithCompletion:(id)completion;
@end

@implementation CLSUtilityService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FCA14C;
  block[3] = &unk_278A17960;
  block[4] = self;
  if (qword_280B2A4C0 != -1)
  {
    dispatch_once(&qword_280B2A4C0, block);
  }

  v2 = qword_280B2A4B8;

  return v2;
}

- (CLSUtilityService)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v30.receiver = self;
  v30.super_class = CLSUtilityService;
  v6 = [(CLSUtilityService *)&v30 init];
  if (!v6)
  {
LABEL_9:
    v11 = v6;
    goto LABEL_10;
  }

  v32 = 0;
  v7 = objc_msgSend_entitlementsForCurrentTaskWithError_(CLSEntitlements, v5, &v32);
  v8 = v32;
  if (v8)
  {
    v10 = v8;

    v11 = 0;
    goto LABEL_10;
  }

  v31 = 0;
  v12 = objc_msgSend_BOOLValueForEntitlement_error_(v7, v9, @"com.apple.private.ClassKit.internal", &v31);
  v13 = v31;

  v11 = 0;
  if (!v13 && v12)
  {
    v14 = objc_opt_class();
    v17 = objc_msgSend_endpointClass(v14, v15, v16);
    v19 = objc_msgSend_instanceForEndpoint_(v17, v18, endpointCopy);
    endpointConnection = v6->_endpointConnection;
    v6->_endpointConnection = v19;

    v21 = CLSDispatchQueueName(v6, 0);
    v24 = objc_msgSend_UTF8String(v21, v22, v23);
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (qword_280B2A4D0 != -1)
    {
      dispatch_once(&qword_280B2A4D0, &unk_284A080A8);
    }

    v26 = qword_280B2A4C8;
    v27 = dispatch_queue_create_with_target_V2(v24, v25, v26);
    queue = v6->_queue;
    v6->_queue = v27;

    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (id)utilityServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_utilityServer_(v7, v8, serverCopy);

  return v9;
}

- (id)syncUtilityServer:(id)server
{
  serverCopy = server;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  v9 = objc_msgSend_syncUtilityServer_(v7, v8, serverCopy);

  return v9;
}

- (void)databasePathWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCA4A8;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_databasePathWithCompletion_(v7, v8, v5);
}

- (void)recreateDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  objc_msgSend_addBarrierBlock_(v7, v8, &unk_284A07968);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FCA5F4;
  v16[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v17 = v9;
  v11 = objc_msgSend_utilityServer_(self, v10, v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FCA60C;
  v14[3] = &unk_278A18BC8;
  v14[4] = self;
  v15 = v9;
  v12 = v9;
  objc_msgSend_remote_recreateDatabaseWithCompletion_(v11, v13, v14);
}

- (void)recreateDevelopmentDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  objc_msgSend_addBarrierBlock_(v7, v8, &unk_284A07728);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FCAA88;
  v16[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v17 = v9;
  v11 = objc_msgSend_utilityServer_(self, v10, v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FCAAA0;
  v14[3] = &unk_278A18BC8;
  v14[4] = self;
  v15 = v9;
  v12 = v9;
  objc_msgSend_remote_recreateDevelopmentDatabaseWithCompletion_(v11, v13, v14);
}

- (void)syncRecreateDevelopmentDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_endpointConnection(self, v5, v6);
  objc_msgSend_addBarrierBlock_(v7, v8, &unk_284A08048);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_236FCACF0;
  v16[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v17 = v9;
  v11 = objc_msgSend_syncUtilityServer_(self, v10, v16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_236FCAD08;
  v14[3] = &unk_278A18BC8;
  v14[4] = self;
  v15 = v9;
  v12 = v9;
  objc_msgSend_remote_recreateDevelopmentDatabaseWithCompletion_(v11, v13, v14);
}

- (void)getDevModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCAECC;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_getDevModeWithCompletion_(v7, v8, v5);
}

- (void)syncGetDevModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCAF8C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_syncUtilityServer_(self, v6, v9);
  objc_msgSend_remote_getDevModeWithCompletion_(v7, v8, v5);
}

- (void)getClassKitCatalogEnvironmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB17C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_getClassKitCatalogEnvironmentWithCompletion_(v7, v8, v5);
}

- (void)syncGetClassKitCatalogEnvironmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB23C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_syncUtilityServer_(self, v6, v9);
  objc_msgSend_remote_getClassKitCatalogEnvironmentWithCompletion_(v7, v8, v5);
}

- (void)setClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FCB30C;
  v11[3] = &unk_278A17BC0;
  v12 = completionCopy;
  v7 = completionCopy;
  v9 = objc_msgSend_utilityServer_(self, v8, v11);
  objc_msgSend_remote_setClassKitCatalogEnvironment_completion_(v9, v10, environment, v7);
}

- (void)syncSetClassKitCatalogEnvironment:(int64_t)environment completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_236FCB3D4;
  v11[3] = &unk_278A17BC0;
  v12 = completionCopy;
  v7 = completionCopy;
  v9 = objc_msgSend_syncUtilityServer_(self, v8, v11);
  objc_msgSend_remote_setClassKitCatalogEnvironment_completion_(v9, v10, environment, v7);
}

- (void)syncStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB48C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncStatsWithCompletion_(v7, v8, v5);
}

- (void)syncPushWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB54C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncPushWithCompletion_(v7, v8, v5);
}

- (void)syncFetchWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB60C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncFetchWithCompletion_(v7, v8, v5);
}

- (void)syncBootstrapWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB6CC;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_syncBootstrapWithCompletion_(v7, v8, v5);
}

- (void)fetchReportsWithPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FCB7A8;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  predicateCopy = predicate;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_fetchReportsWithPredicate_completion_(v10, v11, predicateCopy, v7);
}

- (void)statusWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB868;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_statusWithCompletion_(v7, v8, v5);
}

- (void)renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCB928;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_renewCredentialsWithCompletion_(v7, v8, v5);
}

- (void)addAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_236FCBA74;
  v17[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v18 = v9;
  pathCopy = path;
  v12 = objc_msgSend_utilityServer_(self, v11, v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FCBA8C;
  v15[3] = &unk_278A18BC8;
  v15[4] = self;
  v16 = v9;
  v13 = v9;
  objc_msgSend_remote_addAuthorizationStatus_forContextAtPath_completion_(v12, v14, status, pathCopy, v15);
}

- (void)addAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_236FCBCD8;
  v17[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v18 = v9;
  itemCopy = item;
  v12 = objc_msgSend_utilityServer_(self, v11, v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FCBCF0;
  v15[3] = &unk_278A18BC8;
  v15[4] = self;
  v16 = v9;
  v13 = v9;
  objc_msgSend_remote_addAuthorizationStatus_forHandoutAssignedItem_completion_(v12, v14, status, itemCopy, v15);
}

- (void)removeAuthorizationStatus:(unint64_t)status forContextAtPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_236FCBF3C;
  v17[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v18 = v9;
  pathCopy = path;
  v12 = objc_msgSend_utilityServer_(self, v11, v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FCBF54;
  v15[3] = &unk_278A18BC8;
  v15[4] = self;
  v16 = v9;
  v13 = v9;
  objc_msgSend_remote_removeAuthorizationStatus_forContextAtPath_completion_(v12, v14, status, pathCopy, v15);
}

- (void)removeAuthorizationStatus:(unint64_t)status forHandoutAssignedItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_236FCC1A0;
  v17[3] = &unk_278A17BC0;
  v9 = completionCopy;
  v18 = v9;
  itemCopy = item;
  v12 = objc_msgSend_utilityServer_(self, v11, v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FCC1B8;
  v15[3] = &unk_278A18BC8;
  v15[4] = self;
  v16 = v9;
  v13 = v9;
  objc_msgSend_remote_removeAuthorizationStatus_forHandoutAssignedItem_completion_(v12, v14, status, itemCopy, v15);
}

- (void)authorizationStatusForContextAtPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FCC398;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  pathCopy = path;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_authorizationStatusForContextAtPath_completion_(v10, v11, pathCopy, v7);
}

- (void)authorizationStatusForHandoutAssignedItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FCC474;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  itemCopy = item;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_authorizationStatusForHandoutAssignedItem_completion_(v10, v11, itemCopy, v7);
}

- (void)addAdminRequestor:(id)requestor completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FCC550;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  requestorCopy = requestor;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_addAdminRequestor_completion_(v10, v11, requestorCopy, v7);
}

- (void)addOrganization:(id)organization withLocations:(id)locations completion:(id)completion
{
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FCC640;
  v15[3] = &unk_278A17BC0;
  v16 = completionCopy;
  v9 = completionCopy;
  locationsCopy = locations;
  organizationCopy = organization;
  v13 = objc_msgSend_utilityServer_(self, v12, v15);
  objc_msgSend_remote_addOrganization_withLocations_completion_(v13, v14, organizationCopy, locationsCopy, v9);
}

- (void)deleteOrganization:(id)organization completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_236FCC71C;
  v12[3] = &unk_278A17BC0;
  v13 = completionCopy;
  v7 = completionCopy;
  organizationCopy = organization;
  v10 = objc_msgSend_utilityServer_(self, v9, v12);
  objc_msgSend_remote_deleteOrganization_completion_(v10, v11, organizationCopy, v7);
}

- (void)topLevelContentStoreCacheDirectoryURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCC7DC;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_topLevelContentStoreCacheDirectoryURLWithCompletion_(v7, v8, v5);
}

- (void)currentUserContentStoreCacheDirectoryURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCC89C;
  v9[3] = &unk_278A17BC0;
  v10 = completionCopy;
  v5 = completionCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_currentUserContentStoreCacheDirectoryURLWithCompletion_(v7, v8, v5);
}

- (void)accountChangedTrigger:(id)trigger
{
  triggerCopy = trigger;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_236FCC970;
  v10[3] = &unk_278A17BC0;
  v11 = triggerCopy;
  v5 = triggerCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v10);
  objc_msgSend_remote_accountChanged(v7, v8, v9);

  v5[2](v5, 1, 0);
}

- (void)getBootstrapMode:(id)mode
{
  modeCopy = mode;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_236FCCA30;
  v9[3] = &unk_278A17BC0;
  v10 = modeCopy;
  v5 = modeCopy;
  v7 = objc_msgSend_utilityServer_(self, v6, v9);
  objc_msgSend_remote_getBootstrapMode_(v7, v8, v5);
}

@end
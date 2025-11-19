@interface CKDatabase
+ (void)initialize;
- (CKContainer)container;
- (CKDatabase)init;
- (CKDatabaseScope)databaseScope;
- (NSOperationQueue)operationQueue;
- (id)CKPropertiesDescription;
- (id)_initWithContainer:(id)a3 scope:(int64_t)a4;
- (id)initInternalWithImplementation:(id)a3 container:(id)a4;
- (int64_t)scope;
- (void)addOperation:(CKDatabaseOperation *)operation;
- (void)checkSupportedDeviceCapabilities:(id)a3 inZone:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)clearRecordCache;
- (void)deleteRecordWithID:(CKRecordID *)recordID completionHandler:(void *)completionHandler;
- (void)deleteRecordZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler;
- (void)deleteSubscriptionWithID:(CKSubscriptionID)subscriptionID completionHandler:(void *)completionHandler;
- (void)fetchAllRecordZonesWithCompletionHandler:(void *)completionHandler;
- (void)fetchAllSubscriptionsWithCompletionHandler:(void *)completionHandler;
- (void)fetchRecordWithID:(CKRecordID *)recordID completionHandler:(void *)completionHandler;
- (void)fetchRecordZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler;
- (void)fetchSubscriptionWithID:(CKSubscriptionID)subscriptionID completionHandler:(void *)completionHandler;
- (void)performQuery:(CKQuery *)query inZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler;
- (void)saveRecord:(CKRecord *)record completionHandler:(void *)completionHandler;
- (void)saveRecordZone:(CKRecordZone *)zone completionHandler:(void *)completionHandler;
- (void)saveSubscription:(CKSubscription *)subscription completionHandler:(void *)completionHandler;
@end

@implementation CKDatabase

- (CKContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKDatabaseScope)databaseScope
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_databaseScope(v3, v4, v5);

  return v6;
}

- (int64_t)scope
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_scope(v3, v4, v5);

  return v6;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_CKPropertiesDescription(v3, v4, v5);

  return v6;
}

- (NSOperationQueue)operationQueue
{
  v3 = objc_msgSend_implementation(self, a2, v2);
  v6 = objc_msgSend_operationQueue(v3, v4, v5);

  return v6;
}

- (CKDatabase)init
{
  v5 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, v2);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v5, v6, a2, self, @"CKDatabase.m", 468, @"Use +[CKContainer privateCloudDatabase] or +[CKContainer publicCloudDatabase] instead of creating your own");

  return 0;
}

- (id)_initWithContainer:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CKDatabase;
  v7 = [(CKDatabase *)&v16 init];
  if (v7)
  {
    v8 = [CKDatabaseImplementation alloc];
    v11 = objc_msgSend_implementation(v6, v9, v10);
    inited = objc_msgSend_initInternalWithContainerImplementation_scope_(v8, v12, v11, a4);
    implementation = v7->_implementation;
    v7->_implementation = inited;

    objc_storeWeak(&v7->_container, v6);
  }

  return v7;
}

- (id)initInternalWithImplementation:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CKDatabase;
  v9 = [(CKDatabase *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_implementation, a3);
    objc_storeWeak(p_isa + 1, v8);
  }

  return p_isa;
}

- (void)addOperation:(CKDatabaseOperation *)operation
{
  v4 = operation;
  v14 = objc_msgSend_implementation(self, v5, v6);
  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_convenienceConfiguration(v9, v10, v11);
  objc_msgSend_addOperation_wrappingDatabase_convenienceConfiguration_(v14, v13, v4, self, v12);
}

- (void)fetchRecordWithID:(CKRecordID *)recordID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = recordID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_fetchRecordWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)saveRecord:(CKRecord *)record completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = record;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_saveRecord_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)deleteRecordWithID:(CKRecordID *)recordID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = recordID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_deleteRecordWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)performQuery:(CKQuery *)query inZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler
{
  v8 = completionHandler;
  v9 = zoneID;
  v10 = query;
  v20 = objc_msgSend_implementation(self, v11, v12);
  v15 = objc_msgSend_container(self, v13, v14);
  v18 = objc_msgSend_convenienceConfiguration(v15, v16, v17);
  objc_msgSend_performQuery_inZoneWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v20, v19, v10, v9, self, v18, v8);
}

- (void)fetchAllRecordZonesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v14 = objc_msgSend_implementation(self, v5, v6);
  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_convenienceConfiguration(v9, v10, v11);
  objc_msgSend_fetchAllRecordZonesWithWrappingDatabase_convenienceConfiguration_completionHandler_(v14, v13, self, v12, v4);
}

- (void)fetchRecordZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = zoneID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_fetchRecordZoneWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)saveRecordZone:(CKRecordZone *)zone completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = zone;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_saveRecordZone_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)deleteRecordZoneWithID:(CKRecordZoneID *)zoneID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = zoneID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_deleteRecordZoneWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)checkSupportedDeviceCapabilities:(id)a3 inZone:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v23 = objc_msgSend_implementation(self, v14, v15);
  v18 = objc_msgSend_container(self, v16, v17);
  v21 = objc_msgSend_convenienceConfiguration(v18, v19, v20);
  objc_msgSend_checkSupportedDeviceCapabilitiesInZone_desiredCapabilities_options_wrappingDatabase_convenienceConfiguration_completionHandler_(v23, v22, v12, v13, v11, self, v21, v10);
}

- (void)saveSubscription:(CKSubscription *)subscription completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = subscription;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_saveSubscription_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)deleteSubscriptionWithID:(CKSubscriptionID)subscriptionID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = subscriptionID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_deleteSubscriptionWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)fetchSubscriptionWithID:(CKSubscriptionID)subscriptionID completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = subscriptionID;
  v17 = objc_msgSend_implementation(self, v8, v9);
  v12 = objc_msgSend_container(self, v10, v11);
  v15 = objc_msgSend_convenienceConfiguration(v12, v13, v14);
  objc_msgSend_fetchSubscriptionWithID_wrappingDatabase_convenienceConfiguration_completionHandler_(v17, v16, v7, self, v15, v6);
}

- (void)fetchAllSubscriptionsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v14 = objc_msgSend_implementation(self, v5, v6);
  v9 = objc_msgSend_container(self, v7, v8);
  v12 = objc_msgSend_convenienceConfiguration(v9, v10, v11);
  objc_msgSend_fetchAllSubscriptionsWithWrappingDatabase_convenienceConfiguration_completionHandler_(v14, v13, self, v12, v4);
}

- (void)clearRecordCache
{
  v5 = objc_msgSend_implementation(self, a2, v2);
  objc_msgSend_clearRecordCache(v5, v3, v4);
}

@end
@interface CKSyncEngineConfiguration
- (CKSyncEngineAsyncDelegate)asyncDelegate;
- (CKSyncEngineConfiguration)init;
- (CKSyncEngineConfiguration)initWithDatabase:(CKDatabase *)database stateSerialization:(CKSyncEngineStateSerialization *)stateSerialization delegate:(id)delegate;
- (CKSyncEngineConfiguration)initWithDatabase:(id)database dataSource:(id)source metadata:(id)metadata;
- (CKSyncEngineConfiguration)initWithDatabase:(id)database stateSerialization:(id)serialization;
- (CKSyncEngineConfiguration)initWithDatabase:(id)database stateSerialization:(id)serialization asyncDelegate:(id)delegate;
- (CKSyncEngineDataSource)dataSource;
- (NSData)metadata;
- (id)delegate;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)setMetadata:(id)metadata;
@end

@implementation CKSyncEngineConfiguration

- (CKSyncEngineConfiguration)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"%s is unavailable", "[CKSyncEngineConfiguration init]");
  objc_exception_throw(v4);
}

- (CKSyncEngineConfiguration)initWithDatabase:(id)database stateSerialization:(id)serialization
{
  databaseCopy = database;
  serializationCopy = serialization;
  v31 = 0;
  v9 = _CKCheckArgument("database", databaseCopy, 0, 0, 0, &v31);
  v10 = v31;
  if ((v9 & 1) == 0)
  {
    v19 = v10;
    v20 = [CKException alloc];
    v23 = objc_msgSend_code(v19, v21, v22);
    v26 = objc_msgSend_localizedDescription(v19, v24, v25);
    v28 = objc_msgSend_initWithCode_format_(v20, v27, v23, @"%@", v26);
    v29 = v28;

    objc_exception_throw(v28);
  }

  v30.receiver = self;
  v30.super_class = CKSyncEngineConfiguration;
  v11 = [(CKSyncEngineConfiguration *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_database, database);
    v15 = objc_msgSend_copy(serializationCopy, v13, v14);
    stateSerialization = v12->_stateSerialization;
    v12->_stateSerialization = v15;

    v12->_automaticallySync = 1;
    v12->_priority = 2;
    v12->_continueSendingChangesAfterFailure = 0;
    assetDownloadStagingManager = v12->_assetDownloadStagingManager;
    v12->_assetDownloadStagingManager = 0;

    v12->_useOpportunisticPushTopic = 0;
    v12->_immediatePushSyncEnabled = CKCurrentProcessIsDaemon() ^ 1;
  }

  return v12;
}

- (CKSyncEngineConfiguration)initWithDatabase:(id)database stateSerialization:(id)serialization asyncDelegate:(id)delegate
{
  databaseCopy = database;
  serializationCopy = serialization;
  delegateCopy = delegate;
  v28 = 0;
  v11 = _CKCheckArgument("asyncDelegate", delegateCopy, 0, 0, 0, &v28);
  v12 = v28;
  if ((v11 & 1) == 0)
  {
    v17 = v12;
    v18 = [CKException alloc];
    v21 = objc_msgSend_code(v17, v19, v20);
    v24 = objc_msgSend_localizedDescription(v17, v22, v23);
    v26 = objc_msgSend_initWithCode_format_(v18, v25, v21, @"%@", v24);
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = objc_msgSend_initWithDatabase_stateSerialization_(self, v13, databaseCopy, serializationCopy);
  v15 = v14;
  if (v14)
  {
    objc_storeWeak((v14 + 48), delegateCopy);
  }

  return v15;
}

- (CKSyncEngineConfiguration)initWithDatabase:(CKDatabase *)database stateSerialization:(CKSyncEngineStateSerialization *)stateSerialization delegate:(id)delegate
{
  v8 = database;
  v9 = stateSerialization;
  v10 = delegate;
  v28 = 0;
  v11 = _CKCheckArgument("delegate", v10, 0, 0, 0, &v28);
  v12 = v28;
  if ((v11 & 1) == 0)
  {
    v17 = v12;
    v18 = [CKException alloc];
    v21 = objc_msgSend_code(v17, v19, v20);
    v24 = objc_msgSend_localizedDescription(v17, v22, v23);
    v26 = objc_msgSend_initWithCode_format_(v18, v25, v21, @"%@", v24);
    v27 = v26;

    objc_exception_throw(v26);
  }

  v14 = objc_msgSend_initWithDatabase_stateSerialization_(self, v13, v8, v9);
  v15 = v14;
  if (v14)
  {
    objc_storeWeak((v14 + 32), v10);
  }

  return v15;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_database(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"database", v6, 0);

  v8 = MEMORY[0x1E696AD98];
  v11 = objc_msgSend_priority(self, v9, v10);
  v13 = objc_msgSend_numberWithInteger_(v8, v12, v11);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"priority", v13, 0);

  v17 = objc_msgSend_stateSerialization(self, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_stateSerialization(self, v18, v19);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v21, @"state", v20, 0);
  }

  if ((objc_msgSend_automaticSyncingEnabled(self, v18, v19) & 1) == 0)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v22, @"automaticSyncingEnabled", MEMORY[0x1E695E110], 0);
  }

  v24 = objc_msgSend_xpcActivityCriteriaOverrides(self, v22, v23);

  if (v24)
  {
    v27 = objc_msgSend_xpcActivityCriteriaOverrides(self, v25, v26);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"xpcActivityCriteriaOverrides", v27, 0);
  }

  v29 = objc_msgSend_apsMachServiceName(self, v25, v26);

  if (v29)
  {
    v32 = objc_msgSend_apsMachServiceName(self, v30, v31);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v33, @"apsMachServiceName", v32, 0);
  }

  v34 = objc_msgSend_subscriptionID(self, v30, v31);

  if (v34)
  {
    v37 = objc_msgSend_subscriptionID(self, v35, v36);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v38, @"subscriptionID", v37, 0);
  }

  if (objc_msgSend_useOpportunisticPushTopic(self, v35, v36))
  {
    v41 = MEMORY[0x1E696AD98];
    v42 = objc_msgSend_useOpportunisticPushTopic(self, v39, v40);
    v44 = objc_msgSend_numberWithBool_(v41, v43, v42);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v45, @"useOpportunisticPushTopic", v44, 0);
  }
}

- (CKSyncEngineConfiguration)initWithDatabase:(id)database dataSource:(id)source metadata:(id)metadata
{
  databaseCopy = database;
  sourceCopy = source;
  metadataCopy = metadata;
  v31 = 0;
  v11 = _CKCheckArgument("dataSource", sourceCopy, 0, 0, 0, &v31);
  v12 = v31;
  if ((v11 & 1) == 0)
  {
    v20 = v12;
    v21 = [CKException alloc];
    v24 = objc_msgSend_code(v20, v22, v23);
    v27 = objc_msgSend_localizedDescription(v20, v25, v26);
    v29 = objc_msgSend_initWithCode_format_(v21, v28, v24, @"%@", v27);
    v30 = v29;

    objc_exception_throw(v29);
  }

  if (!metadataCopy)
  {
    v18 = objc_msgSend_initWithDatabase_stateSerialization_(self, v13, databaseCopy, 0);
    if (!v18)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = [CKSyncEngineStateSerialization alloc];
  v16 = objc_msgSend_initWithData_(v14, v15, metadataCopy);
  v18 = objc_msgSend_initWithDatabase_stateSerialization_(self, v17, databaseCopy, v16);

  if (v18)
  {
LABEL_4:
    objc_storeWeak(&v18->_dataSource, sourceCopy);
  }

LABEL_5:

  return v18;
}

- (NSData)metadata
{
  v3 = objc_msgSend_stateSerialization(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);

  return v6;
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [CKSyncEngineStateSerialization alloc];
  v8 = objc_msgSend_initWithData_(v5, v6, metadataCopy);

  objc_msgSend_setStateSerialization_(self, v7, v8);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKSyncEngineAsyncDelegate)asyncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_asyncDelegate);

  return WeakRetained;
}

- (CKSyncEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
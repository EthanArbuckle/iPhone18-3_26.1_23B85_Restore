@interface CKUploadRequestPersistentStore
+ (id)repairRecordToMetadata:(id)metadata;
- (CKUploadRequestPersistentStore)initWithDatabaseURL:(id)l;
- (id)allData;
- (id)assetRepairMetadata;
- (id)currentUser;
- (id)delayedSyncDateForRecord:(id)record;
- (id)delayedSyncRecordNamesAfterDate:(id)date;
- (id)delayedSyncRecordNamesBeforeAndIncludingDate:(id)date;
- (id)earliestDelayedSyncDateAfterDate:(id)date;
- (id)lastFetchDate;
- (id)metadataForRecordName:(id)name;
- (id)packageRepairMetadata;
- (id)sortedDelayedSyncRecordsForDatabase:(id)database;
- (id)syncEngineMetadata;
- (id)unarchivedObjectOfClass:(Class)class fromData:(id)data error:(id *)error;
- (int64_t)delayedSyncCountForRecordName:(id)name;
- (void)deleteDatabase;
- (void)deleteDelayedSyncForRecordName:(id)name;
- (void)deleteRepairRecord:(id)record;
- (void)markRecordNameUnrecoverable:(id)unrecoverable;
- (void)persistDelayedSyncForRecordName:(id)name withDate:(id)date increasingCount:(BOOL)count;
- (void)persistRepairRecord:(id)record;
- (void)persistSyncEngineMetadata:(id)metadata;
- (void)readWriteDatabase:(id)database async:(BOOL)async withCompletionHandler:(id)handler;
- (void)setCurrentUser:(id)user;
- (void)setLastFetchDate:(id)date;
@end

@implementation CKUploadRequestPersistentStore

- (CKUploadRequestPersistentStore)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = CKUploadRequestPersistentStore;
  v7 = [(CKUploadRequestPersistentStore *)&v14 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(lCopy, v5, v6);
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v7[8] = 1;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.cloudkit.uploadrequest.database", v10);
    v12 = *(v7 + 3);
    *(v7 + 3) = v11;

    dispatch_queue_set_specific(*(v7 + 3), v7 + 24, 1, 0);
  }

  return v7;
}

- (id)lastFetchDate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1883EE170;
  v9 = sub_1883EF76C;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18863D2E4;
  v4[3] = &unk_1E70BFAE8;
  v4[4] = &v5;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v4, 0, &unk_1EFA2F928);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)currentUser
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1883EE170;
  v9 = sub_1883EF76C;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18863D528;
  v4[3] = &unk_1E70BFB10;
  v4[4] = self;
  v4[5] = &v5;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v4, 0, &unk_1EFA2F948);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)assetRepairMetadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1883EE170;
  v13 = sub_1883EF76C;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18863D910;
  v8[3] = &unk_1E70BFB10;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v8, 0, &unk_1EFA2F968);
  v2 = v10[5];
  if (!v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to get asset repair metadata, return data is inexplicably nil", v7, 2u);
    }

    v4 = v10[5];
    v10[5] = MEMORY[0x1E695E0F0];

    v2 = v10[5];
  }

  v5 = v2;
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)packageRepairMetadata
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1883EE170;
  v13 = sub_1883EF76C;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18863DED0;
  v8[3] = &unk_1E70BFB10;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v8, 0, &unk_1EFA2F988);
  v2 = v10[5];
  if (!v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Failed to get package repair metadata, return data is inexplicably nil", v7, 2u);
    }

    v4 = v10[5];
    v10[5] = MEMORY[0x1E695E0F0];

    v2 = v10[5];
  }

  v5 = v2;
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)metadataForRecordName:(id)name
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1883EE170;
  v19 = sub_1883EF76C;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18863E3F0;
  v11[3] = &unk_1E70BFB38;
  v12 = nameCopy;
  selfCopy = self;
  v14 = &v15;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18863E644;
  v9[3] = &unk_1E70BC048;
  v5 = v12;
  v10 = v5;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, v6, v11, 0, v9);
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

- (id)sortedDelayedSyncRecordsForDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_msgSend_objectForKeyedSubscript_(databaseCopy, v4, @"Scheduler");
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_18863E8C4;
  v25[3] = &unk_1E70BFB60;
  v6 = databaseCopy;
  v26 = v6;
  v8 = objc_msgSend_CKFilter_(v5, v7, v25);

  v11 = objc_msgSend_allKeys(v8, v9, v10);
  v14 = objc_msgSend_mutableCopy(v11, v12, v13);
  v17 = v14;
  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
  }

  v19 = v18;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18863E934;
  v23[3] = &unk_1E70BFB88;
  v24 = v8;
  v20 = v8;
  objc_msgSend_sortUsingComparator_(v19, v21, v23);

  return v19;
}

- (id)delayedSyncRecordNamesBeforeAndIncludingDate:(id)date
{
  dateCopy = date;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1883EE170;
  v20 = sub_1883EF76C;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18863EB88;
  v13[3] = &unk_1E70BFB38;
  v13[4] = self;
  v5 = dateCopy;
  v14 = v5;
  v15 = &v16;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, v6, v13, 0, &unk_1EFA2F9A8);
  v7 = v17[5];
  if (!v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Failed to get record names, return array is inexplicably nil", v12, 2u);
    }

    v9 = v17[5];
    v17[5] = MEMORY[0x1E695E0F0];

    v7 = v17[5];
  }

  v10 = v7;

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)delayedSyncRecordNamesAfterDate:(id)date
{
  dateCopy = date;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1883EE170;
  v16 = sub_1883EF76C;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18863EEB8;
  v9[3] = &unk_1E70BFB38;
  v9[4] = self;
  v5 = dateCopy;
  v10 = v5;
  v11 = &v12;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, v6, v9, 0, &unk_1EFA2F9C8);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)earliestDelayedSyncDateAfterDate:(id)date
{
  v4 = objc_msgSend_delayedSyncRecordNamesAfterDate_(self, a2, date);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_firstObject(v4, v5, v6);
    v10 = objc_msgSend_delayedSyncDateForRecord_(self, v9, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)delayedSyncDateForRecord:(id)record
{
  recordCopy = record;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1883EE170;
  v16 = sub_1883EF76C;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18863F26C;
  v9[3] = &unk_1E70BFB10;
  v5 = recordCopy;
  v10 = v5;
  v11 = &v12;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, v6, v9, 0, &unk_1EFA2F9E8);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (int64_t)delayedSyncCountForRecordName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18863F4F8;
  v9[3] = &unk_1E70BFB10;
  v5 = nameCopy;
  v10 = v5;
  v11 = &v12;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, v6, v9, 0, &unk_1EFA2FA08);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)syncEngineMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1883EE170;
  v9 = sub_1883EF76C;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18863F7A4;
  v4[3] = &unk_1E70BFAE8;
  v4[4] = &v5;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v4, 0, &unk_1EFA2FA28);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setLastFetchDate:(id)date
{
  dateCopy = date;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18863F97C;
  v7[3] = &unk_1E70BFBB0;
  v8 = dateCopy;
  v5 = dateCopy;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v7, 0, &unk_1EFA2FA48);
}

- (void)setCurrentUser:(id)user
{
  userCopy = user;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18863FB50;
  v7[3] = &unk_1E70BFBB0;
  v8 = userCopy;
  v5 = userCopy;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v7, 0, &unk_1EFA2FA68);
}

- (void)persistRepairRecord:(id)record
{
  recordCopy = record;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18863FE8C;
  v9[3] = &unk_1E70BFBD8;
  v10 = recordCopy;
  selfCopy = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886402B0;
  v7[3] = &unk_1E70BC048;
  v8 = v10;
  v5 = v10;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v9, 0, v7);
}

- (void)deleteRepairRecord:(id)record
{
  recordCopy = record;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886404C0;
  v9[3] = &unk_1E70BFBB0;
  v10 = recordCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886408D4;
  v7[3] = &unk_1E70BC048;
  v8 = v10;
  v5 = v10;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v9, 0, v7);
}

- (void)persistDelayedSyncForRecordName:(id)name withDate:(id)date increasingCount:(BOOL)count
{
  nameCopy = name;
  dateCopy = date;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_188640C98;
  v15[3] = &unk_1E70BFC20;
  v16 = nameCopy;
  v17 = dateCopy;
  countCopy = count;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188640F18;
  v13[3] = &unk_1E70BC048;
  v14 = v16;
  v10 = v16;
  v11 = dateCopy;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v12, v15, 0, v13);
}

- (void)deleteDelayedSyncForRecordName:(id)name
{
  nameCopy = name;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188641108;
  v9[3] = &unk_1E70BFBB0;
  v10 = nameCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188641304;
  v7[3] = &unk_1E70BC048;
  v8 = v10;
  v5 = v10;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v9, 0, v7);
}

- (void)markRecordNameUnrecoverable:(id)unrecoverable
{
  unrecoverableCopy = unrecoverable;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188641650;
  v9[3] = &unk_1E70BFBB0;
  v10 = unrecoverableCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18864170C;
  v7[3] = &unk_1E70BC048;
  v8 = v10;
  v5 = v10;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v9, 0, v7);
}

- (void)persistSyncEngineMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886418AC;
  v7[3] = &unk_1E70BFBB0;
  v8 = metadataCopy;
  v5 = metadataCopy;
  objc_msgSend_readWriteDatabase_async_withCompletionHandler_(self, v6, v7, 0, &unk_1EFA2FB08);
}

- (void)deleteDatabase
{
  v4 = objc_msgSend_stateQueue(self, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_188641BF0;
  block[3] = &unk_1E70BC388;
  block[4] = self;
  dispatch_sync(v4, block);
}

- (id)unarchivedObjectOfClass:(Class)class fromData:(id)data error:(id *)error
{
  v15[6] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v15[0] = 0;
  v9 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(MEMORY[0x1E696ACD0], v8, class, dataCopy, v15);
  v10 = v15[0];
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)readWriteDatabase:(id)database async:(BOOL)async withCompletionHandler:(id)handler
{
  asyncCopy = async;
  databaseCopy = database;
  handlerCopy = handler;
  if (asyncCopy)
  {
    v12 = MEMORY[0x1E69E9750];
  }

  else
  {
    v12 = MEMORY[0x1E69E97D0];
  }

  v13 = objc_msgSend_stateQueue(self, v9, v10);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1886421B4;
  v16[3] = &unk_1E70BFC70;
  v16[4] = self;
  v17 = handlerCopy;
  v18 = databaseCopy;
  v14 = databaseCopy;
  v15 = handlerCopy;
  v12(v13, v16);
}

+ (id)repairRecordToMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = objc_msgSend_recordType(metadataCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"MissingAsset");

  if (isEqualToString)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v9, @"zone");
    v13 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v12, @"affectedRecordID");
    v15 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v14, @"affectedRecordType");
    v17 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v16, @"fieldName");
    v19 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v18, @"fileSignature");
    v21 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v20, @"referenceSignature");
    v23 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v22, @"listIndex");
    v24 = [CKRecordZoneID alloc];
    v71 = v11;
    v26 = objc_msgSend_initWithZoneName_ownerName_(v24, v25, v11, @"__defaultOwner__");
    v27 = [CKRecordID alloc];
    v70 = v13;
    v29 = objc_msgSend_initWithRecordName_zoneID_(v27, v28, v13, v26);
    v30 = [CKAssetUploadRequestMetadata alloc];
    v35 = objc_msgSend_recordID(metadataCopy, v31, v32);
    v73 = v21;
    if (v23)
    {
      v36 = objc_msgSend_integerValue(v23, v33, v34);
      v67 = v21;
      v37 = v15;
      v38 = v15;
      v39 = v19;
      v41 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_listIndex_(v30, v40, v35, 2, v29, v38, v17, v19, v67, v36);
    }

    else
    {
      v69 = v21;
      v37 = v15;
      v65 = v15;
      v39 = v19;
      v41 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_(v30, v33, v35, 2, v29, v65, v17, v19, v69);
    }

    v64 = v41;

    v57 = v70;
    v62 = v71;
  }

  else
  {
    v42 = objc_msgSend_recordType(metadataCopy, v9, v10);
    v44 = objc_msgSend_isEqualToString_(v42, v43, @"MissingPackage");

    if (!v44)
    {
      v64 = 0;
      goto LABEL_10;
    }

    v46 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v45, @"zone");
    v48 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v47, @"affectedRecordID");
    v37 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v49, @"affectedRecordType");
    v72 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v50, @"fieldName");
    v39 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v51, @"fileSignature");
    v53 = objc_msgSend_objectForKeyedSubscript_(metadataCopy, v52, @"referenceSignature");
    v54 = [CKRecordZoneID alloc];
    v23 = objc_msgSend_initWithZoneName_ownerName_(v54, v55, v46, @"__defaultOwner__");
    v56 = [CKRecordID alloc];
    v57 = v48;
    v26 = objc_msgSend_initWithRecordName_zoneID_(v56, v58, v48, v23);
    v59 = [CKPackageUploadRequestMetadata alloc];
    v29 = objc_msgSend_recordID(metadataCopy, v60, v61);
    v73 = v53;
    v68 = v53;
    v62 = v46;
    v17 = v72;
    v64 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignatures_referenceSignatures_(v59, v63, v29, 2, v26, v37, v68);
  }

LABEL_10:

  return v64;
}

- (id)allData
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1883EE170;
  v13 = sub_1883EF76C;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_188642BC8;
  v8[3] = &unk_1E70BFAE8;
  v8[4] = &v9;
  objc_msgSend_readDatabase_async_withCompletionHandler_(self, a2, v8, 0, &unk_1EFA2FB68);
  v2 = v10[5];
  if (!v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Data is inexplicably nil", v7, 2u);
    }

    v4 = v10[5];
    v10[5] = MEMORY[0x1E695E0F8];

    v2 = v10[5];
  }

  v5 = v2;
  _Block_object_dispose(&v9, 8);

  return v5;
}

@end
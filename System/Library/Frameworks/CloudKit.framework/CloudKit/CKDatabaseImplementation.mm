@interface CKDatabaseImplementation
- (CKContainerImplementation)containerImplementation;
- (id)CKPropertiesDescription;
- (id)CKStatusReportArray;
- (id)initInternalWithContainerImplementation:(id)a3 scope:(int64_t)a4;
- (unint64_t)countAssetCacheItems;
- (void)_addOperation:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 isConvenience:(BOOL)a6;
- (void)_scheduleConvenienceOperation:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5;
- (void)checkSupportedDeviceCapabilitiesInZone:(id)a3 desiredCapabilities:(id)a4 options:(id)a5 wrappingDatabase:(id)a6 convenienceConfiguration:(id)a7 completionHandler:(id)a8;
- (void)clearAssetCache;
- (void)clearCacheEntriesForRecord:(id)a3 completionHandler:(id)a4;
- (void)clearCacheEntriesForZone:(id)a3 completionHandler:(id)a4;
- (void)clearCachesWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)clearInvalidatedPCSCacheEntriesIfNeeded;
- (void)clearRecordCache;
- (void)deleteRecordWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)deleteRecordZoneWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)deleteSubscriptionWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchAllRecordZonesWithWrappingDatabase:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5;
- (void)fetchAllSubscriptionsWithWrappingDatabase:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5;
- (void)fetchPCSFromCacheForRecordWithID:(id)a3 completionHandler:(id)a4;
- (void)fetchPCSFromCacheForShareWithID:(id)a3 completionHandler:(id)a4;
- (void)fetchPCSFromCacheForZoneWithID:(id)a3 localCacheOnly:(BOOL)a4 unitTestOverrides:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchRecordZoneWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)fetchSubscriptionWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)getCorruptRecordsForAllZonesWithCompletionHandler:(id)a3;
- (void)performQuery:(id)a3 inZoneWithID:(id)a4 wrappingDatabase:(id)a5 convenienceConfiguration:(id)a6 completionHandler:(id)a7;
- (void)saveRecord:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)saveRecordZone:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)saveSubscription:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6;
- (void)showAssetCache;
@end

@implementation CKDatabaseImplementation

- (CKContainerImplementation)containerImplementation
{
  WeakRetained = objc_loadWeakRetained(&self->_containerImplementation);

  return WeakRetained;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_scope(self, a2, v2);
  if (v5 > 4)
  {
    v8 = @"INVALID_SCOPE";
  }

  else
  {
    v8 = off_1E70BD1A8[v5];
  }

  v9 = objc_msgSend_containerImplementation(self, v6, v7);
  v11 = objc_msgSend_stringWithFormat_(v4, v10, @"databaseScope=%@, containerImplementation=%@", v8, v9);

  return v11;
}

- (id)initInternalWithContainerImplementation:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CKDatabaseImplementation;
  v7 = [(CKDatabaseImplementation *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_containerImplementation, v6);
    v8->_scope = a4;
    v9 = MEMORY[0x1E696AEC0];
    v12 = objc_msgSend_containerIdentifier(v6, v10, v11);
    v14 = objc_msgSend_stringWithFormat_(v9, v13, @"%@.%@", @"com.apple.cloudkit.database-queue", v12);
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    underlyingDispatchQueue = v8->_underlyingDispatchQueue;
    v8->_underlyingDispatchQueue = v20;

    v22 = objc_opt_new();
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v22;

    objc_msgSend_setUnderlyingQueue_(v8->_operationQueue, v24, v8->_underlyingDispatchQueue);
  }

  return v8;
}

- (void)_addOperation:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 isConvenience:(BOOL)a6
{
  v6 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [CKException alloc];
    v33 = objc_msgSend_initWithCode_format_(v31, v32, 12, @"Only CKDatabaseOperations must be submitted to a CKDatabase");
    objc_exception_throw(v33);
  }

  objc_msgSend_databaseScope(self, v13, v14);
  objc_msgSend_setDatabase_(v10, v15, v11);
  objc_msgSend_applyConvenienceConfiguration_(v10, v16, v12);
  v19 = objc_msgSend_containerImplementation(self, v17, v18);
  v22 = v19;
  if (!v6)
  {
    goto LABEL_9;
  }

  if (!v19)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v27 = v23;
      v30 = objc_msgSend_operationID(v10, v28, v29);
      v34 = 138412290;
      v35 = v30;
      _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "No container found while enqueuing CKDatabase convenience operation %@", &v34, 0xCu);
    }

LABEL_9:
    v24 = objc_msgSend_operationQueue(self, v20, v21);
    objc_msgSend_addOperation_(v24, v25, v10);

    goto LABEL_10;
  }

  objc_msgSend__addPreparedConvenienceOperation_(v19, v20, v10);
LABEL_10:

  v26 = *MEMORY[0x1E69E9840];
}

- (unint64_t)countAssetCacheItems
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  v4 = objc_msgSend_containerImplementation(self, a2, v2);
  v5 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18854D6A4;
  v8[3] = &unk_1E70BD048;
  v8[4] = self;
  v8[5] = &v9;
  if (v4)
  {
    sub_1885397D0(v4, 1, 1, 0, &unk_1EFA2E908, v8);
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)clearAssetCache
{
  v4 = objc_msgSend_containerImplementation(self, a2, v2);
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18854D994;
  v6[3] = &unk_1E70BC8A0;
  v6[4] = self;
  if (v4)
  {
    sub_1885397D0(v4, 1, 1, 0, &unk_1EFA2E928, v6);
  }
}

- (void)showAssetCache
{
  v4 = objc_msgSend_containerImplementation(self, a2, v2);
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18854DC24;
  v6[3] = &unk_1E70BC8A0;
  v6[4] = self;
  if (v4)
  {
    sub_1885397D0(v4, 0, 1, 0, &unk_1EFA2E968, v6);
  }
}

- (void)clearRecordCache
{
  v4 = objc_msgSend_containerImplementation(self, a2, v2);
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18854DDC8;
  v6[3] = &unk_1E70BC8A0;
  v6[4] = self;
  if (v4)
  {
    sub_1885397D0(v4, 0, 1, 0, &unk_1EFA2E988, v6);
  }
}

- (void)getCorruptRecordsForAllZonesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_containerImplementation(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18854DF8C;
  v9[3] = &unk_1E70BC590;
  v10 = v4;
  v8 = v4;
  if (v7)
  {
    sub_1885397D0(v7, 0, 1, 0, &unk_1EFA2E9A8, v9);
  }
}

- (void)clearCachesWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_containerImplementation(self, v7, v8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18854E114;
  v11[3] = &unk_1E70BD070;
  v12 = v6;
  v13 = a3;
  v11[4] = self;
  v10 = v6;
  if (v9)
  {
    sub_1885397D0(v9, 0, 1, 0, &unk_1EFA2E9C8, v11);
  }
}

- (void)clearCacheEntriesForRecord:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_containerImplementation(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18854E31C;
  v13[3] = &unk_1E70BCE10;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  if (v10)
  {
    sub_1885397D0(v10, 0, 1, 0, &unk_1EFA2E9E8, v13);
  }
}

- (void)clearCacheEntriesForZone:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_containerImplementation(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18854E520;
  v13[3] = &unk_1E70BCE10;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  if (v10)
  {
    sub_1885397D0(v10, 0, 1, 0, &unk_1EFA2EA08, v13);
  }
}

- (void)fetchPCSFromCacheForZoneWithID:(id)a3 localCacheOnly:(BOOL)a4 unitTestOverrides:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v15 = objc_msgSend_containerImplementation(self, v13, v14);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18854E754;
  v19[3] = &unk_1E70BCCF8;
  v20 = v10;
  v21 = self;
  v24 = a4;
  v22 = v11;
  v23 = v12;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  if (v15)
  {
    sub_1885397D0(v15, 0, 1, 0, &unk_1EFA2EA28, v19);
  }
}

- (void)fetchPCSFromCacheForShareWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_containerImplementation(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18854E95C;
  v13[3] = &unk_1E70BCE10;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  if (v10)
  {
    sub_1885397D0(v10, 0, 1, 0, &unk_1EFA2EA48, v13);
  }
}

- (void)fetchPCSFromCacheForRecordWithID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_containerImplementation(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18854EB60;
  v13[3] = &unk_1E70BCE10;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  if (v10)
  {
    sub_1885397D0(v10, 0, 1, 0, &unk_1EFA2EA68, v13);
  }
}

- (void)clearInvalidatedPCSCacheEntriesIfNeeded
{
  v3 = objc_msgSend_containerImplementation(self, a2, v2);
  if (v3)
  {
    v4 = v3;
    sub_1885397D0(v3, 0, 1, 0, &unk_1EFA2EA88, &unk_1EFA2EAA8);
    v3 = v4;
  }
}

- (id)CKStatusReportArray
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_operationQueue(self, v5, v6);
  v10 = objc_msgSend_operationCount(v7, v8, v9);
  v13 = objc_msgSend_operationQueue(self, v11, v12);
  v16 = objc_msgSend_maxConcurrentOperationCount(v13, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v4, v17, @"%@, %lu/%ld operations", self, v10, v16);
  objc_msgSend_addObject_(v3, v19, v18);

  v22 = objc_msgSend_operationQueue(self, v20, v21);
  v25 = objc_msgSend_operationCount(v22, v23, v24);

  if (v25)
  {
    objc_msgSend_addObject_(v3, v26, @"\nOperations: {");
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = objc_msgSend_operationQueue(self, v27, v28);
    v32 = objc_msgSend_operations(v29, v30, v31);

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v44, v48, 16);
    if (v34)
    {
      v36 = v34;
      v37 = *v45;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v32);
          }

          v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, @"\t%@", *(*(&v44 + 1) + 8 * i));
          objc_msgSend_addObject_(v3, v40, v39);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v44, v48, 16);
      }

      while (v36);
    }

    objc_msgSend_addObject_(v3, v41, @"}");
  }

  v42 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_scheduleConvenienceOperation:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v14 = a3;
  objc_msgSend_databaseScope(self, v10, v11);
  objc_msgSend_configureConvenience_(v14, v12, v8);
  objc_msgSend__addOperation_wrappingDatabase_convenienceConfiguration_isConvenience_(self, v13, v14, v9, v8, 1);
}

- (void)fetchRecordWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("recordID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKFetchRecordsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordIDs_(v17, v20, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_18854F194;
  v37[3] = &unk_1E70BD110;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setFetchRecordsCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)saveRecord:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("record", v10, 0, 0, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifyRecordsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v17, v20, v19, 0);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_18854F558;
  v37[3] = &unk_1E70BD098;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setModifyRecordsCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecordWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("recordID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifyRecordsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v17, v20, 0, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_18854F90C;
  v37[3] = &unk_1E70BD098;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setModifyRecordsCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)performQuery:(id)a3 inZoneWithID:(id)a4 wrappingDatabase:(id)a5 convenienceConfiguration:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v46 = 0;
  v17 = _CKCheckArgument("query", v12, 0, 0, 0, &v46);
  v18 = v46;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    v31 = [CKException alloc];
    v34 = objc_msgSend_code(v19, v32, v33);
    v37 = objc_msgSend_localizedDescription(v19, v35, v36);
    v39 = objc_msgSend_initWithCode_format_(v31, v38, v34, @"%@", v37);
    v40 = v39;

    objc_exception_throw(v39);
  }

  v20 = objc_opt_new();
  v21 = [CKQueryOperation alloc];
  v23 = objc_msgSend_initWithQuery_(v21, v22, v12);
  objc_msgSend_setZoneID_(v23, v24, v13);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_18854FCC0;
  v44[3] = &unk_1E70BD0C0;
  v25 = v20;
  v45 = v25;
  objc_msgSend_setRecordMatchedBlock_(v23, v26, v44);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_18854FD6C;
  v41[3] = &unk_1E70BD0E8;
  v42 = v25;
  v43 = v16;
  v27 = v25;
  v28 = v16;
  objc_msgSend_setQueryCompletionBlock_(v23, v29, v41);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v30, v23, v14, v15);
}

- (void)fetchAllRecordZonesWithWrappingDatabase:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_fetchAllRecordZonesOperation(CKFetchRecordZonesOperation, v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18854FE84;
  v17[3] = &unk_1E70BCE38;
  v18 = v8;
  v14 = v8;
  objc_msgSend_setFetchRecordZonesCompletionBlock_(v13, v15, v17);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v16, v13, v10, v9);
}

- (void)fetchRecordZoneWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("zoneID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKFetchRecordZonesOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordZoneIDs_(v17, v20, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_188550124;
  v37[3] = &unk_1E70BD110;
  v38 = v10;
  v39 = v13;
  v22 = v10;
  v23 = v13;
  objc_msgSend_setFetchRecordZonesCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)saveRecordZone:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("zone", v10, 0, 0, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifyRecordZonesOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordZonesToSave_recordZoneIDsToDelete_(v17, v20, v19, 0);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1885503F8;
  v37[3] = &unk_1E70BD138;
  v38 = v10;
  v39 = v13;
  v22 = v10;
  v23 = v13;
  objc_msgSend_setModifyRecordZonesCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecordZoneWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("zoneID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifyRecordZonesOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithRecordZonesToSave_recordZoneIDsToDelete_(v17, v20, 0, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1885506CC;
  v37[3] = &unk_1E70BD138;
  v38 = v10;
  v39 = v13;
  v22 = v10;
  v23 = v13;
  objc_msgSend_setModifyRecordZonesCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)saveSubscription:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("subscription", v10, 0, 0, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifySubscriptionsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithSubscriptionsToSave_subscriptionIDsToDelete_(v17, v20, v19, 0);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_18855098C;
  v37[3] = &unk_1E70BD098;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setModifySubscriptionsCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)checkSupportedDeviceCapabilitiesInZone:(id)a3 desiredCapabilities:(id)a4 options:(id)a5 wrappingDatabase:(id)a6 convenienceConfiguration:(id)a7 completionHandler:(id)a8
{
  v64[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v63 = 0;
  v20 = _CKCheckArgument("zone", v14, 0, 0, 0, &v63);
  v21 = v63;
  v22 = v21;
  if ((v20 & 1) == 0)
  {
    v43 = [CKException alloc];
    v46 = objc_msgSend_code(v22, v44, v45);
    v49 = objc_msgSend_localizedDescription(v22, v47, v48);
    v51 = objc_msgSend_initWithCode_format_(v43, v50, v46, @"%@", v49);
    v52 = v51;

    objc_exception_throw(v51);
  }

  v23 = [CKCheckSupportedDeviceCapabilitiesOperation alloc];
  v26 = objc_msgSend_zoneID(v14, v24, v25);
  v64[0] = v26;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v64, 1);
  v30 = objc_msgSend_initWithDesiredCapabilities_zoneIDs_options_(v23, v29, v15, v28, v16);

  v33 = objc_msgSend_resolvedConfiguration(v30, v31, v32);
  objc_msgSend_setRequestOriginator_(v33, v34, 4);

  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = v19 != 0;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_188550E50;
  v58[3] = &unk_1E70BD160;
  v60 = v61;
  v35 = v19;
  v59 = v35;
  objc_msgSend_setPerResultBlock_(v30, v36, v58);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_188551058;
  v53[3] = &unk_1E70BD188;
  v57 = v61;
  v37 = v14;
  v54 = v37;
  v38 = v15;
  v55 = v38;
  v39 = v35;
  v56 = v39;
  objc_msgSend_setCheckSupportedDeviceCapabilitiesCompletionBlock_(v30, v40, v53);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v41, v30, v17, v18);

  _Block_object_dispose(v61, 8);
  v42 = *MEMORY[0x1E69E9840];
}

- (void)deleteSubscriptionWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("subscriptionID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKModifySubscriptionsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithSubscriptionsToSave_subscriptionIDsToDelete_(v17, v20, 0, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1885513FC;
  v37[3] = &unk_1E70BD098;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setModifySubscriptionsCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchSubscriptionWithID:(id)a3 wrappingDatabase:(id)a4 convenienceConfiguration:(id)a5 completionHandler:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v40 = 0;
  v14 = _CKCheckArgument("subscriptionID", v10, 0, 1, 0, &v40);
  v15 = v40;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v27 = [CKException alloc];
    v30 = objc_msgSend_code(v16, v28, v29);
    v33 = objc_msgSend_localizedDescription(v16, v31, v32);
    v35 = objc_msgSend_initWithCode_format_(v27, v34, v30, @"%@", v33);
    v36 = v35;

    objc_exception_throw(v35);
  }

  v17 = [CKFetchSubscriptionsOperation alloc];
  v41[0] = v10;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v41, 1);
  v21 = objc_msgSend_initWithSubscriptionIDs_(v17, v20, v19);

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_188551778;
  v37[3] = &unk_1E70BD110;
  v38 = v10;
  v39 = v13;
  v22 = v13;
  v23 = v10;
  objc_msgSend_setFetchSubscriptionCompletionBlock_(v21, v24, v37);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v25, v21, v11, v12);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllSubscriptionsWithWrappingDatabase:(id)a3 convenienceConfiguration:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_fetchAllSubscriptionsOperation(CKFetchSubscriptionsOperation, v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1885519E4;
  v17[3] = &unk_1E70BCE38;
  v18 = v8;
  v14 = v8;
  objc_msgSend_setFetchSubscriptionCompletionBlock_(v13, v15, v17);
  objc_msgSend__scheduleConvenienceOperation_wrappingDatabase_convenienceConfiguration_(self, v16, v13, v10, v9);
}

@end
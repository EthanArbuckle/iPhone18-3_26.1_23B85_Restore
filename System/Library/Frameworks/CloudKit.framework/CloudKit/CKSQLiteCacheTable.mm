@interface CKSQLiteCacheTable
+ (id)dataSizeProperties;
+ (id)dbProperties;
- (CKSQLiteCacheTable)initWithLogicalTableName:(id)name entryCountLimit:(unint64_t)limit dataSizeLimit:(unint64_t)sizeLimit expirationTime:(double)time expireDelay:(double)delay;
- (id)createTriggerSQL;
- (id)didCreateDatabaseTable;
- (id)extendExpiration:(id)expiration;
- (id)insertObject:(id)object;
- (id)insertObject:(id)object orUpdateProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)oldestFirstEnumerator;
- (id)setEntryExpiration:(id)expiration date:(id)date;
- (id)trackingEntry;
- (id)wakeFromDatabase;
- (unint64_t)entryCount;
- (unint64_t)entryDataSize;
- (unint64_t)expireByCount:(id)count;
- (unint64_t)expireByDataSize:(id)size;
- (unint64_t)expireByTime:(id)time;
- (unint64_t)setProperties:(id)properties valuesToStore:(id)store inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (void)activityTriggerWasRolledBack;
- (void)activityTriggered:(id)triggered;
- (void)expire:(id)expire;
- (void)fetchExpirationDate:(id)date;
- (void)periodicExpire;
- (void)transactionExpireCheck;
@end

@implementation CKSQLiteCacheTable

- (id)wakeFromDatabase
{
  v11.receiver = self;
  v11.super_class = CKSQLiteCacheTable;
  wakeFromDatabase = [(CKSQLiteTable *)&v11 wakeFromDatabase];
  v6 = objc_msgSend_tableGroup(self, v4, v5);
  v8 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteCacheTableTrackingTable, v7, v6);
  trackingTable = self->_trackingTable;
  self->_trackingTable = v8;

  return wakeFromDatabase;
}

- (void)transactionExpireCheck
{
  if (!self->_expireCheckPending)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_188442930;
    v5[3] = &unk_1E70BC048;
    v5[4] = self;
    selfCopy = self;
    objc_msgSend_addTransactionCompletionHandler_(selfCopy, v4, v5);
    self->_expireCheckPending = 1;
  }
}

- (void)periodicExpire
{
  if (!self->_dataExpireScheduled)
  {
    v4 = objc_msgSend_trackingEntry(self, a2, v2);
    v22 = v4;
    if (self->_entryCountLimit)
    {
      v7 = objc_msgSend_entryCount(v4, v5, v6);
      v10 = objc_msgSend_unsignedLongLongValue(v7, v8, v9) > self->_entryCountLimit;
    }

    else
    {
      v10 = 0;
    }

    if (self->_dataSizeLimit)
    {
      v11 = objc_msgSend_dataSize(v22, v5, v6);
      v14 = objc_msgSend_unsignedLongLongValue(v11, v12, v13) > self->_dataSizeLimit;
    }

    else
    {
      v14 = 0;
    }

    if (v10 || v14)
    {
      v15 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
      v17 = objc_msgSend_requestCallbackWithDate_coalescingInterval_minimumSeparation_(self, v16, v15, self->_expireDelay, self->_expireDelay);

      if (!v17)
      {
        self->_dataExpireScheduled = 1;
      }
    }

    v18 = v22;
    if (self->_cacheExpirationTime != 0.0 && !self->_dataExpireScheduled)
    {
      v19 = objc_msgSend_oldestExpireDate(v22, v5, v6);
      v21 = objc_msgSend_requestCallbackWithDate_coalescingInterval_minimumSeparation_(self, v20, v19, self->_expireDelay, self->_expireDelay);

      v18 = v22;
    }
  }
}

- (id)trackingEntry
{
  trackingTable = self->_trackingTable;
  v4 = objc_msgSend_tableID(self, a2, v2);
  v6 = objc_msgSend_entryWithPrimaryKey_error_(trackingTable, v5, v4, 0);

  return v6;
}

+ (id)dbProperties
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"expirationDate";
  v6[0] = &unk_1EFA85218;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, &v5, 1);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)dataSizeProperties
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866C204;
  v7[3] = &unk_1E70C08F0;
  v4 = v2;
  v8 = v4;
  objc_msgSend_enumeratePropertyDataWithBlock_(v3, v5, v7);

  return v4;
}

- (CKSQLiteCacheTable)initWithLogicalTableName:(id)name entryCountLimit:(unint64_t)limit dataSizeLimit:(unint64_t)sizeLimit expirationTime:(double)time expireDelay:(double)delay
{
  v12.receiver = self;
  v12.super_class = CKSQLiteCacheTable;
  result = [(CKSQLiteTable *)&v12 initWithLogicalTableName:name];
  if (result)
  {
    result->_entryCountLimit = limit;
    result->_dataSizeLimit = sizeLimit;
    result->_cacheExpirationTime = time;
    result->_expireDelay = delay;
  }

  return result;
}

- (id)createTriggerSQL
{
  v79 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = CKSQLiteCacheTable;
  createTriggerSQL = [(CKSQLiteTable *)&v75 createTriggerSQL];
  entryCountLimit = self->_entryCountLimit;
  dataSizeLimit = self->_dataSizeLimit;
  cacheExpirationTime = self->_cacheExpirationTime;
  v10 = *&self->_entryCountLimit == 0;
  if (*&self->_entryCountLimit == 0 && cacheExpirationTime == 0.0)
  {
    v59 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v59, v60, a2, self, @"CKSQLiteCacheTable.m", 116, @"Cache has no expiration policies");
  }

  v11 = objc_msgSend_tableGroup(self, v4, v5);
  v13 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteCacheTableTrackingTable, v12, v11);
  v16 = objc_msgSend_dbTableName(v13, v14, v15);

  if (!v16)
  {
    v57 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, a2, self, @"CKSQLiteCacheTable.m", 122, @"expected tracking table dbTableName to already be set");
  }

  v19 = objc_msgSend_tableID(self, v17, v18);
  v22 = objc_msgSend_dbTableName(self, v20, v21);
  v23 = objc_opt_class();
  v26 = objc_msgSend_dataSizeProperties(v23, v24, v25);
  objc_msgSend_appendFormat_(createTriggerSQL, v27, @"CREATE TRIGGER '%@_insert' AFTER INSERT ON '%@' BEGIN ", v22, v22);
  if (entryCountLimit)
  {
    objc_msgSend_appendFormat_(createTriggerSQL, v28, @"UPDATE '%@' SET entryCount = entryCount + 1 WHERE tableID = %@;", v16, v19);
  }

  if (dataSizeLimit)
  {
    v61 = v10;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v62 = v26;
    v29 = v26;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v71, v78, 16);
    if (v31)
    {
      v33 = v31;
      v34 = *v72;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v72 != v34)
          {
            objc_enumerationMutation(v29);
          }

          objc_msgSend_appendFormat_(createTriggerSQL, v32, @"UPDATE '%@' SET dataSize = dataSize + LENGTH(NEW.%@) WHERE tableID = %@;", v16, *(*(&v71 + 1) + 8 * i), v19);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v71, v78, 16);
      }

      while (v33);
    }

    v26 = v62;
    v10 = v61;
  }

  if (cacheExpirationTime != 0.0)
  {
    objc_msgSend_appendFormat_(createTriggerSQL, v28, @"UPDATE '%@' SET oldestExpireDate = CASE WHEN oldestExpireDate IS NULL OR oldestExpireDate > NEW.expirationDate THEN NEW.expirationDate ELSE oldestExpireDate END WHERE tableID = %@;", v16, v19);
  }

  objc_msgSend_appendString_(createTriggerSQL, v28, @"END;");
  if (!v10)
  {
    objc_msgSend_appendFormat_(createTriggerSQL, v36, @"CREATE TRIGGER '%@_delete' AFTER DELETE ON '%@' BEGIN ", v22, v22);
    if (entryCountLimit)
    {
      objc_msgSend_appendFormat_(createTriggerSQL, v37, @"UPDATE '%@' SET entryCount = entryCount - 1 WHERE tableID = %@;", v16, v19);
    }

    if (dataSizeLimit)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v38 = v26;
      v39 = v26;
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v67, v77, 16);
      if (v41)
      {
        v43 = v41;
        v44 = *v68;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v68 != v44)
            {
              objc_enumerationMutation(v39);
            }

            objc_msgSend_appendFormat_(createTriggerSQL, v42, @"UPDATE '%@' SET dataSize = dataSize - LENGTH(OLD.%@) WHERE tableID = %@;", v16, *(*(&v67 + 1) + 8 * j), v19);
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v67, v77, 16);
        }

        while (v43);
      }

      v26 = v38;
    }

    objc_msgSend_appendString_(createTriggerSQL, v37, @"END;");
  }

  if (dataSizeLimit || cacheExpirationTime != 0.0)
  {
    objc_msgSend_appendFormat_(createTriggerSQL, v36, @"CREATE TRIGGER '%@_update' AFTER UPDATE ON '%@' BEGIN ", v22, v22);
    if (dataSizeLimit)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v47 = v26;
      v48 = v26;
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v63, v76, 16);
      if (v50)
      {
        v52 = v50;
        v53 = *v64;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v64 != v53)
            {
              objc_enumerationMutation(v48);
            }

            objc_msgSend_appendFormat_(createTriggerSQL, v51, @"UPDATE '%@' SET dataSize = dataSize + LENGTH(NEW.%@) - LENGTH(OLD.%@) WHERE tableID = %@;", v16, *(*(&v63 + 1) + 8 * k), *(*(&v63 + 1) + 8 * k), v19);
          }

          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v63, v76, 16);
        }

        while (v52);
      }

      v26 = v47;
    }

    if (cacheExpirationTime != 0.0)
    {
      objc_msgSend_appendFormat_(createTriggerSQL, v46, @"UPDATE '%@' SET oldestExpireDate = CASE WHEN oldestExpireDate IS NULL OR oldestExpireDate > NEW.expirationDate THEN NEW.expirationDate ELSE oldestExpireDate END WHERE tableID = %@;", v16, v19);
    }

    objc_msgSend_appendString_(createTriggerSQL, v46, @"END;");
  }

  v55 = *MEMORY[0x1E69E9840];

  return createTriggerSQL;
}

- (id)didCreateDatabaseTable
{
  v20.receiver = self;
  v20.super_class = CKSQLiteCacheTable;
  didCreateDatabaseTable = [(CKSQLiteTable *)&v20 didCreateDatabaseTable];
  if (!didCreateDatabaseTable)
  {
    v4 = objc_alloc_init(CKSQLiteCacheTableTrackingEntry);
    v7 = objc_msgSend_tableID(self, v5, v6);
    objc_msgSend_setTableID_(v4, v8, v7);

    objc_msgSend_setEntryCount_(v4, v9, &unk_1EFA85230);
    objc_msgSend_setDataSize_(v4, v10, &unk_1EFA85230);
    v13 = objc_msgSend_tableGroup(self, v11, v12);
    v15 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteCacheTableTrackingTable, v14, v13);
    trackingTable = self->_trackingTable;
    self->_trackingTable = v15;

    didCreateDatabaseTable = objc_msgSend_insertObject_(self->_trackingTable, v17, v4);
    objc_msgSend_count_(self, v18, 0);
  }

  return didCreateDatabaseTable;
}

- (id)oldestFirstEnumerator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18866C938;
  v4[3] = &unk_1E70BC098;
  v4[4] = self;
  v2 = objc_msgSend_entriesWithValues_label_setupBlock_(self, a2, 0, off_1EA910BA8, v4);

  return v2;
}

- (void)fetchExpirationDate:(id)date
{
  v13[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v13[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v13, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, &unk_1EFA85BC0, dateCopy, v9, off_1EA910BC0);

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)expireByCount:(id)count
{
  v35 = *MEMORY[0x1E69E9840];
  countCopy = count;
  objc_msgSend_db(self, v5, v6);

  v9 = objc_msgSend_entryCount(countCopy, v7, v8);
  v12 = objc_msgSend_unsignedLongLongValue(v9, v10, v11) - self->_entryCountLimit;

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (v12 < 1)
  {
    v18 = 0;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_18866CCE8;
    v24[3] = &unk_1E70C0968;
    v24[4] = self;
    v24[5] = &v25;
    v24[6] = v12;
    v14 = objc_msgSend_performInTransaction_(self, v13, v24);
    if (objc_msgSend_logOperations(self, v15, v16))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_sql;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = v26[3];
        *buf = 138543874;
        v30 = v22;
        v31 = 2048;
        selfCopy = self;
        v33 = 2048;
        v34 = v23;
        _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "%{public}@(%p) count expiration removed %llu entries", buf, 0x20u);
      }
    }

    v18 = v26[3];
  }

  _Block_object_dispose(&v25, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)expireByDataSize:(id)size
{
  v37 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  objc_msgSend_db(self, v5, v6);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v9 = objc_msgSend_dataSize(sizeCopy, v7, v8);
  v12 = objc_msgSend_unsignedLongLongValue(v9, v10, v11) > self->_dataSizeLimit;

  if (v12)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_18866D1B8;
    v24[3] = &unk_1E70BC0C0;
    v24[4] = self;
    v25 = sizeCopy;
    v26 = &v27;
    v14 = objc_msgSend_performInTransaction_(self, v13, v24);
    if (objc_msgSend_logOperations(self, v15, v16))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_sql;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = v28[3];
        *buf = 138543874;
        v32 = v22;
        v33 = 2048;
        selfCopy = self;
        v35 = 2048;
        v36 = v23;
        _os_log_debug_impl(&dword_1883EA000, v17, OS_LOG_TYPE_DEBUG, "%{public}@(%p) size expiration removed %llu entries", buf, 0x20u);
      }
    }
  }

  v18 = v28[3];
  _Block_object_dispose(&v27, 8);

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (unint64_t)expireByTime:(id)time
{
  v33 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  objc_msgSend_db(self, v5, v6);

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_18866D4AC;
  v19[3] = &unk_1E70C0990;
  v7 = timeCopy;
  selfCopy = self;
  v22 = &v23;
  v20 = v7;
  v9 = objc_msgSend_performInTransaction_(self, v8, v19);
  if (objc_msgSend_logOperations(self, v10, v11))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_sql;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = v24[3];
      *buf = 138543874;
      v28 = v17;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2048;
      v32 = v18;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@(%p) time expiration removed %llu entries", buf, 0x20u);
    }
  }

  v13 = v24[3];

  _Block_object_dispose(&v23, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)entryCount
{
  v3 = objc_msgSend_trackingEntry(self, a2, v2);
  v6 = objc_msgSend_entryCount(v3, v4, v5);
  v9 = objc_msgSend_unsignedLongLongValue(v6, v7, v8);

  return v9;
}

- (unint64_t)entryDataSize
{
  v3 = objc_msgSend_trackingEntry(self, a2, v2);
  v6 = objc_msgSend_dataSize(v3, v4, v5);
  v9 = objc_msgSend_unsignedLongLongValue(v6, v7, v8);

  return v9;
}

- (void)expire:(id)expire
{
  expireCopy = expire;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866D6CC;
  v7[3] = &unk_1E70BEEC0;
  v7[4] = self;
  v8 = expireCopy;
  v5 = expireCopy;
  objc_msgSend_serialize_(self, v6, v7);
}

- (void)activityTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18866DB48;
  v7[3] = &unk_1E70BEEC0;
  v7[4] = self;
  v8 = triggeredCopy;
  v5 = triggeredCopy;
  objc_msgSend_serialize_(self, v6, v7);
}

- (void)activityTriggerWasRolledBack
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_18866DBF0;
  v2[3] = &unk_1E70BC388;
  v2[4] = self;
  objc_msgSend_serialize_(self, a2, v2);
}

- (id)extendExpiration:(id)expiration
{
  v4 = MEMORY[0x1E695DF00];
  cacheExpirationTime = self->_cacheExpirationTime;
  expirationCopy = expiration;
  v9 = objc_msgSend_dateWithTimeIntervalSinceNow_(v4, v7, v8, cacheExpirationTime);
  v11 = objc_msgSend_setEntryExpiration_date_(self, v10, expirationCopy, v9);

  return v11;
}

- (id)setEntryExpiration:(id)expiration date:(id)date
{
  expirationCopy = expiration;
  objc_msgSend_setExpirationDate_(expirationCopy, v7, date);
  v9 = objc_msgSend_updateProperties_usingObject_label_(self, v8, &unk_1EFA85BD8, expirationCopy, off_1EA910C08);

  return v9;
}

- (id)insertObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_expirationDate(objectCopy, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v8, v9, self->_cacheExpirationTime);
    objc_msgSend_setExpirationDate_(objectCopy, v11, v10);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18866DE10;
  v16[3] = &unk_1E70BC178;
  v17 = objectCopy;
  selfCopy = self;
  v12 = objectCopy;
  v14 = objc_msgSend_performInTransaction_(self, v13, v16);

  return v14;
}

- (id)insertObject:(id)object orUpdateProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label
{
  objectCopy = object;
  propertiesCopy = properties;
  v12 = objc_msgSend_expirationDate(objectCopy, v10, v11);

  if (!v12)
  {
    v15 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v13, v14, self->_cacheExpirationTime);
    objc_msgSend_setExpirationDate_(objectCopy, v16, v15);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_18866DFB4;
  v22[3] = &unk_1E70C09E0;
  v23 = objectCopy;
  v24 = propertiesCopy;
  selfCopy = self;
  labelCopy = label;
  v17 = propertiesCopy;
  v18 = objectCopy;
  v20 = objc_msgSend_performInTransaction_(self, v19, v22);

  return v20;
}

- (unint64_t)setProperties:(id)properties valuesToStore:(id)store inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  propertiesCopy = properties;
  storeCopy = store;
  matchingCopy = matching;
  predicateCopy = predicate;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_18866E1BC;
  v26[3] = &unk_1E70C0A08;
  v32 = &v34;
  v18 = propertiesCopy;
  v27 = v18;
  v19 = storeCopy;
  v28 = v19;
  v20 = matchingCopy;
  v29 = v20;
  labelCopy = label;
  v21 = predicateCopy;
  selfCopy = self;
  v31 = v21;
  v23 = objc_msgSend_performInTransaction_(self, v22, v26);
  if (error && v23)
  {
    v23 = v23;
    *error = v23;
  }

  v24 = v35[3];

  _Block_object_dispose(&v34, 8);
  return v24;
}

@end
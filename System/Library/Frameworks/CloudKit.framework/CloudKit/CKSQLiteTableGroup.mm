@interface CKSQLiteTableGroup
+ (CKSQLiteTableGroup)tableGroupWithEntry:(id)entry database:(id)database options:(unint64_t)options;
+ (id)groupEntryInDatabase:(id)database withGroupName:(id)name error:(id *)error;
+ (id)groupNameWithDomain:(int)domain domainIdentifier:(id)identifier groupName:(id)name;
+ (id)lookupTableGroupInstanceInCache:(id)cache withName:(id)name options:(unint64_t)options;
+ (id)performTableGroupValidationInDatabase:(id)database;
+ (id)purgeGroup:(id)group;
+ (id)tableGroupInDatabase:(id)database withID:(id)d error:(id *)error;
+ (id)tableGroupInDatabase:(id)database withName:(id)name options:(unint64_t)options error:(id *)error;
+ (void)enumerateGroupEntriesInDatabase:(id)database block:(id)block;
+ (void)enumerateGroupsInDatabase:(id)database block:(id)block;
+ (void)expireGroup:(id)group reason:(id)reason database:(id)database;
+ (void)groupWillExpire:(id)expire;
+ (void)purgeGroupWithName:(id)name inDatabase:(id)database;
- (BOOL)hasFlag:(unint64_t)flag;
- (BOOL)isFirstInstanceInProcess;
- (BOOL)isFirstInstanceSinceBoot;
- (CKSQLiteTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database;
- (id)UUIDValueForKey:(id)key error:(id *)error;
- (id)_tablesByNameInitializer;
- (id)clearFlag:(unint64_t)flag;
- (id)dataValueForKey:(id)key error:(id *)error;
- (id)databaseManager:(id *)manager;
- (id)dateValueForKey:(id)key error:(id *)error;
- (id)finishInitializing;
- (id)migrateDataFromGroup:(id)group;
- (id)numberValueForKey:(id)key error:(id *)error;
- (id)performDataMigration;
- (id)performValidation;
- (id)prepareExistingTables:(id)tables;
- (id)prepareNewTables;
- (id)prepareTables;
- (id)requestCallbackForTarget:(id)target withDate:(id)date coalescingInterval:(double)interval minimumSeparation:(double)separation;
- (id)setDataValue:(id)value forKey:(id)key;
- (id)setDateValue:(id)value forKey:(id)key;
- (id)setFlag:(unint64_t)flag;
- (id)setNumberValue:(id)value forKey:(id)key;
- (id)setStringValue:(id)value forKey:(id)key;
- (id)setUUIDValue:(id)value forKey:(id)key;
- (id)stringValueForKey:(id)key error:(id *)error;
- (id)tocTable;
- (id)tocTableGroupTable;
- (id)updateGroupData:(id)data;
- (id)validateGroup:(id)group matches:(id)matches;
- (id)validateTable:(id)table matchesTOCEntry:(id)entry;
- (id)validateTablesMatchesTOCEntries:(id)entries;
- (void)_setupActivityEntry:(id)entry;
- (void)addTable:(id)table;
- (void)dealloc;
- (void)serialize:(id)serialize;
- (void)updateLastUsedDate;
@end

@implementation CKSQLiteTableGroup

- (id)prepareTables
{
  objc_msgSend_createTables(self, a2, v2);
  if (objc_msgSend_count(self->_tablesByName, v4, v5))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_1883EE21C;
    v30 = sub_1883EF7B4;
    v31 = 0;
    if (self->_isNew)
    {
      v8 = objc_msgSend_prepareNewTables(self, v6, v7);
      v9 = v27[5];
      v27[5] = v8;
    }

    else
    {
      v16 = objc_msgSend_prepareExistingTables_(self, v6, 0);
      v17 = v27[5];
      v27[5] = v16;

      if (!v27[5])
      {
        tablesByName = self->_tablesByName;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_18843AF88;
        v25[3] = &unk_1E70C1570;
        v25[4] = &v26;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesByName, v10, v25);
      }
    }

    v19 = v27[5];
    if (!v19)
    {
      v20 = objc_msgSend_copy(self->_tablesByName, v10, v11);
      v21 = self->_tablesByName;
      self->_tablesByName = v20;

      objc_msgSend_updateLastUsedDate(self, v22, v23);
      v19 = v27[5];
    }

    v15 = v19;
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 1, @"%@ has no database tables", v13);
  }

  return v15;
}

- (void)updateLastUsedDate
{
  v4 = objc_msgSend_groupID(self, a2, v2);

  if (v4)
  {
    isFirstInstanceInProcess = objc_msgSend_isFirstInstanceInProcess(self, v5, v6);
    v26 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
    if (isFirstInstanceInProcess)
    {
      goto LABEL_7;
    }

    v12 = objc_msgSend_lastUsed(self, v10, v11);
    v13 = objc_opt_class();
    objc_msgSend_expirationTime(v13, v14, v15);
    v18 = v17 <= 0.0 ? 86400.0 : v17 * 0.05;
    objc_msgSend_timeIntervalSinceDate_(v26, v16, v12);
    v20 = v19;

    if (v20 > v18)
    {
LABEL_7:
      objc_msgSend_setLastUsed_(self, v10, v26);
      v23 = objc_msgSend_tocTableGroupTable(self, v21, v22);
      v25 = objc_msgSend_updateLastUsedDate_(v23, v24, self);
    }
  }
}

- (BOOL)isFirstInstanceInProcess
{
  if (self->_isNew)
  {
    return 1;
  }

  v4 = objc_msgSend_lastUsed(self, a2, v2);
  v5 = CKProcessStartDate();
  v7 = objc_msgSend_earlierDate_(v4, v6, v5);
  v3 = v7 == v4;

  return v3;
}

- (id)tocTableGroupTable
{
  v3 = objc_msgSend_tocTableGroup(self, a2, v2);
  v6 = objc_msgSend_tocTableGroupTable(v3, v4, v5);

  return v6;
}

- (id)finishInitializing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1883EE21C;
  v10 = sub_1883EF7B4;
  v11 = 0;
  tablesByName = self->_tablesByName;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18843F074;
  v5[3] = &unk_1E70C1570;
  v5[4] = &v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesByName, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  v5 = objc_msgSend_db(self, a2, v2);
  if (v5)
  {
    if (objc_msgSend_hasFlag_(self, v4, 2))
    {
      objc_msgSend_deleteTables_(self, v6, v5);
    }

    else if ((self->_options & 0x40000) == 0)
    {
      objc_msgSend_updateLastUsedDate(self, v6, v7);
    }
  }

  v8.receiver = self;
  v8.super_class = CKSQLiteTableGroup;
  [(CKSQLiteTableGroup *)&v8 dealloc];
}

- (id)_tablesByNameInitializer
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (id)tocTable
{
  v3 = objc_msgSend_tocTableGroup(self, a2, v2);
  v6 = objc_msgSend_tocTable(v3, v4, v5);

  return v6;
}

- (void)_setupActivityEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_groupID(self, v5, v6);
  objc_msgSend_setGroupID_(entryCopy, v8, v7);

  v12 = objc_msgSend_name(self, v9, v10);
  objc_msgSend_setGroupName_(entryCopy, v11, v12);
}

- (id)numberValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = sub_188441668(self, v7);
  v10 = objc_msgSend_numberValueForKey_error_(v8, v9, keyCopy, error);

  return v10;
}

- (id)setNumberValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = sub_188441668(self, v8);
  v11 = objc_msgSend_setNumberValue_forKey_(v9, v10, valueCopy, keyCopy);

  return v11;
}

- (id)stringValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = sub_188441668(self, v7);
  v10 = objc_msgSend_stringValueForKey_error_(v8, v9, keyCopy, error);

  return v10;
}

- (id)setStringValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = sub_188441668(self, v8);
  v11 = objc_msgSend_setStringValue_forKey_(v9, v10, valueCopy, keyCopy);

  return v11;
}

- (id)dataValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = sub_188441668(self, v7);
  v10 = objc_msgSend_dataValueForKey_error_(v8, v9, keyCopy, error);

  return v10;
}

- (id)setDataValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = sub_188441668(self, v8);
  v11 = objc_msgSend_setDataValue_forKey_(v9, v10, valueCopy, keyCopy);

  return v11;
}

- (id)dateValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = sub_188441668(self, v7);
  v10 = objc_msgSend_dateValueForKey_error_(v8, v9, keyCopy, error);

  return v10;
}

- (id)setDateValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = sub_188441668(self, v8);
  v11 = objc_msgSend_setDateValue_forKey_(v9, v10, valueCopy, keyCopy);

  return v11;
}

- (id)UUIDValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = sub_188441668(self, v7);
  v10 = objc_msgSend_UUIDValueForKey_error_(v8, v9, keyCopy, error);

  return v10;
}

- (id)setUUIDValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v9 = sub_188441668(self, v8);
  v11 = objc_msgSend_setUUIDValue_forKey_(v9, v10, valueCopy, keyCopy);

  return v11;
}

+ (id)groupNameWithDomain:(int)domain domainIdentifier:(id)identifier groupName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (domain > 1)
  {
    v10 = @"container";
    v11 = @"custom";
    if (domain != 3)
    {
      v11 = 0;
    }

    if (domain != 2)
    {
      v10 = v11;
    }

    goto LABEL_10;
  }

  if (domain)
  {
    v10 = @"account";
    if (domain != 1)
    {
      v10 = 0;
    }

LABEL_10:
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%@_%@_%@", v10, identifierCopy, nameCopy);
    goto LABEL_11;
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%@_%@", @"global", nameCopy);
  v12 = LABEL_11:;

  return v12;
}

+ (id)purgeGroup:(id)group
{
  v27 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v6 = objc_msgSend_tocTableGroupTable(groupCopy, v4, v5);
  v8 = objc_msgSend_invalidateGroup_(v6, v7, groupCopy);

  if (!v8)
  {
    v10 = objc_msgSend_setFlag_(groupCopy, v9, 2);
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v15 = objc_msgSend_name(groupCopy, v13, v14);
    v18 = objc_msgSend_groupID(groupCopy, v16, v17);
    v21 = 138543874;
    v22 = v15;
    v23 = 2112;
    v24 = v18;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Purge of table group instance: %{public}@, groupID = %@, error = %{public}@", &v21, 0x20u);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (void)purgeGroupWithName:(id)name inDatabase:(id)database
{
  nameCopy = name;
  databaseCopy = database;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18868C878;
  v12[3] = &unk_1E70C1200;
  v13 = databaseCopy;
  v14 = nameCopy;
  selfCopy = self;
  v8 = nameCopy;
  v9 = databaseCopy;
  v11 = objc_msgSend_performDatabaseTransaction_(v9, v10, v12);
}

+ (id)groupEntryInDatabase:(id)database withGroupName:(id)name error:(id *)error
{
  nameCopy = name;
  v10 = objc_msgSend_tocTableGroup(database, v8, v9);
  v13 = objc_msgSend_tocTableGroupTable(v10, v11, v12);
  v15 = objc_msgSend_entryWithGroupName_error_(v13, v14, nameCopy, error);

  return v15;
}

+ (void)enumerateGroupEntriesInDatabase:(id)database block:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  blockCopy = block;
  v27 = databaseCopy;
  v10 = objc_msgSend_tocTableGroup(databaseCopy, v8, v9);
  v13 = objc_msgSend_tocTableGroupTable(v10, v11, v12);
  v14 = NSStringFromClass(self);
  v16 = objc_msgSend_tableGroupsWithClass_(v13, v15, v14);

  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v33, 16);
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
LABEL_3:
    v22 = 0;
    while (1)
    {
      if (*v29 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v28 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v23, &v32);
      LOBYTE(v23) = v32;
      objc_autoreleasePoolPop(v24);
      if (v23)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v28, v33, 16);
        if (v20)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateGroupsInDatabase:(id)database block:(id)block
{
  databaseCopy = database;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868CD68;
  v11[3] = &unk_1E70C14F8;
  v13 = blockCopy;
  selfCopy = self;
  v12 = databaseCopy;
  v8 = blockCopy;
  v9 = databaseCopy;
  objc_msgSend_enumerateGroupEntriesInDatabase_block_(self, v10, v9, v11);
}

+ (CKSQLiteTableGroup)tableGroupWithEntry:(id)entry database:(id)database options:(unint64_t)options
{
  entryCopy = entry;
  databaseCopy = database;
  v11 = objc_msgSend_tocTableGroup(databaseCopy, v9, v10);
  v14 = objc_msgSend_tocTableGroupTable(v11, v12, v13);

  v17 = objc_msgSend_creatingClass(entryCopy, v15, v16);
  v18 = NSClassFromString(v17);

  v19 = [v18 alloc];
  v22 = objc_msgSend_name(entryCopy, v20, v21);
  v24 = objc_msgSend_initWithName_options_database_(v19, v23, v22, options, databaseCopy);

  if (v24)
  {
    v27 = objc_opt_class();
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_18868CFB0;
    v32[3] = &unk_1E70C1070;
    v33 = v14;
    v34 = entryCopy;
    v35 = v24;
    objc_msgSend_enumeratePropertyDataWithBlock_(v27, v28, v32);
  }

  else
  {
    v29 = objc_msgSend_name(entryCopy, v25, v26);
    objc_msgSend_purgeGroupWithName_inDatabase_(CKSQLiteTableGroup, v30, v29, databaseCopy);
  }

  return v24;
}

+ (id)lookupTableGroupInstanceInCache:(id)cache withName:(id)name options:(unint64_t)options
{
  optionsCopy = options;
  cacheCopy = cache;
  nameCopy = name;
  v9 = nameCopy;
  v10 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1883EE21C;
  v21 = sub_1883EF7B4;
  v22 = 0;
  if ((optionsCopy & 0x80000) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_18868D188;
    v14[3] = &unk_1E70C14D0;
    v16 = &v17;
    v15 = nameCopy;
    objc_msgSend_usingTableGroupCachePerformBlock_(cacheCopy, v11, v14);

    v10 = v18[5];
  }

  v12 = v10;
  _Block_object_dispose(&v17, 8);

  return v12;
}

+ (id)tableGroupInDatabase:(id)database withName:(id)name options:(unint64_t)options error:(id *)error
{
  databaseCopy = database;
  nameCopy = name;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1883EE21C;
  v35 = sub_1883EF7B4;
  v36 = 0;
  if ((options & 0x200000) != 0)
  {
    options |= 0xD0000uLL;
  }

  if (databaseCopy || (objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 1, @"table group lookup requires a database"), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (objc_msgSend_length(nameCopy, v11, v12) || (objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKErrorDomain", 1, @"table group requires a non empty name"), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = _CKSQLDBSerializerLock(databaseCopy + 8);
      v17 = objc_msgSend_lookupTableGroupInstanceInCache_withName_options_(self, v16, databaseCopy, nameCopy, options);
      v18 = v32[5];
      v32[5] = v17;

      if (v32[5])
      {
        v19 = 0;
        if (!v15)
        {
LABEL_14:
          if (!v19)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_18868D47C;
        v25[3] = &unk_1E70C1548;
        v26 = databaseCopy;
        v28 = &v31;
        selfCopy = self;
        v27 = nameCopy;
        optionsCopy = options;
        v19 = objc_msgSend_performDatabaseTransaction_(v26, v20, v25);

        if (!v15)
        {
          goto LABEL_14;
        }
      }

      v15[1].__sig = 0;
      pthread_mutex_unlock(v15);
      goto LABEL_14;
    }
  }

LABEL_15:
  v21 = v32[5];
  v32[5] = 0;

  if (error)
  {
    v22 = v19;
    *error = v19;
  }

LABEL_17:
  v23 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v23;
}

+ (id)tableGroupInDatabase:(id)database withID:(id)d error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  v12 = objc_msgSend_tocTableGroup(databaseCopy, v10, v11);
  v15 = objc_msgSend_tocTableGroupTable(v12, v13, v14);
  v31 = 0;
  v17 = objc_msgSend_entryWithPrimaryKey_error_(v15, v16, dCopy, &v31);

  v20 = v31;
  if (v17 && (objc_msgSend_name(v17, v18, v19), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v24 = objc_msgSend_name(v17, v22, v23);
    v30 = v20;
    v26 = objc_msgSend_tableGroupInDatabase_withName_options_error_(self, v25, databaseCopy, v24, 0x10000, &v30);
    v27 = v30;

    v20 = v27;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v26 = 0;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (v20)
  {
    v28 = v20;
    *error = v20;
  }

LABEL_8:

  return v26;
}

- (CKSQLiteTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database
{
  databaseCopy = database;
  v25.receiver = self;
  v25.super_class = CKSQLiteTableGroup;
  v10 = [(CKSQLiteTableGroupEntry *)&v25 initWithName:name];
  if (v10)
  {
    v11 = v10;
    v10->_options = options;
    objc_storeStrong(&v10->_db, database);
    v14 = objc_msgSend_init(v11, v12, v13);
    v17 = v14;
    if (v14)
    {
      v18 = objc_msgSend_tocTableGroupInitValue(v14, v15, v16);
      tocTableGroup = v17->_tocTableGroup;
      v17->_tocTableGroup = v18;

      v22 = objc_msgSend__tablesByNameInitializer(v17, v20, v21);
      tablesByName = v17->_tablesByName;
      v17->_tablesByName = v22;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)setFlag:(unint64_t)flag
{
  v7 = objc_msgSend_db(self, a2, flag);
  if (v7)
  {
    v8 = objc_msgSend_setFlag_database_(self, v5, flag, v7);
  }

  else
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = objc_msgSend_flags(self, v5, v6);
    v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);
    v15 = objc_msgSend_numberWithUnsignedLongLong_(v9, v14, v13 | flag);
    objc_msgSend_setFlags_(self, v16, v15);

    v8 = 0;
  }

  return v8;
}

- (id)clearFlag:(unint64_t)flag
{
  v7 = objc_msgSend_db(self, a2, flag);
  if (v7)
  {
    v8 = objc_msgSend_clearFlag_database_(self, v5, flag, v7);
  }

  else
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = objc_msgSend_flags(self, v5, v6);
    v13 = objc_msgSend_unsignedLongLongValue(v10, v11, v12);
    v15 = objc_msgSend_numberWithUnsignedLongLong_(v9, v14, v13 & ~flag);
    objc_msgSend_setFlags_(self, v16, v15);

    v8 = 0;
  }

  return v8;
}

- (BOOL)hasFlag:(unint64_t)flag
{
  v7 = objc_msgSend_db(self, a2, flag);
  if (v7)
  {
    hasFlag_database = objc_msgSend_hasFlag_database_(self, v5, flag, v7);
  }

  else
  {
    v9 = objc_msgSend_flags(self, v5, v6);
    hasFlag_database = (objc_msgSend_unsignedLongLongValue(v9, v10, v11) & flag) != 0;
  }

  return hasFlag_database;
}

- (BOOL)isFirstInstanceSinceBoot
{
  if (self->_isNew)
  {
    return 1;
  }

  v4 = objc_msgSend_lastUsed(self, a2, v2);
  v5 = CKBootDate();
  v7 = objc_msgSend_earlierDate_(v4, v6, v5);
  v3 = v7 == v4;

  return v3;
}

+ (void)groupWillExpire:(id)expire
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKey_(expire, a2, CKSQLiteTableGroupExpiryFileRemovalKey);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v3;
    v9 = v3;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v30, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v21 = 0;
          objc_msgSend_removeItemAtPath_error_(v8, v12, v16, &v21);
          v17 = v21;
          if (v17)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v18 = ck_log_facility_sql;
            if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v27 = v16;
              v28 = 2114;
              v29 = v17;
              _os_log_error_impl(&dword_1883EA000, v18, OS_LOG_TYPE_ERROR, "failed to remove at path: %{public}@ error=%{public}@", buf, 0x16u);
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v22, v30, 16);
      }

      while (v13);
    }

    v3 = v20;
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)expireGroup:(id)group reason:(id)reason database:(id)database
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  reasonCopy = reason;
  databaseCopy = database;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_sql;
  if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
  {
    v14 = v11;
    v17 = objc_msgSend_name(groupCopy, v15, v16);
    v30 = 138543618;
    v31 = v17;
    v32 = 2114;
    v33 = reasonCopy;
    _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "Table group: %{public}@ expired due to: %{public}@", &v30, 0x16u);
  }

  v20 = objc_msgSend_groupData(groupCopy, v12, v13);
  if (v20)
  {
    v21 = objc_msgSend_creatingClass(groupCopy, v18, v19);
    v22 = NSClassFromString(v21);
    if (!v22)
    {
      v22 = objc_opt_class();
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v25 = v23;
      v26 = NSStringFromClass(v22);
      v30 = 138543618;
      v31 = v26;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_1883EA000, v25, OS_LOG_TYPE_INFO, "Notifying class %{public}@ of group expiry. groupData = %{public}@", &v30, 0x16u);
    }

    objc_msgSend_groupWillExpire_(v22, v24, v20);
  }

  v27 = objc_msgSend_name(groupCopy, v18, v19);
  objc_msgSend_purgeGroupWithName_inDatabase_(self, v28, v27, databaseCopy);

  v29 = *MEMORY[0x1E69E9840];
}

- (id)prepareNewTables
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1883EE21C;
  v53 = sub_1883EF7B4;
  v54 = 0;
  v4 = objc_msgSend_tocTable(self, a2, v2);
  tablesByName = self->_tablesByName;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_18868E760;
  v46[3] = &unk_1E70C1598;
  v48 = &v49;
  v6 = v4;
  v47 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesByName, v7, v46);
  v10 = objc_msgSend_db(self, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v11;
  v13 = v50[5];
  if (!v13)
  {
    v14 = self->_tablesByName;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_18868E800;
    v42[3] = &unk_1E70C15C0;
    v15 = v11;
    v43 = v15;
    v45 = &v49;
    v16 = v10;
    v44 = v16;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v17, v42);

    v13 = v50[5];
    if (!v13)
    {
      v40 = v10;
      v21 = objc_msgSend_count(v15, v18, v19) - 1;
      while (v21 - 1 >= 0)
      {
        v22 = objc_msgSend_objectAtIndex_(v15, v20, v21 - 1);
        v24 = objc_msgSend_objectAtIndex_(v15, v23, v21);
        v27 = objc_msgSend_createTriggerSQL(v22, v25, v26);
        if (objc_msgSend_length(v27, v28, v29))
        {
          v31 = objc_msgSend_executeSQL_(v16, v30, v27);
          v32 = v50[5];
          v50[5] = v31;

          objc_msgSend_appendString_(v24, v33, v27);
        }

        if (v50[5])
        {

          break;
        }

        v34 = objc_msgSend_setSchema_forTable_(v6, v30, v24, v22);
        v35 = v50[5];
        v50[5] = v34;

        v36 = v50[5];
        v21 -= 2;
        if (v36)
        {
          break;
        }
      }

      v13 = v50[5];
      v10 = v40;
      if (!v13)
      {
        if ((self->_options & 0x200000) != 0)
        {
          v13 = 0;
        }

        else
        {
          v37 = self->_tablesByName;
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = sub_18868E8BC;
          v41[3] = &unk_1E70C1570;
          v41[4] = &v49;
          objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v37, v20, v41);
          v13 = v50[5];
        }
      }
    }
  }

  v38 = v13;

  _Block_object_dispose(&v49, 8);

  return v38;
}

- (id)prepareExistingTables:(id)tables
{
  v54 = *MEMORY[0x1E69E9840];
  tablesCopy = tables;
  v7 = objc_msgSend_tocTable(self, v5, v6);
  v11 = objc_msgSend_groupID(self, v8, v9);
  if (tablesCopy)
  {
    v52 = 0;
    obj = objc_msgSend_validationTocEntriesWithGroupID_error_(v7, v10, v11, &v52);
    v12 = v52;

    if (v12)
    {
      goto LABEL_19;
    }

    v43 = v7;
    v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v51 = 0;
    obj = objc_msgSend_tocEntriesWithGroupID_error_(v7, v10, v11, &v51);
    v12 = v51;

    if (v12)
    {
      goto LABEL_19;
    }

    v43 = v7;
    v45 = 0;
    v46 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = obj;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v47, v53, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v48;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v20 = tablesCopy;
        if (*v48 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        v22 = objc_msgSend_logicalTableName(v21, v15, v16, v43);
        v24 = objc_msgSend_objectForKey_(self->_tablesByName, v23, v22);
        v27 = objc_msgSend_dbTableName(v21, v25, v26);
        objc_msgSend_setDbTableName_(v24, v28, v27);
        v31 = objc_msgSend_tableID(v21, v29, v30);
        objc_msgSend_setTableID_(v24, v32, v31);

        tablesCopy = v20;
        if (v20)
        {
          objc_msgSend_addObject_(v46, v33, v22);
          objc_msgSend_setObject_forKey_(v45, v34, v21, v22);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v47, v53, 16);
    }

    while (v17);
  }

  if (tablesCopy)
  {
    v37 = objc_msgSend_allKeys(self->_tablesByName, v35, v36);
    v38 = v46;
    objc_msgSend_addObjectsFromArray_(v46, v39, v37);

    v40 = v45;
    v12 = tablesCopy[2](tablesCopy, v46, v45);
    v7 = v43;
  }

  else
  {
    v12 = 0;
    v7 = v43;
    v40 = v45;
    v38 = v46;
  }

LABEL_19:
  v41 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)addTable:(id)table
{
  tableCopy = table;
  tablesByName = self->_tablesByName;
  if (tablesByName)
  {
    v8 = objc_msgSend_count(tablesByName, v5, v6);
  }

  else
  {
    v19 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, self, @"CKSQLiteTableGroup.m", 726, @"-addTable: can only be called during table group construction");

    v8 = objc_msgSend_count(self->_tablesByName, v21, v22);
  }

  v11 = v8;
  v12 = objc_msgSend_logicalTableName(tableCopy, v9, v10);
  objc_msgSend_setObject_forKey_(self->_tablesByName, v13, tableCopy, v12);
  if (objc_msgSend_count(self->_tablesByName, v14, v15) != v11 + 1)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKSQLiteTableGroup.m", 731, @"A table named %@ was added twice", v12);
  }

  objc_msgSend_willAddToGroup_(tableCopy, v16, self);
  objc_msgSend_setTableGroup_(tableCopy, v18, self);
}

- (id)migrateDataFromGroup:(id)group
{
  v85 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_1883EE21C;
  v73 = sub_1883EF7B4;
  v74 = 0;
  v7 = objc_msgSend_allTables(self, v5, v6);
  v10 = objc_msgSend_allTables(groupCopy, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v65 = 0u;
  v12 = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v65, v84, 16);
  if (v16)
  {
    v17 = *v66;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_logicalTableName(*(*(&v65 + 1) + 8 * i), v14, v15);
        objc_msgSend_addObject_(v11, v20, v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v65, v84, 16);
    }

    while (v16);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = v10;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v61, v83, 16);
  if (v25)
  {
    v26 = *v62;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_logicalTableName(*(*(&v61 + 1) + 8 * j), v23, v24);
        objc_msgSend_addObject_(v11, v29, v28);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v61, v83, 16);
    }

    while (v25);
  }

  v32 = objc_msgSend_count(v21, v30, v31);
  if (v32 == objc_msgSend_count(v12, v33, v34) && v32 == objc_msgSend_count(v11, v35, v36))
  {
    v39 = objc_msgSend_db(self, v37, v38);
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_18868F2C4;
    v57[3] = &unk_1E70BC0C0;
    v58 = v21;
    selfCopy = self;
    v60 = &v69;
    v41 = objc_msgSend_performDatabaseTransaction_(v39, v40, v57);

    if (v70[5])
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v42 = ck_log_facility_sql;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v51 = objc_msgSend_name(self, v49, v50);
        *buf = 138544130;
        v76 = v48;
        v77 = 2048;
        selfCopy3 = self;
        v79 = 2114;
        v80 = v51;
        v81 = 2114;
        v82 = v41;
        _os_log_error_impl(&dword_1883EA000, v42, OS_LOG_TYPE_ERROR, "%{public}@(%p): Data migration failed for group: %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    else if (v41)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v43 = ck_log_facility_sql;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v56 = objc_msgSend_name(self, v54, v55);
        *buf = 138544130;
        v76 = v53;
        v77 = 2048;
        selfCopy3 = self;
        v79 = 2114;
        v80 = v56;
        v81 = 2114;
        v82 = v41;
        _os_log_error_impl(&dword_1883EA000, v43, OS_LOG_TYPE_ERROR, "%{public}@(%p): Data migration dropped data for group: %{public}@: %{public}@", buf, 0x2Au);
      }

      self->_isNew = 1;
    }
  }

  v44 = v70[5];

  _Block_object_dispose(&v69, 8);
  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)updateGroupData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_groupData(self, v5, v6);
  v10 = objc_msgSend_copy(dataCopy, v8, v9);

  objc_msgSend_setGroupData_(self, v11, v10);
  v14 = objc_msgSend_tocTableGroupTable(self, v12, v13);
  v17 = objc_msgSend_updateGroupData_(v14, v15, self);
  if (v17)
  {
    objc_msgSend_setGroupData_(self, v16, v7);
  }

  return v17;
}

- (void)serialize:(id)serialize
{
  serializeCopy = serialize;
  v4 = _CKSQLDBSerializerLock(&self->_db->_serializer);
  serializeCopy[2]();
  if (v4)
  {
    v4[1].__sig = 0;
    pthread_mutex_unlock(v4);
  }
}

- (id)databaseManager:(id *)manager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  databaseManager = selfCopy->_databaseManager;
  if (!databaseManager)
  {
    v8 = objc_msgSend_db(selfCopy, v5, v6);
    v10 = objc_msgSend_databaseManager_(v8, v9, manager);
    v11 = selfCopy->_databaseManager;
    selfCopy->_databaseManager = v10;

    databaseManager = selfCopy->_databaseManager;
  }

  v12 = databaseManager;
  objc_sync_exit(selfCopy);

  return v12;
}

- (id)requestCallbackForTarget:(id)target withDate:(id)date coalescingInterval:(double)interval minimumSeparation:(double)separation
{
  targetCopy = target;
  dateCopy = date;
  v20 = 0;
  v13 = objc_msgSend_databaseManager_(self, v12, &v20);
  v15 = v20;
  if (!v15)
  {
    if (v13)
    {
      v15 = objc_msgSend_addActivityTriggerWithTarget_date_coalescingInterval_minimumSeparation_(v13, v14, targetCopy, dateCopy, interval, separation);
    }

    else
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v15 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 1, @"%@ has no database manager", v17);
    }
  }

  return v15;
}

- (id)performDataMigration
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (objc_msgSend_shouldMigrateData(v3, v4, v5))
  {
    v8 = objc_msgSend_db(self, v6, v7);
    v11 = objc_msgSend_name(self, v9, v10);
    v51 = 0;
    v13 = objc_msgSend_tableGroupInDatabase_withName_error_(CKSQLiteGenericTableGroup, v12, v8, v11, &v51);
    v14 = v51;

    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v50 = 0;
      v16 = objc_msgSend_copyOfTableGroup_options_error_(CKSQLiteGenericTableGroup, v15, v13, 0, &v50);
      v18 = v50;
      if (v18)
      {
        goto LABEL_6;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v21 = objc_msgSend_allTables(v13, v19, v20);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v46, v56, 16);
      if (v23)
      {
        v26 = v23;
        v27 = *v47;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(v21);
            }

            v29 = objc_msgSend_dbTableName(*(*(&v46 + 1) + 8 * i), v24, v25);
            v14 = objc_msgSend_dropTable_(v8, v30, v29);

            if (v14)
            {

              goto LABEL_19;
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v46, v56, 16);
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v18 = objc_msgSend_prepareNewTables(self, v31, v32);
      if (v18)
      {
LABEL_6:
        v14 = v18;
      }

      else
      {
        v14 = objc_msgSend_migrateDataFromGroup_(self, v33, v16);
        if (!v14)
        {
          v35 = objc_msgSend_purgeGroup_(CKSQLiteTableGroup, v34, v16);
        }
      }
    }

LABEL_19:
  }

  else
  {
    v8 = objc_msgSend_name(self, v6, v7);
    v14 = objc_msgSend_validationErrorWithMessage_(CKPrettyError, v17, @"Table group %@ does not support data migration", v8);
  }

  if (v14)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      v40 = objc_msgSend_name(self, v38, v39);
      *buf = 138543618;
      v53 = v40;
      v54 = 2114;
      v55 = v14;
      _os_log_error_impl(&dword_1883EA000, v37, OS_LOG_TYPE_ERROR, "Data migration for %{public}@ failed: %{public}@", buf, 0x16u);
LABEL_29:
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v41 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v37 = v41;
      v40 = objc_msgSend_name(self, v42, v43);
      *buf = 138543362;
      v53 = v40;
      _os_log_impl(&dword_1883EA000, v37, OS_LOG_TYPE_INFO, "Data migration succeeded for %{public}@", buf, 0xCu);
      goto LABEL_29;
    }
  }

  v44 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)validateTable:(id)table matchesTOCEntry:(id)entry
{
  tableCopy = table;
  entryCopy = entry;
  v10 = objc_msgSend_schema(entryCopy, v8, v9);
  v13 = objc_msgSend_createTableSQL(tableCopy, v11, v12);
  v16 = objc_msgSend_createTriggerSQL(tableCopy, v14, v15);
  v18 = objc_msgSend_stringByAppendingString_(v13, v17, v16);

  if ((objc_msgSend_isEqualToString_(v10, v19, v18) & 1) == 0)
  {
    v22 = objc_msgSend_name(self, v20, v21);
    v37 = objc_msgSend_logicalTableName(tableCopy, v39, v40);
    objc_msgSend_validationErrorWithMessage_(CKPrettyError, v41, @"Table group %@ failed validation - schema changed for table %@ (%@ vs %@)", v22, v37, v10, v18);
    goto LABEL_6;
  }

  v22 = objc_msgSend_propertyData(entryCopy, v20, v21);
  v23 = objc_opt_class();
  v26 = objc_msgSend_flattenedDBProperties(v23, v24, v25);
  isEqual = objc_msgSend_isEqual_(v22, v27, v26);

  if ((isEqual & 1) == 0)
  {
    v37 = objc_msgSend_name(self, v29, v30);
    v45 = objc_msgSend_logicalTableName(tableCopy, v43, v44);
    v42 = objc_msgSend_validationErrorWithMessage_(CKPrettyError, v46, @"Table group %@ failed validation - property data changed for table %@ (%@ vs %@)", v37, v45, v10, v18);

    goto LABEL_8;
  }

  v31 = objc_msgSend_db(self, v29, v30);
  isSimulatingTableGroupMigration = objc_msgSend_isSimulatingTableGroupMigration(v31, v32, v33);

  if (isSimulatingTableGroupMigration)
  {
    v37 = objc_msgSend_name(self, v35, v36);
    objc_msgSend_validationErrorWithMessage_(CKPrettyError, v38, @"Table group %@ failed validation - simulated validation failure", v37);
    v42 = LABEL_6:;
LABEL_8:

    goto LABEL_9;
  }

  v42 = 0;
LABEL_9:

  return v42;
}

- (id)validateTablesMatchesTOCEntries:(id)entries
{
  entriesCopy = entries;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1883EE21C;
  v18 = sub_1883EF7B4;
  v19 = 0;
  tablesByName = self->_tablesByName;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18868FF24;
  v10[3] = &unk_1E70C15C0;
  v6 = entriesCopy;
  selfCopy = self;
  v13 = &v14;
  v11 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(tablesByName, v7, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (id)validateGroup:(id)group matches:(id)matches
{
  v50 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  matchesCopy = matches;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = groupCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v45, v49, 16);
  if (!v10)
  {
    v34 = 0;
    goto LABEL_18;
  }

  v12 = v10;
  v13 = *v46;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v45 + 1) + 8 * i);
      v16 = objc_msgSend_objectForKey_(self->_tablesByName, v11, v15);
      if (!v16)
      {
        v19 = objc_msgSend_name(self, v17, v18);
        v34 = objc_msgSend_validationErrorWithMessage_(CKPrettyError, v35, @"Table group %@ failed validation - no table instance named %@", v19, v15);
LABEL_17:

        goto LABEL_18;
      }

      v19 = v16;
      v20 = objc_msgSend_objectForKey_(matchesCopy, v17, v15);
      v23 = v20;
      if (!v20)
      {
        v36 = objc_msgSend_name(self, v21, v22);
        v34 = objc_msgSend_validationErrorWithMessage_(CKPrettyError, v37, @"Table group %@ failed validation - no TOC entry for %@", v36, v15);
LABEL_16:

        goto LABEL_17;
      }

      v24 = objc_msgSend_dbVersion(v20, v21, v22);
      v27 = objc_msgSend_unsignedIntegerValue(v24, v25, v26);

      v28 = objc_opt_class();
      v31 = objc_msgSend_dbVersion(v28, v29, v30);
      if (v27 != v31)
      {
        v38 = v31;
        v36 = objc_msgSend_name(self, v32, v33);
        v41 = objc_msgSend_logicalTableName(v19, v39, v40);
        v34 = objc_msgSend_validationErrorWithMessage_(CKPrettyError, v42, @"Table group %@ failed validation - version changed table %@ (%d vs %d)", v36, v41, v27, v38, v45);

        goto LABEL_16;
      }
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v45, v49, 16);
    v34 = 0;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v43 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)performValidation
{
  objc_msgSend_createTables(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886902E8;
  v7[3] = &unk_1E70C15E8;
  v7[4] = self;
  v5 = objc_msgSend_prepareExistingTables_(self, v4, v7);

  return v5;
}

+ (id)performTableGroupValidationInDatabase:(id)database
{
  databaseCopy = database;
  v7 = objc_msgSend_tocTableGroup(databaseCopy, v5, v6);
  v10 = objc_msgSend_groupID(v7, v8, v9);
  v13 = objc_msgSend_tocTableGroupTable(v7, v11, v12);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = objc_msgSend_unsignedLongLongValue(v10, v14, v15);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1883EE21C;
  v35 = sub_1883EF7B4;
  v36 = 0;
  v16 = MEMORY[0x1E69E9820];
  do
  {
    v25[0] = v16;
    v25[1] = 3221225472;
    v25[2] = sub_188690688;
    v25[3] = &unk_1E70C1610;
    v28 = v37;
    v17 = v13;
    v26 = v17;
    v29 = &v31;
    selfCopy = self;
    v18 = databaseCopy;
    v27 = v18;
    v20 = objc_msgSend_performDatabaseTransactionWithoutForeignKeyConstraints_(v18, v19, v25);

    if (v32[5])
    {
      v23 = v20 == 0;
    }

    else
    {
      v23 = 0;
    }
  }

  while (v23);
  if (!v20)
  {
    objc_msgSend_databaseValidationSuccess(v7, v21, v22);
  }

  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(v37, 8);

  return v20;
}

@end
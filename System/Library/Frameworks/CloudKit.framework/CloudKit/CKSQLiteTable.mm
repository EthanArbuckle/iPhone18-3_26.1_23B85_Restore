@interface CKSQLiteTable
+ (BOOL)entriesHaveEqualProperties:(id)properties other:(id)other includePrimaryKey:(BOOL)key;
+ (Class)tableClassWithName:(id)name properties:(id)properties version:(unint64_t)version entryClass:(Class)class;
+ (id)allPropertyNames;
+ (id)copyOfEntry:(id)entry;
+ (id)descriptionOfEntry:(id)entry;
+ (id)descriptionOfProperties:(id)properties from:(id)from;
+ (id)flattenedDBProperties;
+ (id)nonKeyProperties;
+ (id)objectClassesForProperty:(id)property;
+ (id)singletonInstanceInGroup:(id)group;
+ (unint64_t)hashForEntry:(id)entry;
+ (unsigned)propertyCount;
+ (unsigned)propertyInfo:(id)info;
+ (void)addSingletonInstanceToGroup:(id)group;
+ (void)decodeEntry:(id)entry withCoder:(id)coder;
+ (void)encodeEntry:(id)entry withCoder:(id)coder;
+ (void)enumerateClassPropertyDictionariesWithBlock:(id)block;
+ (void)enumeratePropertyDataWithBlock:(id)block;
+ (void)flushCompiledStatementCache;
+ (void)initialize;
- (BOOL)hasEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (BOOL)hasEntry:(id)entry error:(id *)error;
- (BOOL)hasEntryWithPrimaryKey:(id)key error:(id *)error;
- (BOOL)migrateDataFromTable:(id)table error:(id *)error;
- (BOOL)migrateEntryDataFromTable:(id)table entry:(id)entry toEntry:(id)toEntry addedProperties:(id)properties;
- (CKSQLiteTable)init;
- (CKSQLiteTable)initWithLogicalTableName:(id)name;
- (CKSQLiteTableGroup)tableGroup;
- (id)UUIDValueForKey:(id)key error:(id *)error;
- (id)_bindProperties:(id)properties valueObject:(id)object inStatement:(id)statement includePrimaryKey:(BOOL)key;
- (id)_fetchProperties:(id)properties distinct:(BOOL)distinct label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (id)_fetchPropertiesUsingStatement:(id)statement inObject:(id)object matchingDBProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)_performInsertOrUpdateStatement:(id)statement usingObject:(id)object;
- (id)_predicateForMatchingProperties:(id)properties;
- (id)_statementForFetchingEntriesMatchingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block;
- (id)_valueDictionaryForProperties:(id)properties inObject:(id)object nilPropertyError:(id *)error selForNilPropertyError:(SEL)propertyError;
- (id)checkConstraintForProperty:(id)property info:(unsigned int)info;
- (id)compiledStatementWithLabel:(_CKSQLiteCompiledStatementLabel *)label creationBlock:(id)block;
- (id)createTableSQL;
- (id)createTriggerSQL;
- (id)dataValueForKey:(id)key error:(id *)error;
- (id)dateValueForKey:(id)key error:(id *)error;
- (id)db;
- (id)deleteObject:(id)object;
- (id)deletePrimaryKeyValue:(id)value;
- (id)description;
- (id)entriesMatchingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block;
- (id)entriesWithValues:(id)values label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block;
- (id)entryWithPrimaryKey:(id)key fetchProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (id)entryWithValues:(id)values label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error setupBlock:(id)block;
- (id)enumerateEntriesWithBlock:(id)block;
- (id)fetchAllProperties:(id)properties;
- (id)fetchProperties:(id)properties inObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)fetchProperties:(id)properties inObject:(id)object matchingDBProperties:(id)bProperties label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)insertObject:(id)object;
- (id)insertObject:(id)object orUpdateProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)maximumValueOfProperty:(id)property label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (id)minimumValueOfProperty:(id)property label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (id)newEntryObject;
- (id)newEntryObjectFromStatement:(id)statement error:(id *)error;
- (id)numberValueForKey:(id)key error:(id *)error;
- (id)objectReferenceProperties;
- (id)performInTransaction:(id)transaction;
- (id)performTransaction:(id)transaction;
- (id)predicateForMatchingPrimaryKey;
- (id)referenceIDValueForProperty:(id)property inEntry:(id)entry label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (id)requestCallbackWithDate:(id)date coalescingInterval:(double)interval minimumSeparation:(double)separation;
- (id)setDataValue:(id)value forKey:(id)key;
- (id)setDateValue:(id)value forKey:(id)key;
- (id)setNumberValue:(id)value forKey:(id)key;
- (id)setStringValue:(id)value forKey:(id)key;
- (id)setUUIDValue:(id)value forKey:(id)key;
- (id)stringValueForKey:(id)key error:(id *)error;
- (id)tableForReferenceProperty:(id)property;
- (id)updateProperties:(id)properties usingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)updateUsingObject:(id)object;
- (id)validateTableMatchesTOCEntry;
- (int64_t)sizeOfProperty:(id)property inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (int64_t)sizeOfProperty:(id)property inEntry:(id)entry label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error;
- (int64_t)sumOfProperty:(id)property inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (unint64_t)count:(id *)count;
- (unint64_t)countOfEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (unint64_t)deleteEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (unint64_t)setProperties:(id)properties valuesToStore:(id)store inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate;
- (void)_addPredicateForMatching:(id)matching toStatement:(id)statement;
- (void)_setupActivityEntry:(id)entry;
- (void)addPredicateToStatement:(id)statement predicate:(id)predicate;
- (void)addTransactionCompletionHandler:(id)handler;
- (void)cacheStatement:(id)statement;
- (void)dealloc;
- (void)serialize:(id)serialize;
- (void)setLogOperations:(BOOL)operations;
- (void)setTableGroup:(id)group;
@end

@implementation CKSQLiteTable

- (id)newEntryObject
{
  v4 = objc_opt_class();
  v9 = objc_alloc_init(objc_msgSend_entryClass(v4, v5, v6));
  if (!v9)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKSQLiteTable.m", 1725, @"allocation failure");
  }

  v10 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_188439984;
  v18[3] = &unk_1E70C1020;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  objc_msgSend_enumeratePropertyDataWithBlock_(v10, v12, v18);
  v13 = v19;
  v14 = v11;

  return v14;
}

+ (id)allPropertyNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188439D04;
  v7[3] = &unk_1E70C08F0;
  v4 = v3;
  v8 = v4;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v5, v7);

  return v4;
}

- (id)db
{
  WeakRetained = objc_loadWeakRetained(&self->_tableGroup);
  if (!WeakRetained)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v12, a2, self, @"CKSQLiteTable.m", 897, @"nil table group in %@", v11);
  }

  v7 = objc_msgSend_db(WeakRetained, v4, v5);

  return v7;
}

- (CKSQLiteTableGroup)tableGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_tableGroup);

  return WeakRetained;
}

- (id)objectReferenceProperties
{
  selfCopy = self;
  if (self)
  {
    if ((self->_flags & 0x10) != 0)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = objc_opt_class();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_188684D24;
      v7[3] = &unk_1E70C08F0;
      selfCopy = v3;
      v8 = selfCopy;
      objc_msgSend_enumeratePropertyDataWithBlock_(v4, v5, v7);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)dealloc
{
  objc_msgSend_flushCompiledStatementCache(CKSQLiteTable, a2, v2);
  v4.receiver = self;
  v4.super_class = CKSQLiteTable;
  [(CKSQLiteTable *)&v4 dealloc];
}

+ (void)flushCompiledStatementCache
{
  obj = qword_1EA9123A8;
  objc_sync_enter(obj);
  objc_msgSend_removeAllObjects(qword_1EA9123A8, v2, v3);
  objc_sync_exit(obj);
}

- (id)predicateForMatchingPrimaryKey
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = self->_primaryKey;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v8, 1);
  v5 = objc_msgSend__predicateForMatchingProperties_(self, v4, v3);

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_setupActivityEntry:(id)entry
{
  entryCopy = entry;
  v19 = objc_msgSend_tableGroup(self, v5, v6);
  v9 = objc_msgSend_groupID(v19, v7, v8);
  objc_msgSend_setGroupID_(entryCopy, v10, v9);

  v13 = objc_msgSend_name(v19, v11, v12);
  objc_msgSend_setGroupName_(entryCopy, v14, v13);

  v17 = objc_msgSend_logicalTableName(self, v15, v16);
  objc_msgSend_setTableName_(entryCopy, v18, v17);
}

- (id)numberValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_18867D4B8(self, v7, v8);
  v10 = sub_18867D504(self, keyCopy);

  v12 = objc_msgSend_numberValueForKey_error_(v9, v11, v10, error);

  return v12;
}

- (id)setNumberValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v10 = sub_18867D4B8(self, v8, v9);
  v11 = sub_18867D504(self, keyCopy);

  v13 = objc_msgSend_setNumberValue_forKey_(v10, v12, valueCopy, v11);

  return v13;
}

- (id)stringValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_18867D4B8(self, v7, v8);
  v10 = sub_18867D504(self, keyCopy);

  v12 = objc_msgSend_stringValueForKey_error_(v9, v11, v10, error);

  return v12;
}

- (id)setStringValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v10 = sub_18867D4B8(self, v8, v9);
  v11 = sub_18867D504(self, keyCopy);

  v13 = objc_msgSend_setStringValue_forKey_(v10, v12, valueCopy, v11);

  return v13;
}

- (id)dataValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_18867D4B8(self, v7, v8);
  v10 = sub_18867D504(self, keyCopy);

  v12 = objc_msgSend_dataValueForKey_error_(v9, v11, v10, error);

  return v12;
}

- (id)setDataValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v10 = sub_18867D4B8(self, v8, v9);
  v11 = sub_18867D504(self, keyCopy);

  v13 = objc_msgSend_setDataValue_forKey_(v10, v12, valueCopy, v11);

  return v13;
}

- (id)dateValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_18867D4B8(self, v7, v8);
  v10 = sub_18867D504(self, keyCopy);

  v12 = objc_msgSend_dateValueForKey_error_(v9, v11, v10, error);

  return v12;
}

- (id)setDateValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v10 = sub_18867D4B8(self, v8, v9);
  v11 = sub_18867D504(self, keyCopy);

  v13 = objc_msgSend_setDateValue_forKey_(v10, v12, valueCopy, v11);

  return v13;
}

- (id)UUIDValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_18867D4B8(self, v7, v8);
  v10 = sub_18867D504(self, keyCopy);

  v12 = objc_msgSend_UUIDValueForKey_error_(v9, v11, v10, error);

  return v12;
}

- (id)setUUIDValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v10 = sub_18867D4B8(self, v8, v9);
  v11 = sub_18867D504(self, keyCopy);

  v13 = objc_msgSend_setUUIDValue_forKey_(v10, v12, valueCopy, v11);

  return v13;
}

+ (void)initialize
{
  objc_msgSend_entryClass(self, a2, v2);
  if (objc_opt_class() == self)
  {
    qword_1EA9123A0 = objc_getClass("CKSQLiteUnsetPropertySentinel");
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    v6 = objc_msgSend_initWithCapacity_(v4, v5, 32);
    v7 = qword_1EA9123A8;
    qword_1EA9123A8 = v6;

    MEMORY[0x1EEE66BB8](v6, v7);
  }
}

+ (id)objectClassesForProperty:(id)property
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, &v10, 11);
  v7 = objc_msgSend_setWithArray_(v3, v6, v5, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)enumerateClassPropertyDictionariesWithBlock:(id)block
{
  blockCopy = block;
  v6 = objc_opt_class();
  v7 = 0;
  v13 = 0;
  do
  {
    v8 = objc_msgSend_methodForSelector_(self, v5, sel_dbProperties);
    if (v8 != v7)
    {
      v11 = v8;
      v12 = v8(self, sel_dbProperties);
      blockCopy[2](blockCopy, v12, &v13);

      v7 = v11;
    }

    if (self == v6)
    {
      v13 = 1;
    }

    self = objc_msgSend_superclass(self, v9, v10);
  }

  while ((v13 & 1) == 0);
}

+ (void)enumeratePropertyDataWithBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188681908;
  v7[3] = &unk_1E70C0DE0;
  v8 = blockCopy;
  v5 = blockCopy;
  objc_msgSend_enumerateClassPropertyDictionariesWithBlock_(self, v6, v7);
}

+ (unsigned)propertyCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188681AE4;
  v4[3] = &unk_1E70C0E08;
  v4[4] = &v5;
  objc_msgSend_enumerateClassPropertyDictionariesWithBlock_(self, a2, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (unsigned)propertyInfo:(id)info
{
  infoCopy = info;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1883EE20C;
  v20 = sub_1883EF7AC;
  v21 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_188681C34;
  v13 = &unk_1E70C0E30;
  v15 = &v16;
  v5 = infoCopy;
  v14 = v5;
  objc_msgSend_enumerateClassPropertyDictionariesWithBlock_(self, v6, &v10);
  LODWORD(self) = objc_msgSend_unsignedLongValue(v17[5], v7, v8, v10, v11, v12, v13);

  _Block_object_dispose(&v16, 8);
  return self;
}

+ (id)flattenedDBProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188681D40;
  v7[3] = &unk_1E70C08F0;
  v4 = v3;
  v8 = v4;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v5, v7);

  return v4;
}

+ (Class)tableClassWithName:(id)name properties:(id)properties version:(unint64_t)version entryClass:(Class)class
{
  nameCopy = name;
  propertiesCopy = properties;
  v12 = objc_opt_class();
  objc_sync_enter(v12);
  ClassPair = NSClassFromString(nameCopy);
  if (!ClassPair)
  {
    v14 = nameCopy;
    v17 = objc_msgSend_UTF8String(v14, v15, v16);
    ClassPair = objc_allocateClassPair(self, v17, 0);
    if (propertiesCopy)
    {
      v20 = objc_msgSend_copy(propertiesCopy, v18, v19);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_18868208C;
      aBlock[3] = &unk_1E70C0E58;
      v21 = v20;
      v39 = v21;
      v22 = _Block_copy(aBlock);
      Class = object_getClass(ClassPair);
      v24 = _Block_copy(v22);
      v25 = imp_implementationWithBlock(v24);
      class_addMethod(Class, sel_dbProperties, v25, 0);
    }

    if (version)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_188682094;
      v37[3] = &unk_1E70C0E78;
      v37[4] = version;
      v26 = _Block_copy(v37);
      v27 = object_getClass(ClassPair);
      v28 = _Block_copy(v26);
      v29 = imp_implementationWithBlock(v28);
      class_addMethod(v27, sel_dbVersion, v29, 0);
    }

    if (class)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_18868209C;
      v36[3] = &unk_1E70C0E98;
      v36[4] = class;
      v30 = _Block_copy(v36);
      v31 = object_getClass(ClassPair);
      v32 = _Block_copy(v30);
      v33 = imp_implementationWithBlock(v32);
      class_addMethod(v31, sel_entryClass, v33, 0);
    }

    objc_registerClassPair(ClassPair);
  }

  objc_sync_exit(v12);

  v34 = ClassPair;
  return ClassPair;
}

+ (void)encodeEntry:(id)entry withCoder:(id)coder
{
  entryCopy = entry;
  coderCopy = coder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188682164;
  v11[3] = &unk_1E70C0EC0;
  v13 = coderCopy;
  selfCopy = self;
  v12 = entryCopy;
  v8 = coderCopy;
  v9 = entryCopy;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v10, v11);
}

+ (void)decodeEntry:(id)entry withCoder:(id)coder
{
  entryCopy = entry;
  coderCopy = coder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1886822BC;
  v11[3] = &unk_1E70C0EC0;
  v13 = entryCopy;
  selfCopy = self;
  v12 = coderCopy;
  v8 = entryCopy;
  v9 = coderCopy;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v10, v11);
}

+ (unint64_t)hashForEntry:(id)entry
{
  entryCopy = entry;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886824BC;
  v9[3] = &unk_1E70C0EE8;
  v11 = &v13;
  selfCopy = self;
  v5 = entryCopy;
  v10 = v5;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v6, v9);
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

+ (BOOL)entriesHaveEqualProperties:(id)properties other:(id)other includePrimaryKey:(BOOL)key
{
  propertiesCopy = properties;
  otherCopy = other;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18868265C;
  v14[3] = &unk_1E70C0F10;
  keyCopy = key;
  selfCopy = self;
  v10 = propertiesCopy;
  v15 = v10;
  v11 = otherCopy;
  v16 = v11;
  v17 = &v20;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v12, v14);
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

+ (id)copyOfEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_alloc_init(objc_msgSend_entryClass(self, v5, v6));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18868282C;
  v11[3] = &unk_1E70C0F38;
  v12 = entryCopy;
  selfCopy = self;
  v8 = entryCopy;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v9, v11);

  return v7;
}

+ (id)descriptionOfProperties:(id)properties from:(id)from
{
  v31 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  fromCopy = from;
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = propertiesCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v26, v30, 16);
  if (v10)
  {
    v12 = v10;
    v13 = 1;
    v14 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        if ((v13 & 1) == 0)
        {
          objc_msgSend_appendString_(v8, v11, @", ");
        }

        v17 = objc_msgSend_propertyInfo_(self, v11, v16);
        v19 = objc_msgSend_valueForProperty_propertyInfo_inObject_allowFetchingUnsetPropertySentinel_(self, v18, v16, v17, fromCopy, 1);
        v21 = v19;
        if (v19 == qword_1EA9123A0)
        {

          v21 = @"<unfetched>";
        }

        if (v17 == 8)
        {
          v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"{ %@ }", v21);

          v21 = v22;
        }

        objc_msgSend_appendFormat_(v8, v20, @"%@ = %@", v16, v21);

        v13 = 0;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v26, v30, 16);
      v13 = 0;
    }

    while (v12);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)descriptionOfEntry:(id)entry
{
  entryCopy = entry;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = objc_msgSend_initWithFormat_(v5, v8, @"%@(%p): ", v7, entryCopy);

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1883EE20C;
  v32[4] = sub_1883EF7AC;
  v33 = &stru_1EFA32970;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1883EE20C;
  v30 = sub_1883EF7AC;
  v31 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_188682CF0;
  v20[3] = &unk_1E70C0F60;
  selfCopy = self;
  v10 = entryCopy;
  v21 = v10;
  v23 = &v26;
  v11 = v9;
  v22 = v11;
  v24 = v32;
  objc_msgSend_enumeratePropertyDataWithBlock_(self, v12, v20);
  v14 = v27[5];
  if (v14)
  {
    v15 = objc_msgSend_componentsJoinedByString_(v14, v13, @", ");
    objc_msgSend_appendFormat_(v11, v16, @" (unfetched: %@)", v15);
  }

  v17 = v22;
  v18 = v11;

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(v32, 8);

  return v18;
}

+ (void)addSingletonInstanceToGroup:(id)group
{
  groupCopy = group;
  v6 = objc_msgSend_defaultLogicalTableName(self, v4, v5);
  v8 = objc_msgSend_singletonInstanceInGroup_(self, v7, groupCopy);

  if (!v8)
  {
    v9 = [self alloc];
    v11 = objc_msgSend_initWithLogicalTableName_(v9, v10, v6);
    objc_msgSend_addTable_(groupCopy, v12, v11);
  }
}

+ (id)singletonInstanceInGroup:(id)group
{
  groupCopy = group;
  v7 = objc_msgSend_defaultLogicalTableName(self, v5, v6);
  v9 = objc_msgSend_tableWithName_(groupCopy, v8, v7);

  return v9;
}

- (CKSQLiteTable)init
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_defaultLogicalTableName(v3, v4, v5);
  v8 = objc_msgSend_initWithLogicalTableName_(self, v7, v6);

  return v8;
}

- (CKSQLiteTable)initWithLogicalTableName:(id)name
{
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = CKSQLiteTable;
  v6 = [(CKSQLiteTable *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logicalTableName, name);
    v8 = objc_opt_class();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1886830D4;
    v19[3] = &unk_1E70C08F0;
    v9 = v7;
    v20 = v9;
    objc_msgSend_enumeratePropertyDataWithBlock_(v8, v10, v19);
    v11 = objc_opt_class();
    if (objc_msgSend_useNSCoding(v11, v12, v13))
    {
      do
      {
        v14 = v9[6];
        v15 = v14;
        atomic_compare_exchange_strong_explicit(v9 + 6, &v15, v14 | 8, memory_order_relaxed, memory_order_relaxed);
      }

      while (v15 != v14);
    }

    else
    {
      do
      {
        v16 = v9[6];
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v9 + 6, &v17, v16 & 0xFFFFFFF7, memory_order_relaxed, memory_order_relaxed);
      }

      while (v17 != v16);
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  logicalTableName = self->_logicalTableName;
  v9 = objc_msgSend_tableGroup(self, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v3, v13, @"%@(%p) named %@ in group %@, dbTable: %@", v5, self, logicalTableName, v12, self->_dbTableName);

  return v14;
}

- (id)validateTableMatchesTOCEntry
{
  v4 = objc_msgSend_tocTableEntry(self, a2, v2);
  v7 = objc_msgSend_dbVersion(v4, v5, v6);
  v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

  v11 = objc_opt_class();
  v14 = objc_msgSend_dbVersion(v11, v12, v13);
  if (v10 == v14)
  {
    v17 = objc_msgSend_schema(v4, v15, v16);
    v20 = objc_msgSend_createTableSQL(self, v18, v19);
    if (objc_msgSend_isEqualToString_(v17, v21, v20))
    {
      v24 = objc_msgSend_propertyData(v4, v22, v23);
      v27 = objc_msgSend_flattenedDBProperties(v11, v25, v26);
      if (objc_msgSend_isEqualToDictionary_(v24, v28, v27))
      {
        v31 = 0;
      }

      else
      {
        v35 = objc_msgSend_logicalTableName(self, v29, v30);
        v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v36, @"CKInternalErrorDomain", 1, @"Table %@ failed validation - property data changed: database=%@ runtime=%@", v35, v24, v27);
      }
    }

    else
    {
      v24 = objc_msgSend_logicalTableName(self, v22, v23);
      v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v34, @"CKInternalErrorDomain", 1, @"Table %@ failed validation - schema changed: database=%@ runtime=%@", v24, v17, v20);
    }
  }

  else
  {
    v32 = v14;
    v17 = objc_msgSend_logicalTableName(self, v15, v16);
    v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKInternalErrorDomain", 1, @"Table %@ failed validation - version changed: database=%d runtime=%d"), v17, v10, v32);
  }

  return v31;
}

+ (id)nonKeyProperties
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1886834EC;
  v7[3] = &unk_1E70C08F0;
  v4 = v2;
  v8 = v4;
  objc_msgSend_enumeratePropertyDataWithBlock_(v3, v5, v7);

  return v4;
}

- (void)setTableGroup:(id)group
{
  groupCopy = group;
  objc_storeWeak(&self->_tableGroup, groupCopy);
  v7 = objc_msgSend_db(groupCopy, v5, v6);

  db = self->_db;
  self->_db = v7;
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

- (id)performTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_tableGroup);
  v7 = objc_msgSend_performTransaction_(WeakRetained, v6, transactionCopy);

  return v7;
}

- (id)performInTransaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_tableGroup);
  v7 = objc_msgSend_performInTransaction_(WeakRetained, v6, transactionCopy);

  return v7;
}

- (void)addTransactionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_db(self, v5, v6);
  objc_msgSend_addTransactionCompletionHandler_(v8, v7, handlerCopy);
}

- (id)checkConstraintForProperty:(id)property info:(unsigned int)info
{
  infoCopy = info;
  propertyCopy = property;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (infoCopy - 96) <= 0xAu && ((0x4E7u >> (infoCopy - 96)))
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"%@ >= %lld AND %@ <= %llu", propertyCopy, qword_1886FE888[(infoCopy - 96)], propertyCopy, qword_1886FE8E0[(infoCopy - 96)]);
    objc_msgSend_addObject_(v7, v9, v8);
  }

  return v7;
}

- (id)createTableSQL
{
  v107 = *MEMORY[0x1E69E9840];
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = sub_1883EE20C;
  v103 = sub_1883EF7AC;
  v104 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v69 = objc_msgSend_dbTableName(self, v6, v7);
  if (!v69)
  {
    v58 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v58, v59, a2, self, @"CKSQLiteTable.m", 999, @"Name not set");
  }

  v10 = objc_msgSend__useTemporaryTables(self, v8, v9);
  v11 = &stru_1EFA32970;
  if (v10)
  {
    v11 = @"TEMPORARY ";
  }

  v65 = v11;
  objc_msgSend_appendFormat_(v2, v12, @"CREATE %@TABLE '%@' ("), v65, v69;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 1;
  v13 = objc_opt_class();
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = sub_188683FEC;
  v85[3] = &unk_1E70C0FA8;
  v92 = &v95;
  v14 = v2;
  v86 = v14;
  selfCopy = self;
  v66 = v3;
  v88 = v66;
  v91 = &unk_1EFA30130;
  v68 = v4;
  v89 = v68;
  v94 = 0xFC00000003F0000;
  v67 = v5;
  v90 = v67;
  v93 = &v99;
  objc_msgSend_enumeratePropertyDataWithBlock_(v13, v15, v85);
  if (*(v96 + 24) == 1)
  {
    v60 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v17);
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v63, a2, self, @"CKSQLiteTable.m", 1066, @"Table class %@ defines no properties", v62);
  }

  objc_msgSend_appendFormat_(v14, v16, @", PRIMARY KEY (%@)", self->_primaryKey);
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = sub_18868432C;
  v83[3] = &unk_1E70C0FD0;
  v18 = v14;
  v84 = v18;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v68, v19, v83);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v20 = v100[5];
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v79, v106, 16);
  if (v23)
  {
    v24 = *v80;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v80 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v79 + 1) + 8 * i);
        v29 = objc_msgSend_tableForReferenceProperty_(self, v22, v26);
        if (!v29)
        {
          v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v27, v28);
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v38, a2, self, @"CKSQLiteTable.m", 1081, @"%@ returned nil referent table for %@", v37, v26);
        }

        v30 = objc_msgSend_primaryKey(v29, v27, v28);
        v33 = objc_msgSend_dbTableName(v29, v31, v32);
        objc_msgSend_appendFormat_(v18, v34, @", FOREIGN KEY(%@) REFERENCES '%@'(%@)", v26, v33, v30);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v79, v106, 16);
    }

    while (v23);
  }

  objc_msgSend_appendString_(v18, v39, @";"));
  v42 = objc_msgSend_dbTableName(self, v40, v41);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obja = v66;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v43, &v75, v105, 16);
  if (v45)
  {
    v46 = *v76;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v76 != v46)
        {
          objc_enumerationMutation(obja);
        }

        v48 = *(*(&v75 + 1) + 8 * j);
        v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"%@.index_%@", v42, v48);
        objc_msgSend_appendFormat_(v18, v50, @"CREATE INDEX '%@' on '%@' (%@);", v49, v42, v48);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v44, &v75, v105, 16);
    }

    while (v45);
  }

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1886843BC;
  v72[3] = &unk_1E70C0FF8;
  v51 = v42;
  v73 = v51;
  v52 = v18;
  v74 = v52;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v67, v53, v72);
  v54 = v74;
  v55 = v52;

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);

  v56 = *MEMORY[0x1E69E9840];

  return v55;
}

- (id)createTriggerSQL
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188684558;
  v10[3] = &unk_1E70C1020;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  objc_msgSend_enumeratePropertyDataWithBlock_(v4, v6, v10);
  v7 = v11;
  v8 = v5;

  return v5;
}

- (id)requestCallbackWithDate:(id)date coalescingInterval:(double)interval minimumSeparation:(double)separation
{
  dateCopy = date;
  v11 = objc_msgSend_tableGroup(self, v9, v10);
  v13 = objc_msgSend_requestCallbackForTarget_withDate_coalescingInterval_minimumSeparation_(v11, v12, self, dateCopy, interval, separation);

  return v13;
}

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  v6 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v4, v5);
  v7 = [CKSignificantIssue alloc];
  v8 = [CKSourceCodeLocation alloc];
  v10 = objc_msgSend_initWithFilePath_lineNumber_(v8, v9, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1246);
  v12 = objc_msgSend_initWithSourceCodeLocation_format_(v7, v11, v10, @"No referenced object table for property %@", propertyCopy);
  objc_msgSend_handleSignificantIssue_actions_(v6, v13, v12, 0);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"No referenced object table for property %@", propertyCopy);
  objc_msgSend_UTF8String(v15, v16, v17);
  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)migrateEntryDataFromTable:(id)table entry:(id)entry toEntry:(id)toEntry addedProperties:(id)properties
{
  tableCopy = table;
  entryCopy = entry;
  toEntryCopy = toEntry;
  v12 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1886848D4;
  v18[3] = &unk_1E70C1048;
  v19 = tableCopy;
  v20 = entryCopy;
  selfCopy = self;
  v22 = toEntryCopy;
  v13 = toEntryCopy;
  v14 = entryCopy;
  v15 = tableCopy;
  objc_msgSend_enumeratePropertyDataWithBlock_(v12, v16, v18);

  return 1;
}

- (BOOL)migrateDataFromTable:(id)table error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_opt_class();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_188684C54;
  v43[3] = &unk_1E70C1070;
  v9 = tableCopy;
  v44 = v9;
  v10 = v6;
  v45 = v10;
  v11 = v7;
  v46 = v11;
  objc_msgSend_enumeratePropertyDataWithBlock_(v8, v12, v43);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_188684CC8;
  v41[3] = &unk_1E70BC098;
  v35 = v10;
  v42 = v35;
  objc_msgSend_entriesWithValues_label_setupBlock_(v9, v13, 0, 0, v41);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v40 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v47, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = objc_opt_class();
        v25 = objc_alloc_init(objc_msgSend_entryClass(v22, v23, v24));
        if (objc_msgSend_migrateEntryDataFromTable_entry_toEntry_addedProperties_(self, v26, v9, v20, v25, v11))
        {
          v28 = objc_msgSend_insertObject_(self, v27, v25);

          objc_autoreleasePoolPop(v21);
          if (v28)
          {

            goto LABEL_13;
          }
        }

        else
        {

          objc_autoreleasePoolPop(v21);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v29, &v37, v47, 16);
    }

    while (v17);
  }

  v28 = objc_msgSend_error(v14, v30, v31);
LABEL_13:
  if (error && v28)
  {
    v32 = v28;
    *error = v28;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v28 == 0;
}

- (void)setLogOperations:(BOOL)operations
{
  if (operations)
  {
    do
    {
      flags = self->_flags;
      v4 = flags;
      atomic_compare_exchange_strong_explicit(&self->_flags, &v4, flags | 4, memory_order_relaxed, memory_order_relaxed);
    }

    while (v4 != flags);
  }

  else
  {
    do
    {
      v5 = self->_flags;
      v6 = v5;
      atomic_compare_exchange_strong_explicit(&self->_flags, &v6, v5 & 0xFFFFFFFB, memory_order_relaxed, memory_order_relaxed);
    }

    while (v6 != v5);
  }
}

- (id)compiledStatementWithLabel:(_CKSQLiteCompiledStatementLabel *)label creationBlock:(id)block
{
  blockCopy = block;
  if (label && (objc_msgSend_ignoreCompiledStatementLabelsForTests(self, v6, v7) & 1) == 0)
  {
    v10 = [CKSQLiteCompiledStatementCacheKey alloc];
    v12 = objc_msgSend_initWithTable_label_(v10, v11, self, label);
    v13 = qword_1EA9123A8;
    objc_sync_enter(v13);
    v9 = objc_msgSend_objectForKey_(qword_1EA9123A8, v14, v12);
    if (v9)
    {
      objc_msgSend_removeObjectForKey_(qword_1EA9123A8, v15, v12);
      objc_sync_exit(v13);
    }

    else
    {
      objc_sync_exit(v13);

      v9 = blockCopy[2](blockCopy);
      objc_msgSend_setLabel_(v9, v16, v12);
    }
  }

  else
  {
    v9 = blockCopy[2](blockCopy);
  }

  return v9;
}

- (void)cacheStatement:(id)statement
{
  statementCopy = statement;
  v3 = qword_1EA9123A8;
  objc_sync_enter(v3);
  if (qword_1EA9123A8)
  {
    if (objc_msgSend_count(qword_1EA9123A8, v4, v5) >= 0x40)
    {
      objc_msgSend_removeAllObjects(qword_1EA9123A8, v6, v7);
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v10 = objc_msgSend_initWithCapacity_(v8, v9, 64);
    v11 = qword_1EA9123A8;
    qword_1EA9123A8 = v10;
  }

  v12 = qword_1EA9123A8;
  v13 = objc_msgSend_label(statementCopy, v6, v7);
  objc_msgSend_setObject_forKey_(v12, v14, statementCopy, v13);

  objc_sync_exit(v3);
}

- (id)_predicateForMatchingProperties:(id)properties
{
  v33 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (objc_msgSend_count(propertiesCopy, v4, v5) == 1)
  {
    v7 = objc_msgSend_objectAtIndex_(propertiesCopy, v6, 0);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"%@=$%@", v7, v7);
    v11 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v10, v9);
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = propertiesCopy;
    v13 = propertiesCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v28, v32, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"%@=$%@", *(*(&v28 + 1) + 8 * i), *(*(&v28 + 1) + 8 * i));
          v22 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v21, v20);
          objc_msgSend_addObject_(v12, v23, v22);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v28, v32, 16);
      }

      while (v17);
    }

    v11 = objc_msgSend_andPredicateWithSubpredicates_(MEMORY[0x1E696AB28], v24, v12);

    propertiesCopy = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_valueDictionaryForProperties:(id)properties inObject:(id)object nilPropertyError:(id *)error selForNilPropertyError:(SEL)propertyError
{
  v42 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objectCopy = object;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = objc_opt_class();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = propertiesCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v41, 16);
  if (v15)
  {
    v17 = v15;
    aSelector = propertyError;
    v18 = *v38;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v21 = objc_msgSend_propertyInfo_(v12, v16, v20);
        v25 = objc_msgSend_valueForProperty_propertyInfo_inObject_(self, v22, v20, v21, objectCopy);
        if (!v25)
        {
          if (error)
          {
            v26 = NSStringFromSelector(aSelector);
            v29 = objc_msgSend_logicalTableName(self, v27, v28);
            v31 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v30, @"CKInternalErrorDomain", 1, @"%@ requires a value for %@ in table %@", v26, v20, v29);

            v32 = v31;
            *error = v31;

            v11 = 0;
            goto LABEL_13;
          }

          v25 = objc_msgSend_null(MEMORY[0x1E695DFB0], v23, v24);
        }

        objc_msgSend_setObject_forKey_(v11, v23, v25, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v37, v41, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v33 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_addPredicateForMatching:(id)matching toStatement:(id)statement
{
  matchingCopy = matching;
  statementCopy = statement;
  if (statementCopy && objc_msgSend_count(matchingCopy, v6, v7))
  {
    v10 = objc_msgSend__predicateForMatchingProperties_(self, v9, matchingCopy);
    objc_msgSend_setSearchPredicate_forProperties_(statementCopy, v11, v10, matchingCopy);
  }
}

- (id)_bindProperties:(id)properties valueObject:(id)object inStatement:(id)statement includePrimaryKey:(BOOL)key
{
  v34 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objectCopy = object;
  statementCopy = statement;
  v11 = objc_opt_class();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = propertiesCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v30;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v30 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v29 + 1) + 8 * v18);
      v20 = objc_msgSend_propertyInfo_(v11, v15, v19, statementCopy);
      v21 = v20;
      if (key || (v20 & 0x100) == 0)
      {
        v22 = objc_msgSend_valueForProperty_propertyInfo_inObject_(self, v15, v19, v20, objectCopy);
        v24 = objc_msgSend_bindValueColumn_type_value_(statementCopy, v23, v19, v21, v22);

        if (v24)
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v29, v33, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BOOL)hasEntry:(id)entry error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  primaryKey = self->_primaryKey;
  v6 = MEMORY[0x1E695DEC8];
  entryCopy = entry;
  v9 = objc_msgSend_arrayWithObjects_count_(v6, v8, &primaryKey, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, MEMORY[0x1E695E0F0], entryCopy, v9, off_1EA910FE0, primaryKey, v18);

  if (v11)
  {
    v13 = objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v12, v11);
    if (error)
    {
      if ((v13 & 1) == 0)
      {
        v14 = v11;
        *error = v11;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (id)entryWithPrimaryKey:(id)key fetchProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  propertiesCopy = properties;
  primaryKey = self->_primaryKey;
  v27[0] = keyCopy;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v27, &primaryKey, 1);
  v25 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1886858CC;
  v23[3] = &unk_1E70C1098;
  v23[4] = self;
  v15 = propertiesCopy;
  v24 = v15;
  v17 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v16, v14, label, &v25, v23);
  v18 = v25;
  v19 = v18;
  if (v18)
  {
    sub_18868114C(v18, self, a2);
    if (error)
    {
      v20 = v19;
      *error = v19;
    }

    v17 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)entryWithValues:(id)values label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error setupBlock:(id)block
{
  valuesCopy = values;
  blockCopy = block;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1883EE20C;
  v31 = sub_1883EF7AC;
  v32 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_188685B30;
  v21[3] = &unk_1E70C10E8;
  v21[4] = self;
  v13 = valuesCopy;
  v22 = v13;
  labelCopy = label;
  v14 = blockCopy;
  v23 = v14;
  v24 = &v27;
  v26 = a2;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (error && v16)
  {
    v18 = v16;
    *error = v17;
  }

  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)_fetchPropertiesUsingStatement:(id)statement inObject:(id)object matchingDBProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label
{
  v64 = *MEMORY[0x1E69E9840];
  statementCopy = statement;
  objectCopy = object;
  v51 = 0;
  v13 = objc_msgSend_step_(statementCopy, v12, &v51);
  v14 = v51;
  v17 = v14;
  if (v13 && !v14)
  {
    v18 = objc_msgSend_fetchedValues(statementCopy, v15, v16);
    v50 = 0;
    v20 = objc_msgSend_step_(statementCopy, v19, &v50);
    v17 = v50;
    if (v20)
    {
      v22 = objc_msgSend_noUniqueDatabaseRowErrorIn_(CKPrettyError, v21, a2);

      v17 = v22;
    }

    if (!v17)
    {
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_188686060;
      v48[3] = &unk_1E70C1110;
      v48[4] = self;
      v49 = objectCopy;
      objc_msgSend_enumerateResultColumnsWithFetchedValues_block_(statementCopy, v23, v18, v48);
    }

    goto LABEL_9;
  }

  if (v14)
  {
LABEL_9:
    v24 = 0;
    goto LABEL_10;
  }

  v17 = objc_msgSend_noMatchingDatabaseRowErrorIn_(CKPrettyError, v15, a2);
  v24 = 1;
LABEL_10:
  if (objc_msgSend_logOperations(self, v15, v16))
  {
    v27 = objc_msgSend_fetchedColumns(statementCopy, v25, v26);
    v47 = objc_msgSend_componentsJoinedByString_(v27, v28, @", ");
    v46 = objc_msgSend_searchBindingsDescription(statementCopy, v29, v30);
    if (v17)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"<none>, Error = %@", v17);
    }

    else
    {
      v32 = objc_opt_class();
      objc_msgSend_descriptionOfProperties_from_(v32, v33, v27, objectCopy);
    }
    v34 = ;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      v37 = objc_opt_class();
      NSStringFromClass(v37);
      v38 = v45 = a2;
      sub_188680BFC(label, v39);
      v41 = v40 = objectCopy;
      *buf = 138544642;
      v53 = v38;
      v54 = 2048;
      selfCopy = self;
      v56 = 2114;
      v57 = v47;
      v58 = 2114;
      v59 = v46;
      v60 = 2114;
      v61 = v41;
      v62 = 2114;
      v63 = v34;
      _os_log_impl(&dword_1883EA000, v36, OS_LOG_TYPE_INFO, "%{public}@(%p): FETCH (%{public}@) WHERE %{public}@, label: %{public}@ fetched: %{public}@", buf, 0x3Eu);

      objectCopy = v40;
      a2 = v45;
    }
  }

  objc_msgSend_resetAndClearBindings(statementCopy, v25, v26);
  if (v17)
  {
    v42 = v24;
  }

  else
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0)
  {
    sub_18868114C(v17, self, a2);
  }

  v43 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)fetchProperties:(id)properties inObject:(id)object matchingDBProperties:(id)bProperties label:(_CKSQLiteCompiledStatementLabel *)label
{
  propertiesCopy = properties;
  objectCopy = object;
  bPropertiesCopy = bProperties;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_188686184;
  v19[3] = &unk_1E70BC108;
  v19[4] = self;
  v20 = objectCopy;
  v22 = bPropertiesCopy;
  labelCopy = label;
  v21 = propertiesCopy;
  v13 = bPropertiesCopy;
  v14 = propertiesCopy;
  v15 = objectCopy;
  v17 = objc_msgSend_performInTransaction_(self, v16, v19);

  return v17;
}

- (id)fetchProperties:(id)properties inObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label
{
  v18 = *MEMORY[0x1E69E9840];
  primaryKey = self->_primaryKey;
  v8 = MEMORY[0x1E695DEC8];
  objectCopy = object;
  propertiesCopy = properties;
  v12 = objc_msgSend_arrayWithObjects_count_(v8, v11, &primaryKey, 1);
  v14 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v13, propertiesCopy, objectCopy, v12, label, primaryKey, v18);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)fetchAllProperties:(id)properties
{
  propertiesCopy = properties;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1886864DC;
  v9[3] = &unk_1E70BC178;
  v9[4] = self;
  v10 = propertiesCopy;
  v5 = propertiesCopy;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (id)updateProperties:(id)properties usingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label
{
  v32[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  objectCopy = object;
  v32[0] = self->_primaryKey;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v32, 1);
  v31 = 0;
  v14 = objc_msgSend__valueDictionaryForProperties_inObject_nilPropertyError_selForNilPropertyError_(self, v13, v12, objectCopy, &v31, a2);
  v15 = v31;
  if (!v15)
  {
    selfCopy = self;
    v30 = 0;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1886868AC;
    v27 = &unk_1E70C1188;
    v17 = selfCopy;
    v28 = v17;
    v29 = v12;
    v19 = objc_msgSend_setProperties_valuesToStore_inEntriesMatching_label_error_predicate_(v17, v18, propertiesCopy, objectCopy, v14, label, &v30, &v24);
    v15 = v30;
    if (!v15 && !v19)
    {
      v15 = objc_msgSend_noMatchingDatabaseRowErrorIn_(CKPrettyError, v20, a2, v24, v25, v26, v27, v28);
    }
  }

  v21 = v15;

  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)updateUsingObject:(id)object
{
  v4 = MEMORY[0x1E695DF70];
  objectCopy = object;
  v6 = objc_alloc_init(v4);
  v7 = objc_opt_class();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1886869B0;
  v13[3] = &unk_1E70C08F0;
  v14 = v6;
  v8 = v6;
  objc_msgSend_enumeratePropertyDataWithBlock_(v7, v9, v13);
  v11 = objc_msgSend_updateProperties_usingObject_label_(self, v10, v8, objectCopy, off_1EA911028);

  return v11;
}

- (id)_performInsertOrUpdateStatement:(id)statement usingObject:(id)object
{
  statementCopy = statement;
  objectCopy = object;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1883EE20C;
  v29 = sub_1883EF7AC;
  v30 = 0;
  v8 = objc_opt_class();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_188686BC8;
  v21[3] = &unk_1E70C11B0;
  v24 = &v25;
  v21[4] = self;
  v9 = objectCopy;
  v22 = v9;
  v10 = statementCopy;
  v23 = v10;
  objc_msgSend_enumeratePropertyDataWithBlock_(v8, v11, v21);
  v14 = (v26 + 5);
  v13 = v26[5];
  if (!v13)
  {
    obj = 0;
    objc_msgSend_step_(v10, v12, &obj);
    objc_storeStrong(v14, obj);
    v13 = v26[5];
    if (!v13)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_188686C88;
      v18[3] = &unk_1E70C1110;
      v18[4] = self;
      v19 = v9;
      objc_msgSend_enumerateResultColumnsWithBlock_(v10, v15, v18);

      v13 = v26[5];
    }
  }

  v16 = v13;

  _Block_object_dispose(&v25, 8);

  return v16;
}

- (id)insertObject:(id)object
{
  objectCopy = object;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188686D58;
  v10[3] = &unk_1E70C1200;
  v10[4] = self;
  v11 = objectCopy;
  v12 = a2;
  v6 = objectCopy;
  v8 = objc_msgSend_performInTransaction_(self, v7, v10);

  return v8;
}

- (id)insertObject:(id)object orUpdateProperties:(id)properties label:(_CKSQLiteCompiledStatementLabel *)label
{
  objectCopy = object;
  propertiesCopy = properties;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1886870DC;
  v16[3] = &unk_1E70C0C78;
  v16[4] = self;
  v17 = propertiesCopy;
  v18 = objectCopy;
  labelCopy = label;
  v20 = a2;
  v11 = objectCopy;
  v12 = propertiesCopy;
  v14 = objc_msgSend_performInTransaction_(self, v13, v16);

  return v14;
}

- (id)deleteObject:(id)object
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = self->_primaryKey;
  v5 = MEMORY[0x1E695DEC8];
  objectCopy = object;
  v8 = objc_msgSend_arrayWithObjects_count_(v5, v7, v27, 1);
  v26 = 0;
  v10 = objc_msgSend__valueDictionaryForProperties_inObject_nilPropertyError_selForNilPropertyError_(self, v9, v8, objectCopy, &v26, a2);

  v11 = v26;
  if (!v11)
  {
    v25 = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_18868754C;
    v22 = &unk_1E70C1188;
    selfCopy = self;
    v24 = v8;
    v13 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v12, v10, off_1EA911058, &v25, &v19);
    v11 = v25;
    if (!v13)
    {
      v15 = objc_msgSend_noMatchingDatabaseRowErrorIn_(CKPrettyError, v14, a2, v19, v20, v21, v22, selfCopy);

      v11 = v15;
    }
  }

  v16 = v11;

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)deletePrimaryKeyValue:(id)value
{
  v20[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  primaryKey = self->_primaryKey;
  v20[0] = valueCopy;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v20, &primaryKey, 1);
  v17[4] = self;
  v18 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1886876D8;
  v17[3] = &unk_1E70BC1F0;
  v9 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v8, v7, off_1EA911070, &v18, v17);
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    v13 = NSStringFromSelector(a2);
    v11 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v14, @"CKInternalErrorDomain", 1050, @"No matching database row in %@", v13);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (int64_t)sizeOfProperty:(id)property inEntry:(id)entry label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v29[0] = self->_primaryKey;
  v12 = MEMORY[0x1E695DEC8];
  entryCopy = entry;
  v15 = objc_msgSend_arrayWithObjects_count_(v12, v14, v29, 1);
  v28 = 0;
  v17 = objc_msgSend__valueDictionaryForProperties_inObject_nilPropertyError_selForNilPropertyError_(self, v16, v15, entryCopy, &v28, a2);

  v18 = v28;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
  }

  else
  {
    v27 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_188687894;
    v25[3] = &unk_1E70C1188;
    v25[4] = self;
    v26 = v15;
    v20 = objc_msgSend_sizeOfProperty_inEntriesMatching_label_error_predicate_(self, v21, propertyCopy, v17, label, &v27, v25);
    v19 = v27;

    if (!v19)
    {
      goto LABEL_7;
    }
  }

  if (error)
  {
    v22 = v19;
    *error = v19;
  }

  sub_18868114C(v19, self, a2);
LABEL_7:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)minimumValueOfProperty:(id)property label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  propertyCopy = property;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1883EE20C;
  v26 = sub_1883EF7AC;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_188687A24;
  v18[3] = &unk_1E70C1278;
  v18[4] = self;
  labelCopy = label;
  v10 = propertyCopy;
  v19 = v10;
  v20 = &v22;
  v12 = objc_msgSend_performInTransaction_(self, v11, v18);
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    v15 = v23[5];
    v23[5] = 0;

    sub_18868114C(v13, self, a2);
  }

  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)maximumValueOfProperty:(id)property label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  propertyCopy = property;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1883EE20C;
  v26 = sub_1883EF7AC;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_188687E2C;
  v18[3] = &unk_1E70C1278;
  v18[4] = self;
  labelCopy = label;
  v10 = propertyCopy;
  v19 = v10;
  v20 = &v22;
  v12 = objc_msgSend_performInTransaction_(self, v11, v18);
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      *error = v13;
    }

    v15 = v23[5];
    v23[5] = 0;

    sub_18868114C(v13, self, a2);
  }

  v16 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v16;
}

- (id)referenceIDValueForProperty:(id)property inEntry:(id)entry label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  propertyCopy = property;
  entryCopy = entry;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1883EE20C;
  v31 = sub_1883EF7AC;
  v32 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_188688244;
  v21[3] = &unk_1E70C12C8;
  v21[4] = self;
  v13 = entryCopy;
  v22 = v13;
  labelCopy = label;
  v14 = propertyCopy;
  v23 = v14;
  v24 = &v27;
  v26 = a2;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (error && v16)
  {
    v18 = v16;
    *error = v17;
  }

  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)_statementForFetchingEntriesMatchingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = sub_188688770;
  v26 = &unk_1E70C1430;
  selfCopy = self;
  v28 = blockCopy;
  v11 = blockCopy;
  v13 = objc_msgSend_compiledStatementWithLabel_creationBlock_(self, v12, label, &v23);
  v16 = objc_msgSend_searchProperties(v13, v14, v15, v23, v24, v25, v26, selfCopy);
  if (objc_msgSend_count(v16, v17, v18))
  {
    v20 = objc_msgSend__valueDictionaryForProperties_inObject_nilPropertyError_selForNilPropertyError_(self, v19, v16, objectCopy, 0, a2);
    objc_msgSend_setSearchValues_(v13, v21, v20);
  }

  return v13;
}

- (id)entriesMatchingObject:(id)object label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block
{
  v6 = objc_msgSend__statementForFetchingEntriesMatchingObject_label_setupBlock_(self, a2, object, label, block);
  v7 = [CKSQLiteTableSearchResultEnumerator alloc];
  v9 = objc_msgSend_initWithTable_statement_(v7, v8, self, v6);

  return v9;
}

- (id)enumerateEntriesWithBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188688990;
  v9[3] = &unk_1E70C12F0;
  v9[4] = self;
  v10 = blockCopy;
  v5 = blockCopy;
  v7 = objc_msgSend_performInTransaction_(self, v6, v9);

  return v7;
}

- (id)newEntryObjectFromStatement:(id)statement error:(id *)error
{
  statementCopy = statement;
  v9 = statementCopy;
  if ((self->_flags & 8) != 0)
  {
    v25 = 0;
    v13 = objc_msgSend_propertyDecoder_(statementCopy, v7, &v25);
    v14 = v25;
    if (v14)
    {
      v15 = v14;

      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      v11 = 0;
    }

    else
    {
      v17 = objc_opt_class();
      v20 = objc_alloc(objc_msgSend_entryClass(v17, v18, v19));
      v11 = objc_msgSend_initWithCoder_(v20, v21, v13);
    }
  }

  else
  {
    v10 = objc_msgSend_newEntryObject(self, v7, v8);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_188688C3C;
    v23[3] = &unk_1E70C1110;
    v23[4] = self;
    v11 = v10;
    v24 = v11;
    objc_msgSend_enumerateResultColumnsWithBlock_(v9, v12, v23);
  }

  return v11;
}

- (id)_fetchProperties:(id)properties distinct:(BOOL)distinct label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error
{
  propertiesCopy = properties;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_188688D7C;
  v21[3] = &unk_1E70C1340;
  labelCopy = label;
  v21[4] = self;
  v22 = propertiesCopy;
  distinctCopy = distinct;
  v13 = v12;
  v23 = v13;
  v14 = propertiesCopy;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    sub_18868114C(v17, self, a2);
    v13 = 0;
  }

  v19 = v13;

  return v13;
}

- (BOOL)hasEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  matchingCopy = matching;
  predicateCopy = predicate;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1886893E0;
  v21[3] = &unk_1E70C1368;
  v21[4] = self;
  labelCopy = label;
  v13 = predicateCopy;
  v23 = v13;
  v14 = matchingCopy;
  v22 = v14;
  v24 = &v26;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    sub_18868114C(v17, self, a2);
  }

  v19 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v19;
}

- (BOOL)hasEntryWithPrimaryKey:(id)key error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  primaryKey = self->_primaryKey;
  v15[0] = key;
  v6 = MEMORY[0x1E695DF20];
  keyCopy = key;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v8, v15, &primaryKey, 1);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188689650;
  v13[3] = &unk_1E70BC1F0;
  v13[4] = self;
  LOBYTE(error) = objc_msgSend_hasEntriesMatching_label_error_predicate_(self, v10, v9, off_1EA9110B8, error, v13);

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

- (unint64_t)count:(id *)count
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_188689770;
  v11[3] = &unk_1E70BC218;
  v11[4] = self;
  v11[5] = &v12;
  v6 = objc_msgSend_performInTransaction_(self, a2, v11);
  v7 = v6;
  if (v6)
  {
    if (count)
    {
      v8 = v6;
      *count = v7;
    }

    sub_18868114C(v7, self, a2);
  }

  v9 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)addPredicateToStatement:(id)statement predicate:(id)predicate
{
  statementCopy = statement;
  predicateCopy = predicate;
  v6 = predicateCopy;
  if (predicateCopy)
  {
    v9 = (*(predicateCopy + 2))(predicateCopy);
    if (!v9)
    {
      v10 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v7, v8);
      v11 = [CKSignificantIssue alloc];
      v12 = [CKSourceCodeLocation alloc];
      v14 = objc_msgSend_initWithFilePath_lineNumber_(v12, v13, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 2062);
      v16 = objc_msgSend_initWithSourceCodeLocation_format_(v11, v15, v14, @"predicate block returned nil predicate");
      objc_msgSend_handleSignificantIssue_actions_(v10, v17, v16, 0);

      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"predicate block returned nil predicate");
      objc_msgSend_UTF8String(v19, v20, v21);
      _os_crash();
      __break(1u);
      return;
    }

    objc_msgSend_setSearchPredicate_forProperties_(statementCopy, v7, v9, 0);
  }
}

- (unint64_t)setProperties:(id)properties valuesToStore:(id)store inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  propertiesCopy = properties;
  storeCopy = store;
  matchingCopy = matching;
  predicateCopy = predicate;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_188689D9C;
  v29[3] = &unk_1E70C13B8;
  v29[4] = self;
  labelCopy = label;
  v19 = propertiesCopy;
  v30 = v19;
  v20 = predicateCopy;
  v33 = v20;
  v21 = matchingCopy;
  v31 = v21;
  v22 = storeCopy;
  v32 = v22;
  v34 = &v36;
  v24 = objc_msgSend_performInTransaction_(self, v23, v29);
  v25 = v24;
  if (v24)
  {
    if (error)
    {
      v26 = v24;
      *error = v25;
    }

    sub_18868114C(v25, self, a2);
  }

  v27 = v37[3];

  _Block_object_dispose(&v36, 8);
  return v27;
}

- (unint64_t)deleteEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  matchingCopy = matching;
  predicateCopy = predicate;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18868A21C;
  v21[3] = &unk_1E70C1368;
  v21[4] = self;
  labelCopy = label;
  v13 = predicateCopy;
  v23 = v13;
  v14 = matchingCopy;
  v22 = v14;
  v24 = &v26;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    sub_18868114C(v17, self, a2);
  }

  v19 = v27[3];

  _Block_object_dispose(&v26, 8);
  return v19;
}

- (id)entriesWithValues:(id)values label:(_CKSQLiteCompiledStatementLabel *)label setupBlock:(id)block
{
  blockCopy = block;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_18868A868;
  v21 = &unk_1E70C1430;
  selfCopy = self;
  v23 = blockCopy;
  v9 = blockCopy;
  valuesCopy = values;
  v12 = objc_msgSend_compiledStatementWithLabel_creationBlock_(self, v11, label, &v18);
  objc_msgSend_setSearchValues_(v12, v13, valuesCopy, v18, v19, v20, v21, selfCopy);

  v14 = [CKSQLiteTableSearchResultEnumerator alloc];
  v16 = objc_msgSend_initWithTable_statement_(v14, v15, self, v12);

  return v16;
}

- (unint64_t)countOfEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  matchingCopy = matching;
  predicateCopy = predicate;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_18868AB40;
  v21[3] = &unk_1E70C1368;
  v21[4] = self;
  labelCopy = label;
  v13 = predicateCopy;
  v23 = v13;
  v14 = matchingCopy;
  v22 = v14;
  v24 = &v26;
  v16 = objc_msgSend_performInTransaction_(self, v15, v21);
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    sub_18868114C(v17, self, a2);
  }

  v19 = v27[3];

  _Block_object_dispose(&v26, 8);
  return v19;
}

- (int64_t)sumOfProperty:(id)property inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  propertyCopy = property;
  matchingCopy = matching;
  predicateCopy = predicate;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_18868AEA4;
  v25[3] = &unk_1E70C1458;
  v25[4] = self;
  labelCopy = label;
  v16 = propertyCopy;
  v26 = v16;
  v17 = predicateCopy;
  v28 = v17;
  v18 = matchingCopy;
  v27 = v18;
  v29 = &v31;
  v20 = objc_msgSend_performInTransaction_(self, v19, v25);
  v21 = v20;
  if (v20)
  {
    if (error)
    {
      v22 = v20;
      *error = v21;
    }

    sub_18868114C(v21, self, a2);
  }

  v23 = v32[3];

  _Block_object_dispose(&v31, 8);
  return v23;
}

- (int64_t)sizeOfProperty:(id)property inEntriesMatching:(id)matching label:(_CKSQLiteCompiledStatementLabel *)label error:(id *)error predicate:(id)predicate
{
  propertyCopy = property;
  matchingCopy = matching;
  predicateCopy = predicate;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = sub_18868B348;
  v48 = &unk_1E70C1458;
  selfCopy = self;
  labelCopy = label;
  v16 = propertyCopy;
  v50 = v16;
  v17 = predicateCopy;
  v52 = v17;
  v18 = matchingCopy;
  v51 = v18;
  v53 = &v55;
  v20 = objc_msgSend_performInTransaction_(self, v19, &v45);
  v21 = v20;
  if (v20)
  {
    if (error)
    {
      v22 = v20;
      *error = v21;
    }

    v56[3] = 0;
    sub_18868114C(v21, self, a2);
    goto LABEL_8;
  }

  if (v56[3] || (v23 = objc_opt_class(), v25 = objc_msgSend_propertyInfo_(v23, v24, v16), v25 == 3) || v25 < 0)
  {
LABEL_8:
    v28 = v56[3];

    _Block_object_dispose(&v55, 8);
    return v28;
  }

  v30 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v26, v27);
  v31 = [CKSignificantIssue alloc];
  v32 = [CKSourceCodeLocation alloc];
  v34 = objc_msgSend_initWithFilePath_lineNumber_(v32, v33, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 2274);
  v35 = NSStringFromSelector(a2);
  v37 = objc_msgSend_initWithSourceCodeLocation_format_(v31, v36, v34, @"%@ called with %@ which is not a valid type to be sized.", v35, v16, v45, v46, v47, v48, selfCopy, v50);
  objc_msgSend_handleSignificantIssue_actions_(v30, v38, v37, 0);

  v39 = MEMORY[0x1E696AEC0];
  v40 = NSStringFromSelector(a2);
  v42 = objc_msgSend_stringWithFormat_(v39, v41, @"%@ called with %@ which is not a valid type to be sized.", v40, v16);

  objc_msgSend_UTF8String(v42, v43, v44);
  result = _os_crash();
  __break(1u);
  return result;
}

@end
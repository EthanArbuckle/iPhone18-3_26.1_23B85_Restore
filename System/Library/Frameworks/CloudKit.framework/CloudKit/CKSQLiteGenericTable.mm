@interface CKSQLiteGenericTable
+ (Class)genericTableClassForTOCTableEntry:(id)entry;
+ (Class)tocClass;
+ (id)genericTableForTOCEntry:(id)entry;
+ (id)objectClassesForProperty:(id)property;
+ (id)uniqueSubclassClassNameForClassName:(id)name;
+ (unsigned)propertyInfo:(id)info;
+ (void)enumeratePropertyDataWithBlock:(id)block;
- (CKSQLiteGenericTable)initWithTOCEntry:(id)entry;
@end

@implementation CKSQLiteGenericTable

+ (void)enumeratePropertyDataWithBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18867B278;
  v7[3] = &unk_1E70C0CD0;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CKSQLiteGenericTable;
  v5 = blockCopy;
  objc_msgSendSuper2(&v6, sel_enumeratePropertyDataWithBlock_, v7);
}

+ (unsigned)propertyInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___CKSQLiteGenericTable;
  result = objc_msgSendSuper2(&v4, sel_propertyInfo_, info);
  if (result == 8)
  {
    return (result & 0xFFFFFF00) + 1;
  }

  return result;
}

+ (id)uniqueSubclassClassNameForClassName:(id)name
{
  nameCopy = name;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromClass(self);
  v8 = objc_msgSend_stringWithFormat_(v5, v7, @"%@:%@", v6, nameCopy);

  if (NSClassFromString(v8))
  {
    v9 = 0;
    do
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = NSStringFromClass(self);
      v13 = objc_msgSend_stringWithFormat_(v10, v12, @"%@:%@:%u", v11, nameCopy, v9);

      v9 = (v9 + 1);
      v8 = v13;
    }

    while (NSClassFromString(v13));
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

+ (Class)tocClass
{
  v2 = NSStringFromClass(self);
  v4 = objc_msgSend_componentsSeparatedByString_(v2, v3, @":");
  v6 = objc_msgSend_objectAtIndex_(v4, v5, 1);
  v7 = NSClassFromString(v6);

  return v7;
}

+ (Class)genericTableClassForTOCTableEntry:(id)entry
{
  v30[2] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v8 = objc_msgSend_propertyData(entryCopy, v6, v7);
  v11 = objc_msgSend_dbVersion(entryCopy, v9, v10);
  v29[0] = @"dbVersion";
  v29[1] = @"propertyData";
  v30[0] = v11;
  v30[1] = v8;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v30, v29, 2);
  v17 = objc_msgSend_objectForKey_(0, v14, v13);
  if (!v17)
  {
    v18 = objc_msgSend_creatingClass(entryCopy, v15, v16);
    v20 = objc_msgSend_uniqueSubclassClassNameForClassName_(self, v19, v18);

    v23 = objc_msgSend_unsignedIntegerValue(v11, v21, v22);
    v17 = objc_msgSend_tableClassWithName_properties_version_entryClass_(self, v24, v20, v8, v23, 0);
    objc_msgSend_setObject_forKey_(0, v25, v17, v13);
  }

  objc_sync_exit(v5);
  v26 = v17;

  v27 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)genericTableForTOCEntry:(id)entry
{
  entryCopy = entry;
  v6 = objc_alloc(objc_msgSend_genericTableClassForTOCTableEntry_(self, v5, entryCopy));
  v8 = objc_msgSend_initWithTOCEntry_(v6, v7, entryCopy);

  return v8;
}

- (CKSQLiteGenericTable)initWithTOCEntry:(id)entry
{
  entryCopy = entry;
  v8 = objc_msgSend_logicalTableName(entryCopy, v6, v7);
  v11.receiver = self;
  v11.super_class = CKSQLiteGenericTable;
  v9 = [(CKSQLiteTable *)&v11 initWithLogicalTableName:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_tocEntry, entry);
  }

  return v9;
}

+ (id)objectClassesForProperty:(id)property
{
  propertyCopy = property;
  v7 = objc_msgSend_tocClass(self, v5, v6);
  v9 = objc_msgSend_objectClassesForProperty_(v7, v8, propertyCopy);

  return v9;
}

@end
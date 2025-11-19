@interface CKQuery
+ (id)copySortDescriptor:(id)a3;
+ (void)initialize;
- (CKQuery)init;
- (CKQuery)initWithCoder:(NSCoder *)aDecoder;
- (CKQuery)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (NSArray)sortDescriptors;
- (id)CKPropertiesDescription;
- (id)_sortDescriptorsWithoutCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)_setPredicate:(id)a3;
- (void)_setRecordType:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSortDescriptors:(NSArray *)sortDescriptors;
@end

@implementation CKQuery

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (id)_sortDescriptorsWithoutCopy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sortDescriptors;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)sortDescriptors
{
  v2 = self;
  objc_sync_enter(v2);
  sortDescriptors = v2->_sortDescriptors;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18857D640;
  v7[3] = &unk_1E70BDE38;
  v7[4] = v2;
  v5 = objc_msgSend_CKDeepCopyWithLeafNodeCopyBlock_(sortDescriptors, v4, v7);
  objc_sync_exit(v2);

  return v5;
}

- (CKQuery)init
{
  v2 = [CKException alloc];
  v3 = *MEMORY[0x1E695D940];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_initWithName_format_(v2, v6, v3, @"You must call [%@ initWithRecordType:predicate:sortDescriptors:]", v5);
  v8 = v7;

  objc_exception_throw(v7);
}

- (CKQuery)initWithRecordType:(CKRecordType)recordType predicate:(NSPredicate *)predicate
{
  v6 = recordType;
  v7 = predicate;
  v30 = 0;
  v8 = _CKCheckArgument("recordType", v6, 1, 1, 0, &v30);
  v9 = v30;
  if ((v8 & 1) == 0)
  {
    v15 = v9;
    v16 = [CKException alloc];
    v19 = objc_msgSend_code(v15, v17, v18);
    v22 = objc_msgSend_localizedDescription(v15, v20, v21);
    v24 = objc_msgSend_initWithCode_format_(v16, v23, v19, @"%@", v22);
    v25 = v24;

    objc_exception_throw(v24);
  }

  if (!v7)
  {
    v26 = [CKException alloc];
    v28 = objc_msgSend_initWithCode_format_(v26, v27, 12, @"predicate can not be nil. Use [NSPredicate predicateWithFormat:@TRUEPREDICATE] to query for all records of a given type");
    objc_exception_throw(v28);
  }

  v29.receiver = self;
  v29.super_class = CKQuery;
  v10 = [(CKQuery *)&v29 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend__setRecordType_(v10, v11, v6);
    objc_msgSend__setPredicate_(v12, v13, v7);
  }

  return v12;
}

+ (id)copySortDescriptor:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_copy(v3, v4, v5);
  if (v6 == v3)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEB0]);
    v10 = objc_msgSend_key(v3, v8, v9);
    v13 = objc_msgSend_ascending(v3, v11, v12);
    v15 = objc_msgSend_initWithKey_ascending_(v7, v14, v10, v13);

    v6 = v15;
  }

  return v6;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_recordType(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"recordType");

  v10 = objc_msgSend_predicate(self, v8, v9);
  v13 = objc_msgSend_predicateFormat(v10, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, @"predicate");

  v17 = objc_msgSend_properties(v3, v15, v16);

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKQuery alloc];
  v7 = objc_msgSend_recordType(self, v5, v6);
  v10 = objc_msgSend__predicateWithoutCopy(self, v8, v9);
  v12 = objc_msgSend_initWithRecordType_predicate_(v4, v11, v7, v10);

  v15 = objc_msgSend__sortDescriptorsWithoutCopy(self, v13, v14);
  v16 = v12[2];
  v12[2] = v15;

  return v12;
}

- (void)_setRecordType:(id)a3
{
  v13 = a3;
  if (!objc_msgSend_length(v13, v4, v5))
  {
    v10 = [CKException alloc];
    v12 = objc_msgSend_initWithName_format_(v10, v11, *MEMORY[0x1E695D940], @"Query must have a valid recordType");
    objc_exception_throw(v12);
  }

  v8 = objc_msgSend_copy(v13, v6, v7);
  recordType = self->_recordType;
  self->_recordType = v8;
}

- (void)setSortDescriptors:(NSArray *)sortDescriptors
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = sortDescriptors;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [CKException alloc];
      v29 = objc_msgSend_initWithCode_format_(v27, v28, 12, @"sortDescriptors must be an array");
      objc_exception_throw(v29);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v31, v35, 16);
  if (v7)
  {
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [CKException alloc];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v25 = objc_msgSend_initWithCode_format_(v17, v24, 12, @"sortDescriptor items must be of class %@ or %@, not %@", v19, v21, v23);
            v26 = v25;

            objc_exception_throw(v25);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v31, v35, 16);
    }

    while (v7);
  }

  v12 = self;
  objc_sync_enter(v12);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_18857D5EC;
  v30[3] = &unk_1E70BDE38;
  v30[4] = v12;
  v14 = objc_msgSend_CKDeepCopyWithLeafNodeCopyBlock_(v5, v13, v30);
  v15 = v12->_sortDescriptors;
  v12->_sortDescriptors = v14;

  objc_sync_exit(v12);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
  {
    goto LABEL_4;
  }

  predicate = objc_msgSend_sharedValidator(CKPredicateValidator, v6, v7);
  v17 = 0;
  v10 = objc_msgSend_validate_error_(predicate, v9, v4, &v17);
  v11 = v17;
  v12 = v11;
  if (v10)
  {

LABEL_4:
    v13 = objc_msgSend_CKDeepCopy(v4, v6, v7);
    predicate = self->_predicate;
    self->_predicate = v13;
    goto LABEL_7;
  }

  if (CKShouldUseNewPredicateValidation())
  {
    v14 = [CKException alloc];
    v16 = objc_msgSend_initWithCode_format_(v14, v15, 12, @"Invalid predicate: %@ (%@)", v4, v12);
    objc_exception_throw(v16);
  }

LABEL_7:
  objc_autoreleasePoolPop(v5);
}

- (CKQuery)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v25.receiver = self;
  v25.super_class = CKQuery;
  v5 = [(CKQuery *)&v25 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = CKAcceptablePredicateValueClasses();
    v9 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v8, v7, @"predicateData");
    objc_msgSend__setPredicate_(v5, v10, v9);

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v16 = objc_msgSend_setWithObjects_(v11, v15, v12, v13, v14, 0);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v17, v16, @"sortDescriptorsData");
    objc_msgSend_setSortDescriptors_(v5, v19, v18);

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v21, v20, @"recordType");
    objc_msgSend__setRecordType_(v5, v23, v22);

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend__sortDescriptorsWithoutCopy(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"sortDescriptorsData");

  v11 = objc_msgSend__predicateWithoutCopy(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v17, v12, v11, @"predicateData");

  v15 = objc_msgSend_recordType(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v17, v16, v15, @"recordType");

  objc_autoreleasePoolPop(v4);
}

- (id)debugDescription
{
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_msgSend_description(self, a2, v2);
  v7 = objc_msgSend_stringWithString_(v4, v6, v5);

  v10 = objc_msgSend__sortDescriptorsWithoutCopy(self, v8, v9);
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_description(v10, v11, v12);
    v16 = objc_msgSend_stringByAppendingString_(v7, v15, v14);
  }

  return v7;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_recordType(self, a2, v2);
  v8 = objc_msgSend__predicateWithoutCopy(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"recordType=%@, predicate=%@", v5, v8);

  return v10;
}

@end
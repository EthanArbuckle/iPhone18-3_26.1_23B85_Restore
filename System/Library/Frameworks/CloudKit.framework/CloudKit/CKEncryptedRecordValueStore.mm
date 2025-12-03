@interface CKEncryptedRecordValueStore
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_setObject:(id)object forKey:(id)key;
- (void)setCompatibilityModeObjectNoValidate:(id)validate forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation CKEncryptedRecordValueStore

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [CKException alloc];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v14 = objc_msgSend_initWithName_format_(v9, v13, v10, @"Illegal value of type %@ for the encrypted store", v12);
    v15 = v14;

    objc_exception_throw(v14);
  }

  if (objectCopy)
  {
    objc_msgSend_setCompatibilityModeObjectNoValidate_forKey_(self, v8, objectCopy, keyCopy);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CKEncryptedRecordValueStore;
    [(CKRecordValueStore *)&v16 setObjectNoValidate:0 forKey:keyCopy];
  }
}

- (void)setCompatibilityModeObjectNoValidate:(id)validate forKey:(id)key
{
  validateCopy = validate;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_firstObject(validateCopy, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_18858078C;
    v21[3] = &unk_1E70BDF38;
    v21[4] = self;
    v12 = keyCopy;
    v22 = v12;
    v14 = objc_msgSend_CKMap_(validateCopy, v13, v21);
    objc_msgSend_setObjectNoValidate_forKey_(self, v15, v14, v12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20.receiver = self;
      v20.super_class = CKEncryptedRecordValueStore;
      [(CKRecordValueStore *)&v20 setObjectNoValidate:validateCopy forKey:keyCopy];
    }

    else
    {
      v16 = [CKEncryptedData alloc];
      v18 = objc_msgSend_initWithValue_(v16, v17, validateCopy);
      sub_1885807FC(self, v18, keyCopy);
      objc_msgSend_setObjectNoValidate_forKey_(self, v19, v18, keyCopy);
    }
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v10.receiver = self;
  v10.super_class = CKEncryptedRecordValueStore;
  v3 = [(CKRecordValueStore *)&v10 objectForKeyedSubscript:subscript];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_valueForKeyPath_(v3, v4, @"value");
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_msgSend_value(v3, v6, v7);
    }
  }

  v8 = v5;

  return v8;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (subscript)
  {
    objc_msgSend_setObject_forKey_(self, a2, object);
  }
}

@end
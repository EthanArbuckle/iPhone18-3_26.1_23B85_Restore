@interface CKObject
- (BOOL)isEqual:(id)a3;
- (CKObjCClass)objcClass;
- (CKObject)initWithPropertyDictionary:(id)a3;
- (NSString)description;
- (id)dictionaryPropertyEncoding;
- (unint64_t)hash;
@end

@implementation CKObject

- (CKObject)initWithPropertyDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_objcClass(self, v5, v6);
  v27.receiver = self;
  v27.super_class = CKObject;
  v8 = [(CKObject *)&v27 init];
  if (v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v28, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = objc_msgSend_objectForKeyedSubscript_(v9, v12, v16, v23);
          v19 = objc_msgSend_propertyForName_(v7, v18, v16);
          v20 = v19;
          if (v19)
          {
            sub_1885B0B70(v19, v17, v8);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v23, v28, 16);
      }

      while (v13);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_objcClass(self, a2, v2);
  v6 = objc_msgSend_properties(v3, v4, v5);
  v9 = objc_msgSend_hash(v6, v7, v8);

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = objc_msgSend_objcClass(self, v5, v6, 0);
    v10 = objc_msgSend_properties(v7, v8, v9);

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v29, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = sub_1885B0A48(v16, v4);
          v18 = sub_1885B0A48(v16, self);
          isEqual = objc_msgSend_isEqual_(v17, v19, v18);

          if (!isEqual)
          {
            v22 = 0;
            goto LABEL_13;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v21, &v25, v29, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = 1;
LABEL_13:
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (CKObjCClass)objcClass
{
  v3 = objc_opt_class();

  return objc_msgSend_classForHandle_(CKObjCClass, v2, v3);
}

- (id)dictionaryPropertyEncoding
{
  v4 = objc_msgSend_objcClass(self, a2, v2);
  v7 = objc_msgSend_properties(v4, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1885B1B90;
  v11[3] = &unk_1E70BEB60;
  v11[4] = self;
  v9 = objc_msgSend_CKCompactMapToDictionary_(v7, v8, v11);

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_msgSend_initWithString_(v3, v4, @"<");
  ClassName = object_getClassName(self);
  objc_msgSend_appendFormat_(v5, v7, @"%s: ", ClassName);
  v10 = objc_msgSend_objcClass(self, v8, v9);
  v13 = objc_msgSend_properties(v10, v11, v12);

  if (objc_msgSend_count(v13, v14, v15))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v13, v16, v17);
      v21 = objc_msgSend_name(v18, v19, v20);
      v22 = sub_1885B0A48(v18, self);
      objc_msgSend_appendFormat_(v5, v23, @"%@=%@", v21, v22);

      if (v17 != objc_msgSend_count(v13, v24, v25) - 1)
      {
        objc_msgSend_appendString_(v5, v26, @", ");
      }

      ++v17;
    }

    while (v17 < objc_msgSend_count(v13, v27, v28));
  }

  objc_msgSend_appendString_(v5, v16, @">");

  return v5;
}

@end
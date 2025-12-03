@interface CKRoughlyEquivalentPropertiesBuilder
- (CKRoughlyEquivalentProperties)properties;
- (CKRoughlyEquivalentPropertiesBuilder)init;
- (void)addComplexObject:(id)object forKey:(id)key;
- (void)addPlistObject:(id)object forKey:(id)key;
- (void)addPlistObjects:(id)objects;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation CKRoughlyEquivalentPropertiesBuilder

- (CKRoughlyEquivalentPropertiesBuilder)init
{
  v6.receiver = self;
  v6.super_class = CKRoughlyEquivalentPropertiesBuilder;
  v2 = [(CKRoughlyEquivalentPropertiesBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (CKRoughlyEquivalentProperties)properties
{
  v3 = [CKRoughlyEquivalentProperties alloc];
  v6 = objc_msgSend_dictionary(self, v4, v5);
  v8 = objc_msgSend_initWithDictionary_(v3, v7, v6);

  return v8;
}

- (void)addPlistObjects:(id)objects
{
  v20 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(objectsCopy, v5, &v15, v19, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_msgSend_objectForKeyedSubscript_(objectsCopy, v7, v11);
        objc_msgSend_addPlistObject_forKey_(self, v13, v12, v11);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(objectsCopy, v7, &v15, v19, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addPlistObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v11 = objc_msgSend_dictionary(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v10, objectCopy, keyCopy);
}

- (void)addComplexObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v16 = objc_msgSend_equivalencyProperties(object, v7, v8);
  v11 = objc_msgSend_dictionary(v16, v9, v10);
  v14 = objc_msgSend_dictionary(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v11, keyCopy);
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (objectCopy)
  {
    if (objc_msgSend_conformsToProtocol_(objectCopy, v7, &unk_1EFA96C30) & 1) != 0 || (objc_opt_respondsToSelector())
    {
      objc_msgSend_addComplexObject_forKey_(self, v10, objectCopy, subscriptCopy);
    }

    else if (objc_msgSend_conformsToProtocol_(objectCopy, v10, &unk_1EFA869E8) && objc_msgSend_conformsToProtocol_(objectCopy, v13, &unk_1EFA879E8))
    {
      objc_msgSend_addPlistObject_forKey_(self, v13, objectCopy, subscriptCopy);
    }

    else
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKRoughlyEquivalent.m", 96, @"Invalid object type written to CKRoughlyEquivalentProperties: %@ %@", subscriptCopy, objectCopy);
    }
  }

  else
  {
    v11 = objc_msgSend_dictionary(self, v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v11, v12, 0, subscriptCopy);
  }
}

@end
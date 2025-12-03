@interface CKOrderedDictionary
+ (CKOrderedDictionary)orderedDictionaryWithCapacity:(unint64_t)capacity;
+ (id)orderedDictionary;
- (CKOrderedDictionary)init;
- (CKOrderedDictionary)initWithCapacity:(unint64_t)capacity;
- (id)description;
- (void)addObject:(id)object forKey:(id)key;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation CKOrderedDictionary

+ (id)orderedDictionary
{
  v2 = objc_alloc_init(CKOrderedDictionary);

  return v2;
}

- (CKOrderedDictionary)init
{
  v8.receiver = self;
  v8.super_class = CKOrderedDictionary;
  v4 = [(CKOrderedDictionary *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3);
    tuples = v4->tuples;
    v4->tuples = v5;
  }

  return v4;
}

+ (CKOrderedDictionary)orderedDictionaryWithCapacity:(unint64_t)capacity
{
  v4 = [CKOrderedDictionary alloc];
  v6 = objc_msgSend_initWithCapacity_(v4, v5, capacity);

  return v6;
}

- (CKOrderedDictionary)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = CKOrderedDictionary;
  v5 = [(CKOrderedDictionary *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v4, capacity);
    tuples = v5->tuples;
    v5->tuples = v6;
  }

  return v5;
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"(\n");
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->tuples;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v25, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_v1(v12, v7, v8);
        v16 = objc_msgSend_v2(v12, v14, v15);
        objc_msgSend_appendFormat_(v3, v17, @"%@=%@;\n", v13, v16, v21);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v21, v25, 16);
    }

    while (v9);
  }

  objc_msgSend_appendString_(v3, v18, @""));
  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)addObject:(id)object forKey:(id)key
{
  tuples = self->tuples;
  keyCopy = key;
  objectCopy = object;
  v8 = [CKTuple2 alloc];
  v11 = objc_msgSend_initWithObject1_object2_(v8, v9, keyCopy, objectCopy);

  objc_msgSend_addObject_(tuples, v10, v11);
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->tuples;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v20, v24, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v21;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      v19 = 0;
      v14 = objc_msgSend_v1(v13, v8, v9);
      v17 = objc_msgSend_v2(v13, v15, v16);
      blockCopy[2](blockCopy, v14, v17, &v19);

      if (v19)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v20, v24, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end
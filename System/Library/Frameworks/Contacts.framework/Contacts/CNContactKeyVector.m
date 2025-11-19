@interface CNContactKeyVector
+ (CNContactKeyVector)keyVectorWithAllKeys;
+ (CNContactKeyVector)keyVectorWithKey:(id)a3;
+ (CNContactKeyVector)keyVectorWithKeys:(id)a3;
+ (id)keyVector;
- (BOOL)containsAllKeys;
- (BOOL)containsKey:(id)a3;
- (BOOL)intersectsKeyVector:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKeyVector:(id)a3;
- (BOOL)isSubsetOfKeyVector:(id)a3;
- (CNContactKeyVector)initWithAllKeys;
- (CNContactKeyVector)initWithCoder:(id)a3;
- (CNContactKeyVector)initWithKeys:(id)a3;
- (NSString)description;
- (id)keyVectorByAddingKey:(id)a3;
- (id)keyVectorByAddingKeys:(id)a3;
- (id)keyVectorByAddingKeysFromKeyVector:(id)a3;
- (id)keyVectorByRemovingKeys:(id)a3;
- (id)keyVectorByRemovingKeysFromKeyVector:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_cn_executeGetterForRepresentedKeys:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumeratePropertiesUsingBlock:(id)a3;
@end

@implementation CNContactKeyVector

- (BOOL)containsAllKeys
{
  if (CNContactKeyVectorBitBucketsForAllProperties_onceToken != -1)
  {
    [CNContactKeyVector initWithAllKeys];
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = self->_bitBuckets[v3];
    v6 = *(&CNContactKeyVectorBitBucketsForAllProperties_referenceBuckets + v3);
    if (v5 != v6)
    {
      break;
    }

    v7 = v4;
    v4 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
  return v5 == v6;
}

+ (id)keyVector
{
  if (objc_opt_class() == a1)
  {
    if (keyVector_cn_once_token_0 != -1)
    {
      +[CNContactKeyVector keyVector];
    }

    v4 = keyVector_cn_once_object_0;
  }

  else
  {
    v3 = [a1 alloc];
    v4 = [v3 initWithKeys:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

+ (CNContactKeyVector)keyVectorWithAllKeys
{
  if (objc_opt_class() == a1)
  {
    if (keyVectorWithAllKeys_cn_once_token_1 != -1)
    {
      +[CNContactKeyVector keyVectorWithAllKeys];
    }

    v3 = keyVectorWithAllKeys_cn_once_object_1;
  }

  else
  {
    v3 = [[a1 alloc] initWithAllKeys];
  }

  return v3;
}

uint64_t __42__CNContactKeyVector_keyVectorWithAllKeys__block_invoke()
{
  v0 = [[CNContactKeyVector alloc] initWithAllKeys];
  v1 = keyVectorWithAllKeys_cn_once_object_1;
  keyVectorWithAllKeys_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactKeyVector)initWithAllKeys
{
  v2 = [(CNContactKeyVector *)self initWithKeys:MEMORY[0x1E695E0F0]];
  if (v2)
  {
    if (CNContactKeyVectorBitBucketsForAllProperties_onceToken != -1)
    {
      [CNContactKeyVector initWithAllKeys];
    }

    *v2->_bitBuckets = CNContactKeyVectorBitBucketsForAllProperties_referenceBuckets;
    v3 = v2;
  }

  return v2;
}

uint64_t __31__CNContactKeyVector_keyVector__block_invoke()
{
  v0 = [CNContactKeyVector alloc];
  v1 = [(CNContactKeyVector *)v0 initWithKeys:MEMORY[0x1E695E0F0]];
  v2 = keyVector_cn_once_object_0;
  keyVector_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (CNContactKeyVector)keyVectorWithKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNMutableContactKeyVector);
  [(CNMutableContactKeyVector *)v5 addKey:v4];

  v6 = [a1 freezeIfClassIsImmutable:v5];

  return v6;
}

+ (CNContactKeyVector)keyVectorWithKeys:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count] && objc_opt_class() == a1)
  {
    v11 = [a1 keyVector];
  }

  else
  {
    v5 = objc_alloc_init(CNMutableContactKeyVector);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(CNMutableContactKeyVector *)v5 addKey:*(*(&v13 + 1) + 8 * i), v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = [a1 freezeIfClassIsImmutable:v5];
  }

  return v11;
}

- (id)keyVectorByAddingKey:(id)a3
{
  v4 = a3;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 addKey:v4];

  v6 = [(CNMutableContactKeyVector *)v5 freeze];

  return v6;
}

- (id)keyVectorByAddingKeys:(id)a3
{
  v4 = a3;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 addKeys:v4];

  v6 = [(CNMutableContactKeyVector *)v5 freeze];

  return v6;
}

- (id)keyVectorByAddingKeysFromKeyVector:(id)a3
{
  v4 = a3;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 unionKeyVector:v4];

  v6 = [(CNMutableContactKeyVector *)v5 freeze];

  return v6;
}

- (id)keyVectorByRemovingKeys:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v5 = self;
  }

  else
  {
    v6 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
    [(CNMutableContactKeyVector *)v6 subtractKeys:v4];
    v5 = [(CNMutableContactKeyVector *)v6 freeze];
  }

  return v5;
}

- (id)keyVectorByRemovingKeysFromKeyVector:(id)a3
{
  v4 = a3;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 minusKeyVector:v4];

  v6 = [(CNMutableContactKeyVector *)v5 freeze];

  return v6;
}

- (CNContactKeyVector)initWithKeys:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CNContactKeyVector;
  v5 = [(CNContactKeyVector *)&v24 init];
  v6 = v5;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__CNContactKeyVector_initWithKeys___block_invoke;
    block[3] = &unk_1E7412A88;
    v17 = v5;
    v23 = v17;
    if (initWithKeys__onceToken != -1)
    {
      dispatch_once(&initWithKeys__onceToken, block);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (v12)
          {
            if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
            {
              [CNContactKeyVector initWithKeys:];
            }

            Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v12);
            if (Value)
            {
              goto LABEL_16;
            }

            if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
            {
              [CNContactKeyVector initWithKeys:];
            }

            Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, v12);
            if (Value)
            {
LABEL_16:
              *(v17->_bitBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << ~(Value - 1);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v9);
    }

    v14 = v17;
    v4 = v16;
  }

  return v6;
}

- (CNContactKeyVector)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNContactKeyVector *)self initWithKeys:MEMORY[0x1E695E0F0]];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bitBuckets_buffer"];
    if ([v6 length] == 16)
    {
      *v5->_bitBuckets = *[v6 bytes];
    }

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [v4 dataWithBytes:self->_bitBuckets length:16];
  [v5 encodeObject:v6 forKey:@"bitBuckets_buffer"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNMutableContactKeyVector alloc];

  return [(CNMutableContactKeyVector *)v4 initWithKeyVector:self];
}

- (BOOL)containsKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
  {
    [CNContactKeyVector containsKey:];
  }

  Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v4);
  if (Value)
  {
    goto LABEL_8;
  }

  if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
  {
    [CNContactKeyVector containsKey:];
  }

  Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, v4);
  if (Value)
  {
LABEL_8:
    v6 = (self->_bitBuckets[(Value - 1) >> 6] >> ~(Value - 1)) & 1;
  }

  else
  {
LABEL_9:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = +[CN allContactProperties];
  v12 = 0;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    bitBuckets = self->_bitBuckets;
    do
    {
      if ((*(bitBuckets + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ~v9))
      {
        v11 = [v5 objectAtIndexedSubscript:v9];
        v4[2](v4, v11, &v12);

        v8 = v12;
      }

      if (v8)
      {
        break;
      }

      ++v9;
    }

    while (v9 < v7);
  }
}

- (BOOL)isEqualToKeyVector:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4)
  {
    v6 = [(CNContactKeyVector *)v4 _bitBuckets];
    v8 = self->_bitBuckets[0] == *v6 && self->_bitBuckets[1] == v6[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CNContactKeyVector *)self isEqualToKeyVector:v5];
  }

  return v6;
}

- (BOOL)isSubsetOfKeyVector:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 _bitBuckets];
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = self->_bitBuckets[v5] & ~*(v4 + 8 * v5);
    v8 = v7 == 0;
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
  }

  while (!v7);
  return v8;
}

- (BOOL)intersectsKeyVector:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 _bitBuckets];
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v5;
    v8 = *(v4 + 8 * v6) & self->_bitBuckets[v6];
    v9 = v8 != 0;
    if (v8)
    {
      break;
    }

    v5 = 1;
    v6 = 1;
  }

  while ((v7 & 1) == 0);
  return v9;
}

- (void)_cn_executeGetterForRepresentedKeys:(id)a3
{
  v12 = a3;
  v4 = +[CN allContactProperties];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    bitBuckets = self->_bitBuckets;
    do
    {
      if ((*(bitBuckets + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ~v7))
      {
        v9 = [v4 objectAtIndexedSubscript:v7];
        v10 = [v9 key];
        v11 = v12[2](v12, v10);
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CNContactKeyVector_description__block_invoke;
  v10[3] = &unk_1E7413F98;
  v11 = v4;
  v5 = v4;
  [(CNContactKeyVector *)self enumeratePropertiesUsingBlock:v10];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 appendName:@"keys" object:v6];
  v8 = [v3 build];

  return v8;
}

void __33__CNContactKeyVector_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

@end
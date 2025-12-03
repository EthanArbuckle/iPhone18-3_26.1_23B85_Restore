@interface CNContactKeyVector
+ (CNContactKeyVector)keyVectorWithAllKeys;
+ (CNContactKeyVector)keyVectorWithKey:(id)key;
+ (CNContactKeyVector)keyVectorWithKeys:(id)keys;
+ (id)keyVector;
- (BOOL)containsAllKeys;
- (BOOL)containsKey:(id)key;
- (BOOL)intersectsKeyVector:(id)vector;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKeyVector:(id)vector;
- (BOOL)isSubsetOfKeyVector:(id)vector;
- (CNContactKeyVector)initWithAllKeys;
- (CNContactKeyVector)initWithCoder:(id)coder;
- (CNContactKeyVector)initWithKeys:(id)keys;
- (NSString)description;
- (id)keyVectorByAddingKey:(id)key;
- (id)keyVectorByAddingKeys:(id)keys;
- (id)keyVectorByAddingKeysFromKeyVector:(id)vector;
- (id)keyVectorByRemovingKeys:(id)keys;
- (id)keyVectorByRemovingKeysFromKeyVector:(id)vector;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_cn_executeGetterForRepresentedKeys:(id)keys;
- (void)encodeWithCoder:(id)coder;
- (void)enumeratePropertiesUsingBlock:(id)block;
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
  if (objc_opt_class() == self)
  {
    if (keyVector_cn_once_token_0 != -1)
    {
      +[CNContactKeyVector keyVector];
    }

    v4 = keyVector_cn_once_object_0;
  }

  else
  {
    v3 = [self alloc];
    v4 = [v3 initWithKeys:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

+ (CNContactKeyVector)keyVectorWithAllKeys
{
  if (objc_opt_class() == self)
  {
    if (keyVectorWithAllKeys_cn_once_token_1 != -1)
    {
      +[CNContactKeyVector keyVectorWithAllKeys];
    }

    initWithAllKeys = keyVectorWithAllKeys_cn_once_object_1;
  }

  else
  {
    initWithAllKeys = [[self alloc] initWithAllKeys];
  }

  return initWithAllKeys;
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

+ (CNContactKeyVector)keyVectorWithKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(CNMutableContactKeyVector);
  [(CNMutableContactKeyVector *)v5 addKey:keyCopy];

  v6 = [self freezeIfClassIsImmutable:v5];

  return v6;
}

+ (CNContactKeyVector)keyVectorWithKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (![keysCopy count] && objc_opt_class() == self)
  {
    keyVector = [self keyVector];
  }

  else
  {
    v5 = objc_alloc_init(CNMutableContactKeyVector);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = keysCopy;
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

    keyVector = [self freezeIfClassIsImmutable:v5];
  }

  return keyVector;
}

- (id)keyVectorByAddingKey:(id)key
{
  keyCopy = key;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 addKey:keyCopy];

  freeze = [(CNMutableContactKeyVector *)v5 freeze];

  return freeze;
}

- (id)keyVectorByAddingKeys:(id)keys
{
  keysCopy = keys;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 addKeys:keysCopy];

  freeze = [(CNMutableContactKeyVector *)v5 freeze];

  return freeze;
}

- (id)keyVectorByAddingKeysFromKeyVector:(id)vector
{
  vectorCopy = vector;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 unionKeyVector:vectorCopy];

  freeze = [(CNMutableContactKeyVector *)v5 freeze];

  return freeze;
}

- (id)keyVectorByRemovingKeys:(id)keys
{
  keysCopy = keys;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    selfCopy = self;
  }

  else
  {
    v6 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
    [(CNMutableContactKeyVector *)v6 subtractKeys:keysCopy];
    selfCopy = [(CNMutableContactKeyVector *)v6 freeze];
  }

  return selfCopy;
}

- (id)keyVectorByRemovingKeysFromKeyVector:(id)vector
{
  vectorCopy = vector;
  v5 = [[CNMutableContactKeyVector alloc] initWithKeyVector:self];
  [(CNMutableContactKeyVector *)v5 minusKeyVector:vectorCopy];

  freeze = [(CNMutableContactKeyVector *)v5 freeze];

  return freeze;
}

- (CNContactKeyVector)initWithKeys:(id)keys
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
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
    v16 = keysCopy;
    v7 = keysCopy;
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
    keysCopy = v16;
  }

  return v6;
}

- (CNContactKeyVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNContactKeyVector *)self initWithKeys:MEMORY[0x1E695E0F0]];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitBuckets_buffer"];
    if ([v6 length] == 16)
    {
      *v5->_bitBuckets = *[v6 bytes];
    }

    v7 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DEF0];
  coderCopy = coder;
  v6 = [v4 dataWithBytes:self->_bitBuckets length:16];
  [coderCopy encodeObject:v6 forKey:@"bitBuckets_buffer"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNMutableContactKeyVector alloc];

  return [(CNMutableContactKeyVector *)v4 initWithKeyVector:self];
}

- (BOOL)containsKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    goto LABEL_9;
  }

  if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
  {
    [CNContactKeyVector containsKey:];
  }

  Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, keyCopy);
  if (Value)
  {
    goto LABEL_8;
  }

  if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
  {
    [CNContactKeyVector containsKey:];
  }

  Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, keyCopy);
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

- (void)enumeratePropertiesUsingBlock:(id)block
{
  blockCopy = block;
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
        blockCopy[2](blockCopy, v11, &v12);

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

- (BOOL)isEqualToKeyVector:(id)vector
{
  vectorCopy = vector;
  v5 = vectorCopy;
  if (vectorCopy == self)
  {
    v8 = 1;
  }

  else if (vectorCopy)
  {
    _bitBuckets = [(CNContactKeyVector *)vectorCopy _bitBuckets];
    v8 = self->_bitBuckets[0] == *_bitBuckets && self->_bitBuckets[1] == _bitBuckets[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CNContactKeyVector *)self isEqualToKeyVector:v5];
  }

  return v6;
}

- (BOOL)isSubsetOfKeyVector:(id)vector
{
  if (!vector)
  {
    return 0;
  }

  _bitBuckets = [vector _bitBuckets];
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = self->_bitBuckets[v5] & ~*(_bitBuckets + 8 * v5);
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

- (BOOL)intersectsKeyVector:(id)vector
{
  if (!vector)
  {
    return 0;
  }

  _bitBuckets = [vector _bitBuckets];
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v5;
    v8 = *(_bitBuckets + 8 * v6) & self->_bitBuckets[v6];
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

- (void)_cn_executeGetterForRepresentedKeys:(id)keys
{
  keysCopy = keys;
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
        v11 = keysCopy[2](keysCopy, v10);
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__CNContactKeyVector_description__block_invoke;
  v10[3] = &unk_1E7413F98;
  v11 = array;
  v5 = array;
  [(CNContactKeyVector *)self enumeratePropertiesUsingBlock:v10];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 appendName:@"keys" object:v6];
  build = [v3 build];

  return build;
}

void __33__CNContactKeyVector_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

@end
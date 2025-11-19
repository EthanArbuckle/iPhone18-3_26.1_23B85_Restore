@interface CNMutableContactKeyVector
- (CNMutableContactKeyVector)initWithKeyVector:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)freeze;
- (void)addKey:(id)a3;
- (void)addKeys:(id)a3;
- (void)intersectKeyVector:(id)a3;
- (void)minusKeyVector:(id)a3;
- (void)subtractKey:(id)a3;
- (void)subtractKeys:(id)a3;
- (void)unionKeyVector:(id)a3;
@end

@implementation CNMutableContactKeyVector

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (CNMutableContactKeyVector)initWithKeyVector:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNMutableContactKeyVector;
  v5 = [(CNContactKeyVector *)&v8 initWithKeys:MEMORY[0x1E695E0F0]];
  if (v5)
  {
    if (v4)
    {
      *(v5 + 8) = *[v4 _bitBuckets];
    }

    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = +[CNContactKeyVector keyVector];
  if ([(CNContactKeyVector *)self isEqualToKeyVector:v4])
  {
    v5 = v4;
  }

  else
  {
    if (![(CNContactKeyVector *)self containsAllKeys])
    {
      v7 = [(CNMutableContactKeyVector *)self mutableCopy];
      v6 = [v7 freeze];

      goto LABEL_7;
    }

    v5 = +[CNContactKeyVector keyVectorWithAllKeys];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (void)unionKeyVector:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"key vector to union must be non-nil"];
    v4 = 0;
  }

  v5 = [v4 _bitBuckets];
  v6 = self->super._bitBuckets[1];
  self->super._bitBuckets[0] |= *v5;
  self->super._bitBuckets[1] = v6 | v5[1];
}

- (void)intersectKeyVector:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"key vector to intersect must be non-nil"];
    v4 = 0;
  }

  v5 = [v4 _bitBuckets];
  v6 = self->super._bitBuckets[1];
  self->super._bitBuckets[0] &= *v5;
  self->super._bitBuckets[1] = v6 & v5[1];
}

- (void)addKeys:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    bitBuckets = self->super._bitBuckets;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10)
        {
          if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v10);
          if (Value)
          {
            goto LABEL_13;
          }

          if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, v10);
          if (Value)
          {
LABEL_13:
            *(bitBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << ~(Value - 1);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addKey:(id)a3
{
  v4 = a3;
  key = v4;
  if (v4)
  {
    if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken == -1)
    {
      v5 = v4;
    }

    else
    {
      [CNContactKeyVector containsKey:];
      v5 = key;
    }

    Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v5);
    if (Value)
    {
      goto LABEL_8;
    }

    if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
    {
      [CNContactKeyVector containsKey:];
    }

    Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, key);
    if (Value)
    {
LABEL_8:
      *(self->super._bitBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << ~(Value - 1);
    }
  }
}

- (void)minusKeyVector:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"key vector to subtract must be non-nil"];
    v4 = 0;
  }

  v5 = [v4 _bitBuckets];
  v6 = self->super._bitBuckets[1];
  self->super._bitBuckets[0] &= ~*v5;
  self->super._bitBuckets[1] = v6 & ~v5[1];
}

- (void)subtractKey:(id)a3
{
  v4 = a3;
  key = v4;
  if (v4)
  {
    if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken == -1)
    {
      v5 = v4;
    }

    else
    {
      [CNContactKeyVector containsKey:];
      v5 = key;
    }

    Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v5);
    if (Value)
    {
      goto LABEL_8;
    }

    if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
    {
      [CNContactKeyVector containsKey:];
    }

    Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, key);
    if (Value)
    {
LABEL_8:
      *(self->super._bitBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << ~(Value - 1));
    }
  }
}

- (void)subtractKeys:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    bitBuckets = self->super._bitBuckets;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10)
        {
          if (CNContactKeyVectorPropertyKeysToIndicesByPointer_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByPointer_map, v10);
          if (Value)
          {
            goto LABEL_13;
          }

          if (CNContactKeyVectorPropertyKeysToIndicesByValue_onceToken != -1)
          {
            [CNContactKeyVector initWithKeys:];
          }

          Value = CFDictionaryGetValue(CNContactKeyVectorPropertyKeysToIndicesByValue_map, v10);
          if (Value)
          {
LABEL_13:
            *(bitBuckets + (((Value - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << ~(Value - 1));
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

@end
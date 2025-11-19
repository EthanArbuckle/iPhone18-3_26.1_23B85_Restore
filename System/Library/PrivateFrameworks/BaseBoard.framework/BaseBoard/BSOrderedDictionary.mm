@interface BSOrderedDictionary
- (BOOL)isEqual:(id)a3;
- (BSOrderedDictionary)init;
- (BSOrderedDictionary)initWithCoder:(id)a3;
- (BSOrderedDictionary)initWithDictionary:(id)a3 keyOrderingStrategy:(id)a4;
- (BSOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)_initTabulaRasa;
- (id)allKeys;
- (id)allValues;
- (id)filter:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sortedDictionaryUsingComparator:(id)a3;
- (id)subdictionaryWithRange:(_NSRange)a3;
- (id)unorderedDictionary;
- (uint64_t)_initWithCopyOfOrderedDictionary:(void *)a1;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)enumerateKeysAndObjectsWithIndexesUsingBlock:(id)a3;
@end

@implementation BSOrderedDictionary

- (id)_initTabulaRasa
{
  v25 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = BSOrderedDictionary;
  v3 = [(BSOrderedDictionary *)&v12 init];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class() && v4 != objc_opt_class() && v4 != objc_opt_class())
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subclassing not permitted"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v14 = v7;
      v15 = 2114;
      v10 = v9;
      v16 = v9;
      v17 = 2048;
      v18 = v3;
      v19 = 2114;
      v20 = @"BSOrderedDictionary.m";
      v21 = 1024;
      v22 = 124;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF18CB0);
  }

  return v3;
}

- (id)allValues
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_keys, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_keys;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSDictionary *)self->_values objectForKey:*(*(&v10 + 1) + 8 * i), v10];
        [v3 addObject:v8];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BSOrderedDictionary)init
{
  v3 = +[_BSEmptyOrderedDictionary emptyDictionary];

  return v3;
}

- (uint64_t)_initWithCopyOfOrderedDictionary:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 _initTabulaRasa];
  if (v3)
  {
    v4 = [a2[1] copy];
    v5 = *(v3 + 8);
    *(v3 + 8) = v4;

    v6 = [a2[2] copy];
    v7 = *(v3 + 16);
    *(v3 + 16) = v6;

    objc_storeStrong((v3 + 24), a2[3]);
  }

  return v3;
}

- (BSOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v6 = [[BSMutableOrderedDictionary alloc] initWithObjects:a3 forKeys:a4 count:a5];
  v7 = [(BSMutableOrderedDictionary *)v6 copy];

  return v7;
}

- (BSOrderedDictionary)initWithDictionary:(id)a3 keyOrderingStrategy:(id)a4
{
  v5 = [[BSMutableOrderedDictionary alloc] initWithDictionary:a3 keyOrderingStrategy:a4];
  v6 = [(BSMutableOrderedDictionary *)v5 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  if (([(NSArray *)self->_keys isEqual:v5[1]]& 1) != 0)
  {
    v6 = [(NSDictionary *)self->_values isEqual:v5[2]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__BSOrderedDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v3[3] = &unk_1E72CC5A0;
  v3[4] = a3;
  [(BSOrderedDictionary *)self enumerateKeysAndObjectsWithIndexesUsingBlock:v3];
}

- (void)enumerateKeysAndObjectsWithIndexesUsingBlock:(id)a3
{
  v5 = [(BSOrderedDictionary *)self count];
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_keys objectAtIndex:v7];
      v9 = [(NSDictionary *)self->_values objectForKey:v8];
      v12 = 0;
      (*(a3 + 2))(a3, v8, v9, v7, &v12);
      v10 = v12;

      if (v10)
      {
        break;
      }
    }

    while (v6 != v7++);
  }
}

- (id)filter:(id)a3
{
  v5 = [(BSOrderedDictionary *)self count];
  v6 = [[BSMutableOrderedDictionary alloc] initWithCapacity:v5 keyOrderingStrategy:self->_keyOrderingStrategy];
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [(NSArray *)self->_keys objectAtIndex:i];
      v9 = [(NSDictionary *)self->_values objectForKey:v8];
      if ((*(a3 + 2))(a3, v8, v9, i))
      {
        [(BSMutableOrderedDictionary *)v6 setObject:v8 forKey:v9];
      }
    }
  }

  return v6;
}

- (id)unorderedDictionary
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[BSOrderedDictionary count](self, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BSOrderedDictionary_unorderedDictionary__block_invoke;
  v7[3] = &unk_1E72CC5C8;
  v4 = v3;
  v8 = v4;
  [(BSOrderedDictionary *)self enumerateKeysAndObjectsWithIndexesUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)allKeys
{
  v2 = [(NSArray *)self->_keys copy];

  return v2;
}

- (id)sortedDictionaryUsingComparator:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(BSMutableOrderedDictionary);
  v6 = [(BSOrderedDictionary *)self allKeys];
  v7 = [v6 sortedArrayUsingComparator:a3];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(BSOrderedDictionary *)self objectForKey:v12, v16];
        [(BSMutableOrderedDictionary *)v5 setObject:v13 forKey:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [(BSMutableOrderedDictionary *)v5 copy];

  return v14;
}

- (id)subdictionaryWithRange:(_NSRange)a3
{
  if (a3.location == 0x7FFFFFFFFFFFFFFFLL || a3.length == 0)
  {
    v4 = +[_BSEmptyOrderedDictionary emptyDictionary];
  }

  else
  {
    length = a3.length;
    location = a3.location;
    v8 = objc_alloc_init(BSMutableOrderedDictionary);
    v9 = v8;
    if (location < location + length)
    {
      do
      {
        v10 = [(NSArray *)self->_keys objectAtIndex:location];
        v11 = [(NSDictionary *)self->_values objectForKey:v10];
        [(BSMutableOrderedDictionary *)v9 setObject:v10 forKey:v11];

        ++location;
        --length;
      }

      while (length);
    }

    v4 = [(BSMutableOrderedDictionary *)v9 copy];
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BSMutableOrderedDictionary alloc];

  return [(BSOrderedDictionary *)v4 _initWithCopyOfOrderedDictionary:?];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_keys forKey:@"k"];
  values = self->_values;

  [a3 encodeObject:values forKey:@"v"];
}

- (BSOrderedDictionary)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = BSOrderedDictionary;
  v4 = [(BSOrderedDictionary *)&v16 init];
  if (v4)
  {
    objc_opt_class();
    objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [a3 allowedClasses];
    v8 = [v7 mutableCopy];

    [v8 addObject:v5];
    v9 = [a3 allowedClasses];
    v10 = [v9 mutableCopy];

    [v10 addObject:v6];
    v11 = [a3 decodeObjectOfClasses:v8 forKey:@"k"];
    keys = v4->_keys;
    v4->_keys = v11;

    v13 = [a3 decodeObjectOfClasses:v10 forKey:@"v"];
    values = v4->_values;
    v4->_values = v13;
  }

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke;
  v3[3] = &unk_1E72CACC0;
  v3[4] = a3;
  v3[5] = self;
  [a3 appendProem:self block:v3];
}

void __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke_2;
  v8[3] = &unk_1E72CACC0;
  v8[4] = *(a1 + 40);
  v9 = v6;
  v7 = v6;
  [v7 appendBodySectionWithOpenDelimiter:@"{" closeDelimiter:@"}" block:v8];
}

void __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke_3;
  v2[3] = &unk_1E72CC5C8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsWithIndexesUsingBlock:v2];
}

void __52__BSOrderedDictionary_appendDescriptionToFormatter___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6 = [a2 description];
  v5 = [v4 appendObject:a3 withName:?];
}

@end
@interface NSSimpleAttributeDictionary
+ (id)emptyAttributeDictionary;
+ (id)newWithDictionary:(id)a3;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newWithKey:(id)a3 object:(id)a4;
- (id)objectForKey:(id)a3;
- (unint64_t)slotForKey:(id)a3;
- (void)dealloc;
@end

@implementation NSSimpleAttributeDictionary

+ (id)emptyAttributeDictionary
{
  if (qword_1ED43E788 != -1)
  {
    dispatch_once(&qword_1ED43E788, &__block_literal_global_1);
  }

  return _MergedGlobals_19;
}

_DWORD *__55__NSSimpleAttributeDictionary_emptyAttributeDictionary__block_invoke()
{
  v0 = objc_opt_self();
  result = NSAllocateObject(v0, 0, 0);
  _MergedGlobals_19 = result;
  result[2] = 0;
  return result;
}

+ (id)newWithDictionary:(id)a3
{
  v18 = a3;
  if (a3 && (objc_opt_self(), isKindOfClass = objc_opt_isKindOfClass(), a3 = v18, (isKindOfClass & 1) != 0))
  {

    return v18;
  }

  else
  {
    v6 = [a3 count];
    if (v6)
    {
      v7 = v6;
      v8 = [v18 keyEnumerator];
      v9 = objc_opt_self();
      v10 = NSAllocateObject(v9, 24 * v7 - 24, 0);
      v10[2] = v7;
      v11 = [v8 nextObject];
      if (v11)
      {
        v12 = v11;
        do
        {
          v13 = [v12 hash];
          v14 = v13 % v7;
          v15 = [v18 objectForKey:v12];
          while (1)
          {
            v16 = &v10[6 * v14 + 4];
            if (!v16[1])
            {
              break;
            }

            if (v14 + 1 == v7)
            {
              v14 = 0;
            }

            else
            {
              ++v14;
            }
          }

          *v16 = v13;
          *&v10[6 * v14 + 6] = [v12 copyWithZone:0];
          *&v10[6 * v14 + 8] = v15;
          v12 = [v8 nextObject];
        }

        while (v12);
      }

      return v10;
    }

    else
    {
      v17 = [a1 emptyAttributeDictionary];

      return v17;
    }
  }
}

- (id)newWithKey:(id)a3 object:(id)a4
{
  v6 = [(NSSimpleAttributeDictionary *)self slotForKey:?];
  v7 = self;
  v8 = v6;
  numElements = self->numElements;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = numElements + 1;
  }

  else
  {
    v10 = numElements;
  }

  if (v6 != 0x7FFFFFFFFFFFFFFFLL && ((v11 = self->elements[v6].var0, v11 == a4) || (v12 = [v11 isEqual:a4], v7 = self, v12)))
  {

    return v7;
  }

  else
  {
    v14 = objc_opt_self();
    v15 = NSAllocateObject(v14, 24 * v10 - 24, 0);
    v15[2] = v10;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          if (i == self->numElements)
          {
            hash = [a3 hash];
            key = a3;
            var0 = a4;
          }

          else
          {
            v20 = &self->elements[i];
            key = v20->key;
            var0 = v20->var0;
            hash = v20->hash;
          }

          v21 = hash % v10;
          while (1)
          {
            v22 = &v15[6 * v21 + 4];
            if (!v22[1])
            {
              break;
            }

            if (v21 + 1 == v10)
            {
              v21 = 0;
            }

            else
            {
              ++v21;
            }
          }

          *v22 = hash;
          v22[1] = [key copyWithZone:0];
          v22[2] = var0;
        }
      }
    }

    else
    {
      v29 = a4;
      v23 = self->numElements;
      if (v23)
      {
        v24 = 0;
        v25 = v15;
        v26 = self;
        do
        {
          if (v8 != v24)
          {
            v27 = v26->elements[0].key;
            v25[2] = v26->elements[0].hash;
            v25[3] = [(value *)v27 copyWithZone:0, v29];
            v25[4] = v26->elements[0].var0;
            v23 = self->numElements;
          }

          ++v24;
          v26 = (v26 + 24);
          v25 += 3;
        }

        while (v24 < v23);
      }

      v28 = &v15[6 * v8 + 4];
      *v28 = [a3 hash];
      v28[1] = [a3 copyWithZone:0];
      v28[2] = v30;
    }

    return v15;
  }
}

- (unint64_t)slotForKey:(id)a3
{
  numElements = self->numElements;
  if (!numElements)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  elements = self->elements;
  for (i = &self->elements[0].key; *i != a3; i += 3)
  {
    if (numElements == ++v6)
    {
      v9 = [a3 hash];
      v10 = self->numElements;
      v11 = v9 % v10;
      v6 = v9 % v10;
      do
      {
        v12 = &elements[v6];
        if (v12->hash == v9)
        {
          if (([(value *)v12->key isEqual:a3]& 1) != 0)
          {
            return v6;
          }

          v10 = self->numElements;
        }

        if (v6 + 1 == v10)
        {
          v6 = 0;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 != v11);
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (id)objectForKey:(id)a3
{
  v4 = [(NSSimpleAttributeDictionary *)self slotForKey:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return self->elements[v4].var0;
  }
}

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(NSSimpleAttributeDictionaryEnumerator) initWithAttributeDictionary:self];

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->numElements)
  {
    v3 = 0;
    p_var0 = &self->elements[0].var0;
    do
    {

      v5 = *p_var0;
      p_var0 += 3;

      ++v3;
    }

    while (v3 < self->numElements);
  }

  v6.receiver = self;
  v6.super_class = NSSimpleAttributeDictionary;
  [(NSSimpleAttributeDictionary *)&v6 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  numElements = self->numElements;
  if (numElements < 0x29)
  {
    if (numElements)
    {
      p_var0 = &self->elements[0].var0;
      v6 = v10;
      v7 = v11;
      do
      {
        v8 = *p_var0;
        *v7++ = *(p_var0 - 1);
        *v6++ = v8;
        p_var0 += 3;
        --numElements;
      }

      while (numElements);
    }

    return [objc_msgSend(MEMORY[0x1E695DF90] allocWithZone:{a3), "initWithObjects:forKeys:count:", v10, v11, self->numElements}];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NSSimpleAttributeDictionary;
    return [(NSSimpleAttributeDictionary *)&v9 mutableCopyWithZone:a3];
  }
}

@end
@interface _LSPlistHint
- (id)cachedValueForKey:(uint64_t)a1;
- (id)completeDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (uint64_t)setCachedValue:(uint64_t)a3 forKey:;
- (void)initWithKeys:(char)a3 compacted:;
- (void)setCompleteDictionary:(uint64_t)a1;
@end

@implementation _LSPlistHint

- (id)completeDictionary
{
  if (a1)
  {
    if (*(a1 + 24) != 1)
    {
      return OUTLINED_FUNCTION_0_16();
    }

    a1 = *(a1 + 2);
  }

  return a1;
}

- (void)initWithKeys:(char)a3 compacted:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = _LSPlistHint;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  if (v5)
  {
    v6 = [a2 copy];
    v7 = v5[1];
    v5[1] = v6;

    v8 = v5[2];
    v5[2] = 0;

    *(v5 + 24) = 0;
    *(v5 + 25) = a3;
  }

  return v5;
}

- (void)setCompleteDictionary:(uint64_t)a1
{
  if (a1 && a2 && (*(a1 + 24) & 1) == 0)
  {
    v3 = [a2 copy];
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;

    *(a1 + 24) = 1;
  }
}

- (uint64_t)setCachedValue:(uint64_t)a3 forKey:
{
  if (result)
  {
    if (a3)
    {
      v4 = result;
      if ((*(result + 24) & 1) == 0)
      {
        v6 = *(result + 16);
        if (!v6)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v8 = *(v4 + 16);
          *(v4 + 16) = v7;

          v6 = *(v4 + 16);
        }

        return [v6 setObject:a2 forKeyedSubscript:a3];
      }
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSSet *)self->_keys copy];
    v6 = v4[1];
    v4[1] = v5;

    cachedValues = self->_cachedValues;
    if (self->_cachedValuesAreComplete)
    {
      v8 = [(NSDictionary *)cachedValues copy];
    }

    else
    {
      v8 = [(NSDictionary *)cachedValues mutableCopy];
    }

    v9 = v4[2];
    v4[2] = v8;

    *(v4 + 24) = self->_cachedValuesAreComplete;
    *(v4 + 25) = self->_keysAreCompacted;
  }

  return v4;
}

- (id)debugDescription
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %p> %@ %@ %i %i", objc_opt_class(), self, self->_keys, self->_cachedValues, self->_cachedValuesAreComplete, self->_keysAreCompacted];

  return v2;
}

- (id)cachedValueForKey:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      return OUTLINED_FUNCTION_0_16();
    }

    a1 = [*(a1 + 16) objectForKeyedSubscript:{a2, v2}];
  }

  return a1;
}

@end
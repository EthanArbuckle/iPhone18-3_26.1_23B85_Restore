@interface _LSPlistHint
- (id)cachedValueForKey:(uint64_t)key;
- (id)completeDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (uint64_t)setCachedValue:(uint64_t)value forKey:;
- (void)initWithKeys:(char)keys compacted:;
- (void)setCompleteDictionary:(uint64_t)dictionary;
@end

@implementation _LSPlistHint

- (id)completeDictionary
{
  if (self)
  {
    if (*(self + 24) != 1)
    {
      return OUTLINED_FUNCTION_0_16();
    }

    self = *(self + 2);
  }

  return self;
}

- (void)initWithKeys:(char)keys compacted:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
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
    *(v5 + 25) = keys;
  }

  return v5;
}

- (void)setCompleteDictionary:(uint64_t)dictionary
{
  if (dictionary && a2 && (*(dictionary + 24) & 1) == 0)
  {
    v3 = [a2 copy];
    v4 = *(dictionary + 16);
    *(dictionary + 16) = v3;

    *(dictionary + 24) = 1;
  }
}

- (uint64_t)setCachedValue:(uint64_t)value forKey:
{
  if (result)
  {
    if (value)
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

        return [v6 setObject:a2 forKeyedSubscript:value];
      }
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)cachedValueForKey:(uint64_t)key
{
  if (key)
  {
    if (*(key + 24))
    {
      return OUTLINED_FUNCTION_0_16();
    }

    key = [*(key + 16) objectForKeyedSubscript:{a2, v2}];
  }

  return key;
}

@end
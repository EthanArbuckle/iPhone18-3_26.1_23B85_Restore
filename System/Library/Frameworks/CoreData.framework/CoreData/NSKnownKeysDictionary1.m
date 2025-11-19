@interface NSKnownKeysDictionary1
+ (id)initForKeys:(id)a3;
+ (id)initWithCoder:(id)a3;
+ (id)initWithDictionary:(id)a3 copyItems:(BOOL)a4;
+ (id)initWithObjects:(id *)a3 forKeys:(id *)a4 count:(unint64_t)a5;
+ (id)initWithSearchStrategy:(id)a3;
- (BOOL)isEqualToDictionary:(id)a3;
- (id)allKeys;
- (id)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyEnumerator;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (uint64_t)_recount;
- (unint64_t)_countByEnumeratingWithState:(unint64_t)a3 objects:(unint64_t)a4 count:(char)a5 forKeys:;
- (unint64_t)count;
- (void)_setValues:(id *)a3 retain:(BOOL)a4;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)getKeys:(id *)a3;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)a3 andKeys:(id *)a4;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation NSKnownKeysDictionary1

- (unint64_t)count
{
  count = self->_count;
  if (count < 0)
  {
    [(NSKnownKeysDictionary1 *)self _recount];
    return self->_count;
  }

  return count;
}

- (uint64_t)_recount
{
  if (result)
  {
    v1 = result;
    result = [*(result + 16) length];
    v2 = 0;
    if (result)
    {
      v3 = (v1 + 24);
      do
      {
        if (*v3++)
        {
          ++v2;
        }

        --result;
      }

      while (result);
    }

    *(v1 + 12) = v2;
  }

  return result;
}

- (void)dealloc
{
  v3 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  if (v3)
  {
    v4 = v3;
    values = self->_values;
    do
    {
      v6 = *values++;

      --v4;
    }

    while (v4);
  }

  self->_keySearch = 0;

  _PFDeallocateObject(self);
}

- (id)allKeys
{
  v3 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v5 = [(NSKnownKeysMappingStrategy *)self->_keySearch keys];
  if (v3)
  {
    v6 = v5;
    values = self->_values;
    do
    {
      if (*values)
      {
        [v4 addObject:*v6];
      }

      ++v6;
      ++values;
      --v3;
    }

    while (v3);
  }

  return v4;
}

- (id)allValues
{
  v3 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSKnownKeysDictionary1 count](self, "count")}];
  if (v3)
  {
    values = self->_values;
    do
    {
      if (*values)
      {
        [v4 addObject:?];
      }

      ++values;
      --v3;
    }

    while (v3);
  }

  return v4;
}

+ (id)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"searchMapping"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"emptyToken"];
  v7 = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"values"}];
  v8 = [v7 count];
  v9 = [v5 length];
  if (v8 == v9 && v9 <= 0x8000)
  {
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = 8 * v10;
    v12 = _PFAllocateObject(a1, 8 * v10);
    v13 = v5;
    v12[2] = v13;
    MEMORY[0x1EEE9AC00](v13);
    v15 = &v24 - v14;
    if (v8 >= 0x201)
    {
      v15 = NSAllocateScannedUncollectable();
      [v7 getObjects:v15 range:{0, v8}];
    }

    else
    {
      bzero(&v24 - v14, v11);
      [v7 getObjects:v15 range:{0, v8}];
      if (!v8)
      {
        v16 = 0;
LABEL_19:
        *(v12 + 3) = v16;
        goto LABEL_20;
      }
    }

    v24 = &v24;
    v16 = 0;
    v17 = v15;
    v18 = v12;
    v19 = v12;
    v20 = v8;
    do
    {
      v21 = *v17;
      if (*v17 != v6 && ([*v17 isEqual:{v6, v24, v25}] & 1) == 0)
      {
        v19[3] = v21;
        ++v16;
      }

      ++v19;
      ++v17;
      --v20;
    }

    while (v20);
    if (v8 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    v12 = v18;
    goto LABEL_19;
  }

  [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434FE0)}];

  v12 = 0;
LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)initWithSearchStrategy:(id)a3
{
  v5 = [a3 length];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = _PFAllocateObject(a1, 8 * v6);
  v7[2] = a3;
  *(v7 + 3) = -1;
  return v7;
}

+ (id)initForKeys:(id)a3
{
  v4 = [[NSKnownKeysMappingStrategy alloc] initForKeys:a3];
  v5 = [a1 initWithSearchStrategy:v4];

  return v5;
}

+ (id)initWithObjects:(id *)a3 forKeys:(id *)a4 count:(unint64_t)a5
{
  v8 = [[NSKnownKeysMappingStrategy alloc] initForKeys:a4 count:a5];
  v9 = [a1 initWithSearchStrategy:v8];

  if (a5)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = a3[v10];
      *&v9[2 * v10 + 6] = v13;
      if (v13)
      {
        ++v11;
      }

      v10 = v12++;
    }

    while (v10 < a5);
  }

  else
  {
    v11 = 0;
  }

  v9[3] = v11;
  return v9;
}

+ (id)initWithDictionary:(id)a3 copyItems:(BOOL)a4
{
  v28 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = [a3 count];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 initWithSearchStrategy:{objc_msgSend(a3, "mapping")}];
    if (v7)
    {
      v8 = [a3 values];
      if (v6)
      {
        v9 = v8;
        v10 = 0;
        v11 = v7;
        do
        {
          v12 = *v9;
          if (*v9)
          {
            if (v28)
            {
              v13 = [v12 copy];
            }

            else
            {
              v13 = v12;
            }

            ++v10;
            *(v11 + 3) = v13;
          }

          v11 += 2;
          ++v9;
          --v6;
        }

        while (v6);
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v14 = [a1 initForKeys:{objc_msgSend(a3, "allKeys")}];
    v7 = v14;
    if (v14)
    {
      v15 = [v14 mapping];
      if (v6 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v6;
      }

      if (v6 >= 0x201)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v27 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = 8 * v16;
      if (v6 >= 0x201)
      {
        v18 = NSAllocateScannedUncollectable();
        v20 = NSAllocateScannedUncollectable();
        [a3 getObjects:v18 andKeys:v20];
      }

      else
      {
        bzero(v27 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v16);
        v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v20, v19);
        [a3 getObjects:v18 andKeys:v20];
        if (!v6)
        {
          v10 = 0;
LABEL_34:
          v7[3] = v10;
          goto LABEL_35;
        }
      }

      v27[1] = v27;
      v21 = 0;
      v10 = 0;
      do
      {
        v22 = [v15 fastIndexForKnownKey:*&v20[8 * v21]];
        v23 = *&v18[8 * v21];
        if (v28)
        {
          v24 = [*&v18[8 * v21] copy];
        }

        else
        {
          v24 = v23;
        }

        *&v7[2 * v22 + 6] = v24;
        if (v23)
        {
          ++v10;
        }

        ++v21;
      }

      while (v6 != v21);
      if (v6 >= 0x201)
      {
        NSZoneFree(0, v18);
        NSZoneFree(0, v20);
      }

      goto LABEL_34;
    }
  }

LABEL_35:
  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  [a3 encodeInt32:1 forKey:@"version"];
  [a3 encodeObject:self->_keySearch forKey:@"searchMapping"];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"__empty_slot_token_4c24_98dc_ac1e_b773__"];
  [a3 encodeObject:v5 forKey:@"emptyToken"];
  v6 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  v7 = v6;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v6 >= 0x201)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v15 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 >= 0x201)
  {
    v10 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v15 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v11 = 0;
  do
  {
    v12 = self->_values[v11];
    if (!v12)
    {
      v12 = v5;
    }

    *&v10[8 * v11++] = v12;
  }

  while (v7 != v11);
LABEL_15:
  v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:v7];
  [a3 encodeObject:v13 forKey:@"values"];

  if (v7 >= 0x201)
  {
    NSZoneFree(0, v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSKnownKeysDictionary1 alloc] initWithSearchStrategy:self->_keySearch];
  v4->_count = self->_count;
  v5 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  if (v5)
  {
    v6 = v5;
    values = self->_values;
    v8 = v4->_values;
    do
    {
      v9 = *values++;
      *v8++ = v9;
      --v6;
    }

    while (v6);
  }

  return v4;
}

- (void)setValue:(id)a3 atIndex:(unint64_t)a4
{
  values = self->_values;
  v8 = self->_values[a4];
  if (v8)
  {
    count = self->_count;
    if (count < 0)
    {
      [(NSKnownKeysDictionary1 *)self _recount];
      count = self->_count;
    }

    self->_count = count - 1;
  }

  values[a4] = 0;
  if (a3)
  {
    v10 = self->_count;
    if (v10 < 0)
    {
      [(NSKnownKeysDictionary1 *)self _recount];
      v10 = self->_count;
    }

    self->_count = v10 + 1;
    values[a4] = a3;
  }
}

- (void)_setValues:(id *)a3 retain:(BOOL)a4
{
  v4 = a4;
  [(NSKnownKeysDictionary1 *)self count];
  v7 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  if (v7)
  {
    v8 = v7;
    values = self->_values;
    do
    {
      v10 = *values;
      v11 = *a3;
      if (*values)
      {
        --self->_count;
      }

      if (v11)
      {
        if (v4)
        {
          v11 = v11;
        }

        *values = v11;
        ++self->_count;
      }

      else
      {
        *values = 0;
      }

      ++a3;
      ++values;
      --v8;
    }

    while (v8);
  }
}

- (id)keyEnumerator
{
  v2 = [[_NSKnownKeysEnumerator alloc] initWithArray:self forTarget:self->_values withReferenceValues:0 andRange:[(NSKnownKeysMappingStrategy *)self->_keySearch length] andCopyItems:?];

  return v2;
}

- (unint64_t)_countByEnumeratingWithState:(unint64_t)a3 objects:(unint64_t)a4 count:(char)a5 forKeys:
{
  if (result)
  {
    v9 = result;
    if (!*a2)
    {
      a2[2] = result + 16;
    }

    a2[1] = a3;
    v10 = [*(result + 16) length];
    v11 = [*(v9 + 16) keys];
    if (a5)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9 + 24;
    }

    result = 0;
    v13 = *a2;
    if (a4 && v13 < v10)
    {
      result = 0;
      do
      {
        if (*(v9 + 24 + 8 * v13))
        {
          *(a3 + 8 * result++) = *(v12 + 8 * v13);
        }

        ++v13;
      }

      while (v13 < v10 && result < a4);
    }

    *a2 = v13;
  }

  return result;
}

- (id)objectForKey:(id)a3
{
  v4 = _PFRawIndexForKnownKey(&self->_keySearch->super.isa, a3);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return self->_values[v4];
  }
}

- (void)removeObjectForKey:(id)a3
{
  v4 = _PFRawIndexForKnownKey(&self->_keySearch->super.isa, a3);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = self->_values[v4];
    if (v6)
    {
      count = self->_count;
      if (count < 0)
      {
        [(NSKnownKeysDictionary1 *)self _recount];
        count = self->_count;
      }

      self->_count = count - 1;

      self->_values[v5] = 0;
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = _PFRawIndexForKnownKey(&self->_keySearch->super.isa, a4);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E696AA00];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The key '%@' is not defined for this NSKnownKeysDictionary", a4];
    objc_exception_throw([v13 exceptionWithName:v14 reason:v15 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", self, @"NSTargetObjectUserInfoKey", a4, @"NSUnknownUserInfoKey", 0)}]);
  }

  v8 = v7;
  values = self->_values;
  v10 = self->_values[v7];
  if (v10)
  {
    count = self->_count;
    if (count < 0)
    {
      [(NSKnownKeysDictionary1 *)self _recount];
      count = self->_count;
    }

    self->_count = count - 1;
  }

  values[v8] = 0;
  if (a3)
  {
    v12 = self->_count;
    if (v12 < 0)
    {
      [(NSKnownKeysDictionary1 *)self _recount];
      v12 = self->_count;
    }

    self->_count = v12 + 1;
    values[v8] = a3;
  }
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4
{
  if (a3)
  {
    if (a4)
    {
      v7 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
      v8 = [(NSKnownKeysMappingStrategy *)self->_keySearch keys];
      if (v7)
      {
        v9 = 0;
        values = self->_values;
        do
        {
          v11 = *values;
          if (*values)
          {
            a4[v9] = *v8;
            a3[v9++] = v11;
          }

          ++v8;
          ++values;
          --v7;
        }

        while (v7);
      }
    }

    else
    {

      [(NSKnownKeysDictionary1 *)self getObjects:?];
    }
  }

  else if (a4)
  {

    [(NSKnownKeysDictionary1 *)self getKeys:a4];
  }
}

- (void)getKeys:(id *)a3
{
  v5 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  v6 = [(NSKnownKeysMappingStrategy *)self->_keySearch keys];
  if (v5)
  {
    v7 = 0;
    values = self->_values;
    do
    {
      if (*values)
      {
        a3[v7++] = *v6;
      }

      ++v6;
      ++values;
      --v5;
    }

    while (v5);
  }
}

- (void)getObjects:(id *)a3
{
  v5 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  if (v5)
  {
    v6 = 0;
    values = self->_values;
    do
    {
      if (*values)
      {
        a3[v6++] = *values;
      }

      ++values;
      --v5;
    }

    while (v5);
  }
}

- (BOOL)isEqualToDictionary:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = NSKnownKeysDictionary1;
  return [(NSKnownKeysDictionary1 *)&v6 isEqualToDictionary:?];
}

- (id)objectEnumerator
{
  v2 = [[_NSKnownKeysEnumerator alloc] initWithArray:self forTarget:self->_values withReferenceValues:0 andRange:[(NSKnownKeysMappingStrategy *)self->_keySearch length] andCopyItems:?];

  return v2;
}

- (void)addEntriesFromDictionary:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 count];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(a3 "mapping")])
  {
    v6 = [a3 values];
    if (v5)
    {
      v7 = v6;
      for (i = 0; i != v5; ++i)
      {
        v9 = *(v7 + 8 * i);
        if (v9)
        {
          [(NSKnownKeysDictionary1 *)self setValue:v9 atIndex:i];
        }
      }
    }
  }

  else
  {
    v10 = [(NSKnownKeysDictionary1 *)self mapping];
    if (v5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v5;
    }

    if (v5 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v22 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = 8 * v11;
    if (v5 >= 0x201)
    {
      v13 = NSAllocateScannedUncollectable();
      v15 = NSAllocateScannedUncollectable();
      [a3 getObjects:v13 andKeys:v15];
    }

    else
    {
      bzero(v22 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
      v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v14);
      [a3 getObjects:v13 andKeys:v15];
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    for (j = 0; j != v5; ++j)
    {
      v17 = _PFRawIndexForKnownKey(v10, *&v15[8 * j]);
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = MEMORY[0x1E695DF30];
        v20 = *MEMORY[0x1E696AA00];
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The key '%@' is not defined for this NSKnownKeysDictionary", *&v15[8 * j]];
        objc_exception_throw([v19 exceptionWithName:v20 reason:v21 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", self, @"NSTargetObjectUserInfoKey", *&v15[8 * j], @"NSUnknownUserInfoKey", 0)}]);
      }

      [(NSKnownKeysDictionary1 *)self setValue:*&v13[8 * j] atIndex:v17];
    }

    if (v5 >= 0x201)
    {
      NSZoneFree(0, v13);
      NSZoneFree(0, v15);
    }
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  v3 = [(NSKnownKeysMappingStrategy *)self->_keySearch length];
  if (v3)
  {
    v4 = v3;
    values = self->_values;
    do
    {

      *values++ = 0;
      --v4;
    }

    while (v4);
  }

  self->_count = 0;
}

@end
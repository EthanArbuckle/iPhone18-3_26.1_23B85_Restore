@interface NSSQLiteStatement
- (NSSQLiteStatement)initWithEntity:(id)a3 sqlString:(id)a4;
- (id)description;
- (sqlite3_stmt)setCachedSQLiteStatement:(uint64_t)a3 forConnection:;
- (uint64_t)addBindVariable:(uint64_t)a1;
- (void)cacheFakeEntityForFetch:(uint64_t)a1;
- (void)clearCaches:(void *)key;
- (void)dealloc;
- (void)setBindIntarrays:(uint64_t)a1;
@end

@implementation NSSQLiteStatement

- (void)dealloc
{
  self->_entity = 0;

  *&self->_bindIntarrays = 0u;
  *&self->_entity = 0u;
  [(NSSQLiteStatement *)self clearCaches:?];

  self->_fakeEntityForFetch = 0;
  v3.receiver = self;
  v3.super_class = NSSQLiteStatement;
  [(NSSQLiteStatement *)&v3 dealloc];
}

- (NSSQLiteStatement)initWithEntity:(id)a3 sqlString:(id)a4
{
  v9.receiver = self;
  v9.super_class = NSSQLiteStatement;
  v6 = [(NSSQLiteStatement *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_entity = a3;
    v6->_sqlString = [a4 copy];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%s <%p> on entity '%@' with sql text '%@'", class_getName(v4), self, -[NSSQLEntity name](self->_entity, "name"), self->_sqlString];
}

- (void)clearCaches:(void *)key
{
  if (key)
  {
    if (!*(key + 8))
    {
LABEL_12:

      *(key + 7) = 0;
      *(key + 9) = 0;
      return;
    }

    v3 = *(key + 9);
    if (v3)
    {
      v4 = a2 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = *(v3 + 152);
      if (!v5)
      {
        goto LABEL_10;
      }

      CFDictionaryRemoveValue(v5, key);
      v3 = *(key + 9);
    }

    if (!v3)
    {
LABEL_11:
      sqlite3_finalize(*(key + 8));
      *(key + 8) = 0;
      goto LABEL_12;
    }

LABEL_10:
    dispatch_assert_queue_V2(*(v3 + 8));
    goto LABEL_11;
  }
}

- (uint64_t)addBindVariable:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(a1 + 16) = v4;
  }

  v5 = [v4 count];
  [*(a1 + 16) addObject:a2];
  [a2 setIndex:v5];
  return v5;
}

- (void)setBindIntarrays:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 24) != a2)
    {
      v4 = a2;

      *(a1 + 24) = a2;
    }
  }
}

- (void)cacheFakeEntityForFetch:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 48) != a2)
    {
      v4 = a2;

      *(a1 + 48) = a2;
    }
  }
}

- (sqlite3_stmt)setCachedSQLiteStatement:(uint64_t)a3 forConnection:
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 9);
    if (!v5)
    {
      *(result + 9) = a3;
      v5 = a3;
    }

    result = *(result + 8);
    if (result != a2)
    {
      if (result)
      {
        if (v5)
        {
          dispatch_assert_queue_V2(*(v5 + 8));
          result = *(v4 + 8);
        }

        result = sqlite3_finalize(result);
      }

      *(v4 + 8) = a2;
    }

    if (!a2)
    {
      *(v4 + 9) = 0;
    }
  }

  return result;
}

@end
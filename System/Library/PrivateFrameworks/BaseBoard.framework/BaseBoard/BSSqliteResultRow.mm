@interface BSSqliteResultRow
+ (void)resultRowWithStatement:(uint64_t)statement;
- (BSSqliteResultRow)init;
- (double)doubleAtIndex:(unint64_t)index;
- (double)doubleForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataAtIndex:(unint64_t)index;
- (id)dataForKey:(id)key;
- (id)keyAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectForKey:(id)key;
- (id)stringAtIndex:(unint64_t)index;
- (id)stringForKey:(id)key;
- (int64_t)integerAtIndex:(unint64_t)index;
- (int64_t)integerForKey:(id)key;
- (unint64_t)count;
- (void)_indexForKey:(void *)key;
@end

@implementation BSSqliteResultRow

- (unint64_t)count
{
  statement = self->_statement;
  if (!statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:61 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow count]"}];

    statement = self->_statement;
  }

  return sqlite3_column_count(statement);
}

- (BSSqliteResultRow)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:32 description:@"init is not allowed"];

  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = BSSqliteResultRow;
  result = [(BSSqliteResultRow *)&v6 init];
  if (result)
  {
    result->_statement = 0;
  }

  return result;
}

+ (void)resultRowWithStatement:(uint64_t)statement
{
  v3 = objc_opt_self();
  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_resultRowWithStatement_ object:v3 file:@"BSSqliteResultRow.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"statement"}];
  }

  v4 = [v3 alloc];
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = BSSqliteResultRow;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    if (v4)
    {
      v4[1] = a2;
    }
  }

  return v4;
}

- (id)keyAtIndex:(unint64_t)index
{
  indexCopy = index;
  statement = self->_statement;
  if (!statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:66 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow keyAtIndex:]"}];

    statement = self->_statement;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = sqlite3_column_name(statement, indexCopy);

  return [v6 stringWithUTF8String:v7];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSSqliteResultRow *)self objectAtIndex:[(BSSqliteResultRow *)self _indexForKey:keyCopy]];

  return v5;
}

- (void)_indexForKey:(void *)key
{
  v3 = a2;
  if (key)
  {
    v4 = key[2];
    if (!v4)
    {
      v5 = [key count];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v8 = [key keyAtIndex:i];
          [v6 addObject:v8];
        }
      }

      v9 = [v6 copy];
      v10 = key[2];
      key[2] = v9;

      v4 = key[2];
    }

    v11 = v4;
    key = [v11 indexOfObject:v3];
  }

  return key;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (!self->_statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:75 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow objectAtIndex:]"}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    null = 0;
  }

  else
  {
    v7 = sqlite3_column_type(self->_statement, index);
    null = 0;
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        null = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BSSqliteResultRow integerAtIndex:](self, "integerAtIndex:", index)}];
      }

      else if (v7 == 2)
      {
        v8 = MEMORY[0x1E696AD98];
        [(BSSqliteResultRow *)self doubleAtIndex:index];
        null = [v8 numberWithDouble:?];
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          null = [(BSSqliteResultRow *)self stringAtIndex:index];
          break;
        case 4:
          null = [(BSSqliteResultRow *)self dataAtIndex:index];
          break;
        case 5:
          null = [MEMORY[0x1E695DFB0] null];
          break;
      }
    }
  }

  return null;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSSqliteResultRow *)self integerAtIndex:[(BSSqliteResultRow *)self _indexForKey:keyCopy]];

  return v5;
}

- (int64_t)integerAtIndex:(unint64_t)index
{
  if (!self->_statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:102 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow integerAtIndex:]"}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  statement = self->_statement;

  return sqlite3_column_int64(statement, index);
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  [(BSSqliteResultRow *)self doubleAtIndex:[(BSSqliteResultRow *)self _indexForKey:keyCopy]];
  v6 = v5;

  return v6;
}

- (double)doubleAtIndex:(unint64_t)index
{
  if (!self->_statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:114 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow doubleAtIndex:]"}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  statement = self->_statement;

  return sqlite3_column_double(statement, index);
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSSqliteResultRow *)self stringAtIndex:[(BSSqliteResultRow *)self _indexForKey:keyCopy]];

  return v5;
}

- (id)stringAtIndex:(unint64_t)index
{
  if (!self->_statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:126 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow stringAtIndex:]"}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_bytes(self->_statement, index);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:sqlite3_column_text(self->_statement length:index) encoding:{v6, 4}];
  }

  return v5;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSSqliteResultRow *)self dataAtIndex:[(BSSqliteResultRow *)self _indexForKey:keyCopy]];

  return v5;
}

- (id)dataAtIndex:(unint64_t)index
{
  if (!self->_statement)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:140 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow dataAtIndex:]"}];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_bytes(self->_statement, index);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_statement length:{index), v6}];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BSSqliteFrozenResultRow allocWithZone:zone];
  selfCopy = self;
  v6 = selfCopy;
  if (v4)
  {
    if (!selfCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithResultRow_ object:v4 file:@"BSSqliteResultRow.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"resultRow"}];
    }

    v37.receiver = v4;
    v37.super_class = BSSqliteResultRow;
    v7 = [(BSSqliteResultRow *)&v37 init];
    v8 = v7;
    if (v7)
    {
      v7->_statement = 0;
      v7[1].super.isa = [(BSSqliteResultRow *)v6 count];
      v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      v35 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8[1].super.isa];
      if (v8[1].super.isa)
      {
        v13 = 0;
        do
        {
          v14 = [(BSSqliteResultRow *)v6 keyAtIndex:v13];
          [v36 addObject:v14];

          v15 = [(BSSqliteResultRow *)v6 objectAtIndex:v13];
          [v35 addObject:v15];

          v16 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BSSqliteResultRow integerAtIndex:](v6, "integerAtIndex:", v13)}];
          [v9 addObject:v16];

          v17 = MEMORY[0x1E696AD98];
          [(BSSqliteResultRow *)v6 doubleAtIndex:v13];
          v18 = [v17 numberWithDouble:?];
          [v10 addObject:v18];

          v19 = [(BSSqliteResultRow *)v6 stringAtIndex:v13];
          [v11 addObject:v19];

          v20 = [(BSSqliteResultRow *)v6 dataAtIndex:v13];
          [v12 addObject:v20];

          v13 = (v13 + 1);
        }

        while (v13 < v8[1].super.isa);
      }

      v21 = [v36 copy];
      statement = v8[1]._statement;
      v8[1]._statement = v21;

      v23 = [v35 copy];
      columnNames = v8[1]._columnNames;
      v8[1]._columnNames = v23;

      v25 = [v9 copy];
      isa = v8[2].super.isa;
      v8[2].super.isa = v25;

      v27 = [v10 copy];
      v28 = v8[2]._statement;
      v8[2]._statement = v27;

      v29 = [v11 copy];
      v30 = v8[2]._columnNames;
      v8[2]._columnNames = v29;

      v31 = [v12 copy];
      v32 = v8[3].super.isa;
      v8[3].super.isa = v31;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface BSSqliteResultRow
+ (void)resultRowWithStatement:(uint64_t)a1;
- (BSSqliteResultRow)init;
- (double)doubleAtIndex:(unint64_t)a3;
- (double)doubleForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataAtIndex:(unint64_t)a3;
- (id)dataForKey:(id)a3;
- (id)keyAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (id)stringAtIndex:(unint64_t)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerAtIndex:(unint64_t)a3;
- (int64_t)integerForKey:(id)a3;
- (unint64_t)count;
- (void)_indexForKey:(void *)a1;
@end

@implementation BSSqliteResultRow

- (unint64_t)count
{
  statement = self->_statement;
  if (!statement)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:61 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow count]"}];

    statement = self->_statement;
  }

  return sqlite3_column_count(statement);
}

- (BSSqliteResultRow)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:32 description:@"init is not allowed"];

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

+ (void)resultRowWithStatement:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (!a2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:sel_resultRowWithStatement_ object:v3 file:@"BSSqliteResultRow.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"statement"}];
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

- (id)keyAtIndex:(unint64_t)a3
{
  v3 = a3;
  statement = self->_statement;
  if (!statement)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:66 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow keyAtIndex:]"}];

    statement = self->_statement;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = sqlite3_column_name(statement, v3);

  return [v6 stringWithUTF8String:v7];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(BSSqliteResultRow *)self objectAtIndex:[(BSSqliteResultRow *)self _indexForKey:v4]];

  return v5;
}

- (void)_indexForKey:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[2];
    if (!v4)
    {
      v5 = [a1 count];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v8 = [a1 keyAtIndex:i];
          [v6 addObject:v8];
        }
      }

      v9 = [v6 copy];
      v10 = a1[2];
      a1[2] = v9;

      v4 = a1[2];
    }

    v11 = v4;
    a1 = [v11 indexOfObject:v3];
  }

  return a1;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (!self->_statement)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:75 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow objectAtIndex:]"}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v7 = sqlite3_column_type(self->_statement, a3);
    v5 = 0;
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BSSqliteResultRow integerAtIndex:](self, "integerAtIndex:", a3)}];
      }

      else if (v7 == 2)
      {
        v8 = MEMORY[0x1E696AD98];
        [(BSSqliteResultRow *)self doubleAtIndex:a3];
        v5 = [v8 numberWithDouble:?];
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          v5 = [(BSSqliteResultRow *)self stringAtIndex:a3];
          break;
        case 4:
          v5 = [(BSSqliteResultRow *)self dataAtIndex:a3];
          break;
        case 5:
          v5 = [MEMORY[0x1E695DFB0] null];
          break;
      }
    }
  }

  return v5;
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [(BSSqliteResultRow *)self integerAtIndex:[(BSSqliteResultRow *)self _indexForKey:v4]];

  return v5;
}

- (int64_t)integerAtIndex:(unint64_t)a3
{
  if (!self->_statement)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:102 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow integerAtIndex:]"}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  statement = self->_statement;

  return sqlite3_column_int64(statement, a3);
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  [(BSSqliteResultRow *)self doubleAtIndex:[(BSSqliteResultRow *)self _indexForKey:v4]];
  v6 = v5;

  return v6;
}

- (double)doubleAtIndex:(unint64_t)a3
{
  if (!self->_statement)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:114 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow doubleAtIndex:]"}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  statement = self->_statement;

  return sqlite3_column_double(statement, a3);
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(BSSqliteResultRow *)self stringAtIndex:[(BSSqliteResultRow *)self _indexForKey:v4]];

  return v5;
}

- (id)stringAtIndex:(unint64_t)a3
{
  if (!self->_statement)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:126 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow stringAtIndex:]"}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_bytes(self->_statement, a3);
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:sqlite3_column_text(self->_statement length:a3) encoding:{v6, 4}];
  }

  return v5;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(BSSqliteResultRow *)self dataAtIndex:[(BSSqliteResultRow *)self _indexForKey:v4]];

  return v5;
}

- (id)dataAtIndex:(unint64_t)a3
{
  if (!self->_statement)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BSSqliteResultRow.m" lineNumber:140 description:{@"cannot call %s after the row has become invalid", "-[BSSqliteResultRow dataAtIndex:]"}];
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = sqlite3_column_bytes(self->_statement, a3);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_statement length:{a3), v6}];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_BSSqliteFrozenResultRow allocWithZone:a3];
  v5 = self;
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:sel__initWithResultRow_ object:v4 file:@"BSSqliteResultRow.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"resultRow"}];
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
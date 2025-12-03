@interface _WKWebExtensionSQLiteRow
- (BOOL)_isNullAtIndex:(unint64_t)index;
- (RawData)uncopiedRawDataAtIndex:(SEL)index;
- (_WKWebExtensionSQLiteRow)initWithCurrentRowOfEnumerator:(id)enumerator;
- (_WKWebExtensionSQLiteRow)initWithStatement:(id)statement;
- (double)doubleAtIndex:(unint64_t)index;
- (id)dataAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (id)stringAtIndex:(unint64_t)index;
- (id)uncopiedDataAtIndex:(unint64_t)index;
- (int)intAtIndex:(unint64_t)index;
- (int64_t)int64AtIndex:(unint64_t)index;
@end

@implementation _WKWebExtensionSQLiteRow

- (_WKWebExtensionSQLiteRow)initWithStatement:(id)statement
{
  statementCopy = statement;
  v11.receiver = self;
  v11.super_class = _WKWebExtensionSQLiteRow;
  v6 = [(_WKWebExtensionSQLiteRow *)&v11 init];
  if (v6)
  {
    v6->_handle = [statementCopy handle];
    objc_storeStrong(&v6->_statement, statement);
    database = [(_WKWebExtensionSQLiteStatement *)v6->_statement database];
    queue = [database queue];
    dispatch_assert_queue_V2(queue);

    v9 = v6;
  }

  return v6;
}

- (_WKWebExtensionSQLiteRow)initWithCurrentRowOfEnumerator:(id)enumerator
{
  statement = [enumerator statement];
  v5 = [(_WKWebExtensionSQLiteRow *)self initWithStatement:statement];

  return v5;
}

- (id)stringAtIndex:(unint64_t)index
{
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  if ([(_WKWebExtensionSQLiteRow *)self _isNullAtIndex:index])
  {
    v7 = 0;
  }

  else
  {
    handle = self->_handle;
    sqlite3_column_text(handle, index);
    sqlite3_column_bytes(handle, index);
    WTF::String::fromUTF8();
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v12);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }
    }

    else
    {
      v12 = &stru_1F1147748;
    }

    v7 = v12;
    v12 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }
  }

  return v7;
}

- (int)intAtIndex:(unint64_t)index
{
  indexCopy = index;
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  handle = self->_handle;

  return sqlite3_column_int(handle, indexCopy);
}

- (int64_t)int64AtIndex:(unint64_t)index
{
  indexCopy = index;
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  handle = self->_handle;

  return sqlite3_column_int64(handle, indexCopy);
}

- (double)doubleAtIndex:(unint64_t)index
{
  indexCopy = index;
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  handle = self->_handle;

  return sqlite3_column_double(handle, indexCopy);
}

- (id)dataAtIndex:(unint64_t)index
{
  [(_WKWebExtensionSQLiteRow *)self uncopiedRawDataAtIndex:index];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:v7];
  }

  return v3;
}

- (id)uncopiedDataAtIndex:(unint64_t)index
{
  [(_WKWebExtensionSQLiteRow *)self uncopiedRawDataAtIndex:index];
  if (v5)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v7 freeWhenDone:0];
  }

  return v3;
}

- (RawData)uncopiedRawDataAtIndex:(SEL)index
{
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  result = [(_WKWebExtensionSQLiteRow *)self _isNullAtIndex:a4];
  if (result)
  {
    retstr->var0 = 1;
    retstr->var1.var0 = 0;
    retstr->var1.var1 = 0;
  }

  else
  {
    handle = self->_handle;
    result = sqlite3_column_blob(handle, a4);
    if (result)
    {
      v11 = result;
      result = sqlite3_column_bytes(handle, a4);
      v12 = result;
      if (result >= 0)
      {
        p_var0 = &v11->var0;
      }

      else
      {
        p_var0 = 0;
      }

      if (result < 0)
      {
        v12 = 0;
      }
    }

    else
    {
      p_var0 = 0;
      v12 = 0;
    }

    retstr->var0 = 0;
    retstr->var1.var0 = p_var0;
    retstr->var1.var1 = v12;
  }

  return result;
}

- (BOOL)_isNullAtIndex:(unint64_t)index
{
  indexCopy = index;
  database = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  queue = [database queue];
  dispatch_assert_queue_V2(queue);

  return sqlite3_column_type(self->_handle, indexCopy) == 5;
}

- (id)objectAtIndex:(unint64_t)index
{
  v5 = sqlite3_column_type(self->_handle, index);
  null = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      null = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_handle, index)}];
    }

    else if (v5 == 2)
    {
      null = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_handle, index)}];
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        null = [(_WKWebExtensionSQLiteRow *)self stringAtIndex:index];
        break;
      case 4:
        null = [(_WKWebExtensionSQLiteRow *)self dataAtIndex:index];
        break;
      case 5:
        null = [MEMORY[0x1E695DFB0] null];
        break;
    }
  }

  return null;
}

@end
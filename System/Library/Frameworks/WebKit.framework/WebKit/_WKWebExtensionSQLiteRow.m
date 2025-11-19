@interface _WKWebExtensionSQLiteRow
- (BOOL)_isNullAtIndex:(unint64_t)a3;
- (RawData)uncopiedRawDataAtIndex:(SEL)a3;
- (_WKWebExtensionSQLiteRow)initWithCurrentRowOfEnumerator:(id)a3;
- (_WKWebExtensionSQLiteRow)initWithStatement:(id)a3;
- (double)doubleAtIndex:(unint64_t)a3;
- (id)dataAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)stringAtIndex:(unint64_t)a3;
- (id)uncopiedDataAtIndex:(unint64_t)a3;
- (int)intAtIndex:(unint64_t)a3;
- (int64_t)int64AtIndex:(unint64_t)a3;
@end

@implementation _WKWebExtensionSQLiteRow

- (_WKWebExtensionSQLiteRow)initWithStatement:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _WKWebExtensionSQLiteRow;
  v6 = [(_WKWebExtensionSQLiteRow *)&v11 init];
  if (v6)
  {
    v6->_handle = [v5 handle];
    objc_storeStrong(&v6->_statement, a3);
    v7 = [(_WKWebExtensionSQLiteStatement *)v6->_statement database];
    v8 = [v7 queue];
    dispatch_assert_queue_V2(v8);

    v9 = v6;
  }

  return v6;
}

- (_WKWebExtensionSQLiteRow)initWithCurrentRowOfEnumerator:(id)a3
{
  v4 = [a3 statement];
  v5 = [(_WKWebExtensionSQLiteRow *)self initWithStatement:v4];

  return v5;
}

- (id)stringAtIndex:(unint64_t)a3
{
  v5 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(_WKWebExtensionSQLiteRow *)self _isNullAtIndex:a3])
  {
    v7 = 0;
  }

  else
  {
    handle = self->_handle;
    sqlite3_column_text(handle, a3);
    sqlite3_column_bytes(handle, a3);
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

- (int)intAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  handle = self->_handle;

  return sqlite3_column_int(handle, v3);
}

- (int64_t)int64AtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  handle = self->_handle;

  return sqlite3_column_int64(handle, v3);
}

- (double)doubleAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  handle = self->_handle;

  return sqlite3_column_double(handle, v3);
}

- (id)dataAtIndex:(unint64_t)a3
{
  [(_WKWebExtensionSQLiteRow *)self uncopiedRawDataAtIndex:a3];
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

- (id)uncopiedDataAtIndex:(unint64_t)a3
{
  [(_WKWebExtensionSQLiteRow *)self uncopiedRawDataAtIndex:a3];
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

- (RawData)uncopiedRawDataAtIndex:(SEL)a3
{
  v7 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

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

- (BOOL)_isNullAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = [(_WKWebExtensionSQLiteStatement *)self->_statement database];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  return sqlite3_column_type(self->_handle, v3) == 5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v5 = sqlite3_column_type(self->_handle, a3);
  v6 = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_handle, a3)}];
    }

    else if (v5 == 2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_handle, a3)}];
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v6 = [(_WKWebExtensionSQLiteRow *)self stringAtIndex:a3];
        break;
      case 4:
        v6 = [(_WKWebExtensionSQLiteRow *)self dataAtIndex:a3];
        break;
      case 5:
        v6 = [MEMORY[0x1E695DFB0] null];
        break;
    }
  }

  return v6;
}

@end
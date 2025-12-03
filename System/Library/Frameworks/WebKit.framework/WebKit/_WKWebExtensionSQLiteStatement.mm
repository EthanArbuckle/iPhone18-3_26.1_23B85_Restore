@interface _WKWebExtensionSQLiteStatement
- (BOOL)execute:(id *)execute;
- (BOOL)fetchWithEnumerationBlock:(id)block error:(id *)error;
- (NSArray)columnNames;
- (NSDictionary)columnNamesToIndexes;
- (_WKWebExtensionSQLiteStatement)initWithDatabase:(id)database query:(id)query error:(id *)error;
- (id)fetch;
- (int)execute;
- (void)bindData:(id)data atParameterIndex:(unint64_t)index;
- (void)bindDouble:(double)double atParameterIndex:(unint64_t)index;
- (void)bindInt64:(int64_t)int64 atParameterIndex:(unint64_t)index;
- (void)bindInt:(int)int atParameterIndex:(unint64_t)index;
- (void)bindNullAtParameterIndex:(unint64_t)index;
- (void)bindString:(id)string atParameterIndex:(unint64_t)index;
- (void)dealloc;
- (void)invalidate;
- (void)reset;
@end

@implementation _WKWebExtensionSQLiteStatement

- (_WKWebExtensionSQLiteStatement)initWithDatabase:(id)database query:(id)query error:(id *)error
{
  databaseCopy = database;
  queryCopy = query;
  v17.receiver = self;
  v17.super_class = _WKWebExtensionSQLiteStatement;
  v11 = [(_WKWebExtensionSQLiteStatement *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_database, database);
    queue = [(_WKWebExtensionSQLiteDatabase *)v12->_database queue];
    dispatch_assert_queue_V2(queue);

    v14 = sqlite3_prepare_v2([databaseCopy handle], objc_msgSend(queryCopy, "UTF8String"), -1, &v12->_handle, 0);
    if (!v14)
    {
      v15 = v12;
      goto LABEL_6;
    }

    [databaseCopy reportErrorWithCode:v14 query:queryCopy error:error];
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (void)dealloc
{
  handle = self->_handle;
  if (handle)
  {
    v4 = self->_database;
    queue = [(_WKWebExtensionSQLiteDatabase *)v4 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___WKWebExtensionSQLiteStatement_dealloc__block_invoke;
    block[3] = &unk_1E762FE18;
    v9 = v4;
    v10 = handle;
    v6 = v4;
    dispatch_async(queue, block);
  }

  v7.receiver = self;
  v7.super_class = _WKWebExtensionSQLiteStatement;
  [(_WKWebExtensionSQLiteStatement *)&v7 dealloc];
}

- (int)execute
{
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v4 = sqlite3_step(self->_handle);
  v5 = v4;
  if ((v4 - 100) >= 2 && v4 != 0)
  {
    [(_WKWebExtensionSQLiteDatabase *)self->_database reportErrorWithCode:v4 statement:self->_handle error:0];
  }

  return v5;
}

- (BOOL)execute:(id *)execute
{
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v6 = sqlite3_step(self->_handle);
  if ((v6 - 100) < 2 || v6 == 0)
  {
    return 1;
  }

  [(_WKWebExtensionSQLiteDatabase *)self->_database reportErrorWithCode:v6 statement:self->_handle error:execute];
  return 0;
}

- (id)fetch
{
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v4 = [[_WKWebExtensionSQLiteRowEnumerator alloc] initWithResultsOfStatement:self];

  return v4;
}

- (BOOL)fetchWithEnumerationBlock:(id)block error:(id *)error
{
  blockCopy = block;
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v7 = 0;
  v10 = 0;
  do
  {
    v8 = sqlite3_step(self->_handle);
    if (v8 != 100)
    {
      break;
    }

    if (!v7)
    {
      v7 = [[_WKWebExtensionSQLiteRow alloc] initWithStatement:self];
    }

    blockCopy[2](blockCopy, v7, &v10);
  }

  while ((v10 & 1) == 0);

  return v8 == 101;
}

- (void)reset
{
  v12 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v4 = sqlite3_reset(self->_handle);
  if (v4)
  {
    v5 = v4;
    v6 = qword_1ED640AB8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v8 = 138412546;
      v9 = lastErrorMessage;
      v10 = 1024;
      v11 = v5;
      _os_log_debug_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEBUG, "Could not reset statement: %@ (%d)", &v8, 0x12u);
    }
  }
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v4 = sqlite3_finalize(self->_handle);
  if (v4)
  {
    v5 = v4;
    v6 = qword_1ED640AB8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v8 = 138412546;
      v9 = lastErrorMessage;
      v10 = 1024;
      v11 = v5;
      _os_log_debug_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEBUG, "Could not finalize statement: %@ (%d)", &v8, 0x12u);
    }
  }

  self->_handle = 0;
}

- (void)bindString:(id)string atParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  handle = self->_handle;
  MEMORY[0x19EB02040](&v17, stringCopy);
  WTF::String::utf8();
  if (*buf)
  {
    v9 = (*buf + 16);
    v10 = *(*buf + 8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = sqlite3_bind_text(handle, indexCopy, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
  v13 = *buf;
  *buf = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::fastFree(v13, v11);
    }

    else
    {
      --*v13;
    }
  }

  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v11);
    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else if (!v12)
  {
    goto LABEL_12;
  }

  v15 = qword_1ED640AB8;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
    *buf = 138412546;
    *&buf[4] = lastErrorMessage;
    v19 = 1024;
    v20 = v12;
    _os_log_debug_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEBUG, "Could not bind string: %@ (%d)", buf, 0x12u);
  }

LABEL_12:
}

- (void)bindInt:(int)int atParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v16 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v8 = sqlite3_bind_int(self->_handle, indexCopy, int);
  if (v8)
  {
    v9 = v8;
    v10 = qword_1ED640AB8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v12 = 138412546;
      v13 = lastErrorMessage;
      v14 = 1024;
      v15 = v9;
      _os_log_debug_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEBUG, "Could not bind int: %@ (%d)", &v12, 0x12u);
    }
  }
}

- (void)bindInt64:(int64_t)int64 atParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v16 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v8 = sqlite3_bind_int64(self->_handle, indexCopy, int64);
  if (v8)
  {
    v9 = v8;
    v10 = qword_1ED640AB8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v12 = 138412546;
      v13 = lastErrorMessage;
      v14 = 1024;
      v15 = v9;
      _os_log_debug_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEBUG, "Could not bind integer: %@ (%d)", &v12, 0x12u);
    }
  }
}

- (void)bindDouble:(double)double atParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v16 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v8 = sqlite3_bind_double(self->_handle, indexCopy, double);
  if (v8)
  {
    v9 = v8;
    v10 = qword_1ED640AB8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v12 = 138412546;
      v13 = lastErrorMessage;
      v14 = 1024;
      v15 = v9;
      _os_log_debug_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEBUG, "Could not bind double: %@ (%d)", &v12, 0x12u);
    }
  }
}

- (void)bindData:(id)data atParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  handle = self->_handle;
  v9 = dataCopy;
  v10 = v9;
  if (v9)
  {
    bytes = [v9 bytes];
    v12 = [v10 length];
  }

  else
  {
    bytes = 0;
    v12 = 0;
  }

  v13 = sqlite3_bind_blob64(handle, indexCopy, bytes, v12, 0xFFFFFFFFFFFFFFFFLL);
  if (v13)
  {
    v14 = qword_1ED640AB8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v16 = 138412546;
      v17 = lastErrorMessage;
      v18 = 1024;
      v19 = v13;
      _os_log_debug_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEBUG, "Could not bind blob: %@ (%d)", &v16, 0x12u);
    }
  }
}

- (void)bindNullAtParameterIndex:(unint64_t)index
{
  indexCopy = index;
  v14 = *MEMORY[0x1E69E9840];
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  v6 = sqlite3_bind_null(self->_handle, indexCopy);
  if (v6)
  {
    v7 = v6;
    v8 = qword_1ED640AB8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self->_database lastErrorMessage];
      v10 = 138412546;
      v11 = lastErrorMessage;
      v12 = 1024;
      v13 = v7;
      _os_log_debug_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEBUG, "Could not bind null: %@ (%d)", &v10, 0x12u);
    }
  }
}

- (NSDictionary)columnNamesToIndexes
{
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  columnNamesToIndexes = self->_columnNamesToIndexes;
  if (columnNamesToIndexes)
  {
    v5 = columnNamesToIndexes;
  }

  else
  {
    v6 = sqlite3_column_count(self->_handle);
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v6];
    if (v6 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = sqlite3_column_name(self->_handle, v8);
        WTF::String::fromUTF8(&v22, v9, v10);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        v12 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v21, v12);
          if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v13);
          }
        }

        else
        {
          v21 = &stru_1F1147748;
        }

        v14 = v21;
        [(NSDictionary *)v7 setObject:v11 forKeyedSubscript:v14];

        v15 = v21;
        v21 = 0;

        v17 = v22;
        v22 = 0;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v17, v16);
        }

        v8 = (v8 + 1);
      }

      while (v6 != v8);
    }

    v18 = self->_columnNamesToIndexes;
    self->_columnNamesToIndexes = v7;
    v19 = v7;

    v5 = self->_columnNamesToIndexes;
  }

  return v5;
}

- (NSArray)columnNames
{
  queue = [(_WKWebExtensionSQLiteDatabase *)self->_database queue];
  dispatch_assert_queue_V2(queue);

  columnNames = self->_columnNames;
  if (columnNames)
  {
    v5 = columnNames;
  }

  else
  {
    v6 = sqlite3_column_count(self->_handle);
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = sqlite3_column_name(self->_handle, i);
        WTF::String::fromUTF8(&v20, v9, v10);
        v11 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v21, v11);
          if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, v12);
          }
        }

        else
        {
          v21 = &stru_1F1147748;
        }

        v13 = v21;
        [(NSArray *)v7 addObject:v13];

        v14 = v21;
        v21 = 0;

        v16 = v20;
        v20 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v15);
        }
      }
    }

    v17 = self->_columnNames;
    self->_columnNames = v7;
    v18 = v7;

    v5 = self->_columnNames;
  }

  return v5;
}

@end
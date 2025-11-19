@interface SFSQLiteStatement
- (BOOL)step;
- (SFSQLite)SQLite;
- (SFSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5;
- (double)doubleAtIndex:(unint64_t)a3;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtIndex:(unint64_t)a3;
- (id)columnNameAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)retainedTemporaryBoundObject:(id)a3;
- (id)textAtIndex:(unint64_t)a3;
- (int)columnTypeAtIndex:(unint64_t)a3;
- (int)intAtIndex:(unint64_t)a3;
- (int64_t)int64AtIndex:(unint64_t)a3;
- (unint64_t)columnCount;
- (unint64_t)indexForColumnName:(id)a3;
- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4;
- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4;
- (void)bindInt:(int)a3 atIndex:(unint64_t)a4;
- (void)bindNullAtIndex:(unint64_t)a3;
- (void)bindText:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValue:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValues:(id)a3;
- (void)enumerateColumnsUsingBlock:(id)a3;
- (void)finalizeStatement;
- (void)reset;
- (void)resetAfterStepError;
@end

@implementation SFSQLiteStatement

- (SFSQLite)SQLite
{
  WeakRetained = objc_loadWeakRetained(&self->_SQLite);

  return WeakRetained;
}

- (void)enumerateColumnsUsingBlock:(id)a3
{
  v12 = a3;
  v4 = [(SFSQLiteStatement *)self columnCount];
  v5 = v4;
  if (self->_indexesByColumnName)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v4];
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  do
  {
    v8 = [(SFSQLiteStatement *)self columnNameAtIndex:v7];
    if (v6)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
      [v6 setObject:v9 forKeyedSubscript:v8];
    }

    if (v12)
    {
      v12[2]();
    }

    ++v7;
  }

  while (v5 != v7);
LABEL_11:
  if (v6)
  {
    v10 = [v6 copy];
    indexesByColumnName = self->_indexesByColumnName;
    self->_indexesByColumnName = v10;
  }
}

- (id)allObjectsByColumnName
{
  v3 = [(SFSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SFSQLiteStatement_allObjectsByColumnName__block_invoke;
  v9[3] = &unk_1E70D47D8;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  [(SFSQLiteStatement *)self enumerateColumnsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __43__SFSQLiteStatement_allObjectsByColumnName__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectAtIndex:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)allObjects
{
  v3 = [(SFSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SFSQLiteStatement_allObjects__block_invoke;
  v8[3] = &unk_1E70D47D8;
  v5 = v4;
  v9 = v5;
  v10 = self;
  [(SFSQLiteStatement *)self enumerateColumnsUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __31__SFSQLiteStatement_allObjects__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) objectAtIndex:a2];
  v6 = v4;
  if (v4)
  {
    [*(a1 + 32) setObject:v4 atIndexedSubscript:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(SFSQLiteStatement *)self columnTypeAtIndex:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SFSQLiteStatement int64AtIndex:](self, "int64AtIndex:", a3)}];
      goto LABEL_16;
    }

    if (v5 == 2)
    {
      v7 = MEMORY[0x1E696AD98];
      [(SFSQLiteStatement *)self doubleAtIndex:a3];
      v8 = [v7 numberWithDouble:?];
      goto LABEL_16;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v8 = [(SFSQLiteStatement *)self textAtIndex:a3];
        goto LABEL_16;
      case 4:
        v8 = [(SFSQLiteStatement *)self blobAtIndex:a3];
        goto LABEL_16;
      case 5:
        goto LABEL_15;
    }
  }

  v9 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v6;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "sfsqlite: Unexpected column type: %d", v12, 8u);
  }

LABEL_15:
  v8 = 0;
LABEL_16:
  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)textAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:298 description:{@"Statement is reset: %@", self->_SQL}];
  }

  v5 = sqlite3_column_text(self->_handle, v3);
  if (v5)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }

  return v5;
}

- (id)blobAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:286 description:{@"Statement is reset: %@", self->_SQL}];
  }

  v5 = sqlite3_column_blob(self->_handle, v3);
  if (v5)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:{sqlite3_column_bytes(self->_handle, v3)}];
  }

  return v5;
}

- (double)doubleAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:280 description:{@"Statement is reset: %@", self->_SQL}];
  }

  handle = self->_handle;

  return sqlite3_column_double(handle, v3);
}

- (int64_t)int64AtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:274 description:{@"Statement is reset: %@", self->_SQL}];
  }

  handle = self->_handle;

  return sqlite3_column_int64(handle, v3);
}

- (int)intAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:268 description:{@"Statement is reset: %@", self->_SQL}];
  }

  handle = self->_handle;

  return sqlite3_column_int(handle, v3);
}

- (unint64_t)indexForColumnName:(id)a3
{
  v4 = a3;
  indexesByColumnName = self->_indexesByColumnName;
  if (!indexesByColumnName)
  {
    [(SFSQLiteStatement *)self enumerateColumnsUsingBlock:0];
    indexesByColumnName = self->_indexesByColumnName;
  }

  v6 = [(NSDictionary *)indexesByColumnName objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)columnNameAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:253 description:{@"Statement is reset: %@", self->_SQL}];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = sqlite3_column_name(self->_handle, v3);

  return [v5 stringWithUTF8String:v6];
}

- (int)columnTypeAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->_reset)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:247 description:{@"Statement is reset: %@", self->_SQL}];
  }

  handle = self->_handle;

  return sqlite3_column_type(handle, v3);
}

- (unint64_t)columnCount
{
  if (self->_reset)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:241 description:{@"Statement is reset: %@", self->_SQL}];
  }

  return sqlite3_column_count(self->_handle);
}

- (void)bindValues:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = 0;
    do
    {
      v5 = [v6 objectAtIndexedSubscript:v4];
      [(SFSQLiteStatement *)self bindValue:v5 atIndex:v4];

      ++v4;
    }

    while (v4 < [v6 count]);
  }
}

- (void)bindValue:(id)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [SFObjCType typeForValue:v7];
    if ([v8 isIntegerNumber])
    {
      if ([v8 size] > 4)
      {
        -[SFSQLiteStatement bindInt64:atIndex:](self, "bindInt64:atIndex:", [v7 longLongValue], a4);
      }

      else
      {
        -[SFSQLiteStatement bindInt:atIndex:](self, "bindInt:atIndex:", [v7 intValue], a4);
      }
    }

    else
    {
      if (([v8 isFloatingPointNumber] & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:208 description:@"Expected number type to be either integer or floating point"];
      }

      if ([v8 code] != 11 && objc_msgSend(v8, "code") != 10)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"SFSQLiteStatement.m" lineNumber:209 description:{@"Unexpected floating point number type: %@", v8}];
      }

      [v7 doubleValue];
      [(SFSQLiteStatement *)self bindDouble:a4 atIndex:?];
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSQLiteStatement *)self bindBlob:v7 atIndex:a4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(buf, 170, 16);
    [v7 getUUIDBytes:buf];
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:16];
LABEL_15:
    v8 = v9;
    v10 = [(SFSQLiteStatement *)self retainedTemporaryBoundObject:v9];
    [(SFSQLiteStatement *)self bindBlob:v10 atIndex:a4];
LABEL_16:

LABEL_18:
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSQLiteStatement *)self bindText:v7 atIndex:a4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFSQLiteStatement *)self bindNullAtIndex:a4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 timeIntervalSinceReferenceDate];
    [(SFSQLiteStatement *)self bindDouble:a4 atIndex:?];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 absoluteString];
    v10 = [(SFSQLiteStatement *)self retainedTemporaryBoundObject:v8];
    [(SFSQLiteStatement *)self bindText:v10 atIndex:a4];
    goto LABEL_16;
  }

  v12 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = objc_opt_class();
    v13 = *&buf[4];
    _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "sfsqlite: Can't bind object of type %@", buf, 0xCu);
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
}

- (id)retainedTemporaryBoundObject:(id)a3
{
  v4 = a3;
  temporaryBoundObjects = self->_temporaryBoundObjects;
  if (!temporaryBoundObjects)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryBoundObjects;
    self->_temporaryBoundObjects = v6;

    temporaryBoundObjects = self->_temporaryBoundObjects;
  }

  [(NSMutableArray *)temporaryBoundObjects addObject:v4];

  return v4;
}

- (void)bindNullAtIndex:(unint64_t)a3
{
  if (sqlite3_bind_null(self->_handle, a3 + 1))
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sfsqlite: sqlite3_bind_null error", v4, 2u);
    }
  }
}

- (void)bindText:(id)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (v6)
    {
      if (sqlite3_bind_text(self->_handle, a4 + 1, [v6 UTF8String], -1, 0))
      {
        v8 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          SQL = self->_SQL;
          v13 = 134218242;
          v14 = a4;
          v15 = 2112;
          v16 = SQL;
          _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "sfsqlite: Error binding text at %ld: %@", &v13, 0x16u);
        }
      }
    }

    else
    {
      [(SFSQLiteStatement *)self bindNullAtIndex:a4];
    }
  }

  else
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_SQL;
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "sfsqlite: Statement is not reset: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (v6)
    {
      if (sqlite3_bind_blob(self->_handle, a4 + 1, [v6 bytes], objc_msgSend(v6, "length"), 0))
      {
        v8 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          SQL = self->_SQL;
          v13 = 134218242;
          v14 = a4;
          v15 = 2112;
          v16 = SQL;
          _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "sfsqlite: Error binding blob at %ld: %@", &v13, 0x16u);
        }
      }
    }

    else
    {
      [(SFSQLiteStatement *)self bindNullAtIndex:a4];
    }
  }

  else
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_SQL;
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "sfsqlite: Statement is not reset: %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_reset)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v13 = 138412290;
      v14 = SQL;
      v8 = "sfsqlite: Statement is not reset: %@";
      v9 = v6;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (sqlite3_bind_double(self->_handle, a4 + 1, a3))
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_SQL;
      v13 = 134218242;
      v14 = a4;
      v15 = 2112;
      v16 = v7;
      v8 = "sfsqlite: Error binding double at %ld: %@";
      v9 = v6;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_reset)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v13 = 138412290;
      v14 = SQL;
      v8 = "sfsqlite: Statement is not reset: %@";
      v9 = v6;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (sqlite3_bind_int64(self->_handle, a4 + 1, a3))
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_SQL;
      v13 = 134218242;
      v14 = a4;
      v15 = 2112;
      v16 = v7;
      v8 = "sfsqlite: Error binding int64 at %ld: %@";
      v9 = v6;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)bindInt:(int)a3 atIndex:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_reset)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v13 = 138412290;
      v14 = SQL;
      v8 = "sfsqlite: Statement is not reset: %@";
      v9 = v6;
      v10 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (sqlite3_bind_int(self->_handle, a4 + 1, a3))
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_SQL;
      v13 = 134218242;
      v14 = a4;
      v15 = 2112;
      v16 = v7;
      v8 = "sfsqlite: Error binding int at %ld: %@";
      v9 = v6;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_reset)
  {
    if (sqlite3_reset(self->_handle))
    {
      v3 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      SQL = self->_SQL;
      v8 = 138412290;
      v9 = SQL;
      v5 = "sfsqlite: Error resetting prepared statement: %@";
    }

    else
    {
      if (!sqlite3_clear_bindings(self->_handle))
      {
        [(NSMutableArray *)self->_temporaryBoundObjects removeAllObjects];
        self->_reset = 1;
        goto LABEL_10;
      }

      v3 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v6 = self->_SQL;
      v8 = 138412290;
      v9 = v6;
      v5 = "sfsqlite: Error clearing prepared statement bindings: %@";
    }

    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
    goto LABEL_9;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)step
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_reset)
  {
    self->_reset = 0;
  }

  v3 = sqlite3_step(self->_handle);
  if ((v3 & 0xFE) != 0x64)
  {
    [(SFSQLiteStatement *)self resetAfterStepError];
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v8[0] = 67109378;
      v8[1] = v3;
      v9 = 2112;
      v10 = SQL;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "sfsqlite: Failed to step (%d): %@", v8, 0x12u);
    }
  }

  result = v3 == 100;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resetAfterStepError
{
  if (!self->_reset)
  {
    sqlite3_reset(self->_handle);
    sqlite3_clear_bindings(self->_handle);
    [(NSMutableArray *)self->_temporaryBoundObjects removeAllObjects];
    self->_reset = 1;
  }
}

- (void)finalizeStatement
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_reset)
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v8 = 138412290;
      v9 = SQL;
      v5 = "sfsqlite: Statement not reset after last use: %@";
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (sqlite3_finalize(self->_handle))
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_SQL;
      v8 = 138412290;
      v9 = v4;
      v5 = "sfsqlite: Error finalizing prepared statement: %@";
LABEL_7:
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
}

- (SFSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SFSQLiteStatement;
  v10 = [(SFSQLiteStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_SQLite, v8);
    objc_storeStrong(&v11->_SQL, a4);
    v11->_handle = a5;
    v11->_reset = 1;
  }

  return v11;
}

@end
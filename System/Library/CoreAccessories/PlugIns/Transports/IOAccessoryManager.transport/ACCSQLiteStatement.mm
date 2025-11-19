@interface ACCSQLiteStatement
- (ACCSQLite)SQLite;
- (ACCSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5;
- (BOOL)step;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtIndex:(unint64_t)a3;
- (id)columnNameAtIndex:(unint64_t)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)retainedTemporaryBoundObject:(id)a3;
- (id)textAtIndex:(unint64_t)a3;
- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4;
- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4;
- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4;
- (void)bindInt:(int)a3 atIndex:(unint64_t)a4;
- (void)bindNullAtIndex:(unint64_t)a3;
- (void)bindText:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValue:(id)a3 atIndex:(unint64_t)a4;
- (void)bindValues:(id)a3;
- (void)finalizeStatement;
- (void)reset;
- (void)resetAfterStepError;
@end

@implementation ACCSQLiteStatement

- (ACCSQLiteStatement)initWithSQLite:(id)a3 SQL:(id)a4 handle:(sqlite3_stmt *)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ACCSQLiteStatement;
  v10 = [(ACCSQLiteStatement *)&v13 init];
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

- (void)finalizeStatement
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_finalize(self->_handle) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v8 = 138412290;
      v9 = SQL;
      v4 = MEMORY[0x277D86220];
      v5 = "[#ACCEventLogger] accsqlite: Error finalizing prepared statement: %@";
LABEL_7:
      _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_SQL;
    v8 = 138412290;
    v9 = v6;
    v4 = MEMORY[0x277D86220];
    v5 = "[#ACCEventLogger] accsqlite: Statement not reset after last use: %@";
    goto LABEL_7;
  }

  v7 = *MEMORY[0x277D85DE8];
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

- (BOOL)step
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    self->_reset = 0;
  }

  v3 = sqlite3_step(self->_handle);
  if ((v3 & 0xFE) != 0x64)
  {
    [(ACCSQLiteStatement *)self resetAfterStepError];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = SQL;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Failed to step (%d): %@", v7, 0x12u);
    }
  }

  result = v3 == 100;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_reset)
  {
    if (sqlite3_reset(self->_handle))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        SQL = self->_SQL;
        v8 = 138412290;
        v9 = SQL;
        v4 = MEMORY[0x277D86220];
        v5 = "[#ACCEventLogger] accsqlite: Error resetting prepared statement: %@";
LABEL_8:
        _os_log_impl(&dword_233656000, v4, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);
      }
    }

    else
    {
      if (!sqlite3_clear_bindings(self->_handle))
      {
        [(NSMutableArray *)self->_temporaryBoundObjects removeAllObjects];
        self->_reset = 1;
        goto LABEL_10;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_SQL;
        v8 = 138412290;
        v9 = v6;
        v4 = MEMORY[0x277D86220];
        v5 = "[#ACCEventLogger] accsqlite: Error clearing prepared statement bindings: %@";
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)bindInt:(int)a3 atIndex:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_int(self->_handle, a4 + 1, a3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      v13 = a4;
      v14 = 2112;
      v15 = SQL;
      v7 = MEMORY[0x277D86220];
      v8 = "[#ACCEventLogger] accsqlite: Error binding int at %ld: %@";
      v9 = 22;
LABEL_7:
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_SQL;
    v12 = 138412290;
    v13 = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindInt64:(int64_t)a3 atIndex:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_int64(self->_handle, a4 + 1, a3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      v13 = a4;
      v14 = 2112;
      v15 = SQL;
      v7 = MEMORY[0x277D86220];
      v8 = "[#ACCEventLogger] accsqlite: Error binding int64 at %ld: %@";
      v9 = 22;
LABEL_7:
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_SQL;
    v12 = 138412290;
    v13 = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindDouble:(double)a3 atIndex:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_double(self->_handle, a4 + 1, a3) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      v13 = a4;
      v14 = 2112;
      v15 = SQL;
      v7 = MEMORY[0x277D86220];
      v8 = "[#ACCEventLogger] accsqlite: Error binding double at %ld: %@";
      v9 = 22;
LABEL_7:
      _os_log_impl(&dword_233656000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_SQL;
    v12 = 138412290;
    v13 = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindBlob:(id)a3 atIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (!v6)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
      goto LABEL_10;
    }

    if (sqlite3_bind_blob(self->_handle, a4 + 1, [v6 bytes], objc_msgSend(v6, "length"), 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v14 = 134218242;
      v15 = a4;
      v16 = 2112;
      v17 = SQL;
      v9 = MEMORY[0x277D86220];
      v10 = "[#ACCEventLogger] accsqlite: Error binding blob at %ld: %@";
      v11 = 22;
LABEL_8:
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_SQL;
    v14 = 138412290;
    v15 = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v11 = 12;
    goto LABEL_8;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bindText:(id)a3 atIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_reset)
  {
    if (!v6)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
      goto LABEL_10;
    }

    if (sqlite3_bind_text(self->_handle, a4 + 1, [v6 UTF8String], -1, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v14 = 134218242;
      v15 = a4;
      v16 = 2112;
      v17 = SQL;
      v9 = MEMORY[0x277D86220];
      v10 = "[#ACCEventLogger] accsqlite: Error binding text at %ld: %@";
      v11 = 22;
LABEL_8:
      _os_log_impl(&dword_233656000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_SQL;
    v14 = 138412290;
    v15 = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v11 = 12;
    goto LABEL_8;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bindNullAtIndex:(unint64_t)a3
{
  if (sqlite3_bind_null(self->_handle, a3 + 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: sqlite3_bind_null error", v3, 2u);
    }
  }
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

- (void)bindValue:(id)a3 atIndex:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [ACCObjCType typeForValue:v6];
    if ([v7 isIntegerNumber])
    {
      if ([v7 size] <= 4)
      {
LABEL_4:
        -[ACCSQLiteStatement bindInt:atIndex:](self, "bindInt:atIndex:", [v6 intValue], a4);
LABEL_13:

        goto LABEL_14;
      }
    }

    else if ([v7 code] == 10)
    {
      goto LABEL_4;
    }

    -[ACCSQLiteStatement bindInt64:atIndex:](self, "bindInt64:atIndex:", [v6 longLongValue], a4);
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindBlob:v6 atIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [v6 getUUIDBytes:&v12];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v12 length:16];
LABEL_11:
    v7 = v8;
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v8];
    [(ACCSQLiteStatement *)self bindBlob:v9 atIndex:a4];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindText:v6 atIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindNullAtIndex:a4];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 timeIntervalSinceReferenceDate];
    [(ACCSQLiteStatement *)self bindDouble:a4 atIndex:?];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 absoluteString];
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v7];
    [(ACCSQLiteStatement *)self bindText:v9 atIndex:a4];
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12) = 138412290;
    *(&v12 + 4) = objc_opt_class();
    v11 = *(&v12 + 4);
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Can't bind object of type %@", &v12, 0xCu);
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
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
      [(ACCSQLiteStatement *)self bindValue:v5 atIndex:v4];

      ++v4;
    }

    while (v4 < [v6 count]);
  }
}

- (id)columnNameAtIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = sqlite3_column_name(self->_handle, a3);

  return [v3 stringWithUTF8String:v4];
}

- (id)blobAtIndex:(unint64_t)a3
{
  v3 = a3;
  v5 = sqlite3_column_blob(self->_handle, a3);
  if (v5)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:{sqlite3_column_bytes(self->_handle, v3)}];
  }

  return v5;
}

- (id)textAtIndex:(unint64_t)a3
{
  v3 = sqlite3_column_text(self->_handle, a3);
  if (v3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(ACCSQLiteStatement *)self columnTypeAtIndex:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ACCSQLiteStatement int64AtIndex:](self, "int64AtIndex:", a3)}];
      goto LABEL_15;
    }

    if (v5 == 2)
    {
      v7 = MEMORY[0x277CCABB0];
      [(ACCSQLiteStatement *)self doubleAtIndex:a3];
      v8 = [v7 numberWithDouble:?];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v8 = [(ACCSQLiteStatement *)self textAtIndex:a3];
        goto LABEL_15;
      case 4:
        v8 = [(ACCSQLiteStatement *)self blobAtIndex:a3];
        goto LABEL_15;
      case 5:
        goto LABEL_14;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v6;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: Unexpected column type: %d", v11, 8u);
  }

LABEL_14:
  v8 = 0;
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)allObjects
{
  v3 = [(ACCSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(ACCSQLiteStatement *)self objectAtIndex:i];
      if (v6)
      {
        [v4 setObject:v6 atIndexedSubscript:i];
      }

      else
      {
        v7 = [MEMORY[0x277CBEB68] null];
        [v4 setObject:v7 atIndexedSubscript:i];
      }
    }
  }

  return v4;
}

- (id)allObjectsByColumnName
{
  v3 = [(ACCSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = [(ACCSQLiteStatement *)self columnNameAtIndex:i];
      v7 = [(ACCSQLiteStatement *)self objectAtIndex:i];
      if (v7)
      {
        [v4 setObject:v7 forKeyedSubscript:v6];
      }
    }
  }

  return v4;
}

- (ACCSQLite)SQLite
{
  WeakRetained = objc_loadWeakRetained(&self->_SQLite);

  return WeakRetained;
}

@end
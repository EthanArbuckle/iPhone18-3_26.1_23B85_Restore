@interface ACCSQLiteStatement
- (ACCSQLite)SQLite;
- (ACCSQLiteStatement)initWithSQLite:(id)lite SQL:(id)l handle:(sqlite3_stmt *)handle;
- (BOOL)step;
- (id)allObjects;
- (id)allObjectsByColumnName;
- (id)blobAtIndex:(unint64_t)index;
- (id)columnNameAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (id)retainedTemporaryBoundObject:(id)object;
- (id)textAtIndex:(unint64_t)index;
- (void)bindBlob:(id)blob atIndex:(unint64_t)index;
- (void)bindDouble:(double)double atIndex:(unint64_t)index;
- (void)bindInt64:(int64_t)int64 atIndex:(unint64_t)index;
- (void)bindInt:(int)int atIndex:(unint64_t)index;
- (void)bindNullAtIndex:(unint64_t)index;
- (void)bindText:(id)text atIndex:(unint64_t)index;
- (void)bindValue:(id)value atIndex:(unint64_t)index;
- (void)bindValues:(id)values;
- (void)finalizeStatement;
- (void)reset;
- (void)resetAfterStepError;
@end

@implementation ACCSQLiteStatement

- (ACCSQLiteStatement)initWithSQLite:(id)lite SQL:(id)l handle:(sqlite3_stmt *)handle
{
  liteCopy = lite;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = ACCSQLiteStatement;
  v10 = [(ACCSQLiteStatement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_SQLite, liteCopy);
    objc_storeStrong(&v11->_SQL, l);
    v11->_handle = handle;
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

- (void)bindInt:(int)int atIndex:(unint64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_int(self->_handle, index + 1, int) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      indexCopy = index;
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
    indexCopy = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindInt64:(int64_t)int64 atIndex:(unint64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_int64(self->_handle, index + 1, int64) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      indexCopy = index;
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
    indexCopy = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindDouble:(double)double atIndex:(unint64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_reset)
  {
    if (sqlite3_bind_double(self->_handle, index + 1, double) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v12 = 134218242;
      indexCopy = index;
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
    indexCopy = v10;
    v7 = MEMORY[0x277D86220];
    v8 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v9 = 12;
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)bindBlob:(id)blob atIndex:(unint64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v7 = blobCopy;
  if (self->_reset)
  {
    if (!blobCopy)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:index];
      goto LABEL_10;
    }

    if (sqlite3_bind_blob(self->_handle, index + 1, [blobCopy bytes], objc_msgSend(blobCopy, "length"), 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v14 = 134218242;
      indexCopy = index;
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
    indexCopy = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v11 = 12;
    goto LABEL_8;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bindText:(id)text atIndex:(unint64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v7 = textCopy;
  if (self->_reset)
  {
    if (!textCopy)
    {
      [(ACCSQLiteStatement *)self bindNullAtIndex:index];
      goto LABEL_10;
    }

    if (sqlite3_bind_text(self->_handle, index + 1, [textCopy UTF8String], -1, 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      SQL = self->_SQL;
      v14 = 134218242;
      indexCopy = index;
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
    indexCopy = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "[#ACCEventLogger] accsqlite: Statement is not reset: %@";
    v11 = 12;
    goto LABEL_8;
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)bindNullAtIndex:(unint64_t)index
{
  if (sqlite3_bind_null(self->_handle, index + 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] accsqlite: sqlite3_bind_null error", v3, 2u);
    }
  }
}

- (id)retainedTemporaryBoundObject:(id)object
{
  objectCopy = object;
  temporaryBoundObjects = self->_temporaryBoundObjects;
  if (!temporaryBoundObjects)
  {
    v6 = objc_opt_new();
    v7 = self->_temporaryBoundObjects;
    self->_temporaryBoundObjects = v6;

    temporaryBoundObjects = self->_temporaryBoundObjects;
  }

  [(NSMutableArray *)temporaryBoundObjects addObject:objectCopy];

  return objectCopy;
}

- (void)bindValue:(id)value atIndex:(unint64_t)index
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [ACCObjCType typeForValue:valueCopy];
    if ([absoluteString isIntegerNumber])
    {
      if ([absoluteString size] <= 4)
      {
LABEL_4:
        -[ACCSQLiteStatement bindInt:atIndex:](self, "bindInt:atIndex:", [valueCopy intValue], index);
LABEL_13:

        goto LABEL_14;
      }
    }

    else if ([absoluteString code] == 10)
    {
      goto LABEL_4;
    }

    -[ACCSQLiteStatement bindInt64:atIndex:](self, "bindInt64:atIndex:", [valueCopy longLongValue], index);
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindBlob:valueCopy atIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    [valueCopy getUUIDBytes:&v12];
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v12 length:16];
LABEL_11:
    absoluteString = v8;
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:v8];
    [(ACCSQLiteStatement *)self bindBlob:v9 atIndex:index];
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindText:valueCopy atIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCSQLiteStatement *)self bindNullAtIndex:index];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy timeIntervalSinceReferenceDate];
    [(ACCSQLiteStatement *)self bindDouble:index atIndex:?];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:valueCopy];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = [valueCopy absoluteString];
    v9 = [(ACCSQLiteStatement *)self retainedTemporaryBoundObject:absoluteString];
    [(ACCSQLiteStatement *)self bindText:v9 atIndex:index];
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

- (void)bindValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [valuesCopy objectAtIndexedSubscript:v4];
      [(ACCSQLiteStatement *)self bindValue:v5 atIndex:v4];

      ++v4;
    }

    while (v4 < [valuesCopy count]);
  }
}

- (id)columnNameAtIndex:(unint64_t)index
{
  v3 = MEMORY[0x277CCACA8];
  v4 = sqlite3_column_name(self->_handle, index);

  return [v3 stringWithUTF8String:v4];
}

- (id)blobAtIndex:(unint64_t)index
{
  indexCopy = index;
  v5 = sqlite3_column_blob(self->_handle, index);
  if (v5)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:{sqlite3_column_bytes(self->_handle, indexCopy)}];
  }

  return v5;
}

- (id)textAtIndex:(unint64_t)index
{
  v3 = sqlite3_column_text(self->_handle, index);
  if (v3)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  }

  return v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [(ACCSQLiteStatement *)self columnTypeAtIndex:?];
  v6 = v5;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ACCSQLiteStatement int64AtIndex:](self, "int64AtIndex:", index)}];
      goto LABEL_15;
    }

    if (v5 == 2)
    {
      v7 = MEMORY[0x277CCABB0];
      [(ACCSQLiteStatement *)self doubleAtIndex:index];
      v8 = [v7 numberWithDouble:?];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v8 = [(ACCSQLiteStatement *)self textAtIndex:index];
        goto LABEL_15;
      case 4:
        v8 = [(ACCSQLiteStatement *)self blobAtIndex:index];
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
  columnCount = [(ACCSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:columnCount];
  if (columnCount)
  {
    for (i = 0; i != columnCount; ++i)
    {
      v6 = [(ACCSQLiteStatement *)self objectAtIndex:i];
      if (v6)
      {
        [v4 setObject:v6 atIndexedSubscript:i];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
        [v4 setObject:null atIndexedSubscript:i];
      }
    }
  }

  return v4;
}

- (id)allObjectsByColumnName
{
  columnCount = [(ACCSQLiteStatement *)self columnCount];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:columnCount];
  if (columnCount)
  {
    for (i = 0; i != columnCount; ++i)
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
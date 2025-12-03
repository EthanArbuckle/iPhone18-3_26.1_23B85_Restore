@interface ASUSQLiteCursor
- (double)doubleForColumnName:(id)name;
- (id)URLForColumnName:(id)name;
- (id)UUIDForColumnName:(id)name;
- (id)dataForColumnIndex:(int)index;
- (id)dataForColumnName:(id)name;
- (id)dateForColumnIndex:(int)index;
- (id)dateForColumnName:(id)name;
- (id)dictionaryWithValuesForColumnNames:(id)names;
- (id)numberForColumnIndex:(int)index;
- (id)numberForColumnName:(id)name;
- (id)stringForColumnIndex:(int)index;
- (id)stringForColumnName:(id)name;
- (int)intForColumnName:(id)name;
- (int64_t)int64ForColumnName:(id)name;
- (sqlite3_stmt)initWithStatement:(sqlite3_stmt *)statement;
- (void)dealloc;
@end

@implementation ASUSQLiteCursor

- (sqlite3_stmt)initWithStatement:(sqlite3_stmt *)statement
{
  v4 = a2;
  if (statement)
  {
    v19.receiver = statement;
    v19.super_class = ASUSQLiteCursor;
    v5 = objc_msgSendSuper2(&v19, sel_init);
    statement = v5;
    if (v5)
    {
      v6 = v4 ? v4[2] : 0;
      v5[6] = v6;
      objc_storeStrong(v5 + 7, a2);
      v7 = sqlite3_column_count(statement[6]);
      *(statement + 2) = v7;
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
      v9 = statement[5];
      statement[5] = v8;

      statement[2] = malloc_type_calloc(*(statement + 2), 1uLL, 0x100004077774924uLL);
      if (*(statement + 2) >= 1)
      {
        for (i = 0; i < *(statement + 2); ++i)
        {
          v11 = statement[5];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_name(statement[6], i)}];
          [(sqlite3_stmt *)v11 addObject:v12];

          v13 = sqlite3_column_decltype(statement[6], i);
          if (v13)
          {
            v14 = v13;
            if (!strcmp(v13, "DATETIME"))
            {
              *(statement[2] + i) = 1;
              continue;
            }

            if (!strcmp(v14, "JSON"))
            {
              v16 = statement[2];
              v17 = 2;
              goto LABEL_20;
            }

            if (!strcmp(v14, "UUID"))
            {
              v16 = statement[2];
              v17 = 3;
              goto LABEL_20;
            }

            if (!strcmp(v14, "URL"))
            {
              v16 = statement[2];
              v17 = 4;
              goto LABEL_20;
            }

            v15 = strcmp(v14, "STRING");
            v16 = statement[2];
            if (!v15)
            {
              v17 = 5;
LABEL_20:
              *(v16 + i) = v17;
              continue;
            }
          }

          else
          {
            v16 = statement[2];
          }

          *(v16 + i) = 0;
        }
      }
    }
  }

  return statement;
}

- (void)dealloc
{
  free(self->_columnDeclaredTypes);
  v3.receiver = self;
  v3.super_class = ASUSQLiteCursor;
  [(ASUSQLiteCursor *)&v3 dealloc];
}

- (id)dataForColumnIndex:(int)index
{
  if (sqlite3_column_type(self->_statement, index) == 5)
  {
    return 0;
  }

  v6 = sqlite3_column_blob(self->_statement, index);
  v7 = sqlite3_column_bytes(self->_statement, index);
  v8 = objc_alloc(MEMORY[0x277CBEA90]);

  return [v8 initWithBytes:v6 length:v7];
}

- (id)dataForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dataForColumnIndex:?];
  }

  return v5;
}

- (id)dateForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    v7 = sqlite3_column_int64(self->_statement, index);
  }

  else
  {
    if (v5 != 2)
    {
      return 0;
    }

    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    v7 = sqlite3_column_double(self->_statement, index);
  }

  return [v6 initWithTimeIntervalSinceReferenceDate:v7];
}

- (id)dateForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dateForColumnIndex:?];
  }

  return v5;
}

- (double)doubleForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
    if (v5 < 0)
    {
      v6 = 0.0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_double(self->_statement, v5);
LABEL_5:

  return v6;
}

- (int)intForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
    if (v5 < 0)
    {
      v6 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_int(self->_statement, v5);
LABEL_5:

  return v6;
}

- (int64_t)int64ForColumnName:(id)name
{
  nameCopy = name;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:nameCopy];
    if (v5 < 0)
    {
      v6 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_int64(self->_statement, v5);
LABEL_5:

  return v6;
}

- (id)numberForColumnIndex:(int)index
{
  v5 = sqlite3_column_type(self->_statement, index);
  if (v5 == 1)
  {
    v9 = objc_alloc(MEMORY[0x277CCABB0]);
    v10 = sqlite3_column_int64(self->_statement, index);

    return [v9 initWithLongLong:v10];
  }

  else if (v5 == 2)
  {
    v6 = objc_alloc(MEMORY[0x277CCABB0]);
    v7 = sqlite3_column_double(self->_statement, index);

    return [v6 initWithDouble:v7];
  }

  else
  {
    return 0;
  }
}

- (id)numberForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self numberForColumnIndex:?];
  }

  return v5;
}

- (id)stringForColumnIndex:(int)index
{
  if (sqlite3_column_type(self->_statement, index) == 5)
  {
    return 0;
  }

  v5 = sqlite3_column_text(self->_statement, index);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v7 initWithUTF8String:v6];
}

- (id)stringForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self stringForColumnIndex:?];
  }

  return v5;
}

- (id)UUIDForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self UUIDForColumnIndex:?];
  }

  return v5;
}

- (id)URLForColumnName:(id)name
{
  nameCopy = name;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:nameCopy]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self URLForColumnIndex:?];
  }

  return v5;
}

- (id)dictionaryWithValuesForColumnNames:(id)names
{
  namesCopy = names;
  columnKeySet = self->_columnKeySet;
  if (!columnKeySet)
  {
    v6 = [MEMORY[0x277CBEAC0] sharedKeySetForKeys:self->_columnNames];
    v7 = self->_columnKeySet;
    self->_columnKeySet = v6;

    columnKeySet = self->_columnKeySet;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithSharedKeySet:columnKeySet];
  columnNames = self->_columnNames;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ASUSQLiteCursor_dictionaryWithValuesForColumnNames___block_invoke;
  v14[3] = &unk_278C97830;
  v15 = namesCopy;
  v16 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = namesCopy;
  [(NSMutableArray *)columnNames enumerateObjectsUsingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

void __54__ASUSQLiteCursor_dictionaryWithValuesForColumnNames___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = ASUSQLiteCopyFoundationValue(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

@end
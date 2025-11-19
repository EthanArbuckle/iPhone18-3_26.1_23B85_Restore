@interface ASUSQLiteCursor
- (double)doubleForColumnName:(id)a3;
- (id)URLForColumnName:(id)a3;
- (id)UUIDForColumnName:(id)a3;
- (id)dataForColumnIndex:(int)a3;
- (id)dataForColumnName:(id)a3;
- (id)dateForColumnIndex:(int)a3;
- (id)dateForColumnName:(id)a3;
- (id)dictionaryWithValuesForColumnNames:(id)a3;
- (id)numberForColumnIndex:(int)a3;
- (id)numberForColumnName:(id)a3;
- (id)stringForColumnIndex:(int)a3;
- (id)stringForColumnName:(id)a3;
- (int)intForColumnName:(id)a3;
- (int64_t)int64ForColumnName:(id)a3;
- (sqlite3_stmt)initWithStatement:(sqlite3_stmt *)a1;
- (void)dealloc;
@end

@implementation ASUSQLiteCursor

- (sqlite3_stmt)initWithStatement:(sqlite3_stmt *)a1
{
  v4 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = ASUSQLiteCursor;
    v5 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v5;
    if (v5)
    {
      v6 = v4 ? v4[2] : 0;
      v5[6] = v6;
      objc_storeStrong(v5 + 7, a2);
      v7 = sqlite3_column_count(a1[6]);
      *(a1 + 2) = v7;
      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
      v9 = a1[5];
      a1[5] = v8;

      a1[2] = malloc_type_calloc(*(a1 + 2), 1uLL, 0x100004077774924uLL);
      if (*(a1 + 2) >= 1)
      {
        for (i = 0; i < *(a1 + 2); ++i)
        {
          v11 = a1[5];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_name(a1[6], i)}];
          [(sqlite3_stmt *)v11 addObject:v12];

          v13 = sqlite3_column_decltype(a1[6], i);
          if (v13)
          {
            v14 = v13;
            if (!strcmp(v13, "DATETIME"))
            {
              *(a1[2] + i) = 1;
              continue;
            }

            if (!strcmp(v14, "JSON"))
            {
              v16 = a1[2];
              v17 = 2;
              goto LABEL_20;
            }

            if (!strcmp(v14, "UUID"))
            {
              v16 = a1[2];
              v17 = 3;
              goto LABEL_20;
            }

            if (!strcmp(v14, "URL"))
            {
              v16 = a1[2];
              v17 = 4;
              goto LABEL_20;
            }

            v15 = strcmp(v14, "STRING");
            v16 = a1[2];
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
            v16 = a1[2];
          }

          *(v16 + i) = 0;
        }
      }
    }
  }

  return a1;
}

- (void)dealloc
{
  free(self->_columnDeclaredTypes);
  v3.receiver = self;
  v3.super_class = ASUSQLiteCursor;
  [(ASUSQLiteCursor *)&v3 dealloc];
}

- (id)dataForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    return 0;
  }

  v6 = sqlite3_column_blob(self->_statement, a3);
  v7 = sqlite3_column_bytes(self->_statement, a3);
  v8 = objc_alloc(MEMORY[0x277CBEA90]);

  return [v8 initWithBytes:v6 length:v7];
}

- (id)dataForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dataForColumnIndex:?];
  }

  return v5;
}

- (id)dateForColumnIndex:(int)a3
{
  v5 = sqlite3_column_type(self->_statement, a3);
  if (v5 == 1)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    v7 = sqlite3_column_int64(self->_statement, a3);
  }

  else
  {
    if (v5 != 2)
    {
      return 0;
    }

    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    v7 = sqlite3_column_double(self->_statement, a3);
  }

  return [v6 initWithTimeIntervalSinceReferenceDate:v7];
}

- (id)dateForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self dateForColumnIndex:?];
  }

  return v5;
}

- (double)doubleForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
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

- (int)intForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
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

- (int64_t)int64ForColumnName:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(NSMutableArray *)self->_columnNames indexOfObject:v4];
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

- (id)numberForColumnIndex:(int)a3
{
  v5 = sqlite3_column_type(self->_statement, a3);
  if (v5 == 1)
  {
    v9 = objc_alloc(MEMORY[0x277CCABB0]);
    v10 = sqlite3_column_int64(self->_statement, a3);

    return [v9 initWithLongLong:v10];
  }

  else if (v5 == 2)
  {
    v6 = objc_alloc(MEMORY[0x277CCABB0]);
    v7 = sqlite3_column_double(self->_statement, a3);

    return [v6 initWithDouble:v7];
  }

  else
  {
    return 0;
  }
}

- (id)numberForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self numberForColumnIndex:?];
  }

  return v5;
}

- (id)stringForColumnIndex:(int)a3
{
  if (sqlite3_column_type(self->_statement, a3) == 5)
  {
    return 0;
  }

  v5 = sqlite3_column_text(self->_statement, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v7 initWithUTF8String:v6];
}

- (id)stringForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self stringForColumnIndex:?];
  }

  return v5;
}

- (id)UUIDForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self UUIDForColumnIndex:?];
  }

  return v5;
}

- (id)URLForColumnName:(id)a3
{
  v4 = a3;
  if (self && ([(NSMutableArray *)self->_columnNames indexOfObject:v4]& 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(ASUSQLiteCursor *)self URLForColumnIndex:?];
  }

  return v5;
}

- (id)dictionaryWithValuesForColumnNames:(id)a3
{
  v4 = a3;
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
  v15 = v4;
  v16 = v8;
  v17 = self;
  v10 = v8;
  v11 = v4;
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
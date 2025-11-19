@interface HKTableFormatter
+ (id)formatterForCodableCondensedWorkouts;
- (HKTableFormatter)init;
- (HKTableFormatter)initWithColumnTitles:(id)a3;
- (id)_columnWidths;
- (id)_formattedTableHeaderForColumnWidths:(id)a3;
- (id)formattedTable;
- (id)formattedTableHeader;
- (id)stringFromDate:(id)a3 fallback:(id)a4;
- (id)stringFromTimeInterval:(double)a3;
- (int64_t)rowCount;
- (void)_appendColumn:(id)a3 width:(int64_t)a4 padding:(id)a5 row:(id)a6;
- (void)_enumerateFormattedRowsWithColumnWidths:(id)a3 handler:(id)a4;
- (void)appendEmptyRow;
- (void)appendHeterogenousRow:(id)a3;
- (void)appendRow:(id)a3;
- (void)appendWorkout:(id)a3;
- (void)enumerateFormattedRows:(id)a3;
@end

@implementation HKTableFormatter

+ (id)formatterForCodableCondensedWorkouts
{
  v2 = [[HKTableFormatter alloc] initWithColumnTitles:&unk_1F0686970];

  return v2;
}

- (void)appendWorkout:(id)a3
{
  v35[11] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", -[HKTableFormatter rowCount](self, "rowCount")];
  v35[0] = v34;
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v4, "persistentID")];
  v35[1] = v33;
  v5 = MEMORY[0x1E696AFB0];
  v32 = [v4 uuid];
  v31 = [v5 hk_UUIDWithData:?];
  v30 = [v31 UUIDString];
  v35[2] = v30;
  v6 = 0x1E695D000;
  v7 = MEMORY[0x1E695DF00];
  [v4 creationDate];
  v29 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v28 = [(HKTableFormatter *)self stringFromDate:?];
  v35[3] = v28;
  v8 = MEMORY[0x1E695DF00];
  [v4 startDate];
  v27 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v26 = [(HKTableFormatter *)self stringFromDate:?];
  v35[4] = v26;
  v9 = MEMORY[0x1E695DF00];
  [v4 endDate];
  v25 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v24 = [(HKTableFormatter *)self stringFromDate:?];
  v35[5] = v24;
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "type")}];
  v22 = [v23 stringValue];
  v35[6] = v22;
  v21 = +[HKWorkout _stringFromWorkoutActivityType:](HKWorkout, "_stringFromWorkoutActivityType:", [v4 type]);
  v10 = [v21 substringFromIndex:21];
  v11 = v10;
  v12 = @"Unknown";
  if (v10)
  {
    v12 = v10;
  }

  v35[7] = v12;
  [v4 duration];
  v13 = [(HKTableFormatter *)self stringFromTimeInterval:?];
  v35[8] = v13;
  v14 = [v4 hasCondenserVersion];
  if (v14)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v4, "condenserVersion")];
  }

  else
  {
    v15 = &stru_1F05FF230;
  }

  v35[9] = v15;
  v16 = [v4 hasCondenserDate];
  if (v16)
  {
    v17 = MEMORY[0x1E695DF00];
    [v4 condenserDate];
    v6 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    v18 = [(HKTableFormatter *)self stringFromDate:v6];
  }

  else
  {
    v18 = &stru_1F05FF230;
  }

  v35[10] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:11];
  [(HKTableFormatter *)self appendRow:v19];

  if (v16)
  {
  }

  if (v14)
  {
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (HKTableFormatter)initWithColumnTitles:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKTableFormatter;
  v5 = [(HKTableFormatter *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    titles = v5->_titles;
    v5->_titles = v6;

    if (v5->_titles)
    {
      v8 = [v4 hk_map:&__block_literal_global_120];
      columns = v5->_columns;
      v5->_columns = v8;
    }
  }

  return v5;
}

id __41__HKTableFormatter_initWithColumnTitles___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v0;
}

- (HKTableFormatter)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)appendRow:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_columns)
  {
    v7 = [v5 hk_map:&__block_literal_global_10_0];
    columns = self->_columns;
    self->_columns = v7;
  }

  v9 = [v6 count];
  if (v9 != [(NSArray *)self->_columns count])
  {
    [(HKTableFormatter *)a2 appendRow:?];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__HKTableFormatter_appendRow___block_invoke_2;
  v10[3] = &unk_1E7384160;
  v10[4] = self;
  [v6 enumerateObjectsUsingBlock:v10];
}

id __30__HKTableFormatter_appendRow___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);

  return v0;
}

void __30__HKTableFormatter_appendRow___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v6 addObject:v5];
}

- (void)appendHeterogenousRow:(id)a3
{
  v4 = [a3 hk_map:&__block_literal_global_24];
  [(HKTableFormatter *)self appendRow:v4];
}

- (void)appendEmptyRow
{
  v3 = [(NSArray *)self->_titles hk_map:&__block_literal_global_27];
  [(HKTableFormatter *)self appendRow:v3];
}

- (int64_t)rowCount
{
  result = self->_columns;
  if (result)
  {
    v3 = [result firstObject];
    v4 = [v3 count];

    return v4;
  }

  return result;
}

- (id)_columnWidths
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)self->_columns count])
  {
    v4 = 0;
    do
    {
      titles = self->_titles;
      if (titles)
      {
        v6 = [(NSArray *)titles objectAtIndexedSubscript:v4];
        v7 = [v6 length];
      }

      else
      {
        v7 = 0;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [(NSArray *)self->_columns objectAtIndexedSubscript:v4, 0];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v18 + 1) + 8 * i) length];
            if (v7 <= v13)
            {
              v7 = v13;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      if (v7 + 4 <= 8)
      {
        v14 = 8;
      }

      else
      {
        v14 = v7 + 4;
      }

      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      [v3 addObject:v15];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_columns count]);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_appendColumn:(id)a3 width:(int64_t)a4 padding:(id)a5 row:(id)a6
{
  v15 = a3;
  v11 = a5;
  v12 = a6;
  if (![v11 length])
  {
    [HKTableFormatter _appendColumn:a2 width:self padding:? row:?];
  }

  [v12 appendString:v15];
  v13 = [v15 length];
  if (v13 < a4)
  {
    v14 = v13;
    do
    {
      [v12 appendString:v11];
      v14 += [v11 length];
    }

    while (v14 < a4);
  }
}

- (id)formattedTableHeader
{
  v3 = [(HKTableFormatter *)self _columnWidths];
  v4 = [(HKTableFormatter *)self _formattedTableHeaderForColumnWidths:v3];

  return v4;
}

- (id)_formattedTableHeaderForColumnWidths:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [*(*(&v19 + 1) + 8 * i) integerValue];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  title = self->_title;
  if (title)
  {
    [v10 appendFormat:@"%*s\n", (v7 - -[NSString length](title, "length")) >> 1, ""];
  }

  if (self->_titles)
  {
    if ([(NSArray *)self->_columns count])
    {
      v12 = 0;
      do
      {
        v13 = [(NSArray *)self->_titles objectAtIndexedSubscript:v12];
        v14 = [v4 objectAtIndexedSubscript:v12];
        -[HKTableFormatter _appendColumn:width:padding:row:](self, "_appendColumn:width:padding:row:", v13, [v14 integerValue], @" ", v10);

        ++v12;
      }

      while (v12 < [(NSArray *)self->_columns count]);
    }

    [v10 appendString:@"\n"];
    if ([(NSArray *)self->_columns count])
    {
      v15 = 0;
      do
      {
        v16 = [v4 objectAtIndexedSubscript:v15];
        -[HKTableFormatter _appendColumn:width:padding:row:](self, "_appendColumn:width:padding:row:", &stru_1F05FF230, [v16 integerValue], @"-", v10);

        ++v15;
      }

      while (v15 < [(NSArray *)self->_columns count]);
    }

    [v10 appendString:@"\n"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)enumerateFormattedRows:(id)a3
{
  v4 = a3;
  v5 = [(HKTableFormatter *)self _columnWidths];
  [(HKTableFormatter *)self _enumerateFormattedRowsWithColumnWidths:v5 handler:v4];
}

- (void)_enumerateFormattedRowsWithColumnWidths:(id)a3 handler:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([(NSArray *)self->_columns count])
  {
    v7 = [(NSArray *)self->_columns objectAtIndexedSubscript:0];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      v15 = v6 + 16;
      do
      {
        v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
        if ([(NSArray *)self->_columns count])
        {
          v11 = 0;
          do
          {
            v12 = [(NSArray *)self->_columns objectAtIndexedSubscript:v11, v15];
            v13 = [v12 objectAtIndexedSubscript:v9];
            v14 = [v16 objectAtIndexedSubscript:v11];
            -[HKTableFormatter _appendColumn:width:padding:row:](self, "_appendColumn:width:padding:row:", v13, [v14 integerValue], @" ", v10);

            ++v11;
          }

          while (v11 < [(NSArray *)self->_columns count]);
        }

        (*(v6 + 2))(v6, v9, v10);

        ++v9;
      }

      while (v9 != v8);
    }
  }
}

- (id)formattedTable
{
  v3 = [(HKTableFormatter *)self _columnWidths];
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = [(HKTableFormatter *)self _formattedTableHeaderForColumnWidths:v3];
  v6 = [v4 initWithString:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__HKTableFormatter_formattedTable__block_invoke;
  v9[3] = &unk_1E73841A8;
  v7 = v6;
  v10 = v7;
  [(HKTableFormatter *)self _enumerateFormattedRowsWithColumnWidths:v3 handler:v9];

  return v7;
}

- (id)stringFromDate:(id)a3 fallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_dateFormatter)
  {
    if (v6)
    {
LABEL_3:
      v8 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v9;

    [(NSDateFormatter *)self->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v8 = v7;
LABEL_6:
  v11 = v8;

  return v11;
}

- (id)stringFromTimeInterval:(double)a3
{
  v6 = 0;
  v7 = 0;
  v5 = 0.0;
  HKSeparateTimeIntervalComponents(1, &v7, &v6, &v5, a3);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld:%02ld:%02ld", v7, v6, v5];

  return v3;
}

- (void)appendRow:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKTableFormatter.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"row.count == _columns.count"}];
}

- (void)_appendColumn:(uint64_t)a1 width:(uint64_t)a2 padding:row:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKTableFormatter.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"padding.length > 0"}];
}

@end
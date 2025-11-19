@interface AMSSQLiteQueryResults
- (AMSSQLiteQueryResults)initWithStatement:(id)a3;
- (BOOL)hasRows;
- (NSNumber)firstNumberValue;
- (int64_t)firstInt64Value;
- (void)enumerateRowsUsingBlock:(id)a3;
@end

@implementation AMSSQLiteQueryResults

- (int64_t)firstInt64Value
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__AMSSQLiteQueryResults_firstInt64Value__block_invoke;
  v4[3] = &unk_1E73BC308;
  v4[4] = &v5;
  [(AMSSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__AMSSQLiteQueryResults_firstInt64Value__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 int64ForColumnIndex:0];
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

- (BOOL)hasRows
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__AMSSQLiteQueryResults_hasRows__block_invoke;
  v4[3] = &unk_1E73BC308;
  v4[4] = &v5;
  [(AMSSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__AMSSQLiteQueryResults_hasRows__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

- (AMSSQLiteQueryResults)initWithStatement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSQLiteQueryResults;
  v6 = [(AMSSQLiteQueryResults *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statement, a3);
  }

  return v7;
}

- (void)enumerateRowsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [[AMSSQLiteCursor alloc] initWithStatement:self->_statement];
  v6 = [(AMSSQLiteStatement *)self->_statement sqlite3_stmt];
  v7 = [(AMSSQLiteStatement *)self->_statement connection];
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AMSSQLiteQueryResults_enumerateRowsUsingBlock___block_invoke;
  v13[3] = &unk_1E73BC358;
  v16 = v6;
  v8 = v4;
  v15 = v8;
  v9 = v5;
  v14 = v9;
  v10 = [v7 executeWithError:&v17 usingBlock:v13];
  v11 = v17;

  if (v10)
  {
    [(AMSSQLiteStatement *)self->_statement reset];
  }

  else
  {
    v12 = 0;
    (*(v8 + 2))(v8, 0, v11, &v12);
  }
}

uint64_t __49__AMSSQLiteQueryResults_enumerateRowsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

- (NSNumber)firstNumberValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__63;
  v9 = __Block_byref_object_dispose__63;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AMSSQLiteQueryResults_firstNumberValue__block_invoke;
  v4[3] = &unk_1E73BC308;
  v4[4] = &v5;
  [(AMSSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__AMSSQLiteQueryResults_firstNumberValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 numberForColumnIndex:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

@end
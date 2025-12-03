@interface ASUSQLiteQueryResults
- (BOOL)hasRows;
- (NSNumber)firstNumberValue;
- (id)initWithStatement:(id *)statement;
- (int64_t)firstInt64Value;
- (void)enumerateRowsUsingBlock:(id)block;
@end

@implementation ASUSQLiteQueryResults

- (id)initWithStatement:(id *)statement
{
  v4 = a2;
  if (statement)
  {
    v7.receiver = statement;
    v7.super_class = ASUSQLiteQueryResults;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    statement = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return statement;
}

- (void)enumerateRowsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [[ASUSQLiteCursor alloc] initWithStatement:?];
  statement = self->_statement;
  if (statement)
  {
    p_connection = &statement->_connection;
    statement = statement->_connection;
    v7 = p_connection[1];
  }

  else
  {
    v7 = 0;
  }

  v9 = statement;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__ASUSQLiteQueryResults_enumerateRowsUsingBlock___block_invoke;
  v15[3] = &unk_278C977E0;
  v18 = v7;
  v10 = blockCopy;
  v17 = v10;
  v11 = v5;
  v16 = v11;
  if (!v9)
  {

    v13 = 0;
    goto LABEL_8;
  }

  v12 = [(ASUSQLiteConnection *)v9 _executeWithError:v15 usingBlock:?];
  v13 = v19;

  if (!v12)
  {
LABEL_8:
    v14 = 0;
    (*(v10 + 2))(v10, 0, v13, &v14);
    goto LABEL_9;
  }

  [(ASUSQLiteStatement *)self->_statement reset];
LABEL_9:
}

uint64_t __49__ASUSQLiteQueryResults_enumerateRowsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

- (int64_t)firstInt64Value
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__ASUSQLiteQueryResults_firstInt64Value__block_invoke;
  v4[3] = &unk_278C97808;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__ASUSQLiteQueryResults_firstInt64Value__block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
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

- (NSNumber)firstNumberValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__ASUSQLiteQueryResults_firstNumberValue__block_invoke;
  v4[3] = &unk_278C97808;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__ASUSQLiteQueryResults_firstNumberValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (BOOL)hasRows
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__ASUSQLiteQueryResults_hasRows__block_invoke;
  v4[3] = &unk_278C97808;
  v4[4] = &v5;
  [(ASUSQLiteQueryResults *)self enumerateRowsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __32__ASUSQLiteQueryResults_hasRows__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

@end
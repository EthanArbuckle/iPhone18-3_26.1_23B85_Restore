@interface _NSPersistentHistoryTransactionPredicateParser
- (BOOL)parse:(id *)a3;
- (_NSPersistentHistoryTransactionPredicateParser)initWithPredicate:(id)a3;
- (void)dealloc;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation _NSPersistentHistoryTransactionPredicateParser

- (void)dealloc
{
  self->_predicate = 0;

  self->_storeTokens = 0;
  self->_localError = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryTransactionPredicateParser;
  [(_NSPersistentHistoryTransactionPredicateParser *)&v3 dealloc];
}

- (_NSPersistentHistoryTransactionPredicateParser)initWithPredicate:(id)a3
{
  v4 = [(_NSPersistentHistoryTransactionPredicateParser *)self init];
  if (v4)
  {
    v4->_predicate = [a3 copy];
    v4->_storeTokens = objc_alloc_init(MEMORY[0x1E695DF90]);
    *&v4->_hasDate = 0;
    v4->_localError = 0;
  }

  return v4;
}

- (BOOL)parse:(id *)a3
{
  predicate = self->_predicate;
  if (!predicate)
  {
    return 1;
  }

  v6 = 1;
  [(NSPredicate *)predicate acceptVisitor:self flags:1];
  localError = self->_localError;
  if (localError)
  {
    v6 = 0;
    if (a3)
    {
      *a3 = localError;
    }
  }

  return v6;
}

- (void)visitPredicateExpression:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (self->_localError)
  {
    goto LABEL_2;
  }

  if ([a3 expressionType])
  {
    if ([a3 expressionType] != 10 || !objc_msgSend(objc_msgSend(a3, "keyPath"), "isEqualToString:", @"TIMESTAMP"))
    {
      goto LABEL_2;
    }

    if (self->_hasDate)
    {
      v16 = *MEMORY[0x1E696A578];
      v17 = @"Only one date predicate is allowed for history deletion.";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v17;
      v8 = &v16;
LABEL_8:
      v9 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      self->_localError = [v10 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v9];
LABEL_2:
      v3 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_20;
  }

  [a3 constantValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = [a3 constantValue];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(a3 "constantValue")])
    {
      self->_hasTimestamp = 1;
      goto LABEL_2;
    }

    [a3 constantValue];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !self->_hasTimestamp)
    {
      goto LABEL_2;
    }

    if (self->_hasDate)
    {
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Only one date predicate is allowed for history deletion.";
      v6 = MEMORY[0x1E695DF20];
      v7 = v19;
      v8 = &v18;
      goto LABEL_8;
    }

LABEL_20:
    self->_hasDate = 1;
    goto LABEL_2;
  }

  storeTokens = self->_storeTokens;
  v14 = [v12 storeTokens];
  v15 = *MEMORY[0x1E69E9840];

  [(NSMutableDictionary *)storeTokens addEntriesFromDictionary:v14];
}

@end
@interface _NSMemoryStorePredicateRemapper
+ (id)defaultInstance;
- (_NSMemoryStorePredicateRemapper)init;
- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context;
- (void)dealloc;
- (void)visitPredicate:(id)predicate;
@end

@implementation _NSMemoryStorePredicateRemapper

+ (id)defaultInstance
{
  result = defaultInstance_di;
  if (!defaultInstance_di)
  {
    result = objc_alloc_init(_NSMemoryStorePredicateRemapper);
    defaultInstance_di = result;
  }

  return result;
}

- (_NSMemoryStorePredicateRemapper)init
{
  v3.receiver = self;
  v3.super_class = _NSMemoryStorePredicateRemapper;
  return [(_NSMemoryStorePredicateRemapper *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSMemoryStorePredicateRemapper;
  [(_NSMemoryStorePredicateRemapper *)&v3 dealloc];
}

- (id)createPredicateForFetchFromPredicate:(id)predicate withContext:(id)context
{
  v6 = [predicate copy];
  v7 = v6;
  if (context && *(*(context + 21) + 8))
  {
    v8 = [_NSMemoryStorePredicateRemapper alloc];
    if (v8)
    {
      v9 = [(_NSMemoryStorePredicateRemapper *)v8 init];
      if (v9)
      {
        v9->_context = context;
      }
    }

    else
    {
      v9 = 0;
    }

    [v7 acceptVisitor:v9 flags:1];
  }

  else
  {
    [v6 acceptVisitor:self flags:1];
  }

  return v7;
}

- (void)visitPredicate:(id)predicate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    predicateOperator = [predicate predicateOperator];
    predicateOperatorType = [predicate predicateOperatorType];
    if ((predicateOperatorType & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v7 = -[NSEqualityPredicateOperator initWithOperatorType:modifier:negate:options:]([NSMemoryStoreEqualityPredicateOperator alloc], "initWithOperatorType:modifier:negate:options:", predicateOperatorType, [predicateOperator modifier], objc_msgSend(predicateOperator, "isNegation"), objc_msgSend(predicate, "options"));
    }

    else
    {
      if (predicateOperatorType != 10)
      {
        return;
      }

      v7 = -[NSPredicateOperator initWithOperatorType:modifier:options:]([NSMemoryStoreInPredicateOperator alloc], "initWithOperatorType:modifier:options:", 10, [predicateOperator modifier], objc_msgSend(predicateOperator, "options"));
    }

    v8 = v7;
    if (v7)
    {
      v9 = v7;
      if (self->_context)
      {
        [(NSMemoryStoreEqualityPredicateOperator *)v7 setContext:?];
        v8 = v9;
      }

      [predicate setPredicateOperator:v8];
    }
  }
}

@end
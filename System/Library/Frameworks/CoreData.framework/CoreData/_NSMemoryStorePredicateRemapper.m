@interface _NSMemoryStorePredicateRemapper
+ (id)defaultInstance;
- (_NSMemoryStorePredicateRemapper)init;
- (id)createPredicateForFetchFromPredicate:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)visitPredicate:(id)a3;
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

- (id)createPredicateForFetchFromPredicate:(id)a3 withContext:(id)a4
{
  v6 = [a3 copy];
  v7 = v6;
  if (a4 && *(*(a4 + 21) + 8))
  {
    v8 = [_NSMemoryStorePredicateRemapper alloc];
    if (v8)
    {
      v9 = [(_NSMemoryStorePredicateRemapper *)v8 init];
      if (v9)
      {
        v9->_context = a4;
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

- (void)visitPredicate:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 predicateOperator];
    v6 = [a3 predicateOperatorType];
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v7 = -[NSEqualityPredicateOperator initWithOperatorType:modifier:negate:options:]([NSMemoryStoreEqualityPredicateOperator alloc], "initWithOperatorType:modifier:negate:options:", v6, [v5 modifier], objc_msgSend(v5, "isNegation"), objc_msgSend(a3, "options"));
    }

    else
    {
      if (v6 != 10)
      {
        return;
      }

      v7 = -[NSPredicateOperator initWithOperatorType:modifier:options:]([NSMemoryStoreInPredicateOperator alloc], "initWithOperatorType:modifier:options:", 10, [v5 modifier], objc_msgSend(v5, "options"));
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

      [a3 setPredicateOperator:v8];
    }
  }
}

@end
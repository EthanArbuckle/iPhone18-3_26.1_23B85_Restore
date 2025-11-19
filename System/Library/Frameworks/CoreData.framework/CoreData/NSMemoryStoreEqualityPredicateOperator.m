@interface NSMemoryStoreEqualityPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (void)dealloc;
- (void)setContext:(id)a3;
@end

@implementation NSMemoryStoreEqualityPredicateOperator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMemoryStoreEqualityPredicateOperator;
  [(NSMemoryStoreEqualityPredicateOperator *)&v3 dealloc];
}

- (void)setContext:(id)a3
{
  context = self->_context;
  if (context != a3)
  {

    self->_context = a3;
  }
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = [a3 objectID];
    context = self->_context;
    if (context)
    {
      v8 = *(context->_additionalPrivateIvars + 1);
      if (v8)
      {
        v9 = [*v8 objectForKey:a3];
        if (v9)
        {
          a3 = v9;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = [a4 objectID];
    v10 = self->_context;
    if (v10)
    {
      v11 = *(v10->_additionalPrivateIvars + 1);
      if (v11)
      {
        v12 = [*v11 objectForKey:a3];
        if (v12)
        {
          a3 = v12;
        }
      }
    }
  }

  v14.receiver = self;
  v14.super_class = NSMemoryStoreEqualityPredicateOperator;
  return [(NSEqualityPredicateOperator *)&v14 performPrimitiveOperationUsingObject:a3 andObject:a4];
}

@end
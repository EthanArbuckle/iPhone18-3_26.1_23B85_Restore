@interface NSMemoryStoreEqualityPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (void)dealloc;
- (void)setContext:(id)context;
@end

@implementation NSMemoryStoreEqualityPredicateOperator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMemoryStoreEqualityPredicateOperator;
  [(NSMemoryStoreEqualityPredicateOperator *)&v3 dealloc];
}

- (void)setContext:(id)context
{
  context = self->_context;
  if (context != context)
  {

    self->_context = context;
  }
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    object = [object objectID];
    context = self->_context;
    if (context)
    {
      v8 = *(context->_additionalPrivateIvars + 1);
      if (v8)
      {
        v9 = [*v8 objectForKey:object];
        if (v9)
        {
          object = v9;
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    andObject = [andObject objectID];
    v10 = self->_context;
    if (v10)
    {
      v11 = *(v10->_additionalPrivateIvars + 1);
      if (v11)
      {
        v12 = [*v11 objectForKey:object];
        if (v12)
        {
          object = v12;
        }
      }
    }
  }

  v14.receiver = self;
  v14.super_class = NSMemoryStoreEqualityPredicateOperator;
  return [(NSEqualityPredicateOperator *)&v14 performPrimitiveOperationUsingObject:object andObject:andObject];
}

@end
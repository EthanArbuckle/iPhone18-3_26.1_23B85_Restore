@interface NSMemoryStoreInPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (void)dealloc;
- (void)setContext:(id)a3;
@end

@implementation NSMemoryStoreInPredicateOperator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSMemoryStoreInPredicateOperator;
  [(NSMemoryStoreInPredicateOperator *)&v3 dealloc];
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
  v37 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (a3 = [a3 objectID]) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [a4 count];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = &v27 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = a3;
    v29 = &v27;
    v28 = v7;
    if (v7 > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v27 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
    }

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v32 = 0u;
    v11 = [a4 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          v16 = v13;
          if (*v33 != v14)
          {
            objc_enumerationMutation(a4);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v17 = [v17 objectID];
          }

          context = self->_context;
          if (context)
          {
            v19 = *(context->_additionalPrivateIvars + 1);
            if (v19)
            {
              v20 = [*v19 objectForKey:v17];
              if (v20)
              {
                v17 = v20;
              }
            }
          }

          ++v13;
          *&v10[8 * v16] = v17;
        }

        v12 = [a4 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

    v21 = v28;
    if (v28)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:v28];
      v23 = v21 >= 0x201;
      a3 = v30;
      if (v23)
      {
        NSZoneFree(0, v10);
      }
    }

    else
    {
      v22 = NSArray_EmptyArray;
      a3 = v30;
    }

    a4 = v22;
  }

  else
  {
    v22 = 0;
  }

  v31.receiver = self;
  v31.super_class = NSMemoryStoreInPredicateOperator;
  v24 = [(NSPredicateOperator *)&v31 performPrimitiveOperationUsingObject:a3 andObject:a4];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end
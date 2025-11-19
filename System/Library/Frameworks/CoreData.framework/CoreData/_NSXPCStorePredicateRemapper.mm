@interface _NSXPCStorePredicateRemapper
+ (id)defaultInstance;
+ (void)initialize;
- (_NSXPCStorePredicateRemapper)init;
- (id)createPredicateForFetchFromPredicate:(id)a3;
- (void)dealloc;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation _NSXPCStorePredicateRemapper

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS____NSXPCStorePredicateRemapper;
  objc_msgSendSuper2(&v2, sel_initialize);
  objc_opt_class();
}

+ (id)defaultInstance
{
  result = defaultInstance_di_90;
  if (!defaultInstance_di_90)
  {
    result = objc_alloc_init(_NSXPCStorePredicateRemapper);
    defaultInstance_di_90 = result;
  }

  return result;
}

- (_NSXPCStorePredicateRemapper)init
{
  v3.receiver = self;
  v3.super_class = _NSXPCStorePredicateRemapper;
  return [(_NSXPCStorePredicateRemapper *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _NSXPCStorePredicateRemapper;
  [(_NSXPCStorePredicateRemapper *)&v2 dealloc];
}

- (id)createPredicateForFetchFromPredicate:(id)a3
{
  v4 = [a3 copy];
  [v4 acceptVisitor:self flags:1];
  return v4;
}

- (void)visitPredicateExpression:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a3 constantValue];
    if (v4)
    {
      v5 = v4;
      if (([v4 isNSArray] & 1) != 0 || objc_msgSend(v5, "isNSSet"))
      {
        if ([v5 count])
        {
          objc_opt_class();
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v14;
LABEL_8:
            v9 = 0;
            while (1)
            {
              if (*v14 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v13 + 1) + 8 * v9);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (v7 == ++v9)
              {
                v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
                if (v7)
                {
                  goto LABEL_8;
                }

                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            v11 = objc_opt_class();
            object_setClass(a3, v11);
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end
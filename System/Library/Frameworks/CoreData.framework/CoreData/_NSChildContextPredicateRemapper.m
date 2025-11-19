@interface _NSChildContextPredicateRemapper
- (_NSChildContextPredicateRemapper)init;
- (_NSChildContextPredicateRemapper)initWithContext:(id)a3;
- (id)createPredicateForFetchFromPredicate:(id)a3 withContext:(id)a4;
- (id)replacementValueForValue:(uint64_t)a1;
- (void)dealloc;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation _NSChildContextPredicateRemapper

- (_NSChildContextPredicateRemapper)init
{
  v3.receiver = self;
  v3.super_class = _NSChildContextPredicateRemapper;
  return [(_NSChildContextPredicateRemapper *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSChildContextPredicateRemapper;
  [(_NSChildContextPredicateRemapper *)&v3 dealloc];
}

- (_NSChildContextPredicateRemapper)initWithContext:(id)a3
{
  v4 = [(_NSChildContextPredicateRemapper *)self init];
  if (v4)
  {
    v4->_context = a3;
  }

  return v4;
}

- (id)createPredicateForFetchFromPredicate:(id)a3 withContext:(id)a4
{
  if (a3 && a4)
  {
    v6 = [a3 copy];
    [v6 acceptVisitor:self flags:1];
    return v6;
  }

  else
  {

    return [a3 copy];
  }
}

- (id)replacementValueForValue:(uint64_t)a1
{
  v2 = 0;
  v44 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
LABEL_41:
    v25 = *MEMORY[0x1E69E9840];
    return v2;
  }

  obj = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    obj = [obj objectID];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(*(v4 + 168) + 8);
      v6 = obj;
      if (v5)
      {
        v7 = [*v5 objectForKey:obj];
        v6 = obj;
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    else
    {
      v6 = obj;
    }

    v18 = *MEMORY[0x1E69E9840];

    return v6;
  }

  if ([obj isNSArray])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [(_NSChildContextPredicateRemapper *)a1 replacementValueForValue:?];
          [v2 addObject:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    goto LABEL_41;
  }

  if ([obj isNSSet])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [(_NSChildContextPredicateRemapper *)a1 replacementValueForValue:?];
          [v2 addObject:v17];
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v14);
    }

    goto LABEL_41;
  }

  if ([obj isNSOrderedSet])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [(_NSChildContextPredicateRemapper *)a1 replacementValueForValue:?];
          [v2 addObject:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v21);
    }

    goto LABEL_41;
  }

  if ([obj isNSString])
  {
    v26 = *MEMORY[0x1E69E9840];

    return [obj copy];
  }

  else
  {
    v27 = *MEMORY[0x1E69E9840];

    return obj;
  }
}

- (void)visitPredicateExpression:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 constantValue];
    if (v5)
    {
      v6 = v5;
      v7 = [(_NSChildContextPredicateRemapper *)self replacementValueForValue:v5];
      if (v7)
      {
        if (v7 != v6)
        {
          object_setInstanceVariableWithStrongDefault(a3, "constantValue", v7);
        }
      }
    }

    MEMORY[0x1EEE66BE0]();
  }
}

@end
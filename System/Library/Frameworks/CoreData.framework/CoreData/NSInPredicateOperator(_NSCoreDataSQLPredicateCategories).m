@interface NSInPredicateOperator(_NSCoreDataSQLPredicateCategories)
- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicate:;
@end

@implementation NSInPredicateOperator(_NSCoreDataSQLPredicateCategories)

- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicate:
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v7 = [a4 rightExpression];
  v8 = [a1 operatorType];
  if (v8 == 99)
  {
    v7 = [v4 leftExpression];
  }

  v9 = [v7 expressionType];
  v10 = v9;
  if (v9 != 14 && v9)
  {
    goto LABEL_42;
  }

  v11 = [v7 constantValue];
  if ([v11 isNSString])
  {
    if ([v11 length])
    {
      goto LABEL_42;
    }

    v12 = MEMORY[0x1E696AF08];
    goto LABEL_33;
  }

  if (([v11 isNSArray] & 1) == 0 && (objc_msgSend(v11, "isNSSet") & 1) == 0 && (objc_msgSend(v11, "isNSOrderedSet") & 1) == 0 && !objc_msgSend(v11, "isNSDictionary"))
  {
    goto LABEL_42;
  }

  if (![v11 count])
  {
    v12 = MEMORY[0x1E696ABE8];
LABEL_33:
    v21 = *MEMORY[0x1E69E9840];

    return [v12 defaultInstance];
  }

  if (v10 || ([v11 isNSDictionary] & 1) != 0)
  {
    goto LABEL_42;
  }

  v28 = v8;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  objc_opt_class();
  v14 = [a3 valueForKey:@"persistentStore"];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = v15;
  v17 = *v30;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v30 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v29 + 1) + 8 * i);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_isKindOfClass())
        {
LABEL_25:
          if ([v19 persistentStore] != v14)
          {
            continue;
          }
        }

LABEL_26:
        [v13 addObject:v19];
        continue;
      }

      if ([objc_msgSend(v19 "objectID")] == v14)
      {
        goto LABEL_26;
      }

      if (objc_opt_isKindOfClass())
      {
        goto LABEL_25;
      }
    }

    v16 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v16);
LABEL_29:
  if ([v13 count])
  {
    v20 = [v11 count];
    if (v20 == [v13 count])
    {

      goto LABEL_42;
    }

    v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v13];

    v25 = MEMORY[0x1E696AB18];
    if (v28 == 10)
    {
      v26 = [v4 leftExpression];
    }

    else
    {
      v26 = v24;
      v24 = [v4 rightExpression];
    }

    v23 = [v25 predicateWithLeftExpression:v26 rightExpression:v24 modifier:objc_msgSend(v4 type:"comparisonPredicateModifier") options:{v28, objc_msgSend(v4, "options")}];
  }

  else
  {

    v23 = [MEMORY[0x1E696ABE8] defaultInstance];
  }

  v4 = v23;
LABEL_42:
  v27 = *MEMORY[0x1E69E9840];
  return v4;
}

@end
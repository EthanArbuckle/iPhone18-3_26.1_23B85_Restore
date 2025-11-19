@interface NSCompoundPredicate(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSCompoundPredicate(_NSCoreDataSQLPredicateCategories)

- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(a1 "predicateOperator")];
  v7 = v6;
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a1 subpredicates];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = *v19;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v18 + 1) + 8 * i) _keypathsForDerivedPropertyValidation:&v22];
      v10 = v9;
      if (!v9)
      {
        v11 = 0;
        goto LABEL_17;
      }

      if ([v9 count])
      {
        if (v6)
        {
          [v6 addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
        }

        else
        {
          v6 = v10;
        }
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (!v6)
  {
LABEL_14:
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v11 = v6;
LABEL_17:
  v12 = v22;
  if (a3 && v22)
  {
    *a3 = v22;
  }

  [0 drain];
  v13 = 0;
  v14 = v22;
  v15 = v6;
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
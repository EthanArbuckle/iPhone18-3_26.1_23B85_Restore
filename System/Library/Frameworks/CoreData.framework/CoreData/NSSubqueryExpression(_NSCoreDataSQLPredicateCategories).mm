@interface NSSubqueryExpression(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSSubqueryExpression(_NSCoreDataSQLPredicateCategories)

- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = [a1 predicate];
  v6 = [a1 collection];
  v7 = [v5 minimalFormInContext:a3];
  v8 = [v6 minimalFormInContext:a3];
  if ([objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")])
  {
    return v8;
  }

  if ([objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
  {
    v10 = MEMORY[0x1E696ABC8];
    v11 = NSArray_EmptyArray;

    return [v10 expressionForConstantValue:v11];
  }

  else
  {
    if (v7 == v5 && v8 == v6)
    {
      return a1;
    }

    if (v7 == v5)
    {
      v7 = [v5 copy];
    }

    if (v8 == v6)
    {
      v8 = [v6 copy];
    }

    v12 = [objc_msgSend(a1 "variableExpression")];
    v13 = [objc_alloc(objc_opt_class()) initWithExpression:v8 usingIteratorExpression:v12 predicate:v7];

    return v13;
  }
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0;
  v26 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = [objc_msgSend(a1 "collection")];
  v6 = v5;
  if (v5)
  {
    if ([v5 count] != 1)
    {
      v19 = 0;
      v32 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:&unk_1EF434A68];
      goto LABEL_24;
    }

    v7 = [v6 anyObject];
    [v4 addObject:v7];
    v8 = [objc_msgSend(a1 "variableExpression")];
    v9 = [objc_msgSend(a1 "predicate")];
    v10 = v9;
    if (v9)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (!v11)
      {
        v19 = 1;
        goto LABEL_24;
      }

      v12 = *v29;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = [v14 localizedStandardRangeOfString:v8];
        v16 = v15;
        if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [v4 addObject:{objc_msgSend(v14, "stringByReplacingOccurrencesOfString:withString:", v8, v7)}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
          v19 = 1;
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }
      }
    }
  }

  v19 = 0;
LABEL_24:
  v20 = v32;
  if (a3 && v32)
  {
    *a3 = v32;
  }

  [v26 drain];
  v21 = 0;
  v22 = v32;
  v23 = v4;
  if (v19)
  {
    result = v4;
  }

  else
  {
    result = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

@end
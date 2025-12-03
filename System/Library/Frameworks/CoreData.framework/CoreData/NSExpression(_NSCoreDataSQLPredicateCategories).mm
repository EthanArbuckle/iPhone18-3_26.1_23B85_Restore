@interface NSExpression(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSExpression(_NSCoreDataSQLPredicateCategories)

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0;
  expressionType = [self expressionType];
  if (expressionType > 9)
  {
    if (expressionType == 10)
    {
      keyPath = [self keyPath];
      goto LABEL_19;
    }

    if (expressionType != 14)
    {
      goto LABEL_28;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    collection = [self collection];
    v9 = [collection countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v9)
    {
      v10 = *v24;
LABEL_9:
      v11 = 0;
      while (1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(collection);
        }

        v12 = [*(*(&v23 + 1) + 8 * v11) _keypathsForDerivedPropertyValidation:&v27];
        v13 = v12;
        if (!v12)
        {
          goto LABEL_30;
        }

        if ([v12 count])
        {
          [v5 addObjectsFromArray:{objc_msgSend(v13, "allObjects")}];
        }

        if (v9 == ++v11)
        {
          v9 = [collection countByEnumeratingWithState:&v23 objects:v30 count:16];
          v14 = 1;
          if (v9)
          {
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }
    }
  }

  else if (expressionType >= 2)
  {
    if (expressionType == 2)
    {
      keyPath = [self predicateFormat];
LABEL_19:
      [v5 addObject:keyPath];
      goto LABEL_20;
    }

LABEL_28:
    if (a3)
    {
      v21 = MEMORY[0x1E696ABC0];
      v28 = @"expression";
      selfCopy = self;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&selfCopy forKeys:&v28 count:1];
      v14 = 0;
      *a3 = [v21 errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:v22];
      goto LABEL_21;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v14 = 1;
LABEL_21:
  v15 = v27;
  if (a3 && v27)
  {
    *a3 = v27;
  }

  [0 drain];
  v16 = 0;
  v17 = v27;
  v18 = v5;
  if (v14)
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end
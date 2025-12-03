@interface NSCompoundPredicateOperator(_NSCoreDataSQLPredicateCategories)
- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicates:;
@end

@implementation NSCompoundPredicateOperator(_NSCoreDataSQLPredicateCategories)

- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories ofPredicates:
{
  v47 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  operatorType = [self operatorType];
  if (operatorType == 2)
  {
    selfCopy = self;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = [a4 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v42;
      while (2)
      {
        v28 = 0;
        do
        {
          if (*v42 != v27)
          {
            objc_enumerationMutation(a4);
          }

          v29 = *(*(&v41 + 1) + 8 * v28);
          v21 = objc_autoreleasePoolPush();
          v30 = [v29 minimalFormInContext:a3];
          if ([objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")])
          {
            v33 = MEMORY[0x1E696AF08];
LABEL_38:
            defaultInstance = [v33 defaultInstance];
            objc_autoreleasePoolPop(v21);
            goto LABEL_43;
          }

          if (([objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")] & 1) == 0)
          {
            [array addObject:v30];
          }

          objc_autoreleasePoolPop(v21);
          ++v28;
        }

        while (v26 != v28);
        v26 = [a4 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v31 = [array count];
    if (v31 != 1)
    {
      self = selfCopy;
      if (!v31)
      {
        v24 = MEMORY[0x1E696ABE8];
        goto LABEL_35;
      }

LABEL_41:
      defaultInstance2 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(self subpredicates:{"operatorType"), array}];
      goto LABEL_42;
    }

LABEL_39:
    defaultInstance2 = [array objectAtIndex:0];
    goto LABEL_42;
  }

  if (operatorType == 1)
  {
    selfCopy2 = self;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [a4 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      while (2)
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(a4);
          }

          v20 = *(*(&v37 + 1) + 8 * v19);
          v21 = objc_autoreleasePoolPush();
          v22 = [v20 minimalFormInContext:a3];
          if ([objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
          {
            v33 = MEMORY[0x1E696ABE8];
            goto LABEL_38;
          }

          if (([objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")] & 1) == 0)
          {
            [array addObject:v22];
          }

          objc_autoreleasePoolPop(v21);
          ++v19;
        }

        while (v17 != v19);
        v17 = [a4 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v23 = [array count];
    if (v23 != 1)
    {
      self = selfCopy2;
      if (!v23)
      {
        v24 = MEMORY[0x1E696AF08];
LABEL_35:
        defaultInstance2 = [v24 defaultInstance];
LABEL_42:
        defaultInstance = defaultInstance2;
LABEL_43:
        v34 = *MEMORY[0x1E69E9840];
        return defaultInstance;
      }

      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (operatorType)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Bad compound predicate predicateOperator type" userInfo:0]);
  }

  v9 = [objc_msgSend(a4 objectAtIndex:{0), "minimalFormInContext:", a3}];
  v10 = [objc_msgSend(MEMORY[0x1E696AF08] "defaultInstance")];
  defaultInstance3 = [MEMORY[0x1E696ABE8] defaultInstance];
  defaultInstance = defaultInstance3;
  if (v10)
  {
    goto LABEL_43;
  }

  if (![defaultInstance3 isEqual:v9])
  {
    [array addObject:v9];
    goto LABEL_41;
  }

  v13 = MEMORY[0x1E696AF08];
  v14 = *MEMORY[0x1E69E9840];

  return [v13 defaultInstance];
}

@end
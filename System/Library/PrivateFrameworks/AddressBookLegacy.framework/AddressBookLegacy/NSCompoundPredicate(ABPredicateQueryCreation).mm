@interface NSCompoundPredicate(ABPredicateQueryCreation)
- (uint64_t)ab_addCallbackContextToArray:()ABPredicateQueryCreation;
- (uint64_t)ab_bindJoinClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:;
- (uint64_t)ab_bindSelectClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:;
- (uint64_t)ab_bindWhereClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:;
- (uint64_t)ab_hasCallback;
@end

@implementation NSCompoundPredicate(ABPredicateQueryCreation)

- (uint64_t)ab_hasCallback
{
  v1 = [a1 subpredicates];
  v2 = [v1 count];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 1;
  do
  {
    result = [objc_msgSend(v1 objectAtIndex:{v4 - 1), "hasCallback"}];
    if (v4 >= v3)
    {
      break;
    }

    ++v4;
  }

  while (!result);
  return result;
}

- (uint64_t)ab_addCallbackContextToArray:()ABPredicateQueryCreation
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a1 subpredicates];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) ab_addCallbackContextToArray:a3];
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)ab_bindSelectClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = [a1 subpredicates];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) ab_bindSelectClauseComponentOfStatement:a3 withBindingOffset:a4 predicateIdentifier:a5];
        a5 = (a5 + 1);
        ++v12;
      }

      while (v10 != v12);
      result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)ab_bindJoinClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = [a1 subpredicates];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) ab_bindJoinClauseComponentOfStatement:a3 withBindingOffset:a4 predicateIdentifier:a5];
        a5 = (a5 + 1);
        ++v12;
      }

      while (v10 != v12);
      result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)ab_bindWhereClauseComponentOfStatement:()ABPredicateQueryCreation withBindingOffset:predicateIdentifier:
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = [a1 subpredicates];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) ab_bindWhereClauseComponentOfStatement:a3 withBindingOffset:a4 predicateIdentifier:a5];
        a5 = (a5 + 1);
        ++v12;
      }

      while (v10 != v12);
      result = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

@end
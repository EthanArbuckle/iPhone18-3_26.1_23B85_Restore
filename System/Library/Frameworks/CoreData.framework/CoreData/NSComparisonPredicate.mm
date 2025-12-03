@interface NSComparisonPredicate
- (BOOL)_isForeignObjectExpression:(void *)expression givenContext:;
@end

@implementation NSComparisonPredicate

- (BOOL)_isForeignObjectExpression:(void *)expression givenContext:
{
  if (result)
  {
    if ([a2 expressionType])
    {
      return 0;
    }

    constantValue = [a2 constantValue];
    if (!constantValue)
    {
      return 0;
    }

    objectID = constantValue;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [objectID objectID];
      if (!objectID)
      {
        return 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }
    }

    if ([objectID isTemporaryID])
    {
      return 1;
    }

    persistentStore = [objectID persistentStore];
    return persistentStore != [expression objectForKey:@"persistentStore"];
  }

  return result;
}

@end
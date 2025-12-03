@interface NSSetExpression(_NSCoreDataSQLPredicateCategories)
- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (void)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSSetExpression(_NSCoreDataSQLPredicateCategories)

- (void)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(self "leftExpression")];
  v6 = [objc_msgSend(self "rightExpression")];
  expressionType = [v5 expressionType];
  if (expressionType == 14)
  {
    collection = [v5 collection];
  }

  else
  {
    if (expressionType)
    {
      goto LABEL_9;
    }

    collection = [v5 constantValue];
  }

  v9 = collection;
  if (([collection isNSSet] & 1) != 0 || (objc_msgSend(v9, "isNSArray") & 1) != 0 || objc_msgSend(v9, "isNSOrderedSet"))
  {
    v10 = [v9 count] == 0;
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:
  expressionType2 = [v6 expressionType];
  if (expressionType2 == 14)
  {
    collection2 = [v6 collection];
  }

  else
  {
    if (expressionType2)
    {
      goto LABEL_26;
    }

    collection2 = [v6 constantValue];
  }

  v13 = collection2;
  if (([collection2 isNSSet] & 1) == 0 && (objc_msgSend(v13, "isNSArray") & 1) == 0 && !objc_msgSend(v13, "isNSOrderedSet"))
  {
LABEL_26:
    expressionType3 = [self expressionType];
    if (!v10)
    {
      return self;
    }

LABEL_27:
    v17 = v6;
    if (expressionType3 == 5)
    {
      return v17;
    }

    if (expressionType3 != 7)
    {
      v17 = v5;
      goto LABEL_30;
    }

    return v5;
  }

  v14 = [v13 count];
  expressionType3 = [self expressionType];
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  if (v16)
  {
    return v5;
  }

  if (v10)
  {
    goto LABEL_27;
  }

  if (v14)
  {
    return self;
  }

  if (expressionType3 == 5)
  {
    return v5;
  }

  v17 = v5;
  if (expressionType3 == 7)
  {
    return v17;
  }

  v17 = v6;
LABEL_30:
  if (expressionType3 != 6)
  {
    return self;
  }

  return v17;
}

- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(self "leftExpression")];
  if (v5)
  {
    v6 = [objc_msgSend(self "rightExpression")];
    if (v6)
    {
      [v5 addObjectsFromArray:{objc_msgSend(v6, "allObjects")}];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

@end
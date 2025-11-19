@interface NSSetExpression(_NSCoreDataSQLPredicateCategories)
- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (void)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSSetExpression(_NSCoreDataSQLPredicateCategories)

- (void)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(a1 "leftExpression")];
  v6 = [objc_msgSend(a1 "rightExpression")];
  v7 = [v5 expressionType];
  if (v7 == 14)
  {
    v8 = [v5 collection];
  }

  else
  {
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = [v5 constantValue];
  }

  v9 = v8;
  if (([v8 isNSSet] & 1) != 0 || (objc_msgSend(v9, "isNSArray") & 1) != 0 || objc_msgSend(v9, "isNSOrderedSet"))
  {
    v10 = [v9 count] == 0;
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:
  v11 = [v6 expressionType];
  if (v11 == 14)
  {
    v12 = [v6 collection];
  }

  else
  {
    if (v11)
    {
      goto LABEL_26;
    }

    v12 = [v6 constantValue];
  }

  v13 = v12;
  if (([v12 isNSSet] & 1) == 0 && (objc_msgSend(v13, "isNSArray") & 1) == 0 && !objc_msgSend(v13, "isNSOrderedSet"))
  {
LABEL_26:
    v15 = [a1 expressionType];
    if (!v10)
    {
      return a1;
    }

LABEL_27:
    v17 = v6;
    if (v15 == 5)
    {
      return v17;
    }

    if (v15 != 7)
    {
      v17 = v5;
      goto LABEL_30;
    }

    return v5;
  }

  v14 = [v13 count];
  v15 = [a1 expressionType];
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
    return a1;
  }

  if (v15 == 5)
  {
    return v5;
  }

  v17 = v5;
  if (v15 == 7)
  {
    return v17;
  }

  v17 = v6;
LABEL_30:
  if (v15 != 6)
  {
    return a1;
  }

  return v17;
}

- (void)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(a1 "leftExpression")];
  if (v5)
  {
    v6 = [objc_msgSend(a1 "rightExpression")];
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
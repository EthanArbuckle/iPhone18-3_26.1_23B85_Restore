@interface NSComparisonPredicate(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSComparisonPredicate(_NSCoreDataSQLPredicateCategories)

- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  v4 = a1;
  v5 = [objc_msgSend(a1 "leftExpression")];
  v6 = [objc_msgSend(v4 "rightExpression")];
  v7 = [v4 leftExpression];
  v8 = [v4 rightExpression];
  v9 = [v4 predicateOperatorType];
  if (![v5 expressionType] && !objc_msgSend(v6, "expressionType"))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 allowEvaluation];
    }

    if ([v4 evaluateWithObject:0])
    {
      goto LABEL_25;
    }

LABEL_26:
    v13 = MEMORY[0x1E696ABE8];
    goto LABEL_27;
  }

  if ([v6 expressionType])
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_5;
  }

  if (![v6 constantValue])
  {
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v10 = 4;
      goto LABEL_5;
    }

LABEL_40:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid predicate: nil RHS" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v4, @"predicate"}]);
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
  if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")] && v10 != 4)
  {
    goto LABEL_40;
  }

LABEL_5:
  if (![v6 expressionType] && v10 == 6 && objc_msgSend(&stru_1EF3F1768, "isEqual:", objc_msgSend(v6, "constantValue")))
  {
    goto LABEL_26;
  }

  if (v9 == 99 || v9 == 10)
  {
    v11 = [v4 predicateOperator];

    return [v11 minimalFormInContext:a3 ofPredicate:v4];
  }

  if (![(NSComparisonPredicate *)v4 _isForeignObjectExpression:v5 givenContext:a3]&& ![(NSComparisonPredicate *)v4 _isForeignObjectExpression:v6 givenContext:a3])
  {
    if (v5 != v7 || v6 != v8)
    {
      v14 = [objc_msgSend(v4 "predicateOperator")];
      if (v5 == v7)
      {
        v5 = [v5 copy];
      }

      if (v6 == v8)
      {
        v6 = [v6 copy];
      }

      v4 = [objc_alloc(objc_opt_class()) initWithPredicateOperator:v14 leftExpression:v5 rightExpression:v6];
    }

    return v4;
  }

  if (v9 != 5)
  {
    if (v9 != 4)
    {
      return v4;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = MEMORY[0x1E696AF08];
LABEL_27:

  return [v13 defaultInstance];
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v13 = 0;
  v5 = [objc_msgSend(a1 "leftExpression")];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [objc_msgSend(a1 "rightExpression")];
  if (!v6)
  {
    v5 = 0;
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v5 = v5;
  [v5 addObjectsFromArray:{objc_msgSend(v6, "allObjects")}];
  v7 = v5;
LABEL_7:
  v8 = v13;
  if (a3 && v13)
  {
    *a3 = v13;
  }

  [0 drain];
  v9 = 0;
  v10 = v13;
  v11 = v7;
  return v5;
}

@end
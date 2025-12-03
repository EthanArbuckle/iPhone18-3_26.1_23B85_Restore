@interface NSComparisonPredicate(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSComparisonPredicate(_NSCoreDataSQLPredicateCategories)

- (uint64_t)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  selfCopy = self;
  v5 = [objc_msgSend(self "leftExpression")];
  v6 = [objc_msgSend(selfCopy "rightExpression")];
  leftExpression = [selfCopy leftExpression];
  rightExpression = [selfCopy rightExpression];
  predicateOperatorType = [selfCopy predicateOperatorType];
  if (![v5 expressionType] && !objc_msgSend(v6, "expressionType"))
  {
    if (objc_opt_respondsToSelector())
    {
      [selfCopy allowEvaluation];
    }

    if ([selfCopy evaluateWithObject:0])
    {
      goto LABEL_25;
    }

LABEL_26:
    v13 = MEMORY[0x1E696ABE8];
    goto LABEL_27;
  }

  if ([v6 expressionType])
  {
    v10 = predicateOperatorType & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_5;
  }

  if (![v6 constantValue])
  {
    if ((predicateOperatorType & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v10 = 4;
      goto LABEL_5;
    }

LABEL_40:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid predicate: nil RHS" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", selfCopy, @"predicate"}]);
  }

  v10 = predicateOperatorType & 0xFFFFFFFFFFFFFFFELL;
  if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")] && v10 != 4)
  {
    goto LABEL_40;
  }

LABEL_5:
  if (![v6 expressionType] && v10 == 6 && objc_msgSend(&stru_1EF3F1768, "isEqual:", objc_msgSend(v6, "constantValue")))
  {
    goto LABEL_26;
  }

  if (predicateOperatorType == 99 || predicateOperatorType == 10)
  {
    predicateOperator = [selfCopy predicateOperator];

    return [predicateOperator minimalFormInContext:a3 ofPredicate:selfCopy];
  }

  if (![(NSComparisonPredicate *)selfCopy _isForeignObjectExpression:v5 givenContext:a3]&& ![(NSComparisonPredicate *)selfCopy _isForeignObjectExpression:v6 givenContext:a3])
  {
    if (v5 != leftExpression || v6 != rightExpression)
    {
      v14 = [objc_msgSend(selfCopy "predicateOperator")];
      if (v5 == leftExpression)
      {
        v5 = [v5 copy];
      }

      if (v6 == rightExpression)
      {
        v6 = [v6 copy];
      }

      selfCopy = [objc_alloc(objc_opt_class()) initWithPredicateOperator:v14 leftExpression:v5 rightExpression:v6];
    }

    return selfCopy;
  }

  if (predicateOperatorType != 5)
  {
    if (predicateOperatorType != 4)
    {
      return selfCopy;
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
  v5 = [objc_msgSend(self "leftExpression")];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [objc_msgSend(self "rightExpression")];
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
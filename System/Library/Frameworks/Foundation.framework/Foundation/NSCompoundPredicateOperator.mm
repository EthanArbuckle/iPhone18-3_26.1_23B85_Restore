@interface NSCompoundPredicateOperator
+ (void)initialize;
- (BOOL)evaluatePredicates:(id)predicates withObject:(id)object substitutionVariables:(id)variables;
- (id)symbol;
@end

@implementation NSCompoundPredicateOperator

+ (void)initialize
{
  if (NSCompoundPredicateOperator == self)
  {
    _MergedGlobals_94 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:1];
    qword_1ED43F5B8 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:2];
    qword_1ED43F5C0 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:0];
  }
}

- (id)symbol
{
  operatorType = [(NSPredicateOperator *)self operatorType];
  if (operatorType >= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"expressionValueWithObject: must be called on a subclass of NSExpression" userInfo:0]);
  }

  return off_1E69F2988[operatorType];
}

- (BOOL)evaluatePredicates:(id)predicates withObject:(id)object substitutionVariables:(id)variables
{
  v28 = *MEMORY[0x1E69E9840];
  operatorType = [(NSPredicateOperator *)self operatorType];
  if (operatorType == 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [predicates countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (!v9)
    {
      return v9;
    }

    v14 = v9;
    v15 = *v25;
LABEL_16:
    v16 = 0;
    while (1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(predicates);
      }

      if ([*(*(&v24 + 1) + 8 * v16) evaluateWithObject:object substitutionVariables:variables])
      {
        goto LABEL_23;
      }

      if (v14 == ++v16)
      {
        v14 = [predicates countByEnumeratingWithState:&v24 objects:v23 count:16];
        LOBYTE(v9) = 0;
        if (v14)
        {
          goto LABEL_16;
        }

        return v9;
      }
    }
  }

  if (operatorType != 1)
  {
    if (operatorType)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bad compound predicate predicateOperator type" userInfo:0]);
    }

    LOBYTE(v9) = [objc_msgSend(predicates objectAtIndex:{0), "evaluateWithObject:substitutionVariables:", object, variables}] ^ 1;
    return v9;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [predicates countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v10)
  {
LABEL_23:
    LOBYTE(v9) = 1;
    return v9;
  }

  v11 = v10;
  v12 = *v20;
LABEL_7:
  v13 = 0;
  while (1)
  {
    if (*v20 != v12)
    {
      objc_enumerationMutation(predicates);
    }

    LODWORD(v9) = [*(*(&v19 + 1) + 8 * v13) evaluateWithObject:object substitutionVariables:variables];
    if (!v9)
    {
      return v9;
    }

    if (v11 == ++v13)
    {
      v11 = [predicates countByEnumeratingWithState:&v19 objects:v18 count:16];
      LOBYTE(v9) = 1;
      if (v11)
      {
        goto LABEL_7;
      }

      return v9;
    }
  }
}

@end
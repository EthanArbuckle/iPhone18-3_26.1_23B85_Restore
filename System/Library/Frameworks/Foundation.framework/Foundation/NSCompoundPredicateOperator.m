@interface NSCompoundPredicateOperator
+ (void)initialize;
- (BOOL)evaluatePredicates:(id)a3 withObject:(id)a4 substitutionVariables:(id)a5;
- (id)symbol;
@end

@implementation NSCompoundPredicateOperator

+ (void)initialize
{
  if (NSCompoundPredicateOperator == a1)
  {
    _MergedGlobals_94 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:1];
    qword_1ED43F5B8 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:2];
    qword_1ED43F5C0 = [(NSPredicateOperator *)[NSCompoundPredicateOperator alloc] initWithOperatorType:0];
  }
}

- (id)symbol
{
  v2 = [(NSPredicateOperator *)self operatorType];
  if (v2 >= 3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"expressionValueWithObject: must be called on a subclass of NSExpression" userInfo:0]);
  }

  return off_1E69F2988[v2];
}

- (BOOL)evaluatePredicates:(id)a3 withObject:(id)a4 substitutionVariables:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = [(NSPredicateOperator *)self operatorType];
  if (v8 == 2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
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
        objc_enumerationMutation(a3);
      }

      if ([*(*(&v24 + 1) + 8 * v16) evaluateWithObject:a4 substitutionVariables:a5])
      {
        goto LABEL_23;
      }

      if (v14 == ++v16)
      {
        v14 = [a3 countByEnumeratingWithState:&v24 objects:v23 count:16];
        LOBYTE(v9) = 0;
        if (v14)
        {
          goto LABEL_16;
        }

        return v9;
      }
    }
  }

  if (v8 != 1)
  {
    if (v8)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bad compound predicate predicateOperator type" userInfo:0]);
    }

    LOBYTE(v9) = [objc_msgSend(a3 objectAtIndex:{0), "evaluateWithObject:substitutionVariables:", a4, a5}] ^ 1;
    return v9;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
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
      objc_enumerationMutation(a3);
    }

    LODWORD(v9) = [*(*(&v19 + 1) + 8 * v13) evaluateWithObject:a4 substitutionVariables:a5];
    if (!v9)
    {
      return v9;
    }

    if (v11 == ++v13)
    {
      v11 = [a3 countByEnumeratingWithState:&v19 objects:v18 count:16];
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
@interface NSSubqueryExpression
- (BOOL)isEqual:(id)a3;
- (NSSubqueryExpression)initWithCoder:(id)a3;
- (NSSubqueryExpression)initWithExpression:(id)a3 usingIteratorExpression:(id)a4 predicate:(id)a5;
- (NSSubqueryExpression)initWithExpression:(id)a3 usingIteratorVariable:(id)a4 predicate:(id)a5;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)variable;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSubqueryExpression

- (id)variable
{
  v2 = [(NSSubqueryExpression *)self variableExpression];

  return [v2 variable];
}

- (void)allowEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_collection allowEvaluation];
  [(NSExpression *)self->_variableExpression allowEvaluation];
  [(NSPredicate *)self->_subpredicate allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSSubqueryExpression;
  [(NSExpression *)&v3 allowEvaluation];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSubqueryExpression;
  [(NSSubqueryExpression *)&v3 dealloc];
}

- (NSSubqueryExpression)initWithExpression:(id)a3 usingIteratorVariable:(id)a4 predicate:(id)a5
{
  if (!a4 || !a5)
  {
    [(NSSubqueryExpression *)self dealloc];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSubqueryExpression must be initialized with non-nil variable name and expression." userInfo:0]);
  }

  v8 = [[NSVariableExpression alloc] initWithObject:a4];
  v9 = [(NSSubqueryExpression *)self initWithExpression:a3 usingIteratorExpression:v8 predicate:a5];

  return v9;
}

- (NSSubqueryExpression)initWithExpression:(id)a3 usingIteratorExpression:(id)a4 predicate:(id)a5
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSSubqueryExpression;
  v8 = [(NSExpression *)&v11 initWithExpressionType:13];
  v9 = v8;
  if (!a4 || !a5)
  {
    [(NSSubqueryExpression *)v8 dealloc];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSubqueryExpression must be initialized with non-nil variable name and expression." userInfo:0]);
  }

  v8->_collection = a3;
  v9->_variableExpression = a4;
  v9->_subpredicate = a5;
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSubqueryExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:-[NSSubqueryExpression collection](self forKey:{"collection"), @"NSExpression"}];
  [a3 encodeObject:-[NSSubqueryExpression variable](self forKey:{"variable"), @"NSVariable"}];
  [a3 encodeObject:-[NSSubqueryExpression predicate](self forKey:{"predicate"), @"NSSubpredicate"}];
}

- (NSSubqueryExpression)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = NSSubqueryExpression;
  v5 = [(NSExpression *)&v15 initWithCoder:a3];
  if (v5)
  {
    v6 = [a3 allowedClasses];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
      v9 = [v7 mutableCopy];
      [v9 unionSet:{+[_NSPredicateUtilities _predicateClassesForSecureCoding](_NSPredicateUtilities, "_predicateClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
      v9 = +[_NSPredicateUtilities _predicateClassesForSecureCoding];
    }

    v5->_collection = [a3 decodeObjectOfClasses:v8 forKey:@"NSExpression"];
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSVariable"];
    v11 = [[NSVariableExpression alloc] initWithObject:v10];
    v5->_variableExpression = &v11->super;
    *&v11->super._expressionFlags |= 1u;
    v5->_subpredicate = [a3 decodeObjectOfClasses:v9 forKey:@"NSSubpredicate"];
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_isKindOfClass())
      {
        if (v10)
        {
          v12 = 0;
          if (!v7)
          {
LABEL_16:
            if (v12)
            {

              objc_exception_throw(v12);
            }

            return v5;
          }

LABEL_15:

          goto LABEL_16;
        }

        v13 = @"Malformed subquery expression (bad variable)";
      }

      else
      {
        v13 = @"Malformed subquery expression (bad subpredicate)";
      }
    }

    else
    {
      v13 = @"Malformed subquery expression (bad collection)";
    }

    v12 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v13 userInfo:0];
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(NSExpression *)self->_collection copy];
  v5 = [(NSExpression *)self->_variableExpression copy];
  v6 = [(NSPredicate *)self->_subpredicate copy];
  v7 = [objc_alloc(objc_opt_class()) initWithExpression:v4 usingIteratorExpression:v5 predicate:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![-[NSSubqueryExpression variable](self "variable")])
  {
    return 0;
  }

  v5 = [(NSSubqueryExpression *)self predicate];
  v6 = [a3 predicate];

  return [v5 isEqual:v6];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v19 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v7 = [-[NSSubqueryExpression collection](self "collection")];
  if (v7)
  {
    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't perform collection evaluate with non-collection object." userInfo:0]);
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v9 = v7;
    v10 = [a4 objectForKey:{-[NSSubqueryExpression variable](self, "variable")}];
    v11 = v10;
    v12 = a4;
    if (!a4)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    v18 = v10;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          [v12 setObject:v16 forKey:{-[NSSubqueryExpression variable](self, "variable")}];
          if ([-[NSSubqueryExpression predicate](self "predicate")])
          {
            [v8 addObject:v16];
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v13);
    }

    if (v18)
    {
      [a4 setObject:v18 forKey:{-[NSSubqueryExpression variable](self, "variable")}];
    }

    else
    {
      [a4 removeObjectForKey:{-[NSSubqueryExpression variable](self, "variable")}];
    }
  }

  else
  {
    v8 = 0;
  }

  if (v19)
  {
    [(_NSPerformanceMeter *)v19 invalidate];
  }

  return v8;
}

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = [objc_alloc(objc_opt_class()) initWithExpression:objc_msgSend(-[NSSubqueryExpression collection](self usingIteratorExpression:"collection") predicate:{"_expressionWithSubstitutionVariables:", a3), objc_msgSend(-[NSSubqueryExpression variableExpression](self, "variableExpression"), "_expressionWithSubstitutionVariables:", a3), objc_msgSend(-[NSSubqueryExpression predicate](self, "predicate"), "predicateWithSubstitutionVariables:", a3)}];

  return v3;
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
      [-[NSSubqueryExpression collection](self "collection")];
      [-[NSSubqueryExpression variableExpression](self "variableExpression")];
      v7 = [(NSSubqueryExpression *)self predicate];

      [v7 acceptVisitor:a3 flags:a4];
    }

    else
    {
      [-[NSSubqueryExpression collection](self "collection")];
      [-[NSSubqueryExpression variableExpression](self "variableExpression")];
      [-[NSSubqueryExpression predicate](self "predicate")];

      [a3 visitPredicateExpression:self];
    }
  }
}

@end
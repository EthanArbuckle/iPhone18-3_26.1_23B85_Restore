@interface NSSubqueryExpression
- (BOOL)isEqual:(id)equal;
- (NSSubqueryExpression)initWithCoder:(id)coder;
- (NSSubqueryExpression)initWithExpression:(id)expression usingIteratorExpression:(id)iteratorExpression predicate:(id)predicate;
- (NSSubqueryExpression)initWithExpression:(id)expression usingIteratorVariable:(id)variable predicate:(id)predicate;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)variable;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSubqueryExpression

- (id)variable
{
  variableExpression = [(NSSubqueryExpression *)self variableExpression];

  return [variableExpression variable];
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

- (NSSubqueryExpression)initWithExpression:(id)expression usingIteratorVariable:(id)variable predicate:(id)predicate
{
  if (!variable || !predicate)
  {
    [(NSSubqueryExpression *)self dealloc];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSubqueryExpression must be initialized with non-nil variable name and expression." userInfo:0]);
  }

  v8 = [[NSVariableExpression alloc] initWithObject:variable];
  v9 = [(NSSubqueryExpression *)self initWithExpression:expression usingIteratorExpression:v8 predicate:predicate];

  return v9;
}

- (NSSubqueryExpression)initWithExpression:(id)expression usingIteratorExpression:(id)iteratorExpression predicate:(id)predicate
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = NSSubqueryExpression;
  v8 = [(NSExpression *)&v11 initWithExpressionType:13];
  v9 = v8;
  if (!iteratorExpression || !predicate)
  {
    [(NSSubqueryExpression *)v8 dealloc];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSubqueryExpression must be initialized with non-nil variable name and expression." userInfo:0]);
  }

  v8->_collection = expression;
  v9->_variableExpression = iteratorExpression;
  v9->_subpredicate = predicate;
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSubqueryExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:-[NSSubqueryExpression collection](self forKey:{"collection"), @"NSExpression"}];
  [coder encodeObject:-[NSSubqueryExpression variable](self forKey:{"variable"), @"NSVariable"}];
  [coder encodeObject:-[NSSubqueryExpression predicate](self forKey:{"predicate"), @"NSSubpredicate"}];
}

- (NSSubqueryExpression)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = NSSubqueryExpression;
  v5 = [(NSExpression *)&v15 initWithCoder:coder];
  if (v5)
  {
    allowedClasses = [coder allowedClasses];
    v7 = allowedClasses;
    if (allowedClasses)
    {
      v8 = [allowedClasses mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
      v9 = [v7 mutableCopy];
      [v9 unionSet:{+[_NSPredicateUtilities _predicateClassesForSecureCoding](_NSPredicateUtilities, "_predicateClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
      v9 = +[_NSPredicateUtilities _predicateClassesForSecureCoding];
    }

    v5->_collection = [coder decodeObjectOfClasses:v8 forKey:@"NSExpression"];
    v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSVariable"];
    v11 = [[NSVariableExpression alloc] initWithObject:v10];
    v5->_variableExpression = &v11->super;
    *&v11->super._expressionFlags |= 1u;
    v5->_subpredicate = [coder decodeObjectOfClasses:v9 forKey:@"NSSubpredicate"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(NSExpression *)self->_collection copy];
  v5 = [(NSExpression *)self->_variableExpression copy];
  v6 = [(NSPredicate *)self->_subpredicate copy];
  v7 = [objc_alloc(objc_opt_class()) initWithExpression:v4 usingIteratorExpression:v5 predicate:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![-[NSSubqueryExpression variable](self "variable")])
  {
    return 0;
  }

  predicate = [(NSSubqueryExpression *)self predicate];
  predicate2 = [equal predicate];

  return [predicate isEqual:predicate2];
}

- (id)expressionValueWithObject:(id)object context:(id)context
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

    array = [MEMORY[0x1E695DF70] array];
    v9 = v7;
    v10 = [context objectForKey:{-[NSSubqueryExpression variable](self, "variable")}];
    v11 = v10;
    contextCopy = context;
    if (!context)
    {
      contextCopy = [MEMORY[0x1E695DF90] dictionary];
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
          [contextCopy setObject:v16 forKey:{-[NSSubqueryExpression variable](self, "variable")}];
          if ([-[NSSubqueryExpression predicate](self "predicate")])
          {
            [array addObject:v16];
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v13);
    }

    if (v18)
    {
      [context setObject:v18 forKey:{-[NSSubqueryExpression variable](self, "variable")}];
    }

    else
    {
      [context removeObjectForKey:{-[NSSubqueryExpression variable](self, "variable")}];
    }
  }

  else
  {
    array = 0;
  }

  if (v19)
  {
    [(_NSPerformanceMeter *)v19 invalidate];
  }

  return array;
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = [objc_alloc(objc_opt_class()) initWithExpression:objc_msgSend(-[NSSubqueryExpression collection](self usingIteratorExpression:"collection") predicate:{"_expressionWithSubstitutionVariables:", variables), objc_msgSend(-[NSSubqueryExpression variableExpression](self, "variableExpression"), "_expressionWithSubstitutionVariables:", variables), objc_msgSend(-[NSSubqueryExpression predicate](self, "predicate"), "predicateWithSubstitutionVariables:", variables)}];

  return v3;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
      [-[NSSubqueryExpression collection](self "collection")];
      [-[NSSubqueryExpression variableExpression](self "variableExpression")];
      predicate = [(NSSubqueryExpression *)self predicate];

      [predicate acceptVisitor:visitor flags:flags];
    }

    else
    {
      [-[NSSubqueryExpression collection](self "collection")];
      [-[NSSubqueryExpression variableExpression](self "variableExpression")];
      [-[NSSubqueryExpression predicate](self "predicate")];

      [visitor visitPredicateExpression:self];
    }
  }
}

@end
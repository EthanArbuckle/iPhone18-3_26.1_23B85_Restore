@interface NSTernaryExpression
- (BOOL)isEqual:(id)equal;
- (NSTernaryExpression)initWithCoder:(id)coder;
- (NSTernaryExpression)initWithPredicate:(id)predicate trueExpression:(id)expression falseExpression:(id)falseExpression;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTernaryExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_predicate = 0;
  self->_trueExpression = 0;

  self->_falseExpression = 0;
  v3.receiver = self;
  v3.super_class = NSTernaryExpression;
  [(NSTernaryExpression *)&v3 dealloc];
}

- (void)allowEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSPredicate *)self->_predicate allowEvaluation];
  [(NSExpression *)self->_trueExpression allowEvaluation];
  [(NSExpression *)self->_falseExpression allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSTernaryExpression;
  [(NSExpression *)&v3 allowEvaluation];
}

- (NSTernaryExpression)initWithPredicate:(id)predicate trueExpression:(id)expression falseExpression:(id)falseExpression
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSTernaryExpression;
  v8 = [(NSExpression *)&v10 initWithExpressionType:20];
  if (v8)
  {
    v8->_predicate = predicate;
    v8->_trueExpression = expression;
    v8->_falseExpression = falseExpression;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSTernaryExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:-[NSTernaryExpression predicate](self forKey:{"predicate"), @"NSPredicate"}];
  [coder encodeObject:-[NSTernaryExpression trueExpression](self forKey:{"trueExpression"), @"NSTrueExpression"}];
  [coder encodeObject:-[NSTernaryExpression falseExpression](self forKey:{"falseExpression"), @"NSFalseExpression"}];
}

- (NSTernaryExpression)initWithCoder:(id)coder
{
  v14 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v13.receiver = self;
  v13.super_class = NSTernaryExpression;
  v5 = [(NSExpression *)&v13 initWithCoder:coder];
  if (v5)
  {
    allowedClasses = [coder allowedClasses];
    v7 = [allowedClasses count];
    if (v7)
    {
      v8 = [allowedClasses mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
      v9 = [allowedClasses mutableCopy];
      [v9 unionSet:{+[_NSPredicateUtilities _predicateClassesForSecureCoding](_NSPredicateUtilities, "_predicateClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
      v9 = +[_NSPredicateUtilities _predicateClassesForSecureCoding];
    }

    v5->_predicate = [coder decodeObjectOfClasses:v9 forKey:@"NSPredicate"];
    v5->_trueExpression = [coder decodeObjectOfClasses:v8 forKey:@"NSTrueExpression"];
    v5->_falseExpression = [coder decodeObjectOfClasses:v8 forKey:@"NSFalseExpression"];
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_isKindOfClass())
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = 0;
          if (!v7)
          {
LABEL_16:
            if (v10)
            {

              objc_exception_throw(v10);
            }

            return v5;
          }

LABEL_15:

          goto LABEL_16;
        }

        v11 = @"Malformed ternary expression (bad subpredicate)";
      }

      else
      {
        v11 = @"Malformed ternary expression (bad false expression)";
      }
    }

    else
    {
      v11 = @"Malformed ternary expression (bad true expression)";
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v11 userInfo:0];
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
  predicate = [-[NSTernaryExpression predicate](self predicate];
  v5 = [-[NSTernaryExpression trueExpression](self "trueExpression")];
  v6 = [-[NSTernaryExpression falseExpression](self "falseExpression")];
  v7 = [objc_alloc(objc_opt_class()) initWithPredicate:predicate trueExpression:v5 falseExpression:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  expressionType = [(NSTernaryExpression *)self expressionType];
  if (expressionType != [equal expressionType] || !objc_msgSend(-[NSTernaryExpression predicate](self, "predicate"), "isEqual:", objc_msgSend(equal, "predicate")) || !objc_msgSend(-[NSTernaryExpression trueExpression](self, "trueExpression"), "isEqual:", objc_msgSend(equal, "trueExpression")))
  {
    return 0;
  }

  falseExpression = [(NSTernaryExpression *)self falseExpression];
  falseExpression2 = [equal falseExpression];

  return [falseExpression isEqual:falseExpression2];
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
      [-[NSTernaryExpression predicate](self "predicate")];
      [-[NSTernaryExpression trueExpression](self "trueExpression")];
      falseExpression = [(NSTernaryExpression *)self falseExpression];

      [falseExpression acceptVisitor:visitor flags:flags];
    }

    else
    {
      [-[NSTernaryExpression predicate](self "predicate")];
      [-[NSTernaryExpression trueExpression](self "trueExpression")];
      [-[NSTernaryExpression falseExpression](self "falseExpression")];

      [visitor visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = -[NSTernaryExpression initWithPredicate:trueExpression:falseExpression:]([NSTernaryExpression alloc], "initWithPredicate:trueExpression:falseExpression:", [-[NSTernaryExpression predicate](self "predicate")], objc_msgSend(-[NSTernaryExpression trueExpression](self, "trueExpression"), "_expressionWithSubstitutionVariables:", variables), objc_msgSend(-[NSTernaryExpression falseExpression](self, "falseExpression"), "_expressionWithSubstitutionVariables:", variables));

  return v3;
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if ([-[NSTernaryExpression predicate](self "predicate")])
  {
    trueExpression = [(NSTernaryExpression *)self trueExpression];
  }

  else
  {
    trueExpression = [(NSTernaryExpression *)self falseExpression];
  }

  v9 = [trueExpression expressionValueWithObject:object context:context];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v9;
}

@end
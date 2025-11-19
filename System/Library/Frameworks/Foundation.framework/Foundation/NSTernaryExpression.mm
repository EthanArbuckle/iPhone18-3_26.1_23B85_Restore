@interface NSTernaryExpression
- (BOOL)isEqual:(id)a3;
- (NSTernaryExpression)initWithCoder:(id)a3;
- (NSTernaryExpression)initWithPredicate:(id)a3 trueExpression:(id)a4 falseExpression:(id)a5;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (NSTernaryExpression)initWithPredicate:(id)a3 trueExpression:(id)a4 falseExpression:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSTernaryExpression;
  v8 = [(NSExpression *)&v10 initWithExpressionType:20];
  if (v8)
  {
    v8->_predicate = a3;
    v8->_trueExpression = a4;
    v8->_falseExpression = a5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSTernaryExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:-[NSTernaryExpression predicate](self forKey:{"predicate"), @"NSPredicate"}];
  [a3 encodeObject:-[NSTernaryExpression trueExpression](self forKey:{"trueExpression"), @"NSTrueExpression"}];
  [a3 encodeObject:-[NSTernaryExpression falseExpression](self forKey:{"falseExpression"), @"NSFalseExpression"}];
}

- (NSTernaryExpression)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v13.receiver = self;
  v13.super_class = NSTernaryExpression;
  v5 = [(NSExpression *)&v13 initWithCoder:a3];
  if (v5)
  {
    v6 = [a3 allowedClasses];
    v7 = [v6 count];
    if (v7)
    {
      v8 = [v6 mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
      v9 = [v6 mutableCopy];
      [v9 unionSet:{+[_NSPredicateUtilities _predicateClassesForSecureCoding](_NSPredicateUtilities, "_predicateClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
      v9 = +[_NSPredicateUtilities _predicateClassesForSecureCoding];
    }

    v5->_predicate = [a3 decodeObjectOfClasses:v9 forKey:@"NSPredicate"];
    v5->_trueExpression = [a3 decodeObjectOfClasses:v8 forKey:@"NSTrueExpression"];
    v5->_falseExpression = [a3 decodeObjectOfClasses:v8 forKey:@"NSFalseExpression"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [-[NSTernaryExpression predicate](self predicate];
  v5 = [-[NSTernaryExpression trueExpression](self "trueExpression")];
  v6 = [-[NSTernaryExpression falseExpression](self "falseExpression")];
  v7 = [objc_alloc(objc_opt_class()) initWithPredicate:v4 trueExpression:v5 falseExpression:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSTernaryExpression *)self expressionType];
  if (v5 != [a3 expressionType] || !objc_msgSend(-[NSTernaryExpression predicate](self, "predicate"), "isEqual:", objc_msgSend(a3, "predicate")) || !objc_msgSend(-[NSTernaryExpression trueExpression](self, "trueExpression"), "isEqual:", objc_msgSend(a3, "trueExpression")))
  {
    return 0;
  }

  v6 = [(NSTernaryExpression *)self falseExpression];
  v7 = [a3 falseExpression];

  return [v6 isEqual:v7];
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
      [-[NSTernaryExpression predicate](self "predicate")];
      [-[NSTernaryExpression trueExpression](self "trueExpression")];
      v7 = [(NSTernaryExpression *)self falseExpression];

      [v7 acceptVisitor:a3 flags:a4];
    }

    else
    {
      [-[NSTernaryExpression predicate](self "predicate")];
      [-[NSTernaryExpression trueExpression](self "trueExpression")];
      [-[NSTernaryExpression falseExpression](self "falseExpression")];

      [a3 visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = -[NSTernaryExpression initWithPredicate:trueExpression:falseExpression:]([NSTernaryExpression alloc], "initWithPredicate:trueExpression:falseExpression:", [-[NSTernaryExpression predicate](self "predicate")], objc_msgSend(-[NSTernaryExpression trueExpression](self, "trueExpression"), "_expressionWithSubstitutionVariables:", a3), objc_msgSend(-[NSTernaryExpression falseExpression](self, "falseExpression"), "_expressionWithSubstitutionVariables:", a3));

  return v3;
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if ([-[NSTernaryExpression predicate](self "predicate")])
  {
    v8 = [(NSTernaryExpression *)self trueExpression];
  }

  else
  {
    v8 = [(NSTernaryExpression *)self falseExpression];
  }

  v9 = [v8 expressionValueWithObject:a3 context:a4];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v9;
}

@end
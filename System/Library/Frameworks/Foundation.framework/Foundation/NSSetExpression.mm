@interface NSSetExpression
- (BOOL)isEqual:(id)a3;
- (NSSetExpression)initWithCoder:(id)a3;
- (NSSetExpression)initWithType:(unint64_t)a3 leftExpression:(id)a4 rightExpression:(id)a5;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)predicateFormat;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSetExpression

- (NSSetExpression)initWithType:(unint64_t)a3 leftExpression:(id)a4 rightExpression:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSSetExpression;
  v7 = [(NSExpression *)&v9 initWithExpressionType:a3];
  if (v7)
  {
    v7->_left = a4;
    v7->_right = a5;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_left = 0;
  self->_right = 0;
  v3.receiver = self;
  v3.super_class = NSSetExpression;
  [(NSSetExpression *)&v3 dealloc];
}

- (void)allowEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_left allowEvaluation];
  [(NSExpression *)self->_right allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSSetExpression;
  [(NSExpression *)&v3 allowEvaluation];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSetExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:-[NSSetExpression leftExpression](self forKey:{"leftExpression"), @"NSLeftExpression"}];
  [a3 encodeObject:-[NSSetExpression rightExpression](self forKey:{"rightExpression"), @"NSRightExpression"}];
}

- (NSSetExpression)initWithCoder:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v12.receiver = self;
  v12.super_class = NSSetExpression;
  v5 = [(NSExpression *)&v12 initWithCoder:a3];
  if (v5)
  {
    v6 = [a3 allowedClasses];
    v7 = [v6 count];
    if (v7)
    {
      v8 = [v6 mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
    }

    v5->_left = [a3 decodeObjectOfClasses:v8 forKey:@"NSLeftExpression"];
    v5->_right = [a3 decodeObjectOfClasses:v8 forKey:@"NSRightExpression"];
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = 0;
        if (!v7)
        {
LABEL_14:
          if (v9)
          {

            objc_exception_throw(v9);
          }

          return v5;
        }

LABEL_13:

        goto LABEL_14;
      }

      v10 = @"Malformed set expression (bad right hand side)";
    }

    else
    {
      v10 = @"Malformed set expression (bad left hand side)";
    }

    v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v10 userInfo:0];
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [-[NSSetExpression leftExpression](self leftExpression];
  v5 = [-[NSSetExpression rightExpression](self "rightExpression")];
  v6 = [[NSSetExpression alloc] initWithType:[(NSExpression *)self expressionType] leftExpression:v4 rightExpression:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSExpression *)self expressionType];
  if (v5 != [a3 expressionType] || !objc_msgSend(-[NSSetExpression leftExpression](self, "leftExpression"), "isEqual:", objc_msgSend(a3, "leftExpression")))
  {
    return 0;
  }

  v6 = [(NSSetExpression *)self rightExpression];
  v7 = [a3 rightExpression];

  return [v6 isEqual:v7];
}

- (id)predicateFormat
{
  v3 = [(NSExpression *)self expressionType];
  v4 = @"MINUS";
  if (v3 == NSIntersectSetExpressionType)
  {
    v4 = @"INTERSECT";
  }

  if (v3 == NSUnionSetExpressionType)
  {
    v5 = @"UNION";
  }

  else
  {
    v5 = v4;
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ %@", [-[NSSetExpression leftExpression](self "leftExpression")], v5, objc_msgSend(-[NSSetExpression rightExpression](self, "rightExpression"), "predicateFormat"));
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
      [-[NSSetExpression leftExpression](self "leftExpression")];
      v7 = [(NSSetExpression *)self rightExpression];

      [v7 acceptVisitor:a3 flags:a4];
    }

    else
    {
      [-[NSSetExpression leftExpression](self "leftExpression")];
      [-[NSSetExpression rightExpression](self "rightExpression")];

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

  v3 = -[NSSetExpression initWithType:leftExpression:rightExpression:]([NSSetExpression alloc], "initWithType:leftExpression:rightExpression:", -[NSExpression expressionType](self, "expressionType"), [-[NSSetExpression leftExpression](self "leftExpression")], objc_msgSend(-[NSSetExpression rightExpression](self, "rightExpression"), "_expressionWithSubstitutionVariables:", a3));

  return v3;
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [objc_msgSend(-[NSSetExpression leftExpression](self "leftExpression")];
  v9 = [-[NSSetExpression rightExpression](self "rightExpression")];
  if ((_NSIsNSSet() & 1) == 0)
  {
    if (_NSIsNSArray())
    {
      v10 = MEMORY[0x1E695DFA8];
    }

    else
    {
      if (!_NSIsNSOrderedSet())
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = [NSString stringWithFormat:@"Can't evaluate set expression; left subexpression not a set (lhs = %@ rhs = %@)", v8, v9];
        goto LABEL_34;
      }

      v10 = MEMORY[0x1E695DFA8];
      v8 = [v8 array];
    }

    v8 = [v10 setWithArray:v8];
  }

  if (v9 && (_NSIsNSSet() & 1) == 0)
  {
    if (_NSIsNSArray())
    {
      v11 = [MEMORY[0x1E695DFD8] setWithArray:v9];
LABEL_17:
      v9 = v11;
      goto LABEL_18;
    }

    if (_NSIsNSOrderedSet())
    {
      v12 = MEMORY[0x1E695DFD8];
      v13 = [v9 array];
LABEL_16:
      v11 = [v12 setWithArray:v13];
      goto LABEL_17;
    }

    if (_NSIsNSDictionary())
    {
      v12 = MEMORY[0x1E695DFD8];
      v13 = [v9 allValues];
      goto LABEL_16;
    }

    v18 = MEMORY[0x1E695DF30];
    v19 = [NSString stringWithFormat:@"Can't evaluate set expression; right subexpression not a set (lhs = %@ rhs = %@)", v8, v9];
LABEL_34:
    objc_exception_throw([v18 exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0]);
  }

LABEL_18:
  v14 = [(NSExpression *)self expressionType];
  switch(v14)
  {
    case NSMinusSetExpressionType:
      if (v9)
      {
        [v8 minusSet:v9];
      }

      break;
    case NSIntersectSetExpressionType:
      if (v9)
      {
        [v8 intersectSet:v9];
      }

      break;
    case NSUnionSetExpressionType:
      if (v9)
      {
        [v8 unionSet:v9];
      }

      break;
    default:
      v16 = MEMORY[0x1E695DF30];
      v17 = [NSString stringWithFormat:@"Can't evaluate set expression; unknown expression type (%lu)", v14];
      objc_exception_throw([v16 exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
}

@end
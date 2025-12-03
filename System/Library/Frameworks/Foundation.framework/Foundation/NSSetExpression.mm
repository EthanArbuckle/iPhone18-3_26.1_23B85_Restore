@interface NSSetExpression
- (BOOL)isEqual:(id)equal;
- (NSSetExpression)initWithCoder:(id)coder;
- (NSSetExpression)initWithType:(unint64_t)type leftExpression:(id)expression rightExpression:(id)rightExpression;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)predicateFormat;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSetExpression

- (NSSetExpression)initWithType:(unint64_t)type leftExpression:(id)expression rightExpression:(id)rightExpression
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSSetExpression;
  v7 = [(NSExpression *)&v9 initWithExpressionType:type];
  if (v7)
  {
    v7->_left = expression;
    v7->_right = rightExpression;
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

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSetExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:-[NSSetExpression leftExpression](self forKey:{"leftExpression"), @"NSLeftExpression"}];
  [coder encodeObject:-[NSSetExpression rightExpression](self forKey:{"rightExpression"), @"NSRightExpression"}];
}

- (NSSetExpression)initWithCoder:(id)coder
{
  v13 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v12.receiver = self;
  v12.super_class = NSSetExpression;
  v5 = [(NSExpression *)&v12 initWithCoder:coder];
  if (v5)
  {
    allowedClasses = [coder allowedClasses];
    v7 = [allowedClasses count];
    if (v7)
    {
      v8 = [allowedClasses mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
    }

    v5->_left = [coder decodeObjectOfClasses:v8 forKey:@"NSLeftExpression"];
    v5->_right = [coder decodeObjectOfClasses:v8 forKey:@"NSRightExpression"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  leftExpression = [-[NSSetExpression leftExpression](self leftExpression];
  v5 = [-[NSSetExpression rightExpression](self "rightExpression")];
  v6 = [[NSSetExpression alloc] initWithType:[(NSExpression *)self expressionType] leftExpression:leftExpression rightExpression:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  expressionType = [(NSExpression *)self expressionType];
  if (expressionType != [equal expressionType] || !objc_msgSend(-[NSSetExpression leftExpression](self, "leftExpression"), "isEqual:", objc_msgSend(equal, "leftExpression")))
  {
    return 0;
  }

  rightExpression = [(NSSetExpression *)self rightExpression];
  rightExpression2 = [equal rightExpression];

  return [rightExpression isEqual:rightExpression2];
}

- (id)predicateFormat
{
  expressionType = [(NSExpression *)self expressionType];
  v4 = @"MINUS";
  if (expressionType == NSIntersectSetExpressionType)
  {
    v4 = @"INTERSECT";
  }

  if (expressionType == NSUnionSetExpressionType)
  {
    v5 = @"UNION";
  }

  else
  {
    v5 = v4;
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ %@ %@", [-[NSSetExpression leftExpression](self "leftExpression")], v5, objc_msgSend(-[NSSetExpression rightExpression](self, "rightExpression"), "predicateFormat"));
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
      [-[NSSetExpression leftExpression](self "leftExpression")];
      rightExpression = [(NSSetExpression *)self rightExpression];

      [rightExpression acceptVisitor:visitor flags:flags];
    }

    else
    {
      [-[NSSetExpression leftExpression](self "leftExpression")];
      [-[NSSetExpression rightExpression](self "rightExpression")];

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

  v3 = -[NSSetExpression initWithType:leftExpression:rightExpression:]([NSSetExpression alloc], "initWithType:leftExpression:rightExpression:", -[NSExpression expressionType](self, "expressionType"), [-[NSSetExpression leftExpression](self "leftExpression")], objc_msgSend(-[NSSetExpression rightExpression](self, "rightExpression"), "_expressionWithSubstitutionVariables:", variables));

  return v3;
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  array = [objc_msgSend(-[NSSetExpression leftExpression](self "leftExpression")];
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
        v19 = [NSString stringWithFormat:@"Can't evaluate set expression; left subexpression not a set (lhs = %@ rhs = %@)", array, v9];
        goto LABEL_34;
      }

      v10 = MEMORY[0x1E695DFA8];
      array = [array array];
    }

    array = [v10 setWithArray:array];
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
      array2 = [v9 array];
LABEL_16:
      v11 = [v12 setWithArray:array2];
      goto LABEL_17;
    }

    if (_NSIsNSDictionary())
    {
      v12 = MEMORY[0x1E695DFD8];
      array2 = [v9 allValues];
      goto LABEL_16;
    }

    v18 = MEMORY[0x1E695DF30];
    v19 = [NSString stringWithFormat:@"Can't evaluate set expression; right subexpression not a set (lhs = %@ rhs = %@)", array, v9];
LABEL_34:
    objc_exception_throw([v18 exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0]);
  }

LABEL_18:
  expressionType = [(NSExpression *)self expressionType];
  switch(expressionType)
  {
    case NSMinusSetExpressionType:
      if (v9)
      {
        [array minusSet:v9];
      }

      break;
    case NSIntersectSetExpressionType:
      if (v9)
      {
        [array intersectSet:v9];
      }

      break;
    case NSUnionSetExpressionType:
      if (v9)
      {
        [array unionSet:v9];
      }

      break;
    default:
      v16 = MEMORY[0x1E695DF30];
      v17 = [NSString stringWithFormat:@"Can't evaluate set expression; unknown expression type (%lu)", expressionType];
      objc_exception_throw([v16 exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return array;
}

@end
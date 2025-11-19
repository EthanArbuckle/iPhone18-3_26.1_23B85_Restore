@interface NSVariableAssignmentExpression
- (BOOL)isEqual:(id)a3;
- (NSVariableAssignmentExpression)initWithAssignmentExpression:(id)a3 expression:(id)a4;
- (NSVariableAssignmentExpression)initWithAssignmentVariable:(id)a3 expression:(id)a4;
- (NSVariableAssignmentExpression)initWithCoder:(id)a3;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)predicateFormat;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSVariableAssignmentExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSVariableAssignmentExpression;
  [(NSVariableAssignmentExpression *)&v3 dealloc];
}

- (NSVariableAssignmentExpression)initWithAssignmentVariable:(id)a3 expression:(id)a4
{
  v6 = [[NSVariableExpression allocWithZone:?], "initWithObject:", a3];
  v7 = [(NSVariableAssignmentExpression *)self initWithAssignmentExpression:v6 expression:a4];

  return v7;
}

- (NSVariableAssignmentExpression)initWithAssignmentExpression:(id)a3 expression:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSVariableAssignmentExpression;
  v6 = [(NSExpression *)&v8 initWithExpressionType:12];
  v6->_assignmentVariable = a3;
  v6->_subexpression = a4;
  return v6;
}

- (void)allowEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_assignmentVariable allowEvaluation];
  [(NSExpression *)self->_subexpression allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSVariableAssignmentExpression;
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
  v5.super_class = NSVariableAssignmentExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:-[NSVariableExpression variable](self->_assignmentVariable forKey:{"variable"), @"NSAssignmentVariable"}];
  [a3 encodeObject:self->_subexpression forKey:@"NSSubexpression"];
}

- (NSVariableAssignmentExpression)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v14.receiver = self;
  v14.super_class = NSVariableAssignmentExpression;
  v5 = [(NSExpression *)&v14 initWithCoder:a3];
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

    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSAssignmentVariable"];
    v10 = [[NSVariableExpression alloc] initWithObject:v9];
    v5->_assignmentVariable = v10;
    *&v10->super._expressionFlags |= 1u;
    v5->_subexpression = [a3 decodeObjectOfClasses:v8 forKey:@"NSSubexpression"];
    if (objc_opt_isKindOfClass())
    {
      if (v9)
      {
        v11 = 0;
        if (!v7)
        {
LABEL_14:
          if (v11)
          {

            objc_exception_throw(v11);
          }

          return v5;
        }

LABEL_13:

        goto LABEL_14;
      }

      v12 = @"Malformed assignment expression (bad variable)";
    }

    else
    {
      v12 = @"Malformed assignment expression (bad expression)";
    }

    v11 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v12 userInfo:0];
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
  v4 = [(NSVariableExpression *)self->_assignmentVariable copy];
  v5 = [(NSExpression *)self->_subexpression copy];
  v6 = [objc_alloc(objc_opt_class()) initWithAssignmentExpression:v4 expression:v5];

  return v6;
}

- (id)predicateFormat
{
  v3 = [(NSExpression *)self->_subexpression _shouldUseParensWithDescription];
  if (v3)
  {
    v4 = CFSTR("(");
  }

  else
  {
    v4 = &stru_1EEEFDF90;
  }

  if (v3)
  {
    v5 = @"");
  }

  else
  {
    v5 = &stru_1EEEFDF90;
  }

  return [NSString stringWithFormat:@"%@ := %@%@%@", [(NSExpression *)self->_assignmentVariable description], v4, [(NSExpression *)self->_subexpression description], v5];
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(a3 "variable")])
  {
    return 0;
  }

  v5 = [a3 subexpression];
  v6 = [(NSVariableAssignmentExpression *)self subexpression];

  return [v5 isEqual:v6];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if (!a4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"must have a bindings dictionary to do variable assignments" userInfo:0]);
  }

  v8 = [(NSExpression *)self->_subexpression expressionValueWithObject:a3 context:a4];
  [a4 setObject:v8 forKey:{-[NSVariableAssignmentExpression variable](self, "variable")}];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
      [(NSExpression *)self->_assignmentVariable acceptVisitor:a3 flags:a4];
      subexpression = self->_subexpression;

      [(NSExpression *)subexpression acceptVisitor:a3 flags:a4];
    }

    else
    {
      [(NSExpression *)self->_assignmentVariable acceptVisitor:a3 flags:a4];
      [(NSExpression *)self->_subexpression acceptVisitor:a3 flags:a4];

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

  v3 = [objc_alloc(objc_opt_class()) initWithAssignmentExpression:objc_msgSend(-[NSVariableAssignmentExpression assignmentVariable](self expression:{"assignmentVariable"), "_expressionWithSubstitutionVariables:", a3), objc_msgSend(-[NSVariableAssignmentExpression subexpression](self, "subexpression"), "_expressionWithSubstitutionVariables:", a3)}];

  return v3;
}

@end
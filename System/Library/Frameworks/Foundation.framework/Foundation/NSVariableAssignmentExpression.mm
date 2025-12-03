@interface NSVariableAssignmentExpression
- (BOOL)isEqual:(id)equal;
- (NSVariableAssignmentExpression)initWithAssignmentExpression:(id)expression expression:(id)a4;
- (NSVariableAssignmentExpression)initWithAssignmentVariable:(id)variable expression:(id)expression;
- (NSVariableAssignmentExpression)initWithCoder:(id)coder;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)predicateFormat;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSVariableAssignmentExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSVariableAssignmentExpression;
  [(NSVariableAssignmentExpression *)&v3 dealloc];
}

- (NSVariableAssignmentExpression)initWithAssignmentVariable:(id)variable expression:(id)expression
{
  variable = [[NSVariableExpression allocWithZone:?], "initWithObject:", variable];
  v7 = [(NSVariableAssignmentExpression *)self initWithAssignmentExpression:variable expression:expression];

  return v7;
}

- (NSVariableAssignmentExpression)initWithAssignmentExpression:(id)expression expression:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSVariableAssignmentExpression;
  v6 = [(NSExpression *)&v8 initWithExpressionType:12];
  v6->_assignmentVariable = expression;
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

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSVariableAssignmentExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:-[NSVariableExpression variable](self->_assignmentVariable forKey:{"variable"), @"NSAssignmentVariable"}];
  [coder encodeObject:self->_subexpression forKey:@"NSSubexpression"];
}

- (NSVariableAssignmentExpression)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v14.receiver = self;
  v14.super_class = NSVariableAssignmentExpression;
  v5 = [(NSExpression *)&v14 initWithCoder:coder];
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

    v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSAssignmentVariable"];
    v10 = [[NSVariableExpression alloc] initWithObject:v9];
    v5->_assignmentVariable = v10;
    *&v10->super._expressionFlags |= 1u;
    v5->_subexpression = [coder decodeObjectOfClasses:v8 forKey:@"NSSubexpression"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(NSVariableExpression *)self->_assignmentVariable copy];
  v5 = [(NSExpression *)self->_subexpression copy];
  v6 = [objc_alloc(objc_opt_class()) initWithAssignmentExpression:v4 expression:v5];

  return v6;
}

- (id)predicateFormat
{
  _shouldUseParensWithDescription = [(NSExpression *)self->_subexpression _shouldUseParensWithDescription];
  if (_shouldUseParensWithDescription)
  {
    v4 = CFSTR("(");
  }

  else
  {
    v4 = &stru_1EEEFDF90;
  }

  if (_shouldUseParensWithDescription)
  {
    v5 = @"");
  }

  else
  {
    v5 = &stru_1EEEFDF90;
  }

  return [NSString stringWithFormat:@"%@ := %@%@%@", [(NSExpression *)self->_assignmentVariable description], v4, [(NSExpression *)self->_subexpression description], v5];
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(equal "variable")])
  {
    return 0;
  }

  subexpression = [equal subexpression];
  subexpression2 = [(NSVariableAssignmentExpression *)self subexpression];

  return [subexpression isEqual:subexpression2];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if (!context)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"must have a bindings dictionary to do variable assignments" userInfo:0]);
  }

  v8 = [(NSExpression *)self->_subexpression expressionValueWithObject:object context:context];
  [context setObject:v8 forKey:{-[NSVariableAssignmentExpression variable](self, "variable")}];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
      [(NSExpression *)self->_assignmentVariable acceptVisitor:visitor flags:flags];
      subexpression = self->_subexpression;

      [(NSExpression *)subexpression acceptVisitor:visitor flags:flags];
    }

    else
    {
      [(NSExpression *)self->_assignmentVariable acceptVisitor:visitor flags:flags];
      [(NSExpression *)self->_subexpression acceptVisitor:visitor flags:flags];

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

  v3 = [objc_alloc(objc_opt_class()) initWithAssignmentExpression:objc_msgSend(-[NSVariableAssignmentExpression assignmentVariable](self expression:{"assignmentVariable"), "_expressionWithSubstitutionVariables:", variables), objc_msgSend(-[NSVariableAssignmentExpression subexpression](self, "subexpression"), "_expressionWithSubstitutionVariables:", variables)}];

  return v3;
}

@end
@interface NSVariableExpression
- (BOOL)isEqual:(id)a3;
- (NSVariableExpression)initWithCoder:(id)a3;
- (NSVariableExpression)initWithObject:(id)a3;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSVariableExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSVariableExpression;
  [(NSVariableExpression *)&v3 dealloc];
}

- (id)predicateFormat
{
  v2 = [(NSVariableExpression *)self variable];
  v3 = [_NSPredicateUtilities _isReservedWordInParser:v2];
  v4 = &stru_1EEEFDF90;
  if (v3)
  {
    v4 = @"#";
  }

  return [NSString stringWithFormat:@"$%@%@", v4, v2];
}

- (NSVariableExpression)initWithObject:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSVariableExpression;
  v4 = [(NSExpression *)&v6 initWithExpressionType:2];
  v4->_variable = a3;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSVariableExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:self->_variable forKey:@"NSVariable"];
}

- (NSVariableExpression)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSVariableExpression;
  v5 = [(NSExpression *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_variable = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSVariable"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  variable = self->_variable;

  return [v4 initWithObject:variable];
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 variable];
  v6 = [(NSVariableExpression *)self variable];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(NSVariableExpression *)self variable];

  return [v2 hash];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [a4 objectForKey:self->_variable];
  if (!v8)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = [NSString stringWithFormat:@"Can't get value for '%@' in bindings %@.", self->_variable, a4];
    objc_exception_throw([v10 exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
  }

  if ([MEMORY[0x1E695DFB0] null] == v8)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = [v8 expressionValueWithObject:a3 context:a4];
  }

  if (v7)
  {
LABEL_7:
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
}

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = self;
  v4 = [a3 objectForKey:self->_variable];
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  if ([MEMORY[0x1E695DFB0] null] == v4)
  {
    v7 = 0;
  }

  else
  {
    if (objc_opt_isKindOfClass())
    {
      return v5;
    }

    v7 = v5;
  }

  return [NSExpression expressionForConstantValue:v7];
}

@end
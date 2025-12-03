@interface NSVariableExpression
- (BOOL)isEqual:(id)equal;
- (NSVariableExpression)initWithCoder:(id)coder;
- (NSVariableExpression)initWithObject:(id)object;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
  variable = [(NSVariableExpression *)self variable];
  v3 = [_NSPredicateUtilities _isReservedWordInParser:variable];
  v4 = &stru_1EEEFDF90;
  if (v3)
  {
    v4 = @"#";
  }

  return [NSString stringWithFormat:@"$%@%@", v4, variable];
}

- (NSVariableExpression)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSVariableExpression;
  v4 = [(NSExpression *)&v6 initWithExpressionType:2];
  v4->_variable = object;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSVariableExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:self->_variable forKey:@"NSVariable"];
}

- (NSVariableExpression)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSVariableExpression;
  v5 = [(NSExpression *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_variable = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSVariable"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  variable = self->_variable;

  return [v4 initWithObject:variable];
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  variable = [equal variable];
  variable2 = [(NSVariableExpression *)self variable];

  return [variable isEqual:variable2];
}

- (unint64_t)hash
{
  variable = [(NSVariableExpression *)self variable];

  return [variable hash];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [context objectForKey:self->_variable];
  if (!v8)
  {
    v10 = MEMORY[0x1E695DF30];
    context = [NSString stringWithFormat:@"Can't get value for '%@' in bindings %@.", self->_variable, context];
    objc_exception_throw([v10 exceptionWithName:*MEMORY[0x1E695D940] reason:context userInfo:0]);
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
    v8 = [v8 expressionValueWithObject:object context:context];
  }

  if (v7)
  {
LABEL_7:
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  selfCopy = self;
  v4 = [variables objectForKey:self->_variable];
  if (!v4)
  {
    return selfCopy;
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
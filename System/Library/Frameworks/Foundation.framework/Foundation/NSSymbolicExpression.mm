@interface NSSymbolicExpression
- (BOOL)isEqual:(id)equal;
- (NSSymbolicExpression)initWithCoder:(id)coder;
- (NSSymbolicExpression)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSymbolicExpression

- (NSSymbolicExpression)initWithString:(id)string
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSSymbolicExpression;
  v4 = [(NSExpression *)&v7 initWithExpressionType:11];
  if (!string || (v5 = v4, (_NSIsNSString() & 1) == 0))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't create a symbolic expression with a nil token" userInfo:0]);
  }

  v5->_token = string;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSymbolicExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:self->_token forKey:@"NSToken"];
}

- (NSSymbolicExpression)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = NSSymbolicExpression;
  result = [(NSExpression *)&v6 initWithCoder:coder];
  if (result)
  {
    return -[NSSymbolicExpression initWithString:](result, "initWithString:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSToken"]);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  token = self->_token;

  return [v4 initWithString:token];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSymbolicExpression;
  [(NSSymbolicExpression *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  token = self->_token;
  v6 = *(equal + 3);

  return [(NSString *)token isEqual:v6];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation:object])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  return self;
}

@end
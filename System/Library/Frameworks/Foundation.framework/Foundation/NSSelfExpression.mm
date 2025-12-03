@interface NSSelfExpression
+ (void)initialize;
- (NSSelfExpression)initWithCoder:(id)coder;
- (id)_initPrivate;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSelfExpression

+ (void)initialize
{
  if (!_NSSelfExpressionSingleton)
  {
    v2 = NSAllocateObject(self, 0, 0);
    _NSSelfExpressionSingleton = v2;

    [v2 _initPrivate];
  }
}

- (id)_initPrivate
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSSelfExpression;
  return [(NSExpression *)&v3 initWithExpressionType:1];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSSelfExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
}

- (NSSelfExpression)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  return _NSSelfExpressionSingleton;
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (_NSPredicateUtilities == object)
  {
    return 0;
  }

  else
  {
    return object;
  }
}

@end
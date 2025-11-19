@interface NSAnyKeyExpression
+ (void)initialize;
- (NSAnyKeyExpression)initWithCoder:(id)a3;
- (id)_initPrivate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSAnyKeyExpression

+ (void)initialize
{
  if (!_NSAnyKeyExpressionSingleton)
  {
    v2 = NSAllocateObject(a1, 0, 0);
    _NSAnyKeyExpressionSingleton = v2;

    [v2 _initPrivate];
  }
}

- (id)_initPrivate
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSAnyKeyExpression;
  return [(NSExpression *)&v3 initWithExpressionType:15];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSAnyKeyExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
}

- (NSAnyKeyExpression)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  return _NSAnyKeyExpressionSingleton;
}

@end
@interface NSKeyPathSpecifierExpression
- (BOOL)isEqual:(id)equal;
- (NSKeyPathSpecifierExpression)initWithCoder:(id)coder;
- (NSKeyPathSpecifierExpression)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSKeyPathSpecifierExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyPathSpecifierExpression;
  [(NSKeyPathSpecifierExpression *)&v3 dealloc];
}

- (id)predicateFormat
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_value componentsSeparatedByString:@"."];
  v4 = [NSMutableString stringWithCapacity:[(NSString *)self->_value length]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v7)
        {
          [(NSMutableString *)v4 appendString:@"."];
        }

        if ([_NSPredicateUtilities _isReservedWordInParser:v10])
        {
          [(NSMutableString *)v4 appendString:@"#"];
        }

        [(NSMutableString *)v4 appendString:v10];
        ++v9;
        v7 = 1;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSKeyPathSpecifierExpression)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSKeyPathSpecifierExpression;
  v4 = [(NSExpression *)&v6 initWithExpressionType:10];
  v4->_value = object;
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
  v5.super_class = NSKeyPathSpecifierExpression;
  [(NSExpression *)&v5 encodeWithCoder:coder];
  [coder encodeObject:self->_value forKey:@"NSKeyPath"];
}

- (NSKeyPathSpecifierExpression)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSKeyPathSpecifierExpression;
  v5 = [(NSExpression *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_value = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSKeyPath"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  value = self->_value;

  return [v4 initWithObject:value];
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  flagsCopy = flags;
  v20 = *MEMORY[0x1E69E9840];
  if (flags)
  {
    [visitor visitPredicateExpression:self];
  }

  if (flagsCopy & 0x10) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [-[NSKeyPathSpecifierExpression keyPath](self "keyPath")];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = &stru_1EEEFDF90;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [visitor visitPredicateExpression:self keyPathScope:v12 key:v14];
          if ([(__CFString *)v12 length])
          {
            v12 = [(__CFString *)v12 stringByAppendingString:@"."];
          }

          v12 = [(__CFString *)v12 stringByAppendingString:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v10);
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation:object])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  return self->_value;
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  keyPath = [equal keyPath];
  keyPath2 = [(NSKeyPathSpecifierExpression *)self keyPath];

  return [keyPath isEqual:keyPath2];
}

- (unint64_t)hash
{
  keyPath = [(NSKeyPathSpecifierExpression *)self keyPath];

  return [keyPath hash];
}

@end
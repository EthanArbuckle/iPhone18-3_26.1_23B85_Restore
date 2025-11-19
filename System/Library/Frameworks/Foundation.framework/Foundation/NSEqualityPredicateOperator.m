@interface NSEqualityPredicateOperator
- (BOOL)isEqual:(id)a3;
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSEqualityPredicateOperator)initWithCoder:(id)a3;
- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 negate:(BOOL)a5;
- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 negate:(BOOL)a5 options:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSEqualityPredicateOperator

- (id)predicateFormat
{
  v3 = [(NSPredicateOperator *)self symbol];
  if (self->_options)
  {
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  if (self->_options)
  {
    [v4 appendString:@"["];
    options = self->_options;
    if (options)
    {
      [v5 appendString:@"c"];
      options = self->_options;
      if ((options & 2) == 0)
      {
LABEL_7:
        if ((options & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((options & 2) == 0)
    {
      goto LABEL_7;
    }

    [v5 appendString:@"d"];
    options = self->_options;
    if ((options & 8) == 0)
    {
LABEL_8:
      if ((options & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v5 appendString:@"l"];
    options = self->_options;
    if ((options & 4) == 0)
    {
LABEL_9:
      if ((options & 0x10) == 0)
      {
LABEL_11:
        [v5 appendString:@"]"];
        goto LABEL_12;
      }

LABEL_10:
      [v5 appendString:@"w"];
      goto LABEL_11;
    }

LABEL_18:
    [v5 appendString:@"n"];
    if ((self->_options & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:

  return v5;
}

- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 negate:(BOOL)a5
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSEqualityPredicateOperator;
  result = [(NSPredicateOperator *)&v7 initWithOperatorType:a3 modifier:a4];
  if (result)
  {
    result->_negate = a5;
  }

  return result;
}

- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 negate:(BOOL)a5 options:(unint64_t)a6
{
  result = [(NSEqualityPredicateOperator *)self initWithOperatorType:a3 modifier:a4 negate:a5];
  if (result)
  {
    result->_options = a6;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSEqualityPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:a3];
  [a3 encodeBool:self->_negate forKey:@"NSNegate"];
  [a3 encodeInteger:self->_options forKey:@"NSOptions"];
}

- (NSEqualityPredicateOperator)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSEqualityPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_negate = [a3 decodeBoolForKey:@"NSNegate"];
    v5->_options = [a3 decodeIntegerForKey:@"NSOptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSPredicateOperator *)self operatorType];
  v6 = [(NSPredicateOperator *)self modifier];
  negate = self->_negate;
  options = self->_options;

  return [v4 initWithOperatorType:v5 modifier:v6 negate:negate options:options];
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSPredicateOperator *)self operatorType];
  if (v5 != [a3 operatorType])
  {
    return 0;
  }

  v6 = [(NSPredicateOperator *)self modifier];
  if (v6 != [a3 modifier])
  {
    return 0;
  }

  v7 = [(NSEqualityPredicateOperator *)self isNegation];
  if (v7 != [a3 isNegation])
  {
    return 0;
  }

  v9 = [(NSEqualityPredicateOperator *)self options];
  return v9 == [a3 options];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  if (a3 | a4)
  {
    if (a3 && a4)
    {
      if (self->_options && _NSIsNSString() && _NSIsNSString())
      {
        options = self->_options;
        if ((options & 4) != 0)
        {
          v10 = 2;
        }

        else
        {
          v9 = self->_options & 1 | (((self->_options >> 1) & 1) << 7);
          if (v9)
          {
            v10 = v9 | 0x100;
          }

          else
          {
            v10 = 0;
          }
        }

        if ((options & 8) != 0)
        {
          v12 = +[_NSPredicateOperatorUtilities retainedLocale];
        }

        else
        {
          v12 = 0;
        }

        v14.length = [a3 length];
        v14.location = 0;
        v13 = CFStringCompareWithOptionsAndLocale(a3, a4, v14, v10, v12) == kCFCompareEqualTo;

        negate = v13 ^ self->_negate;
      }

      else
      {
        negate = [a3 -[NSPredicateOperator selector](self] ^ self->_negate;
      }
    }

    else
    {
      negate = self->_negate;
    }
  }

  else
  {
    negate = !self->_negate;
  }

  return negate & 1;
}

@end
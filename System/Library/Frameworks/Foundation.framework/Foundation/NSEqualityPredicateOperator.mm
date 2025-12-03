@interface NSEqualityPredicateOperator
- (BOOL)isEqual:(id)equal;
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (NSEqualityPredicateOperator)initWithCoder:(id)coder;
- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier negate:(BOOL)negate;
- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier negate:(BOOL)negate options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSEqualityPredicateOperator

- (id)predicateFormat
{
  symbol = [(NSPredicateOperator *)self symbol];
  if (self->_options)
  {
    v4 = [symbol mutableCopy];
  }

  else
  {
    v4 = symbol;
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

- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier negate:(BOOL)negate
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSEqualityPredicateOperator;
  result = [(NSPredicateOperator *)&v7 initWithOperatorType:type modifier:modifier];
  if (result)
  {
    result->_negate = negate;
  }

  return result;
}

- (NSEqualityPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier negate:(BOOL)negate options:(unint64_t)options
{
  result = [(NSEqualityPredicateOperator *)self initWithOperatorType:type modifier:modifier negate:negate];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSEqualityPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:coder];
  [coder encodeBool:self->_negate forKey:@"NSNegate"];
  [coder encodeInteger:self->_options forKey:@"NSOptions"];
}

- (NSEqualityPredicateOperator)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSEqualityPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_negate = [coder decodeBoolForKey:@"NSNegate"];
    v5->_options = [coder decodeIntegerForKey:@"NSOptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  operatorType = [(NSPredicateOperator *)self operatorType];
  modifier = [(NSPredicateOperator *)self modifier];
  negate = self->_negate;
  options = self->_options;

  return [v4 initWithOperatorType:operatorType modifier:modifier negate:negate options:options];
}

- (BOOL)isEqual:(id)equal
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  operatorType = [(NSPredicateOperator *)self operatorType];
  if (operatorType != [equal operatorType])
  {
    return 0;
  }

  modifier = [(NSPredicateOperator *)self modifier];
  if (modifier != [equal modifier])
  {
    return 0;
  }

  isNegation = [(NSEqualityPredicateOperator *)self isNegation];
  if (isNegation != [equal isNegation])
  {
    return 0;
  }

  options = [(NSEqualityPredicateOperator *)self options];
  return options == [equal options];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  if (object | andObject)
  {
    if (object && andObject)
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

        v14.length = [object length];
        v14.location = 0;
        v13 = CFStringCompareWithOptionsAndLocale(object, andObject, v14, v10, v12) == kCFCompareEqualTo;

        negate = v13 ^ self->_negate;
      }

      else
      {
        negate = [object -[NSPredicateOperator selector](self] ^ self->_negate;
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
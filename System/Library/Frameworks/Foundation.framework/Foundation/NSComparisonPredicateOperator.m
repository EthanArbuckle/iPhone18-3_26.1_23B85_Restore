@interface NSComparisonPredicateOperator
- (BOOL)isEqual:(id)a3;
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSComparisonPredicateOperator)initWithCoder:(id)a3;
- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5;
- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5 options:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSComparisonPredicateOperator

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

        goto LABEL_16;
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
LABEL_10:
        [v5 appendString:@"]"];
        goto LABEL_11;
      }

LABEL_9:
      [v5 appendString:@"n"];
      goto LABEL_10;
    }

LABEL_16:
    [v5 appendString:@"l"];
    if ((self->_options & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:

  return v5;
}

- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSComparisonPredicateOperator;
  result = [(NSPredicateOperator *)&v7 initWithOperatorType:a3 modifier:a4];
  if (result)
  {
    result->_variant = a5;
  }

  return result;
}

- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5 options:(unint64_t)a6
{
  result = [(NSComparisonPredicateOperator *)self initWithOperatorType:a3 modifier:a4 variant:a5];
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
  v5.super_class = NSComparisonPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:a3];
  [a3 encodeInteger:self->_variant forKey:@"NSVariant"];
  [a3 encodeInteger:self->_options forKey:@"NSOptions"];
}

- (NSComparisonPredicateOperator)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSComparisonPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_variant = [a3 decodeIntegerForKey:@"NSVariant"];
    v5->_options = [a3 decodeIntegerForKey:@"NSOptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSPredicateOperator *)self operatorType];
  v6 = [(NSPredicateOperator *)self modifier];
  variant = self->_variant;
  options = self->_options;

  return [v4 initWithOperatorType:v5 modifier:v6 variant:variant options:options];
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

  v7 = [(NSComparisonPredicateOperator *)self variant];
  if (v7 != [a3 variant])
  {
    return 0;
  }

  v8 = [(NSComparisonPredicateOperator *)self options];
  return v8 == [a3 options];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  if (!(a3 | a4))
  {
    return ((self->_variant - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  result = 0;
  if (a3 && a4)
  {
    if (self->_options && _NSIsNSString() && _NSIsNSString())
    {
      options = self->_options;
      if ((options & 4) != 0)
      {
        v11 = 2;
      }

      else
      {
        v10 = self->_options & 1 | (((self->_options >> 1) & 1) << 7);
        if (v10)
        {
          v11 = v10 | 0x100;
        }

        else
        {
          v11 = 0;
        }
      }

      if ((options & 8) != 0)
      {
        v15 = +[_NSPredicateOperatorUtilities retainedLocale];
      }

      else
      {
        v15 = 0;
      }

      v16.length = [a3 length];
      v16.location = 0;
      v12 = CFStringCompareWithOptionsAndLocale(a3, a4, v16, v11, v15);
    }

    else
    {
      v12 = [a3 -[NSPredicateOperator selector](self];
    }

    variant = self->_variant;
    switch(variant)
    {
      case 2uLL:
        return v12 == 1;
      case 1uLL:
        v14 = (v12 + 1) >= 2;
        break;
      case 0uLL:
        return v12 + 1 == 0;
      default:
        v14 = v12 >= 2;
        break;
    }

    return !v14;
  }

  return result;
}

@end
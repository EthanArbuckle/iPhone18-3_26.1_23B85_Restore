@interface NSComparisonPredicateOperator
- (BOOL)isEqual:(id)equal;
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (NSComparisonPredicateOperator)initWithCoder:(id)coder;
- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant;
- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSComparisonPredicateOperator

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

- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSComparisonPredicateOperator;
  result = [(NSPredicateOperator *)&v7 initWithOperatorType:type modifier:modifier];
  if (result)
  {
    result->_variant = variant;
  }

  return result;
}

- (NSComparisonPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant options:(unint64_t)options
{
  result = [(NSComparisonPredicateOperator *)self initWithOperatorType:type modifier:modifier variant:variant];
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
  v5.super_class = NSComparisonPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:coder];
  [coder encodeInteger:self->_variant forKey:@"NSVariant"];
  [coder encodeInteger:self->_options forKey:@"NSOptions"];
}

- (NSComparisonPredicateOperator)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSComparisonPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_variant = [coder decodeIntegerForKey:@"NSVariant"];
    v5->_options = [coder decodeIntegerForKey:@"NSOptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  operatorType = [(NSPredicateOperator *)self operatorType];
  modifier = [(NSPredicateOperator *)self modifier];
  variant = self->_variant;
  options = self->_options;

  return [v4 initWithOperatorType:operatorType modifier:modifier variant:variant options:options];
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

  variant = [(NSComparisonPredicateOperator *)self variant];
  if (variant != [equal variant])
  {
    return 0;
  }

  options = [(NSComparisonPredicateOperator *)self options];
  return options == [equal options];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  if (!(object | andObject))
  {
    return ((self->_variant - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  result = 0;
  if (object && andObject)
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

      v16.length = [object length];
      v16.location = 0;
      v12 = CFStringCompareWithOptionsAndLocale(object, andObject, v16, v11, v15);
    }

    else
    {
      v12 = [object -[NSPredicateOperator selector](self];
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
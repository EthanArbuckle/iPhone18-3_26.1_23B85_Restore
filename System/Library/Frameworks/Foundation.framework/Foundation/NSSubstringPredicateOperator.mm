@interface NSSubstringPredicateOperator
- (BOOL)isEqual:(id)equal;
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (NSSubstringPredicateOperator)initWithCoder:(id)coder;
- (NSSubstringPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant position:(unint64_t)position;
- (id)symbol;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSubstringPredicateOperator

- (NSSubstringPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant position:(unint64_t)position
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSSubstringPredicateOperator;
  result = [(NSStringPredicateOperator *)&v8 initWithOperatorType:type modifier:modifier variant:variant];
  if (result)
  {
    result->_position = position;
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
  v5.super_class = NSSubstringPredicateOperator;
  [(NSStringPredicateOperator *)&v5 encodeWithCoder:coder];
  [coder encodeInteger:self->_position forKey:@"NSPosition"];
}

- (NSSubstringPredicateOperator)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSSubstringPredicateOperator;
  v5 = [(NSStringPredicateOperator *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_position = [coder decodeIntegerForKey:@"NSPosition"];
  }

  return v5;
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

  flags = [(NSStringPredicateOperator *)self flags];
  if (flags != [equal flags])
  {
    return 0;
  }

  position = [(NSSubstringPredicateOperator *)self position];
  return position == [equal position];
}

- (id)symbol
{
  position = self->_position;
  v3 = @"BEGINSWITH";
  if (position == 2)
  {
    v3 = @"CONTAINS";
  }

  if (position == 1)
  {
    v4 = @"ENDSWITH";
  }

  else
  {
    v4 = v3;
  }

  _modifierString = [(NSStringPredicateOperator *)self _modifierString];

  return [(__CFString *)v4 stringByAppendingString:_modifierString];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  result = 0;
  if (object && andObject)
  {
    if (!_NSIsNSString() || (_NSIsNSString() & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Can't do a substring operation with something that isn't a string (lhs = %@ rhs = %@)", object, andObject), 0}]);
    }

    flags = [(NSStringPredicateOperator *)self flags];
    if ((flags & 4) != 0)
    {
      v10 = 0;
      v11 = 2;
    }

    else
    {
      v9 = flags & 1 | (((flags >> 1) & 1) << 7);
      if ((flags & 8) != 0)
      {
        v10 = +[_NSPredicateOperatorUtilities retainedLocale];
      }

      else
      {
        v10 = 0;
      }

      v11 = v9 | 0x100;
      if (!v9)
      {
        v11 = 0;
      }
    }

    position = self->_position;
    if (!position)
    {
      v11 |= 8uLL;
    }

    if (position == 1)
    {
      v13 = v11 | 0xC;
    }

    else
    {
      v13 = v11;
    }

    v14 = [object rangeOfString:andObject options:v13 range:0 locale:{objc_msgSend(object, "length"), v10}];

    return v14 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end
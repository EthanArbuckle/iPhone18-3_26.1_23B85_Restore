@interface NSSubstringPredicateOperator
- (BOOL)isEqual:(id)a3;
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSSubstringPredicateOperator)initWithCoder:(id)a3;
- (NSSubstringPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5 position:(unint64_t)a6;
- (id)symbol;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSubstringPredicateOperator

- (NSSubstringPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5 position:(unint64_t)a6
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSSubstringPredicateOperator;
  result = [(NSStringPredicateOperator *)&v8 initWithOperatorType:a3 modifier:a4 variant:a5];
  if (result)
  {
    result->_position = a6;
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
  v5.super_class = NSSubstringPredicateOperator;
  [(NSStringPredicateOperator *)&v5 encodeWithCoder:a3];
  [a3 encodeInteger:self->_position forKey:@"NSPosition"];
}

- (NSSubstringPredicateOperator)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSSubstringPredicateOperator;
  v5 = [(NSStringPredicateOperator *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_position = [a3 decodeIntegerForKey:@"NSPosition"];
  }

  return v5;
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

  v7 = [(NSStringPredicateOperator *)self flags];
  if (v7 != [a3 flags])
  {
    return 0;
  }

  v8 = [(NSSubstringPredicateOperator *)self position];
  return v8 == [a3 position];
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

  v5 = [(NSStringPredicateOperator *)self _modifierString];

  return [(__CFString *)v4 stringByAppendingString:v5];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  result = 0;
  if (a3 && a4)
  {
    if (!_NSIsNSString() || (_NSIsNSString() & 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Can't do a substring operation with something that isn't a string (lhs = %@ rhs = %@)", a3, a4), 0}]);
    }

    v8 = [(NSStringPredicateOperator *)self flags];
    if ((v8 & 4) != 0)
    {
      v10 = 0;
      v11 = 2;
    }

    else
    {
      v9 = v8 & 1 | (((v8 >> 1) & 1) << 7);
      if ((v8 & 8) != 0)
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

    v14 = [a3 rangeOfString:a4 options:v13 range:0 locale:{objc_msgSend(a3, "length"), v10}];

    return v14 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end
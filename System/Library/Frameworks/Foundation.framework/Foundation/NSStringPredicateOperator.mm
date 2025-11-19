@interface NSStringPredicateOperator
- (BOOL)isEqual:(id)a3;
- (NSStringPredicateOperator)initWithCoder:(id)a3;
- (NSStringPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5;
- (id)_modifierString;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSStringPredicateOperator

- (NSStringPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 variant:(unint64_t)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSStringPredicateOperator;
  v6 = [(NSPredicateOperator *)&v9 initWithOperatorType:a3 modifier:a4];
  v7 = v6;
  if (v6)
  {
    [(NSStringPredicateOperator *)v6 _setOptions:a5];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSStringPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:a3];
  [a3 encodeInteger:self->_flags forKey:@"NSFlags"];
}

- (NSStringPredicateOperator)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSStringPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_flags = [a3 decodeIntegerForKey:@"NSFlags"];
  }

  return v5;
}

- (id)_modifierString
{
  if (!self->_flags)
  {
    return &stru_1EEEFDF90;
  }

  v3 = [(NSString *)NSMutableString stringWithString:@"["];
  v4 = v3;
  flags = self->_flags;
  if (flags)
  {
    [(NSMutableString *)v3 appendString:@"c"];
    flags = self->_flags;
    if ((flags & 2) == 0)
    {
LABEL_4:
      if ((flags & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((flags & 2) == 0)
  {
    goto LABEL_4;
  }

  [(NSMutableString *)v4 appendString:@"d"];
  flags = self->_flags;
  if ((flags & 8) == 0)
  {
LABEL_5:
    if ((flags & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    [(NSMutableString *)v4 appendString:@"n"];
    if ((self->_flags & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  [(NSMutableString *)v4 appendString:@"l"];
  flags = self->_flags;
  if ((flags & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((flags & 0x10) != 0)
  {
LABEL_7:
    [(NSMutableString *)v4 appendString:@"w"];
  }

LABEL_8:
  [(NSMutableString *)v4 appendString:@"]"];
  return v4;
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
  return v7 == [a3 flags];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(NSPredicateOperator *)self operatorType];
  v6 = [(NSPredicateOperator *)self modifier];
  flags = self->_flags;

  return [v4 _newOperatorWithType:v5 modifier:v6 options:flags];
}

@end
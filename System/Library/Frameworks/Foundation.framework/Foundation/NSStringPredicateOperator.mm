@interface NSStringPredicateOperator
- (BOOL)isEqual:(id)equal;
- (NSStringPredicateOperator)initWithCoder:(id)coder;
- (NSStringPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant;
- (id)_modifierString;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSStringPredicateOperator

- (NSStringPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier variant:(unint64_t)variant
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSStringPredicateOperator;
  v6 = [(NSPredicateOperator *)&v9 initWithOperatorType:type modifier:modifier];
  v7 = v6;
  if (v6)
  {
    [(NSStringPredicateOperator *)v6 _setOptions:variant];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSStringPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:coder];
  [coder encodeInteger:self->_flags forKey:@"NSFlags"];
}

- (NSStringPredicateOperator)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSStringPredicateOperator;
  v5 = [(NSPredicateOperator *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_flags = [coder decodeIntegerForKey:@"NSFlags"];
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
  return flags == [equal flags];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  operatorType = [(NSPredicateOperator *)self operatorType];
  modifier = [(NSPredicateOperator *)self modifier];
  flags = self->_flags;

  return [v4 _newOperatorWithType:operatorType modifier:modifier options:flags];
}

@end
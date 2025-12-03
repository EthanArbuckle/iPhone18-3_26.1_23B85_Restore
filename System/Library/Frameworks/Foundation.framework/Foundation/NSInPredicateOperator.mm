@interface NSInPredicateOperator
- (BOOL)isEqual:(id)equal;
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (NSInPredicateOperator)initWithCoder:(id)coder;
- (NSInPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringVersion;
- (id)symbol;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSInPredicateOperator

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_stringVersion = 0;
  v3.receiver = self;
  v3.super_class = NSInPredicateOperator;
  [(NSInPredicateOperator *)&v3 dealloc];
}

- (id)symbol
{
  operatorType = [(NSPredicateOperator *)self operatorType];
  if (operatorType == 10)
  {
    v4 = @"IN";
  }

  else
  {
    if (operatorType != 99)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"In operator with invalid type %lu", operatorType), 0}]);
    }

    v4 = @"CONTAINS";
  }

  v5 = [(__CFString *)v4 mutableCopy];
  v6 = v5;
  if (!self->_flags)
  {
    return v6;
  }

  [v5 appendString:@"["];
  flags = self->_flags;
  if (flags)
  {
    [v6 appendString:@"c"];
    flags = self->_flags;
    if ((flags & 2) == 0)
    {
LABEL_8:
      if ((flags & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((flags & 2) == 0)
  {
    goto LABEL_8;
  }

  [v6 appendString:@"d"];
  flags = self->_flags;
  if ((flags & 8) == 0)
  {
LABEL_9:
    if ((flags & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v6 appendString:@"l"];
  flags = self->_flags;
  if ((flags & 4) == 0)
  {
LABEL_10:
    if ((flags & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_18:
    [v6 appendString:@"w"];
    if (!self->_flags)
    {
      return v6;
    }

    goto LABEL_12;
  }

LABEL_17:
  [v6 appendString:@"n"];
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (flags)
  {
LABEL_12:
    [v6 appendString:@"]"];
  }

  return v6;
}

- (id)stringVersion
{
  if (!self->_stringVersion)
  {
    v3 = [[NSSubstringPredicateOperator alloc] initWithOperatorType:[(NSPredicateOperator *)self operatorType] modifier:[(NSPredicateOperator *)self modifier] variant:self->_flags position:2];
    v4 = 0;
    atomic_compare_exchange_strong(&self->_stringVersion, &v4, v3);
    if (v4)
    {
    }
  }

  return self->_stringVersion;
}

- (NSInPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSInPredicateOperator;
  v6 = [(NSPredicateOperator *)&v9 initWithOperatorType:type modifier:modifier];
  v7 = v6;
  if (v6)
  {
    [(NSInPredicateOperator *)v6 _setOptions:options];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSInPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_flags forKey:@"NSFlags"];
}

- (NSInPredicateOperator)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInPredicateOperator;
  v4 = [(NSPredicateOperator *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_flags = [coder decodeIntegerForKey:@"NSFlags"];
  }

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

  flags = [(NSInPredicateOperator *)self flags];
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

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  operatorType = [(NSPredicateOperator *)self operatorType];
  if (operatorType == 10)
  {
    objectCopy = andObject;
    andObject = object;
  }

  else
  {
    objectCopy = object;
    if (operatorType != 99)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      objectCopy = [NSString stringWithFormat:@"In operator with invalid type %lu", operatorType];
      v12 = v9;
      v13 = v10;
      goto LABEL_24;
    }
  }

  result = 0;
  if (objectCopy && andObject)
  {
    if (objectCopy == [MEMORY[0x1E695DFB0] null])
    {
      return 0;
    }

    if (_NSIsNSString())
    {
      if (_NSIsNSString())
      {
        stringVersion = [(NSInPredicateOperator *)self stringVersion];

        return [stringVersion performPrimitiveOperationUsingObject:objectCopy andObject:andObject];
      }

      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      objectCopy = [NSString stringWithFormat:@"Can't look for value (%@) in string (%@); value is not a string ", andObject, objectCopy];
      v12 = v16;
      v13 = v17;
LABEL_24:
      objc_exception_throw([v12 exceptionWithName:v13 reason:objectCopy userInfo:0]);
    }

    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
    {
      if (_NSIsNSDictionary())
      {
        return [objc_msgSend(objectCopy allKeysForObject:{andObject), "count"}] != 0;
      }

      v18 = MEMORY[0x1E695DF30];
      v19 = *MEMORY[0x1E695D940];
      objectCopy = [NSString stringWithFormat:@"Can't use in/contains operator with collection %@ (not a collection)", objectCopy];
      v12 = v18;
      v13 = v19;
      goto LABEL_24;
    }

    return [objectCopy containsObject:andObject];
  }

  return result;
}

@end
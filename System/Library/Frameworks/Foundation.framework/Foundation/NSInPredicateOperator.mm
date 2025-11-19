@interface NSInPredicateOperator
- (BOOL)isEqual:(id)a3;
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSInPredicateOperator)initWithCoder:(id)a3;
- (NSInPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringVersion;
- (id)symbol;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(NSPredicateOperator *)self operatorType];
  if (v3 == 10)
  {
    v4 = @"IN";
  }

  else
  {
    if (v3 != 99)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"In operator with invalid type %lu", v3), 0}]);
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

- (NSInPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSInPredicateOperator;
  v6 = [(NSPredicateOperator *)&v9 initWithOperatorType:a3 modifier:a4];
  v7 = v6;
  if (v6)
  {
    [(NSInPredicateOperator *)v6 _setOptions:a5];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSInPredicateOperator;
  [(NSPredicateOperator *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_flags forKey:@"NSFlags"];
}

- (NSInPredicateOperator)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSInPredicateOperator;
  v4 = [(NSPredicateOperator *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_flags = [a3 decodeIntegerForKey:@"NSFlags"];
  }

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

  v7 = [(NSInPredicateOperator *)self flags];
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

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  v7 = [(NSPredicateOperator *)self operatorType];
  if (v7 == 10)
  {
    v8 = a4;
    a4 = a3;
  }

  else
  {
    v8 = a3;
    if (v7 != 99)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v11 = [NSString stringWithFormat:@"In operator with invalid type %lu", v7];
      v12 = v9;
      v13 = v10;
      goto LABEL_24;
    }
  }

  result = 0;
  if (v8 && a4)
  {
    if (v8 == [MEMORY[0x1E695DFB0] null])
    {
      return 0;
    }

    if (_NSIsNSString())
    {
      if (_NSIsNSString())
      {
        v15 = [(NSInPredicateOperator *)self stringVersion];

        return [v15 performPrimitiveOperationUsingObject:v8 andObject:a4];
      }

      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v11 = [NSString stringWithFormat:@"Can't look for value (%@) in string (%@); value is not a string ", a4, v8];
      v12 = v16;
      v13 = v17;
LABEL_24:
      objc_exception_throw([v12 exceptionWithName:v13 reason:v11 userInfo:0]);
    }

    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
    {
      if (_NSIsNSDictionary())
      {
        return [objc_msgSend(v8 allKeysForObject:{a4), "count"}] != 0;
      }

      v18 = MEMORY[0x1E695DF30];
      v19 = *MEMORY[0x1E695D940];
      v11 = [NSString stringWithFormat:@"Can't use in/contains operator with collection %@ (not a collection)", v8];
      v12 = v18;
      v13 = v19;
      goto LABEL_24;
    }

    return [v8 containsObject:a4];
  }

  return result;
}

@end
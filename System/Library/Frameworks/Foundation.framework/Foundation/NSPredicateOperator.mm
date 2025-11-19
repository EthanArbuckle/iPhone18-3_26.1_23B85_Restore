@interface NSPredicateOperator
+ (NSPredicateOperator)operatorWithCustomSelector:(SEL)a3 modifier:(unint64_t)a4;
+ (NSPredicateOperator)operatorWithType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5;
+ (SEL)_getSelectorForType:(unint64_t)a3;
+ (id)_getSymbolForType:(unint64_t)a3;
+ (id)_newOperatorWithType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)performOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSPredicateOperator)initWithCoder:(id)a3;
- (NSPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4;
- (void)_setOptions:(unint64_t)a3;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPredicateOperator

+ (id)_getSymbolForType:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        return @">";
      }

      else
      {
        return @">=";
      }
    }

    else if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      return @"<=";
    }

    else
    {
      return @"<";
    }
  }

  else if (a3 <= 9)
  {
    if (a3 == 4)
    {
      return @"==";
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_21;
      }

      return @"!=";
    }
  }

  else
  {
    switch(a3)
    {
      case 0xAuLL:
        return @"IN";
      case 0x63uLL:
        return @"CONTAINS";
      case 0x64uLL:
        return @"BETWEEN";
      default:
LABEL_21:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", a3), 0}]);
    }
  }
}

+ (SEL)_getSelectorForType:(unint64_t)a3
{
  v3 = &selRef_compare_;
  if (a3 <= 3)
  {
    if (a3 < 4)
    {
      return *v3;
    }

    goto LABEL_13;
  }

  if (a3 > 98)
  {
    if (a3 == 99)
    {
LABEL_11:
      v3 = &selRef_containsObject_;
      return *v3;
    }

    if (a3 == 100)
    {
      return *v3;
    }

LABEL_13:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", a3), 0}]);
  }

  if (a3 - 4 >= 2)
  {
    if (a3 == 10)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v3 = &selRef_isEqual_;
  return *v3;
}

+ (NSPredicateOperator)operatorWithType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5
{
  v5 = [a1 _newOperatorWithType:a3 modifier:a4 options:a5];

  return v5;
}

+ (id)_newOperatorWithType:(unint64_t)a3 modifier:(unint64_t)a4 options:(unint64_t)a5
{
  if (a3 <= 6)
  {
    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v18 = [NSComparisonPredicateOperator alloc];
          v19 = 1;
          v20 = a4;
          v21 = 1;
        }

        else
        {
          if (a3 != 2)
          {
            goto LABEL_51;
          }

          v18 = [NSComparisonPredicateOperator alloc];
          v19 = 2;
          v20 = a4;
          v21 = 2;
        }
      }

      else
      {
        v18 = [NSComparisonPredicateOperator alloc];
        v19 = 0;
        v20 = a4;
        v21 = 0;
      }
    }

    else
    {
      if (a3 > 4)
      {
        if (a3 != 5)
        {
          v24 = [NSMatchingPredicateOperator alloc];
          v25 = 6;
LABEL_38:

          return [(NSMatchingPredicateOperator *)v24 initWithOperatorType:v25 modifier:a4 variant:a5];
        }

        v12 = [NSEqualityPredicateOperator alloc];
        v13 = 5;
        v14 = a4;
        v15 = 1;
LABEL_44:

        return [(NSEqualityPredicateOperator *)v12 initWithOperatorType:v13 modifier:v14 negate:v15 options:a5];
      }

      if (a3 != 3)
      {
        v12 = [NSEqualityPredicateOperator alloc];
        v13 = 4;
        v14 = a4;
        v15 = 0;
        goto LABEL_44;
      }

      v18 = [NSComparisonPredicateOperator alloc];
      v19 = 3;
      v20 = a4;
      v21 = 3;
    }

    return [(NSComparisonPredicateOperator *)v18 initWithOperatorType:v19 modifier:v20 variant:v21 options:a5];
  }

  if (a3 <= 98)
  {
    if (a3 <= 8)
    {
      if (a3 != 7)
      {
        v7 = [NSSubstringPredicateOperator alloc];
        v8 = 8;
        v9 = a4;
        v10 = a5;
        v11 = 0;
LABEL_34:

        return [(NSSubstringPredicateOperator *)v7 initWithOperatorType:v8 modifier:v9 variant:v10 position:v11];
      }

      v24 = [NSLikePredicateOperator alloc];
      v25 = 7;
      goto LABEL_38;
    }

    if (a3 == 9)
    {
      v7 = [NSSubstringPredicateOperator alloc];
      v8 = 9;
      v9 = a4;
      v10 = a5;
      v11 = 1;
      goto LABEL_34;
    }

    if (a3 == 10)
    {
      v16 = [NSInPredicateOperator alloc];
      v17 = 10;
      goto LABEL_30;
    }

    goto LABEL_51;
  }

  if (a3 <= 999)
  {
    if (a3 == 99)
    {
      v16 = [NSInPredicateOperator alloc];
      v17 = 99;
      goto LABEL_30;
    }

    if (a3 == 100)
    {
      v16 = [NSBetweenPredicateOperator alloc];
      v17 = 100;
LABEL_30:

      return [(NSInPredicateOperator *)v16 initWithOperatorType:v17 modifier:a4 options:a5];
    }

LABEL_51:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", a3), 0}]);
  }

  if (a3 == 1000)
  {
    v24 = [NSTokenMatchingPredicateOperator alloc];
    v25 = 1000;
    goto LABEL_38;
  }

  if (a3 != 2000)
  {
    goto LABEL_51;
  }

  v22 = [NSBoundedByPredicateOperator alloc];

  return [(NSPredicateOperator *)v22 initWithOperatorType:2000 modifier:a4];
}

+ (NSPredicateOperator)operatorWithCustomSelector:(SEL)a3 modifier:(unint64_t)a4
{
  v4 = [[NSCustomPredicateOperator alloc] initWithCustomSelector:a3 modifier:a4];

  return v4;
}

- (NSPredicateOperator)initWithOperatorType:(unint64_t)a3 modifier:(unint64_t)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSPredicateOperator;
  result = [(NSPredicateOperator *)&v7 init];
  if (result)
  {
    result->_operatorType = a3;
    result->_modifier = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [a3 encodeInteger:self->_operatorType forKey:@"NSOperatorType"];
  modifier = self->_modifier;

  [a3 encodeInteger:modifier forKey:@"NSModifier"];
}

- (NSPredicateOperator)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [a3 decodeIntegerForKey:@"NSOperatorType"];
  v6 = [a3 decodeIntegerForKey:@"NSModifier"];

  return [(NSPredicateOperator *)self initWithOperatorType:v5 modifier:v6];
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
  return v6 == [a3 modifier];
}

- (BOOL)performOperationUsingObject:(id)a3 andObject:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DFB0] null];
  if (v7 == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  if (v7 == a4)
  {
    a4 = 0;
  }

  modifier = self->_modifier;
  if (!modifier)
  {

    LOBYTE(v10) = [(NSPredicateOperator *)self performPrimitiveOperationUsingObject:v8 andObject:a4];
    return v10;
  }

  if (v8)
  {
    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
    {
      v18 = MEMORY[0x1E695DF30];
      v19 = *MEMORY[0x1E695D940];
      v20 = @"The left hand side for an ALL or ANY operator must be either an NSArray or an NSSet.";
LABEL_44:
      objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
    }

    if (_NSIsNSSet())
    {
      a3 = [v8 allObjects];
    }

    if (_NSIsNSOrderedSet())
    {
      a3 = [a3 array];
    }

    modifier = self->_modifier;
  }

  else
  {
    a3 = 0;
  }

  if (modifier == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (!v10)
    {
      return v10;
    }

    v15 = v10;
    v16 = *v24;
LABEL_33:
    v17 = 0;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(a3);
      }

      if ([(NSPredicateOperator *)self performPrimitiveOperationUsingObject:*(*(&v23 + 1) + 8 * v17) andObject:a4])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [a3 countByEnumeratingWithState:&v23 objects:v22 count:16];
        LOBYTE(v10) = 0;
        if (v15)
        {
          goto LABEL_33;
        }

        return v10;
      }
    }

LABEL_40:
    LOBYTE(v10) = 1;
    return v10;
  }

  if (modifier != 1)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v20 = @"Bad comparison predicate modifier";
    goto LABEL_44;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = v11;
  v13 = *v29;
LABEL_24:
  v14 = 0;
  while (1)
  {
    if (*v29 != v13)
    {
      objc_enumerationMutation(a3);
    }

    LODWORD(v10) = [(NSPredicateOperator *)self performPrimitiveOperationUsingObject:*(*(&v28 + 1) + 8 * v14) andObject:a4];
    if (!v10)
    {
      return v10;
    }

    if (v12 == ++v14)
    {
      v12 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
      LOBYTE(v10) = 1;
      if (v12)
      {
        goto LABEL_24;
      }

      return v10;
    }
  }
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if ((a4 & 2) != 0)
  {
    [a3 visitPredicateOperator:self];
  }
}

- (void)_setOptions:(unint64_t)a3
{
  v5 = NSClassFromString(@"NSPredicateOperator");

  NSRequestConcreteImplementation(self, a2, v5);
}

@end
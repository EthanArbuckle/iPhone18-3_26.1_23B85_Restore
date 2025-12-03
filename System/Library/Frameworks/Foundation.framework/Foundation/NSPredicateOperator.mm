@interface NSPredicateOperator
+ (NSPredicateOperator)operatorWithCustomSelector:(SEL)selector modifier:(unint64_t)modifier;
+ (NSPredicateOperator)operatorWithType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options;
+ (SEL)_getSelectorForType:(unint64_t)type;
+ (id)_getSymbolForType:(unint64_t)type;
+ (id)_newOperatorWithType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)performOperationUsingObject:(id)object andObject:(id)andObject;
- (NSPredicateOperator)initWithCoder:(id)coder;
- (NSPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier;
- (void)_setOptions:(unint64_t)options;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPredicateOperator

+ (id)_getSymbolForType:(unint64_t)type
{
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        return @">";
      }

      else
      {
        return @">=";
      }
    }

    else if (type)
    {
      if (type != 1)
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

  else if (type <= 9)
  {
    if (type == 4)
    {
      return @"==";
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_21;
      }

      return @"!=";
    }
  }

  else
  {
    switch(type)
    {
      case 0xAuLL:
        return @"IN";
      case 0x63uLL:
        return @"CONTAINS";
      case 0x64uLL:
        return @"BETWEEN";
      default:
LABEL_21:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", type), 0}]);
    }
  }
}

+ (SEL)_getSelectorForType:(unint64_t)type
{
  v3 = &selRef_compare_;
  if (type <= 3)
  {
    if (type < 4)
    {
      return *v3;
    }

    goto LABEL_13;
  }

  if (type > 98)
  {
    if (type == 99)
    {
LABEL_11:
      v3 = &selRef_containsObject_;
      return *v3;
    }

    if (type == 100)
    {
      return *v3;
    }

LABEL_13:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", type), 0}]);
  }

  if (type - 4 >= 2)
  {
    if (type == 10)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v3 = &selRef_isEqual_;
  return *v3;
}

+ (NSPredicateOperator)operatorWithType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options
{
  v5 = [self _newOperatorWithType:type modifier:modifier options:options];

  return v5;
}

+ (id)_newOperatorWithType:(unint64_t)type modifier:(unint64_t)modifier options:(unint64_t)options
{
  if (type <= 6)
  {
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          v18 = [NSComparisonPredicateOperator alloc];
          v19 = 1;
          modifierCopy6 = modifier;
          v21 = 1;
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_51;
          }

          v18 = [NSComparisonPredicateOperator alloc];
          v19 = 2;
          modifierCopy6 = modifier;
          v21 = 2;
        }
      }

      else
      {
        v18 = [NSComparisonPredicateOperator alloc];
        v19 = 0;
        modifierCopy6 = modifier;
        v21 = 0;
      }
    }

    else
    {
      if (type > 4)
      {
        if (type != 5)
        {
          v24 = [NSMatchingPredicateOperator alloc];
          v25 = 6;
LABEL_38:

          return [(NSMatchingPredicateOperator *)v24 initWithOperatorType:v25 modifier:modifier variant:options];
        }

        v12 = [NSEqualityPredicateOperator alloc];
        v13 = 5;
        modifierCopy5 = modifier;
        v15 = 1;
LABEL_44:

        return [(NSEqualityPredicateOperator *)v12 initWithOperatorType:v13 modifier:modifierCopy5 negate:v15 options:options];
      }

      if (type != 3)
      {
        v12 = [NSEqualityPredicateOperator alloc];
        v13 = 4;
        modifierCopy5 = modifier;
        v15 = 0;
        goto LABEL_44;
      }

      v18 = [NSComparisonPredicateOperator alloc];
      v19 = 3;
      modifierCopy6 = modifier;
      v21 = 3;
    }

    return [(NSComparisonPredicateOperator *)v18 initWithOperatorType:v19 modifier:modifierCopy6 variant:v21 options:options];
  }

  if (type <= 98)
  {
    if (type <= 8)
    {
      if (type != 7)
      {
        v7 = [NSSubstringPredicateOperator alloc];
        v8 = 8;
        modifierCopy8 = modifier;
        optionsCopy2 = options;
        v11 = 0;
LABEL_34:

        return [(NSSubstringPredicateOperator *)v7 initWithOperatorType:v8 modifier:modifierCopy8 variant:optionsCopy2 position:v11];
      }

      v24 = [NSLikePredicateOperator alloc];
      v25 = 7;
      goto LABEL_38;
    }

    if (type == 9)
    {
      v7 = [NSSubstringPredicateOperator alloc];
      v8 = 9;
      modifierCopy8 = modifier;
      optionsCopy2 = options;
      v11 = 1;
      goto LABEL_34;
    }

    if (type == 10)
    {
      v16 = [NSInPredicateOperator alloc];
      v17 = 10;
      goto LABEL_30;
    }

    goto LABEL_51;
  }

  if (type <= 999)
  {
    if (type == 99)
    {
      v16 = [NSInPredicateOperator alloc];
      v17 = 99;
      goto LABEL_30;
    }

    if (type == 100)
    {
      v16 = [NSBetweenPredicateOperator alloc];
      v17 = 100;
LABEL_30:

      return [(NSInPredicateOperator *)v16 initWithOperatorType:v17 modifier:modifier options:options];
    }

LABEL_51:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown predicate type %ld", type), 0}]);
  }

  if (type == 1000)
  {
    v24 = [NSTokenMatchingPredicateOperator alloc];
    v25 = 1000;
    goto LABEL_38;
  }

  if (type != 2000)
  {
    goto LABEL_51;
  }

  v22 = [NSBoundedByPredicateOperator alloc];

  return [(NSPredicateOperator *)v22 initWithOperatorType:2000 modifier:modifier];
}

+ (NSPredicateOperator)operatorWithCustomSelector:(SEL)selector modifier:(unint64_t)modifier
{
  v4 = [[NSCustomPredicateOperator alloc] initWithCustomSelector:selector modifier:modifier];

  return v4;
}

- (NSPredicateOperator)initWithOperatorType:(unint64_t)type modifier:(unint64_t)modifier
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSPredicateOperator;
  result = [(NSPredicateOperator *)&v7 init];
  if (result)
  {
    result->_operatorType = type;
    result->_modifier = modifier;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [coder encodeInteger:self->_operatorType forKey:@"NSOperatorType"];
  modifier = self->_modifier;

  [coder encodeInteger:modifier forKey:@"NSModifier"];
}

- (NSPredicateOperator)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [coder decodeIntegerForKey:@"NSOperatorType"];
  v6 = [coder decodeIntegerForKey:@"NSModifier"];

  return [(NSPredicateOperator *)self initWithOperatorType:v5 modifier:v6];
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
  return modifier == [equal modifier];
}

- (BOOL)performOperationUsingObject:(id)object andObject:(id)andObject
{
  v32 = *MEMORY[0x1E69E9840];
  null = [MEMORY[0x1E695DFB0] null];
  if (null == object)
  {
    objectCopy = 0;
  }

  else
  {
    objectCopy = object;
  }

  if (null == andObject)
  {
    andObject = 0;
  }

  modifier = self->_modifier;
  if (!modifier)
  {

    LOBYTE(v10) = [(NSPredicateOperator *)self performPrimitiveOperationUsingObject:objectCopy andObject:andObject];
    return v10;
  }

  if (objectCopy)
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
      object = [objectCopy allObjects];
    }

    if (_NSIsNSOrderedSet())
    {
      object = [object array];
    }

    modifier = self->_modifier;
  }

  else
  {
    object = 0;
  }

  if (modifier == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [object countByEnumeratingWithState:&v23 objects:v22 count:16];
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
        objc_enumerationMutation(object);
      }

      if ([(NSPredicateOperator *)self performPrimitiveOperationUsingObject:*(*(&v23 + 1) + 8 * v17) andObject:andObject])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [object countByEnumeratingWithState:&v23 objects:v22 count:16];
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
  v11 = [object countByEnumeratingWithState:&v28 objects:v27 count:16];
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
      objc_enumerationMutation(object);
    }

    LODWORD(v10) = [(NSPredicateOperator *)self performPrimitiveOperationUsingObject:*(*(&v28 + 1) + 8 * v14) andObject:andObject];
    if (!v10)
    {
      return v10;
    }

    if (v12 == ++v14)
    {
      v12 = [object countByEnumeratingWithState:&v28 objects:v27 count:16];
      LOBYTE(v10) = 1;
      if (v12)
      {
        goto LABEL_24;
      }

      return v10;
    }
  }
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if ((flags & 2) != 0)
  {
    [visitor visitPredicateOperator:self];
  }
}

- (void)_setOptions:(unint64_t)options
{
  v5 = NSClassFromString(@"NSPredicateOperator");

  NSRequestConcreteImplementation(self, a2, v5);
}

@end
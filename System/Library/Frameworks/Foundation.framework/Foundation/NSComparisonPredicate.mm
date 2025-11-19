@interface NSComparisonPredicate
+ (NSComparisonPredicate)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;
+ (NSComparisonPredicate)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options;
+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftExpression:(id)a4 rightExpression:(id)a5;
+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightKeyPath:(id)a5;
+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightValue:(id)a5;
- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSComparisonPredicate)initWithCoder:(NSCoder *)coder;
- (NSComparisonPredicate)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector;
- (NSComparisonPredicate)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options;
- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftExpression:(id)a4 rightExpression:(id)a5;
- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightKeyPath:(id)a5;
- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightValue:(id)a5;
- (NSComparisonPredicate)predicateWithSubstitutionVariables:(id)a3;
- (NSComparisonPredicateModifier)comparisonPredicateModifier;
- (NSComparisonPredicateOptions)options;
- (NSExpression)leftExpression;
- (NSExpression)rightExpression;
- (NSPredicateOperatorType)predicateOperatorType;
- (SEL)customSelector;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generateMetadataDescription;
- (id)keyPathExpressionForString:(id)a3;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)_acceptExpressions:(id)a3 flags:(unint64_t)a4;
- (void)_acceptOperator:(id)a3 flags:(unint64_t)a4;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPredicateOperator:(id)a3;
@end

@implementation NSComparisonPredicate

- (NSExpression)leftExpression
{
  v2 = self->_lhs;

  return v2;
}

- (NSExpression)rightExpression
{
  v2 = self->_rhs;

  return v2;
}

- (void)allowEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_lhs allowEvaluation];
  [(NSExpression *)self->_rhs allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSComparisonPredicate;
  [(NSPredicate *)&v3 allowEvaluation];
}

- (NSPredicateOperatorType)predicateOperatorType
{
  v2 = [(NSComparisonPredicate *)self predicateOperator];

  return [v2 operatorType];
}

- (NSComparisonPredicateModifier)comparisonPredicateModifier
{
  v2 = [(NSComparisonPredicate *)self predicateOperator];

  return [v2 modifier];
}

- (NSComparisonPredicateOptions)options
{
  v2 = [(NSComparisonPredicate *)self predicateOperator];

  return [v2 options];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_lhs = 0;
  self->_rhs = 0;

  self->_predicateOperator = 0;
  v3.receiver = self;
  v3.super_class = NSComparisonPredicate;
  [(NSComparisonPredicate *)&v3 dealloc];
}

- (id)predicateFormat
{
  v3 = [NSString stringWithFormat:@"%@ %@ %@", [(NSComparisonPredicate *)self leftExpression], [(NSComparisonPredicate *)self predicateOperator], [(NSComparisonPredicate *)self rightExpression]];
  if ([(NSComparisonPredicate *)self comparisonPredicateModifier]== NSAllPredicateModifier)
  {
    v4 = @"ALL ";
  }

  else
  {
    v5 = [(NSComparisonPredicate *)self comparisonPredicateModifier];
    v4 = &stru_1EEEFDF90;
    if (v5 == NSAnyPredicateModifier)
    {
      v4 = @"ANY ";
    }
  }

  return [NSString stringWithFormat:@"%@%@", v4, v3];
}

- (unint64_t)hash
{
  v3 = [-[NSComparisonPredicate predicateOperator](self "predicateOperator")];
  v4 = [(NSExpression *)[(NSComparisonPredicate *)self leftExpression] hash]^ v3;
  return v4 ^ [(NSExpression *)[(NSComparisonPredicate *)self rightExpression] hash];
}

+ (NSComparisonPredicate)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options
{
  v7 = [[a1 alloc] initWithLeftExpression:lhs rightExpression:rhs modifier:modifier type:type options:options];

  return v7;
}

+ (NSComparisonPredicate)predicateWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector
{
  v5 = [[a1 alloc] initWithLeftExpression:lhs rightExpression:rhs customSelector:selector];

  return v5;
}

- (NSComparisonPredicate)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs modifier:(NSComparisonPredicateModifier)modifier type:(NSPredicateOperatorType)type options:(NSComparisonPredicateOptions)options
{
  v10 = [NSPredicateOperator _newOperatorWithType:type modifier:modifier options:options];
  v11 = [(NSComparisonPredicate *)self initWithPredicateOperator:v10 leftExpression:lhs rightExpression:rhs];

  return v11;
}

- (NSComparisonPredicate)initWithLeftExpression:(NSExpression *)lhs rightExpression:(NSExpression *)rhs customSelector:(SEL)selector
{
  v8 = [[NSCustomPredicateOperator alloc] initWithCustomSelector:selector modifier:0];
  v9 = [(NSComparisonPredicate *)self initWithPredicateOperator:v8 leftExpression:lhs rightExpression:rhs];

  return v9;
}

+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightValue:(id)a5
{
  v5 = [[a1 alloc] initWithPredicateOperator:a3 leftKeyPath:a4 rightValue:a5];

  return v5;
}

+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightKeyPath:(id)a5
{
  v5 = [[a1 alloc] initWithPredicateOperator:a3 leftKeyPath:a4 rightKeyPath:a5];

  return v5;
}

+ (NSComparisonPredicate)predicateWithPredicateOperator:(id)a3 leftExpression:(id)a4 rightExpression:(id)a5
{
  v5 = [[a1 alloc] initWithPredicateOperator:a3 leftExpression:a4 rightExpression:a5];

  return v5;
}

- (id)keyPathExpressionForString:(id)a3
{
  v3 = [NSExpression _newKeyPathExpressionForString:a3];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSComparisonPredicate;
  [(NSPredicate *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:-[NSComparisonPredicate leftExpression](self forKey:{"leftExpression"), @"NSLeftExpression"}];
  [a3 encodeObject:-[NSComparisonPredicate rightExpression](self forKey:{"rightExpression"), @"NSRightExpression"}];
  [a3 encodeObject:-[NSComparisonPredicate predicateOperator](self forKey:{"predicateOperator"), @"NSPredicateOperator"}];
}

- (NSComparisonPredicate)initWithCoder:(NSCoder *)coder
{
  v14 = *MEMORY[0x1E69E9840];
  if (![(NSCoder *)coder allowsKeyedCoding])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v13.receiver = self;
  v13.super_class = NSComparisonPredicate;
  v5 = [(NSPredicate *)&v13 initWithCoder:coder];
  if (v5)
  {
    v6 = [(NSCoder *)coder allowedClasses];
    v7 = [(NSSet *)v6 count];
    if (v7)
    {
      v8 = [(NSSet *)v6 mutableCopy];
      [v8 unionSet:{+[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding](_NSPredicateUtilities, "_extendedExpressionClassesForSecureCoding")}];
      v9 = [(NSSet *)v6 mutableCopy];
      [v9 unionSet:{+[_NSPredicateUtilities _operatorClassesForSecureCoding](_NSPredicateUtilities, "_operatorClassesForSecureCoding")}];
    }

    else
    {
      v8 = +[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding];
      v9 = +[_NSPredicateUtilities _operatorClassesForSecureCoding];
    }

    v5->_lhs = [(NSCoder *)coder decodeObjectOfClasses:v8 forKey:@"NSLeftExpression"];
    v5->_rhs = [(NSCoder *)coder decodeObjectOfClasses:v8 forKey:@"NSRightExpression"];
    v5->_predicateOperator = [(NSCoder *)coder decodeObjectOfClasses:v9 forKey:@"NSPredicateOperator"];
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_isKindOfClass())
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = 0;
          if (!v7)
          {
LABEL_16:
            if (v10)
            {

              objc_exception_throw(v10);
            }

            return v5;
          }

LABEL_15:

          goto LABEL_16;
        }

        v11 = @"Malformed comparison predicate (bad operator)";
      }

      else
      {
        v11 = @"Malformed comparison predicate (bad right expression)";
      }
    }

    else
    {
      v11 = @"Malformed comparison predicate (bad left expression)";
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v11 userInfo:0];
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [-[NSComparisonPredicate predicateOperator](self predicateOperator];
  v5 = [(NSExpression *)[(NSComparisonPredicate *)self leftExpression] copy];
  v6 = [(NSExpression *)[(NSComparisonPredicate *)self rightExpression] copy];
  v7 = [objc_alloc(objc_opt_class()) initWithPredicateOperator:v4 leftExpression:v5 rightExpression:v6];

  return v7;
}

- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightKeyPath:(id)a5
{
  v8 = [[NSKeyPathExpression alloc] initWithKeyPath:[(NSComparisonPredicate *)self keyPathExpressionForString:a4]];
  v9 = [[NSKeyPathExpression alloc] initWithKeyPath:[(NSComparisonPredicate *)self keyPathExpressionForString:a5]];
  v10 = [(NSComparisonPredicate *)self initWithPredicateOperator:a3 leftExpression:v8 rightExpression:v9];

  return v10;
}

- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftKeyPath:(id)a4 rightValue:(id)a5
{
  v8 = [[NSKeyPathExpression alloc] initWithKeyPath:[(NSComparisonPredicate *)self keyPathExpressionForString:a4]];
  v9 = [[NSConstantValueExpression alloc] initWithObject:a5];
  v10 = [(NSComparisonPredicate *)self initWithPredicateOperator:a3 leftExpression:v8 rightExpression:v9];

  return v10;
}

- (NSComparisonPredicate)initWithPredicateOperator:(id)a3 leftExpression:(id)a4 rightExpression:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3 || !a4 || !a5)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot create a comparison predicate with nil operator or expression." userInfo:0]);
  }

  v10.receiver = self;
  v10.super_class = NSComparisonPredicate;
  v8 = [(NSComparisonPredicate *)&v10 init];
  if (v8)
  {
    v8->_predicateOperator = a3;
    v8->_lhs = a4;
    v8->_rhs = a5;
  }

  return v8;
}

- (SEL)customSelector
{
  v2 = [(NSComparisonPredicate *)self predicateOperator];

  return [v2 selector];
}

- (void)setPredicateOperator:(id)a3
{
  predicateOperator = self->_predicateOperator;
  if (predicateOperator != a3)
  {

    self->_predicateOperator = a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![-[NSComparisonPredicate predicateOperator](self "predicateOperator")] || !-[NSExpression isEqual:](-[NSComparisonPredicate leftExpression](self, "leftExpression"), "isEqual:", objc_msgSend(a3, "leftExpression")))
  {
    return 0;
  }

  v5 = [(NSComparisonPredicate *)self rightExpression];
  v6 = [a3 rightExpression];

  return [(NSExpression *)v5 isEqual:v6];
}

- (BOOL)evaluateWithObject:(id)a3 substitutionVariables:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (![(NSPredicate *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This predicate has evaluation disabled" userInfo:0]);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if (!a4 || (v9 = a4, object_getClass(a4) != _NSNestedDictionary))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = objc_opt_class();
    v9 = &v20;
    object_setClass(&v20, v10);
    *&v21 = a4;
  }

  v11 = [(NSComparisonPredicate *)self leftExpression];
  v12 = [(NSComparisonPredicate *)self predicateOperator];
  v13 = [v12 operatorType];
  if (v13 == 11)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v15 = [(NSExpression *)v11 expressionValueWithObject:a3 context:v9];
  v16 = [(NSExpression *)[(NSComparisonPredicate *)self rightExpression] expressionValueWithObject:a3 context:v9];
  if (v13 == 11)
  {
    v17 = 4211063755;
    if ((isKindOfClass & 1) == 0)
    {
      v17 = 0;
    }

    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 704) = v17;
  }

  v18 = [v12 performOperationUsingObject:v15 andObject:v16];
  if (v13 == 11)
  {
    *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 704) = 0;
  }

  if (v9 != a4)
  {
  }

  if (v8)
  {
    [(_NSPerformanceMeter *)v8 invalidate];
  }

  objc_autoreleasePoolPop(v7);
  return v18;
}

- (void)_acceptOperator:(id)a3 flags:(unint64_t)a4
{
  v6 = [(NSComparisonPredicate *)self predicateOperator];

  [v6 acceptVisitor:a3 flags:a4];
}

- (void)_acceptExpressions:(id)a3 flags:(unint64_t)a4
{
  [(NSExpression *)[(NSComparisonPredicate *)self leftExpression] acceptVisitor:a3 flags:a4];
  v7 = [(NSComparisonPredicate *)self rightExpression];

  [(NSExpression *)v7 acceptVisitor:a3 flags:a4];
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  v7 = objc_autoreleasePoolPush();
  if ((a4 & 4) != 0)
  {
    [a3 visitPredicate:self];
  }

  if ((a4 & 0xA) == 0xA)
  {
    [(NSComparisonPredicate *)self _acceptOperator:a3 flags:a4];
  }

  if (a4)
  {
    [(NSComparisonPredicate *)self _acceptExpressions:a3 flags:a4];
  }

  if ((a4 & 0xA) == 2)
  {
    [(NSComparisonPredicate *)self _acceptOperator:a3 flags:a4];
  }

  if ((a4 & 4) == 0)
  {
    [a3 visitPredicate:self];
  }

  objc_autoreleasePoolPop(v7);
}

- (NSComparisonPredicate)predicateWithSubstitutionVariables:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(objc_opt_class()) initWithPredicateOperator:-[NSComparisonPredicate predicateOperator](self leftExpression:"predicateOperator") rightExpression:{-[NSExpression _expressionWithSubstitutionVariables:](-[NSComparisonPredicate leftExpression](self, "leftExpression"), "_expressionWithSubstitutionVariables:", a3), -[NSExpression _expressionWithSubstitutionVariables:](-[NSComparisonPredicate rightExpression](self, "rightExpression"), "_expressionWithSubstitutionVariables:", a3)}];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)generateMetadataDescription
{
  v3 = [(NSComparisonPredicate *)self predicateOperatorType];
  v4 = v3;
  if (v3 > NSCustomSelectorPredicateOperatorType)
  {
    if (v3 - 99 >= 2)
    {
      v8 = [NSString stringWithFormat:@"Unknown type of NSComparisonPredicate given to NSMetadataQuery (%@)", self];
      goto LABEL_99;
    }
  }

  else if (((1 << v3) & 0x7BF) == 0)
  {
    if (v3 == NSMatchesPredicateOperatorType)
    {
      v8 = [NSString stringWithFormat:@"NSMatchesPredicateOperatorType NSComparisonPredicate not allowed to NSMetadataQuery (%@)", self];
    }

    else
    {
      v8 = [NSString stringWithFormat:@"NSCustomSelectorPredicateOperatorType NSComparisonPredicate not allowed to NSMetadataQuery (%@)", self];
    }

    goto LABEL_99;
  }

  v5 = [(NSComparisonPredicate *)self leftExpression];
  v6 = [(NSExpression *)v5 expressionType];
  if (v6 == 3)
  {
    v7 = [(NSExpression *)v5 keyPath];
  }

  else
  {
    if (v6 != 15)
    {
      v8 = [NSString stringWithFormat:@"NSComparisonPredicate with left expression which is not NSKeyPathExpressionType or NSAnyKeyExpressionType given to NSMetadataQuery (%@)", self];
      goto LABEL_99;
    }

    v7 = @"*";
    if (v4 <= 1)
    {
      if (!v4)
      {
        v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSLessThanPredicateOperatorType and left ANYKEY specifier expression given to NSMetadataQuery (%@)", self];
        goto LABEL_99;
      }

      if (v4 == 1)
      {
        v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSLessThanOrEqualToPredicateOperatorType and left ANYKEY specifier expression given to NSMetadataQuery (%@)", self];
        goto LABEL_99;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSGreaterThanPredicateOperatorType and left ANYKEY specifier expression given to NSMetadataQuery (%@)", self];
          goto LABEL_99;
        case 3:
          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSGreaterThanOrEqualToPredicateOperatorType and left ANYKEY specifier expression given to NSMetadataQuery (%@)", self];
          goto LABEL_99;
        case 5:
          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSNotEqualToPredicateOperatorType and left ANYKEY specifier expression given to NSMetadataQuery (%@)", self];
          goto LABEL_99;
      }
    }
  }

  v9 = [(NSComparisonPredicate *)self rightExpression];
  v10 = [(NSExpression *)v9 expressionType];
  if (v10 && v10 != 14)
  {
    v8 = [NSString stringWithFormat:@"NSComparisonPredicate with right expression which is not NSConstantValueExpressionType or NSAggregateExpressionType given to NSMetadataQuery (%@)", self];
    goto LABEL_99;
  }

  v11 = [(NSExpression *)v9 constantValue];
  if (!_NSIsNSString())
  {
    if (_NSIsNSNumber())
    {
      if (v4 <= 8)
      {
        if (v4 == 7)
        {
          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSLikePredicateOperatorType and right expression which is a number given to NSMetadataQuery (%@)", self];
        }

        else
        {
          if (v4 != 8)
          {
LABEL_46:
            v19 = [v11 description];
LABEL_61:
            v17 = v19;
            goto LABEL_62;
          }

          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSBeginsWithPredicateOperatorType and right expression which is a number given to NSMetadataQuery (%@)", self];
        }
      }

      else
      {
        switch(v4)
        {
          case 9:
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSEndsWithPredicateOperatorType and right expression which is a number given to NSMetadataQuery (%@)", self];
            break;
          case 10:
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSInPredicateOperatorType and right expression which is a number given to NSMetadataQuery (%@)", self];
            break;
          case 99:
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSContainsPredicateOperatorType and right expression which is a number given to NSMetadataQuery (%@)", self];
            break;
          default:
            goto LABEL_46;
        }
      }
    }

    else
    {
      if (_NSIsNSDate())
      {
        if (v4 <= 8)
        {
          if (v4 == 7)
          {
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSLikePredicateOperatorType and right expression which is a date given to NSMetadataQuery (%@)", self];
            goto LABEL_99;
          }

          if (v4 == 8)
          {
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSBeginsWithPredicateOperatorType and right expression which is a date given to NSMetadataQuery (%@)", self];
            goto LABEL_99;
          }
        }

        else
        {
          switch(v4)
          {
            case 9:
              v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSEndsWithPredicateOperatorType and right expression which is a date given to NSMetadataQuery (%@)", self];
              goto LABEL_99;
            case 10:
              v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSInPredicateOperatorType and right expression which is a date given to NSMetadataQuery (%@)", self];
              goto LABEL_99;
            case 99:
              v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSContainsPredicateOperatorType and right expression which is a date given to NSMetadataQuery (%@)", self];
              goto LABEL_99;
          }
        }

        [v11 timeIntervalSinceReferenceDate];
        v19 = [NSString stringWithFormat:@"%f", v24];
        goto LABEL_61;
      }

      if (_NSIsNSArray())
      {
        if (v4 == 100)
        {
          if ([v11 count] == 2)
          {
            v15 = [v11 objectAtIndex:0];
            v16 = [v11 objectAtIndex:1];
            if (_NSIsNSNumber() && (_NSIsNSNumber() & 1) != 0)
            {
              v17 = [v15 description];
              v18 = [v16 description];
              return [NSString stringWithFormat:@"InRange(%@, %@, %@)", v7, v17, v18];
            }

            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSBetweenPredicateOperatorType and right expression which is an array containing other than numbers given to NSMetadataQuery (%@)", self];
          }

          else
          {
            v8 = [NSString stringWithFormat:@"NSComparisonPredicate with NSBetweenPredicateOperatorType and right expression which is an array with an invalid count given to NSMetadataQuery (%@)", self];
          }
        }

        else
        {
          v8 = [NSString stringWithFormat:@"NSComparisonPredicate with type other than NSBetweenPredicateOperatorType and right expression which is an array given to NSMetadataQuery (%@)", self];
        }
      }

      else
      {
        v8 = [NSString stringWithFormat:@"NSComparisonPredicate with a right expression which is not a string, number, or date given to NSMetadataQuery (%@)", self];
      }
    }

LABEL_99:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v12 = 4;
  if (v4 > 8)
  {
    if (v4 != 9)
    {
      v13 = "*";
      v14 = "*";
      if (v4 == 10 || v4 == 99)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v14 = "*";
    v12 = 4;
    v13 = "";
    goto LABEL_50;
  }

  if (v4 != 7)
  {
    if (v4 != 8)
    {
LABEL_49:
      v13 = "";
      v14 = "";
      v12 = v4;
      goto LABEL_50;
    }

    v14 = "";
    v12 = 4;
    v13 = "*";
LABEL_50:
    v11 = [v11 __escapeString5991];
    goto LABEL_51;
  }

  v13 = "";
  v14 = "";
LABEL_51:
  v20 = [(NSComparisonPredicate *)self options];
  v21 = "c";
  if ((v20 & 1) == 0)
  {
    v21 = "";
  }

  v22 = "d";
  if ((v20 & 2) == 0)
  {
    v22 = "";
  }

  v23 = "w";
  if ((v20 & 0x10) == 0)
  {
    v23 = "";
  }

  v17 = [NSString stringWithFormat:@"'%s%@%s'%s%s%s", v14, v11, v13, v21, v22, v23];
  v4 = v12;
LABEL_62:
  if (v4 <= 2)
  {
    switch(v4)
    {
      case 0:
        return [NSString stringWithFormat:@"%@ < %@", v7, v17, v26];
      case 1:
        return [NSString stringWithFormat:@"%@ <= %@", v7, v17, v26];
      case 2:
        return [NSString stringWithFormat:@"%@ > %@", v7, v17, v26];
    }

    return 0;
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      return [NSString stringWithFormat:@"%@ != %@", v7, v17, v26];
    }

    if (v4 == 100)
    {
      v18 = 0;
      return [NSString stringWithFormat:@"InRange(%@, %@, %@)", v7, v17, v18];
    }

    return 0;
  }

  if (v4 == 3)
  {
    return [NSString stringWithFormat:@"%@ >= %@", v7, v17, v26];
  }

  else
  {
    return [NSString stringWithFormat:@"%@ == %@", v7, v17, v26];
  }
}

@end
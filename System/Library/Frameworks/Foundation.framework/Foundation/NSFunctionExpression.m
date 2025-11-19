@interface NSFunctionExpression
- (BOOL)_allowsEvaluation;
- (BOOL)_shouldUseParensWithDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelectorAllowed:(SEL)a3;
- (NSFunctionExpression)initWithCoder:(id)a3;
- (NSFunctionExpression)initWithExpressionType:(unint64_t)a3 operand:(id)a4 selector:(SEL)a5 argumentArray:(id)a6;
- (NSFunctionExpression)initWithSelector:(SEL)a3 argumentArray:(id)a4;
- (NSFunctionExpression)initWithTarget:(id)a3 selectorName:(id)a4 arguments:(id)a5;
- (SEL)selector;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)binaryOperatorForSelector;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)function;
- (id)predicateFormat;
- (uint64_t)_validateExpression;
- (unint64_t)hash;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFunctionExpression

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFunctionExpression;
  [(NSFunctionExpression *)&v3 dealloc];
}

- (uint64_t)_validateExpression
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v8 = 0;
    if (*(result + 32))
    {
      v2 = *(result + 32);
    }

    else
    {
      v2 = 0;
    }

    result = [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v2 withOperand:*(result + 24) isKVC:&v8 forComponentName:@"NSFunctionExpression"];
    if ((result & 1) == 0)
    {
      *(v1 + 8) |= 4u;
    }

    if (v8)
    {
      *(v1 + 8) |= 2u;
      result = [*(v1 + 40) firstObject];
      if (result)
      {
        v3 = result;
        if ([result expressionType])
        {
          result = [v3 expressionType];
          if (result != 3)
          {
            return result;
          }

          result = [v3 keyPath];
          v4 = result;
        }

        else
        {
          v4 = [v3 constantValue];
          result = [v4 isNSString];
          if ((result & 1) == 0)
          {
            return result;
          }
        }

        if (v4)
        {
          result = [_NSPredicateUtilities _predicateEnforceRestrictionsOnKeyPath:v4 withOperand:*(v1 + 24) forComponentName:@"NSFunctionExpression"];
          v5 = *(v1 + 8);
          v6 = v5 | 8;
          v7 = v5 & 0xFFFFFFF3;
          if (!result)
          {
            v7 = v6;
          }

          *(v1 + 8) = v7;
        }
      }
    }
  }

  return result;
}

- (void)allowEvaluation
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSExpression *)self->_operand allowEvaluation];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  arguments = self->_arguments;
  v4 = [(NSArray *)arguments countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(arguments);
        }

        [*(*(&v10 + 1) + 8 * i) allowEvaluation];
      }

      v5 = [(NSArray *)arguments countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = NSFunctionExpression;
  [(NSExpression *)&v8 allowEvaluation];
}

- (BOOL)_allowsEvaluation
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSFunctionExpression;
  return [(NSExpression *)&v3 _allowsEvaluation];
}

- (id)predicateFormat
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = [(NSFunctionExpression *)self binaryOperatorForSelector];
  v4 = [(NSFunctionExpression *)self selector];
  if (v3)
  {
    v5 = [-[NSFunctionExpression arguments](self "arguments")];
    v6 = [-[NSFunctionExpression arguments](self "arguments")];
    v7 = [v5 _shouldUseParensWithDescription];
    v8 = [v6 _shouldUseParensWithDescription];
    v9 = v7 == 0;
    if (v7)
    {
      v10 = CFSTR("(");
    }

    else
    {
      v10 = &stru_1EEEFDF90;
    }

    if (v9)
    {
      v11 = &stru_1EEEFDF90;
    }

    else
    {
      v11 = @"");
    }

    if (v8)
    {
      v12 = CFSTR("(");
    }

    else
    {
      v12 = &stru_1EEEFDF90;
    }

    if (v8)
    {
      v13 = @"");
    }

    else
    {
      v13 = &stru_1EEEFDF90;
    }

    v14 = [v3 characterAtIndex:0];
    if (v14 == 91)
    {
      return [NSString stringWithFormat:@"%@%@%@[%@]", v10, v5, v11, v6, v49, v50, v51];
    }

    else if (v14 == 101)
    {
      return [NSString stringWithFormat:@"%@%@%@ ** %@%@%@", v10, v5, v11, v12, v6, v13, v51];
    }

    else
    {
      return [NSString stringWithFormat:@"%@%@%@ %@ %@%@%@", v10, v5, v11, v3, v12, v6, v13];
    }
  }

  else
  {
    v16 = v4;
    if (v4 == sel_onesComplement_)
    {
      v27 = [-[NSFunctionExpression arguments](self "arguments")];
      v28 = [v27 _shouldUseParensWithDescription];
      v29 = &stru_1EEEFDF90;
      v30 = CFSTR("(");
      if (v28)
      {
        v29 = @"");
      }

      else
      {
        v30 = &stru_1EEEFDF90;
      }

      return [NSString stringWithFormat:@"%@~%@%@", v30, v27, v29, v48, v49, v50, v51];
    }

    else
    {
      v17 = [(NSFunctionExpression *)self operand];
      if (!v17 || (v18 = v17, (objc_opt_isKindOfClass() & 1) != 0) && _NSPredicateUtilities == [v18 constantValue])
      {
        if (v16 == sel_castObject_toType_)
        {
          v26 = +[NSString stringWithString:](NSMutableString, "stringWithString:", @"CAST(");
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v40 = [(NSFunctionExpression *)self arguments];
          v41 = [v40 countByEnumeratingWithState:&v58 objects:v57 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = 0;
            v44 = *v59;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v59 != v44)
                {
                  objc_enumerationMutation(v40);
                }

                v46 = *(*(&v58 + 1) + 8 * i);
                if (-v43 != i)
                {
                  [(NSMutableString *)v26 appendString:@", "];
                }

                -[NSMutableString appendString:](v26, "appendString:", [v46 predicateFormat]);
              }

              v43 += v42;
              v42 = [v40 countByEnumeratingWithState:&v58 objects:v57 count:16];
            }

            while (v42);
          }
        }

        else
        {
          v31 = NSStringFromSelector(v16);
          if ([_NSPredicateUtilities _isReservedWordInParser:v31])
          {
            v32 = @"#";
          }

          else
          {
            v32 = &stru_1EEEFDF90;
          }

          v26 = [(NSString *)NSMutableString stringWithString:v32];
          [(NSMutableString *)v26 appendString:v31];
          -[NSMutableString appendString:](v26, "appendString:", @"(");
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v33 = [(NSFunctionExpression *)self arguments];
          v34 = [v33 countByEnumeratingWithState:&v63 objects:v62 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = 0;
            v37 = *v64;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v64 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                v39 = *(*(&v63 + 1) + 8 * j);
                if (-v36 != j)
                {
                  [(NSMutableString *)v26 appendString:@", "];
                }

                -[NSMutableString appendString:](v26, "appendString:", [v39 predicateFormat]);
              }

              v36 += v35;
              v35 = [v33 countByEnumeratingWithState:&v63 objects:v62 count:16];
            }

            while (v35);
          }
        }

        [(NSMutableString *)v26 appendString:@""]);
      }

      else
      {
        if (![-[NSFunctionExpression arguments](self "arguments")])
        {
          return [NSString stringWithFormat:@"FUNCTION(%@, %@)", v18, NSStringFromSelector(v16), v47, v48, v49, v50, v51];
        }

        v19 = +[(NSString *)NSMutableString];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v20 = [(NSFunctionExpression *)self arguments];
        v21 = [v20 countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v54;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v54 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v53 + 1) + 8 * k);
              [(NSString *)v19 appendString:@", "];
              -[NSString appendString:](v19, "appendString:", [v25 predicateFormat]);
            }

            v22 = [v20 countByEnumeratingWithState:&v53 objects:v52 count:16];
          }

          while (v22);
        }

        return [NSString stringWithFormat:@"FUNCTION(%@, %@ %@)", v18, NSStringFromSelector(v16), v19];
      }

      return v26;
    }
  }
}

- (id)binaryOperatorForSelector
{
  v2 = [(NSFunctionExpression *)self selector];
  if (v2 == sel_add_to_)
  {
    return @"+";
  }

  if (v2 == sel_from_subtract_)
  {
    return @"-";
  }

  if (v2 == sel_multiply_by_)
  {
    return @"*";
  }

  if (v2 == sel_divide_by_)
  {
    return @"/";
  }

  if (v2 == sel_raise_toPower_)
  {
    return @"e";
  }

  if (v2 == sel_objectFrom_withIndex_)
  {
    return @"[";
  }

  if (v2 == sel_bitwiseAnd_with_)
  {
    return @"&";
  }

  if (v2 == sel_bitwiseOr_with_)
  {
    return @"|";
  }

  if (v2 == sel_bitwiseXor_with_)
  {
    return @"^";
  }

  if (v2 == sel_leftshift_by_)
  {
    return @"<<";
  }

  if (v2 == sel_rightshift_by_)
  {
    return @">>";
  }

  return 0;
}

- (BOOL)_shouldUseParensWithDescription
{
  v2 = [-[NSFunctionExpression binaryOperatorForSelector](self "binaryOperatorForSelector")] << 24;
  if (v2)
  {
    v3 = v2 == 1526726656;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)function
{
  v2 = [(NSFunctionExpression *)self selector];

  return NSStringFromSelector(v2);
}

- (unint64_t)hash
{
  v3 = [NSStringFromSelector([(NSFunctionExpression *)self selector]) hash];
  v4 = [-[NSFunctionExpression operand](self "operand")];
  return v4 ^ [-[NSFunctionExpression arguments](self "arguments")] ^ v3;
}

- (NSFunctionExpression)initWithSelector:(SEL)a3 argumentArray:(id)a4
{
  v7 = [[NSConstantValueExpression alloc] initWithObject:_NSPredicateUtilities];
  v8 = [(NSFunctionExpression *)self initWithExpressionType:4 operand:v7 selector:a3 argumentArray:a4];

  return v8;
}

- (NSFunctionExpression)initWithExpressionType:(unint64_t)a3 operand:(id)a4 selector:(SEL)a5 argumentArray:(id)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSFunctionExpression;
  v9 = [(NSExpression *)&v12 initWithExpressionType:a3];
  v9->_operand = a4;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = 0;
  }

  v9->_selector = v10;
  v9->_arguments = a6;
  [(NSFunctionExpression *)v9 _validateExpression];
  return v9;
}

- (NSFunctionExpression)initWithTarget:(id)a3 selectorName:(id)a4 arguments:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(a4);
  if (!v9)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Invalid selector name (%@)", a4), 0}]);
  }

  v10 = v9;
  v13.receiver = self;
  v13.super_class = NSFunctionExpression;
  v11 = [(NSExpression *)&v13 initWithExpressionType:4];
  v11->_operand = a3;
  v11->_selector = v10;
  v11->_arguments = a5;
  [(NSFunctionExpression *)v11 _validateExpression];
  return v11;
}

- (BOOL)isSelectorAllowed:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  objc_opt_self();
  if ([*(_CFPredicatePolicyData() + 32) objectForKey:v3])
  {
    return 1;
  }

  objc_opt_self();
  return [*_CFPredicatePolicyData() objectForKey:v3] != 0;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSFunctionExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:NSStringFromSelector(-[NSFunctionExpression selector](self forKey:{"selector")), @"NSSelectorName"}];
  [a3 encodeObject:-[NSFunctionExpression operand](self forKey:{"operand"), @"NSOperand"}];
  [a3 encodeObject:-[NSFunctionExpression arguments](self forKey:{"arguments"), @"NSArguments"}];
}

- (NSFunctionExpression)initWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers";
    goto LABEL_44;
  }

  v26.receiver = self;
  v26.super_class = NSFunctionExpression;
  v5 = [(NSExpression *)&v26 initWithCoder:a3];
  if (!v5)
  {
    return v5;
  }

  v6 = [a3 allowedClasses];
  v25 = [v6 count];
  if (v25)
  {
    v7 = [v6 mutableCopy];
    [v7 unionSet:{+[_NSPredicateUtilities _expressionClassesForSecureCoding](_NSPredicateUtilities, "_expressionClassesForSecureCoding")}];
    v8 = [v6 mutableCopy];
    [v8 unionSet:{+[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding](_NSPredicateUtilities, "_extendedExpressionClassesForSecureCoding")}];
  }

  else
  {
    v7 = +[_NSPredicateUtilities _expressionClassesForSecureCoding];
    v8 = +[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding];
  }

  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSSelectorName"];
  p_selector = &v5->_selector;
  v11 = NSSelectorFromString(v9);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *p_selector = v12;
  v5->_operand = [a3 decodeObjectOfClasses:v7 forKey:@"NSOperand"];
  v5->_arguments = [a3 decodeObjectOfClasses:v8 forKey:@"NSArguments"];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"Malformed function expression (bad operator)";
    goto LABEL_18;
  }

  if (v5->_arguments && (_NSIsNSSet() & 1) == 0 && (_NSIsNSArray() & 1) == 0 && !_NSIsNSOrderedSet())
  {
    v13 = @"Malformed function expression (bad arguments)";
LABEL_18:
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v13 userInfo:0];
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  if (!*p_selector)
  {
    v13 = @"Malformed function expression (bad selector)";
    goto LABEL_18;
  }

LABEL_19:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  arguments = v5->_arguments;
  v16 = [(NSArray *)arguments countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(arguments);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:@"Malformed function expression (bad argument)" userInfo:0];
          goto LABEL_30;
        }
      }

      v17 = [(NSArray *)arguments countByEnumeratingWithState:&v28 objects:v27 count:16];
      v14 = 0;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_30:
  [(NSFunctionExpression *)v5 _validateExpression];
  if (objc_opt_isKindOfClass())
  {
    v20 = *p_selector;
    if (*p_selector)
    {
      if (sel_valueForKeyPath_ == v20)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    if (sel_valueForKeyPath_)
    {
      v20 = 0;
LABEL_36:
      if (v20 == sel_valueForKey_)
      {
        goto LABEL_38;
      }

      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) == 0)
      {
        goto LABEL_38;
      }

      v22 = MEMORY[0x1E695DF30];
      v23 = *MEMORY[0x1E695D940];
      v24 = @"NSKeyPathExpression is malformed";
LABEL_44:
      objc_exception_throw([v22 exceptionWithName:v23 reason:v24 userInfo:0]);
    }
  }

LABEL_38:
  if (v25)
  {
  }

  if (v14)
  {

    objc_exception_throw(v14);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [(NSExpression *)self->_operand copy];
  v5 = [(NSFunctionExpression *)self arguments];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_arguments, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copy];
        [v6 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v8);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithExpressionType:-[NSFunctionExpression expressionType](self operand:"expressionType") selector:v4 argumentArray:{-[NSFunctionExpression selector](self, "selector"), v6}];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSFunctionExpression *)self selector];
  if (v5 != [a3 selector] || !objc_msgSend(-[NSFunctionExpression operand](self, "operand"), "isEqual:", objc_msgSend(a3, "operand")))
  {
    return 0;
  }

  v6 = [(NSFunctionExpression *)self arguments];
  v7 = [a3 arguments];

  return [v6 isEqual:v7];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  v146 = *MEMORY[0x1E69E9840];
  if (![(NSFunctionExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  *&v136[1] = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(NSFunctionExpression *)self arguments];
  v134 = [v8 count];
  v9 = [(NSFunctionExpression *)self selector];
  expressionFlags = self->super._expressionFlags;
  *v136 = (*&expressionFlags & 2) != 0;
  v133 = v9;
  if (v9)
  {
    Name = sel_getName(v9);
    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      [(NSFunctionExpression *)self isSelectorAllowed:v133];
    }

    if ((*&self->super._expressionFlags & 4) == 0 && [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v133 withOperand:[(NSFunctionExpression *)self operand] isKVC:v136 forComponentName:@"NSFunctionExpression"])
    {
      +[_NSPredicateUtilities _predicateSecurityAction];
    }
  }

  else
  {
    Name = 0;
  }

  v130 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v12 = [-[NSFunctionExpression operand](self "operand")];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v132 = v13;
    LODWORD(v131) = object_isClass(v13);
    if (v131)
    {
      v15 = class_getName(v132);
      if (strncmp("_NSPredicateUtilities", v15, 0x15uLL))
      {
        objc_opt_self();
        v16 = _NSOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          *&buf[4] = v132;
          _os_log_fault_impl(&dword_18075C000, v16, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression on a Class '%{public}@' is deprecated and will be removed in a future release.  NSFunctionExpression should operate on instances.", buf, 0xCu);
        }

        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          [(NSFunctionExpression *)self operand];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            +[_NSPredicateUtilities _predicateSecurityAction];
          }
        }
      }
    }

    if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnTarget:v132 forComponentName:@"NSFunctionExpression"])
    {
      +[_NSPredicateUtilities _predicateSecurityAction];
    }

    if (v134 >> 60)
    {
      v117 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v134);
      v118 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v117 userInfo:0];
      CFRelease(v117);
      objc_exception_throw(v118);
    }

    if (v134 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v134;
    }

    MEMORY[0x1EEE9AC00](v17);
    v19 = &v122 - v18;
    v20 = 0;
    v135 = 0;
    if (v21 >= 0x101)
    {
      v20 = _CFCreateArrayStorage();
    }

    v126 = &v122;
    v127 = v7;
    v123 = expressionFlags;
    v124 = Name;
    *&v125 = v19;
    v128 = v20;
    if (v134 < 0x101)
    {
      v20 = v19;
    }

    v129 = v20;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v22 = [v8 countByEnumeratingWithState:&v139 objects:v138 count:16];
    if (v22)
    {
      v23 = *v140;
      v24 = v129;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v140 != v23)
          {
            objc_enumerationMutation(v8);
          }

          v26 = [*(*(&v139 + 1) + 8 * i) expressionValueWithObject:a3 context:a4];
          v27 = v26;
          *v24 = v26;
          v24 += 8;
        }

        v22 = [v8 countByEnumeratingWithState:&v139 objects:v138 count:16];
      }

      while (v22);
    }

    if (v136[0] == 1 && v134 && (*&self->super._expressionFlags & 8) == 0)
    {
      v28 = v129;
      v29 = *v129;
      v30 = [(NSFunctionExpression *)self operand];
      v31 = v132;
      if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnKeyPath:v29 withOperand:v30 forComponentName:@"NSFunctionExpression"])
      {
        +[_NSPredicateUtilities _predicateSecurityAction];
      }

      v32 = [v29 componentsSeparatedByString:@"."];
      if (![v32 count])
      {
        v38 = 0;
        goto LABEL_56;
      }

      v33 = NSSelectorFromString([v32 objectAtIndexedSubscript:0]);
      v34 = sel_getName(v33);
      if (v131)
      {
        ClassMethod = class_getClassMethod(v31, v33);
        Property = class_getProperty(v31, v34);
        InstanceVariable = class_getInstanceVariable(v31, v34);
      }

      else
      {
        Class = object_getClass(v31);
        ClassMethod = class_getInstanceMethod(Class, v33);
        Property = class_getProperty(Class, v34);
        InstanceVariable = class_getInstanceVariable(Class, v34);
      }

      v39 = ClassMethod != 0;
      v38 = InstanceVariable != 0;
      if (!Property)
      {
LABEL_53:
        if (!v39)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v29 = 0;
      v38 = 0;
      v28 = v129;
      v31 = v132;
      if (!v133)
      {
        v39 = 0;
        goto LABEL_57;
      }

      v39 = 0;
      if (v136[0])
      {
        goto LABEL_57;
      }

      v40 = v124;
      if (v131)
      {
        v39 = class_getClassMethod(v132, v133) != 0;
        v41 = class_getProperty(v31, v40);
        v29 = 0;
        v38 = class_getInstanceVariable(v31, v40) != 0;
        if (!v41)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v43 = object_getClass(v132);
        v39 = class_getInstanceMethod(v43, v133) != 0;
        v44 = class_getProperty(v43, v40);
        v29 = 0;
        v38 = class_getInstanceVariable(v43, v40) != 0;
        if (!v44)
        {
          goto LABEL_53;
        }
      }
    }

    v38 |= 2u;
    if (v39)
    {
LABEL_54:
      v39 = 4;
      goto LABEL_57;
    }

LABEL_56:
    v39 = 0;
LABEL_57:
    v45 = object_getClass(v31);
    v129 = class_getName(v45);
    if (v131)
    {
      InstanceMethod = class_getClassMethod(v45, v133);
    }

    else
    {
      InstanceMethod = class_getInstanceMethod(v45, v133);
    }

    v47 = InstanceMethod;
    v131 = v29;
    if (InstanceMethod)
    {
      NumberOfArguments = method_getNumberOfArguments(InstanceMethod);
      if ((&v134->isa + 2) != NumberOfArguments)
      {
        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          objc_opt_self();
          v50 = _NSOSLog();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_18075C000, v50, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression incorrect number of arguments passed to method", buf, 2u);
          }

          +[_NSPredicateUtilities _predicateSecurityAction];
        }
      }

      if (v134)
      {
        v51 = 0;
        *&v49 = 138412546;
        v122 = v49;
        v52 = 1;
        while (1)
        {
          BYTE4(v137) = 0;
          LODWORD(v137) = 0;
          method_getArgumentType(v47, v52 + 1, &v137, 4uLL);
          v53 = v137;
          if (v137 - 78 <= 0x24 && ((1 << (v137 - 78)) & 0x1300000113) != 0)
          {
            v53 = BYTE1(v137);
          }

          if (v53 == 35)
          {
            break;
          }

          if (v53 != 64)
          {
            objc_opt_self();
            v55 = _NSOSLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              v59 = @"<unknown>";
              if (v133)
              {
                v59 = NSStringFromSelector(v133);
              }

              *buf = v122;
              *&buf[4] = v59;
              *&buf[12] = 2080;
              *&buf[14] = &v137;
              _os_log_fault_impl(&dword_18075C000, v55, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and parameter encoding '%s' is forbidden", buf, 0x16u);
            }

LABEL_80:
            +[_NSPredicateUtilities _predicateSecurityAction];
          }

LABEL_81:
          v51 = v52;
          if (v134 <= v52++)
          {
            goto LABEL_89;
          }
        }

        v56 = v28[v51];
        if (([v56 isNSData] & 1) == 0 && !objc_msgSend(v56, "isNSString"))
        {
          goto LABEL_81;
        }

        objc_opt_self();
        v57 = _NSOSLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          v60 = @"<unknown>";
          if (v133)
          {
            v60 = NSStringFromSelector(v133);
          }

          *buf = v122;
          *&buf[4] = v60;
          *&buf[12] = 2080;
          *&buf[14] = &v137;
          _os_log_fault_impl(&dword_18075C000, v57, OS_LOG_TYPE_FAULT, "NSPredicate: Invalid argument passed to NSFunctionExpression with selector '%@' and parameter encoding '%s' expecting pointer", buf, 0x16u);
        }

        goto LABEL_80;
      }

LABEL_89:
      BYTE4(v137) = 0;
      LODWORD(v137) = 0;
      method_getReturnType(v47, &v137, 4uLL);
      v31 = v132;
      v61 = v137;
      v62 = v137 - 78;
      if (v62 <= 0x24 && ((1 << v62) & 0x1300000113) != 0)
      {
        v61 = BYTE1(v137);
      }

      if (v61 != 35 && v61 != 64)
      {
        objc_opt_self();
        v63 = _NSOSLog();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          if (v133)
          {
            v115 = NSStringFromSelector(v133);
          }

          else
          {
            v115 = @"<unknown>";
          }

          *buf = 138412546;
          *&buf[4] = v115;
          *&buf[12] = 2080;
          *&buf[14] = &v137;
          _os_log_fault_impl(&dword_18075C000, v63, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and return type '%s' is forbidden", buf, 0x16u);
        }

LABEL_102:
        +[_NSPredicateUtilities _predicateSecurityAction];
      }
    }

    else
    {
      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
      {
        if (v45)
        {
          v64 = class_getName(v45);
          if (strcmp(v64, "OCPartialMockObject"))
          {
            if (strcmp(v64, "OCMockObject"))
            {
              objc_opt_self();
              v65 = _NSOSLog();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_18075C000, v65, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression unable to find method", buf, 2u);
              }

              goto LABEL_102;
            }
          }
        }
      }
    }

    if (v134 > 4)
    {
      if (v134 <= 6)
      {
        if (v134 == 5)
        {
          v66 = [v31 v133];
        }

        else
        {
          v66 = [v31 v133];
        }

LABEL_124:
        *&v136[1] = v66;
        if (!v66)
        {
          goto LABEL_165;
        }

        goto LABEL_125;
      }

      if (v134 == 7)
      {
        v66 = [v31 v133];
        goto LABEL_124;
      }

      if (v134 == 8)
      {
        v66 = [v31 v133];
        goto LABEL_124;
      }

      if (v134 == 9)
      {
        v66 = [v31 v133];
        goto LABEL_124;
      }
    }

    else
    {
      if (v134 > 1)
      {
        if (v134 == 2)
        {
          v66 = [v31 v133];
        }

        else if (v134 == 3)
        {
          v66 = [v31 v133];
        }

        else
        {
          v66 = [v31 v133];
        }

        goto LABEL_124;
      }

      if (!v134)
      {
        v66 = [v31 v133];
        goto LABEL_124;
      }

      if (v134 == 1)
      {
        v66 = [v31 v133];
        goto LABEL_124;
      }
    }

    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      objc_opt_self();
      v69 = _NSOSLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18075C000, v69, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression no longer allows arbitrarily long parameter lists", buf, 2u);
      }

      +[_NSPredicateUtilities _predicateSecurityAction];
    }

    v70 = [(objc_class *)v31 methodSignatureForSelector:v133, v122, *(&v122 + 1)];
    if (!v70)
    {
      v119 = MEMORY[0x1E695DF30];
      if (v133)
      {
        v120 = NSStringFromSelector(v133);
      }

      else
      {
        v120 = @"<unknown>";
      }

      v121 = [NSString stringWithFormat:@"NSPredicateFunctionMissingSignature: can't find selector (%@) on %@", v120, v132];
      objc_exception_throw([v119 exceptionWithName:*MEMORY[0x1E695D930] reason:v121 userInfo:0]);
    }

    v71 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v70];
    v72 = v71;
    if (!v71)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"NSPredicateFunctionBadInvocation: can't make invocation" userInfo:0]);
    }

    [v71 setSelector:v133];
    [v72 setTarget:v31];
    v73 = [v70 numberOfArguments];
    if (v73 != v134)
    {
      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
      {
        objc_opt_self();
        v75 = _NSOSLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
        {
          if (v133)
          {
            v116 = NSStringFromSelector(v133);
          }

          else
          {
            v116 = @"<unknown>";
          }

          *buf = 138412290;
          *&buf[4] = v116;
          _os_log_fault_impl(&dword_18075C000, v75, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' passed the incorrect number of arguments", buf, 0xCu);
        }

        +[_NSPredicateUtilities _predicateSecurityAction];
      }
    }

    LODWORD(v132) = v39;
    v76 = 2;
    *&v74 = 138412546;
    v125 = v74;
    v78 = v133;
    v77 = v134;
    do
    {
      v79 = v28;
      v137 = *v28;
      v80 = [v70 getArgumentTypeAtIndex:v76];
      v81 = v80;
      if (v80)
      {
        if (strlen(v80) >= 2)
        {
          v82 = *v81;
          if (v82 == 94 || v82 == 64 && v81[1] == 63)
          {
            objc_opt_self();
            if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
            {
              objc_opt_self();
              v83 = _NSOSLog();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
              {
                v86 = @"<unknown>";
                if (v78)
                {
                  v86 = NSStringFromSelector(v78);
                }

                *buf = v125;
                *&buf[4] = v86;
                *&buf[12] = 2080;
                *&buf[14] = v81;
                _os_log_fault_impl(&dword_18075C000, v83, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSFunctionExpression with selector '%@' and parameter encoding '%s' is forbidden", buf, 0x16u);
              }

              +[_NSPredicateUtilities _predicateSecurityAction];
            }

            if (([v137 isNSData] & 1) != 0 || objc_msgSend(v137, "isNSString"))
            {
              objc_opt_self();
              v84 = _NSOSLog();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
              {
                v85 = @"<unknown>";
                if (v78)
                {
                  v85 = NSStringFromSelector(v78);
                }

                *buf = v125;
                *&buf[4] = v85;
                *&buf[12] = 2080;
                *&buf[14] = v81;
                _os_log_fault_impl(&dword_18075C000, v84, OS_LOG_TYPE_FAULT, "NSPredicate: Invalid argument passed to NSFunctionExpression with selector '%@' and parameter encoding '%s' expecting pointer", buf, 0x16u);
              }

              +[_NSPredicateUtilities _predicateSecurityAction];
            }
          }
        }
      }

      [v72 setArgument:&v137 atIndex:v76++];
      v28 = v79 + 1;
      v77 = (v77 - 1);
    }

    while (v77);
    [v72 invoke];
    v39 = v132;
    if ([v70 methodReturnLength])
    {
      [v72 getReturnValue:&v136[1]];
    }

    if (!*&v136[1])
    {
LABEL_165:
      v87 = *&v136[1];
      if (*&v136[1])
      {
        v88 = object_getClass(*&v136[1]);
        v89 = class_getName(v88);
      }

      else
      {
        v89 = 0;
      }

      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) == 0)
      {
        goto LABEL_233;
      }

      v90 = v39 | v38;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNSFESignpostLog_block_invoke;
      v144 = &__block_descriptor_48_e5_v8__0l;
      *&v145 = "com.apple.Foundation.NSPredAllowListing";
      *(&v145 + 1) = "NSFEEvent";
      if (qword_1EA821EC0 != -1)
      {
        dispatch_once(&qword_1EA821EC0, buf);
      }

      v134 = qword_1EA821EB8;
      v91 = [NSNumber numberWithChar:v39 | v38, v122];
      if (!os_variant_has_internal_diagnostics())
      {
        goto LABEL_233;
      }

      if (v89)
      {
        v92 = wrapInCheapMutableString(v89);
        if (v92)
        {
          objc_opt_self();
          v93 = 0;
          v94 = [*(_CFPredicatePolicyData() + 48) objectForKey:v92] == 0;
LABEL_177:
          v95 = 0;
          if (v129 && !v94)
          {
            v95 = wrapInCheapMutableString(v129);
          }

          v96 = !v94;
          if (v124)
          {
            v97 = !v94;
          }

          else
          {
            v97 = 0;
          }

          if (v97)
          {
            v100 = wrapInCheapMutableString(v124);
            v101 = v100;
            v98 = v95 != 0;
            if (v95)
            {
              v102 = v96;
            }

            else
            {
              v102 = 0;
            }

            v103 = v100 != 0;
            if (v102 == 1 && v100)
            {
              if (!isSelectorAllowed(v95, v100, &off_1EEF56C60))
              {
                v99 = [v101 hash];
                if (!v131)
                {
LABEL_211:
                  v99 ^= [v95 hash];
LABEL_212:
                  if ((v93 & 1) == 0)
                  {
                    v99 ^= [v92 hash];
                  }

                  v106 = [NSNumber numberWithUnsignedLong:v99];
                  os_unfair_lock_lock(&_MergedGlobals_29);
                  v107 = qword_1EA821EC8;
                  if (!qword_1EA821EC8)
                  {
                    v107 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:33];
                    qword_1EA821EC8 = v107;
                  }

                  v108 = [v107 containsObject:v106];
                  if ((v108 & 1) == 0)
                  {
                    [qword_1EA821EC8 addObject:v106];
                    if ([qword_1EA821EC8 count] >= 0x21)
                    {
                      [qword_1EA821EC8 removeObjectAtIndex:0];
                    }
                  }

                  v105 = v108 ^ 1;
                  os_unfair_lock_unlock(&_MergedGlobals_29);
                  goto LABEL_220;
                }

LABEL_206:
                v99 ^= [v131 hash];
                goto LABEL_211;
              }

              v98 = 1;
              v103 = 1;
            }
          }

          else
          {
            v98 = v95 != 0;
            if (v94)
            {
              if (v131)
              {
                v99 = [v131 hash];
              }

              else
              {
                v99 = 0;
              }

              v101 = 0;
              if (!v95)
              {
                goto LABEL_212;
              }

              goto LABEL_211;
            }

            v101 = 0;
            v103 = 0;
          }

          v105 = 0;
          if (!v131 || !v98 || (*&v123 & 2) == 0)
          {
LABEL_220:

            if (v105)
            {
              if ((*&v123 & 2) != 0)
              {
                v109 = [v131 lengthOfBytesUsingEncoding:4];
                v110 = malloc_type_malloc(v109 + 1, 0x514827A7uLL);
                if (v110)
                {
                  if ([v131 getCString:v110 maxLength:v109 + 1 encoding:4] && os_signpost_enabled(v134))
                  {
                    v111 = "";
                    *buf = 136316162;
                    if (v89)
                    {
                      v111 = v89;
                    }

                    *&buf[4] = v124;
                    *&buf[12] = 2080;
                    *&buf[14] = v110;
                    *&buf[22] = 2080;
                    v144 = v129;
                    LOWORD(v145) = 2080;
                    *(&v145 + 2) = v111;
                    WORD5(v145) = 1024;
                    HIDWORD(v145) = v90;
                    _os_signpost_emit_with_name_impl(&dword_18075C000, v134, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KVCFun", "%s|%s|%s|%s|%hhu", buf, 0x30u);
                  }

                  free(v110);
                }
              }

              else if (os_signpost_enabled(v134))
              {
                v112 = "";
                *buf = 136315906;
                if (v89)
                {
                  v112 = v89;
                }

                *&buf[4] = v124;
                *&buf[12] = 2080;
                *&buf[14] = v129;
                *&buf[22] = 2080;
                v144 = v112;
                LOWORD(v145) = 1024;
                *(&v145 + 2) = v90;
                _os_signpost_emit_with_name_impl(&dword_18075C000, v134, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BannedSel", "%s|%s|%s|%hhu", buf, 0x26u);
              }
            }

LABEL_233:
            free(v128);
            v113 = v127;
            v114 = v130;
            if (v130)
            {
              [(_NSPerformanceMeter *)v130 invalidate];
            }

            objc_autoreleasePoolPop(v113);
            return *&v136[1];
          }

          if (isSelectorAllowed(v95, v131, v91))
          {
            v105 = 0;
            goto LABEL_220;
          }

          if (!v103)
          {
            v99 = [v131 hash];
            goto LABEL_211;
          }

          v99 = [v101 hash];
          goto LABEL_206;
        }
      }

      else
      {
        v92 = 0;
      }

      v94 = 0;
      v93 = 1;
      goto LABEL_177;
    }

LABEL_125:
    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0 && !object_isClass(*&v136[1]))
    {
      v67 = object_getClass(*&v136[1]);
      if (!object_isClass(v67))
      {
        objc_opt_self();
        v68 = _NSOSLog();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18075C000, v68, OS_LOG_TYPE_FAULT, "NSPredicate: NSFunctionExpression must return an object", buf, 2u);
        }

        +[_NSPredicateUtilities _predicateSecurityAction];
      }
    }

    goto LABEL_165;
  }

  if (v130)
  {
    [(_NSPerformanceMeter *)v130 invalidate];
  }

  objc_autoreleasePoolPop(v7);
  return 0;
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
    }

    [-[NSFunctionExpression operand](self "operand")];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSFunctionExpression *)self arguments];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * i) acceptVisitor:a3 flags:a4];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    if ((a4 & 4) == 0)
    {
      [a3 visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = [-[NSFunctionExpression operand](self "operand")];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(NSFunctionExpression *)self arguments];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v11++), "_expressionWithSubstitutionVariables:", a3)}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v9);
  }

  v12 = [objc_alloc(objc_opt_class()) initWithExpressionType:-[NSFunctionExpression expressionType](self operand:"expressionType") selector:v5 argumentArray:{-[NSFunctionExpression selector](self, "selector"), v6}];

  return v12;
}

@end
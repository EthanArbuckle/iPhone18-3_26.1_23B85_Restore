@interface NSCustomPredicateOperator
- (BOOL)isEqual:(id)a3;
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (NSCustomPredicateOperator)initWithCoder:(id)a3;
- (NSCustomPredicateOperator)initWithCustomSelector:(SEL)a3 modifier:(unint64_t)a4;
- (SEL)selector;
- (id)copyWithZone:(_NSZone *)a3;
- (id)symbol;
- (uint64_t)_validateOperator;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCustomPredicateOperator

- (uint64_t)_validateOperator
{
  v4 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v3 = 0;
    if (*(result + 24))
    {
      v2 = *(result + 24);
    }

    else
    {
      v2 = 0;
    }

    result = [_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v2 withOperand:0 isKVC:&v3 forComponentName:@"NSCustomPredicateOperator"];
    if ((result & 1) == 0)
    {
      *(v1 + 32) |= 2u;
    }

    if (v3)
    {
      *(v1 + 32) |= 1u;
    }
  }

  return result;
}

- (id)symbol
{
  v2 = [(NSCustomPredicateOperator *)self selector];

  return NSStringFromSelector(v2);
}

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

- (NSCustomPredicateOperator)initWithCustomSelector:(SEL)a3 modifier:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSCustomPredicateOperator;
  v5 = [(NSPredicateOperator *)&v9 initWithOperatorType:11 modifier:a4];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0;
    }

    v5->_selector = v7;
  }

  [(NSCustomPredicateOperator *)v5 _validateOperator];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSCustomPredicateOperator;
  [(NSPredicateOperator *)&v7 encodeWithCoder:a3];
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  [a3 encodeObject:NSStringFromSelector(selector) forKey:@"NSSelectorName"];
  objc_opt_self();
  if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
  {
    objc_opt_self();
    v6 = _NSOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "NSPredicate: Archiving an NSCustomPredicateOperator is deprecated and secure coding support will be removed in a future release.", buf, 2u);
    }
  }
}

- (NSCustomPredicateOperator)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers";
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = NSCustomPredicateOperator;
  v5 = [(NSPredicateOperator *)&v14 initWithCoder:a3];
  if (v5)
  {
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSSelectorName"];
    p_selector = &v5->_selector;
    v8 = NSSelectorFromString(v6);
    if (v8)
    {
      *p_selector = v8;
      [(NSCustomPredicateOperator *)v5 _validateOperator];
      goto LABEL_5;
    }

    *p_selector = 0;

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Attempted to decode custom predicate operator with nil selector";
LABEL_11:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

LABEL_5:
  objc_opt_self();
  if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
  {
    objc_opt_self();
    v9 = _NSOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18075C000, v9, OS_LOG_TYPE_FAULT, "NSPredicate: Unarchiving an NSCustomPredicateOperator is deprecated and secure coding support will be removed in a future release.", buf, 2u);
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v6 = [(NSPredicateOperator *)self modifier];

  return [v4 initWithCustomSelector:selector modifier:v6];
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSCustomPredicateOperator *)self operatorType];
  if (v5 != [a3 operatorType])
  {
    return 0;
  }

  v6 = [(NSPredicateOperator *)self modifier];
  if (v6 != [a3 modifier])
  {
    return 0;
  }

  v7 = [(NSCustomPredicateOperator *)self selector];
  return v7 == [a3 selector];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Can't invoke the selector %@ on (nil)", NSStringFromSelector(-[NSCustomPredicateOperator selector](self, "selector", 0, a4))), 0}];
    objc_exception_throw(v26);
  }

  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 704);
  isClass = object_isClass(a3);
  if (isClass)
  {
    Name = class_getName(a3);
    if (strncmp("_NSPredicateUtilities", Name, 0x15uLL))
    {
      objc_opt_self();
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v31 = a3;
        _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSCustomPredicateOperator on a Class '%{public}@' is deprecated and will be removed in a future release.  NSCustomPredicateOperator should operate on instances.", buf, 0xCu);
      }

      if (v7 != 4211063755)
      {
        objc_opt_self();
        if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
        {
          +[_NSPredicateUtilities _predicateSecurityAction];
        }
      }
    }
  }

  if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnTarget:a3 forComponentName:@"NSCustomPredicateOperator"])
  {
    +[_NSPredicateUtilities _predicateSecurityAction];
  }

  v11 = [(NSCustomPredicateOperator *)self selector];
  v12 = v11;
  v27 = *&self->_operatorFlags & 1;
  if (v7 == 4211063755)
  {
    v13 = +[NSSelfExpression defaultInstance];
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if ((*&self->_operatorFlags & 2) == 0)
  {
    if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnSelector:v12 withOperand:v13 isKVC:&v27 forComponentName:@"NSCustomPredicateOperator"])
    {
      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
      {
        +[_NSPredicateUtilities _predicateSecurityAction];
      }
    }
  }

LABEL_19:
  if (v27)
  {
    if (a4)
    {
      if ((*&self->_operatorFlags & 4) == 0)
      {
        if ([a4 isNSString])
        {
          if ([_NSPredicateUtilities _predicateEnforceRestrictionsOnKeyPath:a4 withOperand:v13 forComponentName:@"NSCustomPredicateOperator"])
          {
            objc_opt_self();
            if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
            {
              +[_NSPredicateUtilities _predicateSecurityAction];
            }
          }
        }
      }
    }
  }

  Class = object_getClass(a3);
  if (isClass)
  {
    ClassMethod = class_getClassMethod(Class, v12);
  }

  else
  {
    ClassMethod = class_getInstanceMethod(Class, v12);
  }

  v16 = ClassMethod;
  if (ClassMethod)
  {
    v29 = 0;
    *dst = 0;
    method_getArgumentType(ClassMethod, 2u, dst, 4uLL);
    v17 = strnlen(dst, 5uLL);
    if (v17 == 2)
    {
      if (dst[0] != 94 && (dst[0] != 64 || dst[1] != 63))
      {
LABEL_44:
        method_getReturnType(v16, dst, 4uLL);
        if (strnlen(dst, 5uLL) != 1 || (v20 = dst[0] - 66, v20 > 0x31) || ((1 << v20) & 0x2008200020083) == 0)
        {
          objc_opt_self();
          if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
          {
            objc_opt_self();
            v21 = _NSOSLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              if (v12)
              {
                v25 = NSStringFromSelector(v12);
              }

              else
              {
                v25 = @"<unknown>";
              }

              *buf = 138412546;
              v31 = v25;
              v32 = 2080;
              v33 = dst;
              _os_log_fault_impl(&dword_18075C000, v21, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSCustomPredicateOperator with selector '%@' and return type '%s' is forbidden", buf, 0x16u);
            }

            +[_NSPredicateUtilities _predicateSecurityAction];
          }
        }

        return [a3 v12];
      }
    }

    else if (v17 != 1 || dst[0] != 42)
    {
      goto LABEL_44;
    }

    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      objc_opt_self();
      v18 = _NSOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        if (v12)
        {
          v24 = NSStringFromSelector(v12);
        }

        else
        {
          v24 = @"<unknown>";
        }

        *buf = 138412546;
        v31 = v24;
        v32 = 2080;
        v33 = dst;
        _os_log_fault_impl(&dword_18075C000, v18, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSCustomPredicateOperator with selector '%@' and parameter encoding '%s' is forbidden", buf, 0x16u);
      }

      +[_NSPredicateUtilities _predicateSecurityAction];
    }

    if (([a4 isNSData] & 1) != 0 || objc_msgSend(a4, "isNSString"))
    {
      objc_opt_self();
      v19 = _NSOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        if (v12)
        {
          v23 = NSStringFromSelector(v12);
        }

        else
        {
          v23 = @"<unknown>";
        }

        *buf = 138412546;
        v31 = v23;
        v32 = 2080;
        v33 = dst;
        _os_log_fault_impl(&dword_18075C000, v19, OS_LOG_TYPE_FAULT, "NSPredicate: Invalid argument passed to NSCustomPredicateOperator with selector '%@' and parameter encoding '%s' expecting pointer", buf, 0x16u);
      }

      +[_NSPredicateUtilities _predicateSecurityAction];
    }

    goto LABEL_44;
  }

  return [a3 v12];
}

@end
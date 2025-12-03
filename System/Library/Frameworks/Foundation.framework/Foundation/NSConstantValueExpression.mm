@interface NSConstantValueExpression
- (BOOL)isEqual:(id)equal;
- (NSConstantValueExpression)initWithCoder:(id)coder;
- (NSConstantValueExpression)initWithObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)predicateFormat;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSConstantValueExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConstantValueExpression;
  [(NSConstantValueExpression *)&v3 dealloc];
}

- (id)predicateFormat
{
  constantValue = self->constantValue;
  if (!constantValue)
  {
    return @"nil";
  }

  if (_NSIsNSValue())
  {
    goto LABEL_3;
  }

  if (_NSIsNSString())
  {

    return [_NSPredicateUtilities _parserableStringDescription:?];
  }

  else if (_NSIsNSDate())
  {

    return [_NSPredicateUtilities _parserableDateDescription:?];
  }

  else
  {
    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0 && !_NSIsNSDictionary())
    {
LABEL_3:

      return [constantValue description];
    }

    return [_NSPredicateUtilities _parserableCollectionDescription:?];
  }
}

- (unint64_t)hash
{
  constantValue = [(NSConstantValueExpression *)self constantValue];

  return [constantValue hash];
}

- (NSConstantValueExpression)initWithObject:(id)object
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSConstantValueExpression;
  v4 = [(NSExpression *)&v6 initWithExpressionType:0];
  v4->constantValue = object;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v10 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = NSConstantValueExpression;
  [(NSExpression *)&v9 encodeWithCoder:coder];
  v5 = objc_opt_self();
  v6 = objc_opt_class();
  constantValue = self->constantValue;
  if (v5 == v6)
  {
    constantValue = NSStringFromClass(self->constantValue);
    v8 = @"NSConstantValueClassName";
  }

  else
  {
    v8 = @"NSConstantValue";
  }

  [coder encodeObject:constantValue forKey:v8];
}

- (NSConstantValueExpression)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = NSConstantValueExpression;
  v5 = [(NSExpression *)&v15 initWithCoder:coder];
  if (v5)
  {
    allowedClasses = [coder allowedClasses];
    v7 = +[_NSPredicateUtilities _constantValueClassesForSecureCoding];
    if (allowedClasses && [allowedClasses count])
    {
      v7 = [v7 mutableCopy];
      [v7 unionSet:allowedClasses];
      [v7 removeObject:objc_opt_class()];
      [v7 removeObject:objc_opt_class()];
    }

    else
    {
      v8 = v7;
    }

    *(v5 + 3) = [coder decodeObjectOfClasses:v7 forKey:@"NSConstantValue"];

    v9 = *(v5 + 3);
    if (!v9)
    {
      v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSConstantValueClassName"];
      if (v10)
      {
        v9 = NSClassFromString(v10);
        *(v5 + 3) = v9;
        if (!v9)
        {
          return v5;
        }
      }

      else
      {
        v9 = *(v5 + 3);
        if (!v9)
        {
          return v5;
        }
      }
    }

    if (!object_isClass(v9) || (Name = class_getName(*(v5 + 3)), !strncmp("_NSPredicateUtilities", Name, 0x15uLL)))
    {
      if (![_NSPredicateUtilities _predicateEnforceRestrictionsOnTarget:@"NSConstantValueExpression" forComponentName:?])
      {
        return v5;
      }
    }

    else
    {
      objc_opt_self();
      v12 = _NSOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = *(v5 + 3);
        *buf = 138543362;
        v17 = v14;
        _os_log_fault_impl(&dword_18075C000, v12, OS_LOG_TYPE_FAULT, "NSPredicate: Using NSConstantValueExpression on a Class '%{public}@' is deprecated and will be removed in a future release.  NSConstantValueExpression should operate on instances.", buf, 0xCu);
      }

      objc_opt_self();
      if ((_CFPredicatePolicyData_getFlags() & 8) == 0)
      {
        return v5;
      }
    }

    +[_NSPredicateUtilities _predicateSecurityAction];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  constantValue = self->constantValue;

  return [v4 initWithObject:constantValue];
}

- (BOOL)isEqual:(id)equal
{
  if (objc_opt_isKindOfClass())
  {
    constantValue = [(NSConstantValueExpression *)self constantValue];
    constantValue2 = [equal constantValue];
    if (!(constantValue | constantValue2) || constantValue2 && (LODWORD(constantValue2) = [constantValue2 isEqual:constantValue], constantValue2))
    {
      LOBYTE(constantValue2) = 1;
    }
  }

  else
  {
    LOBYTE(constantValue2) = 0;
  }

  return constantValue2;
}

- (id)expressionValueWithObject:(id)object
{
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  return self->constantValue;
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  if (![(NSExpression *)self _allowsEvaluation:object])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  return self->constantValue;
}

@end
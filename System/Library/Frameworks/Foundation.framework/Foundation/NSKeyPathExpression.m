@interface NSKeyPathExpression
- (NSKeyPathExpression)initWithKeyPath:(id)a3;
- (NSKeyPathExpression)initWithOperand:(id)a3 andKeyPath:(id)a4;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)keyPath;
- (id)pathExpression;
- (id)predicateFormat;
- (unint64_t)expressionType;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)dealloc;
@end

@implementation NSKeyPathExpression

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSKeyPathExpression;
  [(NSFunctionExpression *)&v2 dealloc];
}

- (unint64_t)expressionType
{
  if (self->super.super._expressionType == 4)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)pathExpression
{
  v2 = [(NSFunctionExpression *)self arguments];

  return [v2 objectAtIndex:0];
}

- (id)keyPath
{
  v6 = *MEMORY[0x1E69E9840];
  [(NSFunctionExpression *)self operand];
  if (objc_opt_isKindOfClass())
  {
    v3 = [-[NSFunctionExpression arguments](self "arguments")];

    return [v3 keyPath];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NSKeyPathExpression;
    return [(NSExpression *)&v5 keyPath];
  }
}

- (id)predicateFormat
{
  v3 = [(NSKeyPathExpression *)self pathExpression];
  [(NSFunctionExpression *)self operand];
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", [-[NSFunctionExpression operand](self "operand")], objc_msgSend(v3, "predicateFormat"));
  }

  return [v3 predicateFormat];
}

- (NSKeyPathExpression)initWithKeyPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(NSSelfExpression);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
  v7 = sel_valueForKeyPath_;
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a3 "keyPath")];
    if (!v8)
    {
      v7 = sel_valueForKey_;
    }
  }

  v11.receiver = self;
  v11.super_class = NSKeyPathExpression;
  v9 = [(NSFunctionExpression *)&v11 initWithExpressionType:3 operand:v5 selector:v7 argumentArray:v6];

  return v9;
}

- (NSKeyPathExpression)initWithOperand:(id)a3 andKeyPath:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a4, 0}];
  v9.receiver = self;
  v9.super_class = NSKeyPathExpression;
  v7 = [(NSFunctionExpression *)&v9 initWithExpressionType:4 operand:a3 selector:sel_valueForKeyPath_ argumentArray:v6];

  return v7;
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSKeyPathExpression;
  [(NSFunctionExpression *)&v4 acceptVisitor:a3 flags:a4];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSFunctionExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [(NSFunctionExpression *)self selector];
  if (v8 != sel_valueForKeyPath_ && v8 != sel_valueForKey_)
  {
    objc_opt_self();
    if ((_CFPredicatePolicyData_getFlags() & 8) != 0)
    {
      objc_opt_self();
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "NSPredicate: NSKeyPathExpression: malformed selector", buf, 2u);
      }

      +[_NSPredicateUtilities _predicateSecurityAction];
    }
  }

  v13.receiver = self;
  v13.super_class = NSKeyPathExpression;
  v11 = [(NSFunctionExpression *)&v13 expressionValueWithObject:a3 context:a4];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v11;
}

@end
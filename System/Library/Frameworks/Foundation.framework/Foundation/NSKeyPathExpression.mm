@interface NSKeyPathExpression
- (NSKeyPathExpression)initWithKeyPath:(id)path;
- (NSKeyPathExpression)initWithOperand:(id)operand andKeyPath:(id)path;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)keyPath;
- (id)pathExpression;
- (id)predicateFormat;
- (unint64_t)expressionType;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
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
  arguments = [(NSFunctionExpression *)self arguments];

  return [arguments objectAtIndex:0];
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
  pathExpression = [(NSKeyPathExpression *)self pathExpression];
  [(NSFunctionExpression *)self operand];
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", [-[NSFunctionExpression operand](self "operand")], objc_msgSend(pathExpression, "predicateFormat"));
  }

  return [pathExpression predicateFormat];
}

- (NSKeyPathExpression)initWithKeyPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(NSSelfExpression);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{path, 0}];
  v7 = sel_valueForKeyPath_;
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(path "keyPath")];
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

- (NSKeyPathExpression)initWithOperand:(id)operand andKeyPath:(id)path
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{path, 0}];
  v9.receiver = self;
  v9.super_class = NSKeyPathExpression;
  v7 = [(NSFunctionExpression *)&v9 initWithExpressionType:4 operand:operand selector:sel_valueForKeyPath_ argumentArray:v6];

  return v7;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSKeyPathExpression;
  [(NSFunctionExpression *)&v4 acceptVisitor:visitor flags:flags];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSFunctionExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  selector = [(NSFunctionExpression *)self selector];
  if (selector != sel_valueForKeyPath_ && selector != sel_valueForKey_)
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
  v11 = [(NSFunctionExpression *)&v13 expressionValueWithObject:object context:context];
  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v11;
}

@end
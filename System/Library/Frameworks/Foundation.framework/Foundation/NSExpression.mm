@interface NSExpression
+ (NSExpression)expressionForAggregate:(NSArray *)subexpressions;
+ (NSExpression)expressionForAnyKey;
+ (NSExpression)expressionForBlock:(void *)block arguments:(NSArray *)arguments;
+ (NSExpression)expressionForConstantValue:(id)obj;
+ (NSExpression)expressionForEvaluatedObject;
+ (NSExpression)expressionForFunction:(NSExpression *)target selectorName:(NSString *)name arguments:(NSArray *)parameters;
+ (NSExpression)expressionForFunction:(NSString *)name arguments:(NSArray *)parameters;
+ (NSExpression)expressionForIntersectSet:(NSExpression *)left with:(NSExpression *)right;
+ (NSExpression)expressionForKeyPath:(NSString *)keyPath;
+ (NSExpression)expressionForMinusSet:(NSExpression *)left with:(NSExpression *)right;
+ (NSExpression)expressionForSubquery:(NSExpression *)expression usingIteratorVariable:(NSString *)variable predicate:(NSPredicate *)predicate;
+ (NSExpression)expressionForUnionSet:(NSExpression *)left with:(NSExpression *)right;
+ (NSExpression)expressionForVariable:(NSString *)string;
+ (NSExpression)expressionWithFormat:(NSString *)expressionFormat argumentArray:(NSArray *)arguments;
+ (NSExpression)expressionWithFormat:(NSString *)expressionFormat arguments:(va_list)argList;
+ (id)_newKeyPathExpressionForString:(id)string;
+ (id)expressionForSymbolicString:(id)string;
+ (id)expressionForTernaryWithPredicate:(id)predicate trueExpression:(id)expression falseExpression:(id)falseExpression;
+ (id)expressionForVariableNameAssignment:(id)assignment expression:(id)expression;
- (NSExpression)initWithCoder:(NSCoder *)coder;
- (NSExpression)initWithExpressionType:(NSExpressionType)type;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSExpression

+ (NSExpression)expressionForEvaluatedObject
{
  v2 = objc_alloc_init(NSSelfExpression);

  return v2;
}

+ (NSExpression)expressionWithFormat:(NSString *)expressionFormat argumentArray:(NSArray *)arguments
{
  arguments = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"%@ == 1" argumentArray:expressionFormat], arguments];

  return [(NSPredicate *)arguments leftExpression];
}

+ (NSExpression)expressionWithFormat:(NSString *)expressionFormat arguments:(va_list)argList
{
  argList = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"%@ == 1" arguments:expressionFormat], argList];

  return [(NSPredicate *)argList leftExpression];
}

+ (NSExpression)expressionForConstantValue:(id)obj
{
  v3 = [[NSConstantValueExpression alloc] initWithObject:obj];

  return v3;
}

+ (NSExpression)expressionForVariable:(NSString *)string
{
  v3 = [[NSVariableExpression alloc] initWithObject:string];

  return v3;
}

+ (id)expressionForSymbolicString:(id)string
{
  v3 = [[NSSymbolicExpression alloc] initWithString:string];

  return v3;
}

+ (NSExpression)expressionForAggregate:(NSArray *)subexpressions
{
  v3 = [[NSAggregateExpression alloc] initWithCollection:subexpressions];

  return v3;
}

+ (NSExpression)expressionForSubquery:(NSExpression *)expression usingIteratorVariable:(NSString *)variable predicate:(NSPredicate *)predicate
{
  v5 = [[NSSubqueryExpression alloc] initWithExpression:expression usingIteratorVariable:variable predicate:predicate];

  return v5;
}

+ (NSExpression)expressionForFunction:(NSExpression *)target selectorName:(NSString *)name arguments:(NSArray *)parameters
{
  v5 = [[NSFunctionExpression alloc] initWithTarget:target selectorName:name arguments:parameters];

  return v5;
}

+ (id)expressionForVariableNameAssignment:(id)assignment expression:(id)expression
{
  v4 = [[NSVariableAssignmentExpression alloc] initWithAssignmentVariable:assignment expression:expression];

  return v4;
}

+ (id)expressionForTernaryWithPredicate:(id)predicate trueExpression:(id)expression falseExpression:(id)falseExpression
{
  v5 = [[NSTernaryExpression alloc] initWithPredicate:predicate trueExpression:expression falseExpression:falseExpression];

  return v5;
}

+ (id)_newKeyPathExpressionForString:(id)string
{
  v4 = [NSKeyPathSpecifierExpression alloc];

  return [(NSKeyPathSpecifierExpression *)v4 initWithObject:string];
}

+ (NSExpression)expressionForKeyPath:(NSString *)keyPath
{
  v3 = [self _newKeyPathExpressionForString:keyPath];
  v4 = [[NSKeyPathExpression alloc] initWithKeyPath:v3];

  return &v4->super.super;
}

+ (NSExpression)expressionForFunction:(NSString *)name arguments:(NSArray *)parameters
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = NSSelectorFromString(name);
  objc_opt_self();
  if ([*_CFPredicatePolicyData() objectForKey:name])
  {
    LODWORD(v7) = 0;
  }

  else
  {
    objc_opt_self();
    v8 = _NSOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = name;
      _os_log_fault_impl(&dword_18075C000, v8, OS_LOG_TYPE_FAULT, "NSPredicate: Use of '%{public}@' as an NSExpression function is forbidden.", buf, 0xCu);
    }

    objc_opt_self();
    v7 = (_CFPredicatePolicyData_getFlags() >> 3) & 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || v7)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ is not a supported method.", name), 0}]);
  }

  return [[NSFunctionExpression alloc] initWithSelector:v6 argumentArray:parameters];
}

+ (NSExpression)expressionForUnionSet:(NSExpression *)left with:(NSExpression *)right
{
  v4 = [[NSSetExpression alloc] initWithType:5 leftExpression:left rightExpression:right];

  return v4;
}

+ (NSExpression)expressionForIntersectSet:(NSExpression *)left with:(NSExpression *)right
{
  v4 = [[NSSetExpression alloc] initWithType:6 leftExpression:left rightExpression:right];

  return v4;
}

+ (NSExpression)expressionForMinusSet:(NSExpression *)left with:(NSExpression *)right
{
  v4 = [[NSSetExpression alloc] initWithType:7 leftExpression:left rightExpression:right];

  return v4;
}

+ (NSExpression)expressionForBlock:(void *)block arguments:(NSArray *)arguments
{
  v4 = [[NSBlockExpression alloc] initWithType:19 block:block arguments:arguments];

  return v4;
}

+ (NSExpression)expressionForAnyKey
{
  v2 = objc_alloc_init(NSAnyKeyExpression);

  return v2;
}

- (NSExpression)initWithExpressionType:(NSExpressionType)type
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSExpression;
  result = [(NSExpression *)&v5 init];
  if (result)
  {
    result->_expressionType = type;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  expressionType = [(NSExpression *)self expressionType];

  [coder encodeInteger:expressionType forKey:@"NSExpressionType"];
}

- (NSExpression)initWithCoder:(NSCoder *)coder
{
  if (![(NSCoder *)coder allowsKeyedCoding])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [(NSExpression *)self initWithExpressionType:[(NSCoder *)coder decodeIntegerForKey:@"NSExpressionType"]];
  if (v5 && [(NSCoder *)coder requiresSecureCoding])
  {
    *&v5->_expressionFlags |= 1u;
  }

  return v5;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    [visitor visitPredicateExpression:self];
  }
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:{0, v3, v4}]);
  }

  return self;
}

@end
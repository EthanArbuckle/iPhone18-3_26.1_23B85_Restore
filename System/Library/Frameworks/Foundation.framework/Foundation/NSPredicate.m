@interface NSPredicate
+ (NSPredicate)predicateWithBlock:(void *)block;
+ (NSPredicate)predicateWithFormat:(NSString *)predicateFormat argumentArray:(NSArray *)arguments;
+ (NSPredicate)predicateWithFormat:(NSString *)predicateFormat arguments:(va_list)argList;
+ (NSPredicate)predicateWithValue:(BOOL)value;
+ (void)initialize;
- (NSPredicate)initWithCoder:(id)a3;
- (NSPredicate)predicateWithSubstitutionVariables:(NSDictionary *)variables;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPredicate

+ (void)initialize
{
  if (!_qfqp_GlobalLock)
  {
    _qfqp_GlobalLock = objc_alloc_init(NSRecursiveLock);

    _qfqp2_InitializedGlobalData();
  }
}

+ (NSPredicate)predicateWithFormat:(NSString *)predicateFormat argumentArray:(NSArray *)arguments
{
  v6 = objc_autoreleasePoolPush();
  [_qfqp_GlobalLock lock];
  v7 = _qfqp2_performParsing(predicateFormat, arguments, 0);
  [_qfqp_GlobalLock unlock];
  objc_autoreleasePoolPop(v6);
  v8 = v7;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_exception_throw(v7);
    }
  }

  return v7;
}

+ (NSPredicate)predicateWithFormat:(NSString *)predicateFormat arguments:(va_list)argList
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = argList;
  v5 = objc_autoreleasePoolPush();
  [_qfqp_GlobalLock lock];
  v6 = _qfqp2_performParsing(predicateFormat, 0, &v9);
  [_qfqp_GlobalLock unlock];
  objc_autoreleasePoolPop(v5);
  v7 = v6;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_exception_throw(v6);
    }
  }

  return v6;
}

+ (NSPredicate)predicateWithValue:(BOOL)value
{
  v3 = off_1E69EE9A8;
  if (!value)
  {
    v3 = off_1E69EE3F8;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

+ (NSPredicate)predicateWithBlock:(void *)block
{
  v3 = [[NSBlockPredicate alloc] initWithBlock:block];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }
}

- (NSPredicate)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [(NSPredicate *)self init];
  if (v5 && [a3 requiresSecureCoding])
  {
    *&v5->_predicateFlags |= 1u;
  }

  return v5;
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  v6 = NSClassFromString(@"NSPredicate");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (NSPredicate)predicateWithSubstitutionVariables:(NSDictionary *)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:{0, v3, v4}]);
  }

  return self;
}

@end
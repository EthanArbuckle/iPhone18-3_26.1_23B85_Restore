@interface NSBlockPredicate
- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables;
- (NSBlockPredicate)initWithBlock:(id)block;
- (NSBlockPredicate)predicateWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation NSBlockPredicate

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_block = 0;
  v3.receiver = self;
  v3.super_class = NSBlockPredicate;
  [(NSBlockPredicate *)&v3 dealloc];
}

- (NSBlockPredicate)initWithBlock:(id)block
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSBlockPredicate;
  v4 = [(NSBlockPredicate *)&v6 init];
  if (v4)
  {
    v4->_block = [block copy];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  block = self->_block;

  return [v4 initWithBlock:block];
}

- (BOOL)evaluateWithObject:(id)object substitutionVariables:(id)variables
{
  v18 = *MEMORY[0x1E69E9840];
  if (![(NSPredicate *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This predicate has evaluation disabled" userInfo:0]);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  if (!variables || (v8 = variables, object_getClass(variables) != _NSNestedDictionary))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = objc_opt_class();
    v8 = &v12;
    object_setClass(&v12, v9);
    *&v13 = variables;
  }

  v10 = (*(self->_block + 2))();
  if (v8 != variables)
  {
  }

  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

- (NSBlockPredicate)predicateWithSubstitutionVariables:(id)variables
{
  v3 = [(NSBlockPredicate *)self copy];

  return v3;
}

@end
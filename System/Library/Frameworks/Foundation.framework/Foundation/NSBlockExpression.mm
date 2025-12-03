@interface NSBlockExpression
- (NSBlockExpression)initWithType:(unint64_t)type block:(id)block arguments:(id)arguments;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)dealloc;
@end

@implementation NSBlockExpression

- (NSBlockExpression)initWithType:(unint64_t)type block:(id)block arguments:(id)arguments
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSBlockExpression;
  v7 = [(NSExpression *)&v9 initWithExpressionType:type];
  if (v7)
  {
    v7->_block = [block copy];
    v7->_arguments = [arguments copy];
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_block = 0;
  self->_arguments = 0;
  v3.receiver = self;
  v3.super_class = NSBlockExpression;
  [(NSBlockExpression *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSBlockExpression alloc];
  expressionType = [(NSBlockExpression *)self expressionType];
  block = self->_block;
  arguments = self->_arguments;

  return [(NSBlockExpression *)v4 initWithType:expressionType block:block arguments:arguments];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_arguments, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  arguments = self->_arguments;
  v10 = [(NSArray *)arguments countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(arguments);
        }

        [v8 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "expressionValueWithObject:context:", object, context)}];
      }

      v10 = [(NSArray *)arguments countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  v13 = (*(self->_block + 2))();

  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v13;
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  v18 = *MEMORY[0x1E69E9840];
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arguments = self->_arguments;
  v7 = [(NSArray *)arguments countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(arguments);
        }

        [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "_expressionWithSubstitutionVariables:", variables)}];
      }

      v8 = [(NSArray *)arguments countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  v11 = [[NSBlockExpression alloc] initWithType:[(NSBlockExpression *)self expressionType] block:self->_block arguments:v5];

  return v11;
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  v17 = *MEMORY[0x1E69E9840];
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    arguments = [(NSBlockExpression *)self arguments];
    v8 = [arguments countByEnumeratingWithState:&v13 objects:v12 count:16];
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
            objc_enumerationMutation(arguments);
          }

          [*(*(&v13 + 1) + 8 * i) acceptVisitor:visitor flags:flags];
        }

        v9 = [arguments countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v9);
    }

    if ((flags & 4) == 0)
    {
      [visitor visitPredicateExpression:self];
    }
  }
}

@end
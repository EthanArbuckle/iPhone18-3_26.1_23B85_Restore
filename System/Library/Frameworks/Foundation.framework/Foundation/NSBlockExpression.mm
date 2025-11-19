@interface NSBlockExpression
- (NSBlockExpression)initWithType:(unint64_t)a3 block:(id)a4 arguments:(id)a5;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)dealloc;
@end

@implementation NSBlockExpression

- (NSBlockExpression)initWithType:(unint64_t)a3 block:(id)a4 arguments:(id)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSBlockExpression;
  v7 = [(NSExpression *)&v9 initWithExpressionType:a3];
  if (v7)
  {
    v7->_block = [a4 copy];
    v7->_arguments = [a5 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSBlockExpression alloc];
  v5 = [(NSBlockExpression *)self expressionType];
  block = self->_block;
  arguments = self->_arguments;

  return [(NSBlockExpression *)v4 initWithType:v5 block:block arguments:arguments];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
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

        [v8 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "expressionValueWithObject:context:", a3, a4)}];
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

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
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

        [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "_expressionWithSubstitutionVariables:", a3)}];
      }

      v8 = [(NSArray *)arguments countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  v11 = [[NSBlockExpression alloc] initWithType:[(NSBlockExpression *)self expressionType] block:self->_block arguments:v5];

  return v11;
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

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSBlockExpression *)self arguments];
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

@end
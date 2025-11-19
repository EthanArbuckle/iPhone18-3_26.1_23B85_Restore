@interface NSAggregateExpression
- (BOOL)isEqual:(id)a3;
- (NSAggregateExpression)initWithCoder:(id)a3;
- (NSAggregateExpression)initWithCollection:(id)a3;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)predicateFormat;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSAggregateExpression

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAggregateExpression;
  [(NSAggregateExpression *)&v3 dealloc];
}

- (void)allowEvaluation
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  collection = self->_collection;
  v4 = [collection countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(collection);
        }

        [*(*(&v10 + 1) + 8 * i) allowEvaluation];
      }

      v5 = [collection countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = NSAggregateExpression;
  [(NSExpression *)&v8 allowEvaluation];
}

- (NSAggregateExpression)initWithCollection:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Can't create an aggregate expression with an instance of %@", objc_opt_class()), 0}];
    objc_exception_throw(v7);
  }

  v8.receiver = self;
  v8.super_class = NSAggregateExpression;
  v5 = [(NSExpression *)&v8 initWithExpressionType:14];
  v5->_collection = a3;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSAggregateExpression;
  [(NSExpression *)&v5 encodeWithCoder:a3];
  [a3 encodeObject:self->_collection forKey:@"NSCollection"];
}

- (NSAggregateExpression)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers";
    goto LABEL_15;
  }

  v14.receiver = self;
  v14.super_class = NSAggregateExpression;
  v5 = [(NSExpression *)&v14 initWithCoder:a3];
  if (!v5)
  {
    return v5;
  }

  v6 = [a3 allowedClasses];
  v7 = [v6 count];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    [v8 unionSet:{+[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding](_NSPredicateUtilities, "_extendedExpressionClassesForSecureCoding")}];
  }

  else
  {
    v8 = +[_NSPredicateUtilities _extendedExpressionClassesForSecureCoding];
  }

  v9 = [a3 decodeObjectOfClasses:v8 forKey:@"NSCollection"];
  v5->_collection = v9;
  if (v9 && (_NSIsNSSet() & 1) == 0 && (_NSIsNSArray() & 1) == 0 && (_NSIsNSOrderedSet() & 1) == 0 && (_NSIsNSDictionary() & 1) == 0)
  {

    if (v7)
    {
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = @"NSInvalidUnarchiveOperationException";
    v13 = @"Malformed compound predicate (bad subpredicates collection)";
LABEL_15:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  if (v7)
  {
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [self->_collection isNSArray];
  v5 = 0x1E695DF70;
  if (!v4)
  {
    v5 = 0x1E695DFA8;
  }

  v6 = [objc_alloc(*v5) initWithCapacity:{objc_msgSend(self->_collection, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collection = self->_collection;
  v8 = [collection countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(collection);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copy];
        [v6 addObject:v12];
      }

      v9 = [collection countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  v13 = [objc_alloc(objc_opt_class()) initWithCollection:v6];

  return v13;
}

- (id)predicateFormat
{
  collection = self->_collection;
  if ((_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || (_NSIsNSOrderedSet() & 1) != 0 || _NSIsNSDictionary())
  {

    return [_NSPredicateUtilities _parserableCollectionDescription:?];
  }

  else
  {

    return [collection description];
  }
}

- (BOOL)isEqual:(id)a3
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  collection = self->_collection;
  v6 = *(a3 + 3);

  return [collection isEqual:v6];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(NSExpression *)self _allowsEvaluation])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [[_NSPerformanceMeter alloc] initWithTarget:self, 0];
  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  collection = self->_collection;
  v10 = [collection countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(collection);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) expressionValueWithObject:a3 context:a4];
        if (!v13)
        {
          v13 = [MEMORY[0x1E695DFB0] null];
        }

        [v8 addObject:v13];
        ++v12;
      }

      while (v10 != v12);
      v10 = [collection countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  if (v7)
  {
    [(_NSPerformanceMeter *)v7 invalidate];
  }

  return v8;
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
    collection = self->_collection;
    v8 = [collection countByEnumeratingWithState:&v13 objects:v12 count:16];
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
            objc_enumerationMutation(collection);
          }

          [*(*(&v13 + 1) + 8 * i) acceptVisitor:a3 flags:a4];
        }

        v9 = [collection countByEnumeratingWithState:&v13 objects:v12 count:16];
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
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  collection = self->_collection;
  v7 = [collection countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(collection);
        }

        [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "_expressionWithSubstitutionVariables:", a3)}];
      }

      v8 = [collection countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }

  return [objc_alloc(objc_opt_class()) initWithCollection:v5];
}

@end
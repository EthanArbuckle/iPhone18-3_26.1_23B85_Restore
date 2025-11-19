@interface NSFetchRequestExpression
- (BOOL)isEqual:(id)a3;
- (NSFetchRequestExpression)initWithCoder:(id)a3;
- (id)_expressionWithSubstitutionVariables:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)expressionValueWithObject:(id)a3 context:(id)a4;
- (id)initForFetch:(id)a3 context:(id)a4 countOnly:(BOOL)a5;
- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFetchRequestExpression

- (id)initForFetch:(id)a3 context:(id)a4 countOnly:(BOOL)a5
{
  v5 = a5;
  v10.receiver = self;
  v10.super_class = NSFetchRequestExpression;
  v8 = [(NSFetchRequestExpression *)&v10 initWithExpressionType:50];
  if (v8)
  {
    v8->_fetchRequest = a3;
    v8->_managedObjectContext = a4;
    v8->_flags = (*&v8->_flags & 0xFFFFFFFE | v5);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSFetchRequestExpression;
  [(NSFetchRequestExpression *)&v3 dealloc];
}

- (void)allowEvaluation
{
  [(NSExpression *)self->_managedObjectContext allowEvaluation];
  [(NSExpression *)self->_fetchRequest allowEvaluation];
  v3.receiver = self;
  v3.super_class = NSFetchRequestExpression;
  [(NSFetchRequestExpression *)&v3 allowEvaluation];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSFetchRequestExpression;
  [(NSFetchRequestExpression *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_fetchRequest forKey:@"NSFRExpression"];
  [a3 encodeObject:self->_managedObjectContext forKey:@"NSMOCExpression"];
  [a3 encodeBool:*&self->_flags & 1 forKey:@"NSCountOnlyFlag"];
}

- (NSFetchRequestExpression)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSFetchRequestExpression;
  v4 = [(NSFetchRequestExpression *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_fetchRequest = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSFRExpression"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_managedObjectContext = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSMOCExpression"}];
    v4->_flags = (*&v4->_flags & 0xFFFFFFFE | [a3 decodeBoolForKey:@"NSCountOnlyFlag"]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSFetchRequestExpression alloc];
  fetchRequest = self->_fetchRequest;
  managedObjectContext = self->_managedObjectContext;
  v7 = *&self->_flags & 1;

  return [(NSFetchRequestExpression *)v4 initForFetch:fetchRequest context:managedObjectContext countOnly:v7];
}

- (id)expressionValueWithObject:(id)a3 context:(id)a4
{
  v6 = self;
  if (([(NSFetchRequestExpression *)self _allowsEvaluation]& 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [(NSExpression *)v6->_fetchRequest expressionValueWithObject:a3 context:a4];
  v8 = [(NSExpression *)v6->_managedObjectContext expressionValueWithObject:a3 context:a4];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v15 = 0;
    if (*&v6->_flags)
    {
      v12 = [v8 countForFetchRequest:v7 error:&v15];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
    }

    else
    {
      v11 = [v8 executeFetchRequest:v7 error:&v15];
      if (v11)
      {
        v6 = v11;
      }

      else
      {
        v6 = NSArray_EmptyArray;
      }
    }

    v10 = 0;
  }

  if (v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSFetchRequestExpression could not evaluate its request or context."];
    return 0;
  }

  return v6;
}

- (id)description
{
  if (self)
  {
    v2 = self;
    v3 = objc_autoreleasePoolPush();
    v4 = v2[8];
    if (v2[9])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FETCH(%@, %@, %@)", v2[7], v2[8], v5];
    objc_autoreleasePoolPop(v3);

    return v6;
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSFetchRequestExpression *)self isCountOnlyRequest];
  if (v5 != [a3 isCountOnlyRequest] || !-[NSExpression isEqual:](-[NSFetchRequestExpression requestExpression](self, "requestExpression"), "isEqual:", objc_msgSend(a3, "requestExpression")))
  {
    return 0;
  }

  v6 = [(NSFetchRequestExpression *)self contextExpression];
  v7 = [a3 contextExpression];

  return [(NSExpression *)v6 isEqual:v7];
}

- (void)acceptVisitor:(id)a3 flags:(unint64_t)a4
{
  if (a4)
  {
    if ((a4 & 4) != 0)
    {
      [a3 visitPredicateExpression:self];
      [(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] acceptVisitor:a3 flags:a4];
      v7 = [(NSFetchRequestExpression *)self contextExpression];

      [(NSExpression *)v7 acceptVisitor:a3 flags:a4];
    }

    else
    {
      [(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] acceptVisitor:a3 flags:a4];
      [(NSExpression *)[(NSFetchRequestExpression *)self contextExpression] acceptVisitor:a3 flags:a4];

      [a3 visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)a3
{
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = [[NSFetchRequestExpression alloc] initForFetch:[(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] _expressionWithSubstitutionVariables:a3] context:[(NSExpression *)[(NSFetchRequestExpression *)self contextExpression] _expressionWithSubstitutionVariables:a3] countOnly:*&self->_flags & 1];

  return v3;
}

@end
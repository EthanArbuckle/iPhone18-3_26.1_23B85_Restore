@interface NSFetchRequestExpression
- (BOOL)isEqual:(id)equal;
- (NSFetchRequestExpression)initWithCoder:(id)coder;
- (id)_expressionWithSubstitutionVariables:(id)variables;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)expressionValueWithObject:(id)object context:(id)context;
- (id)initForFetch:(id)fetch context:(id)context countOnly:(BOOL)only;
- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFetchRequestExpression

- (id)initForFetch:(id)fetch context:(id)context countOnly:(BOOL)only
{
  onlyCopy = only;
  v10.receiver = self;
  v10.super_class = NSFetchRequestExpression;
  v8 = [(NSFetchRequestExpression *)&v10 initWithExpressionType:50];
  if (v8)
  {
    v8->_fetchRequest = fetch;
    v8->_managedObjectContext = context;
    v8->_flags = (*&v8->_flags & 0xFFFFFFFE | onlyCopy);
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSFetchRequestExpression;
  [(NSFetchRequestExpression *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_fetchRequest forKey:@"NSFRExpression"];
  [coder encodeObject:self->_managedObjectContext forKey:@"NSMOCExpression"];
  [coder encodeBool:*&self->_flags & 1 forKey:@"NSCountOnlyFlag"];
}

- (NSFetchRequestExpression)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSFetchRequestExpression;
  v4 = [(NSFetchRequestExpression *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_fetchRequest = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSFRExpression"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_managedObjectContext = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"NSMOCExpression"}];
    v4->_flags = (*&v4->_flags & 0xFFFFFFFE | [coder decodeBoolForKey:@"NSCountOnlyFlag"]);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NSFetchRequestExpression alloc];
  fetchRequest = self->_fetchRequest;
  managedObjectContext = self->_managedObjectContext;
  v7 = *&self->_flags & 1;

  return [(NSFetchRequestExpression *)v4 initForFetch:fetchRequest context:managedObjectContext countOnly:v7];
}

- (id)expressionValueWithObject:(id)object context:(id)context
{
  selfCopy = self;
  if (([(NSFetchRequestExpression *)self _allowsEvaluation]& 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This expression has evaluation disabled" userInfo:0]);
  }

  v7 = [(NSExpression *)selfCopy->_fetchRequest expressionValueWithObject:object context:context];
  v8 = [(NSExpression *)selfCopy->_managedObjectContext expressionValueWithObject:object context:context];
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
    if (*&selfCopy->_flags)
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

      selfCopy = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
    }

    else
    {
      v11 = [v8 executeFetchRequest:v7 error:&v15];
      if (v11)
      {
        selfCopy = v11;
      }

      else
      {
        selfCopy = NSArray_EmptyArray;
      }
    }

    v10 = 0;
  }

  if (v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSFetchRequestExpression could not evaluate its request or context."];
    return 0;
  }

  return selfCopy;
}

- (id)description
{
  if (self)
  {
    selfCopy = self;
    v3 = objc_autoreleasePoolPush();
    v4 = selfCopy[8];
    if (selfCopy[9])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FETCH(%@, %@, %@)", selfCopy[7], selfCopy[8], v5];
    objc_autoreleasePoolPop(v3);

    return v6;
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  isCountOnlyRequest = [(NSFetchRequestExpression *)self isCountOnlyRequest];
  if (isCountOnlyRequest != [equal isCountOnlyRequest] || !-[NSExpression isEqual:](-[NSFetchRequestExpression requestExpression](self, "requestExpression"), "isEqual:", objc_msgSend(equal, "requestExpression")))
  {
    return 0;
  }

  contextExpression = [(NSFetchRequestExpression *)self contextExpression];
  contextExpression2 = [equal contextExpression];

  return [(NSExpression *)contextExpression isEqual:contextExpression2];
}

- (void)acceptVisitor:(id)visitor flags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 4) != 0)
    {
      [visitor visitPredicateExpression:self];
      [(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] acceptVisitor:visitor flags:flags];
      contextExpression = [(NSFetchRequestExpression *)self contextExpression];

      [(NSExpression *)contextExpression acceptVisitor:visitor flags:flags];
    }

    else
    {
      [(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] acceptVisitor:visitor flags:flags];
      [(NSExpression *)[(NSFetchRequestExpression *)self contextExpression] acceptVisitor:visitor flags:flags];

      [visitor visitPredicateExpression:self];
    }
  }
}

- (id)_expressionWithSubstitutionVariables:(id)variables
{
  if (!variables)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot substitute a nil substitution dictionary." userInfo:0]);
  }

  v3 = [[NSFetchRequestExpression alloc] initForFetch:[(NSExpression *)[(NSFetchRequestExpression *)self requestExpression] _expressionWithSubstitutionVariables:variables] context:[(NSExpression *)[(NSFetchRequestExpression *)self contextExpression] _expressionWithSubstitutionVariables:variables] countOnly:*&self->_flags & 1];

  return v3;
}

@end
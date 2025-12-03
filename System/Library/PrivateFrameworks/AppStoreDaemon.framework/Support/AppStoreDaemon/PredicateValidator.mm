@interface PredicateValidator
- (PredicateValidator)init;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation PredicateValidator

- (PredicateValidator)init
{
  v3.receiver = self;
  v3.super_class = PredicateValidator;
  result = [(PredicateValidator *)&v3 init];
  if (result)
  {
    *&result->_acceptableExpressionTypes[16] = 0u;
    *result->_acceptableExpressionTypes = 0u;
  }

  return result;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  if (expressionType[self + 8] == 1)
  {
    if (expressionType != 10 && expressionType != 3)
    {
      goto LABEL_9;
    }

    acceptableKeyPaths = self->_acceptableKeyPaths;
    if (!acceptableKeyPaths)
    {
      goto LABEL_9;
    }

    keyPath = [expressionCopy keyPath];
    v7 = [(NSArray *)acceptableKeyPaths containsObject:keyPath];

    if (v7)
    {
      goto LABEL_9;
    }

    errors = self->_errors;
    keyPath2 = [expressionCopy keyPath];
    expressionCopy = [NSString stringWithFormat:@"Invalid key path '%@' in expression: %@", keyPath2, expressionCopy];
    [(NSMutableArray *)errors addObject:expressionCopy];
  }

  else
  {
    v11 = self->_errors;
    keyPath2 = [NSString stringWithFormat:@"Invalid expression type '%lu' in expression: %@", expressionType, expressionCopy];
    [(NSMutableArray *)v11 addObject:keyPath2];
  }

  self->_valid = 0;
LABEL_9:
}

@end
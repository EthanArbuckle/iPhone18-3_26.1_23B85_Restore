@interface PredicateValidator
- (PredicateValidator)init;
- (void)visitPredicateExpression:(id)a3;
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

- (void)visitPredicateExpression:(id)a3
{
  v12 = a3;
  v4 = [v12 expressionType];
  if (v4[self + 8] == 1)
  {
    if (v4 != 10 && v4 != 3)
    {
      goto LABEL_9;
    }

    acceptableKeyPaths = self->_acceptableKeyPaths;
    if (!acceptableKeyPaths)
    {
      goto LABEL_9;
    }

    v6 = [v12 keyPath];
    v7 = [(NSArray *)acceptableKeyPaths containsObject:v6];

    if (v7)
    {
      goto LABEL_9;
    }

    errors = self->_errors;
    v9 = [v12 keyPath];
    v10 = [NSString stringWithFormat:@"Invalid key path '%@' in expression: %@", v9, v12];
    [(NSMutableArray *)errors addObject:v10];
  }

  else
  {
    v11 = self->_errors;
    v9 = [NSString stringWithFormat:@"Invalid expression type '%lu' in expression: %@", v4, v12];
    [(NSMutableArray *)v11 addObject:v9];
  }

  self->_valid = 0;
LABEL_9:
}

@end
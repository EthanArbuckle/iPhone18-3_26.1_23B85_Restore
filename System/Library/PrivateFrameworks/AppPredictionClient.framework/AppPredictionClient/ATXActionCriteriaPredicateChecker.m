@interface ATXActionCriteriaPredicateChecker
- (ATXActionCriteriaPredicateChecker)initWithObject:(id)a3;
- (BOOL)isValid:(id)a3;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation ATXActionCriteriaPredicateChecker

- (ATXActionCriteriaPredicateChecker)initWithObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXActionCriteriaPredicateChecker;
  v5 = [(ATXActionCriteriaPredicateChecker *)&v9 init];
  if (v5)
  {
    v6 = [v4 propertyWhitelist];
    propertyNames = v5->_propertyNames;
    v5->_propertyNames = v6;
  }

  return v5;
}

- (BOOL)isValid:(id)a3
{
  self->_ok = 1;
  [a3 acceptVisitor:self flags:1];
  return self->_ok;
}

- (void)visitPredicateExpression:(id)a3
{
  v7 = a3;
  v4 = [v7 expressionType];
  if (v4 <= 14)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_9;
      }

      propertyNames = self->_propertyNames;
      v6 = [v7 keyPath];
      LOBYTE(propertyNames) = [(NSSet *)propertyNames containsObject:v6];

      if (propertyNames)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    self->_ok = 0;
    goto LABEL_9;
  }

  if (v4 == 15 || v4 == 19)
  {
    goto LABEL_8;
  }

LABEL_9:
}

@end
@interface ATXActionCriteriaPredicateChecker
- (ATXActionCriteriaPredicateChecker)initWithObject:(id)object;
- (BOOL)isValid:(id)valid;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation ATXActionCriteriaPredicateChecker

- (ATXActionCriteriaPredicateChecker)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = ATXActionCriteriaPredicateChecker;
  v5 = [(ATXActionCriteriaPredicateChecker *)&v9 init];
  if (v5)
  {
    propertyWhitelist = [objectCopy propertyWhitelist];
    propertyNames = v5->_propertyNames;
    v5->_propertyNames = propertyWhitelist;
  }

  return v5;
}

- (BOOL)isValid:(id)valid
{
  self->_ok = 1;
  [valid acceptVisitor:self flags:1];
  return self->_ok;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  if (expressionType <= 14)
  {
    if (expressionType != 2)
    {
      if (expressionType != 3)
      {
        goto LABEL_9;
      }

      propertyNames = self->_propertyNames;
      keyPath = [expressionCopy keyPath];
      LOBYTE(propertyNames) = [(NSSet *)propertyNames containsObject:keyPath];

      if (propertyNames)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    self->_ok = 0;
    goto LABEL_9;
  }

  if (expressionType == 15 || expressionType == 19)
  {
    goto LABEL_8;
  }

LABEL_9:
}

@end
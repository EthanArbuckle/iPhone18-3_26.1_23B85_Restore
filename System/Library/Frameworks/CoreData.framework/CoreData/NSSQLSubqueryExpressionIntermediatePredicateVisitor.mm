@interface NSSQLSubqueryExpressionIntermediatePredicateVisitor
- (BOOL)checkPredicate:(id)predicate;
- (void)dealloc;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation NSSQLSubqueryExpressionIntermediatePredicateVisitor

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLSubqueryExpressionIntermediatePredicateVisitor;
  [(NSSQLSubqueryExpressionIntermediatePredicateVisitor *)&v3 dealloc];
}

- (void)visitPredicateExpression:(id)expression
{
  expressionType = [expression expressionType];
  if (expressionType == 3 || expressionType == 4 && (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector")))
  {
    if ([(NSSQLIntermediate *)self->_scope isVariableBasedKeypathScopedBySubquery:expression])
    {
      self->_foundKeypath = 1;
    }
  }
}

- (BOOL)checkPredicate:(id)predicate
{
  [predicate acceptVisitor:self flags:1];
  foundKeypath = self->_foundKeypath;
  self->_foundKeypath = 0;
  return !foundKeypath;
}

@end
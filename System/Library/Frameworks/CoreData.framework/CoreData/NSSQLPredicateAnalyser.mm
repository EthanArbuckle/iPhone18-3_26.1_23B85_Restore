@interface NSSQLPredicateAnalyser
- (NSSQLPredicateAnalyser)init;
- (void)dealloc;
- (void)visitPredicate:(id)predicate;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation NSSQLPredicateAnalyser

- (NSSQLPredicateAnalyser)init
{
  v4.receiver = self;
  v4.super_class = NSSQLPredicateAnalyser;
  v2 = [(NSSQLPredicateAnalyser *)&v4 init];
  if (v2)
  {
    v2->_keys = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_allModifierPredicates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_setExpressions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_subqueries = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_compoundPredicate = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_keys = 0;

  self->_allModifierPredicates = 0;
  self->_setExpressions = 0;

  self->_subqueries = 0;
  v3.receiver = self;
  v3.super_class = NSSQLPredicateAnalyser;
  [(NSSQLPredicateAnalyser *)&v3 dealloc];
}

- (void)visitPredicate:(id)predicate
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [predicate comparisonPredicateModifier] == 1)
  {
    allModifierPredicates = self->_allModifierPredicates;

    [(NSMutableArray *)allModifierPredicates addObject:predicate];
  }
}

- (void)visitPredicateExpression:(id)expression
{
  expressionType = [expression expressionType];
  if (expressionType != 3)
  {
    if (expressionType != 4)
    {
      if ((expressionType - 5) >= 3)
      {
        if (expressionType != 13)
        {
          return;
        }

        v6 = 40;
      }

      else
      {
        v6 = 32;
      }

      goto LABEL_10;
    }

    if (sel_valueForKey_ != [expression selector] && sel_valueForKeyPath_ != objc_msgSend(expression, "selector"))
    {
      return;
    }
  }

  v6 = 16;
LABEL_10:
  v7 = *(&self->super.isa + v6);

  [v7 addObject:expression];
}

@end
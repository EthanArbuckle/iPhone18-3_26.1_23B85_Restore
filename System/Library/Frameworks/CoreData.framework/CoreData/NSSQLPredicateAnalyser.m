@interface NSSQLPredicateAnalyser
- (NSSQLPredicateAnalyser)init;
- (void)dealloc;
- (void)visitPredicate:(id)a3;
- (void)visitPredicateExpression:(id)a3;
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

- (void)visitPredicate:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 comparisonPredicateModifier] == 1)
  {
    allModifierPredicates = self->_allModifierPredicates;

    [(NSMutableArray *)allModifierPredicates addObject:a3];
  }
}

- (void)visitPredicateExpression:(id)a3
{
  v5 = [a3 expressionType];
  if (v5 != 3)
  {
    if (v5 != 4)
    {
      if ((v5 - 5) >= 3)
      {
        if (v5 != 13)
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

    if (sel_valueForKey_ != [a3 selector] && sel_valueForKeyPath_ != objc_msgSend(a3, "selector"))
    {
      return;
    }
  }

  v6 = 16;
LABEL_10:
  v7 = *(&self->super.isa + v6);

  [v7 addObject:a3];
}

@end
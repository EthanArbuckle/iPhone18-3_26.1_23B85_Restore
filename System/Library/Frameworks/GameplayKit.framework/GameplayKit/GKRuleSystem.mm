@interface GKRuleSystem
- (GKRuleSystem)init;
- (NSArray)facts;
- (float)gradeForFact:(id)fact;
- (float)maximumGradeForFacts:(NSArray *)facts;
- (float)minimumGradeForFacts:(NSArray *)facts;
- (void)_addRuleToAgenda:(id)agenda;
- (void)addRule:(GKRule *)rule;
- (void)addRulesFromArray:(NSArray *)rules;
- (void)assertFact:(id)fact grade:(float)grade;
- (void)evaluate;
- (void)removeAllRules;
- (void)reset;
- (void)retractFact:(id)fact grade:(float)grade;
@end

@implementation GKRuleSystem

- (GKRuleSystem)init
{
  v16.receiver = self;
  v16.super_class = GKRuleSystem;
  v2 = [(GKRuleSystem *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    state = v2->_state;
    v2->_state = v3;

    v5 = objc_opt_new();
    rules = v2->_rules;
    v2->_rules = v5;

    v7 = objc_opt_new();
    agenda = v2->_agenda;
    v2->_agenda = v7;

    v9 = objc_opt_new();
    toBeExecuted = v2->_toBeExecuted;
    v2->_toBeExecuted = v9;

    v11 = objc_opt_new();
    executed = v2->_executed;
    v2->_executed = v11;

    v13 = objc_opt_new();
    gradeByFact = v2->_gradeByFact;
    v2->_gradeByFact = v13;
  }

  return v2;
}

- (void)evaluate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_agenda;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 == v6)
        {
          v8 = *(*(&v11 + 1) + 8 * i);
          if (![v8 evaluatePredicateWithSystem:self])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v3);
          v8 = *(*(&v11 + 1) + 8 * i);
          if (![v8 evaluatePredicateWithSystem:{self, v11}])
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_toBeExecuted addObject:v8, v11];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_agenda removeObjectsInArray:self->_toBeExecuted];
  while ([(NSMutableArray *)self->_toBeExecuted count])
  {
    firstObject = [(NSMutableArray *)self->_toBeExecuted firstObject];
    [(NSMutableArray *)self->_toBeExecuted removeObjectAtIndex:0];
    [(NSMutableArray *)self->_executed addObject:firstObject];
    [firstObject performActionWithSystem:self];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addRuleToAgenda:(id)agenda
{
  v19 = *MEMORY[0x277D85DE8];
  agendaCopy = agenda;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_agenda;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        salience = [*(*(&v14 + 1) + 8 * v10) salience];
        if (salience < [agendaCopy salience])
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  [(NSMutableArray *)self->_agenda insertObject:agendaCopy atIndex:v8];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)addRule:(GKRule *)rule
{
  rules = self->_rules;
  v5 = rule;
  [(NSMutableArray *)rules addObject:v5];
  [(GKRuleSystem *)self _addRuleToAgenda:v5];
}

- (void)addRulesFromArray:(NSArray *)rules
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = rules;
  [(NSMutableArray *)self->_rules addObjectsFromArray:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(GKRuleSystem *)self _addRuleToAgenda:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeAllRules
{
  [(NSMutableArray *)self->_rules removeAllObjects];
  [(NSMutableArray *)self->_agenda removeAllObjects];
  executed = self->_executed;

  [(NSMutableArray *)executed removeAllObjects];
}

- (NSArray)facts
{
  keyEnumerator = [(NSMapTable *)self->_gradeByFact keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (float)gradeForFact:(id)fact
{
  v3 = [(NSMapTable *)self->_gradeByFact objectForKey:fact];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (float)minimumGradeForFacts:(NSArray *)facts
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = facts;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1.0;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMapTable *)self->_gradeByFact objectForKey:*(*(&v15 + 1) + 8 * v9)];
        [v10 floatValue];
        v12 = v11;

        v8 = fminf(v12, v8);
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (float)maximumGradeForFacts:(NSArray *)facts
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = facts;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 0.0;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMapTable *)self->_gradeByFact objectForKey:*(*(&v15 + 1) + 8 * v9)];
        [v10 floatValue];
        v12 = v11;

        v8 = fmaxf(v12, v8);
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)assertFact:(id)fact grade:(float)grade
{
  v11 = fact;
  v6 = [(NSMapTable *)self->_gradeByFact objectForKey:?];
  [v6 floatValue];
  v8 = v7;

  if (fminf(v8 + grade, 1.0) != v8)
  {
    gradeByFact = self->_gradeByFact;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [(NSMapTable *)gradeByFact setObject:v10 forKey:v11];

    [(GKRuleSystem *)self evaluate];
  }
}

- (void)retractFact:(id)fact grade:(float)grade
{
  v13 = fact;
  v6 = [(NSMapTable *)self->_gradeByFact objectForKey:v13];
  [v6 floatValue];
  v8 = v7;

  v10 = v13;
  if (v8 != 0.0)
  {
    *&v9 = v8 - grade;
    if ((v8 - grade) >= 0.0)
    {
      v10 = v13;
      if (*&v9 == v8)
      {
        goto LABEL_7;
      }

      gradeByFact = self->_gradeByFact;
      v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [(NSMapTable *)gradeByFact setObject:v12 forKey:v13];
    }

    else
    {
      [(NSMapTable *)self->_gradeByFact removeObjectForKey:v13, v9];
    }

    [(GKRuleSystem *)self evaluate];
    v10 = v13;
  }

LABEL_7:
}

- (void)reset
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_agenda removeAllObjects];
  [(NSMutableArray *)self->_executed removeAllObjects];
  [(NSMapTable *)self->_gradeByFact removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_rules;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(GKRuleSystem *)self _addRuleToAgenda:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
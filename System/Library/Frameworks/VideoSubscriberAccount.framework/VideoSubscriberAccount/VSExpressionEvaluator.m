@interface VSExpressionEvaluator
- (NSDictionary)substitutionVariables;
- (id)_observersForExpression:(id)a3;
- (id)_observersForPredicate:(id)a3;
- (id)value;
- (void)_startMonitoringForChanges;
- (void)_stopMonitoringForChanges;
- (void)_updateComputedResult:(id)a3;
- (void)_updateComputedResultIfNeeded;
- (void)dealloc;
- (void)setObject:(id)a3;
- (void)setSubstitutionVariables:(id)a3;
@end

@implementation VSExpressionEvaluator

- (void)dealloc
{
  if ([(VSExpressionEvaluator *)self isMonitoringForChanges])
  {
    [(VSExpressionEvaluator *)self _stopMonitoringForChanges];
  }

  v3.receiver = self;
  v3.super_class = VSExpressionEvaluator;
  [(VSExpressionEvaluator *)&v3 dealloc];
}

- (id)_observersForExpression:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 expressionType];
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      goto LABEL_59;
    }

    if (v6 == 2)
    {
      v7 = [v4 variable];
      v8 = [(VSExpressionEvaluator *)self substitutionVariables];
      v9 = [v8 objectForKey:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The variableValueOrNil parameter must not be nil."];
        }

        v10 = v9;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = MEMORY[0x277CBEAD8];
          v12 = *MEMORY[0x277CBE660];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          [v11 raise:v12 format:{@"Unexpectedly, variableValue was %@, instead of NSExpression.", v14}];
        }

        v15 = [(VSExpressionEvaluator *)self _observersForExpression:v10];
        [v5 addObjectsFromArray:v15];
      }

LABEL_57:

      goto LABEL_58;
    }

    goto LABEL_17;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      v7 = [v4 function];
      if (([v7 isEqual:@"sum:"] & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"count:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"min:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"max:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"average:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"median:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"mode:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"stddev:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"add:to:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"from:subtract:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"multiply:by:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"divide:by:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"modulus:by:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"sqrt:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"log:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"ln:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"raise:toPower:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"exp:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"floor:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"ceiling:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"abs:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"trunc:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"uppercase:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"lowercase:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"bitwiseAnd:with:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"bitwiseOr:with:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"bitwiseXor:with:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"leftshift:by:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"rightshift:by:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"onesCompliment:") & 1) == 0 && (objc_msgSend(v7, "isEqual:", @"distanceToLocation:fromLocation:") & 1) == 0 && !objc_msgSend(v7, "isEqual:", @"length:"))
      {

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expression: %@", v4}];
        goto LABEL_58;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v4 arguments];
      v25 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v32;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v32 != v27)
            {
              objc_enumerationMutation(v9);
            }

            v29 = [(VSExpressionEvaluator *)self _observersForExpression:*(*(&v31 + 1) + 8 * i)];
            [v5 addObjectsFromArray:v29];
          }

          v26 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v26);
      }

      goto LABEL_57;
    }

    if (v6 == 20)
    {
      v16 = [v4 predicate];
      v17 = [(VSExpressionEvaluator *)self _observersForPredicate:v16];
      [v5 addObjectsFromArray:v17];

      v18 = [v4 trueExpression];
      v19 = [(VSExpressionEvaluator *)self _observersForExpression:v18];
      [v5 addObjectsFromArray:v19];

      v7 = [v4 falseExpression];
      v20 = [(VSExpressionEvaluator *)self _observersForExpression:v7];
      [v5 addObjectsFromArray:v20];

LABEL_58:
      goto LABEL_59;
    }

LABEL_17:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expression: %@", v4}];
    goto LABEL_59;
  }

  v21 = [(VSExpressionEvaluator *)self object];
  if (v21)
  {
    v22 = [VSObservance alloc];
    v23 = [v4 keyPath];
    v24 = [(VSObservance *)v22 initWithObject:v21 keyPath:v23 options:0];

    [v5 addObject:v24];
  }

LABEL_59:

  return v5;
}

- (id)_observersForPredicate:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v6 raise:v7 format:{@"Unexpectedly, predicate was %@, instead of NSCompoundPredicate.", v9}];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v4 subpredicates];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(VSExpressionEvaluator *)self _observersForPredicate:*(*(&v25 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", v4}];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE660];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v16 raise:v17 format:{@"Unexpectedly, predicate was %@, instead of NSComparisonPredicate.", v19}];
    }

    v10 = v4;
    if ([v10 predicateOperatorType] == 11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported comparison predicate: %@", v10}];
    }

    else
    {
      v20 = [v10 leftExpression];
      v21 = [(VSExpressionEvaluator *)self _observersForExpression:v20];
      [v5 addObjectsFromArray:v21];

      v22 = [v10 rightExpression];
      v23 = [(VSExpressionEvaluator *)self _observersForExpression:v22];
      [v5 addObjectsFromArray:v23];
    }
  }

LABEL_20:

  return v5;
}

- (void)_startMonitoringForChanges
{
  if (![(VSExpressionEvaluator *)self isMonitoringForChanges])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = [(VSExpressionEvaluator *)self expression];
    if (v3)
    {
      v4 = [(VSExpressionEvaluator *)self _observersForExpression:v3];
      [v5 addObjectsFromArray:v4];
    }

    [v5 makeObjectsPerformSelector:sel_setDelegate_ withObject:self];
    [v5 makeObjectsPerformSelector:sel_startObserving];
    [(VSExpressionEvaluator *)self setObservers:v5];
    [(VSExpressionEvaluator *)self setMonitoringForChanges:1];
  }
}

- (void)_stopMonitoringForChanges
{
  if ([(VSExpressionEvaluator *)self isMonitoringForChanges])
  {
    v3 = [(VSExpressionEvaluator *)self observers];
    [v3 makeObjectsPerformSelector:sel_stopObserving];

    [(VSExpressionEvaluator *)self setObservers:MEMORY[0x277CBEBF8]];

    [(VSExpressionEvaluator *)self setMonitoringForChanges:0];
  }
}

- (void)_updateComputedResult:(id)a3
{
  v4 = a3;
  v5 = [(VSExpressionEvaluator *)self expression];
  v6 = [(VSExpressionEvaluator *)self object];
  v7 = [(VSExpressionEvaluator *)self substitutionVariables];
  v8 = [v7 mutableCopy];
  v9 = [v5 expressionValueWithObject:v6 context:v8];

  LODWORD(v5) = [(VSExpressionEvaluator *)self hasDeterminedValue];
  if (!v5 || v9 == v4)
  {
    [(VSExpressionEvaluator *)self setHasDeterminedValue:1];
    [(VSExpressionEvaluator *)self setValue:v9];
  }

  else
  {
    [(VSExpressionEvaluator *)self willChangeValueForKey:@"value"];
    [(VSExpressionEvaluator *)self setHasDeterminedValue:1];
    [(VSExpressionEvaluator *)self setValue:v9];
    [(VSExpressionEvaluator *)self didChangeValueForKey:@"value"];
  }
}

- (void)_updateComputedResultIfNeeded
{
  if ([(VSExpressionEvaluator *)self hasDeterminedValue])
  {
    v3 = [(VSExpressionEvaluator *)self value];
    [(VSExpressionEvaluator *)self _updateComputedResult:v3];
  }
}

- (NSDictionary)substitutionVariables
{
  v2 = self->_substitutionVariables;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

- (void)setSubstitutionVariables:(id)a3
{
  v4 = a3;
  if (self->_substitutionVariables != v4)
  {
    v9 = v4;
    if ([(VSExpressionEvaluator *)self isMonitoringForChanges])
    {
      [(VSExpressionEvaluator *)self _startMonitoringForChanges];
      v5 = [(NSDictionary *)v9 copy];
      substitutionVariables = self->_substitutionVariables;
      self->_substitutionVariables = v5;

      [(VSExpressionEvaluator *)self _startMonitoringForChanges];
    }

    else
    {
      v7 = [(NSDictionary *)v9 copy];
      v8 = self->_substitutionVariables;
      self->_substitutionVariables = v7;
    }

    [(VSExpressionEvaluator *)self _updateComputedResultIfNeeded];
    v4 = v9;
  }
}

- (void)setObject:(id)a3
{
  if (self->_object != a3)
  {
    if ([(VSExpressionEvaluator *)self isMonitoringForChanges])
    {
      [(VSExpressionEvaluator *)self _stopMonitoringForChanges];
      self->_object = a3;
      [(VSExpressionEvaluator *)self _startMonitoringForChanges];
    }

    else
    {
      self->_object = a3;
    }

    [(VSExpressionEvaluator *)self _updateComputedResultIfNeeded];
  }
}

- (id)value
{
  if ([(VSExpressionEvaluator *)self hasDeterminedValue])
  {
    v3 = self->_value;
  }

  else
  {
    [(VSExpressionEvaluator *)self _updateComputedResult:0];
    [(VSExpressionEvaluator *)self _startMonitoringForChanges];
    v3 = [(VSExpressionEvaluator *)self value];
  }

  return v3;
}

@end
@interface VSExpressionEvaluator
- (NSDictionary)substitutionVariables;
- (id)_observersForExpression:(id)expression;
- (id)_observersForPredicate:(id)predicate;
- (id)value;
- (void)_startMonitoringForChanges;
- (void)_stopMonitoringForChanges;
- (void)_updateComputedResult:(id)result;
- (void)_updateComputedResultIfNeeded;
- (void)dealloc;
- (void)setObject:(id)object;
- (void)setSubstitutionVariables:(id)variables;
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

- (id)_observersForExpression:(id)expression
{
  v36 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  expressionType = [expressionCopy expressionType];
  if (expressionType <= 2)
  {
    if (expressionType < 2)
    {
      goto LABEL_59;
    }

    if (expressionType == 2)
    {
      variable = [expressionCopy variable];
      substitutionVariables = [(VSExpressionEvaluator *)self substitutionVariables];
      arguments = [substitutionVariables objectForKey:variable];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!arguments)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The variableValueOrNil parameter must not be nil."];
        }

        v10 = arguments;
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

  if (expressionType != 3)
  {
    if (expressionType == 4)
    {
      variable = [expressionCopy function];
      if (([variable isEqual:@"sum:"] & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"count:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"min:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"max:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"average:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"median:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"mode:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"stddev:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"add:to:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"from:subtract:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"multiply:by:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"divide:by:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"modulus:by:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"sqrt:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"log:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"ln:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"raise:toPower:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"exp:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"floor:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"ceiling:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"abs:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"trunc:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"uppercase:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"lowercase:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"bitwiseAnd:with:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"bitwiseOr:with:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"bitwiseXor:with:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"leftshift:by:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"rightshift:by:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"onesCompliment:") & 1) == 0 && (objc_msgSend(variable, "isEqual:", @"distanceToLocation:fromLocation:") & 1) == 0 && !objc_msgSend(variable, "isEqual:", @"length:"))
      {

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expression: %@", expressionCopy}];
        goto LABEL_58;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      arguments = [expressionCopy arguments];
      v25 = [arguments countByEnumeratingWithState:&v31 objects:v35 count:16];
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
              objc_enumerationMutation(arguments);
            }

            v29 = [(VSExpressionEvaluator *)self _observersForExpression:*(*(&v31 + 1) + 8 * i)];
            [v5 addObjectsFromArray:v29];
          }

          v26 = [arguments countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v26);
      }

      goto LABEL_57;
    }

    if (expressionType == 20)
    {
      predicate = [expressionCopy predicate];
      v17 = [(VSExpressionEvaluator *)self _observersForPredicate:predicate];
      [v5 addObjectsFromArray:v17];

      trueExpression = [expressionCopy trueExpression];
      v19 = [(VSExpressionEvaluator *)self _observersForExpression:trueExpression];
      [v5 addObjectsFromArray:v19];

      variable = [expressionCopy falseExpression];
      v20 = [(VSExpressionEvaluator *)self _observersForExpression:variable];
      [v5 addObjectsFromArray:v20];

LABEL_58:
      goto LABEL_59;
    }

LABEL_17:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expression: %@", expressionCopy}];
    goto LABEL_59;
  }

  object = [(VSExpressionEvaluator *)self object];
  if (object)
  {
    v22 = [VSObservance alloc];
    keyPath = [expressionCopy keyPath];
    v24 = [(VSObservance *)v22 initWithObject:object keyPath:keyPath options:0];

    [v5 addObject:v24];
  }

LABEL_59:

  return v5;
}

- (id)_observersForPredicate:(id)predicate
{
  v30 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
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
    subpredicates = [predicateCopy subpredicates];
    v11 = [subpredicates countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          v15 = [(VSExpressionEvaluator *)self _observersForPredicate:*(*(&v25 + 1) + 8 * i)];
          [v5 addObjectsFromArray:v15];
        }

        v12 = [subpredicates countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", predicateCopy}];
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

    subpredicates = predicateCopy;
    if ([subpredicates predicateOperatorType] == 11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported comparison predicate: %@", subpredicates}];
    }

    else
    {
      leftExpression = [subpredicates leftExpression];
      v21 = [(VSExpressionEvaluator *)self _observersForExpression:leftExpression];
      [v5 addObjectsFromArray:v21];

      rightExpression = [subpredicates rightExpression];
      v23 = [(VSExpressionEvaluator *)self _observersForExpression:rightExpression];
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
    expression = [(VSExpressionEvaluator *)self expression];
    if (expression)
    {
      v4 = [(VSExpressionEvaluator *)self _observersForExpression:expression];
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
    observers = [(VSExpressionEvaluator *)self observers];
    [observers makeObjectsPerformSelector:sel_stopObserving];

    [(VSExpressionEvaluator *)self setObservers:MEMORY[0x277CBEBF8]];

    [(VSExpressionEvaluator *)self setMonitoringForChanges:0];
  }
}

- (void)_updateComputedResult:(id)result
{
  resultCopy = result;
  expression = [(VSExpressionEvaluator *)self expression];
  object = [(VSExpressionEvaluator *)self object];
  substitutionVariables = [(VSExpressionEvaluator *)self substitutionVariables];
  v8 = [substitutionVariables mutableCopy];
  v9 = [expression expressionValueWithObject:object context:v8];

  LODWORD(expression) = [(VSExpressionEvaluator *)self hasDeterminedValue];
  if (!expression || v9 == resultCopy)
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
    value = [(VSExpressionEvaluator *)self value];
    [(VSExpressionEvaluator *)self _updateComputedResult:value];
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

- (void)setSubstitutionVariables:(id)variables
{
  variablesCopy = variables;
  if (self->_substitutionVariables != variablesCopy)
  {
    v9 = variablesCopy;
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
    variablesCopy = v9;
  }
}

- (void)setObject:(id)object
{
  if (self->_object != object)
  {
    if ([(VSExpressionEvaluator *)self isMonitoringForChanges])
    {
      [(VSExpressionEvaluator *)self _stopMonitoringForChanges];
      self->_object = object;
      [(VSExpressionEvaluator *)self _startMonitoringForChanges];
    }

    else
    {
      self->_object = object;
    }

    [(VSExpressionEvaluator *)self _updateComputedResultIfNeeded];
  }
}

- (id)value
{
  if ([(VSExpressionEvaluator *)self hasDeterminedValue])
  {
    value = self->_value;
  }

  else
  {
    [(VSExpressionEvaluator *)self _updateComputedResult:0];
    [(VSExpressionEvaluator *)self _startMonitoringForChanges];
    value = [(VSExpressionEvaluator *)self value];
  }

  return value;
}

@end
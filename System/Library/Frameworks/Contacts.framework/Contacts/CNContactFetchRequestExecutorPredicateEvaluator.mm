@interface CNContactFetchRequestExecutorPredicateEvaluator
- (id)copyFetchRequestWithPredicate:(id)predicate;
- (id)evaluateSubpredicate:(id)subpredicate;
- (id)initWithFetchRequestPrototype:(void *)prototype dataMapper:;
- (id)observable;
- (void)evaluatePredicate:(void *)predicate;
- (void)visitAndPredicate:(id)predicate;
- (void)visitCNPredicate:(id)predicate;
- (void)visitFalsePredicate:(id)predicate;
- (void)visitNSCompoundPredicate:(id)predicate;
- (void)visitNSPredicate:(id)predicate;
- (void)visitNotPredicate:(id)predicate;
- (void)visitOrPredicate:(id)predicate;
@end

@implementation CNContactFetchRequestExecutorPredicateEvaluator

- (id)observable
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)visitCNPredicate:(id)predicate
{
  v6 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self copyFetchRequestWithPredicate:predicate];
  v4 = [(CNDataMapper *)self->_dataMapper contactObservableForFetchRequest:v6];
  observable = self->_observable;
  self->_observable = v4;
}

- (void)visitNSCompoundPredicate:(id)predicate
{
  predicateCopy = predicate;
  compoundPredicateType = [predicateCopy compoundPredicateType];
  if (!compoundPredicateType)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitNotPredicate:predicateCopy];
    goto LABEL_8;
  }

  if (compoundPredicateType == 1)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitAndPredicate:predicateCopy];
    goto LABEL_8;
  }

  v5 = compoundPredicateType == 2;
  v6 = predicateCopy;
  if (v5)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitOrPredicate:predicateCopy];
LABEL_8:
    v6 = predicateCopy;
  }
}

- (void)visitOrPredicate:(id)predicate
{
  v42 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = predicateCopy;
  obj = [predicateCopy subpredicates];
  v28 = [(CNObservable *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v28)
  {
    v27 = *v37;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:*(*(&v36 + 1) + 8 * v6)];
        if ([v7 isFailure])
        {
          v21 = MEMORY[0x1E6996798];
          error = [v7 error];
          v23 = [v21 observableWithError:error];
          observable = self->_observable;
          self->_observable = v23;

          v20 = obj;
          goto LABEL_20;
        }

        v30 = v7;
        v31 = v6;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        value = [v7 value];
        v9 = [value countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(value);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              first = [v13 first];
              identifier = [first identifier];
              v16 = [v4 containsObject:identifier];

              if ((v16 & 1) == 0)
              {
                first2 = [v13 first];
                identifier2 = [first2 identifier];
                [v4 addObject:identifier2];

                [array addObject:v13];
              }
            }

            v10 = [value countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v6 = v31 + 1;
      }

      while (v31 + 1 != v28);
      v28 = [(CNObservable *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v19 = [MEMORY[0x1E6996798] observableWithResult:array];
  v20 = self->_observable;
  self->_observable = v19;
LABEL_20:
}

- (void)visitAndPredicate:(id)predicate
{
  v46 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v34 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = predicateCopy;
  obj = [predicateCopy subpredicates];
  v30 = [(CNObservable *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v28 = array;
    v29 = *v41;
    v5 = 1;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:*(*(&v40 + 1) + 8 * v6)];
        if ([v7 isFailure])
        {
          v22 = MEMORY[0x1E6996798];
          error = [v7 error];
          v23 = [v22 observableWithError:error];
          observable = self->_observable;
          self->_observable = v23;
LABEL_23:

          v21 = obj;
          goto LABEL_24;
        }

        v32 = v6;
        error = [MEMORY[0x1E695DF70] array];
        observable = [MEMORY[0x1E695DFA8] set];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v7;
        value = [v7 value];
        v10 = [value countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            v13 = 0;
            do
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(value);
              }

              v14 = *(*(&v36 + 1) + 8 * v13);
              if ((v5 & 1) != 0 || ([*(*(&v36 + 1) + 8 * v13) first], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v34, "containsObject:", v16), v16, v15, v17))
              {
                first = [v14 first];
                identifier = [first identifier];
                [observable addObject:identifier];

                [error addObject:v14];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [value countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v11);
        }

        array = v28;
        [v28 setArray:error];
        [v34 setSet:observable];
        if (![v34 count])
        {
          emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
          v25 = self->_observable;
          self->_observable = emptyObservable;

          v7 = v33;
          goto LABEL_23;
        }

        v5 = 0;
        v6 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v5 = 0;
      v30 = [(CNObservable *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v20 = [MEMORY[0x1E6996798] observableWithResult:array];
  v21 = self->_observable;
  self->_observable = v20;
LABEL_24:
}

- (void)visitNotPredicate:(id)predicate
{
  v45 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:0];
  if ([v5 isFailure])
  {
    v6 = MEMORY[0x1E6996798];
    error = [v5 error];
    v8 = [v6 observableWithError:error];
    observable = self->_observable;
    self->_observable = v8;
  }

  else
  {
    v34 = predicateCopy;
    v10 = objc_alloc_init(MEMORY[0x1E6996788]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    value = [v5 value];
    v12 = [value countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(value);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          first = [v16 first];
          identifier = [first identifier];
          [v10 setObject:v16 forKeyedSubscript:identifier];
        }

        v13 = [value countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v13);
    }

    predicateCopy = v34;
    subpredicates = [v34 subpredicates];
    firstObject = [subpredicates firstObject];
    v21 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:firstObject];

    if ([v21 isFailure])
    {
      v22 = MEMORY[0x1E6996798];
      error2 = [v21 error];
      v24 = [v22 observableWithError:error2];
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      value2 = [v21 value];
      v26 = [value2 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v36;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(value2);
            }

            first2 = [*(*(&v35 + 1) + 8 * j) first];
            identifier2 = [first2 identifier];
            [v10 setObject:0 forKeyedSubscript:identifier2];
          }

          v27 = [value2 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v27);
      }

      v32 = MEMORY[0x1E6996798];
      error2 = [v10 allObjects];
      v24 = [v32 observableWithResult:error2];
      predicateCopy = v34;
    }

    v33 = self->_observable;
    self->_observable = v24;
  }
}

- (void)visitNSPredicate:(id)predicate
{
  v31 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v6 = [predicateCopy isEqual:v5];

  if (v6)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitTruePredicate:predicateCopy];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v8 = [predicateCopy isEqual:v7];

    if (v8)
    {
      [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitFalsePredicate:predicateCopy];
    }
  }

  v9 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:0];
  if ([v9 isFailure])
  {
    v10 = MEMORY[0x1E6996798];
    error = [v9 error];
    v12 = [v10 observableWithError:error];
    observable = self->_observable;
    self->_observable = v12;
  }

  else
  {
    selfCopy = self;
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    value = [v9 value];
    v16 = [value countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(value);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          first = [v20 first];
          v22 = [predicateCopy evaluateWithObject:first];

          if (v22)
          {
            [array addObject:v20];
          }
        }

        v17 = [value countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    v23 = [MEMORY[0x1E6996798] observableWithResult:array];
    v24 = selfCopy->_observable;
    selfCopy->_observable = v23;
  }
}

- (void)visitFalsePredicate:(id)predicate
{
  emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  observable = self->_observable;
  self->_observable = emptyObservable;

  MEMORY[0x1EEE66BB8](emptyObservable, observable);
}

- (id)copyFetchRequestWithPredicate:(id)predicate
{
  fetchRequest = self->_fetchRequest;
  predicateCopy = predicate;
  v5 = [(CNContactFetchRequest *)fetchRequest copy];
  [v5 setPredicate:predicateCopy];

  return v5;
}

- (id)initWithFetchRequestPrototype:(void *)prototype dataMapper:
{
  v5 = a2;
  prototypeCopy = prototype;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = CNContactFetchRequestExecutorPredicateEvaluator;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      objc_storeStrong(self + 2, prototype);
      emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
      v10 = self[3];
      self[3] = emptyObservable;
    }
  }

  return self;
}

- (void)evaluatePredicate:(void *)predicate
{
  v3 = a2;
  if (predicate)
  {
    v4 = v3;
    if (v3)
    {
      [v3 _cn_acceptVisitor:predicate];
    }

    else
    {
      [predicate visitCNPredicate:0];
    }

    v3 = v4;
  }
}

- (id)evaluateSubpredicate:(id)subpredicate
{
  subpredicateCopy = subpredicate;
  v5 = [[CNContactFetchRequestExecutorPredicateEvaluator alloc] initWithFetchRequestPrototype:self->_dataMapper dataMapper:?];
  [(CNContactFetchRequestExecutorPredicateEvaluator *)v5 evaluatePredicate:subpredicateCopy];

  observable = [(CNContactFetchRequestExecutorPredicateEvaluator *)v5 observable];
  v12 = 0;
  v7 = [observable allObjects:&v12];
  v8 = v12;
  _cn_flatten = [v7 _cn_flatten];

  v10 = [MEMORY[0x1E6996810] resultWithValue:_cn_flatten orError:v8];

  return v10;
}

@end
@interface CNContactFetchRequestExecutorPredicateEvaluator
- (id)copyFetchRequestWithPredicate:(id)a3;
- (id)evaluateSubpredicate:(id)a3;
- (id)initWithFetchRequestPrototype:(void *)a3 dataMapper:;
- (id)observable;
- (void)evaluatePredicate:(void *)a1;
- (void)visitAndPredicate:(id)a3;
- (void)visitCNPredicate:(id)a3;
- (void)visitFalsePredicate:(id)a3;
- (void)visitNSCompoundPredicate:(id)a3;
- (void)visitNSPredicate:(id)a3;
- (void)visitNotPredicate:(id)a3;
- (void)visitOrPredicate:(id)a3;
@end

@implementation CNContactFetchRequestExecutorPredicateEvaluator

- (id)observable
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (void)visitCNPredicate:(id)a3
{
  v6 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self copyFetchRequestWithPredicate:a3];
  v4 = [(CNDataMapper *)self->_dataMapper contactObservableForFetchRequest:v6];
  observable = self->_observable;
  self->_observable = v4;
}

- (void)visitNSCompoundPredicate:(id)a3
{
  v7 = a3;
  v4 = [v7 compoundPredicateType];
  if (!v4)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitNotPredicate:v7];
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitAndPredicate:v7];
    goto LABEL_8;
  }

  v5 = v4 == 2;
  v6 = v7;
  if (v5)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitOrPredicate:v7];
LABEL_8:
    v6 = v7;
  }
}

- (void)visitOrPredicate:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v3;
  obj = [v3 subpredicates];
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
          v22 = [v7 error];
          v23 = [v21 observableWithError:v22];
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
        v8 = [v7 value];
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              v14 = [v13 first];
              v15 = [v14 identifier];
              v16 = [v4 containsObject:v15];

              if ((v16 & 1) == 0)
              {
                v17 = [v13 first];
                v18 = [v17 identifier];
                [v4 addObject:v18];

                [v5 addObject:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
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

  v19 = [MEMORY[0x1E6996798] observableWithResult:v5];
  v20 = self->_observable;
  self->_observable = v19;
LABEL_20:
}

- (void)visitAndPredicate:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v34 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = v3;
  obj = [v3 subpredicates];
  v30 = [(CNObservable *)obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v28 = v4;
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
          v8 = [v7 error];
          v23 = [v22 observableWithError:v8];
          observable = self->_observable;
          self->_observable = v23;
LABEL_23:

          v21 = obj;
          goto LABEL_24;
        }

        v32 = v6;
        v8 = [MEMORY[0x1E695DF70] array];
        observable = [MEMORY[0x1E695DFA8] set];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v33 = v7;
        v35 = [v7 value];
        v10 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
                objc_enumerationMutation(v35);
              }

              v14 = *(*(&v36 + 1) + 8 * v13);
              if ((v5 & 1) != 0 || ([*(*(&v36 + 1) + 8 * v13) first], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "identifier"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v34, "containsObject:", v16), v16, v15, v17))
              {
                v18 = [v14 first];
                v19 = [v18 identifier];
                [observable addObject:v19];

                [v8 addObject:v14];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v11);
        }

        v4 = v28;
        [v28 setArray:v8];
        [v34 setSet:observable];
        if (![v34 count])
        {
          v24 = [MEMORY[0x1E6996798] emptyObservable];
          v25 = self->_observable;
          self->_observable = v24;

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

  v20 = [MEMORY[0x1E6996798] observableWithResult:v4];
  v21 = self->_observable;
  self->_observable = v20;
LABEL_24:
}

- (void)visitNotPredicate:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:0];
  if ([v5 isFailure])
  {
    v6 = MEMORY[0x1E6996798];
    v7 = [v5 error];
    v8 = [v6 observableWithError:v7];
    observable = self->_observable;
    self->_observable = v8;
  }

  else
  {
    v34 = v4;
    v10 = objc_alloc_init(MEMORY[0x1E6996788]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = [v5 value];
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [v16 first];
          v18 = [v17 identifier];
          [v10 setObject:v16 forKeyedSubscript:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v13);
    }

    v4 = v34;
    v19 = [v34 subpredicates];
    v20 = [v19 firstObject];
    v21 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:v20];

    if ([v21 isFailure])
    {
      v22 = MEMORY[0x1E6996798];
      v23 = [v21 error];
      v24 = [v22 observableWithError:v23];
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v25 = [v21 value];
      v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = [*(*(&v35 + 1) + 8 * j) first];
            v31 = [v30 identifier];
            [v10 setObject:0 forKeyedSubscript:v31];
          }

          v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v27);
      }

      v32 = MEMORY[0x1E6996798];
      v23 = [v10 allObjects];
      v24 = [v32 observableWithResult:v23];
      v4 = v34;
    }

    v33 = self->_observable;
    self->_observable = v24;
  }
}

- (void)visitNSPredicate:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitTruePredicate:v4];
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v8 = [v4 isEqual:v7];

    if (v8)
    {
      [(CNContactFetchRequestExecutorPredicateEvaluator *)self visitFalsePredicate:v4];
    }
  }

  v9 = [(CNContactFetchRequestExecutorPredicateEvaluator *)self evaluateSubpredicate:0];
  if ([v9 isFailure])
  {
    v10 = MEMORY[0x1E6996798];
    v11 = [v9 error];
    v12 = [v10 observableWithError:v11];
    observable = self->_observable;
    self->_observable = v12;
  }

  else
  {
    v25 = self;
    v14 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [v9 value];
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 first];
          v22 = [v4 evaluateWithObject:v21];

          if (v22)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    v23 = [MEMORY[0x1E6996798] observableWithResult:v14];
    v24 = v25->_observable;
    v25->_observable = v23;
  }
}

- (void)visitFalsePredicate:(id)a3
{
  v4 = [MEMORY[0x1E6996798] emptyObservable];
  observable = self->_observable;
  self->_observable = v4;

  MEMORY[0x1EEE66BB8](v4, observable);
}

- (id)copyFetchRequestWithPredicate:(id)a3
{
  fetchRequest = self->_fetchRequest;
  v4 = a3;
  v5 = [(CNContactFetchRequest *)fetchRequest copy];
  [v5 setPredicate:v4];

  return v5;
}

- (id)initWithFetchRequestPrototype:(void *)a3 dataMapper:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = CNContactFetchRequestExecutorPredicateEvaluator;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v7 = [v5 copy];
      v8 = a1[1];
      a1[1] = v7;

      objc_storeStrong(a1 + 2, a3);
      v9 = [MEMORY[0x1E6996798] emptyObservable];
      v10 = a1[3];
      a1[3] = v9;
    }
  }

  return a1;
}

- (void)evaluatePredicate:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    if (v3)
    {
      [v3 _cn_acceptVisitor:a1];
    }

    else
    {
      [a1 visitCNPredicate:0];
    }

    v3 = v4;
  }
}

- (id)evaluateSubpredicate:(id)a3
{
  v4 = a3;
  v5 = [[CNContactFetchRequestExecutorPredicateEvaluator alloc] initWithFetchRequestPrototype:self->_dataMapper dataMapper:?];
  [(CNContactFetchRequestExecutorPredicateEvaluator *)v5 evaluatePredicate:v4];

  v6 = [(CNContactFetchRequestExecutorPredicateEvaluator *)v5 observable];
  v12 = 0;
  v7 = [v6 allObjects:&v12];
  v8 = v12;
  v9 = [v7 _cn_flatten];

  v10 = [MEMORY[0x1E6996810] resultWithValue:v9 orError:v8];

  return v10;
}

@end
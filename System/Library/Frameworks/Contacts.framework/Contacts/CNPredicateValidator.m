@interface CNPredicateValidator
- (BOOL)validateWithError:(id *)a3;
- (NSArray)allowedKeys;
- (NSArray)usedKeys;
- (void)setAllowedKeys:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation CNPredicateValidator

- (BOOL)validateWithError:(id *)a3
{
  [(CNPredicateValidator *)self setValidated:1];
  v5 = [(CNPredicateValidator *)self predicate];
  if (v5)
  {
    v6 = v5;
    v7 = [(CNPredicateValidator *)self allowedKeys];

    if (v7)
    {
      v8 = [(CNPredicateValidator *)self predicate];
      [v8 acceptVisitor:self flags:3];

      if (a3)
      {
        v9 = [(CNPredicateValidator *)self error];

        if (v9)
        {
          *a3 = [(CNPredicateValidator *)self error];
        }
      }
    }
  }

  return [(CNPredicateValidator *)self validated];
}

- (void)setAllowedKeys:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {

LABEL_11:
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __39__CNPredicateValidator_setAllowedKeys___block_invoke;
          v14[3] = &unk_1E7417448;
          v15 = v4;
          [v10 _cn_executeGetterForRepresentedKeys:v14];

          goto LABEL_12;
        }

        v11 = [v10 conformsToProtocol:&unk_1F0998880];

        if (v11)
        {
          goto LABEL_11;
        }

LABEL_12:
        ++v9;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v12;
    }

    while (v12);
  }

  [(CNPredicateValidator *)self setAllowedKeysSet:v4];
}

- (NSArray)allowedKeys
{
  v2 = [(CNPredicateValidator *)self allowedKeysSet];
  v3 = [v2 allObjects];

  return v3;
}

- (void)visitPredicateExpression:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CNPredicateValidator *)self validated])
  {
    goto LABEL_34;
  }

  v29 = v4;
  if (visitPredicateExpression__cn_once_token_0 != -1)
  {
    [CNPredicateValidator visitPredicateExpression:];
  }

  v5 = visitPredicateExpression__cn_once_object_0;
  v6 = [v4 expressionType];
  if (v6 != 10)
  {
    if (v6 == 4)
    {
      v22 = MEMORY[0x1E696ABC8];
      v23 = [v4 function];
      v24 = [v4 arguments];
      v25 = [v22 expressionForFunction:v23 arguments:v24];

      if (!v25)
      {
        [(CNPredicateValidator *)self setValidated:0];
        v26 = [CNErrorFactory errorWithCode:400 userInfo:0];
        [(CNPredicateValidator *)self setError:v26];

        v25 = 0;
      }

      goto LABEL_33;
    }

    if (v6 != 3)
    {
      goto LABEL_33;
    }
  }

  v28 = [v4 keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [CNErrorFactory errorWithCode:400 userInfo:0];
    [(CNPredicateValidator *)self setError:v27];

    [(CNPredicateValidator *)self setValidated:0];
    goto LABEL_32;
  }

  v7 = [v4 keyPath];
  v8 = [v7 componentsSeparatedByString:@"."];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = *v31;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      if ([v13 hasPrefix:{@"@", v28}])
      {
        if ([v13 length] < 2)
        {
          goto LABEL_22;
        }

        v14 = [v13 substringFromIndex:1];
        if (([v5 containsObject:v14] & 1) == 0)
        {
          [(CNPredicateValidator *)self setValidated:0];
        }
      }

      else
      {
        v15 = [(CNPredicateValidator *)self allowedKeysSet];
        v16 = [v15 containsObject:v13];

        if ((v16 & 1) == 0)
        {
LABEL_22:
          [(CNPredicateValidator *)self setValidated:0];
          continue;
        }

        usedKeysSet = self->_usedKeysSet;
        if (!usedKeysSet)
        {
          v18 = [MEMORY[0x1E695DFA8] set];
          [(CNPredicateValidator *)self setUsedKeysSet:v18];

          usedKeysSet = self->_usedKeysSet;
        }

        [(NSMutableSet *)usedKeysSet addObject:v13];
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
  }

  while (v10);
LABEL_25:

  if (![(CNPredicateValidator *)self validated])
  {
    v34 = v28;
    v35 = @"CNKeyPaths";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v36 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v21 = [CNErrorFactory errorWithCode:400 userInfo:v20];
    [(CNPredicateValidator *)self setError:v21];
  }

LABEL_32:
LABEL_33:

  v4 = v29;
LABEL_34:
}

uint64_t __49__CNPredicateValidator_visitPredicateExpression___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E696A240], *MEMORY[0x1E696A258], *MEMORY[0x1E696A288], *MEMORY[0x1E696A290], *MEMORY[0x1E696A298], *MEMORY[0x1E696A5B0], *MEMORY[0x1E696A748], *MEMORY[0x1E696A900], *MEMORY[0x1E696AA50], *MEMORY[0x1E696AA58], *MEMORY[0x1E696AA60], 0}];
  v2 = visitPredicateExpression__cn_once_object_0;
  visitPredicateExpression__cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (NSArray)usedKeys
{
  v2 = [(NSMutableSet *)self->_usedKeysSet allObjects];
  v3 = [v2 copy];

  return v3;
}

- (void)visitPredicateOperator:(id)a3
{
  if ([a3 operatorType] == 11)
  {

    [(CNPredicateValidator *)self setValidated:0];
  }
}

@end
@interface _HKCFGNonTerminal
+ (id)nonTerminalWithLabel:(id)a3;
- (BOOL)_tryNodesForExpressions:(id)a3 nodes:(id)a4 context:(id)a5 solutionTest:(id)a6;
- (_HKCFGNonTerminal)initWithLabel:(id)a3;
- (id)_parseTreeWithContext:(id)a3;
- (void)_checkForCycles;
- (void)_checkForCycles:(id)a3;
- (void)_tryNodesWithContext:(id)a3 solutionTest:(id)a4;
- (void)addReplacementRuleWithExpressions:(id)a3 nodeEvaluator:(id)a4;
@end

@implementation _HKCFGNonTerminal

+ (id)nonTerminalWithLabel:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithLabel:v4];

  return v5;
}

- (_HKCFGNonTerminal)initWithLabel:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKCFGNonTerminal;
  v5 = [(_HKCFGNonTerminal *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    replacementRules = v5->_replacementRules;
    v5->_replacementRules = v8;

    v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    charactersToBeSkipped = v5->_charactersToBeSkipped;
    v5->_charactersToBeSkipped = v10;
  }

  return v5;
}

- (void)addReplacementRuleWithExpressions:(id)a3 nodeEvaluator:(id)a4
{
  replacementRules = self->_replacementRules;
  v5 = [_HKCFGReplacementRule ruleWithLHS:self RHS:a3 nodeEvaluator:a4];
  [(NSMutableArray *)replacementRules addObject:v5];
}

- (void)_tryNodesWithContext:(id)a3 solutionTest:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v31 = [v5 scanner];
  v30 = [v31 scanLocation];
  v7 = [v5 cache];
  v27 = [v7 nodesForPosition:v30 nonTerminal:self withLengthAllowance:{objc_msgSend(v5, "lengthAllowance")}];

  if (v27)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = v27;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v9)
    {
      v10 = *v50;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        v13 = [v5 scanner];
        v14 = [v12 rangeOfString];
        [v13 setScanLocation:v14 + v15];

        if (v6[2](v6, v12))
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    [v31 setCharactersToBeSkipped:self->_charactersToBeSkipped];
    v44 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v16 = self->_replacementRules;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v17)
    {
      v18 = *v42;
      v28 = v33;
LABEL_13:
      v19 = 0;
      while (1)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v41 + 1) + 8 * v19);
        v21 = [v5 lengthAllowance];
        if (v21 >= [v20 lengthIncrease])
        {
          [v5 decreaseLengthAllowance:{objc_msgSend(v20, "lengthIncrease")}];
          [v5 incrementRecursiveDepth];
          v22 = [MEMORY[0x1E695DF70] array];
          v23 = [v20 rightHandSide];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v33[0] = __55___HKCFGNonTerminal__tryNodesWithContext_solutionTest___block_invoke;
          v33[1] = &unk_1E737B698;
          v40 = v30;
          v34 = v31;
          v24 = v22;
          v35 = v24;
          v36 = v20;
          v37 = v8;
          v39 = &v45;
          v38 = v6;
          [(_HKCFGNonTerminal *)self _tryNodesForExpressions:v23 nodes:v24 context:v5 solutionTest:v32];

          [v5 increaseLengthAllowance:{objc_msgSend(v20, "lengthIncrease")}];
          [v5 decrementRecursiveDepth];
          LOBYTE(v23) = *(v46 + 24);

          if (v23)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (v17)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v25 = [v5 cache];
    [v25 cacheNodes:v8 forPosition:v30 nonTerminal:self lengthAllowance:{objc_msgSend(v5, "lengthAllowance")}];

    _Block_object_dispose(&v45, 8);
  }

  [v31 setScanLocation:v30];
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)_tryNodesForExpressions:(id)a3 nodes:(id)a4 context:(id)a5 solutionTest:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = [v11 count];
  if (v14 >= [v10 count])
  {
    v16 = v13[2](v13);
    *(v26 + 24) = v16;
  }

  else
  {
    v15 = [v10 objectAtIndexedSubscript:v14];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72___HKCFGNonTerminal__tryNodesForExpressions_nodes_context_solutionTest___block_invoke;
    v18[3] = &unk_1E737B6C0;
    v24 = &v25;
    v19 = v11;
    v20 = self;
    v21 = v10;
    v22 = v12;
    v23 = v13;
    [v15 _tryNodesWithContext:v22 solutionTest:v18];

    v16 = *(v26 + 24);
  }

  _Block_object_dispose(&v25, 8);

  return v16 & 1;
}

- (id)_parseTreeWithContext:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__14;
  v15 = __Block_byref_object_dispose__14;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43___HKCFGNonTerminal__parseTreeWithContext___block_invoke;
  v8[3] = &unk_1E737B6E8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(_HKCFGNonTerminal *)self _tryNodesWithContext:v5 solutionTest:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_checkForCycles
{
  v3 = [MEMORY[0x1E695DFA8] set];
  [(_HKCFGNonTerminal *)self _checkForCycles:v3];
}

- (void)_checkForCycles:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 containsObject:self])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Grammar contains cycle involving non-terminal %@", self->_label}];
  }

  [v4 addObject:self];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_replacementRules;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) rightHandSide];
        if ([v10 count] == 1)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [v10 objectAtIndexedSubscript:0];
            [v13 _checkForCycles:v4];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end
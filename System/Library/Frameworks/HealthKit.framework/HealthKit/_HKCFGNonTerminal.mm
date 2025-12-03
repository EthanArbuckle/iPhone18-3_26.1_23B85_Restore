@interface _HKCFGNonTerminal
+ (id)nonTerminalWithLabel:(id)label;
- (BOOL)_tryNodesForExpressions:(id)expressions nodes:(id)nodes context:(id)context solutionTest:(id)test;
- (_HKCFGNonTerminal)initWithLabel:(id)label;
- (id)_parseTreeWithContext:(id)context;
- (void)_checkForCycles;
- (void)_checkForCycles:(id)cycles;
- (void)_tryNodesWithContext:(id)context solutionTest:(id)test;
- (void)addReplacementRuleWithExpressions:(id)expressions nodeEvaluator:(id)evaluator;
@end

@implementation _HKCFGNonTerminal

+ (id)nonTerminalWithLabel:(id)label
{
  labelCopy = label;
  v5 = [[self alloc] initWithLabel:labelCopy];

  return v5;
}

- (_HKCFGNonTerminal)initWithLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = _HKCFGNonTerminal;
  v5 = [(_HKCFGNonTerminal *)&v13 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    replacementRules = v5->_replacementRules;
    v5->_replacementRules = v8;

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    charactersToBeSkipped = v5->_charactersToBeSkipped;
    v5->_charactersToBeSkipped = whitespaceAndNewlineCharacterSet;
  }

  return v5;
}

- (void)addReplacementRuleWithExpressions:(id)expressions nodeEvaluator:(id)evaluator
{
  replacementRules = self->_replacementRules;
  v5 = [_HKCFGReplacementRule ruleWithLHS:self RHS:expressions nodeEvaluator:evaluator];
  [(NSMutableArray *)replacementRules addObject:v5];
}

- (void)_tryNodesWithContext:(id)context solutionTest:(id)test
{
  v55 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  testCopy = test;
  scanner = [contextCopy scanner];
  scanLocation = [scanner scanLocation];
  cache = [contextCopy cache];
  v27 = [cache nodesForPosition:scanLocation nonTerminal:self withLengthAllowance:{objc_msgSend(contextCopy, "lengthAllowance")}];

  if (v27)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    array = v27;
    v9 = [array countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v9)
    {
      v10 = *v50;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(array);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        scanner2 = [contextCopy scanner];
        rangeOfString = [v12 rangeOfString];
        [scanner2 setScanLocation:rangeOfString + v15];

        if (testCopy[2](testCopy, v12))
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [array countByEnumeratingWithState:&v49 objects:v54 count:16];
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
    array = [MEMORY[0x1E695DF70] array];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    [scanner setCharactersToBeSkipped:self->_charactersToBeSkipped];
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
        lengthAllowance = [contextCopy lengthAllowance];
        if (lengthAllowance >= [v20 lengthIncrease])
        {
          [contextCopy decreaseLengthAllowance:{objc_msgSend(v20, "lengthIncrease")}];
          [contextCopy incrementRecursiveDepth];
          array2 = [MEMORY[0x1E695DF70] array];
          rightHandSide = [v20 rightHandSide];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v33[0] = __55___HKCFGNonTerminal__tryNodesWithContext_solutionTest___block_invoke;
          v33[1] = &unk_1E737B698;
          v40 = scanLocation;
          v34 = scanner;
          v24 = array2;
          v35 = v24;
          v36 = v20;
          v37 = array;
          v39 = &v45;
          v38 = testCopy;
          [(_HKCFGNonTerminal *)self _tryNodesForExpressions:rightHandSide nodes:v24 context:contextCopy solutionTest:v32];

          [contextCopy increaseLengthAllowance:{objc_msgSend(v20, "lengthIncrease")}];
          [contextCopy decrementRecursiveDepth];
          LOBYTE(rightHandSide) = *(v46 + 24);

          if (rightHandSide)
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

    cache2 = [contextCopy cache];
    [cache2 cacheNodes:array forPosition:scanLocation nonTerminal:self lengthAllowance:{objc_msgSend(contextCopy, "lengthAllowance")}];

    _Block_object_dispose(&v45, 8);
  }

  [scanner setScanLocation:scanLocation];
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)_tryNodesForExpressions:(id)expressions nodes:(id)nodes context:(id)context solutionTest:(id)test
{
  expressionsCopy = expressions;
  nodesCopy = nodes;
  contextCopy = context;
  testCopy = test;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = [nodesCopy count];
  if (v14 >= [expressionsCopy count])
  {
    v16 = testCopy[2](testCopy);
    *(v26 + 24) = v16;
  }

  else
  {
    v15 = [expressionsCopy objectAtIndexedSubscript:v14];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72___HKCFGNonTerminal__tryNodesForExpressions_nodes_context_solutionTest___block_invoke;
    v18[3] = &unk_1E737B6C0;
    v24 = &v25;
    v19 = nodesCopy;
    selfCopy = self;
    v21 = expressionsCopy;
    v22 = contextCopy;
    v23 = testCopy;
    [v15 _tryNodesWithContext:v22 solutionTest:v18];

    v16 = *(v26 + 24);
  }

  _Block_object_dispose(&v25, 8);

  return v16 & 1;
}

- (id)_parseTreeWithContext:(id)context
{
  contextCopy = context;
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
  v5 = contextCopy;
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

- (void)_checkForCycles:(id)cycles
{
  v20 = *MEMORY[0x1E69E9840];
  cyclesCopy = cycles;
  if ([cyclesCopy containsObject:self])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Grammar contains cycle involving non-terminal %@", self->_label}];
  }

  [cyclesCopy addObject:self];
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

        rightHandSide = [*(*(&v15 + 1) + 8 * v9) rightHandSide];
        if ([rightHandSide count] == 1)
        {
          v11 = [rightHandSide objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [rightHandSide objectAtIndexedSubscript:0];
            [v13 _checkForCycles:cyclesCopy];
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
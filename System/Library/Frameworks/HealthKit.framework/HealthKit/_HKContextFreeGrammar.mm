@interface _HKContextFreeGrammar
+ (id)grammarWithRootNonTerminal:(id)terminal emptyStringEvaluator:(id)evaluator;
- (_HKContextFreeGrammar)initWithRootNonTerminal:(id)terminal emptyStringEvaluator:(id)evaluator;
- (id)parseTreeForString:(id)string;
- (void)_gatherExpressionsStartingAt:(id)at;
@end

@implementation _HKContextFreeGrammar

+ (id)grammarWithRootNonTerminal:(id)terminal emptyStringEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  terminalCopy = terminal;
  v8 = [[self alloc] initWithRootNonTerminal:terminalCopy emptyStringEvaluator:evaluatorCopy];

  return v8;
}

- (_HKContextFreeGrammar)initWithRootNonTerminal:(id)terminal emptyStringEvaluator:(id)evaluator
{
  v33 = *MEMORY[0x1E69E9840];
  terminalCopy = terminal;
  evaluatorCopy = evaluator;
  v31.receiver = self;
  v31.super_class = _HKContextFreeGrammar;
  v9 = [(_HKContextFreeGrammar *)&v31 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nonTerminals = v9->_nonTerminals;
    v9->_nonTerminals = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    terminals = v9->_terminals;
    v9->_terminals = v12;

    objc_storeStrong(&v9->_rootNonTerminal, terminal);
    v14 = [evaluatorCopy copy];
    emptyStringEvaluator = v9->_emptyStringEvaluator;
    v9->_emptyStringEvaluator = v14;

    [(_HKContextFreeGrammar *)v9 _gatherExpressions];
    [(NSMutableSet *)v9->_nonTerminals makeObjectsPerformSelector:sel__checkForCycles];
    v16 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v9->_terminals;
    v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          characterSet = [*(*(&v27 + 1) + 8 * v21) characterSet];
          [v16 formUnionWithCharacterSet:characterSet];

          ++v21;
        }

        while (v19 != v21);
        v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    v23 = [v16 copy];
    terminalCharacters = v9->_terminalCharacters;
    v9->_terminalCharacters = v23;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)parseTreeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [MEMORY[0x1E696AE88] scannerWithString:stringCopy];
    [v5 setCharactersToBeSkipped:0];
    v6 = 0;
    if (([v5 isAtEnd] & 1) == 0)
    {
      v6 = 0;
      do
      {
        [v5 scanUpToCharactersFromSet:self->_terminalCharacters intoString:0];
        terminalCharacters = self->_terminalCharacters;
        v12 = 0;
        [v5 scanCharactersFromSet:terminalCharacters intoString:&v12];
        v8 = v12;
        v6 += [v8 length];
      }

      while (![v5 isAtEnd]);
    }

    [v5 setScanLocation:0];
    v9 = [[_HKCFGParseContext alloc] initWithScanner:v5 lengthAllowance:v6];
    v10 = [(_HKCFGNonTerminal *)self->_rootNonTerminal _parseTreeWithContext:v9];
  }

  else if (self->_emptyStringEvaluator)
  {
    v10 = [_HKCFGEmptyStringNode nodeWithEvaluator:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_gatherExpressionsStartingAt:(id)at
{
  v29 = *MEMORY[0x1E69E9840];
  atCopy = at;
  if (([(NSMutableSet *)self->_nonTerminals containsObject:atCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_nonTerminals addObject:atCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = atCopy;
    obj = [atCopy _replacementRules];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          rightHandSide = [v9 rightHandSide];
          v11 = [rightHandSide countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(rightHandSide);
                }

                v15 = *(*(&v19 + 1) + 8 * v14);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(_HKContextFreeGrammar *)self _gatherExpressionsStartingAt:v15];
                }

                else
                {
                  [(NSMutableSet *)self->_terminals addObject:v15];
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [rightHandSide countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    atCopy = v17;
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end
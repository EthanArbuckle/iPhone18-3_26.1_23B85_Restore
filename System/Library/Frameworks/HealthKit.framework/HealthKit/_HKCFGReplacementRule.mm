@interface _HKCFGReplacementRule
+ (_HKCFGReplacementRule)ruleWithLHS:(id)s RHS:(id)hS nodeEvaluator:(id)evaluator;
@end

@implementation _HKCFGReplacementRule

+ (_HKCFGReplacementRule)ruleWithLHS:(id)s RHS:(id)hS nodeEvaluator:(id)evaluator
{
  v60 = *MEMORY[0x1E69E9840];
  sCopy = s;
  hSCopy = hS;
  evaluatorCopy = evaluator;
  if (![hSCopy count])
  {
    +[_HKCFGReplacementRule ruleWithLHS:RHS:nodeEvaluator:];
  }

  v10 = objc_alloc_init(self);
  v43 = evaluatorCopy;
  v11 = [evaluatorCopy copy];
  v12 = *(v10 + 3);
  v42 = v10;
  *(v10 + 3) = v11;

  array = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = hSCopy;
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v54;
    v18 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v20];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [_HKCFGTerminal terminalMatchingString:v20];
            [array addObject:v21];
          }

          else
          {
            [MEMORY[0x1E695DF30] raise:v18 format:{@"Invalid expression in replacement rule: %@", v20}];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v16);
  }

  v22 = v10;
  objc_storeStrong(v10 + 2, array);
  v23 = MEMORY[0x1E696AD60];
  _label = [sCopy _label];
  v25 = [v23 stringWithFormat:@"%@ -> ", _label];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = array;
  v27 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v50;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v26);
        }

        _label2 = [*(*(&v49 + 1) + 8 * j) _label];
        [v25 appendString:_label2];
      }

      v28 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v28);
  }

  v32 = [v25 copy];
  v33 = v42[1];
  v42[1] = v32;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = v26;
  v35 = [v34 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v46;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(v34);
        }

        v37 += [*(*(&v45 + 1) + 8 * k) _minimumLength];
      }

      v36 = [v34 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v36);
  }

  else
  {
    v37 = 0;
  }

  v42[4] = v37 - [sCopy _minimumLength];
  v40 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (void)ruleWithLHS:RHS:nodeEvaluator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"_HKContextFreeGrammar.m" lineNumber:270 description:@"Replacement rule must have at least one expression on the right-hand side"];
}

@end
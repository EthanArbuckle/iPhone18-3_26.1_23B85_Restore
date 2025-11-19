@interface HKDimensionGrammar
@end

@implementation HKDimensionGrammar

void ___HKDimensionGrammar_block_invoke()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = [_HKCFGNonTerminal nonTerminalWithLabel:@"D"];
  for (i = 0; i != 84; i += 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(&__DimensionDefinitions)[i]];
    v12[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___HKDimensionGrammar_block_invoke_2;
    v9[3] = &unk_1E737E158;
    v10 = v2;
    v4 = v2;
    [v0 addReplacementRuleWithExpressions:v3 nodeEvaluator:v9];
  }

  v11 = @"(null)";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v0 addReplacementRuleWithExpressions:v5 nodeEvaluator:&__block_literal_global_251];

  v6 = [_HKContextFreeGrammar grammarWithRootNonTerminal:v0];
  v7 = _HKDimensionGrammar___grammar;
  _HKDimensionGrammar___grammar = v6;

  v8 = *MEMORY[0x1E69E9840];
}

@end
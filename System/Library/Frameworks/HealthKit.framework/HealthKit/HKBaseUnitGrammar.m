@interface HKBaseUnitGrammar
@end

@implementation HKBaseUnitGrammar

id ___HKBaseUnitGrammar_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  v3 = [v2 evaluate];

  return v3;
}

id ___HKBaseUnitGrammar_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];
  v5 = [v2 objectAtIndexedSubscript:1];

  v6 = [v5 evaluate];
  v7 = [HKBaseUnit _uniquedUnitWithPrefix:v4 rootUnit:v6];

  return v7;
}

void ___HKBaseUnitGrammar_block_invoke()
{
  v71[1] = *MEMORY[0x1E69E9840];
  v0 = [_HKCFGNonTerminal nonTerminalWithLabel:@"U"];
  v1 = [_HKCFGNonTerminal nonTerminalWithLabel:@"R"];
  v2 = [_HKCFGNonTerminal nonTerminalWithLabel:@"P"];
  v3 = [_HKCFGNonTerminal nonTerminalWithLabel:@"Q"];
  [v3 setCharactersToBeSkipped:0];
  v53 = [_HKCFGNonTerminal nonTerminalWithLabel:@"M"];
  [v53 setCharactersToBeSkipped:0];
  v54 = v1;
  v71[0] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  [v0 addReplacementRuleWithExpressions:v4 nodeEvaluator:&__block_literal_global_821];

  v52 = v2;
  v70[0] = v2;
  v70[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
  [v0 addReplacementRuleWithExpressions:v5 nodeEvaluator:&__block_literal_global_824];

  v6 = off_1E7375000;
  v7 = [_HKCFGTerminal terminalMatchingIntegerWithCondition:&__block_literal_global_828];
  v8 = [_HKCFGTerminal terminalMatchingIntegerWithCondition:&__block_literal_global_830];
  v69[0] = v7;
  v69[1] = @"^";
  v69[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
  [v0 addReplacementRuleWithExpressions:v9 nodeEvaluator:&__block_literal_global_835];

  v48 = v8;
  v49 = v7;
  v68[0] = v7;
  v68[1] = @"^";
  v68[2] = v8;
  v68[3] = v0;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
  v51 = v0;
  [v0 addReplacementRuleWithExpressions:v10 nodeEvaluator:&__block_literal_global_837];

  v11 = &__SIUnitDefinitions;
  v12 = 17;
  do
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v11];
    v14 = [(__objc2_class *)v6[283] terminalMatchingString:v13 caseSensitive:*(v11 + 8)];
    [v14 setIsPrivate:(v11[5] & 1) == 0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___HKBaseUnitGrammar_block_invoke_8;
    aBlock[3] = &unk_1E7382CB0;
    v60 = v13;
    v15 = v6;
    v16 = v13;
    v17 = _Block_copy(aBlock);
    v67 = v14;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    [v1 addReplacementRuleWithExpressions:v18 nodeEvaluator:v17];

    v66 = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    [v3 addReplacementRuleWithExpressions:v19 nodeEvaluator:v17];

    v6 = v15;
    v11 += 6;
    --v12;
  }

  while (v12);
  v65 = v53;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  [v1 addReplacementRuleWithExpressions:v20 nodeEvaluator:&__block_literal_global_839];

  v64 = v53;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  v50 = v3;
  [v3 addReplacementRuleWithExpressions:v21 nodeEvaluator:&__block_literal_global_839];

  v22 = &__OtherUnitDefinitions;
  v23 = 37;
  do
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v22];
    v25 = [(__objc2_class *)v15[283] terminalMatchingString:v24 caseSensitive:1];
    [v25 setIsPrivate:(v22[5] & 1) == 0];
    v63 = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = ___HKBaseUnitGrammar_block_invoke_10;
    v57[3] = &unk_1E7382CB0;
    v58 = v24;
    v27 = v24;
    [v54 addReplacementRuleWithExpressions:v26 nodeEvaluator:v57];

    v22 += 6;
    --v23;
  }

  while (v23);
  v28 = 0;
  v29 = 0x1E695D000uLL;
  v30 = 0x1E696A000uLL;
  do
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(&__PrefixDefinitions)[v28]];
    v62 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [v52 addReplacementRuleWithExpressions:v32 nodeEvaluator:&__block_literal_global_841];

    v28 += 2;
  }

  while (v28 != 28);
  v33 = &__ContextSpecificUnitDefinitions;
  v34 = &qword_1E73820C0;
  v35 = 5;
  v36 = v15;
  do
  {
    v37 = [*(v30 + 3776) stringWithUTF8String:*v33];
    v38 = [(__objc2_class *)v36[283] terminalMatchingString:v37 caseSensitive:1];
    v39 = *v34;
    v34 += 6;
    [v38 setIsPrivate:(v39 & 1) == 0];
    [(__objc2_class *)v36[283] terminalMatchingDoubleWithCondition:&__block_literal_global_844];
    v41 = v40 = v30;
    [v41 setIsPrivate:(v33[5] & 1) == 0];
    v61[0] = v38;
    v61[1] = @"<";
    v61[2] = v41;
    v61[3] = @">";
    [*(v29 + 3784) arrayWithObjects:v61 count:4];
    v43 = v42 = v29;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = ___HKBaseUnitGrammar_block_invoke_13;
    v55[3] = &unk_1E737E158;
    v56 = v37;
    v44 = v37;
    [v53 addReplacementRuleWithExpressions:v43 nodeEvaluator:v55];

    v29 = v42;
    v30 = v40;

    v33 += 6;
    --v35;
  }

  while (v35);
  v45 = [_HKContextFreeGrammar grammarWithRootNonTerminal:v51 emptyStringEvaluator:&__block_literal_global_854];
  v46 = _HKBaseUnitGrammar___grammar;
  _HKBaseUnitGrammar___grammar = v45;

  v47 = *MEMORY[0x1E69E9840];
}

id ___HKBaseUnitGrammar_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v2 objectAtIndexedSubscript:2];

  v8 = [v7 evaluate];
  [v8 doubleValue];
  v10 = pow(v6, v9);

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v12 = [HKBaseUnit _uniquedRootUnit:@"count"];
  v13 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v11 rootUnit:v12];

  return v13;
}

id ___HKBaseUnitGrammar_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v2 objectAtIndexedSubscript:2];
  v8 = [v7 evaluate];
  [v8 doubleValue];
  v10 = pow(v6, v9);

  v11 = [v2 objectAtIndexedSubscript:3];
  v12 = [v11 evaluate];

  v13 = 0;
  while (1)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(&__SIUnitDefinitions)[v13]];
    v15 = [v12 unitString];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      break;
    }

    v13 += 6;
    if (v13 == 102)
    {
      goto LABEL_11;
    }
  }

  v17 = &qword_1E7382BB0;
  v18 = 14;
  while (vabdd_f64(*v17, v10) >= 2.22044605e-16)
  {
    v17 += 2;
    if (!--v18)
    {
      goto LABEL_11;
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{*(v17 - 1), 2.22044605e-16}];
  if (v19)
  {
    v20 = v19;
    v21 = [v2 objectAtIndexedSubscript:3];
    v22 = [v21 evaluate];
    v23 = v20;
    v24 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v21 = [v2 objectAtIndexedSubscript:3];
  v22 = [v21 evaluate];
  v23 = 0;
  v24 = v20;
LABEL_12:
  v25 = [HKBaseUnit _uniquedUnitWithPrefix:v23 conversionConstant:v24 rootUnit:v22];

  return v25;
}

id ___HKBaseUnitGrammar_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  v3 = [v2 evaluate];

  return v3;
}

id ___HKBaseUnitGrammar_block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  v3 = [v2 evaluate];

  return v3;
}

id ___HKBaseUnitGrammar_block_invoke_13(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:2];
  v4 = [v3 evaluate];
  v5 = [HKBaseUnit _uniquedRootUnit:*(a1 + 32)];
  v6 = [HKBaseUnit _uniquedUnitWithPrefix:0 conversionConstant:v4 rootUnit:v5];

  return v6;
}

@end
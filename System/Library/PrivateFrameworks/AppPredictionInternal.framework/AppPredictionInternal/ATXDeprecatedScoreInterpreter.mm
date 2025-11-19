@interface ATXDeprecatedScoreInterpreter
@end

@implementation ATXDeprecatedScoreInterpreter

uint64_t __50___ATXDeprecatedScoreInterpreter_instructionCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v7)
    {
      [v5 doubleValue];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2;
      v103[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
      v103[4] = v8;
      v7 = [v103 copy];
      v9 = _Block_copy(v7);
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    }

    v10 = _Block_copy(v7);
    [v6 addObject:v10];
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (!v7)
    {
      v11 = v5;
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_3;
      v100[3] = &unk_2785A0940;
      v12 = v11;
      v101 = v12;
      objc_copyWeak(&v102, (a1 + 56));
      v7 = [v100 copy];
      v13 = _Block_copy(v7);
      [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];

      objc_destroyWeak(&v102);
    }

    v10 = _Block_copy(v7);
    [v6 addObject:v10];
    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_51:

    v55 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([v5 count] != 1)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_1(v5);
  }

  v14 = [v5 allKeys];
  v7 = [v14 firstObject];

  v10 = [v5 objectForKeyedSubscript:v7];
  if ([v7 isEqualToString:@"IfThenElse"])
  {
    if ([v10 count] != 3)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_4();
    }

    v71 = [v10 objectAtIndexedSubscript:0];
    v73 = [v10 objectAtIndexedSubscript:1];
    v15 = [v10 objectAtIndexedSubscript:2];
    v17 = *(a1 + 48);
    v16 = a1 + 48;
    WeakRetained = objc_loadWeakRetained((*(v17 + 8) + 40));
    v19 = compiledExpressionInstructions(WeakRetained, v73);

    v20 = objc_loadWeakRetained((*(*v16 + 8) + 40));
    v21 = compiledExpressionInstructions(v20, v15);

    v22 = objc_loadWeakRetained((*(*v16 + 8) + 40));
    v22[2](v22, v71, v6);

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_4;
    v97[3] = &unk_2785A0968;
    v98 = v21;
    v99 = v19;
    v23 = v19;
    v24 = v21;
    v25 = [v97 copy];
    v26 = _Block_copy(v25);
    [v6 addObject:v26];

LABEL_20:
LABEL_50:

    goto LABEL_51;
  }

  if ([v7 isEqualToString:@"Default"])
  {
    if ([v10 count] != 2)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_3();
    }

    v71 = [v10 objectAtIndexedSubscript:0];
    v73 = [v10 objectAtIndexedSubscript:1];
    v27 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    v28 = compiledExpressionInstructions(v27, v73);

    v29 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    v29[2](v29, v71, v6);

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_5;
    v95[3] = &unk_2785A0990;
    v96 = v28;
    v15 = v28;
    v30 = [v95 copy];
    v31 = _Block_copy(v30);
    [v6 addObject:v31];

    v24 = v96;
    goto LABEL_20;
  }

  if ([v7 isEqualToString:@"NeuralNet"])
  {
    v32 = [_ATXNeuralNetwork alloc];
    v33 = [v10 objectAtIndexedSubscript:0];
    v74 = [(_ATXNeuralNetwork *)v32 initWithData:v33];

    v34 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];
    v70 = 0;
    v72 = 0;
LABEL_27:

    v10 = v34;
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"IntentInSet"])
  {
    v70 = 0;
    v72 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v10];
    v74 = 0;
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_27;
  }

  if ([v7 isEqualToString:@"CoreMLModel"])
  {
    v35 = [v10 objectAtIndexedSubscript:0];
    v36 = [v10 objectAtIndexedSubscript:1];
    v37 = [v10 objectAtIndexedSubscript:2];
    v70 = [[_ATXScoreInterpreterCoreMLModel alloc] initWithModelName:v35 features:v36 outputSpecification:v37];
    v34 = [(_ATXScoreInterpreterCoreMLModel *)v70 getArgumentsToEvaluateByInitializingInstanceVariablesFromFeatures:v36 outputSpecification:v37];

    v72 = 0;
    v74 = 0;
    v10 = v35;
    goto LABEL_27;
  }

  v70 = 0;
  v72 = 0;
  v74 = 0;
LABEL_28:
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v10 = v10;
  v38 = [v10 countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (v38)
  {
    v39 = *v92;
    do
    {
      v40 = 0;
      do
      {
        if (*v92 != v39)
        {
          objc_enumerationMutation(v10);
        }

        v41 = *(*(&v91 + 1) + 8 * v40);
        v42 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
        v42[2](v42, v41, v6);

        ++v40;
      }

      while (v38 != v40);
      v38 = [v10 countByEnumeratingWithState:&v91 objects:v104 count:16];
    }

    while (v38);
  }

  v43 = [v10 count];
  if ([v7 isEqualToString:@"Sum"])
  {
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_6;
    v90[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v90[4] = v43;
    v44 = [v90 copy];
    v45 = _Block_copy(v44);
    [v6 addObject:v45];

LABEL_49:
    goto LABEL_50;
  }

  if ([v7 isEqualToString:@"Product"])
  {
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_7;
    v89[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v89[4] = v43;
    v44 = [v89 copy];
    v46 = _Block_copy(v44);
    [v6 addObject:v46];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"ValueAtIndexForFeatureArray"])
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_8;
    v88[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v88[4] = v43;
    v44 = [v88 copy];
    v47 = _Block_copy(v44);
    [v6 addObject:v47];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"NeuralNet"])
  {
    v48 = v87;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_9;
    v87[3] = &unk_2785A09B8;
    v87[5] = v43;
    v87[4] = v74;
    v49 = [v87 copy];
    v50 = _Block_copy(v49);
    [v6 addObject:v50];

LABEL_48:
    v44 = v48[4];
    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"IntentInSet"])
  {
    v48 = v86;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_10;
    v86[3] = &unk_2785A0990;
    v86[4] = v72;
    v51 = [v86 copy];
    v52 = _Block_copy(v51);
    [v6 addObject:v52];

    goto LABEL_48;
  }

  if ([v7 isEqualToString:@"CoreMLModel"])
  {
    v48 = v85;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11;
    v85[3] = &unk_2785A09B8;
    v85[5] = v43;
    v85[4] = v70;
    v53 = [v85 copy];
    v54 = _Block_copy(v53);
    [v6 addObject:v54];

    goto LABEL_48;
  }

  if ([v7 isEqualToString:@"Logarithm"])
  {
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68;
    v84[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v84[4] = v43;
    v44 = [v84 copy];
    v56 = _Block_copy(v44);
    [v6 addObject:v56];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"NatLog"])
  {
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81;
    v83[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v83[4] = v43;
    v44 = [v83 copy];
    v57 = _Block_copy(v44);
    [v6 addObject:v57];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"Power"])
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88;
    v82[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v82[4] = v43;
    v44 = [v82 copy];
    v58 = _Block_copy(v44);
    [v6 addObject:v58];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"Divide"])
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95;
    v81[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v81[4] = v43;
    v44 = [v81 copy];
    v59 = _Block_copy(v44);
    [v6 addObject:v59];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"ExpDecay"])
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102;
    v80[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v80[4] = v43;
    v44 = [v80 copy];
    v60 = _Block_copy(v44);
    [v6 addObject:v60];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"Threshold"])
  {
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_115;
    v79[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v79[4] = v43;
    v44 = [v79 copy];
    v61 = _Block_copy(v44);
    [v6 addObject:v61];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"GeometricSum"])
  {
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119;
    v78[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v78[4] = v43;
    v44 = [v78 copy];
    v62 = _Block_copy(v44);
    [v6 addObject:v62];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"Sigmoid"])
  {
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_129;
    v77[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v77[4] = v43;
    v44 = [v77 copy];
    v63 = _Block_copy(v44);
    [v6 addObject:v63];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"ClampToRange"])
  {
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133;
    v76[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v76[4] = v43;
    v44 = [v76 copy];
    v64 = _Block_copy(v44);
    [v6 addObject:v64];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"ApplyFeedback"])
  {
    v44 = [&__block_literal_global_215 copy];
    v65 = _Block_copy(v44);
    [v6 addObject:v65];

    goto LABEL_49;
  }

  if ([v7 isEqualToString:@"RandomUniform"])
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150;
    v75[3] = &__block_descriptor_40_e43_d16__0___ATXDeprecatedScoreInterpreterCtx_8l;
    v75[4] = v43;
    v44 = [v75 copy];
    v66 = _Block_copy(v44);
    [v6 addObject:v66];

    goto LABEL_49;
  }

  v67 = __atxlog_handle_default();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_2();
  }

  v68 = [MEMORY[0x277CCA890] currentHandler];
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [v68 handleFailureInFunction:v69 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:627 description:{@"Undefined function: %@", v7}];

  __break(1u);
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  [v3[502] scoreForKey:*(a1 + 32) found:&v9];
  if (v9 & 1) != 0 || ([v3[503] scoreForKey:*(a1 + 32) found:&v9], (v9))
  {
    v5 = v4;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _evalVariable:*(a1 + 32) withCtx:v3];
    v5 = v7;
  }

  return v5;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pop_0(v3);
  v5 = (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v6 = ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v4 >= 0.0)
  {
    v6 = 0;
    v5 = 0;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v5 = 1;
  }

  v7 = (*&v4 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v5;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v7 = 1;
  }

  v8 = v7 | v6;
  if (v4 == -31337.0)
  {
    v8 = 1;
  }

  v9 = (v8 & 1) == 0;
  v10 = 40;
  if (!v9)
  {
    v10 = 32;
  }

  v11 = runInstructionsAndPopResult(*(a1 + v10), v3);

  return v11;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pop_0(v3);
  if (v4 == -31337.0 || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = runInstructionsAndPopResult(*(a1 + 32), v3);
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = shouldReturnUndefined_0(v3, *(a1 + 32));
  v5 = *(a1 + 32);
  if (v4)
  {
    drop_0(v3, v5);
    v6 = -31337.0;
  }

  else if (v5)
  {
    v7 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + pop_0(v3);
      ++v7;
    }

    while (v7 < *(a1 + 32));
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = shouldReturnUndefined_0(v3, *(a1 + 32));
  v5 = *(a1 + 32);
  if (v4)
  {
    drop_0(v3, v5);
    v6 = -31337.0;
  }

  else if (v5)
  {
    v7 = 0;
    v6 = 1.0;
    do
    {
      v6 = v6 * pop_0(v3);
      ++v7;
    }

    while (v7 < *(a1 + 32));
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (shouldReturnUndefined_0(v4, v3))
  {
    drop_0(v4, *(a1 + 32));

    return -31337.0;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *&v4[v4[1] - v6 + 3 + *&v4[v4[1] - v6 + 2]];
    drop_0(v4, v6);
  }

  return v5;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (shouldReturnUndefined_0(v3, *(a1 + 40)))
  {
    drop_0(v3, *(a1 + 40));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    [*(a1 + 32) predict:&v3[v6 + 2]];
    v4 = v7;
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4032))
  {
    return [*(a1 + 32) containsObject:?];
  }

  else
  {
    return 0.0;
  }
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (shouldReturnUndefined_0(v3, *(a1 + 40)))
  {
    drop_0(v3, *(a1 + 40));
    v4 = -31337.0;
    goto LABEL_28;
  }

  if ([*(a1 + 32) hasOutputIndexedSubscript])
  {
    v5 = pop_0(v3);
  }

  else
  {
    v5 = -1;
  }

  v26 = v5;
  v6 = objc_opt_new();
  v7 = [*(a1 + 32) numberOfFeatures];
  if (!v7)
  {
LABEL_19:
    [*(a1 + 32) predictionForEvaluatedFeatures:v6 withOutputIndexedSubscript:v26];
    v4 = v21;
    goto LABEL_27;
  }

  v8 = v7;
  v9 = 0;
  v27 = v7;
  v28 = v6;
  while (1)
  {
    v10 = [*(a1 + 32) featureAtIndex:v8 + ~v9];
    v11 = [v10 featureName];
    if ([v10 featureType] == 2)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:pop_0(v3)];
      goto LABEL_18;
    }

    if ([v10 featureType] != 5)
    {
      break;
    }

    v29 = v11;
    v13 = a1;
    v14 = [v10 multiArraySize];
    v15 = objc_alloc(MEMORY[0x277CBFF48]);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v31[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v30 = 0;
    v12 = [v15 initWithShape:v17 dataType:65600 error:&v30];
    v18 = v30;

    if (v18)
    {
      v23 = __atxlog_handle_default();
      v6 = v28;
      v11 = v29;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11_cold_2();
      }

      v4 = -31337.0;
      goto LABEL_26;
    }

    if (v14)
    {
      v19 = v14 - 1;
      a1 = v13;
      do
      {
        v20 = [MEMORY[0x277CCABB0] numberWithDouble:pop_0(v3)];
        [v12 setObject:v20 atIndexedSubscript:v19];

        --v19;
      }

      while (v19 != -1);
      v6 = v28;
    }

    else
    {
      v6 = v28;
      a1 = v13;
    }

    v11 = v29;
    v8 = v27;
LABEL_18:
    [v6 setObject:v12 forKeyedSubscript:v11];

    if (++v9 == v8)
    {
      goto LABEL_19;
    }
  }

  v22 = __atxlog_handle_default();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11_cold_1();
  }

  v4 = -31337.0;
LABEL_26:

LABEL_27:
LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 2)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_1();
  }

  if (!shouldReturnUndefined_0(v3, 2uLL))
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 <= 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_2();
    }

    if (v8 <= 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_3();
    }

    if (v9 <= 0.0)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_4();
      }
    }

    else
    {
      if (v8 > 0.0)
      {
LABEL_16:
        v11 = log10(v9);
        v4 = v11 / log10(v8);
        goto LABEL_17;
      }

      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_5();
      }
    }

    goto LABEL_16;
  }

  drop_0(v3, *(a1 + 32));
  v4 = -31337.0;
LABEL_17:

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 1)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 1uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = *&v3[v6 + 2];
    if (v7 <= 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_2();
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_3();
      }
    }

    v4 = log(v7);
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 2)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 2uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v8 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v8 <= 0.0 && (v8 != 0.0 || v9 <= 0.0) && v9 != v9)
    {
      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88_cold_2();
      v9 = v11;
      v8 = v12;
    }

    v4 = pow(v8, v9);
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 2)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 2uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v8 = v7[3];
    if (v8 == 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95_cold_2(&v10);
      v4 = v10;
    }

    else
    {
      v4 = v7[2] / v8;
    }
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 3)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_1();
  }

  if (!shouldReturnUndefined_0(v3, 3uLL))
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v9 = v7[2];
    v8 = v7[3];
    v10 = v7[4];
    if (v9 < 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_2();
    }

    if (v8 <= 0.0)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_3();
    }

    if (v9 >= 0.0)
    {
      if (v8 <= 0.0)
      {
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_4();
        }

        goto LABEL_5;
      }
    }

    else
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_5();
      }
    }

    v4 = v10 * exp(v9 * (-0.693147181 / v8));
    goto LABEL_16;
  }

  drop_0(v3, *(a1 + 32));
LABEL_5:
  v4 = -31337.0;
LABEL_16:

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_115(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 2)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_115_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 2uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    if (*&v3[v6 + 2] < *&v3[v6 + 3])
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 3)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 3uLL))
  {
    drop_0(v3, *(a1 + 32));
LABEL_13:
    v11 = -31337.0;
    goto LABEL_14;
  }

  v4 = *(a1 + 32);
  v5 = v3[1] - v4;
  drop_0(v3, v4);
  v6 = &v3[v5];
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  if (v9 == 1.0)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_2();
  }

  if (v9 < 0.0)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_3();
  }

  if (v9 == 1.0)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_5();
    }

    goto LABEL_13;
  }

  if (v9 < 0.0 && v7 != v7)
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_4();
    }
  }

  v11 = v8 * ((1.0 - pow(v9, v7)) / (1.0 - v9));
LABEL_14:

  return v11;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_129(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 3)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_129_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 3uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v8 = v7[3];
    v4 = v8 / (exp(-(v7[4] * v7[2])) + 1.0);
  }

  return v4;
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32) != 4)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 4uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v9 = v7[2];
    v8 = v7[3];
    v11 = v7[4];
    v10 = v7[5];
    if (v8 > v10)
    {
      v16 = *(v7 + 3);
      v17 = *(v7 + 5);
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_2();
    }

    if (v10 > v11)
    {
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_3();
    }

    v12 = v9;
    if (v9 < v8)
    {
      v12 = v8;
    }

    if (v12 >= v11)
    {
      v4 = v11;
    }

    else
    {
      v4 = v12;
    }

    if (v4 != v9)
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134219008;
        v19 = v9;
        v20 = 2048;
        v21 = v8;
        v22 = 2048;
        v23 = v11;
        v24 = 2048;
        v25 = v10;
        v26 = 2048;
        v27 = v4;
        _os_log_debug_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEBUG, "ClampToRange(input=%f, min=%f, max=%f, default=%f): input coerced to %f", &v18, 0x34u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_146(uint64_t a1, void *a2)
{
  v2 = a2;
  pop_0(v2);
  pop_0(v2);
}

double __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != 2)
  {
    __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150_cold_1();
  }

  if (shouldReturnUndefined_0(v3, 2uLL))
  {
    drop_0(v3, *(a1 + 32));
    v4 = -31337.0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v3[1] - v5;
    drop_0(v3, v5);
    v7 = &v3[v6];
    v8 = v7[2];
    v9 = v7[3];
    if (v8 > v9)
    {
      v11 = *(v7 + 2);
      v12 = *(v7 + 3);
      __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150_cold_2();
    }

    v4 = v8 + (v9 - v8) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0);
  }

  return v4;
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_1(void *a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [v3 handleFailureInFunction:v2 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:305 description:{@"Dictionary must be of size 1, not %lu", objc_msgSend(a1, "count")}];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_3()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_cold_4()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_11_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_3()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_68_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_81_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_88_cold_2()
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [v2 handleFailureInFunction:v3 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:508 description:@"Attempted to compute pow(%f, %f)", v1, v0];

  v4 = __atxlog_handle_default();
  if (OUTLINED_FUNCTION_10(v4))
  {
    OUTLINED_FUNCTION_5_3();
    _os_log_error_impl(&dword_2263AA000, v2, OS_LOG_TYPE_ERROR, "Attempted to compute pow(%f,%f) -- output is NaN", buf, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_95_cold_2(void *a1)
{
  OUTLINED_FUNCTION_9();
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [v2 handleFailureInFunction:v3 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:518 description:{@"Invalid parameter not satisfying: %@", @"denominator != 0"}];

  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_3();
    _os_log_error_impl(&dword_2263AA000, v4, OS_LOG_TYPE_ERROR, "Divide by zero error (%f / %f) -- setting output to _ATXScoreNotSet", buf, 0x16u);
  }

  *a1 = 0xC0DE9A4000000000;
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_3()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_102_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_115_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_3()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_119_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_129_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_2()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_133_cold_3()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

void __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke_2_150_cold_2()
{
  OUTLINED_FUNCTION_9();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _compileRoot:]_block_invoke_2"];
  [OUTLINED_FUNCTION_7(v0 v1];
}

@end
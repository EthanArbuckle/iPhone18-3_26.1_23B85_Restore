@interface WFCalculateExpressionAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFCalculateExpressionAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__WFCalculateExpressionAction_runAsynchronouslyWithInput___block_invoke;
  v3[3] = &unk_278C225B0;
  v3[4] = self;
  [input getStringRepresentation:v3];
}

void __58__WFCalculateExpressionAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65[6] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];

  if (![v8 length])
  {
    [*(a1 + 32) finishRunningWithError:v6];
    goto LABEL_24;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v9 = getCalculateKeyLocalesSymbolLoc_ptr;
  v61 = getCalculateKeyLocalesSymbolLoc_ptr;
  if (!getCalculateKeyLocalesSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyLocalesSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v10 = CalculateLibrary();
    v59[3] = dlsym(v10, "CalculateKeyLocales");
    getCalculateKeyLocalesSymbolLoc_ptr = *(v57[1] + 24);
    v9 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v9)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyLocales(void)"];
    [v36 handleFailureInFunction:v37 file:@"WFCalculateExpressionAction.m" lineNumber:18 description:{@"%s", dlerror()}];

    goto LABEL_31;
  }

  v49 = *v9;
  v63[0] = v49;
  v51 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
  v62 = v51;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v65[0] = v50;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v11 = getCalculateKeyAllowUnitsSymbolLoc_ptr;
  v61 = getCalculateKeyAllowUnitsSymbolLoc_ptr;
  if (!getCalculateKeyAllowUnitsSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyAllowUnitsSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v12 = CalculateLibrary();
    v59[3] = dlsym(v12, "CalculateKeyAllowUnits");
    getCalculateKeyAllowUnitsSymbolLoc_ptr = *(v57[1] + 24);
    v11 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v11)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyAllowUnits(void)"];
    [v38 handleFailureInFunction:v39 file:@"WFCalculateExpressionAction.m" lineNumber:19 description:{@"%s", dlerror()}];

    goto LABEL_31;
  }

  v48 = *v11;
  v63[1] = v48;
  v13 = MEMORY[0x277CBEC38];
  v65[1] = MEMORY[0x277CBEC38];
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v14 = getCalculateKeyAllowConversionsSymbolLoc_ptr;
  v61 = getCalculateKeyAllowConversionsSymbolLoc_ptr;
  if (!getCalculateKeyAllowConversionsSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyAllowConversionsSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v15 = CalculateLibrary();
    v59[3] = dlsym(v15, "CalculateKeyAllowConversions");
    getCalculateKeyAllowConversionsSymbolLoc_ptr = *(v57[1] + 24);
    v14 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v14)
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyAllowConversions(void)"];
    [v40 handleFailureInFunction:v41 file:@"WFCalculateExpressionAction.m" lineNumber:20 description:{@"%s", dlerror(), v48}];

    goto LABEL_31;
  }

  v16 = *v14;
  v63[2] = v16;
  v65[2] = v13;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v17 = getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr;
  v61 = getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr;
  if (!getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyAllowCurrencyConversionsSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v18 = CalculateLibrary();
    v59[3] = dlsym(v18, "CalculateKeyAllowCurrencyConversions");
    getCalculateKeyAllowCurrencyConversionsSymbolLoc_ptr = *(v57[1] + 24);
    v17 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v17)
  {
    v42 = [MEMORY[0x277CCA890] currentHandler];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyAllowCurrencyConversions(void)"];
    [v42 handleFailureInFunction:v43 file:@"WFCalculateExpressionAction.m" lineNumber:21 description:{@"%s", dlerror(), v48}];

    goto LABEL_31;
  }

  v19 = *v17;
  v63[3] = v19;
  v65[3] = v13;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v20 = getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr;
  v61 = getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr;
  if (!getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyAllowPartialExpressionsSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v21 = CalculateLibrary();
    v59[3] = dlsym(v21, "CalculateKeyAllowPartialExpressions");
    getCalculateKeyAllowPartialExpressionsSymbolLoc_ptr = *(v57[1] + 24);
    v20 = v59[3];
  }

  v22 = v5;
  v23 = a1;
  v24 = v6;
  _Block_object_dispose(&v58, 8);
  if (!v20)
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyAllowPartialExpressions(void)"];
    [v44 handleFailureInFunction:v45 file:@"WFCalculateExpressionAction.m" lineNumber:22 description:{@"%s", dlerror(), v48}];

    goto LABEL_31;
  }

  v25 = *v20;
  v63[4] = v25;
  v65[4] = v13;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v26 = getCalculateKeyPreferMixedUnitsSymbolLoc_ptr;
  v61 = getCalculateKeyPreferMixedUnitsSymbolLoc_ptr;
  if (!getCalculateKeyPreferMixedUnitsSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateKeyPreferMixedUnitsSymbolLoc_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    v27 = CalculateLibrary();
    v59[3] = dlsym(v27, "CalculateKeyPreferMixedUnits");
    getCalculateKeyPreferMixedUnitsSymbolLoc_ptr = *(v57[1] + 24);
    v26 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v26)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCalculateKeyPreferMixedUnits(void)"];
    [v46 handleFailureInFunction:v47 file:@"WFCalculateExpressionAction.m" lineNumber:23 description:{@"%s", dlerror(), v48}];

LABEL_31:
    __break(1u);
  }

  v64 = *v26;
  v65[5] = v13;
  v28 = MEMORY[0x277CBEAC0];
  v29 = v64;
  [v28 dictionaryWithObjects:v65 forKeys:v63 count:6];
  v6 = v24;
  v30 = v23;
  v31 = v5 = v22;

  v58 = 0;
  v59 = &v58;
  v60 = 0x2050000000;
  v32 = getCalculateClass_softClass;
  v61 = getCalculateClass_softClass;
  if (!getCalculateClass_softClass)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getCalculateClass_block_invoke;
    v56 = &unk_278C222B8;
    v57 = &v58;
    __getCalculateClass_block_invoke(&v53);
    v32 = v59[3];
  }

  v33 = v32;
  _Block_object_dispose(&v58, 8);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __58__WFCalculateExpressionAction_runAsynchronouslyWithInput___block_invoke_2;
  v52[3] = &unk_278C19A28;
  v52[4] = *(v30 + 32);
  v34 = [v32 evaluate:v8 options:v31 resultHandler:v52];

LABEL_24:
  v35 = *MEMORY[0x277D85DE8];
}

void __58__WFCalculateExpressionAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2)
  {
    v6 = [a2 terms];
    v7 = [v6 firstObject];
    v8 = [v7 value];

    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [v9 output];
      [v10 addObject:v8];

      v9 = *(a1 + 32);
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }

    [v9 finishRunningWithError:v11];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }
}

@end
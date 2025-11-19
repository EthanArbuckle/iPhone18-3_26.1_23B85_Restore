@interface WFGetCurrentLocationAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetCurrentLocationAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a5;
  v7 = WFLocalizedString(@"Allow “%1$@” to access your current location?");
  v8 = [v5 localizedStringWithFormat:v7, v6];

  return v8;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFGetCurrentLocationAction *)self parameterValueForKey:@"Accuracy" ofClass:objc_opt_class()];
  WFCLLocationAccuracyFromWFLocationAccuracy();
  v6 = v5;
  v7 = MEMORY[0x277D7C628];
  v8 = [(WFGetCurrentLocationAction *)self workflow];
  v9 = [v8 environment];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__WFGetCurrentLocationAction_runAsynchronouslyWithInput___block_invoke;
  v10[3] = &unk_278C199E8;
  v10[4] = self;
  [v7 determineLocationWithWorkflowEnvironment:v9 desiredAccuracy:v10 completion:v6];
}

void __57__WFGetCurrentLocationAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = [MEMORY[0x277CFC318] locationLocation];
    v9 = [v7 itemWithObject:v5 origin:v8 disclosureLevel:1];

    v10 = [*(a1 + 32) output];
    [v10 addItem:v9];
  }

  v11 = *(a1 + 32);
  v12 = v6;
  v13 = [v12 domain];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v14 = getkCLErrorDomainSymbolLoc_ptr;
  v29 = getkCLErrorDomainSymbolLoc_ptr;
  if (!getkCLErrorDomainSymbolLoc_ptr)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __getkCLErrorDomainSymbolLoc_block_invoke;
    v25[3] = &unk_278C222B8;
    v25[4] = &v26;
    __getkCLErrorDomainSymbolLoc_block_invoke(v25);
    v14 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v14)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkCLErrorDomain(void)"];
    [v23 handleFailureInFunction:v24 file:@"WFGetCurrentLocationAction.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  if (![v13 isEqualToString:*v14])
  {

    goto LABEL_10;
  }

  v15 = [v12 code] == 2;

  if (!v15)
  {
LABEL_10:
    v21 = v12;
    goto LABEL_11;
  }

  v16 = MEMORY[0x277CCA9B8];
  v17 = [v12 domain];
  v18 = [v12 code];
  v26 = *MEMORY[0x277CCA450];
  v19 = WFLocalizedString(@"Get Current Location failed because a network error occurred.");
  v25[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v26 count:1];
  v21 = [v16 errorWithDomain:v17 code:v18 userInfo:v20];

LABEL_11:
  [v11 finishRunningWithError:v21];

  v22 = *MEMORY[0x277D85DE8];
}

@end
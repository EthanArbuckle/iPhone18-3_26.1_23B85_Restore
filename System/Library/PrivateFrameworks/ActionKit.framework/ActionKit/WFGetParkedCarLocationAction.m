@interface WFGetParkedCarLocationAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetParkedCarLocationAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getRTRoutineManagerClass_softClass;
  v13 = getRTRoutineManagerClass_softClass;
  if (!getRTRoutineManagerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getRTRoutineManagerClass_block_invoke;
    v9[3] = &unk_278C222B8;
    v9[4] = &v10;
    __getRTRoutineManagerClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 defaultManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFGetParkedCarLocationAction_runAsynchronouslyWithInput___block_invoke;
  v8[3] = &unk_278C22518;
  v8[4] = self;
  [v7 fetchLastVehicleEventsWithHandler:v8];
}

void __59__WFGetParkedCarLocationAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 firstObject];
  if (v6)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = MEMORY[0x277CFC238];
    v9 = [*(a1 + 32) appDescriptor];
    v10 = [v8 locationWithAppDescriptor:v9];
    v11 = [v7 itemWithObject:v6 origin:v10 disclosureLevel:1];

    if (v11)
    {
      v12 = [*(a1 + 32) output];
      [v12 addItem:v11];
    }

    [*(a1 + 32) finishRunningWithError:0];
  }

  else
  {
    v13 = getWFActionsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[WFGetParkedCarLocationAction runAsynchronouslyWithInput:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_23DE30000, v13, OS_LOG_TYPE_ERROR, "%s No RTVehicleEvent found, error = %@", &v15, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end
@interface WFContactAccessResource
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFContactAccessResource

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getCNContactStoreClass_softClass;
  v18 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getCNContactStoreClass_block_invoke;
    v14[3] = &unk_278C222B8;
    v14[4] = &v15;
    __getCNContactStoreClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__WFContactAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
  v12[3] = &unk_278C20360;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v10 requestAccessForEntityType:0 completionHandler:v12];
}

void __76__WFContactAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__WFContactAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
  v8[3] = &unk_278C1BC70;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __76__WFContactAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

@end
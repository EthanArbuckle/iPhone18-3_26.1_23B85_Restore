@interface WFGetItemNameAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetItemNameAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__WFGetItemNameAction_runAsynchronouslyWithInput___block_invoke;
  v4[3] = &unk_278C1BAF8;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__WFGetItemNameAction_runAsynchronouslyWithInput___block_invoke_3;
  v3[3] = &unk_278C21E70;
  v3[4] = self;
  [a3 transformItemsUsingBlock:v4 completionHandler:v3];
}

void __50__WFGetItemNameAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) parameterValueForKey:@"GetWebPageTitle" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [*(a1 + 32) contentPermissionRequestor];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__WFGetItemNameAction_runAsynchronouslyWithInput___block_invoke_2;
    v11[3] = &unk_278C1BAD0;
    v12 = v6;
    [v5 getTitleWithPermissionRequestor:v9 completionHandler:v11];
  }

  else
  {
    v10 = [v5 name];
    (*(v6 + 2))(v6, v10, 0);
  }
}

void __50__WFGetItemNameAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end
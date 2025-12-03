@interface WFGetClassAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetClassAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFGetClassAction *)self parameterValueForKey:@"Class" ofClass:objc_opt_class()];
  v6 = NSClassFromString(v5);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__WFGetClassAction_runAsynchronouslyWithInput___block_invoke;
  v8[3] = &unk_278C1BC48;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WFGetClassAction_runAsynchronouslyWithInput___block_invoke_2;
  v7[3] = &unk_278C21F18;
  v7[4] = self;
  [inputCopy enumerateObjectRepresentations:v8 forClass:v6 completionHandler:v7];
}

void __47__WFGetClassAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v10 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [v6 output];
  [v9 addObject:v8 named:v7];

  v10[2](v10, 0);
}

@end
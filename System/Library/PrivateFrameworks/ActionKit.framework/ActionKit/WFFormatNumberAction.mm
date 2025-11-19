@interface WFFormatNumberAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFFormatNumberAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFFormatNumberAction *)self parameterValueForKey:@"WFNumberFormatDecimalPlaces" ofClass:objc_opt_class()];
  v6 = [v5 integerValue];

  v7 = objc_opt_new();
  [v7 setNumberStyle:1];
  [v7 setMinimumFractionDigits:v6];
  [v7 setMaximumFractionDigits:v6];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  [v7 setLocale:v8];

  v9 = objc_opt_class();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__WFFormatNumberAction_runAsynchronouslyWithInput___block_invoke;
  v12[3] = &unk_278C1A1A0;
  v13 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WFFormatNumberAction_runAsynchronouslyWithInput___block_invoke_2;
  v11[3] = &unk_278C21E70;
  v11[4] = self;
  v10 = v7;
  [v4 transformObjectRepresentationsForClass:v9 usingBlock:v12 completionHandler:v11];
}

void __51__WFFormatNumberAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = MEMORY[0x277CFC2F8];
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 stringFromNumber:a2];
  v14 = [v8 itemWithObject:v13 named:v12];

  v10[2](v10, v14, v11);
}

void __51__WFFormatNumberAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end
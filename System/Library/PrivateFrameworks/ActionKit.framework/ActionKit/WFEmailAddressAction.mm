@interface WFEmailAddressAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFEmailAddressAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFEmailAddressAction *)self parameterValueForKey:@"WFEmailAddress" ofClass:objc_opt_class()];
  v5 = [v4 contentCollection];

  if (v5)
  {
    v6 = objc_opt_class();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__WFEmailAddressAction_runAsynchronouslyWithInput___block_invoke;
    v7[3] = &unk_278C211D0;
    v7[4] = self;
    [v5 generateCollectionByCoercingToItemClass:v6 completionHandler:v7];
  }

  else
  {
    [(WFEmailAddressAction *)self finishRunningWithError:0];
  }
}

void __51__WFEmailAddressAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v7];
}

@end
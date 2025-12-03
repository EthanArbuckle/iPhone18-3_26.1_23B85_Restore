@interface WFGetOnScreenContentAction
- (id)disabledOnPlatforms;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGetOnScreenContentAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v5 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v7 = WFLocalizedString(@"Allow “%1$@” to get current on screen content?");
  nameCopy = [v5 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = objc_alloc_init(MEMORY[0x277D7A068]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__WFGetOnScreenContentAction_runAsynchronouslyWithInput___block_invoke;
  v5[3] = &unk_278C21E70;
  v5[4] = self;
  [v4 getOnScreenContentForInputContentClasses:0 completionHandler:v5];
}

uint64_t __57__WFGetOnScreenContentAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [v3 setOutput:a2];
    v3 = *(a1 + 32);
  }

  return [v3 finishRunningWithError:?];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFGetOnScreenContentAction;
  disabledOnPlatforms = [(WFGetOnScreenContentAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end
@interface WFExpandURLAction
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFExpandURLAction

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  nameCopy = name;
  destinationCopy = destination;
  v10 = [descriptionCopy length];
  v11 = MEMORY[0x277CCACA8];
  if (v10)
  {
    v12 = WFLocalizedString(@"Allow “%1$@” to open “%2$@” with %3$@?");
    [v11 localizedStringWithFormat:v12, nameCopy, destinationCopy, descriptionCopy];
  }

  else
  {
    v12 = WFLocalizedString(@"Allow “%1$@” to open “%2$@”?");
    [v11 localizedStringWithFormat:v12, nameCopy, destinationCopy, v15];
  }
  v13 = ;

  return v13;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  input = [(WFExpandURLAction *)self input];
  v7 = handlerCopy;
  v6 = handlerCopy;
  WFGetContentLocationFromURLActionInput();
}

void __64__WFExpandURLAction_getContentDestinationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [MEMORY[0x277CFC238] webpagesLocation];
    (*(v2 + 16))(v2, v5, 0);
  }
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WFExpandURLAction_runAsynchronouslyWithInput___block_invoke_3;
  v6[3] = &unk_278C21E70;
  v6[4] = self;
  [inputCopy transformObjectRepresentationsForClass:v5 usingBlock:&__block_literal_global_3521 completionHandler:v6];
}

void __48__WFExpandURLAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __48__WFExpandURLAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = MEMORY[0x277D7C9B0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__WFExpandURLAction_runAsynchronouslyWithInput___block_invoke_2;
  v9[3] = &unk_278C1B3F8;
  v10 = v6;
  v8 = v6;
  [v7 expandURL:a2 completionHandler:v9];
}

@end
@interface WFEvernoteDeleteAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFEvernoteDeleteAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__WFEvernoteDeleteAction_runAsynchronouslyWithInput___block_invoke;
  v4[3] = &unk_278C1D740;
  v4[4] = self;
  v3 = a3;
  [v3 getObjectRepresentations:v4 forClass:objc_opt_class()];
}

void __53__WFEvernoteDeleteAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__WFEvernoteDeleteAction_runAsynchronouslyWithInput___block_invoke_4;
    v8[3] = &unk_278C21F18;
    v8[4] = *(a1 + 32);
    [v6 if_enumerateAsynchronously:&__block_literal_global_16770 completionHandler:v8];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __53__WFEvernoteDeleteAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = +[WFEvernoteAccessResource evernoteSession];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__WFEvernoteDeleteAction_runAsynchronouslyWithInput___block_invoke_3;
  v9[3] = &unk_278C20008;
  v10 = v5;
  v8 = v5;
  [v7 deleteNote:v6 completion:v9];
}

@end